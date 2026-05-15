Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC800CD4F25
	for <linux-phy@archiver.kernel.org>; Fri, 15 May 2026 17:40:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cU7+t3h6g1kQXNRdAx2K+awCuXTe2MIG9lQwWoeefl4=; b=UIb8e+FFsmPNIk
	4eX5JL7c/S1PAErlM/rDmqcYb5g8lGmdRB+ZuK8KIvdtOf+JZlkYb/vU8mBfPU5yzV9EUCjO2XFWc
	ihOnZo96tAUybHgnOX4yXRO9y99m8pLjHDcaHvky4Nm9sFKwUPH/tlyeUY2SZbtcH6TFUPiKfVe7F
	YTPJwdHt8ixbrHUITILhYyBE1WoCOTUZCNmX6NiayLV7pKmNqSUvIL8kquFAhXrDC8LcWazuYhoqX
	kEZWwc6Srld3M+9Bi7iuBrSNPFQ8J7yqtWLjPPYA6WJeA5ig1B4feK8cJw3MHLiHPy6WRY/qFuwpt
	gDmsQQyEgX6+Td5drwtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNwWp-000000090tY-2jmo;
	Fri, 15 May 2026 17:40:51 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNwWm-000000090t9-3g3f
	for linux-phy@lists.infradead.org;
	Fri, 15 May 2026 17:40:50 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-4891d7164ddso390115e9.3
        for <linux-phy@lists.infradead.org>; Fri, 15 May 2026 10:40:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778866847; x=1779471647; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IAVHRa/Uf1SiF1TksKJAl/zTvj0QOoaVUWhWO9iNGk4=;
        b=XKbQAfgUu0AHdOxga+GUJ2o2aQODUSI/jfKJZ9QT7C3kayr/i29wW9PLEdlmDj9NR3
         KNZ9HezU3pASX2oFxEge6fSQZX8drW+KzWKR8SN+w6FHe/9KN2PsUG/XQnoxsKwoSRqO
         vJK6hFL2MMQMNgMciXVQe+iBkt86cSKisR44Q8J78uYZ/A7GpvoDAoxDe9KTp/oe/kim
         ckKXy8aZ4kn3mEEW5ydlCdeIdslbq2kPC5wHQuSjjf3aPgGmVRI7FQWrLiqqVvTVBBjm
         KE36/xFkeq6N+EDK1U8YaBrT/11iBOS7gc15Ycu03tNrGqikaUSvsnTxY3+SsYKDCGP0
         DOwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778866847; x=1779471647;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IAVHRa/Uf1SiF1TksKJAl/zTvj0QOoaVUWhWO9iNGk4=;
        b=C3VJNmn7MDW+w8Rh56xUjgykJ0+rnquL4vmeq1n9MCH5WgQymEnnkpbTeYGTOiaJPo
         BGqOxme9ZzyEAUHMAzWB3wQwDD4NtRiBSnWfB1PPrf6jBy/nooQ92d4XMvjSPMJ3V+gl
         4LdzSA+fs0aZl1ynq24PwiW31YCjRyjbpiBMrgNx6HaJHQaFdxE0o9gDBMQf3kSE0aHF
         H78H4Ih0i9ViqYA2eKirFSc4w7emwpuyMPr90j/4snYy3d5NgLx2d0ejb5Mmd7fpggfl
         frS70vC1tRlwiK7dMe7vBnGT0GDZEwRW6Ly6Ne+XYceT/Y6eRvQ8oZNH7Jd/5Y/N2ZTo
         Q/yg==
X-Forwarded-Encrypted: i=1; AFNElJ+8YwhR0cUbFBIq6qZEW/VY7KbPomm045OBOLAResqpu9LsmPRRgQt6pIRkRPYbC4T85ae+DI1b9TY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyh21lckPVhGGuXL9Cep8mqrW6A1Rcrmwo/1L0mYHOnNMEUvJfw
	qCUh16n9ZSItYPo4ZO1ayqDSeaRZQM6+79waBIp2eUnW8d5eirkJTtm+
X-Gm-Gg: Acq92OFDYeSlWMnJxLyRb7aSyKMkTXFHgXRT9DAc/PWKyGkXXn1ivH9uWS5qWmd/mUT
	9Ty1IEGqqG+C2uknPzS/tneoGBscTTuIxf5t/NVyn6oXkROhPK6N1cCapRkSAESwHLyhuDLEiv9
	EiAAYYGRd3OjXu1oim1ABgPWtm9uS0nlIN4WJ4BxGso5LVMJAkEJ9P9BiR4puWKWoNIpxOgbl6v
	DI1UBDJA1Anlw8pZkIOwypz0CeApNUA9Xin48Qm50tO/rksSY6f+KI7lNP4leDgDcSdR6qQFEbO
	nNlZuLDFn2uCYhl/wa9FXiJOxZWuWrJp7decpVMKNyg/NHcfwauPV/4U0rczuyZQ0lqjRfAjSUm
	81+FS44ChxN/VJB49LyB3gDlzpkKbbbJ+4I64kRSz8gwtbna+qcfZkxjMuHTI8uhUf6iFgfodG4
	5x5G3RSFVytjqNcggBEFuetJSQnBC4rvJLjiHMRJQbHy3NNulPQc9UKT4=
X-Received: by 2002:a05:600c:8b56:b0:48e:7f1c:8776 with SMTP id 5b1f17b1804b1-48fe6514c83mr77911265e9.25.1778866846764;
        Fri, 15 May 2026 10:40:46 -0700 (PDT)
Received: from localhost.localdomain ([87.236.194.191])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45da0a1aeafsm16094402f8f.23.2026.05.15.10.40.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 May 2026 10:40:46 -0700 (PDT)
From: Petr Wozniak <petr.wozniak@gmail.com>
To: netdev@vger.kernel.org
Cc: bjorn@mork.no,
	andrew@lunn.ch,
	linux-phy@lists.infradead.org,
	Petr Wozniak <petr.wozniak@gmail.com>
Subject: [PATCH v3] net: phy: sfp: probe for RollBall I2C-to-MDIO bridge in mdio-i2c
Date: Fri, 15 May 2026 19:40:44 +0200
Message-ID: <20260515174044.26036-1-petr.wozniak@gmail.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_104048_943603_F5761F96 
X-CRM114-Status: GOOD (  15.49  )
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

The "OEM"/"SFP-10G-T" quirk entry in sfp_fixup_rollball_cc()
unconditionally forces MDIO_I2C_ROLLBALL for all modules matching that
vendor/part-number combination.  This works for modules that genuinely
implement a RollBall I2C-to-MDIO bridge, but silently breaks modules
that share the same EEPROM strings without having such a bridge.

The Realtek RTL8261BE-CG is one such module: a pure copper 10G SFP+
media converter with no I2C-to-MDIO bridge.  Its EEPROM reports
vendor="OEM", part="SFP-10G-T-I", and -- critically -- Vendor OUI
00:00:00, making OUI-based differentiation impossible.  With
MDIO_I2C_ROLLBALL the kernel stalls waiting for a PHY that never
appears:

  sfp sfp2: probing phy device through the [MDIO_I2C_ROLLBALL] protocol

Move the probe into i2c_mii_init_rollball() in mdio-i2c.c, where the
RollBall protocol constants are already defined.  After sending the
unlock password, issue a CMD_READ and wait ~70 ms for CMD_DONE.  A
genuine RollBall bridge asserts CMD_DONE within that window; modules
without a bridge never do, so i2c_mii_init_rollball() returns -ENODEV.
sfp_i2c_mdiobus_create() treats -ENODEV as no PHY and falls back to
MDIO_I2C_NONE without creating an MDIO bus.

Add "OEM"/"SFP-10G-T-I" to the quirk table so RTL8261BE modules enter
the probe path; genuine RollBall modules continue to work as before.

Signed-off-by: Petr Wozniak <petr.wozniak@gmail.com>
Tested-by: Petr Wozniak <petr.wozniak@gmail.com>
---

Targeting: net-next

Changes since v2:
  - Compile-tested and hardware-tested on BPI-R4 (MT7988A, 6.12.87)
  - RTL8261BE (OEM/SFP-10G-T-I): probes MDIO_I2C_NONE, link Up 10Gbps
  - Genuine RollBall (OEM/SFP-10G-T): bridge detected, link Up 10Gbps

 drivers/net/mdio/mdio-i2c.c | 59 +++++++++++++++++++++++++++++++++----
 drivers/net/phy/sfp.c       |  8 ++++-
 2 files changed, 60 insertions(+), 7 deletions(-)

diff --git a/drivers/net/mdio/mdio-i2c.c b/drivers/net/mdio/mdio-i2c.c
index da2001e..1973fda 100644
--- a/drivers/net/mdio/mdio-i2c.c
+++ b/drivers/net/mdio/mdio-i2c.c
@@ -352,6 +352,52 @@ static int i2c_mii_write_rollball(struct mii_bus *bus, int phy_id, int devad,
 	return 0;
 }
 
+/*
+ * Probe for a RollBall I2C-to-MDIO bridge by issuing CMD_READ and waiting
+ * ~70 ms for CMD_DONE.  Genuine RollBall bridges respond within that window.
+ * Modules that share the same EEPROM vendor/part strings but have no bridge
+ * (e.g. RTL8261BE pure copper media converter) never assert CMD_DONE, so
+ * -ENODEV is returned for them.
+ */
+static int i2c_mii_probe_rollball(struct i2c_adapter *i2c)
+{
+	u8 data_buf[] = { ROLLBALL_DATA_ADDR, 0x01, 0x00, 0x00 };
+	u8 cmd_buf[]  = { ROLLBALL_CMD_ADDR, ROLLBALL_CMD_READ };
+	u8 cmd_addr   = ROLLBALL_CMD_ADDR, result;
+	struct i2c_msg msgs[2];
+	int ret;
+
+	msgs[0].addr  = ROLLBALL_PHY_I2C_ADDR;
+	msgs[0].flags = 0;
+	msgs[0].len   = sizeof(data_buf);
+	msgs[0].buf   = data_buf;
+	msgs[1].addr  = ROLLBALL_PHY_I2C_ADDR;
+	msgs[1].flags = 0;
+	msgs[1].len   = sizeof(cmd_buf);
+	msgs[1].buf   = cmd_buf;
+
+	ret = i2c_transfer_rollball(i2c, msgs, ARRAY_SIZE(msgs));
+	if (ret)
+		return ret;
+
+	msleep(70);
+
+	msgs[0].addr  = ROLLBALL_PHY_I2C_ADDR;
+	msgs[0].flags = 0;
+	msgs[0].len   = 1;
+	msgs[0].buf   = &cmd_addr;
+	msgs[1].addr  = ROLLBALL_PHY_I2C_ADDR;
+	msgs[1].flags = I2C_M_RD;
+	msgs[1].len   = 1;
+	msgs[1].buf   = &result;
+
+	ret = i2c_transfer_rollball(i2c, msgs, ARRAY_SIZE(msgs));
+	if (ret)
+		return ret;
+
+	return result == ROLLBALL_CMD_DONE ? 0 : -ENODEV;
+}
+
 static int i2c_mii_init_rollball(struct i2c_adapter *i2c)
 {
 	struct i2c_msg msg;
@@ -372,10 +418,10 @@ static int i2c_mii_init_rollball(struct i2c_adapter *i2c)
 	ret = i2c_transfer(i2c, &msg, 1);
 	if (ret < 0)
 		return ret;
-	else if (ret != 1)
+	if (ret != 1)
 		return -EIO;
-	else
-		return 0;
+
+	return i2c_mii_probe_rollball(i2c);
 }
 
 struct mii_bus *mdio_i2c_alloc(struct device *parent, struct i2c_adapter *i2c,
@@ -399,9 +445,10 @@ struct mii_bus *mdio_i2c_alloc(struct device *parent, struct i2c_adapter *i2c,
 	case MDIO_I2C_ROLLBALL:
 		ret = i2c_mii_init_rollball(i2c);
 		if (ret < 0) {
-			dev_err(parent,
-				"Cannot initialize RollBall MDIO I2C protocol: %d\n",
-				ret);
+			if (ret != -ENODEV)
+				dev_err(parent,
+					"Cannot initialize RollBall MDIO I2C protocol: %d\n",
+					ret);
 			mdiobus_free(mii);
 			return ERR_PTR(ret);
 		}
diff --git a/drivers/net/phy/sfp.c b/drivers/net/phy/sfp.c
index 218c775..ce745b6 100644
--- a/drivers/net/phy/sfp.c
+++ b/drivers/net/phy/sfp.c
@@ -599,7 +599,8 @@ static const struct sfp_quirk sfp_quirks[] = {
 	SFP_QUIRK_S("TP-LINK", "TL-SM410U", sfp_quirk_oem_2_5g),
 
 	SFP_QUIRK_F("ETU", "ESP-T5-R", sfp_fixup_rollball_cc),
-	SFP_QUIRK_F("OEM", "SFP-10G-T", sfp_fixup_rollball_cc),
+	SFP_QUIRK_F("OEM", "SFP-10G-T-I", sfp_fixup_rollball),
+	SFP_QUIRK_F("OEM", "SFP-10G-T",   sfp_fixup_rollball_cc),
 	SFP_QUIRK_S("OEM", "SFP-2.5G-T", sfp_quirk_oem_2_5g),
 	SFP_QUIRK_S("OEM", "SFP-2.5G-BX10-D", sfp_quirk_2500basex),
 	SFP_QUIRK_S("OEM", "SFP-2.5G-BX10-U", sfp_quirk_2500basex),
@@ -802,6 +803,11 @@ static int sfp_i2c_mdiobus_create(struct sfp *sfp)
 	int ret;
 
 	i2c_mii = mdio_i2c_alloc(sfp->dev, sfp->i2c, sfp->mdio_protocol);
+	if (PTR_ERR_OR_ZERO(i2c_mii) == -ENODEV) {
+		/* RollBall probe found no bridge: no PHY on this module */
+		sfp->mdio_protocol = MDIO_I2C_NONE;
+		return 0;
+	}
 	if (IS_ERR(i2c_mii))
 		return PTR_ERR(i2c_mii);
 
-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
