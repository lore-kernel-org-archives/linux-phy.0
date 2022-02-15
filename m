Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CEBEC433F5
	for <linux-phy@archiver.kernel.org>; Tue, 15 Feb 2022 03:24:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xQg4UjCpBxbbfdmSlR1DL9FXvzQZYlwtHKPtwNd2mgc=; b=tyQLZm130PBE+8
	09IPtlsqqRg+9cxnfFFJWcKBXiZ1H5hcrk0Y1j+hijeHfyZrv8jlyEVe25fDZom7HsWKAg5zfP1O4
	1WtyZEFC83gebKrlxu/Yzi5IJOGkNKvvW2jjCNMEZs81T7E0FEY5LyNrsBJXQh+8ZiniW5u5lzI+P
	BksyYYGup8KI7eSJYVf15otdruSS+L15QkonJIF7PYIiHfLjBHB3jrZpeSh560OlbPRPIdoALS38B
	pHBcQ1bmfiS0OcN6PRbSEhcJSGw4ZIJSx4Bjbk4NfFmtwDPlAF73gRAp+j+UIWFSWGQxbkA/Ew8Fs
	9n2pIrqNhYj/sPoewBPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJoSA-0004gA-1a; Tue, 15 Feb 2022 03:24:34 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJoS7-0004eQ-Db
 for linux-phy@lists.infradead.org; Tue, 15 Feb 2022 03:24:33 +0000
Received: by mail-pf1-x42f.google.com with SMTP id l19so26802872pfu.2
 for <linux-phy@lists.infradead.org>; Mon, 14 Feb 2022 19:24:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rWi/O5nJDLI+tNetDw/Ev6zUKQmU4GrSqp5n8nSHbx4=;
 b=cH3SsTCDZtptXFpBGJiNfLdA+WiZF819l8uh4FCwJbLHyll5CCg1qQyeVnRoIKp0jd
 UzTEGrAlDFLKsvfrLUPO2cyQR7V8ge2XkoQ76Do/DMHT5XY4Gys7TrBRKgJTcK/CKEly
 NlpoI7nSrO+zRLa4y6WYqMQnU4BaXsL7QZgFK1+3TkAAXpuULDQPczgJbKC98r6I07hN
 YWvIa+3/YuKK6iLw/sv9VTnWWPpNNZ8240Zfz+VdH8+oIZuRojFuS6hk3KXv46B82zzJ
 pj6n8qmDE390S58ISOapvDx0gWqpFiIcYo0EQ8RQG/T6QEiBLoXoi/BiG029qFkQud7u
 RW8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rWi/O5nJDLI+tNetDw/Ev6zUKQmU4GrSqp5n8nSHbx4=;
 b=5PWgUAj34UJbkfWJKlsEQjnblqyGJB1CDuxbT9y1/K9WVaLylzPNAYywzKGuZIpS83
 vISLENFiYWXg2UPS+YUibdRAdPCekgMbomxp5M1Q+c6yRXbSQXbr7WnLXyT0viF9twpU
 RD1o/LJ5fVJ52bfD6e5fJSbOv0209/E8EScXUY9jIzbV9vJfbkX4P9bGH5Yd/V3hODKh
 WL7cyovKwmnc//nQT0qKLoaeYS+YKQw1TwqUHOZk8K92PdYAUwDgfAI4+eBT/lc8BBWn
 UVHcpW7fPDZoNJLQnKeUApKyt/JWLB6ueItdMMo7CI/eXgTeqtFIJ8pwGza/vax7tyrZ
 oIww==
X-Gm-Message-State: AOAM531Gk+5YKGIzm7Ty7X+yFBR3Ur7CtwPlbPHjJy/OtiYiy2iDGKgD
 mOq5d67eUtOvuLf/oB06YY0=
X-Google-Smtp-Source: ABdhPJzwvvVrlxC6vO4ybEODwecpFbI0/rwqAnm8JDxaOmnd4sWkMfFcz7DKurU1f8V0miTnOJAYcA==
X-Received: by 2002:a63:864a:: with SMTP id x71mr1865535pgd.272.1644895464775; 
 Mon, 14 Feb 2022 19:24:24 -0800 (PST)
Received: from 7YHHR73.igp.broadcom.net (ip72-194-116-95.oc.oc.cox.net.
 [72.194.116.95])
 by smtp.gmail.com with ESMTPSA id b2sm803390pgg.59.2022.02.14.19.24.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Feb 2022 19:24:24 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Cc: Al Cooper <alcooperx@gmail.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com (open list:BROADCOM BRCMSTB USB2 and
 USB3 PHY DRIVER), 
 linux-phy@lists.infradead.org (open list:GENERIC PHY FRAMEWORK)
Subject: [PATCH v2] phy: usb: Add "wake on" functionality for newer Synopsis
 XHCI controllers
Date: Mon, 14 Feb 2022 19:24:21 -0800
Message-Id: <20220215032422.5179-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220214_192431_467388_1B5E69AD 
X-CRM114-Status: GOOD (  15.38  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Al Cooper <alcooperx@gmail.com>

Add "wake on" support for the newer Synopsis based XHCI only controller.
This works on the 72165 and 72164 and newer chips and does not work
on 7216 based systems. Also switch the USB sysclk to a slower clock
on suspend to save additional power in S2. The clock switch will only
save power on the 72165b0 and newer chips and is a nop on older chips.

Signed-off-by: Al Cooper <alcooperx@gmail.com>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
Changes in v2:

- properly subject with 'phy: '

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
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
