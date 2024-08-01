Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77CAFC3DA64
	for <linux-phy@archiver.kernel.org>; Thu,  1 Aug 2024 10:40:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xJrr3jovFgEM6wuJY7iKaE3XAgKjTxADE1/RmhLNU5c=; b=KapYeQQh3XWYxX
	Qb9gL8E7sv9L25gd2FqHQ+suD0yHUEGnqUW+vQXWfqumdU6gdFeTWj4Ygu99m8ESyE91IR93nPlEs
	9dai67y8nTN6d2wxhWwcGMRfCpRy/ABR+/Ia+FZJwV/uLasTQoMXrSoUptXtN6QjDR1EsPw9h6ydW
	iiYRC34PeZy86rSzYPmjb46opsUleDGVleLKwZCLyrNQ+4AvLTE/sAxTPnB43q9S57JJF5KZH/7Vo
	2k0bBtoQiYPikp6+P6SDByzoNeu2LBXLlqtkSVohCsz/rWnrnJBqnQ3Dh7l0o1wph5yHotsx4E6g/
	Wu+G4PiJQeFJEaRQcUEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZTEh-00000004maX-049Q;
	Thu, 01 Aug 2024 10:40:43 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZTEe-00000004mZX-1RQE
	for linux-phy@lists.infradead.org;
	Thu, 01 Aug 2024 10:40:42 +0000
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2ee920b0781so73899421fa.1
        for <linux-phy@lists.infradead.org>; Thu, 01 Aug 2024 03:40:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722508838; x=1723113638; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4RA2LpbrywbzcIlCYLWG/W47sX3QN1wt4kooJap9IIU=;
        b=W4+6OzmafWrKXdYKCJtTGZCX89oOwnXxBNPisnPlH75y02stB9VsYgVQrBPkWHK0nA
         FGRMQK9UCSPYBjvVjAfidVp3eBWGVCEicIJTl7ds6qN1jA8Ewjk++CygEts2rHmmIh45
         ZS0h6x6oEJXPy7F+jEEqd+2ox8mgeT7iHMfjB90oowUEgbDw8gFIuXjgYFZ9TrF9y3p1
         haFEisi6n3UXVZdSBNy64Wj4/bQMde4UXdTk/mSd5GLpAbSZemW3XDkqFf/um/pZWZxv
         b7GqonLtsERzQ7Pfw8ri9y8YLov1JdUyMZLwR0qXhXlF6wcJ0qJCFQGKwc4vD6rR2DGb
         O0zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722508838; x=1723113638;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4RA2LpbrywbzcIlCYLWG/W47sX3QN1wt4kooJap9IIU=;
        b=eum9mWeb0Gzhm25lAeb+fqJjjxHjN2l27XjwkVrESBJZWd4ccYfkFbqWKFQb2m14AY
         YsIRynAhIWzoHFM9hlIBKFebbIAyCx1jA6AnN8c388FuLv1rDWsI4YUwEd6awuYjG9V3
         6eR+IxDmNkveSTIDKBJGsEmozYZ0fwOzVLaTD4TbTc8rNM9X9BtejQjjAvw7MiwX7tpz
         UlZid1XQAA5+H/hHMMzxPNC1+dj0vv3widMPC/OhuAif7uwKh50o6F1iVNF2vH+9y/xi
         g8BoeVqu5kIsil+1wKkz8s0h4WOVzsJ8Q0KcTcC809IOc2ZKnQvNaiL52C4rlnqZR/nm
         PzWg==
X-Forwarded-Encrypted: i=1; AJvYcCU1jcIqVogLJRtzUGlqynYCnvzg/uAch8j1zrdYwLPC5BASQBz5FkrWv/6oLnVd5psrgI+VBQH+o/RKq7FegYX+vYwC/HXMQxBPjvaMHw==
X-Gm-Message-State: AOJu0YxVBin4sk/1lJlr1UT0ahnNuj20rV8cfXV55s5rl7OMQLuBvaE2
	fgDb/QPzURYCrUJ3FlrcXRNfx2C4D38AdxA7KktujN4PRqZ96Bf0jStoYvpqCJE=
X-Google-Smtp-Source: AGHT+IECPH2rPNEngYaptz8az9RCf0DGVDSV9yQZXRuXqYNi7ULAbIWTZHPkY18jUas/hbL9JhkWQw==
X-Received: by 2002:a2e:9e54:0:b0:2f1:59ed:879d with SMTP id 38308e7fff4ca-2f159ed8c49mr1027341fa.1.1722508838095;
        Thu, 01 Aug 2024 03:40:38 -0700 (PDT)
Received: from [127.0.1.1] ([82.79.124.209])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4282baf2b3esm52523755e9.31.2024.08.01.03.40.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Aug 2024 03:40:37 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 01 Aug 2024 13:40:24 +0300
Subject: [PATCH v2] phy: qcom: qmp-pcie: Fix X1E80100 PCIe Gen4 PHY
 initialisation
MIME-Version: 1.0
Message-Id: <20240801-x1e80100-phy-qmp-pcie-fix-config-v2-1-cdc0f22b4169@linaro.org>
X-B4-Tracking: v=1; b=H4sIABdmq2YC/4WNyw6CMBBFf4XM2jFt5enK/zAsoExhEm1rawiE8
 O9WEtcuz73JORtECkwRrtkGgWaO7GwCdcpAT50dCXlIDEqoXFSqwEVSLaQQ6KcVX0+PXjOh4QW
 1s4ZH7Jp+0FVhhsYQJI0PlN4jcW8TTxzfLqxHcZbf9Scv/8tniRL7omyMuGih8/r2YNsFd3Zhh
 Hbf9w8JpvNs0QAAAA==
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Johan Hovold <johan@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=5404; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=M1MwZJsJg3ocK9dUEdbDtelKoL+7vXnSEEpnHzOOIQY=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBmq2Ye9jFsZ3tjGrw8npeIEgnf1Ad+JayNxEaGK
 oSMRXe8zYWJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZqtmHgAKCRAbX0TJAJUV
 VgTwD/96r7eMEQFuD+IK1grYgAmlFFADBvbOTYVOmMnvo07NAhtdrh0jnNIFB7hVvzcnMVAHoCe
 /I2nyiKYTlbmb35nbUO0z/hY4QEpRM7DxfQiKjfFi1X+wUtcw5/m/ln7OM/jtKVypYWLxHpHmXe
 Cy2A1WIRY6uXZft8mvurbwetoIujzXGtJN9d+iGQ+MD3yLpG9/vW3iFu1yQP/GodbuMkd69DH7X
 EiwyJDcUXzSRyrqgKvOwUqdJSbGYVff2nTEG6s25Uyt/knLrM1arWFbSNNP0b4j0TRlx7d3vgBb
 hW7BtZYIZ36YfKpAC/xBxiRV0irR/v4rELWN0aY+1NX6WD6KfKEv88pC+yd5nIOhXzmTtZxnf9L
 44215ryw+Cn/S6vj1tFftz4Mbxx7g3mF5M/04oyAthp/H5Z67xFsaFJ5/7sfUuc4yZVU5PZj8Pj
 EaVnjpzO0amLo8xepBF435JSaN1+WKQCRSA9LW1rbGOdYOJdAiGHA+ynS62ZdJo5f5PQ461oZwm
 dOKXLdIL208s+8d111vJZe/HpK9XPIwSmGONTrgBNSnwp9c8G85EX5rlxynz8NoEVoQnGXMg0Zp
 peIQN06YqB+iBfb8Zny7gvfZnnQeB2sjx9nEQlW9YWBbLTvZKWPRiz4hj5iUM9m+W8l5E7n18oj
 JEHM1LoX9RAmcBg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_034040_430755_F4CE6B6B 
X-CRM114-Status: UNSURE (   8.14  )
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

Update the PCIe Gen4 PHY init sequence with the latest based on internal
Qualcomm documentation.

Fixes: 606060ce8fd0 ("phy: qcom-qmp-pcie: Add support for X1E80100 g3x2 and g4x2 PCIE")
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Changes in v2:
- Changed subject line as requested by Vinod (on a ML, different patch).
- Changed to lower case hex all new values.
- Link to v1: https://lore.kernel.org/r/20240726-x1e80100-phy-qmp-pcie-fix-config-v1-1-b569f03c0c48@linaro.org
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 23 ++++++++++++++++-------
 1 file changed, 16 insertions(+), 7 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 5b36cc7ac78b..06cd9787e700 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1245,8 +1245,8 @@ static const struct qmp_phy_init_tbl x1e80100_qmp_gen4x2_pcie_serdes_tbl[] = {
 static const struct qmp_phy_init_tbl x1e80100_qmp_gen4x2_pcie_ln_shrd_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V6_LN_SHRD_RXCLK_DIV2_CTRL, 0x01),
 	QMP_PHY_INIT_CFG(QSERDES_V6_LN_SHRD_DFE_DAC_ENABLE1, 0x88),
-	QMP_PHY_INIT_CFG(QSERDES_V6_LN_SHRD_TX_ADAPT_POST_THRESH1, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_V6_LN_SHRD_TX_ADAPT_POST_THRESH2, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V6_LN_SHRD_TX_ADAPT_POST_THRESH1, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V6_LN_SHRD_TX_ADAPT_POST_THRESH2, 0x0d),
 	QMP_PHY_INIT_CFG(QSERDES_V6_LN_SHRD_RX_MODE_RATE_0_1_B0, 0xd4),
 	QMP_PHY_INIT_CFG(QSERDES_V6_LN_SHRD_RX_MODE_RATE_0_1_B1, 0x12),
 	QMP_PHY_INIT_CFG(QSERDES_V6_LN_SHRD_RX_MODE_RATE_0_1_B2, 0xdb),
@@ -1263,6 +1263,7 @@ static const struct qmp_phy_init_tbl x1e80100_qmp_gen4x2_pcie_ln_shrd_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V6_LN_SHRD_RX_MARG_COARSE_THRESH4_RATE3, 0x1f),
 	QMP_PHY_INIT_CFG(QSERDES_V6_LN_SHRD_RX_MARG_COARSE_THRESH5_RATE3, 0x1f),
 	QMP_PHY_INIT_CFG(QSERDES_V6_LN_SHRD_RX_MARG_COARSE_THRESH6_RATE3, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V6_LN_SHRD_RX_SUMMER_CAL_SPD_MODE, 0x5b),
 };
 
 static const struct qmp_phy_init_tbl x1e80100_qmp_gen4x2_pcie_tx_tbl[] = {
@@ -1286,12 +1287,15 @@ static const struct qmp_phy_init_tbl x1e80100_qmp_gen4x2_pcie_rx_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_DFE_1, 0x01),
 	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_DFE_2, 0x01),
 	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_DFE_3, 0x45),
-	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_VGA_CAL_MAN_VAL, 0x0b),
+	QMP_PHY_INIT_CFG_LANE(QSERDES_V6_20_RX_VGA_CAL_MAN_VAL, 0x0a, 1),
+	QMP_PHY_INIT_CFG_LANE(QSERDES_V6_20_RX_VGA_CAL_MAN_VAL, 0x0b, 2),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_VGA_CAL_CNTRL1, 0x00),
 	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_GM_CAL, 0x0d),
 	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_EQU_ADAPTOR_CNTRL4, 0x0b),
 	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_SIGDET_ENABLES, 0x1c),
 	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_PHPRE_CTRL, 0x20),
-	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_DFE_CTLE_POST_CAL_OFFSET, 0x38),
+	QMP_PHY_INIT_CFG_LANE(QSERDES_V6_20_RX_DFE_CTLE_POST_CAL_OFFSET, 0x3a, 1),
+	QMP_PHY_INIT_CFG_LANE(QSERDES_V6_20_RX_DFE_CTLE_POST_CAL_OFFSET, 0x38, 2),
 	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_Q_PI_INTRINSIC_BIAS_RATE32, 0x39),
 	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_MODE_RATE2_B0, 0x14),
 	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_MODE_RATE2_B1, 0xb3),
@@ -1307,6 +1311,7 @@ static const struct qmp_phy_init_tbl x1e80100_qmp_gen4x2_pcie_rx_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_MODE_RATE3_B4, 0x4b),
 	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_MODE_RATE3_B5, 0x76),
 	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_MODE_RATE3_B6, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_TX_ADPT_CTRL, 0x10),
 };
 
 static const struct qmp_phy_init_tbl x1e80100_qmp_gen4x2_pcie_pcs_tbl[] = {
@@ -1314,6 +1319,8 @@ static const struct qmp_phy_init_tbl x1e80100_qmp_gen4x2_pcie_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V6_20_PCS_RX_SIGDET_LVL, 0xcc),
 	QMP_PHY_INIT_CFG(QPHY_V6_20_PCS_EQ_CONFIG4, 0x00),
 	QMP_PHY_INIT_CFG(QPHY_V6_20_PCS_EQ_CONFIG5, 0x22),
+	QMP_PHY_INIT_CFG(QPHY_V6_20_PCS_TX_RX_CONFIG1, 0x04),
+	QMP_PHY_INIT_CFG(QPHY_V6_20_PCS_TX_RX_CONFIG2, 0x02),
 };
 
 static const struct qmp_phy_init_tbl x1e80100_qmp_gen4x2_pcie_pcs_misc_tbl[] = {
@@ -1324,11 +1331,13 @@ static const struct qmp_phy_init_tbl x1e80100_qmp_gen4x2_pcie_pcs_misc_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_20_PCS_G4_PRE_GAIN, 0x2e),
 	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_20_PCS_RX_MARGINING_CONFIG1, 0x03),
 	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_20_PCS_RX_MARGINING_CONFIG3, 0x28),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_20_PCS_G3_RXEQEVAL_TIME, 0x27),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_20_PCS_G4_RXEQEVAL_TIME, 0x27),
 	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_20_PCS_TX_RX_CONFIG, 0xc0),
 	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_20_PCS_POWER_STATE_CONFIG2, 0x1d),
-	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_20_PCS_RX_MARGINING_CONFIG5, 0x0f),
-	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_20_PCS_G3_FOM_EQ_CONFIG5, 0xf2),
-	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_20_PCS_G4_FOM_EQ_CONFIG5, 0xf2),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_20_PCS_RX_MARGINING_CONFIG5, 0x18),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_20_PCS_G3_FOM_EQ_CONFIG5, 0x7a),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_20_PCS_G4_FOM_EQ_CONFIG5, 0x8a),
 };
 
 static const struct qmp_phy_init_tbl sm8250_qmp_pcie_serdes_tbl[] = {

---
base-commit: 8400291e289ee6b2bf9779ff1c83a291501f017b
change-id: 20240725-x1e80100-phy-qmp-pcie-fix-config-a9bdc75fd9fe

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
