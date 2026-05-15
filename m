Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2FCCCD343F
	for <linux-phy@archiver.kernel.org>; Fri, 15 May 2026 15:56:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FAI1OYptXyFOI8MDesTyNpJwJ7GizJ1+qVd/mNFAIDA=; b=mRC5q6uexab190
	ZZM7d8kYrDnSrzkcnbJ23AUfWGIamgOvjvOO/CWLwkLMrL7Cb3ll0id1JAWvrBoT3fgbZHLeHchVp
	8mlUYDYdcAFyq4N2Hq58lADf0G6ZlSY30e2+8vO8WpOYxCRUbg9G06/USetEd1TkwXrCTn9aJPLo+
	wK039CoKx8Na1Nu6gv3XT8eCJF3RrICktWaJMdUBBfaVBxoV9oZYX5xN+kbiwAX8lxDOq3wRZhAHL
	UuuthCqmtg2o2ijJ7wj1jOBPpgPGjlabAmEehlQjVBaKQYSZsaBjK4eRS2947PBY6iy0qixgpI9Ek
	SCfAvG8t6cKbuHLtzyHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNutS-00000008nzb-1yHW;
	Fri, 15 May 2026 15:56:06 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNutP-00000008nyx-2oOO
	for linux-phy@lists.infradead.org;
	Fri, 15 May 2026 15:56:05 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-452aacde862so861860f8f.0
        for <linux-phy@lists.infradead.org>; Fri, 15 May 2026 08:56:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778860562; x=1779465362; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cIoaHInJzJMFZFUL5vSiONN3t6PkwcrQhMuCb/BggXc=;
        b=nbWfNcuThvTNASKaeP/vp0C1qtYnY6pw7xeSNsrdXPLF2BHjsN9AjU4sRpOrOq1y8W
         /YpZIvmwQquEbRjHq387to/OSIlUgb9x5afb4y9SI3tdDjbQ4AW1DVPAYbf1hPMWzloW
         I/vr2sfOMaBlgdbJLMgNF/lz0dUp/9F3mmu/RKpayvQNOqmRP1eV6mc4HiDhLagJA5wf
         gpx2XlK1i3pKjxJv8VLQKhO1uzc/sIsbENiSwZ8j91cnq4jUL2VTPl4SuBAXDpGQimR0
         u9xWdRC40wbpZMySKAQwbn5+1RiwVwbfn+7MOyQi1BDEhWyoiZLEHHKT8ZFChRmgk0FA
         5hNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778860562; x=1779465362;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cIoaHInJzJMFZFUL5vSiONN3t6PkwcrQhMuCb/BggXc=;
        b=KiTpGK6GV6yjyr4QyZukNgEF3qDHrZRZJu+dW99vPuaL+RY0HEjufMGhqUOtx7vw8X
         uT6dPpg6OjQkcfQA0TalUF15vC718tgCvB1vgBgS1oxuMvXgxQm3S6pk73hCtdnbZ95w
         OqfxOpmmLzrxAoK3KuFJMAR31GZLnx3ugU+3XcHYit/EFj/dy9Ja4n/7yE8Zfr0mCshw
         S+IIgf1XLQo8k0l5wAfcNaUBt1VISBCWA84N737fV4ChPK9UQYolwvF90Tfy+IH6Z22Z
         35iPJPDJZegmaic+4tvxrj0XKSPZ+B7XM8xn4wDdaZSXZ3loE1KlEs2GwSqX7Lx/des2
         8nUQ==
X-Forwarded-Encrypted: i=1; AFNElJ+wgClD0W5Jdw0otJQLGRXRLq6lou/2b/Qa3vUpdeEkTUa+npylTOhrCZX2k5yV6QH38Rf9Dv459p8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxn9Gr+MfYcxavKMZLRlSZ0zeOK2DQGr01MrixtoXlHkDF3OJQu
	cw2zt8LJpB/rSlI/epDxyJvz+TD7GZLs5GWAuNJStJ3DahomR8ncvOib
X-Gm-Gg: Acq92OGRZVHAOpOQblZlhzeIdi8DGqa01i3u+gvoe0Xsgr9LebxxEtiRnnMKCK371CB
	Brf0N0/1MOYMOugZH7G7/mbHyqE2ZXhjd7HK6SHVsYBvzRncWJMhsAkUElJJ9JxQW5OGu6oDrnn
	iu8ZE3P6VOLQ8OR4Np27St/CojKBWEVJvke/epkYsaSEBWR69rACODInKt4LhXwLWxJsZrrlhcn
	re/gkhRNarONKSQdparS5PJVSLYTtZE3jSUzq9xCJ6HfMrqCj7kTnBlL+JYLuzJxaPM5+Gj9vWM
	2Y0WXxnyjLAgcSEvrkaOHQ0PvmXibyGQQzlbiT2ooIeQs81B7k7zRP9QSIdzxc5Ubf7yvRVH5R4
	B7e4ORDYQ7KPoBkh1alaUD87uYIM+fnjYVp/sfeTB+LxXEERmGy54JHWrM1W+/VJ2JdjGB7Br2z
	aS9ZjomWI6CAOklINf6qAjlMKTeriIzsozf+0=
X-Received: by 2002:a05:6000:46dc:b0:446:8299:c109 with SMTP id ffacd0b85a97d-45e5c5eb0dcmr1729431f8f.7.1778860561475;
        Fri, 15 May 2026 08:56:01 -0700 (PDT)
Received: from skbuf ([2a02:2f04:d507:6e00:9f61:24db:b04:35c4])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45da0a19b1dsm15188387f8f.17.2026.05.15.08.56.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 May 2026 08:56:00 -0700 (PDT)
Date: Fri, 15 May 2026 18:55:58 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Hongling Zeng <zenghongling@kylinos.cn>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, johan@kernel.org,
	kishon@kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, zhongling0719@126.com
Subject: Re: [PATCH 1/2 v3] phy: ti: pipe3: Fix clock resource leak on probe
 errors
Message-ID: <20260515155558.eigeqtmkdifqciu5@skbuf>
References: <20260515040522.27793-1-zenghongling@kylinos.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260515040522.27793-1-zenghongling@kylinos.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_085603_735124_6202AC71 
X-CRM114-Status: GOOD (  22.76  )
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

On Fri, May 15, 2026 at 12:05:22PM +0800, Hongling Zeng wrote:
> When devm_phy_create() or devm_of_phy_provider_register() fails,
> the refclk that was enabled earlier is not disabled, causing a
> resource leak.
> 
> Fix this by adding an error handling path to disable the clock
> when these functions fail.
> 
> Fixes: 234738ea3390 ("phy: ti-pipe3: move clk initialization to a separate function")
> Signed-off-by: Hongling Zeng <zenghongling@kylinos.cn>
> 

Your patch numbering broke Patchwork. Please do not name patches 1/2 if
2/2 is not in the same thread. Neither this patch nor "[2/2] phy:
ti-pipe3: Fix EPROBE_DEFER handling for clock resources" can be applied.

Also, wasn't v3 this? https://patchwork.kernel.org/project/linux-phy/patch/20260515021635.13444-1-zenghongling@kylinos.cn/
shouldn't this be v4?

pw-bot: cr

> ---
>  Change in v2:
>   -Add pm_runtime_disable() in error path (reported by Sashiko AI).
> ---
>  change in v3:
>   -Fix unbalanced clock disable by checking clk_prepare_enable()return value and
> setting sata_refclk_enabledonly on success.
>   -Fix error path teardown order to match ti_pipe3_remove()(disable clock before
> disabling runtime PM).
> ---
>  drivers/phy/ti/phy-ti-pipe3.c | 26 ++++++++++++++++++++++----
>  1 file changed, 22 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/phy/ti/phy-ti-pipe3.c b/drivers/phy/ti/phy-ti-pipe3.c
> index b5543b5c674c..58fbc3b27813 100644
> --- a/drivers/phy/ti/phy-ti-pipe3.c
> +++ b/drivers/phy/ti/phy-ti-pipe3.c
> @@ -831,21 +831,39 @@ static int ti_pipe3_probe(struct platform_device *pdev)
>  	 */
>  	if (phy->mode == PIPE3_MODE_SATA) {
>  		if (!IS_ERR(phy->refclk)) {
> -			clk_prepare_enable(phy->refclk);
> +			ret = clk_prepare_enable(phy->refclk);
> +			if (ret) {
> +				dev_err(dev, "Failed to enable refclk %d\n", ret);
> +				goto err_pm_disable;
> +			}
>  			phy->sata_refclk_enabled = true;
>  		}
>  	}
>  
>  	generic_phy = devm_phy_create(dev, NULL, &ops);
> -	if (IS_ERR(generic_phy))
> -		return PTR_ERR(generic_phy);
> +	if (IS_ERR(generic_phy)) {
> +		ret = PTR_ERR(generic_phy);
> +		goto err_clk_disable;
> +	}
>  
>  	phy_set_drvdata(generic_phy, phy);
>  
>  	ti_pipe3_power_off(generic_phy);
>  
>  	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
> -	return PTR_ERR_OR_ZERO(phy_provider);
> +	if (IS_ERR(phy_provider)) {
> +		ret = PTR_ERR(phy_provider);
> +		goto err_clk_disable;
> +	}
> +
> +	return 0;
> +
> +err_clk_disable:
> +	if (phy->sata_refclk_enabled && !IS_ERR(phy->refclk))
> +		clk_disable_unprepare(phy->refclk);
> +err_pm_disable:
> +	pm_runtime_disable(dev);
> +	return ret;
>  }
>  
>  static void ti_pipe3_remove(struct platform_device *pdev)
> -- 
> 2.25.1
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
