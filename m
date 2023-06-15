Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C2DFEB64D9
	for <linux-phy@archiver.kernel.org>; Thu, 15 Jun 2023 12:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=46rflM9b+lZtObbzrQPfyIfbAYOfrvfTyLMFU7CPzFg=; b=l5oQALU/1m5sjJ
	qUE3lLX62KQlAGN94EIydHIjLk8tttqvJROki7EKZvP9tSgF02FFpYG4b60I6zFrP8VtWuXbZfRek
	72CfvLikAZu6tY98WnqkM/43cyM5asIXKShx6X/0RpXP3tELXm/fJOqwJhNf1A8PTmJgZj/eTCh5T
	0apRcIZEnGHU5IvVk40R7QCvBcqUGtJKJj/fUoPjXys311zQxZsw0ManEFFZ13lHJ9PfPOUk4dsNZ
	V8R22vylVa0WRr1zNnl+4hm+n4xQiwOz8jmW//QmvGinhZMCuOgHr4V9NPPMpdetliqzlnaxLzHPc
	ZBesT6uCcEXWjrWn15Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9lsy-00Epg6-2E;
	Thu, 15 Jun 2023 12:15:32 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9lsP-00EpCC-1Y
	for linux-phy@lists.infradead.org;
	Thu, 15 Jun 2023 12:14:58 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-4f62b512fe2so10634967e87.1
        for <linux-phy@lists.infradead.org>; Thu, 15 Jun 2023 05:14:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686831293; x=1689423293;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x8IJKtNsdBW540hrOificFtv5+xZ0NqYlT5TEOHx1Rg=;
        b=hWbCXGcv61TNwzMbg1XoJftMz5eDZjIKkarh2w/UlhGsbyobt6DtN5q3Rf0TnJtwVc
         SQhUtL+U/IB2D7suFH8Hwx51xIdC3SyINWGSnpj10yzHz0rBBtyL+g4SFF1XM1gz1O58
         Vj+U+igTIiYVeRAQIDpf3c1fSCsnx1cNKZcTj6Ud3gTLuXZ+lRkyshuUzFTR2eY/lazd
         scl2cmv+E+TzQLbZYM19LKWYKluERyjmW2H3rFQlsy/qLIoAjOpc8VwrLLqMXx7eeqmC
         AtMllLAc4AqmcyiDg2Vm/0FteXUqZ/hw/TeGpCJdJFqgxaoKfBWA9MU1/JQ62Ja68L12
         uuqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686831293; x=1689423293;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x8IJKtNsdBW540hrOificFtv5+xZ0NqYlT5TEOHx1Rg=;
        b=F17rLZWP9z37lvbNdp3MdWV4qGjHV0HsHT569I3LFf4ZMVGbSe5BvR6QpqNCcUtdbn
         gaWfdg+TUC8wDbjj4ghJwkEHDSkYc/MA3QIjWrPotExnFZsS40ofpDEGLnvPZDXvleBh
         fG1wvXJFotqbAIIsxIOd3au+A3ee021zdVZPSm789P5P+9SZmJ/UGmamHECYPz+gurlU
         cpt0OHeFOo7d92d/C4MrIA3I8f2UUa2EcNJ/Ii3dipgNMAGle30gHWDAfawfDe9ZhRTV
         3YjHv+yviUzpKRWURocjZY4S7qvBTLIpU32PJAvFc2A5jLhXARNUOjlhZxRFq/m648mK
         M1IA==
X-Gm-Message-State: AC+VfDzh7+F32yibQQgtfa3kMxyYMOF0VsBDMMb0dTaDIURCq1MDwoa9
	fbFB+zKNs7hwwxR5uNtYxi6Yug==
X-Google-Smtp-Source: ACHHUZ7XruAIF0Kx9k8rfaa+hqAvt+jzQnQco8XpTV0z6tAB1miHHB04Cy/KHjOiLoWqUteF97rVfw==
X-Received: by 2002:a19:6706:0:b0:4f7:68eb:7c27 with SMTP id b6-20020a196706000000b004f768eb7c27mr3013726lfc.29.1686831293307;
        Thu, 15 Jun 2023 05:14:53 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:2ad4:65a7:d9f3:a64e])
        by smtp.gmail.com with ESMTPSA id k17-20020a5d4291000000b003047ea78b42sm20918012wrq.43.2023.06.15.05.14.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jun 2023 05:14:52 -0700 (PDT)
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
Subject: [PATCH v2 15/23] net: stmmac: dwmac-qcom-ethqos: add support for SGMII
Date: Thu, 15 Jun 2023 14:14:11 +0200
Message-Id: <20230615121419.175862-16-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230615121419.175862-1-brgl@bgdev.pl>
References: <20230615121419.175862-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_051457_530330_2F351F56 
X-CRM114-Status: GOOD (  13.98  )
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

On sa8775p the MAC is connected to the external PHY over SGMII so add
support for it to the driver.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 .../stmicro/stmmac/dwmac-qcom-ethqos.c        | 37 +++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index 0ececc951528..bdf59a179f87 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -75,6 +75,10 @@
 #define RGMII_CONFIG2_DATA_DIVIDE_CLK_SEL	BIT(6)
 #define RGMII_CONFIG2_TX_CLK_PHASE_SHIFT_EN	BIT(5)
 
+/* MAC_CTRL_REG bits */
+#define ETHQOS_MAC_CTRL_SPEED_MODE		BIT(14)
+#define ETHQOS_MAC_CTRL_PORT_SEL		BIT(15)
+
 struct ethqos_emac_por {
 	unsigned int offset;
 	unsigned int value;
@@ -92,6 +96,7 @@ struct ethqos_emac_driver_data {
 struct qcom_ethqos {
 	struct platform_device *pdev;
 	void __iomem *rgmii_base;
+	void __iomem *mac_base;
 	int (*configure_func)(struct qcom_ethqos *ethqos);
 
 	unsigned int link_clk_rate;
@@ -559,6 +564,33 @@ static int ethqos_configure_rgmii(struct qcom_ethqos *ethqos)
 	return 0;
 }
 
+static int ethqos_configure_sgmii(struct qcom_ethqos *ethqos)
+{
+	int val;
+
+	val = readl(ethqos->mac_base + MAC_CTRL_REG);
+
+	switch (ethqos->speed) {
+	case SPEED_1000:
+		val &= ~ETHQOS_MAC_CTRL_PORT_SEL;
+		rgmii_updatel(ethqos, RGMII_CONFIG2_RGMII_CLK_SEL_CFG,
+			      RGMII_CONFIG2_RGMII_CLK_SEL_CFG,
+			      RGMII_IO_MACRO_CONFIG2);
+		break;
+	case SPEED_100:
+		val |= ETHQOS_MAC_CTRL_PORT_SEL | ETHQOS_MAC_CTRL_SPEED_MODE;
+		break;
+	case SPEED_10:
+		val |= ETHQOS_MAC_CTRL_PORT_SEL;
+		val &= ~ETHQOS_MAC_CTRL_SPEED_MODE;
+		break;
+	}
+
+	writel(val, ethqos->mac_base + MAC_CTRL_REG);
+
+	return val;
+}
+
 static int ethqos_configure(struct qcom_ethqos *ethqos)
 {
 	return ethqos->configure_func(ethqos);
@@ -663,6 +695,9 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 	case PHY_INTERFACE_MODE_RGMII_TXID:
 		ethqos->configure_func = ethqos_configure_rgmii;
 		break;
+	case PHY_INTERFACE_MODE_SGMII:
+		ethqos->configure_func = ethqos_configure_sgmii;
+		break;
 	case -ENODEV:
 		ret = -ENODEV;
 		goto out_config_dt;
@@ -678,6 +713,8 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 		goto out_config_dt;
 	}
 
+	ethqos->mac_base = stmmac_res.addr;
+
 	data = of_device_get_match_data(dev);
 	ethqos->por = data->por;
 	ethqos->num_por = data->num_por;
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
