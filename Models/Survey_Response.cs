//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Sclera2.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Survey_Response
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Survey_Response()
        {
            this.Tracks = new HashSet<Track>();
        }
    
        public int survey_response_id { get; set; }
        public Nullable<int> survey_id { get; set; }
        public Nullable<int> respondent_id { get; set; }
        public byte[] updated { get; set; }
    
        public virtual Respondent Respondent { get; set; }
        public virtual Survey Survey { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Track> Tracks { get; set; }
    }
}