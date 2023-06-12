Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEB1CC7EE23
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jun 2023 09:25:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F2COYOfdjkoRa71NMj6rxli78GO2i0A7mynqLld2Jj0=; b=jgfqLo1/iUwZeW
	DadfLaLdT9JfT5vmfcxJPu79PP+9aL4LW0vDrt+DoGASRm3YEK1nOUfioMMwDEG2vW8pEZbHcpMR4
	S+ID3buMh3va45Xwf1O7UL/SR+iew0nJ5/mHlXDZ2CMOHDUuAFLdMyPgXxC/7brkVxY6TRwRkHoHd
	3AZG8Bi6WnO3CAWD7V96cSOK7AHHnZwWecnpsodgofkwf0+9ja6KExgIWiLYfG2rAkj7AI8hDdxEa
	3/FInQES0xgd+OrdEyGrqFnzrpv+LVczDB3CXAwmONX+sXzRDS9sofCv6itsxrBV8Bm3HxPqjgcUI
	8fwnFzGEMLp7dAAKwOCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8dnX-003HM3-1v;
	Mon, 12 Jun 2023 09:25:15 +0000
Received: from mail-wm1-f53.google.com ([209.85.128.53])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8dn5-003H3i-0D
	for linux-phy@lists.infradead.org;
	Mon, 12 Jun 2023 09:24:48 +0000
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-3f61530506aso42498275e9.1
        for <linux-phy@lists.infradead.org>; Mon, 12 Jun 2023 02:24:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686561883; x=1689153883;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vPRfCIFPGTjCNzA0zoFKpFOOb+gMs8UR4lDCHzO+xYc=;
        b=xa/KP+P3Zmb/Lx0rhjT625N/dGumpGheBG+7/5CCXii82aEzcv1iLt1h7b44GlBij0
         D69l/6p4rjUdxNuvv/cvLZvHn6LCZm5b3JrLPXHj7p3U/LdTzrLNEekwGLW+o/T3Y7aZ
         PeA1InA/KpeS9gTUHK67bs/3jEHLYjmrGL/D3/LQL4a+X1W/99lxl7CpRiBP6Cao9d8W
         MapJdFYF+LaJ4BhaIG7KSINuHv2DSeFfbEJfMxN5B2p6E6YIw+XTSAD89BS2IkXdOKDL
         SNaJGeGp8r5a1A5BXHv/89caBDdrOXOqcQSApiSY4sXvIb3Ff2SpnXkGnciwuNxFwNbP
         NU0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686561883; x=1689153883;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vPRfCIFPGTjCNzA0zoFKpFOOb+gMs8UR4lDCHzO+xYc=;
        b=Z8w+E4YnXIz+NF/rg8t3LSUNj38tVdmk9NFsaapAtziMdNE9rIlo7P1yVz/NzM7tNQ
         pPeRuvLkVyHwVEuE1j++3eLIEc34AwlUznm1pxJF4Lz+MN6v9Aot80+4dgEnCjv93svS
         FX1rwtjxmG+3Gd1pWCon1tbG6j3XS5y9OUC6KzBiEoKWyhO3b21m8hwqaX1kMGxwafGg
         IoMB5g1PZF/r/b40XyFgJkkK2WLUVQ1DlwfteIPwht1q7WTqtNDwXRxjzmbL1l/H3MDP
         foncG3/xkIx3wG7WQO/7YqI9knZP4EQuvyNGpF/mM6wCaHjo09JCPHX2MPAR+MozFv+G
         W9Tw==
X-Gm-Message-State: AC+VfDwLo7bTrrSl2iuWFMp6QoaP/ADDJqy979taAdzt0N0vzix4nOzT
	7a2MUP0zay0qgLTG0BagXCTEtg==
X-Google-Smtp-Source: ACHHUZ6y2zO9SRmgd6QTiNDY/FOPGHY7u5CU71HGkgTGaGv20bvmxhweXuqr9zyfR01coD+kH8e1xw==
X-Received: by 2002:a05:600c:214:b0:3f7:3a31:847f with SMTP id 20-20020a05600c021400b003f73a31847fmr6720889wmi.31.1686561883574;
        Mon, 12 Jun 2023 02:24:43 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:a222:bbe9:c688:33ae])
        by smtp.gmail.com with ESMTPSA id p14-20020a7bcc8e000000b003f727764b10sm10892044wma.4.2023.06.12.02.24.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 02:24:43 -0700 (PDT)
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
Subject: [PATCH 12/26] net: stmmac: dwmac-qcom-ethqos: add support for the optional serdes phy
Date: Mon, 12 Jun 2023 11:23:41 +0200
Message-Id: <20230612092355.87937-13-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612092355.87937-1-brgl@bgdev.pl>
References: <20230612092355.87937-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_022447_101096_5187B9D7 
X-CRM114-Status: GOOD (  13.60  )
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

On sa8775p platforms, there's a SGMII SerDes PHY between the MAC and
external PHY that we need to enable and configure.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 .../stmicro/stmmac/dwmac-qcom-ethqos.c        | 37 +++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index 8ed05f29fe8b..3438b6229351 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -6,6 +6,7 @@
 #include <linux/of_device.h>
 #include <linux/platform_device.h>
 #include <linux/phy.h>
+#include <linux/phy/phy.h>
 #include <linux/property.h>
 
 #include "stmmac.h"
@@ -93,6 +94,7 @@ struct qcom_ethqos {
 
 	unsigned int rgmii_clk_rate;
 	struct clk *rgmii_clk;
+	struct phy *serdes_phy;
 	unsigned int speed;
 
 	const struct ethqos_emac_por *por;
@@ -566,6 +568,30 @@ static void ethqos_fix_mac_speed(void *priv, unsigned int speed)
 	ethqos_configure(ethqos);
 }
 
+static int qcom_ethqos_serdes_powerup(struct net_device *ndev, void *priv)
+{
+	struct qcom_ethqos *ethqos = priv;
+	int ret;
+
+	ret = phy_set_speed(ethqos->serdes_phy, ethqos->speed);
+	if (ret)
+		return ret;
+
+	ret = phy_init(ethqos->serdes_phy);
+	if (ret)
+		return ret;
+
+	return phy_power_on(ethqos->serdes_phy);
+}
+
+static void qcom_ethqos_serdes_powerdown(struct net_device *ndev, void *priv)
+{
+	struct qcom_ethqos *ethqos = priv;
+
+	phy_power_off(ethqos->serdes_phy);
+	phy_exit(ethqos->serdes_phy);
+}
+
 static int ethqos_clks_config(void *priv, bool enabled)
 {
 	struct qcom_ethqos *ethqos = priv;
@@ -651,6 +677,12 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 	if (ret)
 		goto out_config_dt;
 
+	ethqos->serdes_phy = devm_phy_optional_get(dev, "serdes");
+	if (IS_ERR(ethqos->serdes_phy)) {
+		ret = PTR_ERR(ethqos->serdes_phy);
+		goto out_config_dt;
+	}
+
 	ethqos->speed = SPEED_1000;
 	ethqos_update_rgmii_clk(ethqos, SPEED_1000);
 	ethqos_set_func_clk_en(ethqos);
@@ -666,6 +698,11 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 	if (of_device_is_compatible(np, "qcom,qcs404-ethqos"))
 		plat_dat->rx_clk_runs_in_lpi = 1;
 
+	if (ethqos->serdes_phy) {
+		plat_dat->serdes_powerup = qcom_ethqos_serdes_powerup;
+		plat_dat->serdes_powerdown  = qcom_ethqos_serdes_powerdown;
+	}
+
 	ret = stmmac_dvr_probe(dev, plat_dat, &stmmac_res);
 	if (ret)
 		goto out_config_dt;
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
