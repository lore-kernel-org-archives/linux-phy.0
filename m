Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49D14C7EE2E
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jun 2023 09:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BqU2HM0xlW8Yw33dI70KxWrp3AraDSzRGtaZJzV44A4=; b=pUMCFRq0BO1/1n
	QLsok2D099+7b+oC/8gGDZn7zrefZuQZAF+a9KQabnvfC+tibJ4fmnIz+5/BmdWrOPAvZ8zrzrfq6
	H98QaGvp6uYhaahiHjAus63Et5vnkm+d43Z5vwWLdlh59ezg1XHvT0ChznR5wlcU2BOV2hjXSfqbp
	lTKMCNCy/s7DLeo6grody04y1+5wFKq4su2IURkaf3OgSLQ6Z8sP3jRGSbTB8WcyGNuR8psjKTx0+
	S4e8FZHq8TRPhS5X63KjYBu3kkS/yZ3de03aLWZmMtAcaQF/1t/FyhpzaHnEcsUOunQLfaOnp6K1L
	gXnursAeiNQFGXdamtlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8dnY-003HNO-2t;
	Mon, 12 Jun 2023 09:25:16 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8dnA-003H7u-1T
	for linux-phy@lists.infradead.org;
	Mon, 12 Jun 2023 09:24:53 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-4f63006b4e3so4777057e87.1
        for <linux-phy@lists.infradead.org>; Mon, 12 Jun 2023 02:24:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686561891; x=1689153891;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gu6Hj8PYw+w5Smr4EMXMmc+WADcALPo6VlL++XAkFkQ=;
        b=KgztPCwzL7tQDDy797REtkk6bu9zfPBV1CItjq2k4V9QtMfVqe7RQDCXQ+XLPJ+Tnu
         as8pYDlZiiycSsvjx0FeTP5FWiqBhfePAPUFcTmRWIbqULZz4GzxMxSYa6wh8l/ZdnX8
         19eJideh6H6lNdJyPVL8ku4IHc43sCPTWCXZwSYq9N9lKCdNc1tcn/DsRUUbRH4jkopC
         4m3O+6XeduNEMSUdeIrKAAqOR2554WPPuGg8oI5fw2O+aNCrNLvyIgTVYq+T3am/k4Ak
         GtUlY9r08SUm7vHfrQ4KlyXcElHqGru24EzP2b4Dg5v4sIQkXWI9ZdASbzNYVUtZhgM6
         Y07g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686561891; x=1689153891;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Gu6Hj8PYw+w5Smr4EMXMmc+WADcALPo6VlL++XAkFkQ=;
        b=MsuQ2y+Ium3VQ5nWIuHQgmV6DdzPOEFJy2V4R7OkInfF6hhzsNiCAmf3z+BASkJwFa
         /l8BUQ3G0OqxSM30i8wrGVyujV4bESbEmM2wrl19+1oN5bNieTGM2pu3KUnMlVetIlbi
         cUoj4VVl/vNqsCoyoKengQQZMHIq/nnG2pwLIPcu+Dsdlxs9IcjlJ5PhrXbE/wpOs0DU
         nX10A8hns2VM4mIqv2t2EMZxl+/VcfmkcwSHBimVCbySVkoQiizx59wh7VKklOq5jX6p
         LJM8Fh7Xh4M0Y0DnRq+YegKUeiXAig7+blX0JBs4dXSi3nPahM/2+kg6Wc0keAAccdaa
         kfhQ==
X-Gm-Message-State: AC+VfDzAtpzEz7hSwTFy9YCViCL6Z9e6vcXAe0ZaIkj5s6aEWZGKcN0s
	+7D5//BzpFDFveNn+1+otpwlhg==
X-Google-Smtp-Source: ACHHUZ5PHuc52bGQHAJIwWPqQKW+7sxCfjsz+LzdXKKiWQG+l/yIe4x3JNrpAOl59yTb3Z2wEnrkzw==
X-Received: by 2002:ac2:5b11:0:b0:4f3:b32d:f739 with SMTP id v17-20020ac25b11000000b004f3b32df739mr4457643lfn.19.1686561891077;
        Mon, 12 Jun 2023 02:24:51 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:a222:bbe9:c688:33ae])
        by smtp.gmail.com with ESMTPSA id p14-20020a7bcc8e000000b003f727764b10sm10892044wma.4.2023.06.12.02.24.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 02:24:50 -0700 (PDT)
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
Subject: [PATCH 17/26] net: stmmac: dwmac-qcom-ethqos: add support for SGMII
Date: Mon, 12 Jun 2023 11:23:46 +0200
Message-Id: <20230612092355.87937-18-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612092355.87937-1-brgl@bgdev.pl>
References: <20230612092355.87937-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_022452_493859_BDB081C0 
X-CRM114-Status: GOOD (  13.61  )
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
index 2f96f2c11278..247e3888cca0 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -76,6 +76,10 @@
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
 
 	unsigned int rgmii_clk_rate;
@@ -561,6 +566,33 @@ static int ethqos_configure_rgmii(struct qcom_ethqos *ethqos)
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
@@ -673,6 +705,9 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 	case PHY_INTERFACE_MODE_RGMII_TXID:
 		ethqos->configure_func = ethqos_configure_rgmii;
 		break;
+	case PHY_INTERFACE_MODE_SGMII:
+		ethqos->configure_func = ethqos_configure_sgmii;
+		break;
 	case -ENODEV:
 		ret = -ENODEV;
 		goto out_config_dt;
@@ -688,6 +723,8 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
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
