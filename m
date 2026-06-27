Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37740C43327
	for <linux-phy@archiver.kernel.org>; Sat, 27 Jun 2026 17:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pYl/ONdZugesRUJSHIFutOFvnmP8DX4ncPx8IGcXVvg=; b=JSEOI/NqRafcJm
	mPw9V78CqPiUvFEMQX5tLu+aiHmitxjW21PBHfAeuuBqShQ4U2aQ8TbFrDkgMXAduHLixR+PDANqe
	Zs5eB5bfMk8WkORpAVSLhxsm+nsmfuwoPcwqBfr66KqV4ETBaNdRaNo0Rbw/1sjYyCiyH0gwDpgii
	I8lwviiG6dzAPtDb5S11WVs5i62dpF/Kzh/XwmHib/31unNnfzI1h+Z7m++wThNPZ/yo7qFtkjZfS
	pgIGumSs1pb+QzBU3QJn/jYPhfWbDshS5ZmlzaOmeoQtvReOFxoQwZyZSJtdOV+CLOXsr0ygArgFq
	r7OGPkYI3XHJ6ZOIjE6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdWtg-0000000CfYP-3t3G;
	Sat, 27 Jun 2026 17:32:52 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdWtd-0000000CfWc-3DZR
	for linux-phy@lists.infradead.org;
	Sat, 27 Jun 2026 17:32:51 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-4624a44e152so1730176f8f.2
        for <linux-phy@lists.infradead.org>; Sat, 27 Jun 2026 10:32:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782581568; x=1783186368; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r1aN455wbY+gBMKG0va4b7E6TK1scGzAIW5By15W7kI=;
        b=oh7G94hfloFG9b/wCcgagOjT0qKRAyXqsU23GqCXNyW0bLrgGJ4qdftJ+o9SRTP9MH
         n0o/pFGGIUEaeF14+fqyzyMs7+ldKwAdov2EONIs/AEth7saEQIIxhOQOzNE7w4Pif6I
         bfKRgCEIrr5CACdXdsucA/YA0vrZW90M76CqZU/U329K84v3zXKAVJE6LOqSE6YwuPuQ
         zgjnbLjgtDps34GitGbTEJxVUxfUmFWiRsutEXowSSWyMSdzkOB9Eef3DtL6jaEdRcbR
         mU5GyTDJWGqM4T1rSxRG9dWU/7Q7nPAeIbyOErX469nggBmQkCdSAZPnZP9zo4EYoXjt
         BmDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782581568; x=1783186368;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=r1aN455wbY+gBMKG0va4b7E6TK1scGzAIW5By15W7kI=;
        b=YzNDZlCnVIPe4E949J64S0nOdpaBF0fFf8kiOG2ycHTMgX0c136d9TB9xF4BjARp7u
         cLa8T5ztRMbsMNgU2QnCgGD7HRPtr1JUworo22YezZLdCb5lXqxW0HjtjVCegX5cw7y7
         5/5Zkjr9mmhkCs3KIFdruDHFFaTo+a6eB9kJLc3yTiZuRR7bEW761nXjq/2T2WhFqXxi
         xRol19qELJMkb3/epALfiw7RpIw9BuR/lbU9WgSO7MYI7nnaBvhEvQfrDpWQDt+al1TY
         jA9MrlR3LESYZQWNqz1294n4MEsrJveNw/z4cm9AFSeOTBczytZo/KGG4Co1scz+0Hm/
         YzfA==
X-Forwarded-Encrypted: i=1; AFNElJ86fdq/hs75UlFnjXMEINVGkRkQBg5mrN769X7ABibV0TB2Y6q6KQHqmTJjhGbd85GwCzDDdPXglSE=@lists.infradead.org
X-Gm-Message-State: AOJu0YxApSOCKVIseCjcxuqzWIHeOlKyYmi/BD42YeIqKbyvSfUvuMYy
	xsreRtkTBewi5wrpgfTDXnDpFdTV3gdqcVG6kFsGx3emFL/mkC1Oe72/
X-Gm-Gg: AfdE7cm1D55IG2FKmNRDIZoF4HDK6Vv+qFiTJCXZWhBaDBPEFCOWYMu8/QDJbKOBy7w
	mD7srTZsrI4MzKDvanu9J78vXxBgF4hPhvEFicCUocLEGyr5oTK32BIkVjngocnN7E/TwUTfV2Q
	ExkEixG3kAj5wfhxB5OG/y91vdLiii0fm52c/YIu7W3a+NmFUq2lzlG3qM9AE0aT1nmH9m7869o
	HczA4JF7l3b+hg0zlh8SebfngYTdKuHp5qsblkqMXdIddHG31KO4+lHyBJh02wD80JsSqFeDAqs
	KhPuhSRv4sYJMsYpzU9lkQhCe7JLqcetro52xM1zFJ/tfbO4sWwLD5tQuc+EujTA5a9t5yrF4zG
	cddCRkPbjWm/5Y+tOQ10f2ml63H0GXTenV7seEMFo+dp2LLc8Rm8rPre1fPJl5gBICrM3OWk0hO
	ZYVYJQFyr3iUHezp/UYP/7bs+ORzwFf9Kr9VJtxlztJKzft5BleOw5WYxkkUtMVJphBQ6TynL4Y
	GpCnQ8=
X-Received: by 2002:a05:600c:b96:b0:492:6447:7a7f with SMTP id 5b1f17b1804b1-4926686b3f3mr167318845e9.6.1782581567642;
        Sat, 27 Jun 2026 10:32:47 -0700 (PDT)
Received: from localhost.localdomain (ip-89-176-136-191.bb.vodafone.cz. [89.176.136.191])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4932f100e4asm64505955e9.1.2026.06.27.10.32.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jun 2026 10:32:47 -0700 (PDT)
From: Petr Wozniak <petr.wozniak@gmail.com>
To: linux@armlinux.org.uk,
	andrew@lunn.ch,
	hkallweit1@gmail.com
Cc: kuba@kernel.org,
	davem@davemloft.net,
	edumazet@google.com,
	pabeni@redhat.com,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	maxime.chevallier@bootlin.com,
	bjorn@mork.no,
	olek2@wp.pl,
	kabel@kernel.org,
	Petr Wozniak <petr.wozniak@gmail.com>
Subject: [PATCH net v5 2/2] Revert "net: phy: sfp: probe for RollBall I2C-to-MDIO bridge in mdio-i2c"
Date: Sat, 27 Jun 2026 19:32:42 +0200
Message-ID: <23e3931915c3ed2a14cec95f1490e43d30b225e8.1782581445.git.petr.wozniak@gmail.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <cover.1782581445.git.petr.wozniak@gmail.com>
References: <cover.1782581445.git.petr.wozniak@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260627_103249_839618_6CD3A61C 
X-CRM114-Status: GOOD (  18.23  )
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

This reverts commit 8fe125892f40 ("net: phy: sfp: probe for RollBall
I2C-to-MDIO bridge in mdio-i2c").

That commit added a RollBall bridge probe at MDIO bus creation time, in
i2c_mii_init_rollball(), to avoid a multi-minute PHY probe retry loop on
modules without a bridge (e.g. RTL8261BE). The probe runs in SFP_S_INIT,
before genuine RollBall modules have finished their firmware/bridge
initialization, so the bridge does not yet answer CMD_READ/CMD_DONE. The
probe times out, mdio_protocol is set to MDIO_I2C_NONE, and PHY detection
is then skipped for genuine RollBall modules that worked before the commit.

This was confirmed on hardware by Maxime Chevallier and Aleksander
Bajkowski: their RollBall modules no longer detect a PHY, and work again
on v7.0 (before the bridge probing was introduced). The Sashiko static
review flagged the same path.

Deferring the probe to PHY discovery time does not fix it either: at that
point a slow module may still be initializing, so the probe still returns
-ENODEV. A proper fix needs per-module init timing (a longer module_t_wait
or a per-module quirk, per SFF-8472 the host must also wait at least 300 ms
after insertion), which requires genuine RollBall hardware to develop and
validate. Revert to restore the previous, working behaviour in the meantime.

The RTL8261BE retry-loop latency that the reverted commit addressed is
handled in our downstream tree, so reverting upstream is safe on our side.

Fixes: 8fe125892f40 ("net: phy: sfp: probe for RollBall I2C-to-MDIO bridge in mdio-i2c")
Reported-by: Aleksander Bajkowski <olek2@wp.pl>
Suggested-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
Link: https://lore.kernel.org/netdev/20260624084814.20972-1-petr.wozniak@gmail.com/
Signed-off-by: Petr Wozniak <petr.wozniak@gmail.com>
---
 drivers/net/mdio/mdio-i2c.c | 59 +++++--------------------------------
 drivers/net/phy/sfp.c       | 14 ++-------
 2 files changed, 10 insertions(+), 63 deletions(-)

diff --git a/drivers/net/mdio/mdio-i2c.c b/drivers/net/mdio/mdio-i2c.c
index b88f63234b4e..ed20352a589a 100644
--- a/drivers/net/mdio/mdio-i2c.c
+++ b/drivers/net/mdio/mdio-i2c.c
@@ -419,50 +419,6 @@ static int i2c_mii_write_rollball(struct mii_bus *bus, int phy_id, int devad,
 	return 0;
 }
 
-static int i2c_mii_probe_rollball(struct i2c_adapter *i2c)
-{
-	u8 data_buf[] = { ROLLBALL_DATA_ADDR, 0x01, 0x00, 0x00 };
-	u8 cmd_buf[]  = { ROLLBALL_CMD_ADDR, ROLLBALL_CMD_READ };
-	u8 cmd_addr   = ROLLBALL_CMD_ADDR;
-	struct i2c_msg msgs[2];
-	u8 result;
-	int ret;
-	int i;
-
-	msgs[0].addr  = ROLLBALL_PHY_I2C_ADDR;
-	msgs[0].flags = 0;
-	msgs[0].len   = sizeof(data_buf);
-	msgs[0].buf   = data_buf;
-	msgs[1].addr  = ROLLBALL_PHY_I2C_ADDR;
-	msgs[1].flags = 0;
-	msgs[1].len   = sizeof(cmd_buf);
-	msgs[1].buf   = cmd_buf;
-
-	ret = i2c_transfer_rollball(i2c, msgs, ARRAY_SIZE(msgs));
-	if (ret < 0)
-		return -ENODEV;
-
-	msgs[0].addr  = ROLLBALL_PHY_I2C_ADDR;
-	msgs[0].flags = 0;
-	msgs[0].len   = 1;
-	msgs[0].buf   = &cmd_addr;
-	msgs[1].addr  = ROLLBALL_PHY_I2C_ADDR;
-	msgs[1].flags = I2C_M_RD;
-	msgs[1].len   = 1;
-	msgs[1].buf   = &result;
-
-	for (i = 0; i < 10; i++) {
-		msleep(20);
-		ret = i2c_transfer_rollball(i2c, msgs, ARRAY_SIZE(msgs));
-		if (ret < 0)
-			return -ENODEV;
-		if (result == ROLLBALL_CMD_DONE)
-			return 0;
-	}
-
-	return -ENODEV;
-}
-
 static int i2c_mii_init_rollball(struct i2c_adapter *i2c)
 {
 	struct i2c_msg msg;
@@ -482,11 +438,11 @@ static int i2c_mii_init_rollball(struct i2c_adapter *i2c)
 
 	ret = i2c_transfer(i2c, &msg, 1);
 	if (ret < 0)
-		return -ENODEV;
-	if (ret != 1)
+		return ret;
+	else if (ret != 1)
 		return -EIO;
-
-	return i2c_mii_probe_rollball(i2c);
+	else
+		return 0;
 }
 
 static bool mdio_i2c_check_functionality(struct i2c_adapter *i2c,
@@ -531,10 +487,9 @@ struct mii_bus *mdio_i2c_alloc(struct device *parent, struct i2c_adapter *i2c,
 	case MDIO_I2C_ROLLBALL:
 		ret = i2c_mii_init_rollball(i2c);
 		if (ret < 0) {
-			if (ret != -ENODEV)
-				dev_err(parent,
-					"Cannot initialize RollBall MDIO I2C protocol: %d\n",
-					ret);
+			dev_err(parent,
+				"Cannot initialize RollBall MDIO I2C protocol: %d\n",
+				ret);
 			mdiobus_free(mii);
 			return ERR_PTR(ret);
 		}
diff --git a/drivers/net/phy/sfp.c b/drivers/net/phy/sfp.c
index c4d274ab651e..f520206734da 100644
--- a/drivers/net/phy/sfp.c
+++ b/drivers/net/phy/sfp.c
@@ -597,7 +597,6 @@ static const struct sfp_quirk sfp_quirks[] = {
 	// OEM SFP-GE-T is a 1000Base-T module with broken TX_FAULT indicator
 	SFP_QUIRK_F("OEM", "SFP-GE-T", sfp_fixup_ignore_tx_fault),
 
-	SFP_QUIRK_F("OEM", "SFP-10G-T-I", sfp_fixup_rollball),
 	SFP_QUIRK_F("OEM", "SFP-10G-T", sfp_fixup_rollball_cc),
 	SFP_QUIRK_S("OEM", "SFP-2.5G-T", sfp_quirk_oem_2_5g),
 	SFP_QUIRK_S("OEM", "SFP-2.5G-BX10-D", sfp_quirk_2500basex),
@@ -2174,17 +2173,10 @@ static void sfp_sm_fault(struct sfp *sfp, unsigned int next_state, bool warn)
 
 static int sfp_sm_add_mdio_bus(struct sfp *sfp)
 {
-	int ret;
-
-	if (sfp->mdio_protocol == MDIO_I2C_NONE)
-		return 0;
+	if (sfp->mdio_protocol != MDIO_I2C_NONE)
+		return sfp_i2c_mdiobus_create(sfp);
 
-	ret = sfp_i2c_mdiobus_create(sfp);
-	if (ret == -ENODEV) {
-		sfp->mdio_protocol = MDIO_I2C_NONE;
-		return 0;
-	}
-	return ret;
+	return 0;
 }
 
 /* Probe a SFP for a PHY device if the module supports copper - the PHY
-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
