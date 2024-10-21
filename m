Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEFD7D0E6EC
	for <linux-phy@archiver.kernel.org>; Mon, 21 Oct 2024 10:33:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BuqYFF9HeaUosVSnMdCoSSNYZPkLqSULm1D8lW/0e+g=; b=Ls3N2AkQouv4su
	k9WxCYepquN66ml3ppBhFg1GyvQfcEVhlJoratmTlqifTG9CPMmOlhk/22ReL52HVCGBE1l5zZH+x
	mJ7Ah2ZYZhtexl0WzIKi3Mm3pzh44IUX5+8ZYXmpS0mAuzr1qGDwSiapSvhZa0Kpv8pP3ICizS3SI
	FLBKLhOPN/SEkdzllFJR49im++sC/QBkmTmH+nEUn3NbmaQpD34ela+FUBTOb/uDPns//0X37b8gv
	mlnk7DSWeHIJc2m0cyDLVA1ijs9O+FlHK9nFVSqFUJoVOhCde3AWjF0Mjl8YmezbUMZ9+C47A6Fti
	UWWYDbia8BdCtCMRsiiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2piz-00000006u08-1XSa;
	Mon, 21 Oct 2024 10:33:21 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2piw-00000006tyA-3vFl
	for linux-phy@lists.infradead.org;
	Mon, 21 Oct 2024 10:33:20 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-53a097aa3daso3983681e87.1
        for <linux-phy@lists.infradead.org>; Mon, 21 Oct 2024 03:33:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729506797; x=1730111597; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9cIwzL0K2kIq75CpSDdHiy1Pc4SlB91WF+5ajJYiJIs=;
        b=rz9rXDZL041KQojTZ5mKZkcC89FO9PgidqLTdmLjgphbN9d95SUT0mtJCzGWKCp+yt
         oTryfxeGJdLcDXn0an6invIkbZbh+ecOCjAJDPROx2TMwg2Ag1+wmY+NeaXix/+Wy4nN
         NhTxJEZsTb4Utk7N4+qSJSaFKtR5cYYily9ivYMBxioIQ8GwBjNBqOfaO+zV9kAYagEd
         V4pqZpIPEiKdc4Jwi/wsia5LmE44ItFEG8zzx+0cJPN77atEIuViJjqVRuerOYTzxw51
         g1JElbJ9iKFTzqeJRYo2uFx1yBF4mfraiHGPqZfSQ+CunF0W7D6pyIm7RgkqyiodocWT
         GpGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729506797; x=1730111597;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9cIwzL0K2kIq75CpSDdHiy1Pc4SlB91WF+5ajJYiJIs=;
        b=QN+fU5BKuDKXWyO3bHhDw28HUsYzqY1GkKDNN8Hcsl1DYBKEE2aIfJfJN0c/AgHDfS
         NI+3jiloX6SKOfEL9cGWhXo78VE7vTvoL1gOShbvpH+C9ZFlGeiEo7nAl8AXGpcBew+D
         8M34D+nFkDsBBX1zFEO5KFW/sLiMN7XwH0Bn47DQ1oQOKoDjFI881/fQwqNhx/aOfz7c
         MFqy9tyehlehRv2y0FgH5qoAsHggngFkraXNVb73dlPrT6TkLZCh7/aIPTeaOzFzR8fm
         lVXtDfdFGej7nnCvh8x54aR/FYNBN3cH01KAUl05cHOMleLYP0z1VAJWz6WStsWhNJYt
         5Zyg==
X-Forwarded-Encrypted: i=1; AJvYcCUZJTPGNPhGAoBjZB5GVVunzh8P81FswT2esZC9ACpLNw13sXCRGHTAN4iKivXHRojO/KcOXnI778g=@lists.infradead.org
X-Gm-Message-State: AOJu0YzDwnX3njQXA6IZ9ojD/jp8rro/Qd/y1zdfGcV8N/GDoqXrO20z
	N5CHmB16uQerRe1NtYAL3UPJgy241ZURSyy6NNRmdlRMqYkmgHXCLYdzXWasQGM=
X-Google-Smtp-Source: AGHT+IGkLVwGKVNLsrU47vdHVci1UjDACSX4iBuSjnSGYZr5h4Rm5ZuOKUr2K1varUs7ScdscwBAxw==
X-Received: by 2002:a05:6512:1116:b0:539:9155:e8b8 with SMTP id 2adb3069b0e04-53a1520be63mr6123647e87.6.1729506796826;
        Mon, 21 Oct 2024 03:33:16 -0700 (PDT)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00-70b-e6fc-b322-6a1b.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:70b:e6fc:b322:6a1b])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a22420015sm454132e87.123.2024.10.21.03.33.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2024 03:33:15 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 21 Oct 2024 13:33:09 +0300
Subject: [PATCH v2 3/6] phy: qualcomm: qmp-combo: add support for SAR2130P
MIME-Version: 1.0
Message-Id: <20241021-sar2130p-phys-v2-3-d883acf170f7@linaro.org>
References: <20241021-sar2130p-phys-v2-0-d883acf170f7@linaro.org>
In-Reply-To: <20241021-sar2130p-phys-v2-0-d883acf170f7@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=6677;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=iUKFYBSvSzKsZfrgB2NkQjit+ZwSHQDRfNk1DSkQ9YQ=;
 b=owEBbAKT/ZANAwAKARTbcu2+gGW4AcsmYgBnFi3lJZKYCmm5MrtieRTz0Gy7uPekuKxmFUdAP
 IVmT4HKg6qJAjIEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZxYt5QAKCRAU23LtvoBl
 uEeQD/iUbOaPMhGaBCCLhM6Ds8gmL4/RpbBo6AW9fMt5OWST1sJqTtXyxnGtUiD0tl5NXFT0RJ9
 hpeAocn79AhU1g/ZbqdJ4mYIgWVE1ythYPC/PXHkcq3pWCGbLCvgJb0kclvSjvn9nS1zzyI7lIj
 +fBY9qmXDsjwfRzJpshXAVUwKqST0cZAHRwYCXYJ/nSsiE7LL81KhKC9Jhr3AchRSo4TdYogg4Z
 zp5sE0a9g36scsVEC72Po6UgqHkpG3d5YNNzavp8Vg0Z2tmA+/KcO9w/7wBJVe7ZgnIUsXbGuqg
 K1fjXIyVpm94yww0bOq+FSdgIq7L9+Kmem/lKbipSch33A8s+tYMqz+ut5YZwTD5cvwdxrpoCHQ
 ZFiwakF52cUhcN7DID/tQ+tgQXPysz9rwzsne+cop7DCnvmPExJxCX7PNcOMPB/MmgKj5CHlr7c
 OCk6Yb4UJZml6BwZe6jTQpWpKdC1kzDfYvl+WLqZ9OMKC1HQ0wRoiMBOXh68rm+0dSqo2eGgYGB
 HQiTHXlB40TaMNGxnoM4MpPe+1MWRboEvFH8byynmwhZ2aoOkV23DNDKqaLgMo2oHa5WicH3TjC
 jmpYJSe/0ZFlaaaF1B+wDftbATkpMm+LVJUNzMq5ZymXOdBmDQOI5Zs3fkPBLxvd1vBaym87SQR
 kvH2ANVZi3aJo
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_033319_016128_96AB36F3 
X-CRM114-Status: GOOD (  11.10  )
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

Extend the USB+DP combo QMP PHY driver to support the SAR2130P platform.
It mosly follows the SM8550 QMP PHY, but the QSERDES programming
differs, most likely because of the parent clock rate differences.

NOTE: The DP part wasn't yet tested, but it is not possible to support
just the USB part of the PHY. DP part might require additional fixes
later.

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 100 ++++++++++++++++++++++++++++++
 1 file changed, 100 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 643045c9024eaa5de81f64ecfd10ff8845faf120..05ec1a0226460d23873db1dfe9dcbc6ce1953b2e 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -400,6 +400,57 @@ static const struct qmp_phy_init_tbl qmp_v3_usb3_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RXEQTRAINING_RUN_TIME, 0x13),
 };
 
+static const struct qmp_phy_init_tbl sar2130p_usb3_serdes_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_STEP_SIZE1_MODE1, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_STEP_SIZE2_MODE1, 0x0e),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE1, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE1, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CORECLK_DIV_MODE1, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE1, 0x2e),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE1, 0x82),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE1, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MSB_MODE1, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START1_MODE1, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START2_MODE1, 0xd5),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START3_MODE1, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_SEL_1, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE1_MODE1, 0x25),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE2_MODE1, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE1_MODE1, 0xb7),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE2_MODE1, 0x1e),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE1_MODE0, 0xb7),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE2_MODE0, 0x1e),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_STEP_SIZE1_MODE0, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_STEP_SIZE2_MODE0, 0x0e),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE0, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE0, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE0, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE0, 0x12),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE0, 0x34),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE0, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MSB_MODE0, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START1_MODE0, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START2_MODE0, 0xd5),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START3_MODE0, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE1_MODE0, 0x25),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE2_MODE0, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_BG_TIMER, 0x0e),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_EN_CENTER, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_PER1, 0x31),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_PER2, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SYSCLK_BUF_ENABLE, 0x0c),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SYSCLK_EN_SEL, 0x1a),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP_CFG, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_MAP, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CORE_CLK_EN, 0x20),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_CONFIG_1, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_AUTO_GAIN_ADJ_CTRL_1, 0xb6),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_AUTO_GAIN_ADJ_CTRL_2, 0x4b),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_AUTO_GAIN_ADJ_CTRL_3, 0x37),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_ADDITIONAL_MISC, 0x0c),
+};
+
 static const struct qmp_phy_init_tbl sm6350_usb3_rx_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_FASTLOCK_FO_GAIN, 0x0b),
 	QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_EQU_ADAPTOR_CNTRL2, 0x0f),
@@ -1730,6 +1781,51 @@ static const struct qmp_combo_offsets qmp_combo_offsets_v5 = {
 	.dp_dp_phy	= 0x2200,
 };
 
+static const struct qmp_phy_cfg sar2130p_usb3dpphy_cfg = {
+	.offsets		= &qmp_combo_offsets_v3,
+
+	.serdes_tbl		= sar2130p_usb3_serdes_tbl,
+	.serdes_tbl_num		= ARRAY_SIZE(sar2130p_usb3_serdes_tbl),
+	.tx_tbl			= sm8550_usb3_tx_tbl,
+	.tx_tbl_num		= ARRAY_SIZE(sm8550_usb3_tx_tbl),
+	.rx_tbl			= sm8550_usb3_rx_tbl,
+	.rx_tbl_num		= ARRAY_SIZE(sm8550_usb3_rx_tbl),
+	.pcs_tbl		= sm8550_usb3_pcs_tbl,
+	.pcs_tbl_num		= ARRAY_SIZE(sm8550_usb3_pcs_tbl),
+	.pcs_usb_tbl		= sm8550_usb3_pcs_usb_tbl,
+	.pcs_usb_tbl_num	= ARRAY_SIZE(sm8550_usb3_pcs_usb_tbl),
+
+	.dp_serdes_tbl		= qmp_v6_dp_serdes_tbl,
+	.dp_serdes_tbl_num	= ARRAY_SIZE(qmp_v6_dp_serdes_tbl),
+	.dp_tx_tbl		= qmp_v6_dp_tx_tbl,
+	.dp_tx_tbl_num		= ARRAY_SIZE(qmp_v6_dp_tx_tbl),
+
+	.serdes_tbl_rbr		= qmp_v6_dp_serdes_tbl_rbr,
+	.serdes_tbl_rbr_num	= ARRAY_SIZE(qmp_v6_dp_serdes_tbl_rbr),
+	.serdes_tbl_hbr		= qmp_v6_dp_serdes_tbl_hbr,
+	.serdes_tbl_hbr_num	= ARRAY_SIZE(qmp_v6_dp_serdes_tbl_hbr),
+	.serdes_tbl_hbr2	= qmp_v6_dp_serdes_tbl_hbr2,
+	.serdes_tbl_hbr2_num	= ARRAY_SIZE(qmp_v6_dp_serdes_tbl_hbr2),
+	.serdes_tbl_hbr3	= qmp_v6_dp_serdes_tbl_hbr3,
+	.serdes_tbl_hbr3_num	= ARRAY_SIZE(qmp_v6_dp_serdes_tbl_hbr3),
+
+	.swing_hbr_rbr		= &qmp_dp_v5_voltage_swing_hbr_rbr,
+	.pre_emphasis_hbr_rbr	= &qmp_dp_v6_pre_emphasis_hbr_rbr,
+	.swing_hbr3_hbr2	= &qmp_dp_v5_voltage_swing_hbr3_hbr2,
+	.pre_emphasis_hbr3_hbr2 = &qmp_dp_v5_pre_emphasis_hbr3_hbr2,
+
+	.dp_aux_init		= qmp_v4_dp_aux_init,
+	.configure_dp_tx	= qmp_v4_configure_dp_tx,
+	.configure_dp_phy	= qmp_v4_configure_dp_phy,
+	.calibrate_dp_phy	= qmp_v4_calibrate_dp_phy,
+
+	.regs			= qmp_v6_usb3phy_regs_layout,
+	.reset_list		= msm8996_usb3phy_reset_l,
+	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+};
+
 static const struct qmp_phy_cfg sc7180_usb3dpphy_cfg = {
 	.offsets		= &qmp_combo_offsets_v3,
 
@@ -3767,6 +3863,10 @@ static int qmp_combo_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id qmp_combo_of_match_table[] = {
+	{
+		.compatible = "qcom,sar2130p-qmp-usb3-dp-phy",
+		.data = &sar2130p_usb3dpphy_cfg,
+	},
 	{
 		.compatible = "qcom,sc7180-qmp-usb3-dp-phy",
 		.data = &sc7180_usb3dpphy_cfg,

-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
