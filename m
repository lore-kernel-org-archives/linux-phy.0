Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E94FCD4851
	for <linux-phy@archiver.kernel.org>; Tue, 19 May 2026 04:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=A59Scc6MrAmffDWef/05Ojo5fLiNa3dqR9HrdLzlJMo=; b=yZqXSyDHDxSF7V
	5xS3oljs83Y6HTdXeFYW4yPEITEFoPtq7ar7kQU3qYHYmgGpFqBz/c4f9XebgQLD53Aqbf3JrG5K9
	F0wx0bpiAY+btX/1L7T9v04AUsteBnKx1ONb0TY15obUim6cJoj0idJzUX8z2Vgfb1LaYLBifK2aD
	+IcGV7/PlNPQNw9MzH2zh16NZQHT0eh0sKbCYzD5P7/DFpytYGLT0tw1/VrUZ5WErfn5Izf52hNmI
	l//Ub+01ahveyP+2A81bAq1fxcGWEq8vBxPwZ9VJh0WCCD2qM8IgR2gcZchgtLIBcWeDaNRiLeHnB
	vh2R4WqGyuzPL8qGhXfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPC8Z-0000000078L-2ljB;
	Tue, 19 May 2026 04:32:59 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPC8X-0000000077G-1gjX
	for linux-phy@lists.infradead.org;
	Tue, 19 May 2026 04:32:58 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-43d7645adbdso1951764f8f.1
        for <linux-phy@lists.infradead.org>; Mon, 18 May 2026 21:32:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779165173; x=1779769973; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uqVrwZhTS4+jEVcoMiK7OH2y16LpRHVglx7FTCzRJ5Q=;
        b=dRuG9lzkgGZ6Zim9kV+ejEDbTS/w98NfkH/rwNxfaNzmkHGasWdOpRs39aQnwy9LF9
         29fZ1Lygl8htdrxlQGBgFFR393Ur8ZjFUJ2IbzDGFqIOtQTYEpnNejeiXsoLTJ57fzVy
         +ZwycujDet52HDrih4JSKh8Z02Wt0R8U6CHYlICojpHi2GoyH/T0eH6u5MHhaXcrMwAt
         R1qs4gxurlxoBNwm/B5h1/c1f2VtVzrkl6PISPCk25yqPo0uWDnyFCECmhCytDVbux6X
         JqdiamnKPzPOyZcegYpki2J5sJs2OrYpzJX6DJWit4XfeuPBVwXiBF6uDSP5BXM9ZKVI
         zIXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779165173; x=1779769973;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uqVrwZhTS4+jEVcoMiK7OH2y16LpRHVglx7FTCzRJ5Q=;
        b=fvHUTZs6Eo2/7khtBnFMcU2raJ0LRF8Po2iCyRlegjpyXXEQOWe6BHQKEbFYsW/x72
         mpxJc133mGvJ0vvw7j5oMFqfVtp+rU3KSxA1Co78FaohlvqqCCOz14oyA61zmpuN5gpJ
         gCB7fj3RQ/RKzqKZa/jyMuTBJHSnRj/ihg5ACUOaPIoWZB6jzLURfVFBEIH/hFYaglvS
         gvxtFMfKAKS1PDyc+x4yP+xuWBwLykBZgovMEVMWtTu2Kr5F1sWWcEf/+D8uFevLETiI
         hX2LPFeChsunxnoX1+t8oqJU1IC8V5Z51uFRquV27hX1BuN5YBhmr3wJuNdHH8/TvnWZ
         MGpA==
X-Forwarded-Encrypted: i=1; AFNElJ/PWj4nNzFmlgvsYBTP1WDtrv6NEdFKnfXkXC2vVADCYNHB22Jqc5yVx5KE6zEVTZ5EDl/YbnGlcw0=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywf7fzqrby7ATaomCTBgbL81BopqXBd874V+1jLOLo5NVJ13lLe
	Br8prak1TOIPT+aLgdwNsd3QcLlPP81at/l2Fj854V8vS3SxdP8dVeaq
X-Gm-Gg: Acq92OEAKp7z6vUgq5cNgJGylOnxnZRMcNW4yJxQSjwLRCKyTe7fDVZCnlO023PjUK6
	cn5LK0umh/rbDIfmHRz4/93MJ9SVmMFZfdvam20DbkuoB6vAqmFDtbpZ/6Cx1+h7eNRFRoecovA
	4JMYo1HCY7Tk7GHANgt/FHhVEJ2JMdo7mNBgg1vWaI95dIUyzfWIv6Cjw8ly7YZ/QEvQE2iropT
	IfmAtgbtHQ5/i0wkOMl4hqwSRED4XdBN/yxdGJM5Uw9cDqkpghUolPTQTFO1uTQ7fKusKGGBAfq
	6/59OTkgHefpmt+pY4VyHA19z9xo+J8f4y+jEJfp/tZqpj0CLUES3gnwmDVWwz0ZXWwt4tliyRD
	FTX/oL1H6RGRHkI7z2QhyZtxKTsqAx5K9q3VyJjfiwbjmEzSikXYIattGBz6r+fwkaYnhrlRjGf
	GZop1DheW+NThljO2Mx3gUIcpUaOuy+v8qUkrc8cQdLQlTeh2Xc6dGZLA=
X-Received: by 2002:a05:6000:4021:b0:45a:c97a:905e with SMTP id ffacd0b85a97d-45e5c35db40mr27602343f8f.1.1779165173174;
        Mon, 18 May 2026 21:32:53 -0700 (PDT)
Received: from localhost.localdomain ([87.236.194.191])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45e6a135f0csm23722540f8f.27.2026.05.18.21.32.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 May 2026 21:32:51 -0700 (PDT)
From: Petr Wozniak <petr.wozniak@gmail.com>
To: netdev@vger.kernel.org
Cc: bjorn@mork.no,
	andrew@lunn.ch,
	linux-phy@lists.infradead.org,
	kuba@kernel.org,
	Petr Wozniak <petr.wozniak@gmail.com>
Subject: [PATCH net-next v4] net: phy: sfp: probe for RollBall I2C-to-MDIO bridge in mdio-i2c
Date: Tue, 19 May 2026 06:32:49 +0200
Message-ID: <20260519043249.2868-1-petr.wozniak@gmail.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_213257_469340_72498862 
X-CRM114-Status: GOOD (  17.05  )
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
mdio_i2c_alloc() propagates -ENODEV to the caller without logging an
error.  sfp_sm_add_mdio_bus() catches -ENODEV and transitions
sfp->mdio_protocol to MDIO_I2C_NONE so the rest of the state machine
skips PHY probing for this module.

Add "OEM"/"SFP-10G-T-I" to the quirk table so RTL8261BE modules enter
the probe path; genuine RollBall modules continue to work as before.

Signed-off-by: Petr Wozniak <petr.wozniak@gmail.com>
---

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

 drivers/net/mdio/mdio-i2c.c | 57 +++++++++++++++++++++++++++++++-----
 drivers/net/phy/sfp.c       | 15 ++++++++--
 2 files changed, 62 insertions(+), 10 deletions(-)

--- a/drivers/net/mdio/mdio-i2c.c
+++ b/drivers/net/mdio/mdio-i2c.c
@@ -419,6 +419,46 @@
 	return 0;
 }
 
+static int i2c_mii_probe_rollball(struct i2c_adapter *i2c)
+{
+	u8 data_buf[] = { ROLLBALL_DATA_ADDR, 0x01, 0x00, 0x00 };
+	u8 cmd_buf[]  = { ROLLBALL_CMD_ADDR, ROLLBALL_CMD_READ };
+	u8 cmd_addr = ROLLBALL_CMD_ADDR;
+	u8 result;
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
@@ -439,10 +479,10 @@
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
 
 static bool mdio_i2c_check_functionality(struct i2c_adapter *i2c,
@@ -487,9 +527,10 @@
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
--- a/drivers/net/phy/sfp.c
+++ b/drivers/net/phy/sfp.c
@@ -579,7 +579,8 @@
 	// OEM SFP-GE-T is a 1000Base-T module with broken TX_FAULT indicator
 	SFP_QUIRK_F("OEM", "SFP-GE-T", sfp_fixup_ignore_tx_fault),
 
-	SFP_QUIRK_F("OEM", "SFP-10G-T", sfp_fixup_rollball_cc),
+	SFP_QUIRK_F("OEM", "SFP-10G-T-I", sfp_fixup_rollball),
+	SFP_QUIRK_F("OEM", "SFP-10G-T",   sfp_fixup_rollball_cc),
 	SFP_QUIRK_S("OEM", "SFP-2.5G-T", sfp_quirk_oem_2_5g),
 	SFP_QUIRK_S("OEM", "SFP-2.5G-BX10-D", sfp_quirk_2500basex),
 	SFP_QUIRK_S("OEM", "SFP-2.5G-BX10-U", sfp_quirk_2500basex),
@@ -2022,10 +2023,17 @@
 
 static int sfp_sm_add_mdio_bus(struct sfp *sfp)
 {
-	if (sfp->mdio_protocol != MDIO_I2C_NONE)
-		return sfp_i2c_mdiobus_create(sfp);
+	int ret;
 
-	return 0;
+	if (sfp->mdio_protocol == MDIO_I2C_NONE)
+		return 0;
+
+	ret = sfp_i2c_mdiobus_create(sfp);
+	if (ret == -ENODEV) {
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
