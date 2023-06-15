Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57D09EB64D9
	for <linux-phy@archiver.kernel.org>; Thu, 15 Jun 2023 12:15:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OvUvMBlYidBFNzvH1dpOHKoNqCS3qc+ZhSrFbCEaxpM=; b=uvy5r3iFKy9ngK
	tF6w8HKYMMhM+z192EpsBs/Ju7DX4z7FULZ/W2oyV0X/suX6IgPdyzvMkG8waZx8p9j32sWZFKJ5U
	65q5dIKpk7AIDqzdCbVNCPZnpyjRUANtFwsiYDY7iHCokk9fYtfOYzBEi2p+oK3NGX2uPWaUAMvQQ
	va2ZdaDJud8S7XSbrnwnwuZD5fWsgTE42REqcksm8Y5J836tufJCHBu+0xwpyT3kkV0CcaCfI/jO8
	hYE1XGpKH6n0sX07UY3TtbWJpGqdm/6R70JjYMIGilzLbsG297UIvADO4BjUGk52kSv0A+PHuCzqT
	r+yAJTIdYmJfHDezQ9Kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9lst-00EpbM-31;
	Thu, 15 Jun 2023 12:15:27 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9lsL-00EpAp-0x
	for linux-phy@lists.infradead.org;
	Thu, 15 Jun 2023 12:14:54 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-3f739ec88b2so15928765e9.1
        for <linux-phy@lists.infradead.org>; Thu, 15 Jun 2023 05:14:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686831292; x=1689423292;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ePekGJ8XieE9NixEVRESpLaa1JhvD/weUEjagHex2MA=;
        b=evm7xNAU1Y+vxpG10AIfwoj1gkJ/EevC2OhJij9gczApKIXk/aZbKITyFVE7xKsDzj
         CALbrAr/y7+LHTZi09R2OP2P4xrvJvoOdzB3n3idHu1jsntP7aMcd6YMF46NayGDSUYi
         vqn+CE2ewdmie/6XOn3W3RLOWal3NurlFLyaB7is05O4jDdzjOrBHminAhNhmtNFwJCU
         EO0hI6mgeQmJPgF5N6cBFl2cwOkhH4/ohcCNqnfO5HjvEEdtWTNcJ8tILceIZfkPsxvJ
         YtP0hxvQbIE1IxW/zYvbYSPvnkX931OiGmZMQQA5CjQLijW2PbvyYXJs9t9X1yc9yQVR
         mczw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686831292; x=1689423292;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ePekGJ8XieE9NixEVRESpLaa1JhvD/weUEjagHex2MA=;
        b=jgKRP7auoSPQdLr2H8yoRmvrTRrgnbImq3sX8HO60WUWvwfzxViidbddrzHuPlpMAY
         /EBWzBt3D4IRf+ElAwhfSTX+QrH2YOGIfhlK5Ma1Upjvjfn0ncN778WTV89sb/JPHe4R
         PMWtupryfVZ6ITEZ4FBaJC+JMYvidr/wfBWY1mKxh4vqW83dhrOFUgpSYD0XST5obMNZ
         Sfd92qxcO6BiMj9Hpyw5b3RpxkzDornhTxBt1dbuaV2UUbn7oGeph5NQLfsRtfMpPxAR
         48h9Naq54sFnwF22lOgCpdNj+k0HQAm8zhag5pLxQGj68IPIOXuMHp8gruVtEM85QmWe
         Ql3w==
X-Gm-Message-State: AC+VfDxj8k1iCqYISVoCvqubvprK4ce43NeU9joYV43kjnZXLNs0813f
	kG3I3b+d9+IH4z88IhZQLIjFRA==
X-Google-Smtp-Source: ACHHUZ6ED+VRdPOmmkgxF5vHkRNO4wrf79UBrrmxFxoWexMSoVbr6iiM7pFPKLCaBsOTpFpsgu9B7g==
X-Received: by 2002:adf:ecd0:0:b0:311:1853:8a98 with SMTP id s16-20020adfecd0000000b0031118538a98mr856527wro.60.1686831291910;
        Thu, 15 Jun 2023 05:14:51 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:2ad4:65a7:d9f3:a64e])
        by smtp.gmail.com with ESMTPSA id k17-20020a5d4291000000b003047ea78b42sm20918012wrq.43.2023.06.15.05.14.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jun 2023 05:14:51 -0700 (PDT)
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
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	Andrew Halaney <ahalaney@redhat.com>
Subject: [PATCH v2 14/23] net: stmmac: dwmac-qcom-ethqos: prepare the driver for more PHY modes
Date: Thu, 15 Jun 2023 14:14:10 +0200
Message-Id: <20230615121419.175862-15-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230615121419.175862-1-brgl@bgdev.pl>
References: <20230615121419.175862-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_051453_342935_F2B6C429 
X-CRM114-Status: GOOD (  15.56  )
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

In preparation for supporting SGMII, let's make the code a bit more
generic. Add a new callback for MAC configuration so that we can assign
a different variant of it in the future.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Reviewed-by: Andrew Halaney <ahalaney@redhat.com>
---
 .../stmicro/stmmac/dwmac-qcom-ethqos.c        | 31 ++++++++++++++++---
 1 file changed, 26 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index a739e1d5c046..0ececc951528 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -92,11 +92,13 @@ struct ethqos_emac_driver_data {
 struct qcom_ethqos {
 	struct platform_device *pdev;
 	void __iomem *rgmii_base;
+	int (*configure_func)(struct qcom_ethqos *ethqos);
 
 	unsigned int link_clk_rate;
 	struct clk *link_clk;
 	struct phy *serdes_phy;
 	unsigned int speed;
+	int phy_mode;
 
 	const struct ethqos_emac_por *por;
 	unsigned int num_por;
@@ -331,13 +333,11 @@ static int ethqos_rgmii_macro_init(struct qcom_ethqos *ethqos)
 {
 	struct device *dev = &ethqos->pdev->dev;
 	int phase_shift;
-	int phy_mode;
 	int loopback;
 
 	/* Determine if the PHY adds a 2 ns TX delay or the MAC handles it */
-	phy_mode = device_get_phy_mode(dev);
-	if (phy_mode == PHY_INTERFACE_MODE_RGMII_ID ||
-	    phy_mode == PHY_INTERFACE_MODE_RGMII_TXID)
+	if (ethqos->phy_mode == PHY_INTERFACE_MODE_RGMII_ID ||
+	    ethqos->phy_mode == PHY_INTERFACE_MODE_RGMII_TXID)
 		phase_shift = 0;
 	else
 		phase_shift = RGMII_CONFIG2_TX_CLK_PHASE_SHIFT_EN;
@@ -483,7 +483,7 @@ static int ethqos_rgmii_macro_init(struct qcom_ethqos *ethqos)
 	return 0;
 }
 
-static int ethqos_configure(struct qcom_ethqos *ethqos)
+static int ethqos_configure_rgmii(struct qcom_ethqos *ethqos)
 {
 	struct device *dev = &ethqos->pdev->dev;
 	volatile unsigned int dll_lock;
@@ -559,6 +559,11 @@ static int ethqos_configure(struct qcom_ethqos *ethqos)
 	return 0;
 }
 
+static int ethqos_configure(struct qcom_ethqos *ethqos)
+{
+	return ethqos->configure_func(ethqos);
+}
+
 static void ethqos_fix_mac_speed(void *priv, unsigned int speed)
 {
 	struct qcom_ethqos *ethqos = priv;
@@ -650,6 +655,22 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 		goto out_config_dt;
 	}
 
+	ethqos->phy_mode = device_get_phy_mode(dev);
+	switch (ethqos->phy_mode) {
+	case PHY_INTERFACE_MODE_RGMII:
+	case PHY_INTERFACE_MODE_RGMII_ID:
+	case PHY_INTERFACE_MODE_RGMII_RXID:
+	case PHY_INTERFACE_MODE_RGMII_TXID:
+		ethqos->configure_func = ethqos_configure_rgmii;
+		break;
+	case -ENODEV:
+		ret = -ENODEV;
+		goto out_config_dt;
+	default:
+		ret = -EINVAL;
+		goto out_config_dt;
+	}
+
 	ethqos->pdev = pdev;
 	ethqos->rgmii_base = devm_platform_ioremap_resource_byname(pdev, "rgmii");
 	if (IS_ERR(ethqos->rgmii_base)) {
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
