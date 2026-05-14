Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4133CD4851
	for <linux-phy@archiver.kernel.org>; Thu, 14 May 2026 15:49:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eXsU+UpfIZkycOTlEVZq4AA3MfL3ih39kYZa66w3VSY=; b=Gq/S9lbE3cY27C
	ow4ILckGYf9Ud3oGccnAUuhf3QLAV6MPcJW+tabNCgEjFwtH38VPLJxgAW/n7L/++Ia9OpS5kwhXP
	J7bXu8rmavFKtyCWK+lgVVdNML0sAcPy5zzPSnXuPxrPf2LLO2ouNGFA3epNPk2dXhACJVCqnxnoC
	zzUQYAMtnjQ6skXyWdgJ/qO07mj0smCu2OdiewufyrPld4YUJ8WaBLJ/MAkyS4vQRqKEofx8FwUYW
	h9/tHZWo7W225YRHbn5hKonXo1DuRKYGXrwpy9wfn22ujFKul6ZIsYle9gEaXijU+6Tau05BKZ/y2
	ECAo9TqFHzin8/lmxvjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNYJU-00000005wVh-1oGK;
	Thu, 14 May 2026 15:49:28 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNYJR-00000005wUi-1ZVy;
	Thu, 14 May 2026 15:49:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 686D043CD0;
	Thu, 14 May 2026 15:49:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C77FDC2BCB3;
	Thu, 14 May 2026 15:49:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778773764;
	bh=HvYYmbt7vIXkmuUhJ1bsT180d7aFwrKQEHP4FFnba90=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Y7G/MlDxc7c+iftuGNVZEM9Kb7YR+s4gViNlXrJHQtlEzT36sylvsQ3qTpmLx4yxa
	 iVr3zOI8qWxKqej6V1ZFUwpdVgzYLLu57pO+QN+YOPPMobuaj89I9fUt6tmRenh7bT
	 uHZ5ryMuUrjba9tzsuaNTpvpzIhPL3U0vCbZTiw6E0iMQ5MhAOz3oXcGH2u/lGd/yj
	 nhd9wOvKsDZ+wYfwPzjDFqZklfutUCwFAwoIiOODxsJ+33fJA9fndK6qDIj5ymZXJ5
	 sB49VnvrdHeM+ZSsI/04qwecYL1isVJXSvS9eITmx2P6RW4FSWHLSE7H9iJ6gjP8BG
	 J2Kl2fWSncpWA==
Date: Thu, 14 May 2026 21:19:20 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Felix Gu <ustc.gu@gmail.com>
Cc: Peter Griffin <peter.griffin@linaro.org>,
	=?iso-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Naveen Kumar <mnkumar@google.com>,
	Joy Chakraborty <joychakr@google.com>, Roy Luo <royluo@google.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: google-usb: Fix runtime PM cleanup on probe failure
Message-ID: <agXvAB1AgXvywP2B@vaman>
References: <20260316-google-v1-1-30a034e87a2a@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260316-google-v1-1-30a034e87a2a@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260514_084925_430545_2E2DDE5B 
X-CRM114-Status: GOOD (  18.20  )
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

On 16-03-26, 21:11, Felix Gu wrote:
> In google_usb_phy_probe(), if typec_switch_register() fails,
> pm_runtime_disable() is not called, leading to an unbalanced
> runtime PM state on probe failure.
> 
> Switch to devm_pm_runtime_enable() to ensure that runtime PM is
> automatically disabled both on probe failure and during driver
> removal.

PLease see https://sashiko.dev/#/patchset/20260316-google-v1-1-30a034e87a2a%40gmail.com

> 
> Fixes: cbce66669c82 ("phy: Add Google Tensor SoC USB PHY driver")
> Signed-off-by: Felix Gu <ustc.gu@gmail.com>
> ---
>  drivers/phy/phy-google-usb.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/phy-google-usb.c b/drivers/phy/phy-google-usb.c
> index ab20bc20f19e..79480f8b110e 100644
> --- a/drivers/phy/phy-google-usb.c
> +++ b/drivers/phy/phy-google-usb.c
> @@ -251,7 +251,9 @@ static int google_usb_phy_probe(struct platform_device *pdev)
>  		return dev_err_probe(dev, PTR_ERR(phy_provider),
>  				     "failed to register phy provider\n");
>  
> -	pm_runtime_enable(dev);
> +	ret = devm_pm_runtime_enable(dev);
> +	if (ret)
> +		return dev_err_probe(dev, ret, "Failed to enable runtime PM\n");
>  
>  	sw_desc.fwnode = dev_fwnode(dev);
>  	sw_desc.drvdata = gphy;
> @@ -271,7 +273,6 @@ static void google_usb_phy_remove(struct platform_device *pdev)
>  	struct google_usb_phy *gphy = dev_get_drvdata(&pdev->dev);
>  
>  	typec_switch_unregister(gphy->sw);
> -	pm_runtime_disable(&pdev->dev);
>  }
>  
>  static const struct of_device_id google_usb_phy_of_match[] = {
> 
> ---
> base-commit: b84a0ebe421ca56995ff78b66307667b62b3a900
> change-id: 20260316-google-3acfa2f3de9d
> 
> Best regards,
> -- 
> Felix Gu <ustc.gu@gmail.com>

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
