oh-my-posh init fish --config $HOME/.poshthemes/amro.omp.json | source
set -g fish_greeting ""

# Set global paths
set -gx PATH /usr/bin /bin $PATH

# Android SDK paths
set -gx ANDROID_HOME /usr/lib/android-sdk
set -gx PATH $ANDROID_HOME/cmdline-tools/11.0/bin $ANDROID_HOME/platform-tools $ANDROID_HOME/build-tools/latest $PATH

set -Ux PATH /usr/local/bin/ $PATH


# For Java 21
set -gx JAVA_HOME /usr/lib/jvm/java-21-openjdk-amd64/
set -gx PATH $JAVA_HOME/bin $PATH


if status is-interactive
    # Commands to run in interactive sessions can go here
end
