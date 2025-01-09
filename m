Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAFAAE77197
	for <linux-phy@archiver.kernel.org>; Thu,  9 Jan 2025 12:50:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=leBe6i9+fOjoWPo0weACWcsp7n8xFtiNctWMnjNFXUw=; b=LfdiPYaKPA7iXt
	DATD+KoVkkays4lEWD5yukC0oZjPAbn1dA9FJkIOB2UNzTH4/j4GWr/c1Q3FOIfWjfXjSAJiit3jd
	2/ep+KJWXC3VKZqSbkR+k2XxSqIbaYkz11lun7wrFkYsz+yeebKtvzvXxj94eU798B6+a2gtqaFjG
	GWfZQNfDQzvBqRiy01Xtrbq9kaJsa9dWsDoVU4jvJb2ozejnhGbgXlY7PrAPuKU3Z13rSDyRN6dRU
	o1CIVvqugt4MYLAAiULLPYeSi9sLMi+UX1Bths82wMVyhP5dnghGSb7DY6FFDmlgjqPVm6ddG+U4V
	NW98PRrGMj1Hv6lGmeaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVrzv-0000000BuIz-1Yaq;
	Thu, 09 Jan 2025 12:50:51 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVryG-0000000Bu5g-3xGP
	for linux-phy@lists.infradead.org;
	Thu, 09 Jan 2025 12:49:10 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-53ffaaeeb76so949171e87.0
        for <linux-phy@lists.infradead.org>; Thu, 09 Jan 2025 04:49:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736426947; x=1737031747; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ISAvUvnxrJppDS2oaPXGBaXepNKXj9gL7beVEXrneoM=;
        b=fh+O7RLLptM4IvOPmO33G50GflYx0VmLWVT8w2JDU3GecTSz1J/hIw+CGH2pPIBqAh
         jOVQiTvNjXBxWoUuQ7+BdIrJZAiA/32tVPiHnXKqA0G0DlqwFE7L61oJ00LsIc8QJuqs
         OhnsPBFAiV34ZghK3ugweWz5Luxk5xY2cdXpINO+jf9qtTxbTKEeMT34kxdXI6KOGWx9
         eQeKcae7BCQJJN8i4keFWJX0eg25ktMLMsRdAKZ7wNihEqkP9y+KMQmDPNCXo404NGKH
         p5D7UAzoirpa7IzgkG5odUO7OcgHatOB4/5axf/q5hN4BG2oWOBxWpXZmkYmqIPYJsdm
         qA2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736426947; x=1737031747;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ISAvUvnxrJppDS2oaPXGBaXepNKXj9gL7beVEXrneoM=;
        b=E4YJswxini/yOtSRicqduOnDT3QGxtErz7JE+QNZ2Lu83F9/VlgTrBxrSjLj9wy+fN
         R6nnfZsO8lTQbzjMwEDYT84zHE2kpCc2I2LIW1BfYfEn5L621nLE5iKEai+DSKxvPj6R
         wSuQ2Fls/q0j3EIG/iaXOCTpYx6QbJqYTJvxQTf67Au6aphq1ll4kf54fAQvuNOVkNC4
         t5RBaR/gRqMf2nn8ANH1urt3IaWCG9uAfYzZl+ESej/M0PjDrSb5P3KmC7yawYF2igl7
         HvECEP1I0hAt2Mxgy13mwssXUJ0JcY+Db8SgFK6JIhQ+nZz/mfbceKuoQp3x3JBBEln1
         EaIg==
X-Forwarded-Encrypted: i=1; AJvYcCWsEh3wDXdmLyUaJ1VMO/Q1gNmCGrdmIQF6vXMOtwobI5dklw+Mv031ZFHu3wGYqXx8cKtgvxhqVZI=@lists.infradead.org
X-Gm-Message-State: AOJu0YzWdd49vxDD37V7DxFm+S6i9w8MKrnMFMA3fDA96LA5Pyz25teH
	hXM7pMeNhkRtDepHlJ4kDk04QfdLr9eFdykAHhMy3rVCPKCAqMDndfAyPL+Ej2Q=
X-Gm-Gg: ASbGncts+mVrGMG1d+kU+I9akPHmmOH0Frxhqxyu0NB79MGmsnsyXDQgUmbPFow1SvY
	+r4ffxd4/8yIyVH9wCjXtkZLj4Wgh8KxwVvEtYBxPhoUEIzSR3aqr9D6TmPGHEYluIVTcm/qkF7
	Gi1WyVMmtphBBeh5Is5U8VQvPZ8EN3Pl2T42Ar2a8wit5hyq13lpif+5Mn8JShXqGCq43bDiXIU
	5Zqk7xzPfr2d0bLj+i64aRlEKIvilXoYCbqHUG4tWpTFnDDsWZ0uAKB2F3HKgLNok5CRuzW2x0/
	wiTBAa27KHzdKeUvesWW76kxEGzExOmUQe5j
X-Google-Smtp-Source: AGHT+IFtzPf5r/L8vL1E/ZArSF/N5lVRhLbGlgYJHuErJi9BwgLOD62Gve10/GJMoU02S8ksLbRDSg==
X-Received: by 2002:a05:6512:1281:b0:540:30df:b3ea with SMTP id 2adb3069b0e04-542845b972emr1634434e87.15.1736426946964;
        Thu, 09 Jan 2025 04:49:06 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428be496c4sm193126e87.24.2025.01.09.04.49.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 04:49:05 -0800 (PST)
Date: Thu, 9 Jan 2025 14:49:04 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v5 14/20] drm/bridge: analogix_dp: Add support for RK3588
Message-ID: <q522hpxpoxwierd3uwtijvnmaia5tec3gzazuzblhxeqgqgavy@d6yhljsiyvrn>
References: <20250109032725.1102465-1-damon.ding@rock-chips.com>
 <20250109032725.1102465-15-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250109032725.1102465-15-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250109_044908_988452_5575A7DA 
X-CRM114-Status: GOOD (  12.71  )
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

On Thu, Jan 09, 2025 at 11:27:19AM +0800, Damon Ding wrote:
> Expand enum analogix_dp_devtype with RK3588_EDP, and add max_link_rate
> and max_lane_count configs for it.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> ---
> 
> Changes in v5:
> - Add the RK3588_EDP related modification in analogix_dp.h
> - Move this commit above related commit on the Rockchip side
> ---
>  drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 4 ++++
>  include/drm/bridge/analogix_dp.h                   | 3 ++-
>  2 files changed, 6 insertions(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
