Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 448BAC43217
	for <linux-phy@archiver.kernel.org>; Wed,  1 Dec 2021 18:07:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xVOfNs/4jrD5NOp10qo/PYBVUViITOPcnEM7eX4hWvE=; b=EEGE1uUwnmhVAA
	QR2gEkC66GFx/bhaS4xMyPpRISOiugGjn2IIIODXy3VlBJXUykAl3TIEkkzSL3z1Qx9yTt2IXTQwF
	U6g1rfWWhhVEJAXcxhps8HGY0+GJemX+VBK4qMQHSz4OlAETnqVkubj/1PW0+1X/yOUd8bIGr+Q9u
	zLzWVhB0cVMy1PnHqLXTbjGAl4sU1IE2MC8R6GxN93MP6CdaImtZ2GLLljPrO+rbKUa+3Zox0eLbr
	JHzuhzr/ED8fnNGee+H8Uy7MSPoPPepx8d7zdcC6aMlk27Xy/0wPN/2TUZFLrOiNBZ31ZhNiR5z9Z
	Z90OsbdhleTexFLvo+fQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msU0X-009hWX-M9; Wed, 01 Dec 2021 18:07:05 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msU0U-009hUK-KT
 for linux-phy@lists.infradead.org; Wed, 01 Dec 2021 18:07:04 +0000
Received: by mail-pl1-x635.google.com with SMTP id y7so18364920plp.0
 for <linux-phy@lists.infradead.org>; Wed, 01 Dec 2021 10:07:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=c+NX3gtEouviDYYWwLITzdsLQeio17BWeB+ByMH2wiw=;
 b=qJe9Y/WnG9v5EpWjsltHKjnV5SIP2/a3F5ANkxdXf1eIobVB18O7P9GWQKbQwMYKVH
 dNIpBezf57Qs2miROrqg0f4S/PCmsAeffZ4pYL680rLj4TTkNfDOuWphYoOugCbL4Zzu
 WvkNX7Y7tOCeGnkW2wSmoQl8LGsPUIT+aWaqCFRpUAEQ9s1dtyErWcl3wSzh0ecZIpbc
 SOK6O1ttXbY15+4rCQKmKha+rbZF3lD7NrX3gEVFTWHgm+6qPYyyASSD1Zp4P4+k+jd9
 w3z3XfmY6Ctd5eq29rKnuRkwzLc07ABxhCcK/53RijWHh9eblFU2lasBN+2r/B3JyF6r
 iuVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=c+NX3gtEouviDYYWwLITzdsLQeio17BWeB+ByMH2wiw=;
 b=VIyrgIvJnB3e49wya2Z2zrMWLRYtQsKJv9nofjnkHm44uhz7haiShJS+oUXxjhLehP
 vnIWQQrwOikdxBdmTXhpyrYYuKy6nDrKfhmwg5bIlRZlgbDsDMVxh/yx86QSA8qZpNV2
 BomXBDdmTfOF9avMuT4qzLSMLZxvRJpViJrIWWNKXht/r0+wGGryKXjOiALKEAtDC+0n
 OroCmYUGYvx+qRoFusqD/Qs5j8gF71Ehn+y85coHVaDy5+8nanKWZA4TAiHuLG+ITGTw
 n+BIe2zY4SjotEK9UCr1Y0WqTW7gjHwn1vhgGuXsVMSXd/36MlTOaCQjNGwlYxT4LAJW
 wCrQ==
X-Gm-Message-State: AOAM533DDu0raRZwpajmHan0toXSM4VRMquK1wnwQg2O8ApsHrrTOq1Z
 WKkU+NEjwj9bcVJvs6qn1geweqfQNpx74A==
X-Google-Smtp-Source: ABdhPJwAyGKBpZQs/RfZUfOLIJT3k+ufQ/LA5o7NGwxT3nB+d62kJddvjVPtUrhbDB0EjKMmpEHmQw==
X-Received: by 2002:a17:902:82c1:b0:141:e920:3b4c with SMTP id
 u1-20020a17090282c100b00141e9203b4cmr9361932plz.64.1638382021455; 
 Wed, 01 Dec 2021 10:07:01 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.11.250])
 by smtp.gmail.com with ESMTPSA id w142sm462582pfc.115.2021.12.01.10.07.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Dec 2021 10:07:01 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Cc: Al Cooper <alcooperx@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 Florian Fainelli <f.fainelli@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
 Vinod Koul <vkoul@kernel.org>
Subject: [PATCH 2/3] usb: Add "wake on" functionality for newer Synopsis XHCI
 controllers
Date: Wed,  1 Dec 2021 13:06:52 -0500
Message-Id: <20211201180653.35097-3-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20211201180653.35097-1-alcooperx@gmail.com>
References: <20211201180653.35097-1-alcooperx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211201_100702_706306_3B157B32 
X-CRM114-Status: GOOD (  15.63  )
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

Add "wake on" support for the newer Synopsis based XHCI only controller.
This works on the 72165 and 72164 and newer chips and does not work
on 7216 based systems. Also switch the USB sysclk to a slower clock
on suspend to save additional power in S2. The clock switch will only
save power on the 72165b0 and newer chips and is a nop on older chips.

Signed-off-by: Al Cooper <alcooperx@gmail.com>
---
 .../phy/broadcom/phy-brcm-usb-init-synopsys.c | 46 +++++++++++++++----
 1 file changed, 38 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c b/drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c
index e63457e145c7..d2524b70ea16 100644
--- a/drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c
+++ b/drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c
@@ -47,6 +47,8 @@
 #define   USB_CTRL_USB_PM_SOFT_RESET_MASK		0x40000000
 #define   USB_CTRL_USB_PM_BDC_SOFT_RESETB_MASK		0x00800000
 #define   USB_CTRL_USB_PM_XHC_SOFT_RESETB_MASK		0x00400000
+#define   USB_CTRL_USB_PM_XHC_PME_EN_MASK		0x00000010
+#define   USB_CTRL_USB_PM_XHC_S2_CLK_SWITCH_EN_MASK	0x00000008
 #define USB_CTRL_USB_PM_STATUS		0x08
 #define USB_CTRL_USB_DEVICE_CTL1	0x10
 #define   USB_CTRL_USB_DEVICE_CTL1_PORT_MODE_MASK	0x00000003
@@ -190,10 +192,6 @@ static void usb_init_common(struct brcm_usb_init_params *params)
 
 	pr_debug("%s\n", __func__);
 
-	USB_CTRL_UNSET(ctrl, USB_PM, USB_PWRDN);
-	/* 1 millisecond - for USB clocks to settle down */
-	usleep_range(1000, 2000);
-
 	if (USB_CTRL_MASK(USB_DEVICE_CTL1, PORT_MODE)) {
 		reg = brcm_usb_readl(USB_CTRL_REG(ctrl, USB_DEVICE_CTL1));
 		reg &= ~USB_CTRL_MASK(USB_DEVICE_CTL1, PORT_MODE);
@@ -222,6 +220,17 @@ static void usb_wake_enable_7211b0(struct brcm_usb_init_params *params,
 		USB_CTRL_UNSET(ctrl, CTLR_CSHCR, ctl_pme_en);
 }
 
+static void usb_wake_enable_7216(struct brcm_usb_init_params *params,
+				 bool enable)
+{
+	void __iomem *ctrl = params->regs[BRCM_REGS_CTRL];
+
+	if (enable)
+		USB_CTRL_SET(ctrl, USB_PM, XHC_PME_EN);
+	else
+		USB_CTRL_UNSET(ctrl, USB_PM, XHC_PME_EN);
+}
+
 static void usb_init_common_7211b0(struct brcm_usb_init_params *params)
 {
 	void __iomem *ctrl = params->regs[BRCM_REGS_CTRL];
@@ -295,6 +304,20 @@ static void usb_init_common_7211b0(struct brcm_usb_init_params *params)
 	usb2_eye_fix_7211b0(params);
 }
 
+static void usb_init_common_7216(struct brcm_usb_init_params *params)
+{
+	void __iomem *ctrl = params->regs[BRCM_REGS_CTRL];
+
+	USB_CTRL_UNSET(ctrl, USB_PM, XHC_S2_CLK_SWITCH_EN);
+	USB_CTRL_UNSET(ctrl, USB_PM, USB_PWRDN);
+
+	/* 1 millisecond - for USB clocks to settle down */
+	usleep_range(1000, 2000);
+
+	usb_wake_enable_7216(params, false);
+	usb_init_common(params);
+}
+
 static void usb_init_xhci(struct brcm_usb_init_params *params)
 {
 	pr_debug("%s\n", __func__);
@@ -302,14 +325,20 @@ static void usb_init_xhci(struct brcm_usb_init_params *params)
 	xhci_soft_reset(params, 0);
 }
 
-static void usb_uninit_common(struct brcm_usb_init_params *params)
+static void usb_uninit_common_7216(struct brcm_usb_init_params *params)
 {
 	void __iomem *ctrl = params->regs[BRCM_REGS_CTRL];
 
 	pr_debug("%s\n", __func__);
 
-	USB_CTRL_SET(ctrl, USB_PM, USB_PWRDN);
+	if (!params->wake_enabled) {
+		USB_CTRL_SET(ctrl, USB_PM, USB_PWRDN);
 
+		/* Switch to using slower clock during suspend to save power */
+		USB_CTRL_SET(ctrl, USB_PM, XHC_S2_CLK_SWITCH_EN);
+	} else {
+		usb_wake_enable_7216(params, true);
+	}
 }
 
 static void usb_uninit_common_7211b0(struct brcm_usb_init_params *params)
@@ -371,9 +400,9 @@ static void usb_set_dual_select(struct brcm_usb_init_params *params, int mode)
 
 static const struct brcm_usb_init_ops bcm7216_ops = {
 	.init_ipp = usb_init_ipp,
-	.init_common = usb_init_common,
+	.init_common = usb_init_common_7216,
 	.init_xhci = usb_init_xhci,
-	.uninit_common = usb_uninit_common,
+	.uninit_common = usb_uninit_common_7216,
 	.uninit_xhci = usb_uninit_xhci,
 	.get_dual_select = usb_get_dual_select,
 	.set_dual_select = usb_set_dual_select,
@@ -396,6 +425,7 @@ void brcm_usb_dvr_init_7216(struct brcm_usb_init_params *params)
 
 	params->family_name = "7216";
 	params->ops = &bcm7216_ops;
+	params->suspend_with_clocks = true;
 }
 
 void brcm_usb_dvr_init_7211b0(struct brcm_usb_init_params *params)
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
