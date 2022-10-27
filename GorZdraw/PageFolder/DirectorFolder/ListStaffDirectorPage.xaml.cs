using GorZdraw.ClassFolder;
using GorZdraw.DataFolder;
using GorZdraw.PageFolder.AdminFolder;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace GorZdraw.PageFolder.DirectorFolder
{
    /// <summary>
    /// Логика взаимодействия для ListStaffDirectorPage.xaml
    /// </summary>
    public partial class ListStaffDirectorPage : Page
    {
        public ListStaffDirectorPage()
        {
            InitializeComponent();
            UserDG.ItemsSource = DBEntities.Getcontext().User.ToList()
                .OrderBy(c => c.IdUser);
        }

        private void Ref()
        {
            UserDG.ItemsSource = DBEntities.Getcontext().User.ToList()
                .OrderBy(c => c.IdUser);
        }

        private void DelBtn_Click(object sender, RoutedEventArgs e)
        {
            if (UserDG.SelectedItem == null)
            {
                MBClass.ErrorMB("Выберите препарат для удаления");
            }
            else
            {
                try
                {
                    User user = UserDG.SelectedItem as User;
                    if (MBClass.QestionMB($"Удалить выбранный препарат?"))
                    {
                        DBEntities.Getcontext().User.Remove(user);
                        DBEntities.Getcontext().SaveChanges();
                        Ref();
                    }
                }
                catch (Exception ex)
                {
                    MBClass.ErrorMB(ex);
                }
            }
        }

        private void EditBtn_Click(object sender, RoutedEventArgs e)
        {
            User user = UserDG.SelectedItem as User;
            VariableClass.IdUser = user.IdUser;
            this.NavigationService.Navigate(new EditStaffPage(UserDG.SelectedItem as User));
            Ref();
        }

        private void AddBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new AddStaffPage());
        }
    }
}
