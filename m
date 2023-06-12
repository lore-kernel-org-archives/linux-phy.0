Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D48AC7EE45
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jun 2023 10:30:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xBLGX+HJEFKEJVnDgc/zHzgnOK1eE+IFctUzg/AUXqg=; b=MXE1ABzTjntxwS
	84JLfsAdlLELt59K4pOeUJHZ6/AA2FYbIABZKpzkDhpJC4cyOnPuM5NgTtIqjbQ087Kdc/PPYaloo
	RyRb3SLmlD2eCPbnvdOSN5HkXOLqIGA54++qO2I0f9piQM4w6KV2fcgfCVp35QL19f5+3Id8YEopF
	JgpOtU7aplWB58DxfTBgFwzKlxTvjxVAKchvf0J4eg4CFG78M3aycG0Zf70O/c4nzHC7pa/WTizWp
	O7iKcQBB4t6mjtskcq/HcWgQxj2F/zCoKVg5hb9NOYmt++0+PEQG1TaXAdWO5XVhRd7mP+KuAenyV
	XV4x6MUuWD6f6JEn4PfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8eoV-003U0I-2g;
	Mon, 12 Jun 2023 10:30:19 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8dmz-003Gw5-0l
	for linux-phy@lists.infradead.org;
	Mon, 12 Jun 2023 09:24:43 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-3f736e0c9b1so42685825e9.3
        for <linux-phy@lists.infradead.org>; Mon, 12 Jun 2023 02:24:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686561877; x=1689153877;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dcof+ioLKEeKphF7CJyWNZmTAfrhrHTZK64Fi/9bNaI=;
        b=Dg7TMce7jAT0NsV+wlnPsos/ZyuSZyDJqhpW/BBbn9Ka1QrBfiXgqZTaar1M9RU4L5
         b0/hgLiiaAe+rn1FdxEy7/FLD6PjGJPKwsHiJSy5XLR3CKoVPnRnJftTuKbyjwSHEqLa
         vYL/OpcY7rEXgXARYIo14jlZxUfWbR5CSWwZ2xL269j3cAoqSSCCVXtt98PBVs1f4AJ/
         WnZL1Ba1NhJH1alP0S8Hg7FklHXutu80MK1fcTSL92Zz3DE2NQ32qzBIV2acbD0o0xYE
         3+X7E2SPeEjQYMX4NknRZkL9zF6/7Pvv9gsYdvH8L+GpnsUcew18D7WL5UTxSRjX2aJi
         /ABw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686561877; x=1689153877;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dcof+ioLKEeKphF7CJyWNZmTAfrhrHTZK64Fi/9bNaI=;
        b=ehtqbbuts/8V3TE7ZtobIYzrDufeG96tFDU7s0dGxt1IxMGW4hVJJno+UnOMBnzt8h
         wtB+Z/Bkp/ANHrnKiXEMyyv7WBonTFemelA4U0At81d+GE+lEVbHbTOnJNWtSKWpwK7y
         9x1u5DCRzdeDG7lbKjBP9cFg37VF2RCZ1VdjO6+74uzqwcioW/HyiMPlX/C0PFlYbIv2
         vxH3zbG/Lt+dL+PXm9f5lIGg+BqCF76jvWEO32pWEMWdmkPlk1yXt/6LYJH/xHQkI+AZ
         UvCYlYJxB/h29OEhWUVHaTq8Ck+bwDwb0kc/Fw3vM9wyHMEv/mmVXQGP4oi/mcp+CP8W
         Jgdw==
X-Gm-Message-State: AC+VfDyfqWgqLC61gpOCCkYpNngGYTk/G4c/SqyFFnVPgg+UDdui/fgf
	PMM0ynnpa6Nwv1/KiL3W5ID5mw==
X-Google-Smtp-Source: ACHHUZ5PLbX5RWrds3RXFRl4jn09YQCnlI+UoBhYMMMiq3Fz+M1wg2MWodS3yyBlSYaMCUR+2oFIbw==
X-Received: by 2002:a05:600c:aca:b0:3f7:f614:9970 with SMTP id c10-20020a05600c0aca00b003f7f6149970mr6683496wmr.34.1686561877559;
        Mon, 12 Jun 2023 02:24:37 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:a222:bbe9:c688:33ae])
        by smtp.gmail.com with ESMTPSA id p14-20020a7bcc8e000000b003f727764b10sm10892044wma.4.2023.06.12.02.24.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 02:24:37 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Vinod Koul <vkoul@kernel.org>,
	Bhupesh Sharma <bhupesh.sharma@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Jose Abreu <joabreu@synopsys.com>
Cc: netdev@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH 08/26] net: stmmac: dwmac-qcom-ethqos: use a helper variable for &pdev->dev
Date: Mon, 12 Jun 2023 11:23:37 +0200
Message-Id: <20230612092355.87937-9-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612092355.87937-1-brgl@bgdev.pl>
References: <20230612092355.87937-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_022441_345740_20A42D0D 
X-CRM114-Status: GOOD (  15.53  )
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

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Shrink code and avoid line breaks by using a helper variable for
&pdev->dev.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 .../stmicro/stmmac/dwmac-qcom-ethqos.c        | 48 ++++++++++---------
 1 file changed, 26 insertions(+), 22 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index 28d2514a8795..e19d142630d3 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -123,25 +123,26 @@ static void rgmii_updatel(struct qcom_ethqos *ethqos,
 static void rgmii_dump(void *priv)
 {
 	struct qcom_ethqos *ethqos = priv;
+	struct device *dev = &ethqos->pdev->dev;
 
-	dev_dbg(&ethqos->pdev->dev, "Rgmii register dump\n");
-	dev_dbg(&ethqos->pdev->dev, "RGMII_IO_MACRO_CONFIG: %x\n",
+	dev_dbg(dev, "Rgmii register dump\n");
+	dev_dbg(dev, "RGMII_IO_MACRO_CONFIG: %x\n",
 		rgmii_readl(ethqos, RGMII_IO_MACRO_CONFIG));
-	dev_dbg(&ethqos->pdev->dev, "SDCC_HC_REG_DLL_CONFIG: %x\n",
+	dev_dbg(dev, "SDCC_HC_REG_DLL_CONFIG: %x\n",
 		rgmii_readl(ethqos, SDCC_HC_REG_DLL_CONFIG));
-	dev_dbg(&ethqos->pdev->dev, "SDCC_HC_REG_DDR_CONFIG: %x\n",
+	dev_dbg(dev, "SDCC_HC_REG_DDR_CONFIG: %x\n",
 		rgmii_readl(ethqos, SDCC_HC_REG_DDR_CONFIG));
-	dev_dbg(&ethqos->pdev->dev, "SDCC_HC_REG_DLL_CONFIG2: %x\n",
+	dev_dbg(dev, "SDCC_HC_REG_DLL_CONFIG2: %x\n",
 		rgmii_readl(ethqos, SDCC_HC_REG_DLL_CONFIG2));
-	dev_dbg(&ethqos->pdev->dev, "SDC4_STATUS: %x\n",
+	dev_dbg(dev, "SDC4_STATUS: %x\n",
 		rgmii_readl(ethqos, SDC4_STATUS));
-	dev_dbg(&ethqos->pdev->dev, "SDCC_USR_CTL: %x\n",
+	dev_dbg(dev, "SDCC_USR_CTL: %x\n",
 		rgmii_readl(ethqos, SDCC_USR_CTL));
-	dev_dbg(&ethqos->pdev->dev, "RGMII_IO_MACRO_CONFIG2: %x\n",
+	dev_dbg(dev, "RGMII_IO_MACRO_CONFIG2: %x\n",
 		rgmii_readl(ethqos, RGMII_IO_MACRO_CONFIG2));
-	dev_dbg(&ethqos->pdev->dev, "RGMII_IO_MACRO_DEBUG1: %x\n",
+	dev_dbg(dev, "RGMII_IO_MACRO_DEBUG1: %x\n",
 		rgmii_readl(ethqos, RGMII_IO_MACRO_DEBUG1));
-	dev_dbg(&ethqos->pdev->dev, "EMAC_SYSTEM_LOW_POWER_DEBUG: %x\n",
+	dev_dbg(dev, "EMAC_SYSTEM_LOW_POWER_DEBUG: %x\n",
 		rgmii_readl(ethqos, EMAC_SYSTEM_LOW_POWER_DEBUG));
 }
 
@@ -242,6 +243,7 @@ static const struct ethqos_emac_driver_data emac_v3_0_0_data = {
 
 static int ethqos_dll_configure(struct qcom_ethqos *ethqos)
 {
+	struct device *dev = &ethqos->pdev->dev;
 	unsigned int val;
 	int retry = 1000;
 
@@ -279,7 +281,7 @@ static int ethqos_dll_configure(struct qcom_ethqos *ethqos)
 		retry--;
 	} while (retry > 0);
 	if (!retry)
-		dev_err(&ethqos->pdev->dev, "Clear CK_OUT_EN timedout\n");
+		dev_err(dev, "Clear CK_OUT_EN timedout\n");
 
 	/* Set CK_OUT_EN */
 	rgmii_updatel(ethqos, SDCC_DLL_CONFIG_CK_OUT_EN,
@@ -296,7 +298,7 @@ static int ethqos_dll_configure(struct qcom_ethqos *ethqos)
 		retry--;
 	} while (retry > 0);
 	if (!retry)
-		dev_err(&ethqos->pdev->dev, "Set CK_OUT_EN timedout\n");
+		dev_err(dev, "Set CK_OUT_EN timedout\n");
 
 	/* Set DDR_CAL_EN */
 	rgmii_updatel(ethqos, SDCC_DLL_CONFIG2_DDR_CAL_EN,
@@ -322,12 +324,13 @@ static int ethqos_dll_configure(struct qcom_ethqos *ethqos)
 
 static int ethqos_rgmii_macro_init(struct qcom_ethqos *ethqos)
 {
+	struct device *dev = &ethqos->pdev->dev;
 	int phase_shift;
 	int phy_mode;
 	int loopback;
 
 	/* Determine if the PHY adds a 2 ns TX delay or the MAC handles it */
-	phy_mode = device_get_phy_mode(&ethqos->pdev->dev);
+	phy_mode = device_get_phy_mode(dev);
 	if (phy_mode == PHY_INTERFACE_MODE_RGMII_ID ||
 	    phy_mode == PHY_INTERFACE_MODE_RGMII_TXID)
 		phase_shift = 0;
@@ -468,7 +471,7 @@ static int ethqos_rgmii_macro_init(struct qcom_ethqos *ethqos)
 			      loopback, RGMII_IO_MACRO_CONFIG);
 		break;
 	default:
-		dev_err(&ethqos->pdev->dev,
+		dev_err(dev,
 			"Invalid speed %d\n", ethqos->speed);
 		return -EINVAL;
 	}
@@ -478,6 +481,7 @@ static int ethqos_rgmii_macro_init(struct qcom_ethqos *ethqos)
 
 static int ethqos_configure(struct qcom_ethqos *ethqos)
 {
+	struct device *dev = &ethqos->pdev->dev;
 	volatile unsigned int dll_lock;
 	unsigned int i, retry = 1000;
 
@@ -540,8 +544,7 @@ static int ethqos_configure(struct qcom_ethqos *ethqos)
 			retry--;
 		} while (retry > 0);
 		if (!retry)
-			dev_err(&ethqos->pdev->dev,
-				"Timeout while waiting for DLL lock\n");
+			dev_err(dev, "Timeout while waiting for DLL lock\n");
 	}
 
 	if (ethqos->speed == SPEED_1000)
@@ -597,6 +600,7 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 	const struct ethqos_emac_driver_data *data;
 	struct plat_stmmacenet_data *plat_dat;
 	struct stmmac_resources stmmac_res;
+	struct device *dev = &pdev->dev;
 	struct qcom_ethqos *ethqos;
 	int ret;
 
@@ -606,13 +610,13 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 
 	plat_dat = stmmac_probe_config_dt(pdev, stmmac_res.mac);
 	if (IS_ERR(plat_dat)) {
-		dev_err(&pdev->dev, "dt configuration failed\n");
+		dev_err(dev, "dt configuration failed\n");
 		return PTR_ERR(plat_dat);
 	}
 
 	plat_dat->clks_config = ethqos_clks_config;
 
-	ethqos = devm_kzalloc(&pdev->dev, sizeof(*ethqos), GFP_KERNEL);
+	ethqos = devm_kzalloc(dev, sizeof(*ethqos), GFP_KERNEL);
 	if (!ethqos) {
 		ret = -ENOMEM;
 		goto out_config_dt;
@@ -625,13 +629,13 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 		goto out_config_dt;
 	}
 
-	data = of_device_get_match_data(&pdev->dev);
+	data = of_device_get_match_data(dev);
 	ethqos->por = data->por;
 	ethqos->num_por = data->num_por;
 	ethqos->rgmii_config_loopback_en = data->rgmii_config_loopback_en;
 	ethqos->has_emac3 = data->has_emac3;
 
-	ethqos->rgmii_clk = devm_clk_get(&pdev->dev, "rgmii");
+	ethqos->rgmii_clk = devm_clk_get(dev, "rgmii");
 	if (IS_ERR(ethqos->rgmii_clk)) {
 		ret = PTR_ERR(ethqos->rgmii_clk);
 		goto out_config_dt;
@@ -641,7 +645,7 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 	if (ret)
 		goto out_config_dt;
 
-	ret = devm_add_action_or_reset(&pdev->dev, ethqos_clks_disable, ethqos);
+	ret = devm_add_action_or_reset(dev, ethqos_clks_disable, ethqos);
 	if (ret)
 		goto out_config_dt;
 
@@ -660,7 +664,7 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 	if (of_device_is_compatible(np, "qcom,qcs404-ethqos"))
 		plat_dat->rx_clk_runs_in_lpi = 1;
 
-	ret = stmmac_dvr_probe(&pdev->dev, plat_dat, &stmmac_res);
+	ret = stmmac_dvr_probe(dev, plat_dat, &stmmac_res);
 	if (ret)
 		goto out_config_dt;
 
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
