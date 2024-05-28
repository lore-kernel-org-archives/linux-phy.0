Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11EF6C25B78
	for <linux-phy@archiver.kernel.org>; Tue, 28 May 2024 10:20:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vb28x5t20PlxPUxZgDPUxvGWuylJ9BqUXrxvQtAVSv8=; b=f2B4wdsjPep3Q5
	iF+uqPNNgLe4h7o2rl5xpOKDrUWmx5xUQ3ufCW3ZAEuQNgyTBQcnnb3dD6rqkldtr+NvmU/SEysVp
	5FbWIIbl/Au9SlM7TAjALtRyc/a+yjKGyr8AXkcaonli9kN/JHojbyzZpcTZ9ThMWx6pON+XBpw41
	jEwaD17Pw5Xu8UL+Zx8MaWr1225PTi7+ffjn2yhko44lvP1NI2VmO6xUbFnhHwI0e+fALxDnD4+ez
	njc9Dk9kghKSDMIrHRfy0qO8EW0GM4tINsGmz6NuhbxT0mCYi7OBMiSFBaFvv4/+mS2XVH9mWQaPX
	fnm4EZfIJydv/KIV4eKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBtwe-00000000Bpx-3Fmy;
	Tue, 28 May 2024 10:20:40 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBtwb-00000000Bny-3f5d
	for linux-phy@lists.infradead.org;
	Tue, 28 May 2024 10:20:39 +0000
Received: by mail.gandi.net (Postfix) with ESMTPA id 7156F24000D;
	Tue, 28 May 2024 10:20:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1716891632;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GTwcLrJlkxUwGcPOIejW240WhGdaw9D79sS7IYE/LmE=;
	b=evJjvDLsjaOsXLEPIROckcqKHLfMvST0zu/ozGJRnQ200CWCKNLpgPEt6wTC18UUEV30Mg
	Ot0zq+pucWx4rB4J/ejdlfGgU+0pH90LXn4CgL6NmTzKnE00aK28RxPmikOMLG66GvVGWB
	yfMfAXI/nVD/TVhXTPXpk9ONwNSvyRIef0T6FgHwr2VHcf2GfjvkIijtstXL0Thq3jNiQ/
	ydCAZHkL2GN2Ur55tpFEmPCHMqV27jt8nXsG7tbeAzju4fAOx3IijPxlV+YcCiMACu+bLA
	jydYKNs7qkSs/QPbrrz15AXz6INa9AnVKFUpUTaWqwoJpKeZx7ArZVB2xjJ11w==
From: Bastien Curutchet <bastien.curutchet@bootlin.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Bin Liu <b-liu@ti.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	herve.codina@bootlin.com,
	christophercordahi@nanometrics.ca,
	Bastien Curutchet <bastien.curutchet@bootlin.com>
Subject: [PATCH 2/4] Revert "usb: musb: da8xx: Set phy in OTG mode by default"
Date: Tue, 28 May 2024 12:20:24 +0200
Message-ID: <20240528102026.40136-3-bastien.curutchet@bootlin.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240528102026.40136-1-bastien.curutchet@bootlin.com>
References: <20240528102026.40136-1-bastien.curutchet@bootlin.com>
MIME-Version: 1.0
X-GND-Sasl: bastien.curutchet@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_032038_183794_91CC7421 
X-CRM114-Status: GOOD (  10.18  )
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

This reverts commit 7ccf62941a38701ec9a42b4a0fa2868af456e96a.

da8xx_musb_set_mode() forces OTG mode regardless the selected mode even
if the property 'dr_mode = "host"' is present in device-tree. This
causes an unrecoverable error when VBUS supply is shut down : plugged
gadgets are no longer detected once VBUS supply is back.

Reverting it allows to have a selected mode coherent with device-tree's
description. IMO, this shouldn't cause regression because OTG mode is
the default selection when 'dr_mode' property is not set.

Signed-off-by: Bastien Curutchet <bastien.curutchet@bootlin.com>
---
 drivers/usb/musb/da8xx.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/usb/musb/da8xx.c b/drivers/usb/musb/da8xx.c
index 8abf3a567e30..1681f9fba3da 100644
--- a/drivers/usb/musb/da8xx.c
+++ b/drivers/usb/musb/da8xx.c
@@ -328,13 +328,6 @@ static int da8xx_musb_set_mode(struct musb *musb, u8 musb_mode)
 	struct da8xx_glue *glue = dev_get_drvdata(musb->controller->parent);
 	enum phy_mode phy_mode;
 
-	/*
-	 * The PHY has some issues when it is forced in device or host mode.
-	 * Unless the user request another mode, configure the PHY in OTG mode.
-	 */
-	if (!musb->is_initialized)
-		return phy_set_mode(glue->phy, PHY_MODE_USB_OTG);
-
 	switch (musb_mode) {
 	case MUSB_HOST:		/* Force VBUS valid, ID = 0 */
 		phy_mode = PHY_MODE_USB_HOST;
-- 
2.44.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
