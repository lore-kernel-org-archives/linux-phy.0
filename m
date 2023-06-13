Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43728EB64DA
	for <linux-phy@archiver.kernel.org>; Tue, 13 Jun 2023 22:12:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/7kGATP+JRrYkSoSPHGdctdcXk3WI426M7ManxD7BCA=; b=w/T9bDSQnd9C6C
	YVmUQ55prczpvqmsfNu9tQfIlAvUBiBK3vm7TfcxFqpAZTrj+zjXtXaK90lsa2SjyIvZ11jqis5t4
	nqBMpNKo7e5Ci/pNctDuAwpp0f6uJkCv2X3FvRAwtN0Je+PAkUMeBNVgNb6iYuUGCI3iX6spy9PX7
	a9ySiv2YWIMo/lq0suDUowMKijnb1D4hxYKExFeHvOxtBIYwYEqKzka89Xptv3+j+v3bfuO4TP3ss
	tokAkxOt4iyQWkMhVUm5oh8KYNDDhxyTHOzqTG7lnWz0WcKLihlyY3PYSLBVCcYE+ZjKe7tuXppY3
	PfMQb/sIq5As9VZvIGXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9CFU-009J7J-2U;
	Tue, 13 Jun 2023 22:12:24 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9CFL-009J6C-35
	for linux-phy@lists.infradead.org;
	Tue, 13 Jun 2023 22:12:23 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9072F61884;
	Tue, 13 Jun 2023 22:12:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2937CC433C0;
	Tue, 13 Jun 2023 22:12:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686694334;
	bh=sKrQ7hdq4mSomL4LDC24g6oc1MHOuvi2wLr6vE0lxhU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cLiwMUlahN9DTyi23DbZ6NqIxjOb6N1knEUWKRKVTtnPtDYzzbQraEF4t0foek5ve
	 GTEEBrrxCnfBK4XplQfmh1XS6Yxf3vk72uqDxfWOg1Ozi7GbSnSOzSBvFMkkQ0n+0n
	 KD15Qsm5oJ6bBZQuPiMZ7EvIM/zYLyRbbd92TLZ7kI8YWvtxT+efgDI7AdQH54SmDP
	 anH1OdDexSZ1PqSmnOgLApBCoN0JdLZdOkRvaC1MUIwiNSSzRoYzBKHPndwfI5ml0P
	 eiXrm7VnPP3ZZBpIOmElsQ3jMp0pD2xLV9QD+n4TJno/EAJyfPLADZVFNb7swRHNfC
	 i5KMJ7S4VGU2g==
Date: Tue, 13 Jun 2023 15:15:36 -0700
From: Bjorn Andersson <andersson@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v3 02/11] phy: qcom-qmp-ufs: populate offsets
 configuration
Message-ID: <20230613221536.6tikam262jjvzcfx@ripper>
References: <20230523140622.265692-1-dmitry.baryshkov@linaro.org>
 <20230523140622.265692-3-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230523140622.265692-3-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230613_151217_367895_291BC117 
X-CRM114-Status: GOOD (  15.03  )
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

On Tue, May 23, 2023 at 05:06:13PM +0300, Dmitry Baryshkov wrote:
> Populate offsets configuration for the rest of UFS PHYs to make it
> possible to switch them to the new (single-node) bindings style.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Reviewed-by: Bjorn Andersson <andersson@kernel.org>

Regards,
Bjorn

> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> index 8c877b668bb9..d99dc1043f74 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> @@ -833,6 +833,8 @@ static const struct qmp_ufs_offsets qmp_ufs_offsets_v6 = {
>  static const struct qmp_phy_cfg msm8996_ufsphy_cfg = {
>  	.lanes			= 1,
>  
> +	.offsets		= &qmp_ufs_offsets,
> +
>  	.tbls = {
>  		.serdes		= msm8996_ufsphy_serdes,
>  		.serdes_num	= ARRAY_SIZE(msm8996_ufsphy_serdes),
> @@ -924,6 +926,8 @@ static const struct qmp_phy_cfg sc8280xp_ufsphy_cfg = {
>  static const struct qmp_phy_cfg sdm845_ufsphy_cfg = {
>  	.lanes			= 2,
>  
> +	.offsets		= &qmp_ufs_offsets,
> +
>  	.tbls = {
>  		.serdes		= sdm845_ufsphy_serdes,
>  		.serdes_num	= ARRAY_SIZE(sdm845_ufsphy_serdes),
> @@ -1038,6 +1042,8 @@ static const struct qmp_phy_cfg sm8150_ufsphy_cfg = {
>  static const struct qmp_phy_cfg sm8250_ufsphy_cfg = {
>  	.lanes			= 2,
>  
> +	.offsets		= &qmp_ufs_offsets,
> +
>  	.tbls = {
>  		.serdes		= sm8150_ufsphy_serdes,
>  		.serdes_num	= ARRAY_SIZE(sm8150_ufsphy_serdes),
> @@ -1070,6 +1076,8 @@ static const struct qmp_phy_cfg sm8250_ufsphy_cfg = {
>  static const struct qmp_phy_cfg sm8350_ufsphy_cfg = {
>  	.lanes			= 2,
>  
> +	.offsets		= &qmp_ufs_offsets,
> +
>  	.tbls = {
>  		.serdes		= sm8350_ufsphy_serdes,
>  		.serdes_num	= ARRAY_SIZE(sm8350_ufsphy_serdes),
> @@ -1102,6 +1110,8 @@ static const struct qmp_phy_cfg sm8350_ufsphy_cfg = {
>  static const struct qmp_phy_cfg sm8450_ufsphy_cfg = {
>  	.lanes			= 2,
>  
> +	.offsets		= &qmp_ufs_offsets,
> +
>  	.tbls = {
>  		.serdes		= sm8350_ufsphy_serdes,
>  		.serdes_num	= ARRAY_SIZE(sm8350_ufsphy_serdes),
> -- 
> 2.39.2
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
