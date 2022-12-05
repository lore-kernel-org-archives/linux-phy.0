Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF82BC4708C
	for <linux-phy@archiver.kernel.org>; Mon,  5 Dec 2022 21:52:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bi+hci2CxckHQiykNIWOoKNPpehUmyjGj13L8Ar6cj0=; b=PxDnucNe9vNdJR
	TcleM7W338VDSNphHeqgLR8M7uCxJsJ19YjOiLvpQw0OiQqn2THW2lKKdE3RTLs3JvohOppEHLug4
	wA4W5++O/h9eXMITCpdhR57y9BJOH0kOBo6nj1Y/pXL4+YDa8OHfv7ykUrZldApmO9FooBzPUiydm
	7GWyN0F7dkclTjLPZFSlTvBGPLKCeoziS2xMp/63y+v1oceoIZEgQXugLZRXXyw7layEpB1Rd+itz
	If5+8aSlE+npQ2XEeWV4hkx3szoHbsy0kVcUCDShN4FRFU6otbKrlHkZeNbikOi1t/JGsaugPMl8B
	tOOsQVwxhun4aUcxah7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2JOQ-00Ay3l-BI; Mon, 05 Dec 2022 21:52:54 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2JON-00Ay0O-45
	for linux-phy@lists.infradead.org; Mon, 05 Dec 2022 21:52:53 +0000
Received: by mail-lf1-x12c.google.com with SMTP id p8so20685663lfu.11
        for <linux-phy@lists.infradead.org>; Mon, 05 Dec 2022 13:52:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=kuK9hVAK9ivy8KVXRuGDH0nYibTFqY0DHBsRiT7wIRo=;
        b=FM1XULbh1TpfkuGS69VVSTTviriSeM0ZiCDIVa9j0F/bhk8YNgVT924odZ/AjoHTCX
         KEiA/8LhkDp4wHHH7nUfNDKmlAEVsCwzc5SAIkXEmfkiN2pdVyYRLrBk0FAA+Ln54F3z
         nkJHnl9H8k1mphts9vxrsY2fL5yAWQUDgXbKHJu9PqwyVP11BnDOsIAFhXw4osYGa6GG
         z5nISpQMr73TZ3CxdlOeS88EuAQ0OleZ1Llk3I7ZXKlHAm7TNCIxXjC1sK4tnohZhu10
         pxvce0GWhVsj1Q3bTP3dKUbLXJDuXkO1LFlE0xZB44BEjmQdtcR1E9j2LzSGQ0ZsIkt9
         EpGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kuK9hVAK9ivy8KVXRuGDH0nYibTFqY0DHBsRiT7wIRo=;
        b=zhVcklmQBSJMKAl+z6CQUe9viOGkli/qRcPJbpAlEZT/DsLzc8gBuBLdCCmC1aPKGD
         ULOvDuW1yR1g2dnitbnkBOmkNCg60MB2tQMtxZAtdGblv/1iM0rOFm+qlu2kO8d9t2Cw
         zJgSnEgvklNh2CqbXa8SDN10JUvN0rT/ues+PZYLYF/O0Tx1EYbVkJxi44wkePU+r1xA
         nkdIUbRG7KHBIy7DCd+iiIlEAr0fWn2rqVSzqRbNtlnBsCSAosG1gnNjrsUfyGIdN3JC
         VAssUS0GWWCc3+iWM7PJKiOm5nJbof3tq7FDFHMELMfPpUvtmD0FpJANDbxnl3wrdovI
         jjMQ==
X-Gm-Message-State: ANoB5pkhJ0KlKD/yLDYqqwJHfv4hIbd47fsslDRm4sqYVArNPizCmGjA
	/H/YHXAFHOLxFETGJevmy3ditfzqkhRUhkPl
X-Google-Smtp-Source: AA0mqf6krTpDWudv1bCJYy/0cg7PO9E7qQS6Zm4FAqE9X3v0jpLqT/nEm1HjHkZmindew1wtlX2vYw==
X-Received: by 2002:a05:6512:3483:b0:4a2:8836:c07d with SMTP id v3-20020a056512348300b004a28836c07dmr27045002lfr.661.1670277168837;
        Mon, 05 Dec 2022 13:52:48 -0800 (PST)
Received: from [127.0.0.1] ([94.25.229.129])
        by smtp.gmail.com with ESMTPSA id v15-20020a056512348f00b00492b0d23d24sm2247814lfr.247.2022.12.05.13.52.48
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Dec 2022 13:52:48 -0800 (PST)
Date: Tue, 06 Dec 2022 00:52:44 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 martin.petersen@oracle.com, jejb@linux.ibm.com, andersson@kernel.org,
 vkoul@kernel.org
CC: quic_cang@quicinc.com, quic_asutoshd@quicinc.com,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
 ahalaney@redhat.com, abel.vesa@linaro.org, alim.akhtar@samsung.com,
 avri.altman@wdc.com, bvanassche@acm.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_v4_08/23=5D_phy=3A_qcom-qmp-ufs?= =?US-ASCII?Q?=3A_Add_HS_G4_mode_support_to_SM8250_SoC?=
User-Agent: K-9 Mail for Android
In-Reply-To: <20221201174328.870152-9-manivannan.sadhasivam@linaro.org>
References: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org> <20221201174328.870152-9-manivannan.sadhasivam@linaro.org>
Message-ID: <AC700E4A-05D3-4735-8CCE-98F5E1DA8DD6@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_135251_202946_B4416889 
X-CRM114-Status: UNSURE (   9.14  )
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



On 1 December 2022 20:43:13 GMT+03:00, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org> wrote:
>UFS PHY in SM8250 SoC is capable of operating at HS G4 mode. Hence, add the
>required register settings using the tables_hs_g4 struct instance. This
>also requires a separate qmp_phy_cfg for SM8250 instead of reusing SM8150.
>
>Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


>---
> .../phy/qualcomm/phy-qcom-qmp-pcs-ufs-v5.h    |  1 +
> drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 62 ++++++++++++++++++-
> 2 files changed, 62 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v5.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v5.h
>index bcca23493b7e..3aa4232f84a6 100644
>--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v5.h
>+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v5.h
>@@ -13,6 +13,7 @@
> #define QPHY_V5_PCS_UFS_PLL_CNTL			0x02c
> #define QPHY_V5_PCS_UFS_TX_LARGE_AMP_DRV_LVL		0x030
> #define QPHY_V5_PCS_UFS_TX_SMALL_AMP_DRV_LVL		0x038
>+#define QPHY_V5_PCS_UFS_BIST_FIXED_PAT_CTRL		0x060
> #define QPHY_V5_PCS_UFS_TX_HSGEAR_CAPABILITY		0x074
> #define QPHY_V5_PCS_UFS_RX_HSGEAR_CAPABILITY		0x0b4
> #define QPHY_V5_PCS_UFS_DEBUG_BUS_CLKSEL		0x124
>diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>index 269f96a0f752..d5324c4e8513 100644
>--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>@@ -449,6 +449,34 @@ static const struct qmp_phy_init_tbl sm8150_ufsphy_hs_g4_pcs[] = {
> 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_BIST_FIXED_PAT_CTRL, 0x0a),
> };
> 
>+static const struct qmp_phy_init_tbl sm8250_ufsphy_hs_g4_tx[] = {
>+	QMP_PHY_INIT_CFG(QSERDES_V4_TX_LANE_MODE_1, 0xe5),
>+};
>+
>+static const struct qmp_phy_init_tbl sm8250_ufsphy_hs_g4_rx[] = {
>+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_SO_SATURATION_AND_ENABLE, 0x5a),
>+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_PI_CTRL2, 0x81),
>+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_FO_GAIN, 0x0e),
>+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_TERM_BW, 0x6f),
>+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQU_ADAPTOR_CNTRL1, 0x04),
>+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQU_ADAPTOR_CNTRL2, 0x00),
>+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQU_ADAPTOR_CNTRL3, 0x09),
>+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQU_ADAPTOR_CNTRL4, 0x07),
>+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x17),
>+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_IDAC_MEASURE_TIME, 0x20),
>+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_IDAC_TSETTLE_LOW, 0x80),
>+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_IDAC_TSETTLE_HIGH, 0x01),
>+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_LOW, 0x3f),
>+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_HIGH, 0xff),
>+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_HIGH2, 0xff),
>+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_HIGH3, 0x7f),
>+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_HIGH4, 0x2c),
>+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_LOW, 0x6d),
>+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH, 0x6d),
>+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH2, 0xed),
>+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH4, 0x3c),
>+};
>+
> static const struct qmp_phy_init_tbl sm8350_ufsphy_serdes[] = {
> 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_SYSCLK_EN_SEL, 0xd9),
> 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_HSCLK_SEL, 0x11),
>@@ -805,6 +833,38 @@ static const struct qmp_phy_cfg sm8150_ufsphy_cfg = {
> 	.regs			= sm8150_ufsphy_regs_layout,
> };
> 
>+static const struct qmp_phy_cfg sm8250_ufsphy_cfg = {
>+	.lanes			= 2,
>+
>+	.tbls = {
>+		.serdes		= sm8150_ufsphy_serdes,
>+		.serdes_num	= ARRAY_SIZE(sm8150_ufsphy_serdes),
>+		.tx		= sm8150_ufsphy_tx,
>+		.tx_num		= ARRAY_SIZE(sm8150_ufsphy_tx),
>+		.rx		= sm8150_ufsphy_rx,
>+		.rx_num		= ARRAY_SIZE(sm8150_ufsphy_rx),
>+		.pcs		= sm8150_ufsphy_pcs,
>+		.pcs_num	= ARRAY_SIZE(sm8150_ufsphy_pcs),
>+	},
>+	.tbls_hs_b = {
>+		.serdes		= sm8150_ufsphy_hs_b_serdes,
>+		.serdes_num	= ARRAY_SIZE(sm8150_ufsphy_hs_b_serdes),
>+	},
>+	.tbls_hs_g4 = {
>+		.tx		= sm8250_ufsphy_hs_g4_tx,
>+		.tx_num		= ARRAY_SIZE(sm8250_ufsphy_hs_g4_tx),
>+		.rx		= sm8250_ufsphy_hs_g4_rx,
>+		.rx_num		= ARRAY_SIZE(sm8250_ufsphy_hs_g4_rx),
>+		.pcs		= sm8150_ufsphy_hs_g4_pcs,
>+		.pcs_num	= ARRAY_SIZE(sm8150_ufsphy_hs_g4_pcs),
>+	},
>+	.clk_list		= sdm845_ufs_phy_clk_l,
>+	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
>+	.vreg_list		= qmp_phy_vreg_l,
>+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
>+	.regs			= sm8150_ufsphy_regs_layout,
>+};
>+
> static const struct qmp_phy_cfg sm8350_ufsphy_cfg = {
> 	.lanes			= 2,
> 
>@@ -1297,7 +1357,7 @@ static const struct of_device_id qmp_ufs_of_match_table[] = {
> 		.data = &sm8150_ufsphy_cfg,
> 	}, {
> 		.compatible = "qcom,sm8250-qmp-ufs-phy",
>-		.data = &sm8150_ufsphy_cfg,
>+		.data = &sm8250_ufsphy_cfg,
> 	}, {
> 		.compatible = "qcom,sm8350-qmp-ufs-phy",
> 		.data = &sm8350_ufsphy_cfg,

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
