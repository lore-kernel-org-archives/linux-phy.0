Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E10B9D69114
	for <linux-phy@archiver.kernel.org>; Thu, 28 Nov 2024 14:18:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BG4CbFIsEoiELlCCq0c21P70bwShzflI6S6YcCn6PsQ=; b=qSpBXPYRX0R38R
	NevRiwOC04bl0BmConojO3vQgp7NErz8RCWbnKcNGUnL4gcJ90kqYJ2jgYFKVzuJzG1kt4t5O7pvw
	2jmXdGekKl74E6XbIVgzScjoPQscvoR2TO4P1NCa5GrpmOfNsiekn8pDyEurtEH7kgiZGy1iM/YXS
	GCxCWamo1mY+TBJmh+lA8GgZLM3G14hupOrq2pd6hz3GX4tUC+OxXquYsaUQWqHbSAtaES9MKAT9r
	DTH3VClkI4QWQucTk3AiclDMDZ/NZhXcLj3Z1jXkHPPmGiH7maoQ1toLDF04czGzZTUMb6fBkcNyA
	7mil/E2WXK9wDxMpBoqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGfLo-0000000FkCf-2cgg;
	Thu, 28 Nov 2024 14:18:36 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGfLm-0000000FkBv-1DLP
	for linux-phy@lists.infradead.org;
	Thu, 28 Nov 2024 14:18:35 +0000
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2ffc357ea33so9507941fa.0
        for <linux-phy@lists.infradead.org>; Thu, 28 Nov 2024 06:18:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732803512; x=1733408312; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xA8QccDB7jDinpTszrKQcVtNkmKlzXFjmJDa5bO0Mmg=;
        b=ghFTctlgUrOBXrGO8g9HduiQPyZoSnjKXYjGAj7fvoJvFpOcsorseYjmF+7ScYKQ32
         YJUfUHcwvrrbXKDdmrOcUv8YLxmfXCXRpMSmZQblTH4eN2RRSLVbk6hiQSzgzyp0yv1l
         VfdTR1CztOitzFOmb47gUoMPEmpRk7rl75eYiOBOuLJKX11AmE+557LY3SKHbIAI4CA6
         ZRuGgoK8AZHT2bSsd5MEaJK35On4oK4HWyxtFPFiACNkutJhm1j0CBZqsQo+8iJu77R+
         P7SZfDryTuLrpAlrHHLCf30lcQEYIN8SYKJqi0CSs6nbn94cBcp8dpHauzG82i6xr9uI
         xeCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732803512; x=1733408312;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xA8QccDB7jDinpTszrKQcVtNkmKlzXFjmJDa5bO0Mmg=;
        b=lUF8BqZ/84ShBXTx5aosCatT17G4SsJkiRmpRwJS5e1RYdeTkqPLUZ6wAIDsPLrZJS
         w+aQ7ZjrvJLbkXPKvp1PGq8+ZZHCewMCMbaQWvnqpBK+JubHoK9ATVs/OuVydVdcmjne
         wCP8A+QmWQ40S8LaKh2riPgM7Ld3L3MGNXeFsusGH61Y8O4Ym6gyEKSTWn1v3wTlOVf0
         IX3DQuRIJlun+dKAF/og/1mDMglMTtEVWC+VRAOqXIQ+q7T5BQZJqf50EkwvSuMlbefS
         qUdF+Iax75J3CXehfMlmYhX6AtFuhB8mlL5FF9AD3kgp/D4ixVl1du0mGjF/vluPbR4Z
         M0VA==
X-Forwarded-Encrypted: i=1; AJvYcCWSFEhkGn4gfs6XvT2L4QX3WhvX8MNxYqlkmeJBWvw/zY4nUAgfKV6TwbNgRMMy3MW9lPnUsebb/yk=@lists.infradead.org
X-Gm-Message-State: AOJu0YyVyC6TDxM4ZCkFt9sxmNISIj7tx4OC7nLJNhsCFstZTHHoRQPo
	2L/4gk6g4OIpp1429F9uKSSjrdi4+NmyStBsAxQ5mYQ78veYpmr1Eed6U0tX128=
X-Gm-Gg: ASbGncveVI93ZTS2X0RLFO4XGPGI4PbVnVl/rE7zAfmTwiOt+HgQr0p0+m+fJOs9RVg
	9+FEiP/AYfdNcMD+2f7yWIBQjpWmgBSMHHWbZ5B7hCtTnozNAf+rmbO2PIEZ5X9sxkvT6DqwH2j
	V+W2ih7UFRWhOMMKCo00FQaHU+bEwTXMXbiEapxRx5fbanj2Kl/c5PwKmD7AyUifKrD95cEuX6k
	6Du5XyoL9TcRoSgRGb+T3rspU0MqLNKZ6M+fQAEa29u88TID4olneTpVShJORbJe/tQvyR6aKNn
	H54L9+DBLbigP9BH5yIn/mrUY7tm4A==
X-Google-Smtp-Source: AGHT+IEWrfuUcnXV1iqJHqdNEOSGIK8M6/LbygKUp+v7qqACcol4zNxR8qGEVUdI0pmwpuF4EUOzaA==
X-Received: by 2002:a05:651c:887:b0:2fb:8920:99c6 with SMTP id 38308e7fff4ca-2ffd604fc7fmr46439611fa.23.1732803512212;
        Thu, 28 Nov 2024 06:18:32 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ffdfc75452sm2022861fa.85.2024.11.28.06.18.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Nov 2024 06:18:30 -0800 (PST)
Date: Thu, 28 Nov 2024 16:18:28 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Sui Jingfeng <sui.jingfeng@linux.dev>
Cc: Liu Ying <victor.liu@nxp.com>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, p.zabel@pengutronix.de, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, 
	simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
	festevam@gmail.com, glx@linutronix.de, vkoul@kernel.org, kishon@kernel.org, 
	aisheng.dong@nxp.com, agx@sigxcpu.org, francesco@dolcini.it, frank.li@nxp.com
Subject: Re: [v4,09/19] drm/imx: Add i.MX8qxp Display Controller display
 engine
Message-ID: <kixewphwyawbyrfu6pxtqx5fywqmq7ms2sa5j5pzogetmebcjz@ouhpohk7twbc>
References: <20241125093316.2357162-10-victor.liu@nxp.com>
 <c4334c9b-833b-4923-8188-64d662231512@linux.dev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c4334c9b-833b-4923-8188-64d662231512@linux.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241128_061834_352461_3803E9FC 
X-CRM114-Status: GOOD (  17.33  )
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

On Thu, Nov 28, 2024 at 04:46:53PM +0800, Sui Jingfeng wrote:
> Hi,
> 
> On 2024/11/25 17:33, Liu Ying wrote:
> > i.MX8qxp Display Controller display engine consists of all processing
> > units that operate in a display clock domain.  Add minimal feature
> > support with FrameGen and TCon so that the engine can output display
> > timings.  The display engine driver as a master binds FrameGen and
> > TCon drivers as components.  While at it, the display engine driver
> > is a component to be bound with the upcoming DRM driver.
> > 
> > Signed-off-by: Liu Ying <victor.liu@nxp.com>
> > ---
> > v4:
> > * Use regmap to define register map for all registers. (Dmitry)
> > * Use regmap APIs to access registers. (Dmitry)
> > * Inline some small functions. (Dmitry)
> 
> 
> Why?
> 
> Its seems that the switch to regmap APIs is not very necessary,
> as ioremap/writel/readl are simple enough and easier to use.
> 
> Isn't that this just introduce an intermediate layer? It's okay
> for display bridges/panels that behind I2C bus or SPI bus. But
> then, why drm/msm still haven't be converted to use the regmap
> APIs ?
> 
> Just a few questions, has no opinions to your patch.

Please respond to the original review comment. Then we might be able to
discuss if the suggested change was logical or not. Discussing changelog
doesn't make sense becasue there is no context here.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
