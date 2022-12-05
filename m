Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B28B3C4321E
	for <linux-phy@archiver.kernel.org>; Mon,  5 Dec 2022 21:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2CFNHi8xRgzf5I6iG9lDDza/qCpsjOlJkDq1HkcLejE=; b=OsODh7ilhTalxV
	xYUgPYeSNncrEpEMhOSk9wUdK6+IK0nwkYgVe9CJAuM8AB72lEuew9osDSU+IJUWtlBiejbOe2lpZ
	HpQgrGtO5yklH9CTuDm1VerUlROSb5hl08UWkLxbVRGRrZQe8JRy3Iky1Xtb81GMCnJArjNNPPQdm
	sVvf23UDWv2w6LdmdbOJc3jFyqwH4nXVAkxkfzT2wUQjlJch2oovArXQ31HvLnar6CL5ikhODXJmH
	IXB3ZjE5NwmYzPyZJmMbndEulp2+B9YFZoA/eduV3W3kdQpl282XyCTxGAre/HmqxHb1e+LRwARNv
	AbIUS2xCnNP5eRK5za+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2JI7-00AtvE-6C; Mon, 05 Dec 2022 21:46:23 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2JI4-00Atrv-JH
	for linux-phy@lists.infradead.org; Mon, 05 Dec 2022 21:46:22 +0000
Received: by mail-lf1-x135.google.com with SMTP id c1so20681080lfi.7
        for <linux-phy@lists.infradead.org>; Mon, 05 Dec 2022 13:46:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rs6LN4l8ZgCV03Txw6CfdvhgqFteOqFaHY0fdcPtk+M=;
        b=wnZegiJgfcinJhubqEEXuQDn8snEl5kA4FSCgMyRzYqvoRELI+5NN/sRCVg6gn/Cjc
         rLjDjRMXNC7icoPlX189Pt8C8SfwO0HQn5zSSrURCyiZA3HJSBF8XlroShJmyc7VaqFr
         OOdmck/s6XnEu+E5y7CtqQAY0SfF+/R/Y8lYXzu7Wt8yc8f0h3E5qUh4p/4fC5nZXAvX
         JnzgOGPpZy/hf6c5z9RvLrpsDr1iSOxQBBvx1l3DwUEvA9D8dsQJ2f5V2SGcKtEz0+ET
         G90egPp4B62ekdozFANO0X1l3EpJ/3boeW1ywISvPf8YrOEn+DaC+1aGxqfHF8EwRJYk
         zEcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rs6LN4l8ZgCV03Txw6CfdvhgqFteOqFaHY0fdcPtk+M=;
        b=U//jf+HBXwTbwIYw851b6dpWBef9WFCv60IZT4L7oQYnHqfHGMs53pnIf9/ZPcvOHf
         KmFBy5Kdpqt5deOSNp0EXqlFm0m9MXL5ZP90szNSByUhRzrFNfl2L6mXQlnCsELNRQSK
         NAeBgmdCrp7fTQCbDzq1u/TIhitFxnk5Vwc0aEmvmjEiMWmm8B01Z9BG6NsE9/DPw5db
         4pGHKPS7DgR2zbjgTQg6afD7WbNfvr4ZO7fS2DkJ2Ba/9DBLBuVfY566wd7AMNsFAZCr
         3wmHFMslcptCLrjuRGkvTO1qexDOjrksAmS7OfXFB7JAULwTA41kVmC1GL0Mf88oUc7f
         QX9Q==
X-Gm-Message-State: ANoB5pnHyI/uCBDR0WLIgjdkNvvVvy3ivqjPSxOxBsYZc1aNj6VatiI6
	QGY5AZ61OF/ctEOm2SmW1Vdg1A==
X-Google-Smtp-Source: AA0mqf5mXHEAEeXavkwuZy+lKnaa7ahPBnOcRUn4KdKyIS9HAUNS7hVNkKg3aoPLFxIU1qUHF+83Xw==
X-Received: by 2002:a05:6512:3703:b0:4a2:22cf:f44d with SMTP id z3-20020a056512370300b004a222cff44dmr22863589lfr.118.1670276777903;
        Mon, 05 Dec 2022 13:46:17 -0800 (PST)
Received: from [127.0.0.1] ([94.25.229.129])
        by smtp.gmail.com with ESMTPSA id c13-20020a056512074d00b004b5732080d1sm585321lfs.150.2022.12.05.13.46.17
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Dec 2022 13:46:17 -0800 (PST)
Date: Tue, 06 Dec 2022 00:46:12 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 martin.petersen@oracle.com, jejb@linux.ibm.com, andersson@kernel.org,
 vkoul@kernel.org
CC: quic_cang@quicinc.com, quic_asutoshd@quicinc.com,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
 ahalaney@redhat.com, abel.vesa@linaro.org, alim.akhtar@samsung.com,
 avri.altman@wdc.com, bvanassche@acm.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_v4_02/23=5D_phy=3A_qcom-qmp-?= =?US-ASCII?Q?ufs=3A_Rename_MSM8996_PHY_definitions?=
User-Agent: K-9 Mail for Android
In-Reply-To: <20221201174328.870152-3-manivannan.sadhasivam@linaro.org>
References: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org> <20221201174328.870152-3-manivannan.sadhasivam@linaro.org>
Message-ID: <6D3E7F39-086E-48C3-BB80-394CFBE8E682@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_134620_674676_EAF3F651 
X-CRM114-Status: UNSURE (   9.38  )
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



On 1 December 2022 20:43:07 GMT+03:00, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org> wrote:
>Only MSM8996 is using "_ufs_" naming convention for PHY definitions instead
>of "_ufsphy_" as like other SoCs. So to maintain the uniformity, let's
>rename all of the definitions to use "_ufsphy_".
>
>Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

>---
> drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 22 +++++++++++-----------
> 1 file changed, 11 insertions(+), 11 deletions(-)
>
>diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>index 20fcdbef8c77..35b77cd79e57 100644
>--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>@@ -94,7 +94,7 @@ static const unsigned int sm8150_ufsphy_regs_layout[QPHY_LAYOUT_SIZE] = {
> 	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V4_PCS_UFS_POWER_DOWN_CONTROL,
> };
> 
>-static const struct qmp_phy_init_tbl msm8996_ufs_serdes[] = {
>+static const struct qmp_phy_init_tbl msm8996_ufsphy_serdes[] = {
> 	QMP_PHY_INIT_CFG(QSERDES_COM_CMN_CONFIG, 0x0e),
> 	QMP_PHY_INIT_CFG(QSERDES_COM_SYSCLK_EN_SEL, 0xd7),
> 	QMP_PHY_INIT_CFG(QSERDES_COM_CLK_SELECT, 0x30),
>@@ -143,12 +143,12 @@ static const struct qmp_phy_init_tbl msm8996_ufs_serdes[] = {
> 	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP3_MODE1, 0x00),
> };
> 
>-static const struct qmp_phy_init_tbl msm8996_ufs_tx[] = {
>+static const struct qmp_phy_init_tbl msm8996_ufsphy_tx[] = {
> 	QMP_PHY_INIT_CFG(QSERDES_TX_HIGHZ_TRANSCEIVEREN_BIAS_DRVR_EN, 0x45),
> 	QMP_PHY_INIT_CFG(QSERDES_TX_LANE_MODE, 0x02),
> };
> 
>-static const struct qmp_phy_init_tbl msm8996_ufs_rx[] = {
>+static const struct qmp_phy_init_tbl msm8996_ufsphy_rx[] = {
> 	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_LVL, 0x24),
> 	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_CNTRL, 0x02),
> 	QMP_PHY_INIT_CFG(QSERDES_RX_RX_INTERFACE_MODE, 0x00),
>@@ -629,15 +629,15 @@ static const struct qmp_ufs_offsets qmp_ufs_offsets_v5 = {
> 	.rx2		= 0xa00,
> };
> 
>-static const struct qmp_phy_cfg msm8996_ufs_cfg = {
>+static const struct qmp_phy_cfg msm8996_ufsphy_cfg = {
> 	.lanes			= 1,
> 
>-	.serdes_tbl		= msm8996_ufs_serdes,
>-	.serdes_tbl_num		= ARRAY_SIZE(msm8996_ufs_serdes),
>-	.tx_tbl			= msm8996_ufs_tx,
>-	.tx_tbl_num		= ARRAY_SIZE(msm8996_ufs_tx),
>-	.rx_tbl			= msm8996_ufs_rx,
>-	.rx_tbl_num		= ARRAY_SIZE(msm8996_ufs_rx),
>+	.serdes_tbl		= msm8996_ufsphy_serdes,
>+	.serdes_tbl_num		= ARRAY_SIZE(msm8996_ufsphy_serdes),
>+	.tx_tbl			= msm8996_ufsphy_tx,
>+	.tx_tbl_num		= ARRAY_SIZE(msm8996_ufsphy_tx),
>+	.rx_tbl			= msm8996_ufsphy_rx,
>+	.rx_tbl_num		= ARRAY_SIZE(msm8996_ufsphy_rx),
> 
> 	.clk_list		= msm8996_ufs_phy_clk_l,
> 	.num_clks		= ARRAY_SIZE(msm8996_ufs_phy_clk_l),
>@@ -1156,7 +1156,7 @@ static int qmp_ufs_probe(struct platform_device *pdev)
> static const struct of_device_id qmp_ufs_of_match_table[] = {
> 	{
> 		.compatible = "qcom,msm8996-qmp-ufs-phy",
>-		.data = &msm8996_ufs_cfg,
>+		.data = &msm8996_ufsphy_cfg,
> 	}, {
> 		.compatible = "qcom,msm8998-qmp-ufs-phy",
> 		.data = &sdm845_ufsphy_cfg,

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
