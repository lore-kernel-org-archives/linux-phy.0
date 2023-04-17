Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D381FC77B7A
	for <linux-phy@archiver.kernel.org>; Mon, 17 Apr 2023 18:04:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KUTGfHgxmd11Y+ncTnumDvqdTAkFxiIK//NKjv3o4Rc=; b=P9WCpB7FY9MaEb
	qMpTfwL6CKTWR1bbrxYBd8q1rRCJ5DuP3IXlx5LgAvz/IcQSmhfxNn5/r/lG2Ys9+R6sWJaumGFmd
	FAVIoqrRoSVL86cpne1xALYvYx3UHwhwZFdUxs/TiQ3Y3Cl+kMboMxGksF/ultudK4LlVmeh9Iaab
	r4jc+KdDOdPeOhzfRKXrugPQPPdQ7u+eiOBjCH/Adn3V0eugAOIXNSo9jSrCXFGR0gJdABfJzyci/
	cjmFZq2w9ZYA1tOcJ4WedjCQEzwb5oWonL9rrdWN3U/nGEozwzV53E+8Atx1ASUO9L2eQvFVY/9JP
	KoqeiakvCzzO7OoSIzZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poTDA-00HGCn-1c;
	Mon, 17 Apr 2023 18:04:20 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poTCu-00HG1U-0A;
	Mon, 17 Apr 2023 18:04:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1681754643; x=1713290643;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=k+uQ6AuSXVO9NTO3vnNTGE3OcG8q0cmFmyPP7RNm0jA=;
  b=yLTdveWd2TwW9UXfIXFjpmNvQhZPYbAYFbnaeW3+W7LxJ29X0eL/nQHV
   4pjm5IXecJSjVqr6w2NboDMpO5/WV2TmKL6Rm63ZDfan2tkr3KEVo64nQ
   jMY6BuQl5XBdmo4t+Shhp/fQZ38sk7F4exycZGKqg2yDWYXZECgjJ0g/9
   B2HwxBoWUKsuxtO6rNGrNA9mMTHXw2o5VyWVMjvIPQLUOkrB0lpDQ1MWL
   Ln37dwAMA+AgqSskC4jniBkK3WrCOOCdvW4IwB+wdUqqCiOSXbOMnmbXf
   Kpc49ytCTQ3vkuZczokrIlNmvqTiBd4HJbdtLDoHETqFLVpxsEctbD8ZD
   Q==;
X-IronPort-AV: E=Sophos;i="5.99,204,1677567600"; 
   d="scan'208";a="147469783"
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 17 Apr 2023 11:03:59 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 17 Apr 2023 11:03:54 -0700
Received: from DEN-LT-70577.microchip.com (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.2507.21 via Frontend Transport; Mon, 17 Apr 2023 11:03:52 -0700
From: Daniel Machon <daniel.machon@microchip.com>
To: <vkoul@kernel.org>
CC: <kishon@kernel.org>, <Steen.Hegelund@microchip.com>,
	<daniel.machon@microchip.com>, <UNGLinuxDriver@microchip.com>,
	<joe@perches.com>, <linux-phy@lists.infradead.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 6/7] phy: sparx5-serdes: remove power up of all CMUs
Date: Mon, 17 Apr 2023 20:03:34 +0200
Message-ID: <20230417180335.2787494-7-daniel.machon@microchip.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230417180335.2787494-1-daniel.machon@microchip.com>
References: <20230417180335.2787494-1-daniel.machon@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_110404_151627_F61671C4 
X-CRM114-Status: GOOD (  10.51  )
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

CMUs should not be powered up by default anymore, so remove responsible
code.

Signed-off-by: Daniel Machon <daniel.machon@microchip.com>
---
 drivers/phy/microchip/sparx5_serdes.c | 25 -------------------------
 drivers/phy/microchip/sparx5_serdes.h |  1 -
 2 files changed, 26 deletions(-)

diff --git a/drivers/phy/microchip/sparx5_serdes.c b/drivers/phy/microchip/sparx5_serdes.c
index a6638d783a01..eb9352d1de7e 100644
--- a/drivers/phy/microchip/sparx5_serdes.c
+++ b/drivers/phy/microchip/sparx5_serdes.c
@@ -1062,24 +1062,6 @@ static int sparx5_cmu_cfg(struct sparx5_serdes_private *priv, u32 cmu_idx)
 	return sparx5_cmu_apply_cfg(priv, cmu_idx, cmu_tgt, cmu_cfg_tgt, spd10g);
 }
 
-static int sparx5_serdes_cmu_enable(struct sparx5_serdes_private *priv)
-{
-	int idx, err = 0;
-
-	if (!priv->cmu_enabled) {
-		for (idx = 0; idx < SPX5_CMU_MAX; idx++) {
-			err  = sparx5_cmu_cfg(priv, idx);
-			if (err) {
-				dev_err(priv->dev, "CMU %u, error: %d\n", idx, err);
-				goto leave;
-			}
-		}
-		priv->cmu_enabled = true;
-	}
-leave:
-	return err;
-}
-
 /* Map of 6G/10G serdes mode and index to CMU index. */
 static const int
 sparx5_serdes_cmu_map[SPX5_SD10G28_CMU_MAX][SPX5_SERDES_6G10G_CNT] = {
@@ -2236,10 +2218,6 @@ static int sparx5_serdes_config(struct sparx5_serdes_macro *macro)
 	int serdesmode;
 	int err;
 
-	err = sparx5_serdes_cmu_enable(macro->priv);
-	if (err)
-		return err;
-
 	serdesmode = sparx5_serdes_get_serdesmode(macro->portmode, macro->speed);
 	if (serdesmode < 0) {
 		dev_err(dev, "SerDes %u, interface not supported: %s\n",
@@ -2331,9 +2309,6 @@ static int sparx5_serdes_reset(struct phy *phy)
 	struct sparx5_serdes_macro *macro = phy_get_drvdata(phy);
 	int err;
 
-	err = sparx5_serdes_cmu_enable(macro->priv);
-	if (err)
-		return err;
 	if (macro->serdestype == SPX5_SDT_25G)
 		err = sparx5_sd25g28_config(macro, true);
 	else
diff --git a/drivers/phy/microchip/sparx5_serdes.h b/drivers/phy/microchip/sparx5_serdes.h
index 0a3e496e6210..13f94a29225a 100644
--- a/drivers/phy/microchip/sparx5_serdes.h
+++ b/drivers/phy/microchip/sparx5_serdes.h
@@ -30,7 +30,6 @@ struct sparx5_serdes_private {
 	struct device *dev;
 	void __iomem *regs[NUM_TARGETS];
 	struct phy *phys[SPX5_SERDES_MAX];
-	bool cmu_enabled;
 	unsigned long coreclock;
 };
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
