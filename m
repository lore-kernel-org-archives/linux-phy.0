Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8549AC3DA63
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jul 2024 07:17:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uFM2dSh7cZyduimj81cSk5NtJl7GwJ6auOTKkvUN/9s=; b=dan7J4dpl55QJQ
	tKh7TbINypjd+wbZ/vQSU8EhgqIuD+cjd9HdpR0ZuZwX0OLFTW8Gyid/AWJ3Nh+jziwDAokTstD9+
	8sR7Lsp1okntiTODm7bwObhREcLt1pH5faMO1GmaRzw6ztfXHDXeMiTKqI0bodnhrrfmd4Nq8wL2k
	Ho+QS+/3ca+kzE9XQaPOERRBNlPj15B4CCB60MUmHhm/3Uf3QTt79c1uXi9GgkUZ9B1DWBrlR3Y7/
	b9PFIJrS9cVgepTHkyG6nC+irXI84AfEUiw7LV3Pf+sg/0AsRi3G61LnlnmqyYmCaEGdXOjdEbnCH
	Ahn+3V0+HJGxDA3fNKxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXFCP-000000039k0-3SBF;
	Fri, 26 Jul 2024 07:17:09 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXFCM-000000039j9-2LoH
	for linux-phy@lists.infradead.org;
	Fri, 26 Jul 2024 07:17:07 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-427b1d4da32so15547355e9.0
        for <linux-phy@lists.infradead.org>; Fri, 26 Jul 2024 00:17:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721978224; x=1722583024; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=f5fZc0Z1BPfgBmbUxSwFiphndMv9OlBc2qr6if08fJ8=;
        b=A6nTaXiHfl5QIVjPWvR6p3adzVAN1MbCTT7pw26rvhDCS9s5QYkp+/ZwY9DlzpKzUp
         6Ds1H3aQIMbOvf7XnKZWzbAFIM9HlYFLqCHGxskStiut6ZeTH5Ojzo0EiDBZMBVg6Lbe
         K2NJUyJDhYU2di5uK+s7AmtCk3q+jgT8m0gos7gSei/nUxHXQW4buZKIE+reoJKKBPs7
         g1QJb09IKB2F90TpXo3v5Y2b/MBTbcQIatOog4NDQHR/YhqI+MH8YLdJZFWJauMCgSHr
         Ypq9oafJquFkh486VhF9VHlu+akg5Yf/rxz917yHqNOYNFfpT9bDPf/Z+6N6O7rxjYLa
         6c8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721978224; x=1722583024;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=f5fZc0Z1BPfgBmbUxSwFiphndMv9OlBc2qr6if08fJ8=;
        b=uDh+44zR4zN/KDeSByYntO4EwdS4fKrFdAW1VyfJdnjgUxhQFlAaXLYkCbQTDiqvC/
         S1G4GvigKcrAWRtwoCyy5Ccu1yCKjmFxi7mFwY4mbuZ+ArzVM3ur4vKlrtmH7NCruxD+
         TUg2dkd03YDqmhpwZb/vvKbpvUexjK48r7irAmsBDb+Hdnmn+Iw+H2yVdDbboCViQ0cg
         FVArgi+W7AVnmUYtQn+M9L3P07QkgV+XP7NI/4+LqaaOuNWE3wYAvFaHQEt6Zdxtw+sZ
         nSPWIHYb0xbHhD3RZmHSw4i6iW+DxgPr1N6eyXVMm3TXdrx8fsInpTcTN/ZJQp9KSThJ
         uWzg==
X-Forwarded-Encrypted: i=1; AJvYcCUtHA+o67gcrbYhC77HbX4pcCLMjOisY3eEeoGzq0qGcKc8CUF2JyIayVrwewJdbXVEMzKf/U+wKRWCFEw6dU1bI2hngz96ICt1NpR/vQ==
X-Gm-Message-State: AOJu0Yz5wBDMp98u533qOpd9N/6/Cq4t6HYpXEkxarmI8JzEpy+IdT+p
	GhY3rYQNgHDB0muo+4xsuNvzuIjJY0uW0ZqagYewvOpnPk8kNsWv1P8f1rPbdBnYJ4/zHB+qN+W
	1
X-Google-Smtp-Source: AGHT+IHmUYcCHoBWim6hLPveQGEcMSW+Ez+euODuPwLymBdFGWqWwJg4HKqug+jFC6v9z6Jn9sZeVA==
X-Received: by 2002:a05:600c:3c8f:b0:426:5cc7:82f with SMTP id 5b1f17b1804b1-42803b43d7fmr36330175e9.13.1721978223535;
        Fri, 26 Jul 2024 00:17:03 -0700 (PDT)
Received: from [127.0.1.1] ([82.79.124.209])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-427f9359422sm109096335e9.10.2024.07.26.00.17.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jul 2024 00:17:03 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Fri, 26 Jul 2024 10:16:56 +0300
Subject: [PATCH] phy: qcom-qmp-pcie: Fix X1E80100 PCIe Gen4 PHY
 initialisation
MIME-Version: 1.0
Message-Id: <20240726-x1e80100-phy-qmp-pcie-fix-config-v1-1-b569f03c0c48@linaro.org>
X-B4-Tracking: v=1; b=H4sIAGdNo2YC/x2NywqAIBAAfyX23MIqRY9fiQ6la+0hM4Uoon9PO
 g4DMw8kjsIJ+uKByKck2X0GVRZg1skvjGIzgyZdUaNrvBS3pIgwrDceW8BghNHJhWb3Thacutm
 apna2cww5EyJn+y+G8X0/JtDbFHIAAAA=
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Johan Hovold <johan@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=5152; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=1Nvs/8Kt+upgOyjXRd8HbkEzugVKCAjoIpWCWBKxlWk=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBmo01pxKZ5wvkYHH6ICmnpqaZVZxnCO3YKe4DfU
 O2DhkxoYPWJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZqNNaQAKCRAbX0TJAJUV
 Vkl0D/0V28qaDgycM1xGtsm+T8qpFarPqqpb6VhqZ+kHgYvlaO5w3lFJQBsI8p6h60koXJP3p5R
 DgroXWfQbRD/Xl791JVXfr11OAUa2lx9Yh4jEzVRNXjUedX0nR5A6wFSRJpBWthrv37bFvfz+MH
 6N8CG9qOcA2qwShoBx+tOaHHsD4OtoLhMtrmZGCtPgryafOzxx2+EDewG1mNu4cjlmY/XcQexv1
 4L9MmsyI5uLuuFkwzVMoNjPLbY37d8EYH0UN1/HODWiULyXWRPqFlDW/Qc9jNll/Na5V4XSmTFT
 BbZmck3/CRJRp0ZMxnUZWAEJWdfhSrdLrXWTAp9YjdXtNSpeReVsCivJIw82PD0ZJRuYspzH84J
 ThyR7+gTUKQOzkaC7lxVXPrY+r7lyUD/CFmsNYeGdo2+X9xPRhnxK5K/3XzbR/QoSWCDFspzh8g
 v5Mzbrur6pGaezgigY60nrxB2klwl0mgdJoNnHRUoZf+VVbAciqwINaNXVVEBLN+mspDJjnP/ra
 LJSz9r6OOBvmQe5/y9I1K9+u32TfIvammdjAKkpjazfPxR83jy8k0249ID9ZZCkS0kfKQqIhQPi
 EshkTD2/dtI23BKgYAu7poHaM5nH+4W+fxSsOC3LiKSelg8BA5EF3b1lepGMh6fMAhW41+OCTOG
 wLxT0MvqZE+etcA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240726_001706_642981_3F583563 
X-CRM114-Status: UNSURE (   7.63  )
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
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 23 ++++++++++++++++-------
 1 file changed, 16 insertions(+), 7 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 5b36cc7ac78b..8b624afbf014 100644
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
+	QMP_PHY_INIT_CFG_LANE(QSERDES_V6_20_RX_VGA_CAL_MAN_VAL, 0x0A, 1),
+	QMP_PHY_INIT_CFG_LANE(QSERDES_V6_20_RX_VGA_CAL_MAN_VAL, 0x0B, 2),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_VGA_CAL_CNTRL1, 0x00),
 	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_GM_CAL, 0x0d),
 	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_EQU_ADAPTOR_CNTRL4, 0x0b),
 	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_SIGDET_ENABLES, 0x1c),
 	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_PHPRE_CTRL, 0x20),
-	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_DFE_CTLE_POST_CAL_OFFSET, 0x38),
+	QMP_PHY_INIT_CFG_LANE(QSERDES_V6_20_RX_DFE_CTLE_POST_CAL_OFFSET, 0x3A, 1),
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
base-commit: 864b1099d16fc7e332c3ad7823058c65f890486c
change-id: 20240725-x1e80100-phy-qmp-pcie-fix-config-a9bdc75fd9fe

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
