Return-Path: <SRS0=oIvu=KB=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCC42C433ED
	for <linux-phy@archiver.kernel.org>; Thu,  6 May 2021 11:17:40 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 30BDA611AC
	for <linux-phy@archiver.kernel.org>; Thu,  6 May 2021 11:17:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 30BDA611AC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9hqW5WPV1B2+xXLRPcIwFOEn3As2dsJv3QmCrMha2fk=; b=HPzBiQ7gBfyMxT/0uJn0L8l3/
	xqRMD7W4s41WPnVmSmP/BLGIgPCG77ikY5OLxodUznCtviOzX7jX6vSwhYSd5fO36Kq9/2j6NNKbn
	uuGfMMJGzieY1Qkw6lDeE1Wf0ACkenru2ytQiLNGMXIQCbihcibWJxOUklDZRde8XeQlkd+rhCW5p
	0agQoEwznPvzw4V3NHiQDbiRwKhDjyXj66+Almw+NgJAJMxCbGq7Xd2l8IBIH6wFluv4r9M76eVbV
	mduwuHh6lVyUuVuKsXqyDscvAXjoofS0YWUtu/Rq1mDWttN9gFnxGoCt2QqwkPPs9m8TXQoajZ0BC
	PrPMYQTIA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lec0g-0046VG-Cm; Thu, 06 May 2021 11:17:38 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lebyn-0046Di-QB
 for linux-phy@desiato.infradead.org; Thu, 06 May 2021 11:15:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=VOXi5EtG92mh2v/zZTygCocGHAlghP72W6QLY75l19M=; b=yrjMvrxbW8Vt3/+8z+j2/7AN8w
 +x8ErbHVR/I+IeRa/PaNy3E3gf4MnKaT9Y9x9EgT2zdMvuTwOs56P8ibm9TSIKO7l5i7q+dwomVC6
 uc/J2QMz6RHzTG3Lsqm9R25+THazX0YmeTa4gBp9DwTYg7Gn12Z1TQOfYTbymt3PEIOCk7j5gpip3
 rerg96WbB6xI3mkCiYH3xhobZcQKt9FNl0QhAC9sSD6kmFuQMAwrCDTrVI8nvGUy1j7ZfkUNoHRMd
 r7Gzg19nIl+UJLpS90P2caRW0ert9w3RFCwfOZ3Ohp8bLrCSv4Fl9A416ZDwRO02rJefOh5nMKBJF
 y5/fDmSg==;
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lebyl-005ygn-24
 for linux-phy@lists.infradead.org; Thu, 06 May 2021 11:15:40 +0000
Received: by mail-wr1-x42f.google.com with SMTP id a4so5183091wrr.2
 for <linux-phy@lists.infradead.org>; Thu, 06 May 2021 04:15:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VOXi5EtG92mh2v/zZTygCocGHAlghP72W6QLY75l19M=;
 b=pxzkAsfKZcA/wdsw0ENtktQOC/JOklFuvalj3l4oV2eh/0PVIRtFGwo5o94vuPiHTH
 Djx8SpTlNUe7L4KNGvCEwHWWtWg0UlV2VTBmJ9R/vNnBL3EHrxKY0dpno4luiMjgxdaB
 ds2jPVljk9Mh2X8iqqTZdcjKv5E5ZWI+sEf6dt9EA2aOypj8HWQRSEMtVV8arFmAmlCP
 935qE5O8zZKRUtSEu1A+lFMHzeSwfcPyVAucB13HRga8hPEReswn9G5k+g3BR5Bh1rLJ
 yBuf3V3EEva4jUCWi4qvyD4s2Zi5wxFrHrel4Ov1KpsYlFOSUis9eZcZQP8ps2HNxIQC
 qVTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VOXi5EtG92mh2v/zZTygCocGHAlghP72W6QLY75l19M=;
 b=ErrEnaFnFjxz/OMKLoZ0cxFNcs/rqStIWCctkKdP+FcupvW9DEQS6QsrEWeoFRx9KY
 OY/p17OQf1EO/FK3tfnXb7nwz0JU2AiZCd3apQwafmcYxJb33vxmBxTILmKovsui3lAJ
 hFkhZVxlMukL4TQo3yd35NuUHg6oPmwtogsolwO+XO7NefNEbBT8+L3OyArb0Phrp4Ik
 jyb0zdKQIMukhGcrqmwKiLoZo2NgtnWTPrr0e/APWzujRWjFM3JS/vV/HHwgf7+BoQrP
 StDF4XzVUZTfIAOED44zDchfpKd/zgz5rei8+85RsVngk4/UML674b8wDickk4jmucom
 56UQ==
X-Gm-Message-State: AOAM532VT7zz8JhZARnsMj2EbVn6CRFXyGZIO4FnRkrW9lsYriBGbOYY
 qFhvW1Z6zyGk6E3GMec/EHs=
X-Google-Smtp-Source: ABdhPJxUEUmG7JhrrHTaTPsA7bglIxKepeD8Syw2pUKT/mf8O1Eob4CIrVJD5cakc4HURRW9j+p0sQ==
X-Received: by 2002:adf:f152:: with SMTP id y18mr4480748wro.77.1620299737290; 
 Thu, 06 May 2021 04:15:37 -0700 (PDT)
Received: from localhost.localdomain
 (231.red-83-51-243.dynamicip.rima-tde.net. [83.51.243.231])
 by smtp.gmail.com with ESMTPSA id u5sm3642433wrt.38.2021.05.06.04.15.36
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 May 2021 04:15:36 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: vkoul@kernel.org
Cc: linux-phy@lists.infradead.org, kishon@ti.com, robh+dt@kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-staging@lists.linux.dev, gregkh@linuxfoundation.org, neil@brown.name,
 ilya.lipnitskiy@gmail.com
Subject: [PATCH 3/5] phy: ralink: phy-mt7621-pci: use kernel clock APIS
Date: Thu,  6 May 2021 13:15:29 +0200
Message-Id: <20210506111531.21978-4-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210506111531.21978-1-sergio.paracuellos@gmail.com>
References: <20210506111531.21978-1-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_041539_122134_0B5BCB3C 
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

MT7621 SoC clock driver has already mainlined in
'commit 48df7a26f470 ("clk: ralink: add clock driver for mt7621 SoC")'
This allow us to properly use kernel clock apis to get
the clock frequency needed for the phy configuration
instead of use custom architecture code to do the same.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/phy/ralink/phy-mt7621-pci.c | 33 +++++++++++++++++------------
 1 file changed, 20 insertions(+), 13 deletions(-)

diff --git a/drivers/phy/ralink/phy-mt7621-pci.c b/drivers/phy/ralink/phy-mt7621-pci.c
index 753cb5bab930..5222edc7be10 100644
--- a/drivers/phy/ralink/phy-mt7621-pci.c
+++ b/drivers/phy/ralink/phy-mt7621-pci.c
@@ -5,6 +5,7 @@
  */
 
 #include <dt-bindings/phy/phy.h>
+#include <linux/clk.h>
 #include <linux/bitfield.h>
 #include <linux/bitops.h>
 #include <linux/module.h>
@@ -14,8 +15,6 @@
 #include <linux/platform_device.h>
 #include <linux/regmap.h>
 #include <linux/sys_soc.h>
-#include <mt7621.h>
-#include <ralink_regs.h>
 
 #define RG_PE1_PIPE_REG				0x02c
 #define RG_PE1_PIPE_RST				BIT(12)
@@ -62,8 +61,6 @@
 
 #define RG_PE1_FRC_MSTCKDIV			BIT(5)
 
-#define XTAL_MASK				GENMASK(8, 6)
-
 #define MAX_PHYS	2
 
 /**
@@ -71,6 +68,7 @@
  * @dev: pointer to device
  * @regmap: kernel regmap pointer
  * @phy: pointer to the kernel PHY device
+ * @sys_clk: pointer to the system XTAL clock
  * @port_base: base register
  * @has_dual_port: if the phy has dual ports.
  * @bypass_pipe_rst: mark if 'mt7621_bypass_pipe_rst'
@@ -80,6 +78,7 @@ struct mt7621_pci_phy {
 	struct device *dev;
 	struct regmap *regmap;
 	struct phy *phy;
+	struct clk *sys_clk;
 	void __iomem *port_base;
 	bool has_dual_port;
 	bool bypass_pipe_rst;
@@ -116,12 +115,14 @@ static void mt7621_bypass_pipe_rst(struct mt7621_pci_phy *phy)
 	}
 }
 
-static void mt7621_set_phy_for_ssc(struct mt7621_pci_phy *phy)
+static int mt7621_set_phy_for_ssc(struct mt7621_pci_phy *phy)
 {
 	struct device *dev = phy->dev;
-	u32 xtal_mode;
+	unsigned long clk_rate;
 
-	xtal_mode = FIELD_GET(XTAL_MASK, rt_sysc_r32(SYSC_REG_SYSTEM_CONFIG0));
+	clk_rate = clk_get_rate(phy->sys_clk);
+	if (!clk_rate)
+		return -EINVAL;
 
 	/* Set PCIe Port PHY to disable SSC */
 	/* Debug Xtal Type */
@@ -139,13 +140,13 @@ static void mt7621_set_phy_for_ssc(struct mt7621_pci_phy *phy)
 			       RG_PE1_PHY_EN, RG_PE1_FRC_PHY_EN);
 	}
 
-	if (xtal_mode <= 5 && xtal_mode >= 3) { /* 40MHz Xtal */
+	if (clk_rate == 40000000) { /* 40MHz Xtal */
 		/* Set Pre-divider ratio (for host mode) */
 		mt7621_phy_rmw(phy, RG_PE1_H_PLL_REG, RG_PE1_H_PLL_PREDIV,
 			       FIELD_PREP(RG_PE1_H_PLL_PREDIV, 0x01));
 
 		dev_dbg(dev, "Xtal is 40MHz\n");
-	} else if (xtal_mode >= 6) { /* 25MHz Xal */
+	} else if (clk_rate == 25000000) { /* 25MHz Xal */
 		mt7621_phy_rmw(phy, RG_PE1_H_PLL_REG, RG_PE1_H_PLL_PREDIV,
 			       FIELD_PREP(RG_PE1_H_PLL_PREDIV, 0x00));
 
@@ -196,13 +197,15 @@ static void mt7621_set_phy_for_ssc(struct mt7621_pci_phy *phy)
 	mt7621_phy_rmw(phy, RG_PE1_H_PLL_BR_REG, RG_PE1_H_PLL_BR,
 		       FIELD_PREP(RG_PE1_H_PLL_BR, 0x00));
 
-	if (xtal_mode <= 5 && xtal_mode >= 3) { /* 40MHz Xtal */
+	if (clk_rate == 40000000) { /* 40MHz Xtal */
 		/* set force mode enable of da_pe1_mstckdiv */
 		mt7621_phy_rmw(phy, RG_PE1_MSTCKDIV_REG,
 			       RG_PE1_MSTCKDIV | RG_PE1_FRC_MSTCKDIV,
 			       FIELD_PREP(RG_PE1_MSTCKDIV, 0x01) |
 			       RG_PE1_FRC_MSTCKDIV);
 	}
+
+	return 0;
 }
 
 static int mt7621_pci_phy_init(struct phy *phy)
@@ -212,9 +215,7 @@ static int mt7621_pci_phy_init(struct phy *phy)
 	if (mphy->bypass_pipe_rst)
 		mt7621_bypass_pipe_rst(mphy);
 
-	mt7621_set_phy_for_ssc(mphy);
-
-	return 0;
+	return mt7621_set_phy_for_ssc(mphy);
 }
 
 static int mt7621_pci_phy_power_on(struct phy *phy)
@@ -324,6 +325,12 @@ static int mt7621_pci_phy_probe(struct platform_device *pdev)
 		return PTR_ERR(phy->phy);
 	}
 
+	phy->sys_clk = devm_clk_get(dev, "sys_clk");
+	if (IS_ERR(phy->sys_clk)) {
+		dev_err(dev, "failed to get phy clock\n");
+		return PTR_ERR(phy->sys_clk);
+	}
+
 	phy_set_drvdata(phy->phy, phy);
 
 	provider = devm_of_phy_provider_register(dev, mt7621_pcie_phy_of_xlate);
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
