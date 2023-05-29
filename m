Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32BEFC7EE23
	for <linux-phy@archiver.kernel.org>; Mon, 29 May 2023 21:12:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M35n7j5sd81kYUQZhqFLkipzzf8tzhDeJYE0BHmeQt4=; b=wJ6x/3DdoEbNoc
	rxDeWm0/fdQcK6QAUh/Egde0aXBHDYhRQJZpsheuW/0eRo89+a2k61zY0qlNoTBfRKs5SMjZBisXH
	7FvuwxyRwUkC8ncQB68xmFeFRAQBmkOQXjxVNp153Cqxx/xG+AWXh9d+FJr17xh2CBMRqr57SmZjy
	IQCYDejs5hT+oAdISnuRom8UPqEHkSGaP2x4Sx6zhdbUr/OPMA3ZHrZ9fTRjCrCbvEHKaY9/wHG7L
	YRV8PY8a9n5ce3Uxze8f/o1g6MW7MLxffFeaRFZwkoWR65cocLKH0omqhDXuK+udtouVwhHoxiv+s
	LqOWa0wf40ar8Fa13ndQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3kAb-00BiBG-21;
	Mon, 29 May 2023 21:12:49 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3kAX-00BiAn-2u
	for linux-phy@lists.infradead.org;
	Mon, 29 May 2023 21:12:47 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 79007618A3;
	Mon, 29 May 2023 21:12:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 588FCC433D2;
	Mon, 29 May 2023 21:12:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685394764;
	bh=V9Uy9QyvxrxjT3ieh9GMUe7WiVs9FXgRrlL/rmhLfAs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eH1Sbrfni3PKJDhmLnkrHraoBW2TFL/7zHBHA8ws12SQ19coXQNY030DCb8vcaWL2
	 bJBNIzB3o4Atq8EsD75Sgc39ahow5/R6aDLkWjPHL0LgCOswpHAdC8TNEW3Wb7j4lQ
	 BFIIJeRvXDrERc4Z7KFQNQ/IeH5hEcBTXBeSWjdOMD2dQ4kHbpTAvVrmPe8p+Nsahn
	 obeZqVap9cZ59TVEIzwluAv6UjVcMBebeYrxZaDrlIZnaXh0EzwOMSVoCwWI9xW60+
	 UuS8PDXqdDuI3/OW7fawj1JF84RIbbMFrt0imzdgRTRMQG+lg2X/9ynHSYGJ/ZObtG
	 k3aAG3uH6fukQ==
Date: Mon, 29 May 2023 14:16:29 -0700
From: Bjorn Andersson <andersson@kernel.org>
To: Adrien Thierry <athierry@redhat.com>
Cc: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH RFC 1/2] phy: qcom-snps-femto-v2: properly enable ref
 clock
Message-ID: <20230529211629.7sw542tyyygv4tcs@ripper>
References: <20230529185638.32376-1-athierry@redhat.com>
 <20230529185638.32376-2-athierry@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230529185638.32376-2-athierry@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230529_141246_123215_D35B1BDF 
X-CRM114-Status: GOOD (  22.68  )
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

On Mon, May 29, 2023 at 02:56:36PM -0400, Adrien Thierry wrote:
> The driver is not enabling the ref clock, which thus gets disabled by
> the clk_disable_unused initcall. This leads to the dwc3 controller
> failing to initialize if probed after clk_disable_unused is called, for
> instance when the driver is built as a module.
> 

Good catch!

A side note though, clk_disable_unused() has no way to take kernel
modules into consideration today, and it doesn't handle the case where
clock drivers are built as modules appropriately.
Work has started to address this, but as of todaybooting the system
without clk_ignore_unused is not recommended...

> To fix this, add calls to clk_prepare_enable/clk_disable_unprepare at
> the proper places.
> 

If I parse the downstream kernel correctly the refclock should be
turned off across runtime and system suspend as well.

Regards,
Bjorn

> Signed-off-by: Adrien Thierry <athierry@redhat.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 20 +++++++++++++++++--
>  1 file changed, 18 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> index 6c237f3cc66d..8abf482e81a8 100644
> --- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> +++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> @@ -166,6 +166,7 @@ static int qcom_snps_hsphy_suspend(struct qcom_snps_hsphy *hsphy)
>  	}
>  
>  	clk_disable_unprepare(hsphy->cfg_ahb_clk);
> +	clk_disable_unprepare(hsphy->ref_clk);
>  	return 0;
>  }
>  
> @@ -181,6 +182,12 @@ static int qcom_snps_hsphy_resume(struct qcom_snps_hsphy *hsphy)
>  		return ret;
>  	}
>  
> +	ret = clk_prepare_enable(hsphy->ref_clk);
> +	if (ret) {
> +		dev_err(&hsphy->phy->dev, "failed to enable ref clock\n");
> +		return ret;
> +	}
> +
>  	return 0;
>  }
>  
> @@ -380,10 +387,16 @@ static int qcom_snps_hsphy_init(struct phy *phy)
>  		goto poweroff_phy;
>  	}
>  
> +	ret = clk_prepare_enable(hsphy->ref_clk);
> +	if (ret) {
> +		dev_err(&phy->dev, "failed to enable ref clock, %d\n", ret);
> +		goto disable_ahb_clk;
> +	}
> +
>  	ret = reset_control_assert(hsphy->phy_reset);
>  	if (ret) {
>  		dev_err(&phy->dev, "failed to assert phy_reset, %d\n", ret);
> -		goto disable_ahb_clk;
> +		goto disable_ref_clk;
>  	}
>  
>  	usleep_range(100, 150);
> @@ -391,7 +404,7 @@ static int qcom_snps_hsphy_init(struct phy *phy)
>  	ret = reset_control_deassert(hsphy->phy_reset);
>  	if (ret) {
>  		dev_err(&phy->dev, "failed to de-assert phy_reset, %d\n", ret);
> -		goto disable_ahb_clk;
> +		goto disable_ref_clk;
>  	}
>  
>  	qcom_snps_hsphy_write_mask(hsphy->base, USB2_PHY_USB_PHY_CFG0,
> @@ -448,6 +461,8 @@ static int qcom_snps_hsphy_init(struct phy *phy)
>  
>  	return 0;
>  
> +disable_ref_clk:
> +	clk_disable_unprepare(hsphy->ref_clk);
>  disable_ahb_clk:
>  	clk_disable_unprepare(hsphy->cfg_ahb_clk);
>  poweroff_phy:
> @@ -462,6 +477,7 @@ static int qcom_snps_hsphy_exit(struct phy *phy)
>  
>  	reset_control_assert(hsphy->phy_reset);
>  	clk_disable_unprepare(hsphy->cfg_ahb_clk);
> +	clk_disable_unprepare(hsphy->ref_clk);
>  	regulator_bulk_disable(ARRAY_SIZE(hsphy->vregs), hsphy->vregs);
>  	hsphy->phy_initialized = false;
>  
> -- 
> 2.40.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
