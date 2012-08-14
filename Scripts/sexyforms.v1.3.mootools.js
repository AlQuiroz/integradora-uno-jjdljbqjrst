/**
 * Sexy Forms - for mootools 1.2.3
 * @name      sexyforms.v1.3.mootools.js
 * @author    Eduardo D. Sada - http://www.coders.me/web-html-js-css/javascript/sexy-forms
 * @version   1.3.1
 * @date      30-Oct-2009
 * @license   MIT - http://es.wikipedia.org/wiki/Licencia_MIT
 * @example   http://www.coders.me/ejemplos/sexy-forms/
 * @copyright (c) 2009 Eduardo D. Sada (www.coders.me)
*/

Element.implement({
	css: function(params)
	{
    if ($type(params)=="string") {
      return this.getStyle(params);
    } else {
      return this.setStyles(params);
    }
  }, // costumbre jQuery

  exact: function(param)
  {
    if (param=='width') {
      return this.getComputedStyle('width').toInt() ||  this.getSize().x;
    } else if (param=='height') {
      return this.getComputedStyle('height').toInt() || this.getSize().y;
    } else {
      return this.getComputedStyle(param);
    }
  }

});

SexyElement = new Class({

  initialize: function(el) {
    this.element = el;
  },

  addevents: function() {
    this.element.addEvents({
      'focus': function() {
        this.padre.addClass("sexy-"+this.Type+"-focus");
      }.bind(this),
      'blur': function() {
        this.padre.removeClass("sexy-"+this.Type+"-focus");
      }.bind(this)
    });
  },
  
  addhover: function() {
    this.element.addEvents({
      'mouseenter': function() {
        this.padre.addClass("sexy-"+this.Type+"-focus");
      }.bind(this),
      'mouseleave': function(event) {
        this.padre.removeClass("sexy-"+this.Type+"-focus");
      }.bind(this),
      'mousedown': function() {
        this.padre.addClass("sexy-"+this.Type+"-press");
      }.bind(this),
      'mouseup': function(event) {
        this.padre.removeClass("sexy-"+this.Type+"-press");
      }.bind(this)
    });
  },
  
  resetStyle: function(el) {
    el.css({
      'margin'      : 0,
      'padding'     : 0,
      'float'       : 'none',
      'border'      : '0',
      'font-family' : 'inherit',
      'background'  : 'none'
    });
  },
  
  reset: function() {
    if(this.padre) {
      this.element.inject(this.padre, 'before');
      this.padre.dispose();
      this.element.erase('style');
      this.element.removeClass('ocultarlodelmostro');
      this.element.removeClass('sexy-button-input');
      this.element.removeEvents();
      this.element.SexyElement = false;
    }
  },
  
  isVisible: function(el) {
    return (!this.padre && el.css('display')!='none' && el.css('visibility')!='hidden');
  },
  
  addIcon: function(el) {
    el = el || this.element;
    if (el.get('icon')) {
      this.hasIcon = true;
      this.icon.css({
        'background'    : 'url('+el.get('icon')+') no-repeat left center',
        'width'          : '1%',
        'padding-left'  : 18 
      });
      
    }
  },
  
  create: function() {
    this.padre = new Element("div", { 'class' : 'sexy-'+this.Type });
    this.hijoL = new Element("div", { 'class' : 'sexy-'+this.Type+'-left' });
    this.hijoC = new Element("div", { 'class' : 'sexy-'+this.Type+'-center' });
    this.hijoR = new Element("div", { 'class' : 'sexy-'+this.Type+'-right' });
    this.icon  = new Element("div");
  },
  
  checkdisabled: function(el) {
    if (el.get('disabled')) {
      this.padre.addClass('sexy-'+this.Type+'-disabled');
    }
  }
  
});


// <input type="text" />
SexyElementText = new Class({

  Extends: SexyElement,
  
  initialize: function(el) {
    this.parent(el);
    this.Type = 'input';
    this.beautifier();
  },
  
  create: function() {
    this.parent();

    this.padre.adopt(this.hijoL, this.hijoC, this.hijoR);
    this.padre.inject(this.element, 'before');
    this.hijoC.adopt(this.icon.grab(this.element));
    this.addIcon();
  },
  
  beautifier: function() {
    if (!this.isVisible(this.element)) return;
    
    this.create();
    var floating = this.element.exact('float');
    var padding  = this.hijoL.exact('width') * 2;
    var width    = this.element.exact('width') + padding;

    this.resetStyle(this.element);

    if (this.hasIcon) {
      width = width + 18;
    }

    this.padre.css({
      'width' : width - 8,
      'float' : floating
    });
    this.element.css({
      'width' : width - 8 - padding - (this.hasIcon ? 18 : 0)
    });
    
    this.checkdisabled(this.element);
    
    this.addevents();

    if(Browser.Engine.trident) { //Fix IE Bug
      this.element.css({"font-family": this.element.css("font-family")});
    }
  }

});

// <input type="file" />
SexyElementFile = new Class({

  Extends: SexyElement,
  
  initialize: function(el) {
    this.textito   = new Element("input", { 'type' : 'text' }).inject(el, 'before');
    this.parent(this.textito);
    this.Type = 'input';
    this.file = el;
    this.beautifier();
  },
  
  create: function() {
    var lang = (navigator.language || navigator.systemLanguage || navigator.userLanguage || 'en').substr(0, 2).toLowerCase() == 'es' ? 'Examinar...' : 'Browse...';
    this.parent();
    this.padre.adopt(this.hijoL, this.hijoC, this.hijoR);
    this.padre.inject(this.element, 'before');
    this.hijoC.adopt(this.icon.grab(this.element));
    this.botonsito = new Element("input", { 'type' : 'button', 'value' : lang }).inject(this.textito, 'after');
    this.botonsito.SexyElement = new SexyElementButton(this.botonsito);
    this.file.inject(this.textito, 'before');
    this.addIcon(this.file);
  },
  
  beautifier: function() {
    if (!this.isVisible(this.file)) return;
    this.create();

    var floating = this.file.exact('float');
    var width    = this.file.exact('width');
    var padding  = this.hijoL.exact('width') * 2;
    var width    = width + padding;

    this.resetStyle(this.element);
    this.resetStyle(this.file);

    if (this.hasIcon) {
      width = width + 18;
    }

    this.padre.css({
      'width' : width - 8,
      'float' : floating,
      'position' : 'relative',
      'overflow' : 'hidden'
    });

    this.element.css({
      'width' : width - 8 - padding - (this.hasIcon?18:0)
    });
    
    this.file.css({
      'position': 'absolute',
      'cursor' : 'pointer',
      'width'  : '100%',
      'height' : '100%',
      'top'    : 0,
      'left'   : 0,
      'z-index': 3,
      'opacity': 0,
      'visibility' : 'visible'
    });

    this.botonsito.SexyElement.padre.css({
      'float'    : 'none',
      'position' : 'absolute',
      'top'      : 0,
      'right'    : 0
    });

    this.checkdisabled(this.file);

    this.element.set('value', this.file.get('value'));
    this.element.set('readonly', 'readonly');
    
    this.addevents();
  },

  addevents: function() {
    this.parent();
    
    this.file.addEvents({
      'change': function(evt) {
        this.element.set('value', this.file.get('value'));
      }.bind(this),
      'mouseenter': function() {
        this.element.fireEvent('mouseenter');
        this.botonsito.fireEvent('mouseenter');
      }.bind(this),
      'mouseleave': function() {
        this.element.fireEvent('mouseleave');
        this.botonsito.fireEvent('mouseleave');
      }.bind(this),
      'mousedown': function() {
        this.botonsito.fireEvent('focus');
      }.bind(this),
      'mouseup': function() {
        this.botonsito.fireEvent('blur');
      }.bind(this)
    });

  }

});

// <textarea>
SexyElementTextarea = new Class({

  Extends: SexyElement,
  
  initialize: function(el) {
    this.parent(el);
    this.Type = 'area';
    this.beautifier();
  },
  
  create: function() {
    this.padre = new Element("div", { 'class' : 'sexy-input' });
    this.hijoT = new Element("div", { 'class' : 'sexy-area-top' }).grab(new Element("div", { 'class' : 'sexy-area-top2' }));
    this.hijoC = new Element("div", { 'class' : 'sexy-area-center' });
    this.hijoC2= new Element("div", { 'class' : 'sexy-area-center2' });
    this.hijoB = new Element("div", { 'class' : 'sexy-area-bottom' }).grab(new Element("div", { 'class' : 'sexy-area-bottom2' }));

    this.padre.adopt(this.hijoT.adopt(this.hijoC.adopt(this.hijoB),this.hijoC2));

    this.padre.inject(this.element, 'before');
    this.hijoC.grab(this.element, 'top');
  },
  
  beautifier: function() {
    if (!this.isVisible(this.element)) return;

    var buguero    = Browser.Engine.trident ? (Browser.Engine.trident4 ? 13 : 11) : 10;
    var floating   = this.element.exact('float');
    var fontFamily = this.element.exact("font-family");
    var fontWeight = this.element.exact("font-weight");
    var fontSize   = this.element.exact("font-size");
    var width      = this.element.exact('width');
    var height     = this.element.exact('height');

    width = width + (Browser.Engine.trident4 ? -16 : (Browser.Engine.presto ? -2 : (Browser.Engine.webkit  ? 2 : 0)));

    //width = width + (Browser.Engine.trident4 ? -16 : 0);
    //width = width + (Browser.Engine.presto ? -2 : 0);
    //width = width + (Browser.Engine.webkit  ? 2 : 0);
    
    height = height + (Browser.Engine.gecko ? -17 : (Browser.Engine.trident ? -2 : (Browser.Engine.trident4 ? -2 : (Browser.Engine.presto ? -4 : 0))));

    //height = height + (Browser.Engine.gecko ? -17 : 0);
    //height = height + (Browser.Engine.trident ? -2 : 0);
    //height = height + (Browser.Engine.trident4 ? -2 : 0);
    //height = height + (Browser.Engine.presto ? -4 : 0);
          
    this.create();

    if (width > 478) { width = 478; } //max width;
    
    this.resetStyle(this.element);

    this.element.css({
      'width'       : width-15,
      'height'      : height,
      'font-family' : fontFamily,
      'font-weight' : fontWeight,
      'font-size'   : fontSize,
      'overflow'    : 'hidden',
      'overflow-x'  : 'hidden',
      'overflow-y'  : 'auto',
      'outline'     : 'none'
    });

    this.hijoT.css({'width': width+(Browser.Engine.trident4 ? 15 : 0)});
    this.hijoC2.css({'height': height+buguero});
    
    this.checkdisabled(this.element);
    this.addevents();
  }

});

// <button> <input type="submit"/>
SexyElementButton = new Class({

  Extends: SexyElement,
  
  initialize: function(el) {
    this.parent(el);
    this.Type = 'button';
    this.beautifier();
  },
  
  create: function() {
    this.parent();

    this.padre.adopt(this.hijoL.grab(this.hijoR));
    this.padre.inject(this.element, 'before');
    this.hijoR.grab(this.icon.grab(this.element));
    this.addIcon();
  },
  
  beautifier: function() {
    if (!this.isVisible(this.element)) return;
    var floating = this.element.exact('float');
    this.resetStyle(this.element);
    this.create();
    
    this.padre.css({'float':floating});
    
    this.checkdisabled(this.element);

    this.addevents();
    this.addhover();

    this.element.addClass('sexy-button-input');
  }

});

SexyElementRadio = new Class({

  Extends: SexyElement,
  
  initialize: function(el) {
    this.parent(el);
    this.Type = 'input';
    this.beautifier();
  },
  
  create: function() {
    aClass = this.element.get("type") == "radio" ? 'sexy-input-radio' : 'sexy-input-check';
    this.padre  = new Element("div", {'class' : 'sexy-input'});
    this.aRadio = new Element('div', {'class' : aClass});

    this.padre.adopt(this.aRadio);
    this.padre.inject(this.element, 'before');
    this.aRadio.adopt(this.element);
  },
  
  beautifier: function() {
    if (!this.isVisible(this.element)) return;

    var floating = this.element.exact('float');
    this.resetStyle(this.element);
    this.create();
    
    this.padre.css({'float':floating});

    if(this.element.checked) {
      this.aRadio.addClass("sexy-"+this.element.get("type")+"-checked");
    }

    this.checkdisabled(this.element);


    this.addevents();
    this.element.addClass('ocultarlodelmostro');
  },
  
  blurall: function() {
    $$("input[type=radio][name="+this.element.get("name")+"]").each(function(child) {
      if(this.element !== document.id(child) && child.SexyElement) {
        if (child.SexyElement.padre)
        {
          child.checked=false;
          child.SexyElement.aRadio.removeClass("sexy-radio-checked");
          child.SexyElement.aRadio.removeClass("sexy-checkbox-checked");
          child.SexyElement.padre.removeClass("sexy-input-focus");
        }
      }
    }.bind(this));
  },
  
  addevents: function() {
    this.parent();
  
    this.aRadio.addEvent('click', function(event){
        if (!this.element.get('disabled')) {
          this.element.checked = this.element.checked ? false : true;

          if (this.element.get("type") == "radio") { //RADIO EVENT
            this.blurall();
            this.element.checked = true;
            this.aRadio.addClass("sexy-radio-checked");
          } else { //CHECKBOX EVENT
            if(this.element.checked) {
              this.aRadio.addClass("sexy-checkbox-checked");
            } else {
              this.aRadio.removeClass("sexy-checkbox-checked");
            }
          }
        }
    }.bind(this));


    this.element.addEvent('click', function(event) {
        this.aRadio.fireEvent('click', event);
    }.bind(this));

  }

});

// <select>
SexyElementSelect = new Class({

  Extends: SexyElement,
  
  initialize: function(el) {
    this.parent(el);
    this.Type = 'select';
    this.beautifier();
  },
  
  create: function() {
    this.parent();
    this.hijoR = new Element("a",   { 'class' : 'sexy-select-right', 'href':'#' });
    this.selected = new Element("span");
    if (this.element.options.length > 0) {
      this.selected.set('text', this.element.options[this.element.options.selectedIndex].text);
    }

    this.hijoC.grab(this.icon.grab(this.selected));

    this.lista   = new Element("div", { 'class' : 'sexy-select-list' });
    this.listaUL = new Element("ul");

    this.footer = new Element("div", { 'class' : 'sexy-select-last-r' }).grab(
      new Element("div", { 'class' : 'sexy-select-last-l' }).grab(
        new Element("div", { 'class' : 'sexy-select-last-c' })
      )
    );

    this.iewrapper = new Element('div', {'styles' : {'position': 'relative'}}).adopt(this.listaUL);
    this.lista.adopt(this.iewrapper, this.footer);
    this.padre.inject(this.element, 'before');
    this.padre.adopt(this.hijoL, this.hijoC, this.hijoR);
    this.lista.inject(this.element, 'before');
  },

  beautifier: function() {
    if (!this.isVisible(this.element)) return;
    var floating = this.element.exact('float');
    var width    = this.element.exact('width').toInt()+18;

    this.resetStyle(this.element);

    this.create();
    
    this.padre.css({'float':floating});

    this.addIcon();
    
    this.hijoC.css({'width': width});
    this.hijoR.css({
      'margin'      : 0,
      'padding'     : 0,
      'outline'     : 0
    });
    
    this.iewrapper.css({
      'overflow-x' : 'hidden',
      'overflow-y' : 'auto'
    });
    
    this.lista.css({
      'top'     : this.padre.offsetTop.toInt() + this.padre.getSize().y,
      'left'    : this.padre.offsetLeft.toInt()+1,
      'width'   : this.padre.exact('width') -6,
      'height'  : 'auto',
      'padding' : 0,
      'display' : 'none'
    });

    this.listaUL.css({
      'overflow' : 'visible',
      'padding'  : 0
    });

    this.footer.css({'width': this.padre.exact('width')});

    
    this.createlist();

    this.estado = 0;

    this.checkdisabled(this.element);

    this.addevents();
    this.element.css({'display': 'none'});

  },
  
  hover: function(el) {
    if (this.hoverElement) {
      this.hoverElement.removeClass('hover');
    }
    if (el) {
      this.hoverElement = el.addClass('hover');
    }
  },
  
  createlist: function() {
    for(iiC=0;iiC<this.element.options.length;iiC++) {
      var option = document.id(this.element.options[iiC]);
      elemTO = new Element("a", {'href':'#', 'rel':iiC, 'tabindex':999}).set('text',option.text);

      elemTO.addEvents({
        'click': function(elemTO, iiC) {
          this.selected.set('text', elemTO.get('text'));
          this.element.options.selectedIndex = iiC;
          
          this.hover(elemTO);
          this.hijoR.focus();

          this.ocultar();
          this.element.fireEvent('change');

          return false;
        }.bind(this, [elemTO, iiC]),

        'mouseenter': function(elemTO) {
          this.hover(elemTO);
        }.bind(this, [elemTO])
      });

      this.listaUL.grab(new Element("li").grab(elemTO));

      if (option.get('icon')) {
        var icon = new Element("img", {'src':option.get('icon'), 'align':'top'});
        icon.css({ 'padding-right'  : 2 });
        icon.inject(elemTO, 'top');
      }

    }
    this.lista.altomaximo = Math.min((this.element.options.length.toInt() + 1) * 20, 160);
  },
    
  ocultar: function() {
    this.estado = 0;
    this.iewrapper.morph({'height': [this.lista.altomaximo,0]});
    (function() {
      var ff = this.get('onchange');
      if ($type(ff) == 'function') {
        ff = ff.toString().replace('function anonymous()', '').replace('function onchange()', '');
      }
      eval(ff);
    }.bind(this.element))();
    this.element.fireEvent('change');
  },

  mostrar: function() {
    this.listaUL.empty();
    this.createlist();

    this.estado = 1;
    this.iewrapper.morph({'height': [0,this.lista.altomaximo]});
  },
  
  addevents: function() {
    this.iewrapper.set('morph', {
      duration    : 300,
      transition  : Fx.Transitions.Quint.easeOut,
      onStart     : function() {
        if (this.estado && !Browser.Engine.trident4) {
          this.lista.css({'display': 'block'});
        }
      }.bind(this),
      onComplete  : function() {
        this.lista.css({'display': this.estado?'block':'none'});
      }.bind(this)
    });

    this.hijoC.addEvent('click', function(event) {
      this.hijoR.fireEvent('click', event);
      this.hijoR.focus();
      return false;
    }.bind(this));

    this.hijoR.addEvent('click', function() {
      if (!this.element.get('disabled')) {
        if (this.estado) {
          this.ocultar();
        } else {
          this.mostrar();
        }
      }
      return false;
    }.bind(this));

    this.hijoR.addEvent('focus', function() {
        this.addClass("sexy-select-focus");
    });

    this.hijoR.addEvent('focus', function() {
        this.padre.addClass("sexy-select-focus");
    }.bind(this));

    this.hijoR.addEvent('blur', function() {
        this.padre.removeClass("sexy-select-focus");
    }.bind(this));

    this.padre.addEvents({
      'blur': function() {
        this.ocultar();
      }.bind(this),

      'mouseenter': function() {
        this.addClass("sexy-select-focus");
      },

      'mouseleave': function() {
        this.removeClass("sexy-select-focus");
      }
    });

    this.hijoR.addEvent('keydown', function(event) {
        if (!this.element.get('disabled')) {

          if (event.alt && event.key=="down") { //Alt + Down
            if (!this.estado) {
              this.mostrar();
            }
            return false;

          } else if (event.alt && event.key=="up") { // Alt + Up
            this.ocultar();
            return false;

          } else if (event.key=="down") { // Down
            if (this.element.options.selectedIndex != this.element.length-1) {
              this.element.options.selectedIndex +=1;
              this.refresh();
            }
            return false;

          } else if (event.key=="up") { // Up
            if (this.element.options.selectedIndex != 0) {
              this.element.options.selectedIndex -=1;
              this.refresh();
            }
            return false;

          } else if (event.key=="\"") { // PageDown
            if (this.element.options.selectedIndex +6 < this.element.length-1) {
              this.element.options.selectedIndex +=6;
            } else {
              this.element.options.selectedIndex = this.element.length-1;
            }
            this.refresh();
            return false;

          } else if (event.key=="!") { // PageUp
            if (this.element.options.selectedIndex -6 > 0) {
              this.element.options.selectedIndex -=6;
            } else {
              this.element.options.selectedIndex = 0;
            }
            this.refresh();
            return false;

          }
          return true;

        }
    }.bind(this));

    document.addEvents({
      'mousedown': function(event) {
        if (this.estado && !this.lista.hasChild(event.target) && !this.padre.hasChild(event.target)) {
          this.ocultar();
        }
      }.bind(this),
      'keyup': function(event) {
          if (this.estado && !this.lista.hasChild(event.target) && !this.padre.hasChild(event.target)) {
            this.ocultar();
          }
      }.bind(this)
    });
  },
  
  refresh: function() {
    if (this.element.options.length > 0) {
      this.selected.set('text',this.element.options[this.element.options.selectedIndex].text);
    } else {
      this.selected.set('text', '');
    }
    fila_li = this.lista.getElement('a[rel='+this.element.options.selectedIndex+']');
    if (fila_li) {
      this.hover(fila_li);
      fila_li.focus();
    }
    this.hijoR.focus();

  }

});


Element.implement({

  DoSexy: function(properties)
  {
    properties = $extend({
      'noconflict': false
    }, properties || {});


    if (!this.SexyElement)
    {
      var type = this.get("type");
      var tag  = this.get("tag");

      if (tag == 'input')
      {
        if (type == "text" || type == "password" || type == null)
        {
          this.SexyElement = new SexyElementText(this);
        }
        else if (type == "submit" || type == "reset" || type == "button")
        {
          this.SexyElement = new SexyElementButton(this);
        }
        else if (type == "file")
        {
          this.SexyElement = new SexyElementFile(this);
        }
        else if (type == "radio" || type == "checkbox")
        {
          this.SexyElement = new SexyElementRadio(this);
        }
      }
      else if (tag == 'select')
      {
        if (this.get('multiple')) {
          this.SexyElement = new SexyElementTextarea(this);
        } else if (properties['noconflict']) {
          this.SexyElement = new SexyElementText(this);
        } else {
          this.SexyElement = new SexyElementSelect(this);
        }
      }
      else if (tag == 'textarea')
      {
        this.SexyElement = new SexyElementTextarea(this);
      }
    }
  },
  
  reset: function() {
    if (this.SexyElement) {
      this.SexyElement.reset();
    }
  },
  
  refresh: function() {
    if (this.get('tag') == 'select' && this.SexyElement) {
      this.SexyElement.refresh();
    }
  }
  
});

function beautify_each_form() {
  $$("input", "select", "textarea").each(function(el) {
    el.DoSexy();
  });
};

function reset_each_form(){
  $$("input", "select", "textarea").each(function(el) {
    el.reset();  
  });
};