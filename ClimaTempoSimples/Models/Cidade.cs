//------------------------------------------------------------------------------
// <auto-generated>
//    O código foi gerado a partir de um modelo.
//
//    Alterações manuais neste arquivo podem provocar comportamento inesperado no aplicativo.
//    Alterações manuais neste arquivo serão substituídas se o código for gerado novamente.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ClimaTempoSimples.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Cidade
    {
        public int Id { get; set; }
        public string Nome { get; set; }
        public int EstadoId { get; set; }
        public virtual ICollection<PrevisaoClima> PrevisaoClima { get; set; }
        public Cidade()
        {
            PrevisaoClima = new HashSet<PrevisaoClima>();
        }
    }
}