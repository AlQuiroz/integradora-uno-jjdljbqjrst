namespace empatiagamt
{
    public abstract class ICrud : Conexion
    {
        public abstract bool Agregar();

        public abstract bool Eliminar();

        public abstract bool Modificar();

        public abstract bool Mostrar();

    }
}