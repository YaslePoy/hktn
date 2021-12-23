//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace InvitesApp.IO
{
    using System;
    using System.Collections.Generic;
    
    public partial class Invite
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Invite()
        {
            this.Bookmark = new HashSet<Bookmark>();
        }
    
        public int Id { get; set; }
        public string Location { get; set; }
        public string Name { get; set; }
        public Nullable<int> FreeCount { get; set; }
        public Nullable<int> TotalCount { get; set; }
        public string Focus { get; set; }
        public Nullable<System.DateTime> DateTime { get; set; }
        public Nullable<int> AuthorId { get; set; }
        public string Descr { get; set; }
    
        public virtual User User { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Bookmark> Bookmark { get; set; }
    }
}
