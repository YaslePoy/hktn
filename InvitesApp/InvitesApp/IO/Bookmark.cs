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
    
    public partial class Bookmark
    {
        public int Id { get; set; }
        public Nullable<int> UserId { get; set; }
        public Nullable<int> InviteId { get; set; }
    
        public virtual Invite Invite { get; set; }
        public virtual User User { get; set; }
    }
}
