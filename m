Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88A16CDE001
	for <linux-phy@archiver.kernel.org>; Wed, 24 Jun 2026 08:48:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dzTTDA+JUcKXYAmq8LbdVhIhWZ6bW2K0wRFJTNq3HZk=; b=pNhUpsGme8qVEH
	iPmU+Yr3GlUfDAwdT2UwfU91mhS3n722PhX+3swWeTX9IAs0PZxMbDhGhxH9njH0dEZaXduee7hxw
	VhOyQORMP9oCG47wulI9xU8w5rosHg8AGZb44YagcB1P9NzmzN0IruIg3yoJoHLPgJ3UYdNlzOI97
	mj3xiZagqK42fEvZYjsnProrSmPZI/zuEuVlpAFQdGzyrzuNwSPKAENPK4V1M7V/5m2ud1h/1s4D6
	I+Heg9/G6aqVW3V4tlFgTLInbo5pRrqgC6PqjC807VE+G/gz1uB28NBerMOUb4xFk5Dl+iNE9FPZq
	SzyzHziMIMf65BFSAR0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcJHV-00000007QlW-0hoa;
	Wed, 24 Jun 2026 08:48:25 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcJHR-00000007Qk3-3uUl
	for linux-phy@lists.infradead.org;
	Wed, 24 Jun 2026 08:48:23 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-45f3cf907ceso339432f8f.2
        for <linux-phy@lists.infradead.org>; Wed, 24 Jun 2026 01:48:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782290900; x=1782895700; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SB90+YCUH0dV66aMdsIbPcNB77SkXK4CkRD/ocilleU=;
        b=aSaR2L5u2AcMCUqfwgVTeXXzB7LLTleVrl5QLJS2+dXkGVgdmkXCwvyxT8dux80ZU7
         nTWMQ/TvSUtFDLpZ8TyyT2AJqzWmgAwiRGGLwn9H99d+s4VqQgJi7Klp1iLuThYwgkR0
         sa6f6rpTgrtuEhhi6rCiwypaY9hjFAjrSFYNpuS31w8EMofovAoCYimDfAZxOqujKDUl
         IivyWhQoLBu/iXaST2kYz5cG9Dj+yOrWCuMdaRgTL2Lc3xDDb6W43YuPWT9jXOWFT79U
         vrqRi5mQbEtP1UrBYYsuq6rKYNw2vd9pgETHE10AhAnlw2wMSrYUfsA9Pi6FqrGxWeVW
         Luzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782290900; x=1782895700;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=SB90+YCUH0dV66aMdsIbPcNB77SkXK4CkRD/ocilleU=;
        b=ZxvP+ToyzvVAh4av5CxUyYUhsj9lC8btZCPmXL1YCJRGnKk/StYd4iFjILairiOnyB
         GIFlKZr1D696pAKihz1TODddY8VEqkSw5sS+qscZzfaMcgor4Nl0NDDNRai5I3wN+i+J
         HACnCPnStiOF771Aj7XsFiF+HZe7y47xAfytzjTCn0AYES68h5aGJrtwODXZGOZ1iVcA
         LV3QPlqVaO6m77rXqBowfRcN2Ci/FpPAun+7tMPW/YgbVJYT/RmlHKkAFDkuBhoRduYt
         chxVPRC8Z5xynMRttDiMjBUnXVzbx3mICUALPT2/2FWX7NUPHzKDo5+zYqogkqsoyYa2
         kqJA==
X-Forwarded-Encrypted: i=1; AHgh+RqfuB2i6umAjuJiY8sJqM9Q44pARgD3nfISqyPL9M5hT+hgZd7GYsuH9cuOmxZBnNGxmt3aA2l3JfI=@lists.infradead.org
X-Gm-Message-State: AOJu0YxOECo7ozEl9BGuel3OORGBUemWgJ9ZHKIWFRHaqOiq7bVbrUIp
	61IXSWNBtTUbeFsNe1ML+hqZqSWfwg3eGGSTIIRJ6N80cFidUfWkGGl6
X-Gm-Gg: AfdE7ckQPekAfkEMKusnn0BZKg0aFNKWP66DCpKW7IIHFmiS3RsZo6q5aLZYHdywUmX
	7RzcHzsVOhN5Zo+iOXeW2urJRfykRk9Ngud/6kotqQEm8iXs4B4lxvHyF5jA4tGynlYVtx7AjTI
	TMu+NvvLYqBVf8Rlb+iH9+3144vsvsA7afWdQSpj4W+NMcCuWGrnuOyvlw5ThM/Z9EXBmJ6/OFv
	2bJ4KnSB/xuskIP1q44xtnr0odYExAcnsAVkK7RmBe2WhMviVIsGfKX7RhlT6vw3DXjOygvJ2fQ
	i2JvFLlY/EnWhuYI3DI0d3+vkHUR/hIHTtSYtyq/1tVaZp+F8Ss09hUVHNo5U+yukZtzsAOZe3I
	8VtP9j8VoxMTABowC9TnJU8YMqmWj+d4m75zycRmFY62z7WRvGvuzzmopJbP3M5BwvkW/S99b1k
	N4mdFHO1PGHyGXexeU5euO8X+Y9iTKLr0qbNEI9p177a01tNItqP7pK0BrSrVJOJuLhD0PuFzPR
	2gnd8tnBKYr3cSW4g==
X-Received: by 2002:a05:6000:2404:b0:465:81cb:bb20 with SMTP id ffacd0b85a97d-46c04a33d34mr4263361f8f.9.1782290899881;
        Wed, 24 Jun 2026 01:48:19 -0700 (PDT)
Received: from localhost.localdomain (ip-89-176-136-191.bb.vodafone.cz. [89.176.136.191])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-46c221d9371sm5065849f8f.21.2026.06.24.01.48.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2026 01:48:19 -0700 (PDT)
From: Petr Wozniak <petr.wozniak@gmail.com>
To: Russell King <linux@armlinux.org.uk>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>
Cc: Jakub Kicinski <kuba@kernel.org>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Paolo Abeni <pabeni@redhat.com>,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Bjorn Mork <bjorn@mork.no>,
	Aleksander Bajkowski <olek2@wp.pl>,
	Marek Behun <kabel@kernel.org>,
	Petr Wozniak <petr.wozniak@gmail.com>
Subject: [PATCH net v4 2/2] net: phy: mdio-i2c: defer RollBall bridge probe to PHY discovery
Date: Wed, 24 Jun 2026 10:48:14 +0200
Message-ID: <20260624084814.20972-3-petr.wozniak@gmail.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260624084814.20972-1-petr.wozniak@gmail.com>
References: <20260624084814.20972-1-petr.wozniak@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260624_014822_019215_770076C4 
X-CRM114-Status: GOOD (  19.05  )
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

commit 8fe125892f40 ("net: phy: sfp: probe for RollBall I2C-to-MDIO
bridge in mdio-i2c") introduced a regression: the RollBall I2C-to-MDIO
bridge is not yet ready to respond to CMD_READ/CMD_DONE cycles when
sfp_sm_add_mdio_bus() runs in SFP_S_INIT.  The 200 ms probe times out,
i2c_mii_probe_rollball() returns -ENODEV, and sfp_sm_add_mdio_bus()
sets mdio_protocol = MDIO_I2C_NONE.  By the time sfp_sm_probe_for_phy()
runs (up to ~17 s later on affected hardware), the bridge is fully
initialized but PHY probing is skipped because the protocol has already
been changed to NONE.

This affects both modules inserted before boot and hotplugged modules on
hardware where bridge initialization exceeds the 200 ms probe window
(confirmed: FLYPRO SFP-10GT-CS-30M with Aquantia AQR113C, hotplugged).

Move the probe from i2c_mii_init_rollball(), called at bus-creation time,
to sfp_sm_probe_for_phy() in sfp.c, where it runs after the SFP state
machine module initialization delays.  Export the probe function as
mdio_i2c_probe_rollball() so sfp.c can call it.

For RTL8261BE-based modules the probe correctly returns -ENODEV at PHY
discovery time, causing sfp_sm_probe_for_phy() to destroy the MDIO bus
and set MDIO_I2C_NONE, eliminating the 5+ minute PHY probe retry loop.

For genuine RollBall modules (e.g. FLYPRO SFP-10GT-CS-30M with Aquantia
AQR113C) the probe now runs after initialization is complete and
correctly returns 0, so PHY detection proceeds normally.

Reported-by: Aleksander Bajkowski <olek2@wp.pl>
Fixes: 8fe125892f40 ("net: phy: sfp: probe for RollBall I2C-to-MDIO bridge in mdio-i2c")
Signed-off-by: Petr Wozniak <petr.wozniak@gmail.com>
---
 drivers/net/mdio/mdio-i2c.c   | 15 +++++++++------
 drivers/net/phy/sfp.c         | 22 ++++++++++++++--------
 include/linux/mdio/mdio-i2c.h |  1 +
 3 files changed, 24 insertions(+), 14 deletions(-)

diff --git a/drivers/net/mdio/mdio-i2c.c b/drivers/net/mdio/mdio-i2c.c
index b88f63234b4e..2a3a418c1369 100644
--- a/drivers/net/mdio/mdio-i2c.c
+++ b/drivers/net/mdio/mdio-i2c.c
@@ -419,7 +419,7 @@ static int i2c_mii_write_rollball(struct mii_bus *bus, int phy_id, int devad,
 	return 0;
 }
 
-static int i2c_mii_probe_rollball(struct i2c_adapter *i2c)
+int mdio_i2c_probe_rollball(struct i2c_adapter *i2c)
 {
 	u8 data_buf[] = { ROLLBALL_DATA_ADDR, 0x01, 0x00, 0x00 };
 	u8 cmd_buf[]  = { ROLLBALL_CMD_ADDR, ROLLBALL_CMD_READ };
@@ -462,9 +462,13 @@ static int i2c_mii_probe_rollball(struct i2c_adapter *i2c)
 
 	return -ENODEV;
 }
+EXPORT_SYMBOL_GPL(mdio_i2c_probe_rollball);
 
 static int i2c_mii_init_rollball(struct i2c_adapter *i2c)
 {
+	/* Send the RollBall unlock password; bridge presence is verified
+	 * later, in sfp_sm_probe_for_phy(), after module initialization.
+	 */
 	struct i2c_msg msg;
 	u8 pw[5];
 	int ret;
@@ -486,7 +490,7 @@ static int i2c_mii_init_rollball(struct i2c_adapter *i2c)
 	if (ret != 1)
 		return -EIO;
 
-	return i2c_mii_probe_rollball(i2c);
+	return 0;
 }
 
 static bool mdio_i2c_check_functionality(struct i2c_adapter *i2c,
@@ -531,10 +535,9 @@ struct mii_bus *mdio_i2c_alloc(struct device *parent, struct i2c_adapter *i2c,
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
index c4d274ab651e..01b941a38eed 100644
--- a/drivers/net/phy/sfp.c
+++ b/drivers/net/phy/sfp.c
@@ -2174,17 +2174,10 @@ static void sfp_sm_fault(struct sfp *sfp, unsigned int next_state, bool warn)
 
 static int sfp_sm_add_mdio_bus(struct sfp *sfp)
 {
-	int ret;
-
 	if (sfp->mdio_protocol == MDIO_I2C_NONE)
 		return 0;
 
-	ret = sfp_i2c_mdiobus_create(sfp);
-	if (ret == -ENODEV) {
-		sfp->mdio_protocol = MDIO_I2C_NONE;
-		return 0;
-	}
-	return ret;
+	return sfp_i2c_mdiobus_create(sfp);
 }
 
 /* Probe a SFP for a PHY device if the module supports copper - the PHY
@@ -2215,6 +2208,19 @@ static int sfp_sm_probe_for_phy(struct sfp *sfp)
 		break;
 
 	case MDIO_I2C_ROLLBALL:
+		/* Probe here, after module initialization delays, so that
+		 * genuine RollBall bridges have had time to start up.
+		 * Modules without a bridge (e.g. RTL8261BE) return -ENODEV.
+		 */
+		err = mdio_i2c_probe_rollball(sfp->i2c);
+		if (err == -ENODEV) {
+			sfp_i2c_mdiobus_destroy(sfp);
+			sfp->mdio_protocol = MDIO_I2C_NONE;
+			err = 0;
+			break;
+		}
+		if (err)
+			break;
 		err = sfp_sm_probe_phy(sfp, SFP_PHY_ADDR_ROLLBALL, true);
 		break;
 	}
diff --git a/include/linux/mdio/mdio-i2c.h b/include/linux/mdio/mdio-i2c.h
index 65b550a6fc32..5cf14f45c94b 100644
--- a/include/linux/mdio/mdio-i2c.h
+++ b/include/linux/mdio/mdio-i2c.h
@@ -20,5 +20,6 @@ enum mdio_i2c_proto {
 
 struct mii_bus *mdio_i2c_alloc(struct device *parent, struct i2c_adapter *i2c,
 			       enum mdio_i2c_proto protocol);
+int mdio_i2c_probe_rollball(struct i2c_adapter *i2c);
 
 #endif
-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
