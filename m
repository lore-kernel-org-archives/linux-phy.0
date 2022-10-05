Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B3F8C4332F
	for <linux-phy@archiver.kernel.org>; Wed,  5 Oct 2022 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/qB7QFfLgeu9KBuE0iSr2MQURDAVv1EDAMPcbbHUPxo=; b=zXUztt3OZkL2JT
	8+C8cIPmHMsgdkQPZ1VaUbwp3Od6KavMCivRlYGplVWzTle9hMUoQKZTmP4zTEX1nKLdKoVMbis6K
	LOSN/xyYiSGOoDiDaq9M1GXncyDYkJUsHNzW4p9M+4L/K7HSVab6ZFN9HuXX/YhwuRabAYAWv9qjh
	9vQRRUrmHQDWmWK4Te+/44klgS6wBfJKPBNaQAxEsP05rGHA8fqT48H11wXfKKiusSA/Qw24RWiGe
	v4XwLItKbsYPOEeK/prClZRJd+tuakHKi4sqWdR0AZ1s4wQ4RJPVl+Js/MWfspMIYN139C2VirVcv
	Kh1NvcccLP6ArrDkfTiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogByK-00G9DI-Gw; Wed, 05 Oct 2022 21:30:32 +0000
Received: from mail-qt1-x832.google.com ([2607:f8b0:4864:20::832])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogByH-00G9Bq-Ms
	for linux-phy@lists.infradead.org; Wed, 05 Oct 2022 21:30:31 +0000
Received: by mail-qt1-x832.google.com with SMTP id cn9so3194116qtb.11
        for <linux-phy@lists.infradead.org>; Wed, 05 Oct 2022 14:30:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date;
        bh=3vBPfZQUUR4Bqu8C6gclle2dspETf2T/mBoxOoixxmU=;
        b=oswc1ZZJ2f+JAl5AEAE8rNyRKXNQdiiTS38vHMxpptFT32xdIFhqAHfj+ToAO6JrK5
         p5RaElSaTed+l169mmw0ficRkHHac2qNjBZ8UzZ45+LyFmpIkZjrUsPYIe4TllQYJ6NZ
         xFC8wegxr+RzoCTfdpCZMOBSDtjTBtxBSVEC9v1hJIHXX9es2NaZmIOMhEce7dfLQ6tS
         NX6ow5SVtKimsFR3Kof7jvw9EhKUyeAuhcvU4r0UrGH6ZZXwEyy1inASK0cTQpSrA5yD
         DqjEO3TLDifDrmHTzRPU/HUehr0Sp3DHlosuvSSp9qfc3TsyxjI3MUsSMf9F2rmBGfLP
         JDVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date;
        bh=3vBPfZQUUR4Bqu8C6gclle2dspETf2T/mBoxOoixxmU=;
        b=SJSe78Hx304mXXdys6ReB42ljNUxtpzbl0sIXzlMJHIS3+SS3ZmxpKP5tCWaFsDZk3
         v4jIiI7RuL+Xa6QKHfO/IaUPgS6E14Z3DQChiaMj2f/dAT5UvxRAkkl8Qot/4uVISRhw
         8mTBtk/TrrGhM10+AkJvtIpyOyGNYug85kNmHNHHbz0JlVkvxFq0axPfD8v0SgMIZtFx
         DGRlGHQJTqM8QlgV3Fa9+DL1DAF41ZH0zt0L3zQFcJxWrny9UFWCCr5+v1FGEqKIReGe
         q056t3L3zAmgRGLy2170MFU2ZG7FcDyvAziyxeWIu+4R6WeKNQxu+OsZOvyJuaBsH9fj
         9cOQ==
X-Gm-Message-State: ACrzQf3u75VTXSeYa/paxo+fI0CKJCmJFwgXFNDz+xsQiIIMcxtMvrzd
	BsSdKTBmm8S/5pU4uuuhiAc=
X-Google-Smtp-Source: AMsMyM4IrNE93blKWRxOf6HfoZFFoEGR4HYJrLCoW28lyt3ORkphEJJYEipyuLknk4IIaBA96izHgg==
X-Received: by 2002:ac8:5a4e:0:b0:38b:77cf:e65b with SMTP id o14-20020ac85a4e000000b0038b77cfe65bmr1181108qta.419.1665005425744;
        Wed, 05 Oct 2022 14:30:25 -0700 (PDT)
Received: from stbirv-lnx-2.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id s22-20020a05620a255600b006b929a56a2bsm20058566qko.3.2022.10.05.14.30.24
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Oct 2022 14:30:25 -0700 (PDT)
From: justinpopo6@gmail.com
To: alcooperx@gmail.com,
	kishon@ti.com,
	vkoul@kernel.org,
	f.fainelli@gmail.com,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: bcm-kernel-feedback-list@broadcom.com,
	Justin Chen <justinpopo6@gmail.com>
Subject: [PATCH 1/6] phy: usb: Improve port mode selection
Date: Wed,  5 Oct 2022 14:30:13 -0700
Message-Id: <1665005418-15807-2-git-send-email-justinpopo6@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1665005418-15807-1-git-send-email-justinpopo6@gmail.com>
References: <1665005418-15807-1-git-send-email-justinpopo6@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221005_143029_778200_D83A6778 
X-CRM114-Status: GOOD (  18.97  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Justin Chen <justinpopo6@gmail.com>

Split port modes into two different variables. Supported port modes
is what the hardware supports. While port mode is how the hardware
is currently configured and can be dynamically changed through the
sysfs. We initialize all supported port modes on init even though
the port mode may not be selected because we cannot guarantee the
downstream interface from the phy will be active or not.

This also fixes an issue where port modes selected via sysfs were
not being saved through suspend/resume.

Signed-off-by: Justin Chen <justinpopo6@gmail.com>
---
 drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c | 12 ++++++------
 drivers/phy/broadcom/phy-brcm-usb-init.c          | 10 +++++-----
 drivers/phy/broadcom/phy-brcm-usb-init.h          | 10 +++++-----
 drivers/phy/broadcom/phy-brcm-usb.c               | 14 +++++++++-----
 4 files changed, 25 insertions(+), 21 deletions(-)

diff --git a/drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c b/drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c
index d2524b7..430a8ae 100644
--- a/drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c
+++ b/drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c
@@ -195,10 +195,10 @@ static void usb_init_common(struct brcm_usb_init_params *params)
 	if (USB_CTRL_MASK(USB_DEVICE_CTL1, PORT_MODE)) {
 		reg = brcm_usb_readl(USB_CTRL_REG(ctrl, USB_DEVICE_CTL1));
 		reg &= ~USB_CTRL_MASK(USB_DEVICE_CTL1, PORT_MODE);
-		reg |= params->mode;
+		reg |= params->port_mode;
 		brcm_usb_writel(reg, USB_CTRL_REG(ctrl, USB_DEVICE_CTL1));
 	}
-	switch (params->mode) {
+	switch (params->supported_port_modes) {
 	case USB_CTLR_MODE_HOST:
 		USB_CTRL_UNSET(ctrl, USB_PM, BDC_SOFT_RESETB);
 		break;
@@ -276,7 +276,7 @@ static void usb_init_common_7211b0(struct brcm_usb_init_params *params)
 	/* Set the PHY_MODE */
 	reg = brcm_usb_readl(usb_phy + USB_PHY_UTMI_CTL_1);
 	reg &= ~USB_PHY_UTMI_CTL_1_PHY_MODE_MASK;
-	reg |= params->mode << USB_PHY_UTMI_CTL_1_PHY_MODE_SHIFT;
+	reg |= params->supported_port_modes << USB_PHY_UTMI_CTL_1_PHY_MODE_SHIFT;
 	brcm_usb_writel(reg, usb_phy + USB_PHY_UTMI_CTL_1);
 
 	usb_init_common(params);
@@ -286,7 +286,7 @@ static void usb_init_common_7211b0(struct brcm_usb_init_params *params)
 	 * the default "Read Transaction Size" of 6 (1024 bytes).
 	 * Set it to 4 (256 bytes).
 	 */
-	if ((params->mode != USB_CTLR_MODE_HOST) && bdc_ec) {
+	if ((params->supported_port_modes != USB_CTLR_MODE_HOST) && bdc_ec) {
 		reg = brcm_usb_readl(bdc_ec + BDC_EC_AXIRDA);
 		reg &= ~BDC_EC_AXIRDA_RTS_MASK;
 		reg |= (0x4 << BDC_EC_AXIRDA_RTS_SHIFT);
@@ -385,7 +385,7 @@ static int usb_get_dual_select(struct brcm_usb_init_params *params)
 	return reg;
 }
 
-static void usb_set_dual_select(struct brcm_usb_init_params *params, int mode)
+static void usb_set_dual_select(struct brcm_usb_init_params *params)
 {
 	void __iomem *ctrl = params->regs[BRCM_REGS_CTRL];
 	u32 reg;
@@ -394,7 +394,7 @@ static void usb_set_dual_select(struct brcm_usb_init_params *params, int mode)
 
 	reg = brcm_usb_readl(USB_CTRL_REG(ctrl, USB_DEVICE_CTL1));
 	reg &= ~USB_CTRL_MASK(USB_DEVICE_CTL1, PORT_MODE);
-	reg |= mode;
+	reg |= params->port_mode;
 	brcm_usb_writel(reg, USB_CTRL_REG(ctrl, USB_DEVICE_CTL1));
 }
 
diff --git a/drivers/phy/broadcom/phy-brcm-usb-init.c b/drivers/phy/broadcom/phy-brcm-usb-init.c
index dddcbd3..a7f8b3d 100644
--- a/drivers/phy/broadcom/phy-brcm-usb-init.c
+++ b/drivers/phy/broadcom/phy-brcm-usb-init.c
@@ -876,11 +876,11 @@ static void usb_init_common(struct brcm_usb_init_params *params)
 		reg = brcm_usb_readl(USB_CTRL_REG(ctrl, USB_DEVICE_CTL1));
 		reg &= ~USB_CTRL_MASK_FAMILY(params, USB_DEVICE_CTL1,
 					PORT_MODE);
-		reg |= params->mode;
+		reg |= params->port_mode;
 		brcm_usb_writel(reg, USB_CTRL_REG(ctrl, USB_DEVICE_CTL1));
 	}
 	if (USB_CTRL_MASK_FAMILY(params, USB_PM, BDC_SOFT_RESETB)) {
-		switch (params->mode) {
+		switch (params->supported_port_modes) {
 		case USB_CTLR_MODE_HOST:
 			USB_CTRL_UNSET_FAMILY(params, USB_PM, BDC_SOFT_RESETB);
 			break;
@@ -891,7 +891,7 @@ static void usb_init_common(struct brcm_usb_init_params *params)
 		}
 	}
 	if (USB_CTRL_MASK_FAMILY(params, SETUP, CC_DRD_MODE_ENABLE)) {
-		if (params->mode == USB_CTLR_MODE_TYPEC_PD)
+		if (params->supported_port_modes == USB_CTLR_MODE_TYPEC_PD)
 			USB_CTRL_SET_FAMILY(params, SETUP, CC_DRD_MODE_ENABLE);
 		else
 			USB_CTRL_UNSET_FAMILY(params, SETUP,
@@ -1000,7 +1000,7 @@ static int usb_get_dual_select(struct brcm_usb_init_params *params)
 	return reg;
 }
 
-static void usb_set_dual_select(struct brcm_usb_init_params *params, int mode)
+static void usb_set_dual_select(struct brcm_usb_init_params *params)
 {
 	void __iomem *ctrl = params->regs[BRCM_REGS_CTRL];
 	u32 reg;
@@ -1011,7 +1011,7 @@ static void usb_set_dual_select(struct brcm_usb_init_params *params, int mode)
 		reg = brcm_usb_readl(USB_CTRL_REG(ctrl, USB_DEVICE_CTL1));
 		reg &= ~USB_CTRL_MASK_FAMILY(params, USB_DEVICE_CTL1,
 					PORT_MODE);
-		reg |= mode;
+		reg |= params->port_mode;
 		brcm_usb_writel(reg, USB_CTRL_REG(ctrl, USB_DEVICE_CTL1));
 	}
 }
diff --git a/drivers/phy/broadcom/phy-brcm-usb-init.h b/drivers/phy/broadcom/phy-brcm-usb-init.h
index 1ccb5dd..bedf2b8 100644
--- a/drivers/phy/broadcom/phy-brcm-usb-init.h
+++ b/drivers/phy/broadcom/phy-brcm-usb-init.h
@@ -45,14 +45,15 @@ struct brcm_usb_init_ops {
 	void (*uninit_eohci)(struct brcm_usb_init_params *params);
 	void (*uninit_xhci)(struct brcm_usb_init_params *params);
 	int  (*get_dual_select)(struct brcm_usb_init_params *params);
-	void (*set_dual_select)(struct brcm_usb_init_params *params, int mode);
+	void (*set_dual_select)(struct brcm_usb_init_params *params);
 };
 
 struct  brcm_usb_init_params {
 	void __iomem *regs[BRCM_REGS_MAX];
 	int ioc;
 	int ipp;
-	int mode;
+	int supported_port_modes;
+	int port_mode;
 	u32 family_id;
 	u32 product_id;
 	int selected_family;
@@ -153,11 +154,10 @@ static inline int brcm_usb_get_dual_select(struct brcm_usb_init_params *ini)
 	return 0;
 }
 
-static inline void brcm_usb_set_dual_select(struct brcm_usb_init_params *ini,
-	int mode)
+static inline void brcm_usb_set_dual_select(struct brcm_usb_init_params *ini)
 {
 	if (ini->ops->set_dual_select)
-		ini->ops->set_dual_select(ini, mode);
+		ini->ops->set_dual_select(ini);
 }
 
 #endif /* _USB_BRCM_COMMON_INIT_H */
diff --git a/drivers/phy/broadcom/phy-brcm-usb.c b/drivers/phy/broadcom/phy-brcm-usb.c
index 2cb3779..99d4dea 100644
--- a/drivers/phy/broadcom/phy-brcm-usb.c
+++ b/drivers/phy/broadcom/phy-brcm-usb.c
@@ -233,7 +233,7 @@ static ssize_t dr_mode_show(struct device *dev,
 	return sprintf(buf, "%s\n",
 		value_to_name(&brcm_dr_mode_to_name[0],
 			      ARRAY_SIZE(brcm_dr_mode_to_name),
-			      priv->ini.mode));
+			      priv->ini.supported_port_modes));
 }
 static DEVICE_ATTR_RO(dr_mode);
 
@@ -249,7 +249,8 @@ static ssize_t dual_select_store(struct device *dev,
 	res = name_to_value(&brcm_dual_mode_to_name[0],
 			    ARRAY_SIZE(brcm_dual_mode_to_name), buf, &value);
 	if (!res) {
-		brcm_usb_set_dual_select(&priv->ini, value);
+		priv->ini.port_mode = value;
+		brcm_usb_set_dual_select(&priv->ini);
 		res = len;
 	}
 	mutex_unlock(&sysfs_lock);
@@ -495,13 +496,16 @@ static int brcm_usb_phy_probe(struct platform_device *pdev)
 	of_property_read_u32(dn, "brcm,ipp", &priv->ini.ipp);
 	of_property_read_u32(dn, "brcm,ioc", &priv->ini.ioc);
 
-	priv->ini.mode = USB_CTLR_MODE_HOST;
+	priv->ini.supported_port_modes = USB_CTLR_MODE_HOST;
 	err = of_property_read_string(dn, "dr_mode", &mode);
 	if (err == 0) {
 		name_to_value(&brcm_dr_mode_to_name[0],
 			      ARRAY_SIZE(brcm_dr_mode_to_name),
-			mode, &priv->ini.mode);
+			mode, &priv->ini.supported_port_modes);
 	}
+	/* Default port_mode to supported port_modes */
+	priv->ini.port_mode = priv->ini.supported_port_modes;
+
 	if (of_property_read_bool(dn, "brcm,has-xhci"))
 		priv->has_xhci = true;
 	if (of_property_read_bool(dn, "brcm,has-eohci"))
@@ -539,7 +543,7 @@ static int brcm_usb_phy_probe(struct platform_device *pdev)
 	 * Create sysfs entries for mode.
 	 * Remove "dual_select" attribute if not in dual mode
 	 */
-	if (priv->ini.mode != USB_CTLR_MODE_DRD)
+	if (priv->ini.supported_port_modes != USB_CTLR_MODE_DRD)
 		brcm_usb_phy_attrs[1] = NULL;
 	err = sysfs_create_group(&dev->kobj, &brcm_usb_phy_group);
 	if (err)
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
