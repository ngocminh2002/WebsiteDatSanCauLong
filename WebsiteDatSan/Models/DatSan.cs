namespace WebsiteDatSan.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DatSan")]
    public partial class DatSan
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public DatSan()
        {
            ChiTiet_DatSan = new HashSet<ChiTiet_DatSan>();
        }

        [Key]
        public int MaDat { get; set; }

        public DateTime? NgayDat { get; set; }

        public double? SoTien { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTiet_DatSan> ChiTiet_DatSan { get; set; }
    }
}
