Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68042CD4F54
	for <linux-phy@archiver.kernel.org>; Wed, 27 May 2026 05:39:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wBqDWGJbKc50Tsy7If6DkuYsJqkePvpa8QF2W9M1taI=; b=hKwzpAim6SPnuA
	pIywHUR5nR4SXrsn1QVwIvwpDMTOFdxp/gEWEb8Rv1dfCh37hkwMaz86ku88FrCHNMEfTxN5VZSjD
	spByCiXaLGeLKYDmFUi+V3DST8M61w/NanaHrzOO4YXi4aLtNYdKG31p4wwctccWdurcX67HF2hEr
	BayiIg/Lts5J+2h7n3nrxctBVCrmrZdOycRgBn9htzgz7tkd+37JURAGRk4zzhuUMYRzxgkaiEe4N
	Ea/l4zCAOnmcwCdMpONRNXC6rSpEjVAQJ1JC1P+3lusBUc6bQJAgelrmNKMQrVwvRAvTIabU6xIbY
	QGi6WF25tcUvh/b7+CQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wS6z7-00000003MNC-3hl2;
	Wed, 27 May 2026 05:39:17 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wS6z5-00000003MMr-3WTu
	for linux-phy@lists.infradead.org;
	Wed, 27 May 2026 05:39:17 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-4903974854dso49570265e9.3
        for <linux-phy@lists.infradead.org>; Tue, 26 May 2026 22:39:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779860353; x=1780465153; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3mRI8mly2NbR54vqkvITGVjBSIViH+A5ziT0lYtjbs8=;
        b=B859de+rohwZEgs7c/I5OI5OqUcmfcQd3SXolZiv7jofZqwjiCI71XE1W/4CnmuUX+
         iBPLGqBZf0EGZvDTXjcrLrL6Zk9utfYXflR7Zf/fA8obMHVOV0tAlUTpnjiEGBJAUdJW
         vkC5lWa7y7E2caxdCh0mJY6lU8xGImMgdYEZdzqyue4k5pLdP3k/KfkHn0j/iuR9SCCA
         3p9LaRAS6MB0D0L7ChsdyqDtfbQfsPFfr2TFy5KxL22FD20KV39XmzIZ3AaHRPjKphiz
         b5bWzl9rQU77NQ6bW8KmII1Cev26WIPiqm0E4acgRMaxw2k71iRMAwpis7jO0OK7+ITn
         uY7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779860353; x=1780465153;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3mRI8mly2NbR54vqkvITGVjBSIViH+A5ziT0lYtjbs8=;
        b=I1LE2rTFa+a764CqjMHSfUyGt8RnLUFRaUAdmhCx4PiRGOLUPY8YekzavBue0PzaSu
         mxPUN8YXK+qILEIpI7OEgadKtCxenllArwoDG7TzlkQxORbc9rGqqt10dzXeNpKkXazn
         tHjUcRp9QWCMbkYytxybLjXTPeiTzYPHhrZGoM6LGQHWQGH3X7GI94iEgZzlcCxoKURz
         nW8JEokzQ541SnEYnm7NpyYFv04hBWDegSmPuXTxxJiNTKjEfkl8zO0AAJwDF8zeA+uN
         n5+A7FQiBG6sew2aNVjeOjoiz9AnbuO4TLav2mojpsPIctRg4ybhjh8VVzC4m9cuBJZo
         CdpA==
X-Forwarded-Encrypted: i=1; AFNElJ/OBXpgPkHbfHBlqvrHaGL8huGSFp3VzDwTQ3M7B0NN/VxmJ+oucse6KONudxSKhvaSnmCqfve9dck=@lists.infradead.org
X-Gm-Message-State: AOJu0YwaroOPFVlMk1ZoyCDTP2tY1KhzNu+zigkyXSg3a2D5ZS/zqJSA
	7Pl7qImsBFeg9KAD+YXaYTh7YE/exAZks6+yuq0PiB7Pq9GuQJRbVBZq
X-Gm-Gg: Acq92OFTNu7mo+TbRY9rJ2c5dTXT7u2x0DOWpkvTJPUIBk44Sxw5QNBIGKt8J0+0A/A
	2+FlSOFpni6JOGzldc4kUw1szV6CpuXfBYWIpgEQ6M8i1fZaowSTz5VLIzkQGFQFENWxDMDpOnR
	W55gebc3ThvycAFJm8F6Ml3zfd6cZnrbr+/OnzDxgJIKpFm1nXzBjv3JWmMzJUs/02Zd93VaZpo
	NhFdUPd3ysROI4E+zXj9ApcMASlGQYXvpwj7guICKu/l6B+jgfJDDVp38U3dr3lBqRNPsmR9Ns7
	n5m0DbsfWtQKKIh9m2dirdMOV1LV3KOTEj5xyvwd3DsGmXfmoH5z8uTc6PR38/Zaq9gAjKdODw+
	EFKUUrNcl6rRIQ61x7OgwcvaHe4GZLxDeuwM98yZ0knu5imUoHzIySGV/IPxBLyOJ5ac63ZRG68
	GZZ/zah2RxEZZXwAmVWHKOOaO0hNb7k3DaBAO5IwVKxyuOYc90b7VCKSzZ4yq7dq2zptysWWZcc
	t1WnV7yx9OUEtZuXq6gU5ZTEQmJjdS4bkQd6Rg=
X-Received: by 2002:a05:600c:37c8:b0:48f:e230:8cad with SMTP id 5b1f17b1804b1-49042ae0201mr391034895e9.33.1779860353006;
        Tue, 26 May 2026 22:39:13 -0700 (PDT)
Received: from localhost.localdomain (ip-89-176-136-191.bb.vodafone.cz. [89.176.136.191])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-490838b2b9fsm6502285e9.0.2026.05.26.22.39.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 May 2026 22:39:12 -0700 (PDT)
From: Petr Wozniak <petr.wozniak@gmail.com>
To: netdev@vger.kernel.org
Cc: maxime.chevallier@bootlin.com,
	bjorn@mork.no,
	andrew@lunn.ch,
	hkallweit1@gmail.com,
	linux@armlinux.org.uk,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	jan@3e8.eu,
	Petr Wozniak <petr.wozniak@gmail.com>
Subject: [PATCH net-next v8] net: phy: sfp: probe for RollBall I2C-to-MDIO bridge in mdio-i2c
Date: Wed, 27 May 2026 07:39:09 +0200
Message-ID: <20260527053909.2118-1-petr.wozniak@gmail.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260526_223915_917879_4ED3A506 
X-CRM114-Status: GOOD (  23.72  )
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

Changes since v7 (feedback from Jakub Kicinski):
  - Rebased on current net-next; no functional changes

Changes since v6 (feedback from Maxime Chevallier):
  - Remove redundant if (ret) checks after i2c_transfer_rollball() calls;
    the function never returns a positive value (always 0 or negative),
    so these branches were dead code

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
---
 drivers/net/mdio/mdio-i2c.c | 59 ++++++++++++++++++++++++++++++++-----
 drivers/net/phy/sfp.c       | 14 +++++++--
 2 files changed, 63 insertions(+), 10 deletions(-)

diff --git a/drivers/net/mdio/mdio-i2c.c b/drivers/net/mdio/mdio-i2c.c
index ed20352a5..b88f63234 100644
--- a/drivers/net/mdio/mdio-i2c.c
+++ b/drivers/net/mdio/mdio-i2c.c
@@ -419,6 +419,50 @@ static int i2c_mii_write_rollball(struct mii_bus *bus, int phy_id, int devad,
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
@@ -438,11 +482,11 @@ static int i2c_mii_init_rollball(struct i2c_adapter *i2c)
 
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
 
 static bool mdio_i2c_check_functionality(struct i2c_adapter *i2c,
@@ -487,9 +531,10 @@ struct mii_bus *mdio_i2c_alloc(struct device *parent, struct i2c_adapter *i2c,
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
index bd970f753..7b2c20d78 100644
--- a/drivers/net/phy/sfp.c
+++ b/drivers/net/phy/sfp.c
@@ -579,6 +579,7 @@ static const struct sfp_quirk sfp_quirks[] = {
 	// OEM SFP-GE-T is a 1000Base-T module with broken TX_FAULT indicator
 	SFP_QUIRK_F("OEM", "SFP-GE-T", sfp_fixup_ignore_tx_fault),
 
+	SFP_QUIRK_F("OEM", "SFP-10G-T-I", sfp_fixup_rollball),
 	SFP_QUIRK_F("OEM", "SFP-10G-T", sfp_fixup_rollball_cc),
 	SFP_QUIRK_S("OEM", "SFP-2.5G-T", sfp_quirk_oem_2_5g),
 	SFP_QUIRK_S("OEM", "SFP-2.5G-BX10-D", sfp_quirk_2500basex),
@@ -2022,10 +2023,17 @@ static void sfp_sm_fault(struct sfp *sfp, unsigned int next_state, bool warn)
 
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
