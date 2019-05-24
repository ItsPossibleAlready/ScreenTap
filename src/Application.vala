namespace ScreenTap{
    public class ScreenTapApp : Gtk.Application {
        private static ScreenTapApp app;
        private ScreenTapWindow main_window = null;

        public static ScreenTapApp get_instance () {
            if (app == null) {
                app = new ScreenTapApp ();
            }

            return app;
        }

        protected override void activate () {
            //this.hold ();
            stdout.printf ("activated\n");
            if (main_window != null) {
                main_window.present ();
                return;
            }

            main_window = new ScreenTap.ScreenTapWindow ();
            main_window.get_style_context ().add_class ("rounded");
            main_window.set_application (this);
            main_window.show_all ();
            //this.release ();
        }

        private void normal_startup () {
            if (main_window != null) {
                main_window.present ();
                return;
            }

            main_window = new ScreenTap.ScreenTapWindow ();
            main_window.get_style_context ().add_class ("rounded");
            main_window.set_application (this);
            main_window.show_all ();
        }
        public static int main (string[] args) {

            Gtk.init (ref args);

            var app = new ScreenTapApp ();
            return app.run (args);
        }
    }
}
