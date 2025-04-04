Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1572EC36010
	for <linux-phy@archiver.kernel.org>; Fri,  4 Apr 2025 08:18:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version
	:Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zIwrUVMOwMkS2wM3F2I10wE9IWxmlT5Qwt0MR+4/1zU=; b=fYJhq41xk8bsmq
	IDF8ic1fh5rh/8WLKM4rh8cUlkglTRafqEjOn//wILzW44be1tELXWZ5wLIniYyIUnOBfrY1cBBK9
	kzsxhDtKPHovVooYChAOOYT4gJiih7gfs5Nf9vyOoZ8N16RwHpgplVCCR0GaD8kJiQHFCWdPkoYFJ
	7j4LUhPFekXP7hlr9LWM1f301kbDNEMp4G20iGVX4FYGelKzjtxrQ+jgQtj2z0QoUZ4DdszSkV9qK
	+pii4E0n/AB0puMkii5hsW8NKp3OJ9zdCTmao8RejDHlzHoWQJ4ykaWObDiwc4+B1fmwmblV5PNB/
	CoT27YrEDH8xnxTAdO4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0cG6-0000000B7RV-2j91;
	Fri, 04 Apr 2025 08:18:38 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0cG6-0000000B7RP-0b18
	for linux-phy@lists.infradead.org;
	Fri, 04 Apr 2025 08:18:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 2C9DE6113B;
	Fri,  4 Apr 2025 08:18:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E39AFC4CEDD;
	Fri,  4 Apr 2025 08:18:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743754717;
	bh=zKyWCqOQmeoLND24mpf/CYQJKMUyhqV3An79AoIIz5w=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=WOKJH+ViZJTy1m+7Trmr9VyxHl6IVP53xPYaz7/P7gz8MPYgKPR5OPEOpQdLoY6kQ
	 LPHE9ox2jPzhGK37YrvefRcZHmkOvr8YBtb96YYhWYZvSPOw5NQXf2ePTKkbthcYlL
	 3COAz5JHWs5YHVmJB6bMJT+OujIleVnghRzSztWdEpl2pXczRVPjlGG3fdA+m3RGAH
	 GD4XehcujTSotX21ZdFSJKsqQn3I2r7GCNSkGfRpC7JIaXqHn2danwJ4Ow+uWgNKBh
	 /5Sxg0bNgjak1Dn5aYK4NPzlkEa4WOxE/JPGJe9t7u5mixL1eM6DldY46U47nXxCoC
	 oHKzHIfuS97Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCFECC36010;
	Fri,  4 Apr 2025 08:18:35 +0000 (UTC)
From: Aaron Kling via B4 Relay <devnull+webgeek1234.gmail.com@kernel.org>
Date: Fri, 04 Apr 2025 03:17:29 -0500
Subject: [PATCH] phy: tegra: xusb: Default otg mode to peripheral
MIME-Version: 1.0
Message-Id: <20250404-xusb-peripheral-v1-1-99c184b9bf5f@gmail.com>
X-B4-Tracking: v=1; b=H4sIAJiV72cC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDEwMT3YrS4iTdAqCmgozUosQc3WQT0yRDM2PzNGPjJCWgroKi1LTMCrC
 J0bG1tQD44iNRYQAAAA==
X-Change-ID: 20250404-xusb-peripheral-c45b1637f33b
To: JC Kuo <jckuo@nvidia.com>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>
Cc: linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Aaron Kling <webgeek1234@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1743754715; l=1543;
 i=webgeek1234@gmail.com; s=20250217; h=from:subject:message-id;
 bh=02vuqpYVHM7yfAaBTJbe6AZ084fOjTN9Ney/idMUyM4=;
 b=Ifh17Js/Rv1KGxy41smqbJVdAi2qz971idOpYHlEA3F0lbHVFg4YbFSKOKSuHaYqYT+88Gfgv
 LSng9B9NDvwArVJDIx7gn8g5nSzee5su96037mRcIZOdi8SV3jsbh71
X-Developer-Key: i=webgeek1234@gmail.com; a=ed25519;
 pk=TQwd6q26txw7bkK7B8qtI/kcAohZc7bHHGSD7domdrU=
X-Endpoint-Received: by B4 Relay for webgeek1234@gmail.com/20250217 with
 auth_id=342
X-Original-From: Aaron Kling <webgeek1234@gmail.com>
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
Reply-To: webgeek1234@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Aaron Kling <webgeek1234@gmail.com>

Currently, if usb-role-switch is set and role-switch-default-mode is
not, a xusb port will be inoperable until that port is hotplugged,
because the driver defaults to role none. Instead of requiring all
devices to set the default mode, assume that the port is primarily
intended for use in device mode. This assumption already has precedence
in the synopsys dwc3 driver.

Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
---
 drivers/phy/tegra/xusb.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/tegra/xusb.c b/drivers/phy/tegra/xusb.c
index 79d4814d758d5e1f0e8200d61e131606adbb0e2d..c56e83216d0f566a09b67377172fb04c8406f4cf 100644
--- a/drivers/phy/tegra/xusb.c
+++ b/drivers/phy/tegra/xusb.c
@@ -731,13 +731,11 @@ static void tegra_xusb_parse_usb_role_default_mode(struct tegra_xusb_port *port)
 
 	if (mode == USB_DR_MODE_HOST)
 		role = USB_ROLE_HOST;
-	else if (mode == USB_DR_MODE_PERIPHERAL)
+	else
 		role = USB_ROLE_DEVICE;
 
-	if (role != USB_ROLE_NONE) {
-		usb_role_switch_set_role(port->usb_role_sw, role);
-		dev_dbg(&port->dev, "usb role default mode is %s", modes[mode]);
-	}
+	usb_role_switch_set_role(port->usb_role_sw, role);
+	dev_dbg(&port->dev, "usb role default mode is %s", modes[mode]);
 }
 
 static int tegra_xusb_usb2_port_parse_dt(struct tegra_xusb_usb2_port *usb2)

---
base-commit: 91e5bfe317d8f8471fbaa3e70cf66cae1314a516
change-id: 20250404-xusb-peripheral-c45b1637f33b

Best regards,
-- 
Aaron Kling <webgeek1234@gmail.com>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
