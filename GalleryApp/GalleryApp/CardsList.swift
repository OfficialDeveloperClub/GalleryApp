//
//  CardsList.swift
//  GalleryApp
//
//  Created by Daniel Pustotin on 07.08.2022.
//

import Foundation

extension Card {

    private static let macBookAir = Card(
        "MacBook Air",
        text: """
The M2 chip starts the next generation of Apple silicon, with even more of the speed and power efficiency of M1. So you can get more done faster with a more powerful 8‑core CPU. Create captivating images and animations with up to a 10-core GPU. Work with more streams of 4K and 8K ProRes video with the high‑performance media engine. And keep working — or playing — all day and into the night with up to 18 hours of battery life.

The breathtaking 13.6-inch Liquid Retina display is the biggest — and brightest — ever on MacBook Air, with support for 1 billion colors. Text is supercrisp, and photos and movies more brilliant and vivid, with rich contrast and sharp detail.

Make your best impression on video calls with the 1080p FaceTime HD camera and three‑mic array. Surround yourself with an expansive soundstage, compliments of the four‑speaker sound system with Spatial Audio. MacBook Air was designed to thrill the senses.

Comfortable and quiet, Magic Keyboard now has a full‑height function key row for quick access to favorite controls and shortcuts. Touch ID makes it easy to unlock your Mac, enter passwords, and make secure purchases or payments — all at the touch of a finger. And with the larger Force Touch trackpad, there’s even more space to work with precision.

The quick-release MagSafe power connector easily attaches — and detaches — with magnets, preventing any unintended flights. Two Thunderbolt ports let you connect and power high-speed accessories. You can also connect up to a 6K display. And the headphone jack supports high‑impedance headphones.
""",
        image: "https://www.apple.com/v/macbook-air/o/images/overview/hero_mba_m2__ejbs627dj7ee_large_2x.jpg")

    private static let iPadAir = Card(
        "iPad Air",
        text: """
iPad Air lets you immerse yourself in whatever you’re reading, watching, or creating. The 10.9-inch Liquid Retina display features advanced technologies like True Tone, P3 wide color, and an antireflective coating.

Touch ID is built into the top button, so you can use your fingerprint to unlock your iPad, sign in to apps, and make payments securely with Apple Pay. And iPad Air comes in five gorgeous colors.

The breakthrough M1 chip is now in iPad Air. An 8-core CPU delivers up to 60 percent faster performance than the previous generation, making iPad Air a creative and mobile gaming powerhouse. Multitask smoothly between powerful apps and play graphics-intensive games. And with M1, you can go even further with your creativity with apps like SketchUp.

The extraordinary 8-core GPU delivers up to 2x faster graphics, so you can draw a social media filter in Procreate, build in 3D with uMake, and more. And with all-day battery life, you can keep creating wherever you go.

The Apple-designed 16-core Neural Engine accelerates machine learning so you can do amazing things. Editing photos is faster than ever in Adobe Lightroom, where you can intelligently select the sky in your photos with just a tap.
""",
        image: "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/ipad-air-select-202203")



    private static let iPhone13Pro = Card(
        "iPhone 13 Pro",
        text: """
iPhone 13 Pro takes a huge leap forward, bringing incredible speed to everything you do and dramatic new photo and video capabilities — all in two great sizes.

iPhone helps put you in control of your personal information. For example, when you’re browsing, Safari intelligently helps block trackers from profiling you and shows you which ones have been blocked in your Privacy Report. And the list goes on.

Our hardware and software work together seamlessly. Want to pair new AirPods with your iPhone? It’s a simple one‑tap setup. See a phone number in a photo? Live Text lets you tap it to make the call. You can also copy text, send an email, or look up directions right from the photo.

Superstrong materials and water resistance make iPhone incredibly durable. And automatic iOS updates deliver new features and security enhancements that keep your iPhone running beautifully and help it hold its value longer than other smartphones.

Our stores, offices, data centers, and operations are already carbon neutral. By 2030 our products — and your carbon footprint from using them — will be, too. And this year we eliminated the plastic wrap around the iPhone 13 and iPhone 13 Pro boxes, saving 600 metric tons of plastic.
""",
        image: "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-13-pro-model-select-202207-6-7inch_AV1")

    private static let appleWatchSeries7 = Card(
        "Apple Watch Series 7",
        text: """
Big screen. Huge impact. The challenge was to create a bigger display while barely expanding the dimensions of the watch itself. To do so, the display was completely re‑engineered reducing the borders by 40%, allowing for more screen area than both Series 6 and Series 3. Now that’s something to smile about.

Measure your blood oxygen. It’s a breathtaking innovation. Your blood oxygen level is a key indicator of your overall wellness. It can help you understand how well your body is absorbing oxygen and the amount of oxygen delivered to your body. The remarkable sensor and app in Apple Watch Series 7 allow you to take on‑demand readings of your blood oxygen as well as background readings, day and night.

Take an ECG at any time. With the ECG app, Apple Watch Series 7 is capable of generating an ECG similar to a single-lead electrocardiogram. It’s a momentous achievement for a wearable device that can provide critical data for doctors and peace of mind for you.

Your finger can tell you a lot about your heart. Electrodes built into the Digital Crown and the back crystal work together with the ECG app to read your heart’s electrical signals. Simply touch the Digital Crown to generate an ECG waveform in just 30 seconds. The ECG app can indicate whether your heart rhythm shows signs of atrial fibrillation — a serious form of irregular heart rhythm — or sinus rhythm, which means your heart is beating in a normal pattern.
""",
        image: "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/watch-s7-lifestyle-aws-202205")

    private static let airPodsMax = Card(
        "AirPodsMax",
        text: """
Introducing AirPods Max — a perfect balance of exhilarating high-fidelity audio and the effortless magic of AirPods. The ultimate personal listening experience is here.

The over-ear headphone has been completely reimagined. From cushion to canopy, AirPods Max are designed for an uncompromising fit that creates the optimal acoustic seal for many different head shapes — fully immersing you in every sound.

AirPods Max combine high-fidelity audio with industry-leading Active Noise Cancellation to deliver an unparalleled listening experience. Each part of their custom-built driver works to produce sound with ultra-low distortion across the audible range. From deep, rich bass to accurate mids and crisp, clean highs, you’ll hear every note with a new sense of clarity.

With a powerful Apple‑designed H1 chip in each cup, our custom acoustic design, and advanced software, AirPods Max use computational audio to create a breakthrough listening experience. By tapping into each chip’s 10 audio cores, computational audio helps block outside noise, adapts audio to the fit and seal of your ear cushions, and makes movie scenes sound like they’re happening all around you.

AirPods Max inherit all of the wireless, effortless magic of the AirPods family. From setup to Siri commands, they make the listening experience completely fluid — day to day, device to device.
""",
        image: "https://www.apple.com/v/airpods-max/e/images/overview/design_colors_gray_front__bgkzj4cnbafm_xlarge_2x.jpg")

    private static let homePodMini = Card(
        "HomePod mini",
        text: """
Jam-packed with innovation, HomePod mini delivers unexpectedly big sound for a speaker of its size. At just 3.3 inches tall, it takes up almost no space but fills the entire room with rich 360‑degree audio that sounds amazing from every angle. Add more than one HomePod mini for truly expansive sound.

Boundary-pushing computational audio creates the full, detailed tones of a much larger speaker — and HomePod mini turns it up without missing your voice commands.

HomePod mini is designed to fit anywhere in the house. Its elegant shape is wrapped in a perfectly seamless mesh fabric that’s virtually transparent to the sound passing through it. A backlit touch surface on the top provides quick control.

With multiple HomePod mini speakers placed around the house, you can have a connected sound system for your whole home. Ask Siri to play one song everywhere or, just as easily, a different song in each room.

Having powerful audio everywhere in the house couldn‘t be simpler — and each HomePod mini gives you total control, no matter where you are. HomePod mini also works with your Apple devices for features like Intercom, letting you quickly communicate by voice.
""",
        image: "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/homepod-mini-og-202110")

    static let list: [Card] = [
        macBookAir, iPadAir, iPhone13Pro, appleWatchSeries7, airPodsMax, homePodMini
    ]
}
