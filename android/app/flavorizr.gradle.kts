import com.android.build.gradle.AppExtension

val android = project.extensions.getByType(AppExtension::class.java)

android.apply {
    flavorDimensions("flavor-type")

    productFlavors {
        create("dev") {
            dimension = "flavor-type"
            applicationId = "com.dentsusoken.TrustedWeb.DigitalWallet.Dev"
            resValue(type = "string", name = "app_name", value = "TW Wallet Dev")
        }
        create("prod") {
            dimension = "flavor-type"
            applicationId = "com.dentsusoken.TrustedWeb.DigitalWallet"
            resValue(type = "string", name = "app_name", value = "TW Wallet")
        }
    }
}