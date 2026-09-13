Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8280FC88E65
	for <linux-phy@archiver.kernel.org>; Sun, 13 Sep 2026 19:00:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9+o8kcMB/m5HETRgnwjyjVj/ku10xporQGmSGAqL4jk=; b=KR/xUrX6RmTiaz
	2bHcgkOQJJY3tmxmkHjA2MHbjcab6asSek+CFeoVJa8nMw1u8Kdub3YRXTOLUapUkkgqVV+J3nM3M
	rsePwQrxnsdN2yKK6Yuz43qLYRVHWvlUdqAw/ZUkZ0iGUvgNF1BHjDsZmLsMsUkd6rf3Efv4/EBTc
	GZDcyrfAIsYu6+fK8bHVuF6fdWel2Z0uQ7EC8peucsyoKCfbO+LqB0t+Ph5M5tIm7JhG87NcaqX+G
	zCKMpm8oUZkv0isFqh0lueyP0eZwe2in9mgA5wl191ieOrRV4ByTvdJP+JqH2Y0Eo0WVsUAMC4eGQ
	wJtSyGgL3xdqJpBhaKXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5pRM-00000001xIT-0v7E;
	Sun, 13 Sep 2026 19:00:36 +0000
Received: from mail-pj2-x08.google.com ([2607:f8b0:4864:39::8])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5pRJ-00000001xFS-0y7b
	for linux-phy@lists.infradead.org;
	Sun, 13 Sep 2026 19:00:34 +0000
Received: by mail-pj2-x08.google.com with SMTP id d9443c01a7336-2db33361b2fso18527995ad.1
        for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 12:00:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789326032; x=1789930832; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=NB3JxtKcgkk3OGR3H9wZrN9ovALIkubofDJS6nyEOU4=;
        b=SYsqkow/8ugxcdApve9tv189XCJCU1xjPXYT3Ca/9+q14ZAAxlLoXx0Su7WUBZ6LM0
         tsdWXJ+8rKNgnXeDvGUV5i2gl5xVjWMGvhomTe0yzbpzvofLrOTPh3xjq0a3hKdXHLKL
         lNKjZSr3yRFv/cCHK2h5VbAiLCW7qpYNprSJZOwX9p1X4/Fc3ifu5YBX74kBoVyLPYUk
         1yBaQ6Fe/PvcMlTeIOjYiiczZnfgZ6mgxVfmYeC0PjdR30UFy+AJyQC3ek92y41L+v7V
         92p8Cxt56eJQnqpiL8wpDPszcLMLWu2B0lna66q/cY1MzP5x4qcSnR0AWcrRglSx7id4
         yDNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789326032; x=1789930832;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=NB3JxtKcgkk3OGR3H9wZrN9ovALIkubofDJS6nyEOU4=;
        b=IvzVbDsx+OOK2R10yMsVSGZdFLTMagoI8MMFSBD0+5b7yFgoVAC60aeQL1d/RYZ0wT
         QhgFzkRx6Ik8JqfPTEqTWZCpfJxiC/At5Ug5/NwEVLh5rjALW+FQVNcQF3y/gukEVB5y
         7HKMu3QlBoOLBpD5Htyn8vjMkoo9h2oAMrak8YfMP0fYjZKJku8Ii0GPMf8k1QpiUn9V
         wgTRiofqXwWGX55OLPfMsHfx7+csMsi3L+rAX/DxUkUaOX+dH2KkB2St5Xh7Gm3H2hXI
         GPk9f8OwhmMI2z/4SlJPQg/OxfgAJcE48b0ix92uLSsZNa0GWwAp5G5bNfGZ/Noy6kHF
         AZCw==
X-Forwarded-Encrypted: i=1; AKwUvBzi26mvkmqre+nJHffCCjG+TqGk4wTuRicTF45s5wNVusGO2PcNU1Xj3JGQoBpRyxG9Hqpw8CLrbVU=@lists.infradead.org
X-Gm-Message-State: AFuF++kaa67LNo9mtmdLXnkbYOD9RKA2N6z6lFNF7O4LvFga/sF/hdQ+
	jMfKrOXjb9ECL/K2wQ6vIWiBl/A7EqmS1Hy+SAmG0BkxzL3PAlhrTRMI
X-Gm-Gg: AYBFou3IURTWEvbyYKqKuCOw78yaY+ayJqNuMeXVw1qjd6q1W3v+axw2r5UDw0Vie5Q
	LfWKe2PIovVI4WTP1UvphCOKGCrl/o28taLFhgoRnVlg0BjMs+W7QyksbW0/xT+pzyZ/xw1pMK+
	AFSFflz7wrJ+/VEyFja/x1OqRSnAygEVASzJEOSA71IRA+tylm1DMnNMMgQA1at1FDDTIeDE1+P
	VbxPHNWtOx8m2DFqyE4dNGF2hawffIszAVyvg9L7Qt1bUz25XnH+UUNsbaJYVEgQ+OKamJiU0Lr
	6IN1PGqGXwGCthP/AsJJEBP7PYdF8TAFXIiqrjOA4iYaG7t7lzJcbdkX2ZP85TqcXoLqm7uGc5v
	2zsal6XYx7z/qoiCEUKSaV7QDxuq8UoWCpVC6LcNEDgvKYn3KJ+xBgVCQqlwXVUFZMAVgdVS1ko
	0TXKATUh7fcvLnvmSXHzaBHnqVy6oaIEbqP7Fwb9+Fp5Of39sU3wtxO4nN9Sw6jn3kB+Iszg==
X-Received: by 2002:a17:902:f60d:b0:2db:5c0a:f184 with SMTP id d9443c01a7336-2dd2a34fd91mr276627985ad.17.1789326032455;
        Sun, 13 Sep 2026 12:00:32 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2dd2cca6b7bsm36808655ad.3.2026.09.13.12.00.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Sep 2026 12:00:31 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Romain Gantois <romain.gantois@bootlin.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Coia Prant <coiaprant@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Russell King <linux@armlinux.org.uk>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	David Heidelberg <david@ixit.cz>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-renesas-soc@vger.kernel.org,
	Jiawen Wu <jiawenwu@trustnetic.com>
Subject: [PATCH net-next v5 06/11] net: pcs: xpcs: add ANRESTART support for SGMII link recovery
Date: Mon, 14 Sep 2026 02:58:41 +0800
Message-ID: <20260913185849.907479-7-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260913185849.907479-1-coiaprant@gmail.com>
References: <20260913185849.907479-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_120033_280413_D7204167 
X-CRM114-Status: GOOD (  18.79  )
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

On some hardware using the DesignWare XPCS IP (e.g., RK3568 MAC side
SGMII), the PCS does not automatically restart auto-negotiation when the
link goes down and comes back up. Without an explicit ANRESTART, the link
stays down forever.

Add BMCR_ANRESTART in two places:
1. In xpcs_config_aneg_c37_sgmii(), when starting AN, set ANRESTART
   alongside ANENABLE to initiate a fresh negotiation.
2. In xpcs_get_state_c37_sgmii(), when link is down and AN completion is
   detected, clear the interrupt and trigger ANRESTART to restart the
   negotiation process. Propagate the return value of the restart so
   errors are not silently ignored.

Update the comment in xpcs_config_aneg_c37_sgmii() to note that although
the DesignWare databook says AN restart is not needed for MAC side SGMII,
some implementations (e.g. Rockchip RK3568) require it to recover the
link after a disconnect.

This is not a fix for an existing mainline platform: the affected
platform (RK3568 XPCS) is introduced later in the same series.

Tested-by: Jiawen Wu <jiawenwu@trustnetic.com>
Tested-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 drivers/net/pcs/pcs-xpcs.c | 35 +++++++++++++++++++++++++++++------
 1 file changed, 29 insertions(+), 6 deletions(-)

diff --git a/drivers/net/pcs/pcs-xpcs.c b/drivers/net/pcs/pcs-xpcs.c
index 0337e2bcc0125..8c3875b6985b9 100644
--- a/drivers/net/pcs/pcs-xpcs.c
+++ b/drivers/net/pcs/pcs-xpcs.c
@@ -761,7 +761,9 @@ static int xpcs_config_aneg_c37_sgmii(struct dw_xpcs *xpcs,
 	 *    DW xPCS used with DW EQoS MAC is always MAC side SGMII.
 	 * 4) VR_MII_DIG_CTRL1 Bit(9) [MAC_AUTO_SW] = 1b (Automatic
 	 *    speed/duplex mode change by HW after SGMII AN complete)
-	 * 5) VR_MII_MMD_CTRL Bit(12) [AN_ENABLE] = 1b (Enable SGMII AN)
+	 * 5) VR_MII_AN_INTR_STS = 0x0 (Clear CL37 AN complete status)
+	 * 6) VR_MII_MMD_CTRL Bit(12) [AN_ENABLE] = 1b (Enable SGMII AN)
+	 *    VR_MII_MMD_CTRL Bit(9) [AN_RESTART] = 1b (Restart SGMII AN)
 	 *
 	 * Note that VR_MII_MMD_CTRL is MII_BMCR.
 	 *
@@ -769,7 +771,14 @@ static int xpcs_config_aneg_c37_sgmii(struct dw_xpcs *xpcs,
 	 *	 SR_MII_AN_ADV. MAC side SGMII receives AN Tx Config from
 	 *	 PHY about the link state change after C28 AN is completed
 	 *	 between PHY and Link Partner. There is also no need to
-	 *	 trigger AN restart for MAC-side SGMII.
+	 *	 trigger AN restart for MAC-side SGMII on most devices.
+	 *
+	 * Note: While the DesignWare databook states that AN restart is
+	 *	 not needed for MAC side SGMII, some implementations (e.g.
+	 *	 Rockchip RK3568) exhibit a timing quirk when integrated with
+	 *	 phylink and do not restart AN automatically when the link
+	 *	 comes back up. An explicit AN restart is required on those
+	 *	 parts to recover the link after a disconnect.
 	 */
 	mdio_ctrl = xpcs_read(xpcs, MDIO_MMD_VEND2, MII_BMCR);
 	if (mdio_ctrl < 0)
@@ -816,9 +825,14 @@ static int xpcs_config_aneg_c37_sgmii(struct dw_xpcs *xpcs,
 	if (ret < 0)
 		return ret;
 
+	/* Clear CL37 AN complete status */
+	ret = xpcs_write(xpcs, MDIO_MMD_VEND2, DW_VR_MII_AN_INTR_STS, 0);
+	if (ret < 0)
+		return ret;
+
 	if (neg_mode == PHYLINK_PCS_NEG_INBAND_ENABLED)
 		ret = xpcs_write(xpcs, MDIO_MMD_VEND2, MII_BMCR,
-				 mdio_ctrl | BMCR_ANENABLE);
+				 mdio_ctrl | BMCR_ANENABLE | BMCR_ANRESTART);
 
 	return ret;
 }
@@ -1093,9 +1107,18 @@ static int xpcs_get_state_c37_sgmii(struct dw_xpcs *xpcs,
 		return 0;
 	}
 
-	/* Clear AN complete status or interrupt */
-	if (state->an_complete)
-		xpcs_write(xpcs, MDIO_MMD_VEND2, DW_VR_MII_AN_INTR_STS, 0);
+	if (state->an_complete) {
+		/* Clear AN complete status or interrupt */
+		ret = xpcs_write(xpcs, MDIO_MMD_VEND2, DW_VR_MII_AN_INTR_STS, 0);
+		if (ret < 0)
+			return ret;
+
+		/* Initiate the next round of AN */
+		ret = xpcs_modify(xpcs, MDIO_MMD_VEND2, MII_BMCR, BMCR_ANRESTART,
+				  BMCR_ANRESTART);
+		if (ret < 0)
+			return ret;
+	}
 
 	return 0;
 }
-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
