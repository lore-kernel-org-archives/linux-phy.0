Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F710CD4F54
	for <linux-phy@archiver.kernel.org>; Thu, 21 May 2026 02:58:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Dk25kFJsp1XnDo3HeFjh/hmofCh9u4K+ALzkgx4/sIY=; b=NWdZ/ZiFfaL/nu
	+a8w2ISfVPEYMNb550ihmMbi4umqYdm9lBIVyz9NXMOSaRFmKRDvdtDd3/mpDy/eJzKU2wKR1oaSe
	dmlxkdiHJPnhUrTkPjWeloKXS3vUmLJM3tDf/zkWbuHVLsEp8rOvTKwtZ7z0G+hE31oQa+8WLsUgE
	YxFKcBiI4JTemG9juiaSFYll5stZk77sQ72q8LrzC8Nn6wgV4HvfT8qUEKWeP4EdaV0DH8kLZ9qmC
	fw45FIghtm7YavGLPKZlaf6uDdCnzea77Tpr4o/2xWBNP8JjUIk/d/A9cTpe4hfCP3kg91kakLqch
	kwIhfUnAANJdSJ74bdfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPtbp-00000006VMN-2RHU;
	Thu, 21 May 2026 02:58:05 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPtbm-00000006VLS-3kR7
	for linux-phy@lists.infradead.org;
	Thu, 21 May 2026 02:58:04 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-441209fb77eso3531747f8f.1
        for <linux-phy@lists.infradead.org>; Wed, 20 May 2026 19:58:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779332281; x=1779937081; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=b6wzXBilwDaEqTrdj11rHbLJY7P7PclyJf2gWIGAYeg=;
        b=A6KVv7e3Tu+llMRVarSZe9NYxHfTTKJO1B7pAv+30s9MKL3+qqdp5FR9FnnMEm4pSd
         TEq62lX7rngYNVdVHWMbGDmLSUMtGNCVnGSlmnM959SdNOZVET4PRBSFsx17x3vSA2LJ
         ksMq9LM5OfGAytQT3ygd+pQnk2XyBX6yg9J1coTtuhXqSjfisGJ5L1gm7klpJsA2yI44
         3xTw7a6uwr+UCrtot4RHspqIo09SAF/KAFBtspoOqvw/vB69HQ6EOWR1XUzaVIx7UujI
         04SJGlAV6vzrVgKJu9ieiHRRjQCm/IcwvjCZsRJx2XWqOc2RJuNry6KIHpI4RYSYh9Fn
         fcNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779332281; x=1779937081;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b6wzXBilwDaEqTrdj11rHbLJY7P7PclyJf2gWIGAYeg=;
        b=mjlHSjGoYwjZIwYfdvK8NstvA93xRi8ZAOsAZdzxpUKGL81CfuUF1MdxtCbxahp1Az
         tkMCbtpsknMU/CZHdKNRiLmFgRiwPcDp5TUX1cx8HFzqyRfrgxxQPqwg0F92s2Fd6Bqi
         tAhy09HwNIt75LnODvkoFLimcPkMMY21EcxOQ1a/ranVZUFmuiW7N3ohr7xrlW79gj3k
         cJr0cPnG2CgrC+Rgf58zFiual/u2TJfdXE0sAcoivZvs44KJ7oN3YlG3o5aYjg2DUh/V
         6ugCR2DWAH8nMBn6BaTMJSwoP2A38sW9jn5UO7T9Qja8/PzDMtqePHA3GMJKd5cqs8Kl
         onTw==
X-Forwarded-Encrypted: i=1; AFNElJ+ncReqa478qWDtGywOTTqsKRaLNU/HIcu64KJx+1rWbIQmAWWygvNLs+/tTl5rv39DERpf6hkeltQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YznVSIiBewoNBQdGXEqDK0zh0gOx56atLKRTRrIHcSfBOzO58zv
	ts6vpi7sZXQldNGpV5kBL/jQ090ZwBYFaiCDjDnPCRkuGoyVdsp5CEBC
X-Gm-Gg: Acq92OFhwnk2O8tpzgNQLDcB0bCC4cXLS3EbRILrP2C0kr9bm3DObsy2nQ1KYeGRuqJ
	szqA9ug4DbUEgm0zS5gCtHwOQ5lZ5ogOELDZDE84QwxL20yYoDeHbTCq9M1H5ZNkGHSWcKNeTxD
	pHLhoJJkLpKgrH+A/OtDnHeDroL2oAMmGakOSgiolqMc4JMwDnAXiKm/yHN4Y6XEpNEkBITfPDL
	GcpD2mP8OddFYTfbIgrlXiIWmz3k3EvVilozV3mx+8EnU/YKnYiTnplb5BsMTUEAy30Y+Aw6Nh+
	5202z5hA0KtJdG+Xe2SCv+Ur1hOY+krqkDnR4CGuteTzw30R+wP3ozrPHCWHkBvdbltEgfvZFSS
	8Z+OtWP2+WoHvVOc2QlJVoiVNRlNTcN/2hyCSMChW8tWgJuEDDaR8CSAn0BVLzHRm/NdeGBlCxi
	TgsZ6HFMHCfIKMJ1lMWSB1U/SO+TIVAbmEWMkMlTOsLE5WJnpTpdymKFgAbOlxccRMTeqj+jjDY
	iOKVQEG1l1z0R8wjA==
X-Received: by 2002:a5d:6f10:0:b0:449:cd74:7432 with SMTP id ffacd0b85a97d-45ea34ab49bmr878157f8f.15.1779332280425;
        Wed, 20 May 2026 19:58:00 -0700 (PDT)
Received: from localhost.localdomain (ip-89-176-136-191.bb.vodafone.cz. [89.176.136.191])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45da0a1a22csm58114198f8f.19.2026.05.20.19.57.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2026 19:57:58 -0700 (PDT)
From: Petr Wozniak <petr.wozniak@gmail.com>
To: netdev@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	andrew@lunn.ch,
	hkallweit1@gmail.com,
	linux@armlinux.org.uk,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	maxime.chevallier@bootlin.com,
	bjorn@mork.no,
	linux-phy@lists.infradead.org,
	jan@3e8.eu
Subject: [PATCH net-next v6] net: phy: sfp: probe for RollBall I2C-to-MDIO bridge in mdio-i2c
Date: Thu, 21 May 2026 04:57:55 +0200
Message-ID: <20260521025755.24649-1-petr.wozniak@gmail.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_195802_971339_73FB062C 
X-CRM114-Status: GOOD (  21.18  )
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
MDIO_I2C_ROLLBALL forced, the module silently ACKs the unlock password
write, the MDIO bus is created, but no PHY responds; the SFP state
machine cycles through the RollBall PHY-probe retry window before
reporting no PHY.

Move the probe into i2c_mii_init_rollball() in mdio-i2c.c, where the
RollBall protocol constants are already defined.  After sending the
unlock password, issue a CMD_READ and poll for CMD_DONE up to 200 ms
(10 x 20 ms, matching the existing rollball poll tolerance).  A genuine
RollBall bridge asserts CMD_DONE within that window; modules without a
bridge never do, so i2c_mii_init_rollball() returns -ENODEV.
mdio_i2c_alloc() propagates -ENODEV to the caller to signal that no
bridge is present and PHY probing should be skipped.
sfp_sm_add_mdio_bus() catches -ENODEV and transitions
sfp->mdio_protocol to MDIO_I2C_NONE so the rest of the state machine
skips PHY probing for this module.

Any I2C-level error (NACK, timeout) during the probe is also treated as
-ENODEV: if the module does not respond at I2C address 0x51 at all,
there is certainly no RollBall bridge there, and SFP initialization
should not abort.

The probe writes are safe with respect to SFP EEPROM integrity: only
modules explicitly listed in the quirk table enter this path, and the
RollBall password unlock write to 0x51 was already issued by
i2c_mii_init_rollball() before the probe for all such modules.  Any
module without a device at 0x51 NACKs the transfer and is treated as
-ENODEV.

Add "OEM"/"SFP-10G-T-I" to the quirk table so RTL8261BE modules enter
the probe path; genuine RollBall modules continue to work as before.

Signed-off-by: Petr Wozniak <petr.wozniak@gmail.com>
Reviewed-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
---

Changes since v5 (Sashiko AI review):
  - Treat I2C NACK/errors in i2c_mii_init_rollball() as -ENODEV so
    modules without a 0x51 EEPROM do not abort SFP initialization
  - Replace fixed 70 ms wait with 10 x 20 ms poll (total 200 ms),
    matching the existing i2c_rollball_mii_poll() tolerance and
    preventing false -ENODEV on slow RollBall bridges

Changes since v4 (feedback from Maxime Chevallier):
  - Fix commit message: replace "stalls" with accurate description of
    the RollBall PHY-probe retry window
  - Fix variable declaration order in i2c_mii_probe_rollball() to
    follow reverse-xmas tree (descending line length)
  - Remove spurious alignment space on "SFP-10G-T" quirk entry
  - Document that -ENODEV from mdio_i2c_alloc() means no bridge present,
    PHY probing should be skipped

Changes since v3 (feedback from Jakub Kicinski):
  - Drop spurious Tested-by: tag -- author and tester are the same person
  - Use PATCH net-next subject prefix
  - Move -ENODEV handling from sfp_i2c_mdiobus_create() into
    sfp_sm_add_mdio_bus() so bus-creation code does not mutate
    sfp->mdio_protocol; the state machine is the correct place for
    protocol-state transitions
  - Split combined variable declaration for clarity

Changes since v2:
  - Compile-tested and hardware-tested on BPI-R4 (MT7988A, 6.12.87)
  - RTL8261BE (OEM/SFP-10G-T-I): probes MDIO_I2C_NONE, link Up 10Gbps
  - Genuine RollBall (OEM/SFP-10G-T): bridge detected, link Up 10Gbps

 drivers/net/mdio/mdio-i2c.c | 65 ++++++++++++++++++++++++++++++------
 drivers/net/phy/sfp.c       | 16 ++++++++--
 2 files changed, 68 insertions(+), 13 deletions(-)
--- a/drivers/net/mdio/mdio-i2c.c
+++ b/drivers/net/mdio/mdio-i2c.c
@@ -352,6 +352,54 @@
 	return 0;
 }
 
+static int i2c_mii_probe_rollball(struct i2c_adapter *i2c)
+{
+	u8 data_buf[] = { ROLLBALL_DATA_ADDR, 0x01, 0x00, 0x00 };
+	u8 cmd_buf[]  = { ROLLBALL_CMD_ADDR, ROLLBALL_CMD_READ };
+	u8 cmd_addr   = ROLLBALL_CMD_ADDR;
+	struct i2c_msg msgs[2];
+	u8 result;
+	int ret;
+	int i;
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
+	if (ret < 0)
+		return -ENODEV;
+	if (ret)
+		return ret;
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
+	for (i = 0; i < 10; i++) {
+		msleep(20);
+		ret = i2c_transfer_rollball(i2c, msgs, ARRAY_SIZE(msgs));
+		if (ret < 0)
+			return -ENODEV;
+		if (ret)
+			return ret;
+		if (result == ROLLBALL_CMD_DONE)
+			return 0;
+	}
+
+	return -ENODEV;
+}
+
 static int i2c_mii_init_rollball(struct i2c_adapter *i2c)
 {
 	struct i2c_msg msg;
@@ -371,11 +419,11 @@
 
 	ret = i2c_transfer(i2c, &msg, 1);
 	if (ret < 0)
-		return ret;
-	else if (ret != 1)
+		return -ENODEV;
+	if (ret != 1)
 		return -EIO;
-	else
-		return 0;
+
+	return i2c_mii_probe_rollball(i2c);
 }
 
 struct mii_bus *mdio_i2c_alloc(struct device *parent, struct i2c_adapter *i2c,
@@ -399,9 +447,12 @@
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
+			/* -ENODEV propagates to caller: no bridge present,
+			 * PHY probing should be skipped for this module. */
 			mdiobus_free(mii);
 			return ERR_PTR(ret);
 		}
--- a/drivers/net/phy/sfp.c
+++ b/drivers/net/phy/sfp.c
@@ -607,6 +607,7 @@
 	SFP_QUIRK_S("TP-LINK", "TL-SM410U", sfp_quirk_oem_2_5g),
 
 	SFP_QUIRK_F("ETU", "ESP-T5-R", sfp_fixup_rollball_cc),
+	SFP_QUIRK_F("OEM", "SFP-10G-T-I", sfp_fixup_rollball),
 	SFP_QUIRK_F("OEM", "SFP-10G-T", sfp_fixup_rollball_cc),
 	SFP_QUIRK_S("OEM", "SFP-2.5G-T", sfp_quirk_oem_2_5g),
 	SFP_QUIRK_S("OEM", "SFP-2.5G-BX10-D", sfp_quirk_2500basex),
@@ -2029,10 +2030,18 @@
 	dev_info(sfp->dev, "probing phy device through the [%s] protocol\n",
 		 mdio_i2c_proto_type(sfp->mdio_protocol));
 
-	if (sfp->mdio_protocol != MDIO_I2C_NONE)
-		return sfp_i2c_mdiobus_create(sfp);
+	int ret;
 
-	return 0;
+	if (sfp->mdio_protocol == MDIO_I2C_NONE)
+		return 0;
+
+	ret = sfp_i2c_mdiobus_create(sfp);
+	if (ret == -ENODEV) {
+		/* Probe confirmed no bridge present; skip PHY discovery. */
+		sfp->mdio_protocol = MDIO_I2C_NONE;
+		return 0;
+	}
+	return ret;
 }
 
 /* Probe a SFP for a PHY device if the module supports copper - the PHY
--
2.51.0

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
