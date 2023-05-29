Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3F73C77B7A
	for <linux-phy@archiver.kernel.org>; Mon, 29 May 2023 21:15:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FQonw9cbe032INCmOutvSOz6tBLwaMPVq6tXY64JFEM=; b=jvi1A0zS1kqWjv
	nt2m9O9+JynMgqjNI9QsGwQN2ZGCnw6ByLfvZ+yxSPM8xoFyLxpKe/NTHpMe2wMcS3UpzWePUMnyE
	WD136v0TbBu7FS6hHpBLutdnOZLNFF6UqCL4uXPVCN1BZnLgzXeVMH169UXqqzwsXBKrJx94lSYjg
	yT05PiYOXmIFGUTAjugaacToBrCyvZ6lkpeVmuTg0l5sZebpztwXIV1Lnoc3UlgWTVDEd2eH2ZAsu
	QoKhOMNqKfYiCxbfE19xsGhEONQYbyw0l6pPimbmwzLPt7CsSgcLhca/d/BhmjYYyjMXkXbNNFfUv
	h1ThNaW0JG5dlULmZKXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3kDN-00BiOD-1P;
	Mon, 29 May 2023 21:15:41 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3kDK-00BiNo-28
	for linux-phy@lists.infradead.org;
	Mon, 29 May 2023 21:15:40 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2C1E861886;
	Mon, 29 May 2023 21:15:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0313EC433EF;
	Mon, 29 May 2023 21:15:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685394937;
	bh=AQc/2J1bL8tbEuFnnKMkMMVF+jCCW5kSdQt1yKmA39Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YEzFQ/v0Ksne9Z3plR+N0baKbWnbd3juoy6tycyFhWrwqxLZgq0+/HrjXVwYc5Df8
	 46qznC88LKR1FRoLBcROS4wYHl4y9YUxu6nFn1UlvKfnL20cEcBIGMFxInSVJXv8To
	 55I9dHEURGjk6MSQsWMGH0QkPh+hHn3XfUea4nIGV8sRVqScg++Jgk3YHILJVaKkxr
	 SynxRSNP0rqzi2J9uyTO6csVUXafCHndxhKTE1ZXUh+bwBfW+6PjSkgYjJ03ElkwKd
	 kPZIGb4yocAMB3nlW4UJRMk9mjK1iO7ZzUXtSTZbeqcyWTWrTI2DX5up4koRmJ3gDE
	 lXimeLqzYXGIQ==
Date: Mon, 29 May 2023 14:19:21 -0700
From: Bjorn Andersson <andersson@kernel.org>
To: Adrien Thierry <athierry@redhat.com>
Cc: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH RFC 2/2] phy: qcom-snps-femto-v2: Remove AHB2PHY
 interface clock
Message-ID: <20230529211921.imf6tttlrkza4lc3@ripper>
References: <20230529185638.32376-1-athierry@redhat.com>
 <20230529185638.32376-3-athierry@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230529185638.32376-3-athierry@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230529_141538_797690_3B4999AF 
X-CRM114-Status: GOOD (  24.60  )
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

On Mon, May 29, 2023 at 02:56:37PM -0400, Adrien Thierry wrote:
> The AHB2PHY interface clock cfg_ahb_clk is not assigned anywhere in the
> driver. Moreover, it's not used by any device tree, nor is present in
> the qcom,usb-snps-femto-v2 bindings. Remove it.
> 

The downstream driver deals with cfg_ahb as well, so I think it would be
more appropriate to ensure that it's actually wired up.

And in that case, I would find it preferable to switch to use the
clk_bulk API for the introduction of the ref clk - to clean up the error
paths if nothing else.

Regards,
Bjorn

> Signed-off-by: Adrien Thierry <athierry@redhat.com>
> ---
> I'm not 100% sure if the clock should be removed, or if it should be added
> to bindings and device trees that use this PHY. Better informed opinions
> on the topic are highly welcome.
> 
>  drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 20 +------------------
>  1 file changed, 1 insertion(+), 19 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> index 8abf482e81a8..2d9c1105e28c 100644
> --- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> +++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> @@ -113,7 +113,6 @@ struct phy_override_seq {
>   * @phy: generic phy
>   * @base: iomapped memory space for snps hs phy
>   *
> - * @cfg_ahb_clk: AHB2PHY interface clock
>   * @ref_clk: phy reference clock
>   * @phy_reset: phy reset control
>   * @vregs: regulator supplies bulk data
> @@ -125,7 +124,6 @@ struct qcom_snps_hsphy {
>  	struct phy *phy;
>  	void __iomem *base;
>  
> -	struct clk *cfg_ahb_clk;
>  	struct clk *ref_clk;
>  	struct reset_control *phy_reset;
>  	struct regulator_bulk_data vregs[SNPS_HS_NUM_VREGS];
> @@ -165,7 +163,6 @@ static int qcom_snps_hsphy_suspend(struct qcom_snps_hsphy *hsphy)
>  					   0, USB2_AUTO_RESUME);
>  	}
>  
> -	clk_disable_unprepare(hsphy->cfg_ahb_clk);
>  	clk_disable_unprepare(hsphy->ref_clk);
>  	return 0;
>  }
> @@ -176,12 +173,6 @@ static int qcom_snps_hsphy_resume(struct qcom_snps_hsphy *hsphy)
>  
>  	dev_dbg(&hsphy->phy->dev, "Resume QCOM SNPS PHY, mode\n");
>  
> -	ret = clk_prepare_enable(hsphy->cfg_ahb_clk);
> -	if (ret) {
> -		dev_err(&hsphy->phy->dev, "failed to enable cfg ahb clock\n");
> -		return ret;
> -	}
> -
>  	ret = clk_prepare_enable(hsphy->ref_clk);
>  	if (ret) {
>  		dev_err(&hsphy->phy->dev, "failed to enable ref clock\n");
> @@ -381,16 +372,10 @@ static int qcom_snps_hsphy_init(struct phy *phy)
>  	if (ret)
>  		return ret;
>  
> -	ret = clk_prepare_enable(hsphy->cfg_ahb_clk);
> -	if (ret) {
> -		dev_err(&phy->dev, "failed to enable cfg ahb clock, %d\n", ret);
> -		goto poweroff_phy;
> -	}
> -
>  	ret = clk_prepare_enable(hsphy->ref_clk);
>  	if (ret) {
>  		dev_err(&phy->dev, "failed to enable ref clock, %d\n", ret);
> -		goto disable_ahb_clk;
> +		goto poweroff_phy;
>  	}
>  
>  	ret = reset_control_assert(hsphy->phy_reset);
> @@ -463,8 +448,6 @@ static int qcom_snps_hsphy_init(struct phy *phy)
>  
>  disable_ref_clk:
>  	clk_disable_unprepare(hsphy->ref_clk);
> -disable_ahb_clk:
> -	clk_disable_unprepare(hsphy->cfg_ahb_clk);
>  poweroff_phy:
>  	regulator_bulk_disable(ARRAY_SIZE(hsphy->vregs), hsphy->vregs);
>  
> @@ -476,7 +459,6 @@ static int qcom_snps_hsphy_exit(struct phy *phy)
>  	struct qcom_snps_hsphy *hsphy = phy_get_drvdata(phy);
>  
>  	reset_control_assert(hsphy->phy_reset);
> -	clk_disable_unprepare(hsphy->cfg_ahb_clk);
>  	clk_disable_unprepare(hsphy->ref_clk);
>  	regulator_bulk_disable(ARRAY_SIZE(hsphy->vregs), hsphy->vregs);
>  	hsphy->phy_initialized = false;
> -- 
> 2.40.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
