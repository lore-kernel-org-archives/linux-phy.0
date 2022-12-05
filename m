Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCCB8C4321E
	for <linux-phy@archiver.kernel.org>; Mon,  5 Dec 2022 21:55:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iztj189Ic/ACOKDCbghqoS4nuNKll44inVlnGHcAIyo=; b=NSzfZnaZxqE68E
	TNXfW1sQOgsGnftaAOW0jlnQqQ2Ty4EUzJZMmZBp26DarplOaiN53Z8AZEbDK0TB6MiVnZ9knQE9v
	RsULxIZ/CbJGa7j0AALFLla4c9feKjdX5cUtDvw4uyepPtfF/v/tnDpkyLbkQkAgznbF26kOD9yvM
	UJ1CAQRiLGqnptAUb1toBIWLz1AbUT7I2jEIMvI+dsldK8W/7AasfEmEK9OSjGld227/3nRzOu8oa
	Y/8LkGmt2iZu3AiBI+SOQcaw6dfCP0ZElFtIzEEgoDljHGOWyMATfpPn3BZqtBj1niLnuT1FQkRRf
	YxQiEaaEqKkHqjLYWIrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2JR7-00Azak-9j; Mon, 05 Dec 2022 21:55:41 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2JR5-00AzZg-8J
	for linux-phy@lists.infradead.org; Mon, 05 Dec 2022 21:55:40 +0000
Received: by mail-lf1-x129.google.com with SMTP id b13so9787591lfo.3
        for <linux-phy@lists.infradead.org>; Mon, 05 Dec 2022 13:55:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=IYiXc3taqf3OqgKX8G3ZmQD8ADNe5yBaMSKzXtc0OqI=;
        b=SMgQKy8n3TTVSyAcOapLk++OS+iAeyaN+5cH/F7kNHQV5SL/prmMjWWwJqcitjqO7T
         Z7/FLCKlrTa93GdDv5wN97xxWwFoEprCdwKzQrmhd3WC2Ofys4xXk1p1l+ugH40FMAFE
         RZQqE3xL3bv43b87qTHEIkPj6+G/EgPWUySEbotpbKMhYsqHRFHkczzZO3XY8AaYwAQ2
         3rqb/6+mQpCX5jxbtjwydy+DOPCg6AKMCgkvBijqDO26G93Lrw09h9wl5LETDI0wzKA2
         oEYMzVEGcWLTgqMcrKM68FFaJtR5NYcnxyGgm8pXd4iRB6VlIcrhuZywEYbaFbH1yR00
         QhCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IYiXc3taqf3OqgKX8G3ZmQD8ADNe5yBaMSKzXtc0OqI=;
        b=Y1YS3H6Ny2Q3Y6LVvbF0OYCy7KIGWMFsTjgEZLDQEn5L9uFZDOc679WpX/fX2vb5iN
         CheaPBfVuV5TiENOJDfZ1p66DDkkgyNg6ALbnYdAZQylpQPLBWDlZN09YZI4u0GYCBTR
         ab55R466GY8i+wMYQOrQyZLKVPdTRY7VwWZAbEKJH6suhlrNjNGGfMZMnYXfGkeElEQ+
         RQnjT/AOCvI1Pn1lNLxAXeHSkZahNIq/vxymUWyvJMQhuAVDbzQQRI8MXyYBT51cDFhh
         R5fhC7dMgIn14V1CuWh8qXjaSXrlElviQ0EW/GNUZoubH/6gk253HuGtY+GOem66wH1V
         iBmQ==
X-Gm-Message-State: ANoB5pnt6g6tNXA6g4/HHiToZQJHvo+q2zMfaFF19qYWLtM2i1ou0Xty
	nm7wplh06aUMYXOjtTWDB7BMUK/y6oy3gvca
X-Google-Smtp-Source: AA0mqf4oBbBb6gVe51gRGsXHv3lwQC3IykjlDmFr9izuKScYSa1W+5PArG3TfWQQG9q4PJJ/D23IHA==
X-Received: by 2002:a05:6512:14f:b0:4b5:8504:7070 with SMTP id m15-20020a056512014f00b004b585047070mr217183lfo.304.1670277337023;
        Mon, 05 Dec 2022 13:55:37 -0800 (PST)
Received: from [127.0.0.1] ([94.25.229.129])
        by smtp.gmail.com with ESMTPSA id o6-20020ac25e26000000b00492e3a8366esm2249627lfg.9.2022.12.05.13.55.36
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Dec 2022 13:55:36 -0800 (PST)
Date: Tue, 06 Dec 2022 00:55:32 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 martin.petersen@oracle.com, jejb@linux.ibm.com, andersson@kernel.org,
 vkoul@kernel.org
CC: quic_cang@quicinc.com, quic_asutoshd@quicinc.com,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
 ahalaney@redhat.com, abel.vesa@linaro.org, alim.akhtar@samsung.com,
 avri.altman@wdc.com, bvanassche@acm.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_v4_10/23=5D_phy=3A_qcom-qmp-ufs?= =?US-ASCII?Q?=3A_Add_HS_G4_mode_support_to_SM8350_SoC?=
User-Agent: K-9 Mail for Android
In-Reply-To: <20221201174328.870152-11-manivannan.sadhasivam@linaro.org>
References: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org> <20221201174328.870152-11-manivannan.sadhasivam@linaro.org>
Message-ID: <A94528A7-01B3-473D-A5D5-6FA2FED00CAD@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_135539_325210_EEC5338D 
X-CRM114-Status: UNSURE (   7.93  )
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



On 1 December 2022 20:43:15 GMT+03:00, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org> wrote:
>UFS PHY in SM8350 SoC is capable of operating at HS G4 mode. Hence, add the
>required register settings using the tables_hs_g4 struct instance.


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

>
>Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>---
> drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 36 +++++++++++++++++++++++++
> 1 file changed, 36 insertions(+)
>
>diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>index 6c7c6a06fe3b..75e55c4181c9 100644
>--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>@@ -571,6 +571,34 @@ static const struct qmp_phy_init_tbl sm8350_ufsphy_pcs[] = {
> 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_UFS_MULTI_LANE_CTRL1, 0x02),
> };
> 
>+static const struct qmp_phy_init_tbl sm8350_ufsphy_g4_tx[] = {
>+	QMP_PHY_INIT_CFG(QSERDES_V5_TX_LANE_MODE_1, 0xe5),
>+};
>+
>+static const struct qmp_phy_init_tbl sm8350_ufsphy_g4_rx[] = {
>+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_UCDR_PI_CTRL2, 0x81),
>+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_TERM_BW, 0x6f),
>+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_EQU_ADAPTOR_CNTRL2, 0x00),
>+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_EQU_ADAPTOR_CNTRL3, 0x4a),
>+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_EQU_ADAPTOR_CNTRL4, 0x0a),
>+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_IDAC_MEASURE_TIME, 0x20),
>+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_IDAC_TSETTLE_LOW, 0x80),
>+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_IDAC_TSETTLE_HIGH, 0x01),
>+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_00_LOW, 0xbf),
>+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_00_HIGH, 0xbf),
>+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_00_HIGH2, 0x7f),
>+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_00_HIGH3, 0x7f),
>+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_00_HIGH4, 0x2d),
>+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_01_LOW, 0x6d),
>+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_01_HIGH, 0x6d),
>+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_01_HIGH2, 0xed),
>+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_01_HIGH4, 0x3c),
>+};
>+
>+static const struct qmp_phy_init_tbl sm8350_ufsphy_g4_pcs[] = {
>+	QMP_PHY_INIT_CFG(QPHY_V5_PCS_UFS_BIST_FIXED_PAT_CTRL, 0x0a),
>+};
>+
> struct qmp_ufs_offsets {
> 	u16 serdes;
> 	u16 pcs;
>@@ -875,6 +903,14 @@ static const struct qmp_phy_cfg sm8350_ufsphy_cfg = {
> 		.serdes		= sm8350_ufsphy_hs_b_serdes,
> 		.serdes_num	= ARRAY_SIZE(sm8350_ufsphy_hs_b_serdes),
> 	},
>+	.tbls_hs_g4 = {
>+		.tx		= sm8350_ufsphy_g4_tx,
>+		.tx_num		= ARRAY_SIZE(sm8350_ufsphy_g4_tx),
>+		.rx		= sm8350_ufsphy_g4_rx,
>+		.rx_num		= ARRAY_SIZE(sm8350_ufsphy_g4_rx),
>+		.pcs		= sm8350_ufsphy_g4_pcs,
>+		.pcs_num	= ARRAY_SIZE(sm8350_ufsphy_g4_pcs),
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
