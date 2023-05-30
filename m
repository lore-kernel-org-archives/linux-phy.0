Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFAFAC77B73
	for <linux-phy@archiver.kernel.org>; Tue, 30 May 2023 13:24:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WZ1ot4X4oBfF+8FibqjPhpKyBxlDkhrv2UJmLqHqFGc=; b=mytdHF1ckM3S9k
	lwA7j+hv53ObI+4WnCoJUVM11019JwPEruJ47c3aBCOWW4UU4sT4xOLawP1L/DbCe+K4IwU5Y2cNc
	XDTGOKg1TYYPBTB9zBYR8w44R0lAE8oiam4DnN28xkLipeNiTuG5FqqyO9ddkAQ8JyGbADt5f9tyY
	ztt+o5kMPDHS4tGvmS/4RACJWl7iMtollxuIUFFs+snsidvjxf04QPaq5l3u+FYdKiMeEOafFah7W
	O462qsDVKq8nGK2TmrG+85zWn8H2FVcj2QP+qqPf+P6bysDb1ZjGzkg1r0uHQfuaCLiA7/A7mn6kO
	gSZ9S3rAeNdNpidk8I+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3zKk-00E27h-1p;
	Tue, 30 May 2023 13:24:18 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3zKi-00E26w-0m
	for linux-phy@lists.infradead.org;
	Tue, 30 May 2023 13:24:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1685453052;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=9h2qv+kuQ8pwupuNrZsU9iPA+8ZB55lYhU0C+yRT42k=;
	b=O+X168maF/C6Ihk/lep3GZm65pUOSeWeyZjn5AxEe//p/S2QOyDVM50ljftBeVzX6fDgUx
	NJQ0QwaeSeZ/sObnQFzShY2neovcYNuPctHId5SAss1PCLaQLrlThPSbFzQ1MrL1+yZhMD
	OWtOwJwq2TXPsEovh+qqJN87eZ7d+2Q=
Received: from mail-oi1-f200.google.com (mail-oi1-f200.google.com
 [209.85.167.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-306-ozV2FIi5PNaEFik6SrWdqg-1; Tue, 30 May 2023 09:22:42 -0400
X-MC-Unique: ozV2FIi5PNaEFik6SrWdqg-1
Received: by mail-oi1-f200.google.com with SMTP id 5614622812f47-3985cabc77eso3511512b6e.1
        for <linux-phy@lists.infradead.org>; Tue, 30 May 2023 06:22:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685452961; x=1688044961;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9h2qv+kuQ8pwupuNrZsU9iPA+8ZB55lYhU0C+yRT42k=;
        b=dHz5XJPDrK5FX+EmiGt5qyNHi9ThtxTM3pLCXatPI8SJBOdiIQ0JGZ+lECVcToHBUn
         LTsVCKokgCjQ4BDvuScCd2BXty3p688bZwKLmRKSTU7H5WNZNow2OTytBTlQsF/eLtoo
         b3eT2z1YKBZTtSxgJjlkrENZJVUHzIaDzSAT6l5vlYEBcJNlCf5Awa51gt84aPdOaof/
         kBqiA7m3WhOSzz1kfmBpGHV0TEvxxA+wk1Zijvd8z2aTxFAbsZAAP/BxYZjrUB8LB5AQ
         h8wQLCB4LK2Q5eyQ0jeCbbHzxreaXxEx6vkzJ64Ss83UCkwzd4XYI2pwJGtv4GoQRF3w
         L/rg==
X-Gm-Message-State: AC+VfDypcUXvsVP+RGfk0AmlRxBh49zxKDCeL3586Zr6W4BeQUoo7uw8
	EjwVjIyxkWDTNXcPXoG4gSqRVem6jxJqUK8kRTo9yYz/tJfFEXUd6uq2BmaN9FLDs7dWj/Mwssk
	piYLKFzQV+YY0Q0pHBJayCRl6tw==
X-Received: by 2002:aca:bf86:0:b0:39a:4170:6840 with SMTP id p128-20020acabf86000000b0039a41706840mr423821oif.21.1685452961711;
        Tue, 30 May 2023 06:22:41 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ4hvJly164alHc4qnzJk9MLJR7zrivpgNQbh/WGkmSgj9lPucLLDbx/4axIxdcaCBEb1Ukjfg==
X-Received: by 2002:aca:bf86:0:b0:39a:4170:6840 with SMTP id p128-20020acabf86000000b0039a41706840mr423814oif.21.1685452961485;
        Tue, 30 May 2023 06:22:41 -0700 (PDT)
Received: from halaney-x13s ([2600:1700:1ff0:d0e0::12])
        by smtp.gmail.com with ESMTPSA id m18-20020a056808025200b0039a03e7b65esm3099937oie.53.2023.05.30.06.22.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 May 2023 06:22:41 -0700 (PDT)
Date: Tue, 30 May 2023 08:22:38 -0500
From: Andrew Halaney <ahalaney@redhat.com>
To: Adrien Thierry <athierry@redhat.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH RFC 1/2] phy: qcom-snps-femto-v2: properly enable ref
 clock
Message-ID: <20230530132238.7xl2efx4of5u6vzz@halaney-x13s>
References: <20230529185638.32376-1-athierry@redhat.com>
 <20230529185638.32376-2-athierry@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20230529185638.32376-2-athierry@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_062416_372017_0CFC2231 
X-CRM114-Status: GOOD (  20.44  )
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
> To fix this, add calls to clk_prepare_enable/clk_disable_unprepare at
> the proper places.
> 

I'm a sucker for a good paper trail, maybe add:
Link: https://lore.kernel.org/linux-arm-msm/ZEqvy+khHeTkC2hf@fedora/
Fixes: 51e8114f80d0 ("phy: qcom-snps: Add SNPS USB PHY driver for QCOM based SOCs")

good work!

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
