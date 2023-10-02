Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB49FE784B2
	for <linux-phy@archiver.kernel.org>; Mon,  2 Oct 2023 09:06:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mFqRDMVFFukZTQlAAA6W0KeJwZcyi5dVt/+AhAJgrYQ=; b=bLL4+MUgQbn0ym
	9NjuCMKvWLpHj85RIbN1nxsGbWeY9CzslfLjJXyB2ffgnxyeypHSXk+d7jKj6G9xv4YEFuL0M6Vlh
	vtslenXGXbY6az1HgRRE69JFuRZauREw+dv1y+SvptiS4RO739u8RLWPJCxF4GdHWrKpEm1WaJ+GI
	9U0nbQMdwnUAgYGixu9E5MT/G9hjrac+FgKKbgV1a7uVy8P73mv+oyCayjKup4dpCJJgjn/2OopsV
	/snf7nxi2ZLCyqA/FTA6kDlj48v8LL3kCmDN5RZZS36aLKp4bLtt2CNvDlN6z9D8UohA3Hx6mMF5i
	+92bsl7PRDpcRbTK6KFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qnEsw-00CClT-1W;
	Mon, 02 Oct 2023 09:06:38 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnEst-00CCkE-2f
	for linux-phy@lists.infradead.org;
	Mon, 02 Oct 2023 09:06:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id F1315CE0EDB;
	Mon,  2 Oct 2023 09:06:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 30558C433C8;
	Mon,  2 Oct 2023 09:06:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696237591;
	bh=2diAPME2cCR6iA16Hgh40lXTEBhdoVmgO8i3mbpJqXE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=i2fz6AveIUYh9hcYONkJFNzBTjUfjJAwyMB7DOHF/wl35uVUhFVZTMfh7aFMa9WNb
	 /JzbgwlGq/C/rfcZBQIrS6VU3RMGhbN8S+v6FOSTxiWxV8HdnEzpCZ8FtOf0jEQvwr
	 SZtXXhWnKBeN539sMl7i2FzA/nMVToO8KJpRYgiHd3sAtbh6vMjDJ5uiaw3/zb53+d
	 FzancQsp5OsWEgpaTtyT1nQVo7qFC2vThrmnv6Dymj3EpYyVD0SRWgJRP6HFZBeWYl
	 lV9dhvQAo41P6sPC7oDqBxJv073oe4HQSs8dZJz3rzO1kcSy8EJbv01EyZ6VeRj9RV
	 qdqOrJuK9bCfw==
Received: from johan by xi.lan with local (Exim 4.96)
	(envelope-from <johan@kernel.org>)
	id 1qnEsv-0004eg-2W;
	Mon, 02 Oct 2023 11:06:38 +0200
Date: Mon, 2 Oct 2023 11:06:37 +0200
From: Johan Hovold <johan@kernel.org>
To: Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: Re: [PATCH 4/5] phy: qcom: edp: Introduce support for DisplayPort
Message-ID: <ZRqIHSetajQf7Um1@hovoldconsulting.com>
References: <20220810040745.3582985-1-bjorn.andersson@linaro.org>
 <20220810040745.3582985-5-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220810040745.3582985-5-bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231002_020636_237034_6DEBA28E 
X-CRM114-Status: GOOD (  21.68  )
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

On Tue, Aug 09, 2022 at 09:07:44PM -0700, Bjorn Andersson wrote:
> The eDP phy can be used to drive either eDP or DP output, with some
> minor variations in some of the configuration and seemingly a need for
> implementing swing and pre_emphasis calibration.
> 
> Introduce a config object, indicating if the phy is operating in eDP or
> DP mode and swing/pre-emphasis calibration to support this.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 80 +++++++++++++++++++++++++++--
>  1 file changed, 76 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> index 32614fb838b5..301ac422d2fe 100644
> --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> @@ -70,8 +70,19 @@
>  
>  #define TXn_TRAN_DRVR_EMP_EN                    0x0078
>  
> +struct qcom_edp_cfg {
> +	bool is_dp;
> +
> +	/* DP PHY swing and pre_emphasis tables */
> +	const u8 (*swing_hbr_rbr)[4][4];
> +	const u8 (*swing_hbr3_hbr2)[4][4];
> +	const u8 (*pre_emphasis_hbr_rbr)[4][4];
> +	const u8 (*pre_emphasis_hbr3_hbr2)[4][4];
> +};
 
>  static int qcom_edp_configure_ssc(const struct qcom_edp *edp)
> @@ -315,7 +381,9 @@ static int qcom_edp_set_vco_div(const struct qcom_edp *edp)
>  static int qcom_edp_phy_power_on(struct phy *phy)
>  {
>  	const struct qcom_edp *edp = phy_get_drvdata(phy);
> +	const struct qcom_edp_cfg *cfg = edp->cfg;
>  	u32 bias0_en, drvr0_en, bias1_en, drvr1_en;
> +	u8 ldo_config;
>  	int timeout;
>  	int ret;
>  	u32 val;
> @@ -332,8 +400,11 @@ static int qcom_edp_phy_power_on(struct phy *phy)
>  	if (timeout)
>  		return timeout;
>  
> -	writel(0x01, edp->tx0 + TXn_LDO_CONFIG);
> -	writel(0x01, edp->tx1 + TXn_LDO_CONFIG);
> +
> +	ldo_config = (cfg && cfg->is_dp) ? 0x1 : 0x0;
> +
> +	writel(ldo_config, edp->tx0 + TXn_LDO_CONFIG);
> +	writel(ldo_config, edp->tx1 + TXn_LDO_CONFIG);

When reviewing a patch from Konrad which will start using the eDP
configuration on the X13s, I noticed that this patch inverted these bits
for older SoCs (e.g. sc7280 and sc8180xp). They used to be set to 1,
but after this patch they will be set to 0.

Was that intentional even if it was never mentioned in the commit
message? Or was it a mistake that should be fixed?

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
