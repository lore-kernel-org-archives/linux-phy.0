Return-Path: <SRS0=tTY/=KD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.9 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	UNWANTED_LANGUAGE_BODY,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD850C43460
	for <linux-phy@archiver.kernel.org>; Sat,  8 May 2021 06:52:53 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2357E61458
	for <linux-phy@archiver.kernel.org>; Sat,  8 May 2021 06:52:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2357E61458
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YplTVDb1ZeFkoeq2f9u2Mn9A2RISwyGb//QJWhSTueM=; b=THoJaWael3aEyDQaUb2zLzFgC
	73a5VJ+uRs8tZb9+p/YDjFF8rkWLwVs73ix9aZ0cjjD6PP4r6mlx1mqjgviymAEQFKy82wYykXgAs
	iJKZM8bYxcFrXaOxYrFdw94c69/yE5KcQ++X6Rt9T7Pm0429USPB0+aP3Xp/bkjDhg+wUXutbJDgM
	Gtl7Z+Ak1yRKs1OIu+tpRuat/UPvZgWZFaSagaNHRQk/KDQr83no0iknGvBE98Qn2MRCOCQBfj4Ym
	60RyD2k2H5S1zMbkZJqssxskHYgNCqU4tPCY6yf9RX1fiybzl3N+XMxIKr4ftq2biOqjfCQtbwdWV
	pWkZwQN/Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lfGpW-0090I0-RP; Sat, 08 May 2021 06:52:50 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lfGpO-0090Fk-El
 for linux-phy@desiato.infradead.org; Sat, 08 May 2021 06:52:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=cbFyM8/48A5QwY5f+jcAHfVdDdKUhqPQqn/9aWFc+bo=; b=ZX8S+/dV3DSrboAelBhV9kvCs9
 IRcRxH5c+e3k6IGaZlxvZtPrHP7mIua9S+W9e3t6ugReWAfnIbOpvx8Lauk8Orsdv2RcpHzuIO5Hc
 ET0OwiNGXtgpQ8Mzla7TTXpTeUa5afS08BLZmZ7/YEvXNg3Z0ddjxKGrylfzl1RlS427JXEpQArrS
 loWY1ROtXtf3CzlpzWjK/K458FxOJUQUrT9dYL3rJfk2SUNZqtjpMPmOa2QPPaa0Q0RbYOc41Ak1W
 9+beLVWYDWjnwzjoQqPxCOuC+u7tx51d90bGENgPRFSFOoOZfTE0pkd6Ablv3x4Vb4fCOEVzxzVT3
 Sf8wh4cQ==;
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lfGpL-007PLy-Nv
 for linux-phy@lists.infradead.org; Sat, 08 May 2021 06:52:41 +0000
Received: by mail-wm1-x32c.google.com with SMTP id
 y124-20020a1c32820000b029010c93864955so8289505wmy.5
 for <linux-phy@lists.infradead.org>; Fri, 07 May 2021 23:52:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cbFyM8/48A5QwY5f+jcAHfVdDdKUhqPQqn/9aWFc+bo=;
 b=ZFRTF9cJRvrPzrKb7blUFVU3v9BY65e7DprhIVLvgMVjXP0ndV1841gpqXpWavPeBt
 bfFtSVWYpnw1+JZX5oRDgFJdMQLyl0RYs61te9gLPTP5xvrDNBC/NLYo44PFTz2XvSax
 tcYjXSM0NW7D9c3iTRYO/yBPjhK0ysLvfWBjfcrEnQ+IzmgpW5z3CjbGQiznQPbVLKmc
 MHL0xx+02QFkseOEvYthGha4OniAzYgWKXXW30XduNpJZ65n/8VxznPtPmDw6hh8N7Zq
 S0A5CoMa1Icb+kmE3PHLg7UfyBbnti8LYbyhvOyplS0E4+JTn19UFq7MqkbOAYm1h6db
 czoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cbFyM8/48A5QwY5f+jcAHfVdDdKUhqPQqn/9aWFc+bo=;
 b=fcxWoRZJRPnRbh1R0zYIBU/wV01cs+X4WpbnZBZWh/4HJZwKdWNkpZ4yD2hEp0adCg
 qhAJxIXntDsGAMIfR3Gi+sBmwkrsZSxHp3aFsLoGV45vA6T/QfA8o2aEfjUHLdYEx630
 TG+CGe947Rvdjz3QWcLh5AJcr4MGWaShOXQMr7v6zWWX/Fh0BwR/WQLNCsWhCmq/Shvs
 2XjTLsZ8j6bv5vof27ZQCMPkRa3nRPGusQbhDg6EY1JB3JHFCCucBkMeZwJaY9/3eg0E
 3yN/yCRyZYMylAGR7cAt2Bl/a881Fgu7R2i9SNvxRgyVVCGV3TMPpaaghl6I9MY/ezyr
 B7OA==
X-Gm-Message-State: AOAM531hodWrFFAMctk/wOxwUAEfj1eiIwfyJ9wa8B4uv6F/GfEvwWgt
 mw3TmlQqecmpru/Hr1OpFvQ=
X-Google-Smtp-Source: ABdhPJzR/6SkDB7jYl+jO3UVdl29gKC7cPrXHKMB8YfRM+FB3mVH7Um52u3E3FpZosKFPe6v0qr6Kw==
X-Received: by 2002:a7b:c34a:: with SMTP id l10mr14494612wmj.46.1620456758282; 
 Fri, 07 May 2021 23:52:38 -0700 (PDT)
Received: from localhost.localdomain
 (231.red-83-51-243.dynamicip.rima-tde.net. [83.51.243.231])
 by smtp.gmail.com with ESMTPSA id b12sm11638010wro.28.2021.05.07.23.52.37
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 May 2021 23:52:37 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: vkoul@kernel.org
Cc: linux-phy@lists.infradead.org, kishon@ti.com,
 linux-staging@lists.linux.dev, gregkh@linuxfoundation.org, neil@brown.name,
 ilya.lipnitskiy@gmail.com
Subject: [PATCH v2 3/6] phy: ralink: phy-mt7621-pci: use kernel clock APIS
Date: Sat,  8 May 2021 08:52:29 +0200
Message-Id: <20210508065232.4882-4-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210508065232.4882-1-sergio.paracuellos@gmail.com>
References: <20210508065232.4882-1-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_235239_798534_4ABB8F59 
X-CRM114-Status: GOOD (  21.04  )
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
index 753cb5bab930..f56ff10b0885 100644
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
 
+	phy->sys_clk = devm_clk_get(dev, NULL);
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
