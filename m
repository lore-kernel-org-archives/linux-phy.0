Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 181C1CD4F25
	for <linux-phy@archiver.kernel.org>; Fri, 15 May 2026 16:18:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PyHXi12fnC5bziUT/N/r51sClQSK/yvZRaY2ucbK3/U=; b=YCHGwGIubmJuf7
	duAX2bU/RxYyyWVQzDoslAcgkXNuPIq47U+exE9weUYGJKY86IbCeeO4/IJi9Cp3rAE3AiI8ooyst
	D3qhEkPPFEK/PVgcNdKFi4jBsrh+OTNL0gbc13QfiXP1qQF2nkFBBlgjCVEFfIbfvuclMl06Qi7U6
	DnPN3tuttu5/K+TcPNp0xLOa/+SE/O1ad1ZXZ1Trzo2qmLnqyK987bVRSyn/gAZkyFJqfU+kbwSZI
	sRV2H+a6VZWrCvpEdZ48udugypPMdMxMnGe8/8Vg0eZRHiAGo/gaUnjcvbIfUS82MCFaM+JzN+r+z
	eRKRYqUN4afxUqps9NXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNvFJ-00000008qL6-3Zet;
	Fri, 15 May 2026 16:18:41 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNvFH-00000008qKH-0gTH
	for linux-phy@lists.infradead.org;
	Fri, 15 May 2026 16:18:40 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-44b052142e1so5258911f8f.1
        for <linux-phy@lists.infradead.org>; Fri, 15 May 2026 09:18:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778861917; x=1779466717; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tmR8La+e76BqsIVrUChJEpw5jXSOx7pQ44UqgPaW+Ic=;
        b=rfz+TrGfecYr7ALRsanfGER8Boj4kBbGoPhDT1idBaqX+TMl8jmVWe4ob9Lz6l/oV7
         cGkTfBdvL1RzVMuYusLwpCJzGZE65vXaW5ufUDcU49Fr0grSKFaENkW9z8IvnMI2BXY1
         pMxv5YVBHK13zwnj4M5nx0mUvHnkLEfpNl9wvABBta6QIzT9aomH1kjaJmaeo3C9TAs1
         quWM2IZV+OoDqG5kkaB4UJ+K0OKiq2OyBpAmMtN6Zpft8bq/eOJ+nmkYjjJY+3hgD9X5
         Ys/Wv73+++tMz2PaD69cMYpgW+gQMMIhUzc7uXJPWlExPd59ldNJDdLYFbpqK5Pmngko
         FzCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778861917; x=1779466717;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tmR8La+e76BqsIVrUChJEpw5jXSOx7pQ44UqgPaW+Ic=;
        b=IFE1/u89A8zutJW70EeHXbIgZ9olTxFfxiOe8t5NPWY7q2wj1FK0XUdwA5AHINzlPf
         5gOgG7Up7cvH5nAQcwolA2wpjI8Y9E0+CCHw0IyWEKw4WCoQtkwx4giPNT8ImnTYINgQ
         ok+qULM9RNPWwzC1iJZGhg3YcFbBeiQ0eyL8DM/42zxLAi2amkqV9sOsHFCHNKf6gzvN
         C9ylffxPOUQCxogDCriNLFaKgkE8zGwDKoG+i5TMGUQECdqVDoJEir/ezn1CY9gz6RXj
         2swKrJMITIh9BJ/7JB2z38B2uTbOPqTHnXspaxVheK5nUFp+QKr9hVX++9mQuyy+LUS2
         R1RQ==
X-Forwarded-Encrypted: i=1; AFNElJ+T3V9+cmLOMf1k6EWas80nXU00yEVcys2JdJWtKlwiN3lGIgKkpKTC075hxTxD6kG6kcKYPyO5i+4=@lists.infradead.org
X-Gm-Message-State: AOJu0YyQJouZ9hIykAZSqFNoetZglcTZsLnCTl9p4urngaoUK8Q2Ct5n
	BrLyye43NRRUl0yLz61mxeGwQXugQJurhyQJRpS8TTMQmgsy2VjCwlE8
X-Gm-Gg: Acq92OG4mpn/1aQWwKqXONrvMBZJ8lNtbCtnB4h4otn+BfGXO14ps4ZXBy/RCcs0L9y
	9rjCRaMGoS/kXj4ucaKLbVJVeFJqUEvjNfo6nVe1fnIOUG9PV3ZwR66sdKLVuW2sXvDUGuvT3Yl
	e/W49VJzGTlEsyoMhVJZn7vq3XRBiafQ85dybeTEIPxujMNeetf31aolm2C1HAWqO98kNhP4I1q
	mmOt4Vws2osyCZGiZpl/oHhV+TtyZjpVD2hvudOcOniW9IX7nAv54hNHdx2HcuOxLIbooeSeEGz
	Q15mxl0PPS3a3QhIBaeAndVM44EIO6119e6pn0iA/QR3JH14hS9lKdH4T+276VFZl1LoVfyctex
	UGs2EtJoCNZ76hFz/mFOvKs6U2BGAeuQj5ArtHxJvQKWQG1vDWSN/Plm1/6D8/3rgV8iFidxRqp
	tvzveu6PSkQcMUg+R+duLSZsvebKggIKndxNjnm3Po+bGHdzybFpSWGFcftE5FZqzn6w==
X-Received: by 2002:a5d:5f90:0:b0:43d:300b:2285 with SMTP id ffacd0b85a97d-45e5c5be273mr6552925f8f.11.1778861916929;
        Fri, 15 May 2026 09:18:36 -0700 (PDT)
Received: from localhost.localdomain ([87.236.194.191])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45d9ec3b18fsm15063653f8f.11.2026.05.15.09.18.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 May 2026 09:18:36 -0700 (PDT)
From: Petr Wozniak <petr.wozniak@gmail.com>
To: netdev@vger.kernel.org
Cc: bjorn@mork.no,
	andrew@lunn.ch,
	linux-phy@lists.infradead.org,
	Petr Wozniak <petr.wozniak@gmail.com>
Subject: [PATCH] net: phy: sfp: probe for RollBall I2C-to-MDIO bridge in mdio-i2c
Date: Fri, 15 May 2026 18:18:34 +0200
Message-ID: <20260515161834.23628-1-petr.wozniak@gmail.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260515115527.17241-1-petr.wozniak@gmail.com>
References: <20260515115527.17241-1-petr.wozniak@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_091839_229032_D92CA62A 
X-CRM114-Status: GOOD (  16.61  )
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
---

Changes since v1:
  - Moved probe from sfp.c into i2c_mii_probe_rollball() in mdio-i2c.c;
    all RollBall protocol logic now lives in one place.
  - Removed duplicated #define constants from sfp.c.
  - sfp_i2c_mdiobus_create() handles -ENODEV from mdio_i2c_alloc()
    and falls back to MDIO_I2C_NONE instead of failing the module probe.
  - OEM/SFP-10G-T-I uses sfp_fixup_rollball (no CC byte correction
    needed for a media converter).
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
