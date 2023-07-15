# Running Libreddit on an Android Device Using Termux

**Prerequisites:**
- An Android device
- Internet connection
- Basic understanding of terminal commands

**Step 1: Install Termux**
Install Termux from the Google Play Store or F-Droid. Termux provides a Linux environment on Android and does not require root access.

**Step 2: Update Packages**
Launch Termux and update its packages using the following command:
```shell
pkg update
```

**Step 3: Install Required Packages**
Next, install the required packages: Rust (the programming language used by Libreddit), Git (to clone the Libreddit repository), binutils (a suite of binary tools), and Android NDK (Native Development Kit, required to compile parts of the Libreddit project that use native code):
```shell
pkg install rust git binutils ndk-sysroot
```

**Step 4: Clone Libreddit Repository**
Clone the Libreddit repository from GitHub using the following command:
```shell
git clone https://github.com/spikecodes/libreddit.git
```

**Step 5: Build and Run Libreddit**
Navigate into the cloned repository:
```shell
cd libreddit
```
Now, build and install Libreddit:
```shell
cargo build --release
```
After the build process is finished, run Libreddit:
```shell
./target/release/libreddit
```
The Libreddit server should now be running and accessible at `localhost:8080`.

**Step 6: Use with UntrackMe App**
To use Libreddit with the UntrackMe app, follow these steps:
1. Install the UntrackMe app from the Google Play Store or f-droid.
2. Open the UntrackMe app and look for **Redirect Reddit to Teddit**.
3. Add Libreddit as a custom instance by adding the following URL: `http://libreddit.localhost:8080`
4. Save the settings.