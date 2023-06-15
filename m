Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0F1FC001DC
	for <linux-phy@archiver.kernel.org>; Thu, 15 Jun 2023 12:15:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GdVMExxEpAexLkxspoIicx6jpHMQ8GLK+6S0nTjVt3M=; b=RfmehBCIY9URn9
	cnKmVYJ7fyv0zVWV6/MYutTVBMN2CNUesgkuKV/1Q+nTdSnQz65oeLVZAfVelEjM8UGMupSvFbeAx
	BdrRVgw+VtkpuMwU3/ZKG5+3BFCVss9CsM8W+Un4tjxKyCedUQfHZx8fn+slxgqfAEnuyU1PCArfH
	/nCbCY0RaolqeqQUXjUok62pnBmhDAtr29Fvv6D8L3bhWGpuA9Nts9Uz7IfmxebQWFM1h6+IbbcJA
	rT7j8wIMDSvVX7yqBhqTrZqygxTmaSYJmrGft6m4UMQEjyGlPIhezu3TAB3wtMXL5XzAYj8SDxumx
	r1B3qFxftioxSZRER7TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9lst-00Epac-0z;
	Thu, 15 Jun 2023 12:15:27 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9lsK-00Ep8G-0e
	for linux-phy@lists.infradead.org;
	Thu, 15 Jun 2023 12:14:54 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-30fc42fcbc7so3558101f8f.1
        for <linux-phy@lists.infradead.org>; Thu, 15 Jun 2023 05:14:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686831289; x=1689423289;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4LJNYlud7nrLWcLjYZWRISbOkEhmJfj+HftG3WBZPio=;
        b=hucoXbWBf1OiSRCTQeWm56yitj5Lp14xbM8m91gPocDl3fphaLX8DBWtyGjbKmsIC2
         zggeH1Qo5FAiNBr9uyhWSCxy+1zVw3QWAFjFzffMpObdnrsBikUKA9Kao16lghrmXiGG
         IAC6n5IjzEIbvIgeSMyryxFO9KwQDwMJd6qy1pPz2GmC+oPnTMUw66lGRy3w2a0QR6uY
         P/dd7Ae27WkzZ0Ans+P8pGvte7DcfBTPrhQu+sn0XiB6Iliw1nyTjtWk80KRq2xpmgZN
         CvMVFmEePhpDMD187F77kXBZy83TcLpGZg5WPU76GOeW8ZmvbPI4e68XtgDxluX1i4kS
         q5wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686831289; x=1689423289;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4LJNYlud7nrLWcLjYZWRISbOkEhmJfj+HftG3WBZPio=;
        b=F4IZA+RZKg42z73RBZtgqLGL2Lr0wJ99TxQJM/1kBY9qOTacwyPQac7bLicBpVxbdi
         1cenSQcuJauV/uXh8c/NBAJmkwDqdrQ96tUucFcXdwpiXlWQ3WE7oE2zAh2vjHnTAZ3i
         aZ9JtpLbwwm/BDf9+9Cw9gYH6L4PL/k7EhbDHo/6zjjfHGzARHHY1WtgYyVm1XF6xxDb
         kUmbG1Pwdif9zNksJfQ3FvH9ppU9JHcSJUcEu2FpNRZfGPwJhE6BDhwwkryLne7XTOaH
         5NGMBLehsfHAcDgAWwfuOuOsHXtd/4atWODwg7Ryn/r9mDEI+X/ZtmSOCY84s2K2peSY
         dAlQ==
X-Gm-Message-State: AC+VfDw7TELP+D2dpSxCfM4DL1wpIfSLQkAkD2nSXgaN6UTkibiUkpDM
	l8IUigbf81tKcciFhvG/Pwj+Cg==
X-Google-Smtp-Source: ACHHUZ7dhQeRZTyspniXEVTLFPnO1UuPerWwotxm94aJWSlmAjYzhXbHXkVd8P9CDW1neaFjB7KBLQ==
X-Received: by 2002:a5d:6147:0:b0:30a:f143:25d2 with SMTP id y7-20020a5d6147000000b0030af14325d2mr10110697wrt.5.1686831289396;
        Thu, 15 Jun 2023 05:14:49 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:2ad4:65a7:d9f3:a64e])
        by smtp.gmail.com with ESMTPSA id k17-20020a5d4291000000b003047ea78b42sm20918012wrq.43.2023.06.15.05.14.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jun 2023 05:14:48 -0700 (PDT)
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
Subject: [PATCH v2 12/23] net: stmmac: dwmac-qcom-ethqos: add support for the optional serdes phy
Date: Thu, 15 Jun 2023 14:14:08 +0200
Message-Id: <20230615121419.175862-13-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230615121419.175862-1-brgl@bgdev.pl>
References: <20230615121419.175862-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_051452_282935_C61081AD 
X-CRM114-Status: GOOD (  13.95  )
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
index ec3bbd199501..042733b5e80b 100644
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
@@ -565,6 +567,30 @@ static void ethqos_fix_mac_speed(void *priv, unsigned int speed)
 	ethqos_configure(ethqos);
 }
 
+static int qcom_ethqos_serdes_powerup(struct net_device *ndev, void *priv)
+{
+	struct qcom_ethqos *ethqos = priv;
+	int ret;
+
+	ret = phy_init(ethqos->serdes_phy);
+	if (ret)
+		return ret;
+
+	ret = phy_power_on(ethqos->serdes_phy);
+	if (ret)
+		return ret;
+
+	return phy_set_speed(ethqos->serdes_phy, ethqos->speed);
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
@@ -650,6 +676,12 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
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
@@ -665,6 +697,11 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
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
