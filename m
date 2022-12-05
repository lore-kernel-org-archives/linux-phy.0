Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23731C4321E
	for <linux-phy@archiver.kernel.org>; Mon,  5 Dec 2022 21:48:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vtnQXUegMCr1ckpVoGbZH9t6TjnZrdVurduHtmt+wC8=; b=25qL6J6+PxnQfO
	WHAg3IZVZn70jKlYvjKd8f1esy6VOrye3RRGUiaARWh17+CJ86rjx8imrfNVtZiqv0qsm4JRXcQ9d
	SJIb8r63LLHY9qovpOiJ4KxpLhQP12lbbapx/9fKyrGwurldZbUMMmyJH0XobmSU/CjlHx1PvumW1
	v9jOu/wzx70CKap+elkP4NmxzptXlly5nOOa4+6T5Yjd0YhZZlax3Tfk9Ro2IfEx15fLbx0wKK7Jj
	7fzCLtbnBjadZ+nZKNUMa5KMMz5JpjkA0B74eCRc3f01D4MspWd4HSi3Co9W8YxTeo1p2ZUIqblyu
	M/qdeM/xibgjwOOYm+JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2JKP-00AvSo-1s; Mon, 05 Dec 2022 21:48:45 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2JKL-00AvMs-QP
	for linux-phy@lists.infradead.org; Mon, 05 Dec 2022 21:48:44 +0000
Received: by mail-lf1-x133.google.com with SMTP id cf42so14927284lfb.1
        for <linux-phy@lists.infradead.org>; Mon, 05 Dec 2022 13:48:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=7uT5TtJWGIMMU4mkgNIM3r+VjvkyvxyOjeUB42jY+NA=;
        b=bLp2CcQFcFlJhfG8awwHKMk75JUqv9Fut0JCVWVm10pVYEJ7rb/P96sAjScY7Dnj1x
         8u+bnB6VpUvj3E8kn9FQFJjS5JvkXMJQ4flbH0FXu8SDCZYw+k5hHtN0sxK7sO9Rn8SA
         cRnsycibN815WjBnuH/TlUnoqVWqQWyDO+rLS3PI9pDwJNH5RnrL+dzY4ra5JVOzKe3H
         kms6Y2ZldpnSXXGeDKKqcuJWtdCQHmXx7s60Hdu/l/F8gzqC0Mai4zQCtu7eHLg8c2/q
         56uhK+c4GtQjtWeAw83FgD5/l8iQPrWx3yM4cH7W4IniIDWMjDL8UP6Lm+73ErF8y0nq
         AkoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7uT5TtJWGIMMU4mkgNIM3r+VjvkyvxyOjeUB42jY+NA=;
        b=lo8cKJOSvTJVux3My0RjdDBX9jWpq1RFirB3pVW4ymXBQHbn2ugoeO6tATW3E5sBQ8
         qcZd7Mn20z2hqj3as038pFyhSn5q4mXveOEhkd7cdo4RGFImHhmQwP5pwqBj2/PcK6CJ
         hnuTsdbw37Kp+/2r0slxysfDFtjShNoDxHqN9ffWOF2yUnjMN9StFX3wbe7PFesjN177
         nc/V/0WfAwfAoSNGKH1ivg/9a33sZq84Ojm6DhoO1JbtEk/lZraCtGKIPA06aTiO37kV
         tAu5xCHPPzhUYgmM1C5QC3NCI4dwxxKeFtWS4nAH4Y/n4D95HPHPCk24VMf/UTGJNybZ
         M7kA==
X-Gm-Message-State: ANoB5pm+m4ecftFGIGW/r0xB0JNxIhHnruXkIzl4o/ESu7D5Is1dK2IJ
	usbrcOp7KCSTS8KtobNVPXa9Ig==
X-Google-Smtp-Source: AA0mqf5VFMe8sF7aylyvi3c4Q+bMMZzx+OVFaAEWkk61F3dcBv5hUb5KC2XHconnbVBA/qNdoWzGqw==
X-Received: by 2002:a19:6717:0:b0:4b4:e13f:6a17 with SMTP id b23-20020a196717000000b004b4e13f6a17mr23928665lfc.372.1670276917832;
        Mon, 05 Dec 2022 13:48:37 -0800 (PST)
Received: from [127.0.0.1] ([94.25.229.129])
        by smtp.gmail.com with ESMTPSA id i15-20020a056512340f00b004b4bb6286d8sm2252922lfr.84.2022.12.05.13.48.36
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Dec 2022 13:48:37 -0800 (PST)
Date: Tue, 06 Dec 2022 00:48:33 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 martin.petersen@oracle.com, jejb@linux.ibm.com, andersson@kernel.org,
 vkoul@kernel.org
CC: quic_cang@quicinc.com, quic_asutoshd@quicinc.com,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
 ahalaney@redhat.com, abel.vesa@linaro.org, alim.akhtar@samsung.com,
 avri.altman@wdc.com, bvanassche@acm.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_v4_03/23=5D_phy=3A_qcom-qmp-ufs=3A_Move?= =?US-ASCII?Q?_register_settings_to_qmp=5Fphy=5Fcfg=5Ftbls_struct?=
User-Agent: K-9 Mail for Android
In-Reply-To: <20221201174328.870152-4-manivannan.sadhasivam@linaro.org>
References: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org> <20221201174328.870152-4-manivannan.sadhasivam@linaro.org>
Message-ID: <C2E22524-75E6-4AAF-B487-63D55F58E046@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_134841_936618_29104FB2 
X-CRM114-Status: GOOD (  12.18  )
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



On 1 December 2022 20:43:08 GMT+03:00, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org> wrote:
>As done for Qcom PCIe PHY driver, let's move the register settings to the
>common qmp_phy_cfg_tbls struct. This helps in adding any additional PHY
>settings needed for functionalities like HS-G4 in the future by adding one
>more instance of the qmp_phy_cfg_tbls.
>
>Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

>---
> drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 196 ++++++++++++++----------
> 1 file changed, 113 insertions(+), 83 deletions(-)
>
>diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>index 35b77cd79e57..516027e356f0 100644
>--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>@@ -527,21 +527,26 @@ struct qmp_ufs_offsets {
> 	u16 rx2;
> };
> 
>+struct qmp_phy_cfg_tbls {
>+	/* Init sequence for PHY blocks - serdes, tx, rx, pcs */
>+	const struct qmp_phy_init_tbl *serdes;
>+	int serdes_num;
>+	const struct qmp_phy_init_tbl *tx;
>+	int tx_num;
>+	const struct qmp_phy_init_tbl *rx;
>+	int rx_num;
>+	const struct qmp_phy_init_tbl *pcs;
>+	int pcs_num;
>+};
>+
> /* struct qmp_phy_cfg - per-PHY initialization config */
> struct qmp_phy_cfg {
> 	int lanes;
> 
> 	const struct qmp_ufs_offsets *offsets;
> 
>-	/* Init sequence for PHY blocks - serdes, tx, rx, pcs */
>-	const struct qmp_phy_init_tbl *serdes_tbl;
>-	int serdes_tbl_num;
>-	const struct qmp_phy_init_tbl *tx_tbl;
>-	int tx_tbl_num;
>-	const struct qmp_phy_init_tbl *rx_tbl;
>-	int rx_tbl_num;
>-	const struct qmp_phy_init_tbl *pcs_tbl;
>-	int pcs_tbl_num;
>+	/* Main init sequence for PHY blocks - serdes, tx, rx, pcs */
>+	const struct qmp_phy_cfg_tbls tbls;
> 
> 	/* clock ids to be requested */
> 	const char * const *clk_list;
>@@ -632,12 +637,14 @@ static const struct qmp_ufs_offsets qmp_ufs_offsets_v5 = {
> static const struct qmp_phy_cfg msm8996_ufsphy_cfg = {
> 	.lanes			= 1,
> 
>-	.serdes_tbl		= msm8996_ufsphy_serdes,
>-	.serdes_tbl_num		= ARRAY_SIZE(msm8996_ufsphy_serdes),
>-	.tx_tbl			= msm8996_ufsphy_tx,
>-	.tx_tbl_num		= ARRAY_SIZE(msm8996_ufsphy_tx),
>-	.rx_tbl			= msm8996_ufsphy_rx,
>-	.rx_tbl_num		= ARRAY_SIZE(msm8996_ufsphy_rx),
>+	.tbls = {
>+		.serdes		= msm8996_ufsphy_serdes,
>+		.serdes_num	= ARRAY_SIZE(msm8996_ufsphy_serdes),
>+		.tx		= msm8996_ufsphy_tx,
>+		.tx_num		= ARRAY_SIZE(msm8996_ufsphy_tx),
>+		.rx		= msm8996_ufsphy_rx,
>+		.rx_num		= ARRAY_SIZE(msm8996_ufsphy_rx),
>+	},
> 
> 	.clk_list		= msm8996_ufs_phy_clk_l,
> 	.num_clks		= ARRAY_SIZE(msm8996_ufs_phy_clk_l),
>@@ -655,14 +662,16 @@ static const struct qmp_phy_cfg sc8280xp_ufsphy_cfg = {
> 
> 	.offsets		= &qmp_ufs_offsets_v5,
> 
>-	.serdes_tbl		= sm8350_ufsphy_serdes,
>-	.serdes_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_serdes),
>-	.tx_tbl			= sm8350_ufsphy_tx,
>-	.tx_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_tx),
>-	.rx_tbl			= sm8350_ufsphy_rx,
>-	.rx_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_rx),
>-	.pcs_tbl		= sm8350_ufsphy_pcs,
>-	.pcs_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_pcs),
>+	.tbls = {
>+		.serdes		= sm8350_ufsphy_serdes,
>+		.serdes_num	= ARRAY_SIZE(sm8350_ufsphy_serdes),
>+		.tx		= sm8350_ufsphy_tx,
>+		.tx_num		= ARRAY_SIZE(sm8350_ufsphy_tx),
>+		.rx		= sm8350_ufsphy_rx,
>+		.rx_num		= ARRAY_SIZE(sm8350_ufsphy_rx),
>+		.pcs		= sm8350_ufsphy_pcs,
>+		.pcs_num	= ARRAY_SIZE(sm8350_ufsphy_pcs),
>+	},
> 	.clk_list		= sdm845_ufs_phy_clk_l,
> 	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
> 	.vreg_list		= qmp_phy_vreg_l,
>@@ -673,14 +682,16 @@ static const struct qmp_phy_cfg sc8280xp_ufsphy_cfg = {
> static const struct qmp_phy_cfg sdm845_ufsphy_cfg = {
> 	.lanes			= 2,
> 
>-	.serdes_tbl		= sdm845_ufsphy_serdes,
>-	.serdes_tbl_num		= ARRAY_SIZE(sdm845_ufsphy_serdes),
>-	.tx_tbl			= sdm845_ufsphy_tx,
>-	.tx_tbl_num		= ARRAY_SIZE(sdm845_ufsphy_tx),
>-	.rx_tbl			= sdm845_ufsphy_rx,
>-	.rx_tbl_num		= ARRAY_SIZE(sdm845_ufsphy_rx),
>-	.pcs_tbl		= sdm845_ufsphy_pcs,
>-	.pcs_tbl_num		= ARRAY_SIZE(sdm845_ufsphy_pcs),
>+	.tbls = {
>+		.serdes		= sdm845_ufsphy_serdes,
>+		.serdes_num	= ARRAY_SIZE(sdm845_ufsphy_serdes),
>+		.tx		= sdm845_ufsphy_tx,
>+		.tx_num		= ARRAY_SIZE(sdm845_ufsphy_tx),
>+		.rx		= sdm845_ufsphy_rx,
>+		.rx_num		= ARRAY_SIZE(sdm845_ufsphy_rx),
>+		.pcs		= sdm845_ufsphy_pcs,
>+		.pcs_num	= ARRAY_SIZE(sdm845_ufsphy_pcs),
>+	},
> 	.clk_list		= sdm845_ufs_phy_clk_l,
> 	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
> 	.vreg_list		= qmp_phy_vreg_l,
>@@ -693,14 +704,16 @@ static const struct qmp_phy_cfg sdm845_ufsphy_cfg = {
> static const struct qmp_phy_cfg sm6115_ufsphy_cfg = {
> 	.lanes			= 1,
> 
>-	.serdes_tbl		= sm6115_ufsphy_serdes,
>-	.serdes_tbl_num		= ARRAY_SIZE(sm6115_ufsphy_serdes),
>-	.tx_tbl			= sm6115_ufsphy_tx,
>-	.tx_tbl_num		= ARRAY_SIZE(sm6115_ufsphy_tx),
>-	.rx_tbl			= sm6115_ufsphy_rx,
>-	.rx_tbl_num		= ARRAY_SIZE(sm6115_ufsphy_rx),
>-	.pcs_tbl		= sm6115_ufsphy_pcs,
>-	.pcs_tbl_num		= ARRAY_SIZE(sm6115_ufsphy_pcs),
>+	.tbls = {
>+		.serdes		= sm6115_ufsphy_serdes,
>+		.serdes_num	= ARRAY_SIZE(sm6115_ufsphy_serdes),
>+		.tx		= sm6115_ufsphy_tx,
>+		.tx_num		= ARRAY_SIZE(sm6115_ufsphy_tx),
>+		.rx		= sm6115_ufsphy_rx,
>+		.rx_num		= ARRAY_SIZE(sm6115_ufsphy_rx),
>+		.pcs		= sm6115_ufsphy_pcs,
>+		.pcs_num	= ARRAY_SIZE(sm6115_ufsphy_pcs),
>+	},
> 	.clk_list		= sdm845_ufs_phy_clk_l,
> 	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
> 	.vreg_list		= qmp_phy_vreg_l,
>@@ -713,14 +726,16 @@ static const struct qmp_phy_cfg sm6115_ufsphy_cfg = {
> static const struct qmp_phy_cfg sm8150_ufsphy_cfg = {
> 	.lanes			= 2,
> 
>-	.serdes_tbl		= sm8150_ufsphy_serdes,
>-	.serdes_tbl_num		= ARRAY_SIZE(sm8150_ufsphy_serdes),
>-	.tx_tbl			= sm8150_ufsphy_tx,
>-	.tx_tbl_num		= ARRAY_SIZE(sm8150_ufsphy_tx),
>-	.rx_tbl			= sm8150_ufsphy_rx,
>-	.rx_tbl_num		= ARRAY_SIZE(sm8150_ufsphy_rx),
>-	.pcs_tbl		= sm8150_ufsphy_pcs,
>-	.pcs_tbl_num		= ARRAY_SIZE(sm8150_ufsphy_pcs),
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
> 	.clk_list		= sdm845_ufs_phy_clk_l,
> 	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
> 	.vreg_list		= qmp_phy_vreg_l,
>@@ -731,14 +746,16 @@ static const struct qmp_phy_cfg sm8150_ufsphy_cfg = {
> static const struct qmp_phy_cfg sm8350_ufsphy_cfg = {
> 	.lanes			= 2,
> 
>-	.serdes_tbl		= sm8350_ufsphy_serdes,
>-	.serdes_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_serdes),
>-	.tx_tbl			= sm8350_ufsphy_tx,
>-	.tx_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_tx),
>-	.rx_tbl			= sm8350_ufsphy_rx,
>-	.rx_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_rx),
>-	.pcs_tbl		= sm8350_ufsphy_pcs,
>-	.pcs_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_pcs),
>+	.tbls = {
>+		.serdes		= sm8350_ufsphy_serdes,
>+		.serdes_num	= ARRAY_SIZE(sm8350_ufsphy_serdes),
>+		.tx		= sm8350_ufsphy_tx,
>+		.tx_num		= ARRAY_SIZE(sm8350_ufsphy_tx),
>+		.rx		= sm8350_ufsphy_rx,
>+		.rx_num		= ARRAY_SIZE(sm8350_ufsphy_rx),
>+		.pcs		= sm8350_ufsphy_pcs,
>+		.pcs_num	= ARRAY_SIZE(sm8350_ufsphy_pcs),
>+	},
> 	.clk_list		= sdm845_ufs_phy_clk_l,
> 	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
> 	.vreg_list		= qmp_phy_vreg_l,
>@@ -749,14 +766,16 @@ static const struct qmp_phy_cfg sm8350_ufsphy_cfg = {
> static const struct qmp_phy_cfg sm8450_ufsphy_cfg = {
> 	.lanes			= 2,
> 
>-	.serdes_tbl		= sm8350_ufsphy_serdes,
>-	.serdes_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_serdes),
>-	.tx_tbl			= sm8350_ufsphy_tx,
>-	.tx_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_tx),
>-	.rx_tbl			= sm8350_ufsphy_rx,
>-	.rx_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_rx),
>-	.pcs_tbl		= sm8350_ufsphy_pcs,
>-	.pcs_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_pcs),
>+	.tbls = {
>+		.serdes		= sm8350_ufsphy_serdes,
>+		.serdes_num	= ARRAY_SIZE(sm8350_ufsphy_serdes),
>+		.tx		= sm8350_ufsphy_tx,
>+		.tx_num		= ARRAY_SIZE(sm8350_ufsphy_tx),
>+		.rx		= sm8350_ufsphy_rx,
>+		.rx_num		= ARRAY_SIZE(sm8350_ufsphy_rx),
>+		.pcs		= sm8350_ufsphy_pcs,
>+		.pcs_num	= ARRAY_SIZE(sm8350_ufsphy_pcs),
>+	},
> 	.clk_list		= sm8450_ufs_phy_clk_l,
> 	.num_clks		= ARRAY_SIZE(sm8450_ufs_phy_clk_l),
> 	.vreg_list		= qmp_phy_vreg_l,
>@@ -790,16 +809,40 @@ static void qmp_ufs_configure(void __iomem *base,
> 	qmp_ufs_configure_lane(base, tbl, num, 0xff);
> }
> 
>-static int qmp_ufs_serdes_init(struct qmp_ufs *qmp)
>+static void qmp_ufs_serdes_init(struct qmp_ufs *qmp, const struct qmp_phy_cfg_tbls *tbls)
> {
>-	const struct qmp_phy_cfg *cfg = qmp->cfg;
> 	void __iomem *serdes = qmp->serdes;
>-	const struct qmp_phy_init_tbl *serdes_tbl = cfg->serdes_tbl;
>-	int serdes_tbl_num = cfg->serdes_tbl_num;
> 
>-	qmp_ufs_configure(serdes, serdes_tbl, serdes_tbl_num);
>+	qmp_ufs_configure(serdes, tbls->serdes, tbls->serdes_num);
>+}
> 
>-	return 0;
>+static void qmp_ufs_lanes_init(struct qmp_ufs *qmp, const struct qmp_phy_cfg_tbls *tbls)
>+{
>+	const struct qmp_phy_cfg *cfg = qmp->cfg;
>+	void __iomem *tx = qmp->tx;
>+	void __iomem *rx = qmp->rx;
>+
>+	qmp_ufs_configure_lane(tx, tbls->tx, tbls->tx_num, 1);
>+	qmp_ufs_configure_lane(rx, tbls->rx, tbls->rx_num, 1);
>+
>+	if (cfg->lanes >= 2) {
>+		qmp_ufs_configure_lane(qmp->tx2, tbls->tx, tbls->tx_num, 2);
>+		qmp_ufs_configure_lane(qmp->rx2, tbls->rx, tbls->rx_num, 2);
>+	}
>+}
>+
>+static void qmp_ufs_pcs_init(struct qmp_ufs *qmp, const struct qmp_phy_cfg_tbls *tbls)
>+{
>+	void __iomem *pcs = qmp->pcs;
>+
>+	qmp_ufs_configure(pcs, tbls->pcs, tbls->pcs_num);
>+}
>+
>+static void qmp_ufs_init_registers(struct qmp_ufs *qmp, const struct qmp_phy_cfg *cfg)
>+{
>+	qmp_ufs_serdes_init(qmp, &cfg->tbls);
>+	qmp_ufs_lanes_init(qmp, &cfg->tbls);
>+	qmp_ufs_pcs_init(qmp, &cfg->tbls);
> }
> 
> static int qmp_ufs_com_init(struct qmp_ufs *qmp)
>@@ -886,25 +929,12 @@ static int qmp_ufs_power_on(struct phy *phy)
> {
> 	struct qmp_ufs *qmp = phy_get_drvdata(phy);
> 	const struct qmp_phy_cfg *cfg = qmp->cfg;
>-	void __iomem *tx = qmp->tx;
>-	void __iomem *rx = qmp->rx;
> 	void __iomem *pcs = qmp->pcs;
> 	void __iomem *status;
> 	unsigned int val;
> 	int ret;
> 
>-	qmp_ufs_serdes_init(qmp);
>-
>-	/* Tx, Rx, and PCS configurations */
>-	qmp_ufs_configure_lane(tx, cfg->tx_tbl, cfg->tx_tbl_num, 1);
>-	qmp_ufs_configure_lane(rx, cfg->rx_tbl, cfg->rx_tbl_num, 1);
>-
>-	if (cfg->lanes >= 2) {
>-		qmp_ufs_configure_lane(qmp->tx2, cfg->tx_tbl, cfg->tx_tbl_num, 2);
>-		qmp_ufs_configure_lane(qmp->rx2, cfg->rx_tbl, cfg->rx_tbl_num, 2);
>-	}
>-
>-	qmp_ufs_configure(pcs, cfg->pcs_tbl, cfg->pcs_tbl_num);
>+	qmp_ufs_init_registers(qmp, cfg);
> 
> 	ret = reset_control_deassert(qmp->ufs_reset);
> 	if (ret)

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
