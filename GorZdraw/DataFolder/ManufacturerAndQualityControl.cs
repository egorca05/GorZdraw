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
    
    public partial class ManufacturerAndQualityControl
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ManufacturerAndQualityControl()
        {
            this.Manufacturer = new HashSet<Manufacturer>();
        }
    
        public int IdManufacturerAndQualityControl { get; set; }
        public string NameMAQC { get; set; }
        public int IdCountry { get; set; }
        public int IdLegalAddressMAQC { get; set; }
    
        public virtual Country Country { get; set; }
        public virtual LegalAddressMAQC LegalAddressMAQC { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Manufacturer> Manufacturer { get; set; }
    }
}