package org.loremipsum.pippleflip;

import org.bukkit.plugin.java.JavaPlugin;
import org.loremipsum.pippleflip.commands.pf.CmdPippleflip;

public class Pippleflip extends JavaPlugin {

    @Override
    public void onEnable() {
        super.onEnable();

        // Load commands.
        getServer().getPluginCommand("pippleflip").setExecutor(new CmdPippleflip());

        // Notify that the plugin is loaded successfully.
        getLogger().info("PippleFlip is up and running!");
    }

    @Override
    public void onDisable() {
        super.onDisable();

        // Notify the plugin is disabled.
        getLogger().info("PippleFlip is disabled.");
    }

    @Override
    public void onLoad() {
        super.onLoad();
    }
}
