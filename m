Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DC80CDB470
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jun 2026 08:05:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VdJgJZR7HI7WzKY28oTuoAayYFUOzKH0RP0GVks41ig=; b=u+Q6ciU4Ar/bBE
	/7gXT7uewKlHCg617O7S3G0ra741pV2xTW3lmBKYHlwMsdLblsUWZcCNoTwvPnjl4iRScJ9sKBXTy
	9gTBixtN4axvlTxM7ERMg4feptrlnfwKHzpmk8p4pHEJlntY4DOaAhwFXSd30m3y5PVawLLVy1HFX
	zysKBozEwwBtW4DRgLqHQqFVURzNB+GQnZJzGoG6KoHFw8DpVx5k8NFhN3mMXw4DpZ8Iy758yct2p
	bhlrtAfiG5Ia1lBnnQpPScSSZSZHrgF7KoU7p/a6sf6Oikr+E6EV7TfZJnIXRimogHqrBbRxxKwPO
	W6tg0yzmeU3FJiJCgEDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbw8j-00000005sVw-1L25;
	Tue, 23 Jun 2026 08:05:49 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbw8f-00000005sTw-43el
	for linux-phy@lists.infradead.org;
	Tue, 23 Jun 2026 08:05:47 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-460166910e6so2906589f8f.2
        for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 01:05:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782201944; x=1782806744; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hDgSh5umR4LQMz2jeGs6QRx4dsp/V9xsfSzq9kWYIeg=;
        b=acNst4rNQop/Npwq03Ej29pbth5pRHuFCy7TFrLQmJJwR/ahe9Nt1UDGlOybAF8d8m
         f398Ww87MDJrm3wCW1Hf4sPkYeWuCTKqjEqBTY+mxFrFfkp7/UK3e3wPKGv5zMG8xvEP
         m8zWl8z+lqVmRu75YjJAn8szqtaG9012Kh0lYiOS76QyT/1IvY9L8CzttfSzTRodY2YC
         81cS/atpAoSdpqe+vRXZBU6V4o5zfYHs11rT7WSO7PKKyj7gp026x1cEOMKFswB6c1vj
         X/ACGKMK6XEz6D4Pt9WFWven4UKVA1BSLDCB52TL/nTv2g3Uq4ojRBykBS77jkwkg9o7
         yf3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782201944; x=1782806744;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hDgSh5umR4LQMz2jeGs6QRx4dsp/V9xsfSzq9kWYIeg=;
        b=ObEIEoXnoeBfZZMpFqNTKczkQ9jwurtqYaTV66xFL4N3WmkW9QYDfklZMrj2MkJJTt
         e0+23HlyQL0qEKzliee//ekuwYHMj460aGYyKFV2L3M/fRfKjTmyVhq8Y13vAostsDJx
         qflkprYPrBn7/tk4W0npFh5jox4e2IH+fuJpbPwaYSB/b8eMOdi2hTWK+8jEOpNAOS0a
         oprvBbDjHILkyfJSWCcn1pAnMJzrEJIJUOBSSzk+Z+f/FYB7aqsGUS7ApX/eYIK6nLCZ
         pO3XpNF8nYQzxPUPTcMrz6UxBA+bRdGFHzgcFkRFGhrt1npqaVprHaLgn7qWTVJX+EeX
         //8w==
X-Forwarded-Encrypted: i=1; AHgh+Rq8g/ux53Si+hNcWlugikozcDAj6HnHZK1tLQw/riQffdoLqBM2C8hC6Z93vLJDRh552Omk0nK/Mnk=@lists.infradead.org
X-Gm-Message-State: AOJu0YwMKBhdPTG2+/gxi3RSnbXH6vVh7ltBNLjZ8IVvtqUOX1sLTQXJ
	m6qMOyMGT+/Q8HS1KyWYOaFYrVOKfMT4H9uKYwIh7dEfMkSkxd2Y/YKE
X-Gm-Gg: AfdE7cmvL+JWZYHfiTqQiBlXeexXsjMqCekk7iOejtaniSPP0ovflAvrJgVdsEXD2te
	Bmsm4nfitbaYGDfHWBOyk8XGrQiv+BGdVtHvUHIgl2ke316n2gLUzscr0S1wwr7VZFB8mFaSnwE
	wo7tv7mL2WI1POrEwSZmbt1FJVitu+TaKsCwn18t/WnZco9njvFK8WjhFQ6YU1SuZwUGNJDZX93
	hqX36fxMnC/UD3/K1iKk+4/bxrDoZwJqcSqul029harYTLlo2pOnSBdRqEpVMJZBifUe7t2Hs13
	bYhNP5QXhRX+eTN2sX9f+7XI0FS9tvBy46MM/oW/XYO17KD+j5NcN11n5z+sv0EOY/We19iqVpl
	OvOjglS/Z6sYevBcrZthp7DG9HRi2gGl1Um5r7sHYpdC8jFeDpDCbAhLFVOq2jymO8fdeX7nVUJ
	RJKuXXw55HMqTRkr1owv9NdH1m2QzdS6Pu1rCpLmTUo4oJEDltIMJH+hZ4JQiRpNoCKMVOaQJL+
	wUYuaw=
X-Received: by 2002:adf:f78f:0:b0:460:70ae:f1af with SMTP id ffacd0b85a97d-46add36e36bmr1861389f8f.27.1782201943954;
        Tue, 23 Jun 2026 01:05:43 -0700 (PDT)
Received: from localhost.localdomain (ip-89-176-136-191.bb.vodafone.cz. [89.176.136.191])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-46667221de7sm32486503f8f.33.2026.06.23.01.05.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2026 01:05:43 -0700 (PDT)
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
Subject: [PATCH net-next v3 2/2] net: phy: mdio-i2c: defer RollBall bridge probe to PHY discovery
Date: Tue, 23 Jun 2026 10:05:38 +0200
Message-ID: <20260623080538.7646-3-petr.wozniak@gmail.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260623080538.7646-1-petr.wozniak@gmail.com>
References: <20260623080538.7646-1-petr.wozniak@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260623_010546_035100_1E281EE0 
X-CRM114-Status: GOOD (  18.69  )
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
v3: regenerated against net-next (v2 failed to apply due to transit
    corruption); fixed block comment style (checkpatch); no functional
    change.
v2: commit message only - generalized scope (Aleksander Bajkowski);
    corrected SM description (Jan Hoffmann); no code change from v1.
v1: initial.
 drivers/net/mdio/mdio-i2c.c   | 15 +++++++++------
 drivers/net/phy/sfp.c         | 22 +++++++++++++---------
 include/linux/mdio/mdio-i2c.h |  1 +
 3 files changed, 23 insertions(+), 15 deletions(-)

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
index c4d274ab651e..bbfaa0450798 100644
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
@@ -2215,7 +2208,18 @@ static int sfp_sm_probe_for_phy(struct sfp *sfp)
 		break;
 
 	case MDIO_I2C_ROLLBALL:
-		err = sfp_sm_probe_phy(sfp, SFP_PHY_ADDR_ROLLBALL, true);
+		/* Probe here, after module initialization delays, so that
+		 * genuine RollBall bridges have had time to start up.
+		 * Modules without a bridge (e.g. RTL8261BE) return -ENODEV.
+		 */
+		err = mdio_i2c_probe_rollball(sfp->i2c);
+		if (err == -ENODEV) {
+			sfp_i2c_mdiobus_destroy(sfp);
+			sfp->mdio_protocol = MDIO_I2C_NONE;
+			break;
+		}
+		if (!err)
+			err = sfp_sm_probe_phy(sfp, SFP_PHY_ADDR_ROLLBALL, true);
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
