Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEC0AC4321E
	for <linux-phy@archiver.kernel.org>; Mon,  5 Dec 2022 21:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=slVpuM16+9dyNkRn2xQZqSfKFvi2AT/r3kG2vqqQNWU=; b=Bw3fSoNlkIIy/f
	YhEVtqYuG+2uzEtC6yzJFIhDwiQ8lqJjVhRd4QxiiXbPnbQ9Dxn8hOtRKqAYebmi6MfVFE7wyQ5LR
	DVhqhA1g8kd1lf5Zsa8IGgvrQJfe5qpgM12CPAJGDs2t26K4STYihvyohSj7aumLjKiiEEiEYaZBY
	SeEXtB4I22H9ZsfKMMVXkHAZWEDd9+4lymhAJJP4fUMARi6fsHPtZKwgaZHE2GKMlQrvEr3EL46IA
	PGum0ygCx2iXsFm/ty2rSsS2O2ojosK8wq0k/zwoo/fJmZPbhu0irs2qioMKLKpdUBrfcdkSk/DTU
	pjt/5ZH5JXttGqjpmo2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2JNt-00AxnC-Vd; Mon, 05 Dec 2022 21:52:21 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2JNq-00Axjk-Ga
	for linux-phy@lists.infradead.org; Mon, 05 Dec 2022 21:52:20 +0000
Received: by mail-lf1-x12e.google.com with SMTP id f21so19830463lfm.9
        for <linux-phy@lists.infradead.org>; Mon, 05 Dec 2022 13:52:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=YWL38Jz9htavTQDVlFdW/bcVhtufVVr4oj0XxVls8ro=;
        b=HFSfF/BkkP0ll1pKwYsrh5YBG9UA/CEy65OcP3uJ9QCDXYc/dMeiPxeGj6qqbmk+2P
         FIr2LpkYpMaWULsmPJy/a+Td3mcrvfJjg3ykB3UKGPm9eWnBDNUhVhxxU3WWLHI5++6Q
         eeL6vIV+OVnfrfTIgndOn8FBXeXnHBz+jc77XYXc0I8gpeSzp6Ir8kQ4JA5f5bL/DOeh
         Ffzqs8BUSYLFppaqxtN+nDu46irpDqHlV/cWIIBAiqxWzscS1aSoYK1b+VUVOU4ANzah
         1K8+jqSiZa3aYg0K2QEJk7fA26E/+yhr0nz21aZ3FhprFCuqdqy/QCwpLJPj2WH+7q1z
         jTUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YWL38Jz9htavTQDVlFdW/bcVhtufVVr4oj0XxVls8ro=;
        b=wtvpKxPqzLfpMIyl44MYxLKNExxLomfrNO0gE6EwIov2D4UXTx32bv25cV0H3uGQ1h
         Q9tkHrRI3tacMvJaoCuYOoQi2LUJeZa2k9ogNDE7ddmJKus4mvdYXKWHOwNBk40oXiQx
         ZGSj4WbgOblfKIV7nWuiSgXKexyrEmv1PrErKsZ37Lriw0daBwR7C1z0JzXVXG1JAD6Y
         qMq4NWzm7zAXU6xQUl33Dnefg7MuxiwDZP+WjtnQvHCzV8Wd8hULHw+ejIRxVOj0hHA3
         z09bCdCCK+GB/9qFSprbW5L8jT6lgcfyfkUX6hb9WFUA4KeA2tB7jY8Dm2qBcFFaCQaJ
         Hq8g==
X-Gm-Message-State: ANoB5pmeBYHl0O3xBYkOQDpf14ZebveGARCN+gbz60qdAwC+GiGARs3Q
	p8lXhPy0l+GV760iB4tZ+Ter8A==
X-Google-Smtp-Source: AA0mqf5iP79DZ9YVzIymp+mc2pG7BFZIAmXvZxQz2E9Q93ONya6s3g4ndO4nB3jGGu7rpuqyfhrQzA==
X-Received: by 2002:a05:6512:3f08:b0:4b4:efcf:93b with SMTP id y8-20020a0565123f0800b004b4efcf093bmr19727647lfa.277.1670277136658;
        Mon, 05 Dec 2022 13:52:16 -0800 (PST)
Received: from [127.0.0.1] ([94.25.229.129])
        by smtp.gmail.com with ESMTPSA id m18-20020a194352000000b004b55ca53543sm1173298lfj.233.2022.12.05.13.52.15
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Dec 2022 13:52:16 -0800 (PST)
Date: Tue, 06 Dec 2022 00:52:11 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 martin.petersen@oracle.com, jejb@linux.ibm.com, andersson@kernel.org,
 vkoul@kernel.org
CC: quic_cang@quicinc.com, quic_asutoshd@quicinc.com,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
 ahalaney@redhat.com, abel.vesa@linaro.org, alim.akhtar@samsung.com,
 avri.altman@wdc.com, bvanassche@acm.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_v4_07/23=5D_phy=3A_qcom-qmp-ufs?= =?US-ASCII?Q?=3A_Add_HS_G4_mode_support_to_SM8150_SoC?=
User-Agent: K-9 Mail for Android
In-Reply-To: <20221201174328.870152-8-manivannan.sadhasivam@linaro.org>
References: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org> <20221201174328.870152-8-manivannan.sadhasivam@linaro.org>
Message-ID: <84BEB11D-127C-4156-ACA4-5BF193AFF5E7@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_135218_799713_5848FB7E 
X-CRM114-Status: UNSURE (   8.04  )
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



On 1 December 2022 20:43:12 GMT+03:00, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org> wrote:
>UFS PHY in SM8150 SoC is capable of operating at HS G4 mode. Hence, add the
>required register settings using the tables_hs_g4 struct instance.
>
>Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

>---
> drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 36 +++++++++++++++++++++++++
> 1 file changed, 36 insertions(+)
>
>diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>index 97d0baa9bac3..269f96a0f752 100644
>--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>@@ -374,6 +374,10 @@ static const struct qmp_phy_init_tbl sm8150_ufsphy_tx[] = {
> 	QMP_PHY_INIT_CFG(QSERDES_V4_TX_TRAN_DRVR_EMP_EN, 0x0c),
> };
> 
>+static const struct qmp_phy_init_tbl sm8150_ufsphy_hs_g4_tx[] = {
>+	QMP_PHY_INIT_CFG(QSERDES_V4_TX_LANE_MODE_1, 0x75),
>+};
>+
> static const struct qmp_phy_init_tbl sm8150_ufsphy_rx[] = {
> 	QMP_PHY_INIT_CFG(QSERDES_V4_RX_SIGDET_LVL, 0x24),
> 	QMP_PHY_INIT_CFG(QSERDES_V4_RX_SIGDET_CNTRL, 0x0f),
>@@ -411,6 +415,25 @@ static const struct qmp_phy_init_tbl sm8150_ufsphy_rx[] = {
> 	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_10_HIGH4, 0xb1),
> };
> 
>+static const struct qmp_phy_init_tbl sm8150_ufsphy_hs_g4_rx[] = {
>+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_SO_SATURATION_AND_ENABLE, 0x5a),
>+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_PI_CTRL2, 0x81),
>+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_FO_GAIN, 0x0e),
>+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_TERM_BW, 0x6f),
>+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_IDAC_MEASURE_TIME, 0x20),
>+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_IDAC_TSETTLE_LOW, 0x80),
>+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_IDAC_TSETTLE_HIGH, 0x01),
>+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_LOW, 0x3f),
>+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_HIGH, 0xff),
>+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_HIGH2, 0xff),
>+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_HIGH3, 0x7f),
>+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_HIGH4, 0x6c),
>+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_LOW, 0x6d),
>+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH, 0x6d),
>+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH2, 0xed),
>+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH4, 0x3c),
>+};
>+
> static const struct qmp_phy_init_tbl sm8150_ufsphy_pcs[] = {
> 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_RX_SIGDET_CTRL2, 0x6d),
> 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_TX_LARGE_AMP_DRV_LVL, 0x0a),
>@@ -421,6 +444,11 @@ static const struct qmp_phy_init_tbl sm8150_ufsphy_pcs[] = {
> 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_MULTI_LANE_CTRL1, 0x02),
> };
> 
>+static const struct qmp_phy_init_tbl sm8150_ufsphy_hs_g4_pcs[] = {
>+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_TX_LARGE_AMP_DRV_LVL, 0x10),
>+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_BIST_FIXED_PAT_CTRL, 0x0a),
>+};
>+
> static const struct qmp_phy_init_tbl sm8350_ufsphy_serdes[] = {
> 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_SYSCLK_EN_SEL, 0xd9),
> 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_HSCLK_SEL, 0x11),
>@@ -762,6 +790,14 @@ static const struct qmp_phy_cfg sm8150_ufsphy_cfg = {
> 		.serdes		= sm8150_ufsphy_hs_b_serdes,
> 		.serdes_num	= ARRAY_SIZE(sm8150_ufsphy_hs_b_serdes),
> 	},
>+	.tbls_hs_g4 = {
>+		.tx		= sm8150_ufsphy_hs_g4_tx,
>+		.tx_num		= ARRAY_SIZE(sm8150_ufsphy_hs_g4_tx),
>+		.rx		= sm8150_ufsphy_hs_g4_rx,
>+		.rx_num		= ARRAY_SIZE(sm8150_ufsphy_hs_g4_rx),
>+		.pcs		= sm8150_ufsphy_hs_g4_pcs,
>+		.pcs_num	= ARRAY_SIZE(sm8150_ufsphy_hs_g4_pcs),
>+	},
> 	.clk_list		= sdm845_ufs_phy_clk_l,
> 	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
> 	.vreg_list		= qmp_phy_vreg_l,

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
