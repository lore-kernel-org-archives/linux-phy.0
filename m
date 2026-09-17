Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44FE3C88E72
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 20:48:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/oQpvm+CvnSeBaGbnMf9s9toYpNviDw0fJEDmeEumn4=; b=FSQ4BWkpjfYfNv
	zcZQVJHZcZQJfwgySB/p4N2+mC87ZH/ZUz8ztoNK2lSSVU6ynyLaLq10nq4F/5JMtwlUZSu2eUVY2
	m4Lt++1tZr//L+t1OU/SZrunpdG3Zo53y07xzwJn1JjM8vlCQhU3WuxyrYz63saEWWTLs/zVwGp/T
	7/QTizdHthxxUCU3uvaediA+htCjVyg9G4I5BHrAbTERRcd8ldEYFlxWAXQJGv+cJhxpr9pAwGvfi
	Aqr4L1uR8GWrX7CVOLxPgGdDXBuNaH7t4lfdJASXdyy0HFD3Q2GD98mFGfFvkeQ2CKuRBkgp7EABx
	NmtYYsXxjMCxMKtQ/Avg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7J1a-0000000CTBA-3t5r;
	Thu, 17 Sep 2026 20:48:06 +0000
Received: from mail-pj2-x07.google.com ([2607:f8b0:4864:39::7])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7J1U-0000000CT5B-2BJz
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 20:48:06 +0000
Received: by mail-pj2-x07.google.com with SMTP id 98e67ed59e1d1-398e10200a6so44220a91.1
        for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 13:48:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789678080; x=1790282880; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=s/eBjsMbUu4KmQPd6dfybXXRKRWzlAuXWPZqO5pNdlA=;
        b=NOUcx1jTo5AAVU0+kMLcfcCJ/UzuQa9G0J1PXfZQxoe3/4UUer2t2AZq+mFlus3unD
         NAf4axxVtP3i/pjcf1kjI39wsb9vJfPJP6+uFf0yNEX/0NZbpThbWBMhzYgmMPzxg/ix
         J4HshZF6orWtu6wBy6VqGEs038kLEsUy5UcvxoWH5YbWvt0kyLKgjf1WccePDEIItwF+
         WWeer3HbMRUNOq5wOJ4jnNh6UxM3CVKMWg+CJN+qQSc4lpKaqPbUHkEc9eIilhRp5MLx
         7EhEDHdpczH6ysyjLJfR9ZGKdOwelvq8wwVp5V5l6TyZEZqiRfP3Pf+mHzbLYOHd2rtu
         urCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789678080; x=1790282880;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=s/eBjsMbUu4KmQPd6dfybXXRKRWzlAuXWPZqO5pNdlA=;
        b=06LGvH4mS1WKY0MNUJwt8a/sT42na+uiIvE3WeMgDnc8dVy0LzRCccaiW0V1Fi91/+
         QAtYMAHz7Do+fhNWhMtEaTEbBc8M8MLlhEd134a1oGv3vioRhTvppHxIPXr8WfL9QWe/
         9K8B6diTXOfB1ljsaMkFt9E2IO2bKvGnLAYAor/4VUWtXw5Ww9RIk71UlxK/yZtgK7dN
         RNvMAn8CfWwmgspsPsTNf28QfAm2ZPhppQoSsTAjnu/5+OZm8UdSvLe5Hh7NI6d243WW
         ehCJSyeno6oZvnwNa2BTtfhe9W2zg3SMAwxUsX8RUwMzn002Mf1TWmapqJCQtHGoQr57
         LWng==
X-Forwarded-Encrypted: i=1; AKwUvBwsAIXryzWdF9zhulV7+jRBka0eNjsLSEcu5++dw508nrALlNSAkEJaMLJDvg9fqzm1AWyu64n90Sc=@lists.infradead.org
X-Gm-Message-State: AFuF++nKInN9iXLT4YIrjrdWBSPdy8Dp4nFy4AUkG2UABwoWej2Mcn81
	o4+XF2Av1xOiO6CGWWzInsxtzCvVEF/m2YEgvSPfkSXtEQcQxU2b0ASK
X-Gm-Gg: AYBFou2MZ35b6U4p/fapjAaorUweEMMe/KuJs5CTasCgt/Q12idQ3/l/8xh7WjiO7+V
	R3XJ4neZb4ZSnPKUUTz7DpUgliZZVnL5fJHY5fjx0zH+4Q2ssU24RzJ1IOMhAe0xwYL6l+xW/ss
	lbYQjZYw5P0uFgMwRP0DSm0cjuxS1CSdpKv3nF8/ML2aOZbnfPn0mtHPkT8YtzUwcrYjSxWfD9M
	1+Po2aTNYcMAjDtR6t38O7ZZmOQDp+c/Iu3gRkNzbW6L4EbyParrTq/2CTnX41ZoYr2kJXt4U/o
	NrCdz2/8vT/HOZAHnVOJQDyi/9/3YfnZMUG979ydFUfm2QoRzVWIxtNM0FahuVP7I072krb+nUK
	bMHL2dFU/kGsVduVk+qP+6o/VIWO+cjgwdoLyHcIQ8c8aJz5jF4089xN7kBW9PnELxcr7HiUOoG
	zsHlcI1u+KDIEnQUCuZtqDFAERGaft1ixojn53vLQkFUsgzLODhOUwYla15q8d4Ne5l2LyFBQ=
X-Received: by 2002:a17:90b:3147:b0:39d:eda6:8a0b with SMTP id 98e67ed59e1d1-39e54c9ccdemr697045a91.21.1789678079561;
        Thu, 17 Sep 2026 13:47:59 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39e50a4bc22sm1232196a91.17.2026.09.17.13.47.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2026 13:47:58 -0700 (PDT)
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
Subject: [PATCH net-next v7 06/11] net: pcs: xpcs: add ANRESTART support for SGMII link recovery
Date: Fri, 18 Sep 2026 04:46:17 +0800
Message-ID: <20260917204624.2427486-7-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260917204624.2427486-1-coiaprant@gmail.com>
References: <20260917204624.2427486-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_134800_588823_7DC8D516 
X-CRM114-Status: GOOD (  20.91  )
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

The restart cannot go through the .pcs_an_restart op: phylink only
calls it for 802.3z interfaces, and SGMII is not one. Changing hardware
state from pcs_get_state() is already done elsewhere in this driver
(xpcs_get_state_c73() calls xpcs_soft_reset() and xpcs_do_config()),
so the same pattern is used here.

The latch is cleared before issuing the restart, not after: clearing it
afterwards would discard a freshly latched ANCMPLT from the new
negotiation. If an MDIO access fails at this point, it indicates an
unrecoverable hardware condition until reset.

Also clear DW_VR_MII_AN_INTR_STS in xpcs_config_aneg_c37_sgmii() before
starting AN, matching what xpcs_config_aneg_c37_1000basex() already does.
On the non-inband path the function now returns the result of that write
instead of the DIG_CTRL1 modify.

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
