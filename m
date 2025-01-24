Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C783FC02181
	for <linux-phy@archiver.kernel.org>; Fri, 24 Jan 2025 10:55:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j5x2cGrs4iWMVvMK9Q3plK3vl4A6WnNcpU1YA/bS1LM=; b=3EY2mRRzA7IQ7y
	9Wl85BdTu8t9YxrNGPQSJU6eydUgb+aqxdDt9EOhX9K/Ul6m6ARE4pDJTduJbzZvQPOVfDFIia6MN
	UdjAqTE53o5Im6ekGuOb/ydo6lcJdyE126pWoMUyC+dLKHoLKw+3uZJ30zuJ3InPCsj4NiQsOMVJG
	QRynTVqSXmo0Vk2RHRCql0plhtGs5DEO5KWQXRoohHaDkIOi6btyZvfE1ZHIHABZs8hp0tC5/7Lwf
	ty54CfLect4dOxF1yUwMzqm8Yz+MtDfQ0I9C8QguHikR12A76nAUBBXikC8c91cE6pu1yrHNi378x
	Lwxm9PsEj462LtjjkvhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tbHLs-0000000EVgz-2NOA;
	Fri, 24 Jan 2025 10:55:52 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tbHLp-0000000EVea-2xzA
	for linux-phy@lists.infradead.org;
	Fri, 24 Jan 2025 10:55:51 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-5401e6efffcso2174989e87.3
        for <linux-phy@lists.infradead.org>; Fri, 24 Jan 2025 02:55:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737716148; x=1738320948; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=S1y2kMAHTS24gTACYcRUTYCl+HO5S40W6bTqtE2PJx8=;
        b=Yl2CVXNIbydn5jRxN2cNl+p6pGAMfz7Uz7TFaEij/LYXmJDHChkvX41htxkQI42tWT
         FbFreAtSo2aZY5p16DycdScopta46DviN6jzEG7bLCqWn0qTMzOhPHHkmxUWwBqv0LYo
         AYOZzsjZ8sg/gMkFMS7rzBZZIaITytV8HUfG1JLjdnlOyy0/uaHs97AltASG2huKZbic
         Ve3T38ATbMjrzzH+UOycR1v3+JacauTmiPpg9B9lpj1iBNEAQm0dW0ClFv8cZ/2ijgiR
         RqBG16Kcy/bUpIO2fpvZoksaYl20dTXdaJx0OugxlLKtLQtlTOJuzo0dP8+PC84EzJ5F
         p1sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737716148; x=1738320948;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S1y2kMAHTS24gTACYcRUTYCl+HO5S40W6bTqtE2PJx8=;
        b=Jfq4rvWmDxYxQTNNvWzUAmulbvJ7KgmK5m7zzO+9idanYsNbvg+0Sgnca424K2DMR2
         lMCXwa8wI2trGpjRiADP2wNnzkpwOaXOht1y/xGogZfIE+npbV98kGJbgS6cuPecM6a9
         36ila9+j7Ou3nJU04JdFkuHdRDBUGuXuinW4VdgIdOiK0W4iorXSKS8cOdac5vaFqWib
         zVxu7Q/MaYn2Ss0BOg8jaWZDkS7yWRO8WCEaXsnBM8fLTTCLw3xUCfcydJGfv6nqBdWw
         jDDnK0/+aOOr+n/3RHSbj1kFKhBRgmGyuLxsZ3T2lbs67FxxyWCFxue88mLHsaXBT+s4
         eLIA==
X-Forwarded-Encrypted: i=1; AJvYcCUUVcKz/3d+H+Dk25TkhLzeUL3OZxN0E+r+8JXBYNYkwQpcEQuIudJybcIjZao0Jv5AdkrHDns+7gQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw/LLtDWIFyL7qGHzmTiuBGYrAGWAplpZcsaEWNQAV1wqvvCvel
	7CzbadSXrO71ZtNRX5nn1Udnhq5rU5n12c+Ibiuqu1qiMDgttbJIKPMBk8qqtXg=
X-Gm-Gg: ASbGncv4sRZ3sS5L/an86C0mgGwTMOuBdAemX8T/ry41qWyrF+X8V4J7AYjwo1oIcbJ
	G/QmVnzYyQPwJL5rffz1k56tIp3VN2NOwWajsmMCnqyXrsYfI0i/pzQJJQBv8LTtoW1LkxUYCzu
	wqVIEoagejuOMbbr4gjChMT17pHcpGHYRSD8i1o7QZJw/qUdJ95fvBMhk0VJGAgJn5/PhLdM4be
	TKBIpL/2QL+t0zCtNw26E3Bmr8XJ5KA5UCIuAJYou7BTHl0ldl6P+b68PvoR5I/3obg/wwAtSqc
	WE6qifGgJO6kdOv08eIF9qvxxYbXLskKkgvL6JqvHUx+c2nf6PtfMr3o5dUW
X-Google-Smtp-Source: AGHT+IG1so1EJbtoaZLNEkBkwyrMeUwJf4GSPqV5pFUaUQ8TSEQNKfZY2ntLuIIOfXfOLnxy5gbRGw==
X-Received: by 2002:ac2:5e9d:0:b0:542:2166:44cb with SMTP id 2adb3069b0e04-5439c282b25mr9456214e87.35.1737716147649;
        Fri, 24 Jan 2025 02:55:47 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-543c8228997sm256890e87.43.2025.01.24.02.55.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jan 2025 02:55:46 -0800 (PST)
Date: Fri, 24 Jan 2025 12:55:43 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Yan <andyshrk@163.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, 
	Damon Ding <damon.ding@rock-chips.com>, heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v5 05/20] drm/rockchip: analogix_dp: Replace DRM_...()
 functions with drm_...() or dev_...()
Message-ID: <rf6bdpi4wa2lbz23rvy7i5dl5nlidkky36gjjbagiqge3h7oi7@y5vp4u6o7hqd>
References: <20250109032725.1102465-1-damon.ding@rock-chips.com>
 <20250109032725.1102465-6-damon.ding@rock-chips.com>
 <40b09942.533e.19449c023a1.Coremail.andyshrk@163.com>
 <a8bee693-cbde-469d-abcf-363311cfd904@rock-chips.com>
 <87ed0tn29l.fsf@intel.com>
 <6007b76a.6021.19497b090d4.Coremail.andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6007b76a.6021.19497b090d4.Coremail.andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250124_025549_765414_C15D28A8 
X-CRM114-Status: GOOD (  24.55  )
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

On Fri, Jan 24, 2025 at 05:41:58PM +0800, Andy Yan wrote:
> Hi,
> 
> At 2025-01-23 20:27:50, "Jani Nikula" <jani.nikula@linux.intel.com> wrote:
> >On Wed, 22 Jan 2025, Damon Ding <damon.ding@rock-chips.com> wrote:
> >> Hi Andy,
> >>
> >> On 2025/1/9 14:28, Andy Yan wrote:
> >>> 
> >>> Hi Damon,
> >>> 
> >>> At 2025-01-09 11:27:10, "Damon Ding" <damon.ding@rock-chips.com> wrote:
> >>>> According to the comments in include/drm/drm_print.h, the DRM_...()
> >>>> functions are deprecated in favor of drm_...() or dev_...() functions.
> >>>>
> >>>> Use drm_err()/drm_dbg_core()/drm_dbg_kms() instead of
> >>>> DRM_DEV_ERROR()/DRM_ERROR()/DRM_DEV_DEBUG()/DRM_DEBUG_KMS() after
> >>>> rockchip_dp_bind() is called, and replace DRM_DEV_ERROR() with dev_err()
> >>>> before calling it.
> >>>>
> >>>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> >>>> ---
> >>>> .../gpu/drm/rockchip/analogix_dp-rockchip.c   | 29 ++++++++++---------
> >>>> 1 file changed, 15 insertions(+), 14 deletions(-)
> >>>>
> >>>> diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> >>>> index 546d13f19f9b..8114c3238609 100644
> >>>> --- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> >>>> +++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> >>>> @@ -100,13 +100,13 @@ static int rockchip_dp_poweron(struct analogix_dp_plat_data *plat_data)
> >>>>
> >>>> 	ret = clk_prepare_enable(dp->pclk);
> >>>> 	if (ret < 0) {
> >>>> -		DRM_DEV_ERROR(dp->dev, "failed to enable pclk %d\n", ret);
> >>>> +		drm_err(dp->drm_dev, "failed to enable pclk %d\n", ret);
> >>> 
> >>>                 You just need to pass dp here:
> >>>                  drm_err(dp, "failed to enable pclk %d\n", ret);
> >>> 
> >>
> >> I see. It is really better to pass dp instead of dp->drm_dev. I will 
> >> update all relevant logs in the next version.
> >
> >No, this was bad review feedback. You're absolutely expected to pass
> >struct drm_device to drm_err() and friends.
> 
> No, I didn't see how the drm_err macro and friends restrict/expect the passing of only the drm_device pointer.
> As for the platform device driver itself,  we hope that when an error occurs, the log clearly indicates
> the specific device that the log corresponds to, rather than a generic drm_device.
> The original code of this driver used the macro related to DRM_DEV_ERROR to do just that.
> And similar patches have been merged before
> 
> Please also refer to the discussion here.[0]
> [0]https://lore.kernel.org/linux-rockchip/20250109032725.1102465-1-damon.ding@rock-chips.com/T/#m54bd842be660031773834cedea6c73a5033ca973

Reviewer's mistake (mine). I assumed that you wanted to pass drm device.

> 
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
