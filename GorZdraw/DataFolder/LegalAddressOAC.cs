//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace GorZdraw.DataFolder
{
    using System;
    using System.Collections.Generic;
    
    public partial class LegalAddressOAC
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public LegalAddressOAC()
        {
            this.OrganizationAcceptingClaims = new HashSet<OrganizationAcceptingClaims>();
        }
    
        public int IdLegalAddressOAC { get; set; }
        public int IdCity { get; set; }
        public int IdStreet { get; set; }
        public string HouseNumber { get; set; }
        public string Building { get; set; }
    
        public virtual City City { get; set; }
        public virtual Street Street { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<OrganizationAcceptingClaims> OrganizationAcceptingClaims { get; set; }
    }
}
