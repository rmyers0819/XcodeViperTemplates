XCODE_USER_TEMPLATES_DIR=~/Library/Developer/Xcode/Templates/File\ Templates
XCODE_USER_SNIPPETS_DIR=~/Library/Developer/Xcode/UserData/CodeSnippets

TEMPLATES_DIR=VIPER\ Architecture
BASE_DIR=base\ folder
DEST_DIR= $(XCODE_USER_TEMPLATES_DIR)/$(TEMPLATES_DIR)
SCENE_DIR= $(TEMPLATES_DIR)/Scene.xctemplate/UIViewController
STORYBOARD_SCENE_DIR= $(TEMPLATES_DIR)/StoryboardScene.xctemplate/UIViewController

install_templates:
	mkdir -p $(XCODE_USER_TEMPLATES_DIR)
	rm -fR $(XCODE_USER_TEMPLATES_DIR)/$(TEMPLATES_DIR)
	cp -R $(TEMPLATES_DIR) $(XCODE_USER_TEMPLATES_DIR)	
	rsync -aP --exclude=___FILEBASENAME___.storyboard $(BASE_DIR)/* $(XCODE_USER_TEMPLATES_DIR)/$(SCENE_DIR)/
	cp -R $(BASE_DIR) $(XCODE_USER_TEMPLATES_DIR)/$(STORYBOARD_SCENE_DIR)

uninstall_templates:
	rm -fR $(XCODE_USER_TEMPLATES_DIR)/$(TEMPLATES_DIR)
	