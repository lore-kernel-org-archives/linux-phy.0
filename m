Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27983CD343F
	for <linux-phy@archiver.kernel.org>; Fri, 15 May 2026 12:11:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dqSkOEOF/Je8Md0tAu29DJIjBAdp420z9MjDhdiVj24=; b=w0OMBzAgShqmzj
	Gt2fBhS2Wfl7loDS4c66nGurpA5X89wPFh3M0+sMz922oQL4/AcaBbTmX1jI0UqIp2Crka/SafOoP
	aEQDa7uL3Zbb/3Q8i0a+Vq+MUoJbtKe9sjLs4ykjmKKW0BaCR/1/mrBZgbzuo/t6xBwYA3mAiK5N+
	9sLnskCl6hQqDrqBoacWWmRqT4/8DWUNlrE4mjd7WWVEy+P/n3PbOjBKISRGmPCyyGV+6GfPa76sR
	KA/RNKdFnteo8uYoJHNvuzudWEULRnkumQB5DMtKL+8PFA1yz5ZsqEtf8J/nGAm+xCagooIqJMf6/
	HGngjUUHBl4YLy5IQXmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNrNs-00000008Hph-2aWg;
	Fri, 15 May 2026 12:11:16 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNrNp-00000008HoX-3aR3
	for linux-phy@lists.infradead.org;
	Fri, 15 May 2026 12:11:15 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-488b0046078so73861565e9.1
        for <linux-phy@lists.infradead.org>; Fri, 15 May 2026 05:11:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778847071; x=1779451871; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ztSL5T0ZAVv9FW8m9Rl7jvhEnDHUw0SpW0Ca+WqJD/U=;
        b=ow9gatXMyRhDKiDH9woccAjCVKqYdgSLs/L0WhOe91EL4wbFnhdhtAhgXsg0OK6zdV
         +qeGXXCSvpMbtSc5Y4i5ijOfH/UbKip+Wfo1yBFpZ7jbLf/mzasrA3yPnckxwhGUP35a
         bCvwmVvI5ujjp9sF2EaK6u9kclKfhVpkvo3LyLxOEUhQ/J92H3NWJ0UGAjysQYkW2PeU
         ksrvVQaHPpaSX66Jibb+nTHrH4TIQfm8BlTFMjOw4vZEh7Y7mFK4QlrwzC2fOJQkfiuN
         99Cu5Yu+0tvlwKOBKTFSdgEOVHukOr7g7jw6q00XYhbecffJFhHxFdpCllEdxthTZR2C
         F8Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778847071; x=1779451871;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ztSL5T0ZAVv9FW8m9Rl7jvhEnDHUw0SpW0Ca+WqJD/U=;
        b=oN+18IyVQN+ZrZRRzbTSjRdJAipMWl0XKk5tJg5yqRHxDIp0JPZZRAR+NV9wgKcGq/
         qu4yXoYEzOXH7z6E7U8V7Gj185kklNrAZjoaHUS82gOcrO1wVnwT81lG1+2pT9PmNqre
         AfIao2HTI27L8dH46SCx/3k9/quJ9L31eV0gYzIFyBRByDkDXj2iIyXu1T43YDO7prmJ
         xRuvpXDIBPKKNGL8XIPZAeFt6fXsPF2diU217IsTKQXex3yPT/KTXWc3LVZj3H6MCtKL
         B4LOQXU/9SQfKniiqiRNMfe+VlZsxxTD17Rzu+Kz+XGfIvmyrxBwMHXuVeTtOCgiilQo
         LRMg==
X-Forwarded-Encrypted: i=1; AFNElJ+Ga+N1rNn/bX2MVEJPNp+g4LYkxpqTDoVwseey/igvDdtJgEyreLoKzKqZeHqY7nC4r2QW7ZbJn6E=@lists.infradead.org
X-Gm-Message-State: AOJu0YzZ3ErDYo9dIPb/VWXfAWHoDXSEN6GYXO5H8nWJmseBdUx3v1TE
	0JonyK4X225bltnYAtBDrfx1msFrqqZM3HRF8UHvyPw9/m/hjJWjnLvH
X-Gm-Gg: Acq92OEUzoJxlxSorri5b/NE3MtKLkRGji/Oj2AgP7+LWPAmY1RXXLJ3YGA4HCziWHq
	t97DUu6VoJ89uTzqEGLndjKQgivT6b4aSOu9KLyH4C0UuyBAxWN2wAWuFfF+c9H4SVTPgBoJRw2
	WbTrFBy9eUYq/ZGTN4PQUbZ6fJ0l14+dzLjJHfTd0Wh4sDx6LKQlPalsavZKwJXlevnlH+tVw+R
	p2Eh0FSIC3iQzxqjOc+2yt8nk/xQK+s1XB6muTejBTn6aH3nudST/0ijEqJXrAAnyNy6FAJpI+/
	MV7fMd4zp82zqe5ywxGc/c16PrZXjYtS0Q8p68JZDMlDWv+17d+Axq1OH5RHLBi8+vA5U30AWp6
	GcbUtxMIU84nhGEa/fJ59GxxxFJ/rILdICYMbPFewSDUIXdCPLBAiHSbCKtu5IBO/As+ei3S1JA
	Zmq4iwYkM/AfV8T3B2GkevwRAw8Wub6TNyUX3Jaiyf13c9uV63OeAW/zs=
X-Received: by 2002:a05:600c:c168:b0:48a:76a3:2b9b with SMTP id 5b1f17b1804b1-48fe61ed360mr58667405e9.17.1778847070742;
        Fri, 15 May 2026 05:11:10 -0700 (PDT)
Received: from localhost.localdomain ([87.236.194.191])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45da0a17a22sm14343784f8f.22.2026.05.15.05.11.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 May 2026 05:11:10 -0700 (PDT)
From: Petr Wozniak <petr.wozniak@gmail.com>
To: netdev@vger.kernel.org
Cc: bjorn@mork.no,
	andrew@lunn.ch,
	linux-phy@lists.infradead.org,
	Petr Wozniak <petr.wozniak@gmail.com>
Subject: [PATCH] net: phy: sfp: probe for RollBall I2C-to-MDIO bridge before assuming MDIO_I2C_ROLLBALL
Date: Fri, 15 May 2026 14:11:08 +0200
Message-ID: <20260515121108.17792-1-petr.wozniak@gmail.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_051113_924733_EFD60840 
X-CRM114-Status: GOOD (  20.25  )
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
vendor/part-number combination. This works for modules that genuinely
implement a RollBall I2C-to-MDIO bridge, but silently breaks modules
that share the same EEPROM strings without having such a bridge.

The Realtek RTL8261BE-CG is one such module: a pure copper 10G SFP+
media converter with no I2C-to-MDIO bridge. Its EEPROM reports
vendor="OEM", part="SFP-10G-T", and -- critically -- Vendor OUI
00:00:00, making OUI-based differentiation impossible. With
MDIO_I2C_ROLLBALL the kernel stalls waiting for a PHY that never
appears:

  sfp sfp2: probing phy device through the [MDIO_I2C_ROLLBALL] protocol
  sfp sfp2: no PHY detected, 24 tries left
  sfp sfp2: no PHY detected, 23 tries left
  ...

Fix this by probing for the RollBall bridge before committing to a
protocol. The probe sends the RollBall unlock password (four 0xFF bytes
to A2h:VSL+3), switches to MDIO page 3, issues CMD_READ, and polls for
CMD_DONE. A genuine RollBall bridge responds with CMD_DONE within ~70
ms. A module without a bridge never asserts it; the probe times out
after 200 ms (10 x 20 ms).

On probe success the existing MDIO_I2C_ROLLBALL + extended_cc path is
taken -- no behaviour change for real RollBall modules. On timeout,
MDIO_I2C_NONE is selected, telling the MAC to derive link parameters
directly from the EEPROM-declared interface type (10gbase-r) without
attempting PHY register access.

The probe adds at most 200 ms at link-up time for the no-bridge case,
and ~70 ms for real RollBall modules. This is a one-shot cost, not on
the data path.

Also add a separate quirk entry for the industrial variant "SFP-10G-T-I"
which uses the same RTL8261BE silicon.

Tested on BPI-R4 (MediaTek MT7988A, Linux 6.12):
 - RTL8261BE negative case (no bridge, probe timeout -> MDIO_I2C_NONE):
   link up 10Gbps, iperf3 9.34 Gbit/s (93% line rate) [OK]
 - RollBall positive case (CMD_DONE -> MDIO_I2C_ROLLBALL): logic mirrors
   the unlock sequence already in mdio-i2c.c; not yet verified on
   physical RollBall hardware due to lack of a suitable test module.

Signed-off-by: Petr Wozniak <petr.wozniak@gmail.com>
---
 drivers/net/phy/sfp.c | 79 +++++++++++++++++++++++++++++++++++++++---
 1 file changed, 73 insertions(+), 6 deletions(-)

diff --git a/drivers/net/phy/sfp.c b/drivers/net/phy/sfp.c
index XXXXXXX..XXXXXXX 100644
--- a/drivers/net/phy/sfp.c
+++ b/drivers/net/phy/sfp.c
@@ -960,11 +960,88 @@ static void sfp_fixup_rollball(struct sfp *sfp)
 	sfp->phy_t_retry = msecs_to_jiffies(1000);
 }
 
-static void sfp_fixup_rollball_cc(struct sfp *sfp)
+/* Local mirrors of RollBall protocol constants from mdio-i2c.c */
+#define SFP_ROLLBALL_PHY_ADDR	0x51
+#define SFP_ROLLBALL_MDIO_PAGE	3
+#define SFP_ROLLBALL_CMD_ADDR	0x80
+#define SFP_ROLLBALL_CMD_READ	0x02
+#define SFP_ROLLBALL_CMD_DONE	0x04
+
+static int sfp_rollball_a2_write(struct sfp *sfp, u8 reg,
+				 const u8 *data, int len)
+{
+	struct i2c_msg msg;
+	u8 buf[8];
+
+	buf[0] = reg;
+	memcpy(buf + 1, data, len);
+	msg.addr  = SFP_ROLLBALL_PHY_ADDR;
+	msg.flags = 0;
+	msg.len   = len + 1;
+	msg.buf   = buf;
+	return i2c_transfer(sfp->i2c, &msg, 1) == 1 ? 0 : -EIO;
+}
+
+static int sfp_rollball_a2_read(struct sfp *sfp, u8 reg, u8 *val)
 {
-	sfp_fixup_rollball(sfp);
+	struct i2c_msg msgs[2];
+
+	msgs[0].addr  = SFP_ROLLBALL_PHY_ADDR;
+	msgs[0].flags = 0;
+	msgs[0].len   = 1;
+	msgs[0].buf   = &reg;
+	msgs[1].addr  = SFP_ROLLBALL_PHY_ADDR;
+	msgs[1].flags = I2C_M_RD;
+	msgs[1].len   = 1;
+	msgs[1].buf   = val;
+	return i2c_transfer(sfp->i2c, msgs, 2) == 2 ? 0 : -EIO;
+}
+
+/**
+ * sfp_has_rollball_bridge() - probe for a RollBall I2C-to-MDIO bridge
+ * @sfp: SFP instance
+ *
+ * Send the RollBall unlock password, switch to the MDIO page, issue CMD_READ
+ * and poll for CMD_DONE. A genuine RollBall bridge asserts CMD_DONE within
+ * ~70 ms. Modules without a bridge (e.g. RTL8261BE pure media converter)
+ * never respond; the poll times out after 200 ms.
+ *
+ * Returns true if a RollBall bridge is present, false otherwise.
+ */
+static bool sfp_has_rollball_bridge(struct sfp *sfp)
+{
+	u8 pw[4] = { 0xff, 0xff, 0xff, 0xff };
+	u8 page = SFP_ROLLBALL_MDIO_PAGE;
+	u8 cmd  = SFP_ROLLBALL_CMD_READ;
+	u8 saved_page = 0, res;
+	int i;
+
+	if (sfp_rollball_a2_write(sfp, SFP_VSL + 3, pw, sizeof(pw)) < 0)
+		return false;
+
+	sfp_rollball_a2_read(sfp, SFP_PAGE, &saved_page);
+
+	if (sfp_rollball_a2_write(sfp, SFP_PAGE, &page, 1) < 0 ||
+	    sfp_rollball_a2_write(sfp, SFP_ROLLBALL_CMD_ADDR, &cmd, 1) < 0)
+		goto restore;
+
+	for (i = 0; i < 10; i++) {
+		msleep(20);
+		if (!sfp_rollball_a2_read(sfp, SFP_ROLLBALL_CMD_ADDR, &res) &&
+		    res == SFP_ROLLBALL_CMD_DONE) {
+			sfp_rollball_a2_write(sfp, SFP_PAGE, &saved_page, 1);
+			return true;
+		}
+	}
+
+restore:
+	sfp_rollball_a2_write(sfp, SFP_PAGE, &saved_page, 1);
+	return false;
+}
+
+static void sfp_fixup_rollball_cc(struct sfp *sfp)
 {
+	/* Probe for an I2C-to-MDIO bridge: genuine RollBall modules assert
+	 * CMD_DONE within ~70 ms; pure media converters such as the RTL8261BE
+	 * have no bridge and time out after 200 ms.
+	 */
+	if (!sfp_has_rollball_bridge(sfp)) {
+		sfp->mdio_protocol = MDIO_I2C_NONE;
+		return;
+	}
+	sfp_fixup_rollball(sfp);
 	/* Some RollBall SFPs may have wrong (zero) extended compliance code
 	 * burned in EEPROM. For PHY probing we need the correct one.
 	 */
@@ -1036,7 +1113,8 @@ static const struct sfp_quirk sfp_quirks[] = {
 	SFP_QUIRK_S("OEM", "SFP-GE-T", sfp_fixup_ignore_tx_fault),
 	SFP_QUIRK_S("OEM", "SFP-2.5G-T", sfp_quirk_oem_2_5g),
 	SFP_QUIRK_S("OEM", "SFP-2.5G-BX10-D", sfp_quirk_2500basex),
-	SFP_QUIRK_F("OEM", "SFP-10G-T", sfp_fixup_rollball_cc),
+	SFP_QUIRK_F("OEM", "SFP-10G-T-I", sfp_fixup_rollball_cc),
+	SFP_QUIRK_F("OEM", "SFP-10G-T",   sfp_fixup_rollball_cc),
 	SFP_QUIRK_S("OEM", "SFP-2.5G-BX10-U", sfp_quirk_2500basex),

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
