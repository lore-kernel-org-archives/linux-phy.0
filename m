Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06C51C531DC
	for <linux-phy@archiver.kernel.org>; Wed, 21 Aug 2024 08:40:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=blCBlwvVIaS6QNtRl9Y6syG4w/NSvPNJLUv+G1UkFwE=; b=XPB/wx7vQFTUeG
	iOc0zCIvMqxGCiAzk5BfrKtJVaFpLy3nxcZTKhGNQyEcB0CW1HIqZuHBbAYxr9nXpu5SiLNfgOtp6
	UGc1mCB0GQ1s6lB6QiaFp35UfdSQRcMy9HIFRHflCKWZlIkH9j0NwFJqb6oVIZfuC2CcJiflI7yQh
	Hn3dY4UIBesPsl3KilMlp5p5pAMkZmE+nIQmH+Uqhg+9mooT4j12Y144M1UCVM8ELKkUCtzU+c1Uk
	uUqsWjIUL1QChIZW52dMu71MrDojIhEb5Q4jTOf6p1BebJBAnlkmXbGOOjw+7uF0u9Y5it0Kf7Yxd
	ZNjYIOkyAqW2X/uyhwzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sggti-000000087FK-2lwb;
	Wed, 21 Aug 2024 08:40:54 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sggsF-000000086vD-0EYs
	for linux-phy@lists.infradead.org;
	Wed, 21 Aug 2024 08:39:24 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-58ef19aa69dso6428992a12.3
        for <linux-phy@lists.infradead.org>; Wed, 21 Aug 2024 01:39:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724229561; x=1724834361; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p5NS54GpNoW7E+gduPASxxnL5epTS+ziclEJzzy8LVw=;
        b=qx3u4iMM8aksh75POWJ+pVndGQiQ6BQv8YqT9LXIlW85QC0KXYBwseZ6ATQlwLgW0f
         ciis6yCoQXSxV4dr3Z/Ts14QO5vQ/h+J/FIlira4c/brwWMdpCCiL07N/uPUKarwH++g
         mYFNaIkw/MjkgE08eq4/N4ywS+oNYrYUq2NnzDAMEXh37iaMjIHryBN041rq9nF/3XMg
         vFnTo2sxxNmS39JK+8ekhqq0ECJlzjVOzUh0M6w73edfUoZCC/eXp3iA+S5XQqG1sOD9
         91sM/M9THZG9e9O2UjkH8jNlSOyS+f56WEo/MzX9b/NqOQIjnAuN0/Hj5ByKs40Tzkne
         c4TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724229561; x=1724834361;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p5NS54GpNoW7E+gduPASxxnL5epTS+ziclEJzzy8LVw=;
        b=N0dFcgs3nkuv31FKfqbybFKkQEYzn73ecxKG8SbFVCytxLOsldqwOLLTMAX+igjoNb
         +ZHI4YmyBvQqv8XZqLBB8FnFqypASbAx0Obp/u45EJvREjgRshKZCoK96aAJq1+uR/X3
         UbFh776mnqvezF3wxOXCuc4FtJZ9st3PYEdPILdDLWhdgxrlk/xxFkybEZswhpJ2D6tj
         NlXW4FyrbHa74A2Yw8lRVvnUpl4nDqqJSnnc+uF8zET9Ks1oz2TN8BAeijtx4iFgNa0U
         HkNeoxTUgmu/6N5lTQx3xG42R4JoY42vOJvfUcgOq+Fw8wHdcJPw4unuVChdZ9UFcPfq
         PlJA==
X-Forwarded-Encrypted: i=1; AJvYcCV+OWBjHSYuijd+2n6eZYw0KjjIm6s7GMauBa1EbjLvb96tPJ19l7vyvtAH2iIYzzz0m0tUyaasQAA=@lists.infradead.org
X-Gm-Message-State: AOJu0YymCX8AP6L7LTigpKpRN7003yXQnEwvdfN6bJ/fi8kzGQTyT1fj
	1dHj553oLTej7S5HlKCLY05jzzGV138C0sSFOEYutlbsoYOxP1ikK04TNq6vly0=
X-Google-Smtp-Source: AGHT+IFL+efdYaMIvFEAHa2ZOmBrT64EwH5p2io/4VksJFJhgzFnSEbnzG8lQxW0DKq98kbZ/xH+Zw==
X-Received: by 2002:a05:6402:350d:b0:5a1:c43:82ca with SMTP id 4fb4d7f45d1cf-5bf1f239b24mr991270a12.26.1724229560915;
        Wed, 21 Aug 2024 01:39:20 -0700 (PDT)
Received: from [127.0.1.1] ([82.79.186.176])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5bebc0817a8sm7785019a12.84.2024.08.21.01.39.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Aug 2024 01:39:20 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Wed, 21 Aug 2024 11:39:01 +0300
Subject: [PATCH v2 2/2] phy: qcom: qmp-pcie: Add Gen4 4-lanes mode for
 X1E80100
MIME-Version: 1.0
Message-Id: <20240821-x1e80100-phy-add-gen4x4-v2-2-c34db42230e9@linaro.org>
References: <20240821-x1e80100-phy-add-gen4x4-v2-0-c34db42230e9@linaro.org>
In-Reply-To: <20240821-x1e80100-phy-add-gen4x4-v2-0-c34db42230e9@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3149; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=3v8gxfNdl+YKSE/9d8RsBuAukGiIKb0idPoI4Z8hD7k=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBmxae0SnrXkRtGRouTWjczroUzpA6suIULc1pqv
 DBSOK9OZTWJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZsWntAAKCRAbX0TJAJUV
 VkQCD/4utwhcNOhJjfQP0bFMjXshoUbeWfzfsuwR725n79Q/iwtu5HF8ojcyyL4Rv6aue77UHUd
 FG/Do9HLs4RFqFcgy53UhW6wzQTQMFY3a2hT+Oe/mnnBWE3lPo6buG+GaNegHUOuiz7Rp34eF41
 0D8/izt4giweLa2A7zu0HiLQjh21oMBnm56BcG0Mo/qM1wqjN2xfX9yyO3qToGnngwuBXk+p5W1
 5HKxzvUTKQHVE5Al3wzsEPlgHh6u1oc75TmV7uxDjm2GTW+78ezrxoHORmGkoYZm7tLysCQu11I
 MtZa4VR1u8/oT6HZfeHAEAKhOoZUn++sQwq/OY3j4dHdyV6SCNhEP/hc2iu0AOjIAjgIFs7bnvB
 xVuFhNGgFVbk/6IOb+d45PUIPtdNzhmjAkJAT9kvUrgduW5TUAOsRmVqc70vANDeOJ2H8WWtxgW
 KVUBdWE5hV6HXDot2Hzs3LCjQOX56IwT92Rv8Y4GO8dA5ppzaQ9aXRPnecdGJZ1YX1426DZTyWn
 xjx+Qx/YyDr1rbemSbEN9BJJ83c5Ib+USBOpG648AOlyAqcEY48JZ4e0zdsXpMT1PoY/tDWllPE
 WyvpibkwMDMVPAwETcMZJUTxr+91YkcA+BEVccMLmUikQ0qNoboUCTQa+TpMk+b5Z9jk3IvfKHx
 l2a/0h8dTKn446A==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240821_013923_137970_54B56E69 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
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

The sixth PCIe controller on X1E80100 can be used in either
4-lanes mode or 2-lanes mode. Add the configuration and compatible
for the 4-lane mode.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 42 ++++++++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index a7e2ce0c500d..df1ebc19c117 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1266,6 +1266,10 @@ static const struct qmp_phy_init_tbl x1e80100_qmp_gen4x2_pcie_ln_shrd_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V6_LN_SHRD_RX_SUMMER_CAL_SPD_MODE, 0x5b),
 };
 
+static const struct qmp_phy_init_tbl x1e80100_qmp_gen4x4_pcie_serdes_4ln_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_BIAS_EN_CLK_BUFLR_EN, 0x1c),
+};
+
 static const struct qmp_phy_init_tbl x1e80100_qmp_gen4x2_pcie_tx_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V6_20_TX_RES_CODE_LANE_OFFSET_TX, 0x1d),
 	QMP_PHY_INIT_CFG(QSERDES_V6_20_TX_RES_CODE_LANE_OFFSET_RX, 0x03),
@@ -3654,6 +3658,41 @@ static const struct qmp_phy_cfg x1e80100_qmp_gen4x2_pciephy_cfg = {
 		.ln_shrd		= x1e80100_qmp_gen4x2_pcie_ln_shrd_tbl,
 		.ln_shrd_num		= ARRAY_SIZE(x1e80100_qmp_gen4x2_pcie_ln_shrd_tbl),
 	},
+
+	.reset_list		= sdm845_pciephy_reset_l,
+	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.vreg_list		= sm8550_qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(sm8550_qmp_phy_vreg_l),
+	.regs			= pciephy_v6_regs_layout,
+
+	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
+	.phy_status		= PHYSTATUS_4_20,
+	.has_nocsr_reset	= true,
+};
+
+static const struct qmp_phy_cfg x1e80100_qmp_gen4x4_pciephy_cfg = {
+	.lanes = 4,
+
+	.offsets		= &qmp_pcie_offsets_v6_20,
+
+	.tbls = {
+		.serdes			= x1e80100_qmp_gen4x2_pcie_serdes_tbl,
+		.serdes_num		= ARRAY_SIZE(x1e80100_qmp_gen4x2_pcie_serdes_tbl),
+		.tx			= x1e80100_qmp_gen4x2_pcie_tx_tbl,
+		.tx_num			= ARRAY_SIZE(x1e80100_qmp_gen4x2_pcie_tx_tbl),
+		.rx			= x1e80100_qmp_gen4x2_pcie_rx_tbl,
+		.rx_num			= ARRAY_SIZE(x1e80100_qmp_gen4x2_pcie_rx_tbl),
+		.pcs			= x1e80100_qmp_gen4x2_pcie_pcs_tbl,
+		.pcs_num		= ARRAY_SIZE(x1e80100_qmp_gen4x2_pcie_pcs_tbl),
+		.pcs_misc		= x1e80100_qmp_gen4x2_pcie_pcs_misc_tbl,
+		.pcs_misc_num		= ARRAY_SIZE(x1e80100_qmp_gen4x2_pcie_pcs_misc_tbl),
+		.ln_shrd		= x1e80100_qmp_gen4x2_pcie_ln_shrd_tbl,
+		.ln_shrd_num		= ARRAY_SIZE(x1e80100_qmp_gen4x2_pcie_ln_shrd_tbl),
+	},
+
+	.serdes_4ln_tbl		= x1e80100_qmp_gen4x4_pcie_serdes_4ln_tbl,
+	.serdes_4ln_num		= ARRAY_SIZE(x1e80100_qmp_gen4x4_pcie_serdes_4ln_tbl),
+
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= sm8550_qmp_phy_vreg_l,
@@ -4436,6 +4475,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
 	}, {
 		.compatible = "qcom,x1e80100-qmp-gen4x2-pcie-phy",
 		.data = &x1e80100_qmp_gen4x2_pciephy_cfg,
+	}, {
+		.compatible = "qcom,x1e80100-qmp-gen4x4-pcie-phy",
+		.data = &x1e80100_qmp_gen4x4_pciephy_cfg,
 	},
 	{ },
 };

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
