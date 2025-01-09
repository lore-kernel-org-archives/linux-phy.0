Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E370E77199
	for <linux-phy@archiver.kernel.org>; Thu,  9 Jan 2025 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cidK8buzsc35+7DQ+Zy+Lt61csjhyCNerVVUC/jQAc4=; b=0oJ4odvVzJMJkw
	dw+g/pegCn7ygsn/m11oSi2X52pXvGDADLIeUqdQ8e/fRvuCayKVoerpHhvLwooosiH5+34T9fnkx
	uiGrYuWKxFEFKfh159niUH4Ef/VN6uvTbp+dvnEZDwO4P30SSoqzSf5pPXMd+W/+7Hwtf1e8rYKJc
	hMiwgccIx76GTL15ymAl+qR2STD4jVB3KXxXVDk28mksgU066OattIMup1HaOqy2MuyyUHc6WhKl4
	RnyVuMXIHGGsQtRLrRIAQ4bfENVh3omusSWl4YXywR4FFrHSEydhZXCxqxGsuuqPJ/vS30dQ9RvKh
	/td4A/I0ENZo7zNnyH+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVrpw-0000000BsVK-476j;
	Thu, 09 Jan 2025 12:40:33 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVroj-0000000BsLJ-3K91
	for linux-phy@lists.infradead.org;
	Thu, 09 Jan 2025 12:39:18 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-540254357c8so792796e87.1
        for <linux-phy@lists.infradead.org>; Thu, 09 Jan 2025 04:39:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736426355; x=1737031155; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+fqi2sB9Eo33cd+pF6AS06tGvsYXM7VDT81xCwEBraw=;
        b=K5UjZ7lE4K5kTINZsz6u7OoXN75uRJh9UMY57f7UPav/eUkwPzAI6hJDa3M8Q0Ll2T
         s4/Qhd0sBvS/R5qyLGSeaBTOpwM+g3IR/V9eRuHLSkVrBoOY7avhvjvF4NIFdzHa8XhM
         45TfMc9nwjROyKrz8OBbZnOI7tBsRWBmv99J7EuMglj7liVX7SiuW+nZsv37scpPsjW4
         09E+CUdoTDM298ARUxeUMvKMkdg6wcJizSiA7T6b6l7bm8b3surF2qDWdf3uTYAc/sNp
         PoXaR1BO+kq27E6cIeidxTb+XKxB/Ti2BDlhLoVpIl07SrLBWd/7CCHEHtQURHWB3Ia5
         AD/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736426355; x=1737031155;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+fqi2sB9Eo33cd+pF6AS06tGvsYXM7VDT81xCwEBraw=;
        b=Pfshwo8LOu6Hf/Qt+6dyMvdMHMxUggMY9efAcfgla0KKX5zohFxga7Iy1NcJwUsExv
         4lw8B/QuVL52Mfpx9zQ7TbNwwaVVBQDWdroIBSayQ1KX92C8ZnfSM/wgW4/2Te0cO1F8
         fFQWrNU3zgvLXLFKgywwH2Cghl4gfuK02GJbGD+MZbBXEzgow2ZG957NXkK0KkuWR4w/
         qa7jwppWSn4iomdEYDxL+puDEQzhKvS/vyYt+R51m8VBqw0MoLbOAsQFudPCtRupUBOh
         VtlNsMqoM8XgKA7iQK5fAuQztImpsS7PM/pJILR3jLovGUr8g9cDCvEaLh3PKWL78UWk
         neEw==
X-Forwarded-Encrypted: i=1; AJvYcCW/ULqLiVtGAggUruK6wN5RNWB4jRzTniQOdh9Bxw3HEjbuEFMcIwF7LmP11aK7RmLn+vbndeTzaqM=@lists.infradead.org
X-Gm-Message-State: AOJu0YxFDYymK5BYfSoTRBsZL0ufV7w5GcgQccQxCfoBCwRNvkXf1yIj
	sO97SavcQ5WCaBshjyZYnTpt8ceoa/CF0c3EILcLtRRQIvz0Ij40zuDDDJdSY5U=
X-Gm-Gg: ASbGnctk8Qmh9HjNaoFM5MdoHRTVrenel8++1+uPOin370oEuzov3lpBJOK2mw92P9H
	1hRKLmg78exWfHMEcb3Ojbn0RWJ98Mgd0ytxWOREBLNF6qLcu6/FAHhkkw4b5LUjo4h0icKrDZC
	h+xvpMvteb1U0z71qtJUSbhhzH7cjyhSqpT9yfiJXlkUcItfvugwqeM6V5sgZU/DXHzH5OYFvTX
	nk+0HOV9zHso4N90jN4xPfJNnILEtpfP/5Om9ssUtp/VH+GSCMkXc08s1baavB9DsusqH2B5dWs
	HDCwajggAHZIGNDfvDMu9Ccw4n0I3MR9LwcZ
X-Google-Smtp-Source: AGHT+IF8KTbR4QB2nrxLqa6lQMCAzL4XCQ4k/7mYRphIWqgLup+TimV/WVu8MCf6LAMcOCZjoERp1Q==
X-Received: by 2002:a05:6512:1242:b0:542:8da7:242f with SMTP id 2adb3069b0e04-5428da724c7mr359076e87.10.1736426355407;
        Thu, 09 Jan 2025 04:39:15 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428bea686dsm187270e87.156.2025.01.09.04.39.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 04:39:14 -0800 (PST)
Date: Thu, 9 Jan 2025 14:39:12 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v5 04/20] phy: phy-rockchip-samsung-hdptx: Add eDP mode
 support for RK3588
Message-ID: <kanqmwi4yzmqjxyxbd3ccmabitko3zfgockmhx22swz46zeqz2@klq3dkaukrxz>
References: <20250109032725.1102465-1-damon.ding@rock-chips.com>
 <20250109032725.1102465-5-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250109032725.1102465-5-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250109_043917_839400_12E03916 
X-CRM114-Status: GOOD (  17.10  )
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

On Thu, Jan 09, 2025 at 11:27:09AM +0800, Damon Ding wrote:
> The PHY is based on a Samsung IP block that supports HDMI 2.1, and eDP
> 1.4b. RK3588 integrates the Analogix eDP 1.3 TX controller IP and the
> HDMI/eDP TX Combo PHY to support eDP display.
> 
> Add basic support for RBR/HBR/HBR2 link rates, and the voltage swing and
> pre-emphasis configurations of each link rate are set according to the
> eDP 1.3 requirements.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> ---
> 
> Changes in v2:
> - Add the module author
> 
> Changes in v3:
> - Split this patch into two, one for correction and the other for
>   extension
> 
> Changes in v4:
> - Add link_rate and lanes parameters in struct rk_hdptx_phy to store the
>   phy_configure() result for &phy_configure_opts.dp.link_rate and
>   &phy_configure_opts.dp.lanes
> 
> Changes in v5:
> - Reuse the existing functions rk_hdptx_phy_consumer_get() and
>   rk_hdptx_phy_consumer_put()
> - Return 0 instead of -EINVAL in rk_hdptx_phy_configure()
> - Remove rk_hdptx_phy_lane_disable() and related check of 0 lanes
> - Mention the design details in the commit message
> - Remove unnecessary rk_hdptx_phy_set_mode()
> ---
>  .../phy/rockchip/phy-rockchip-samsung-hdptx.c | 879 +++++++++++++++++-
>  1 file changed, 869 insertions(+), 10 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
