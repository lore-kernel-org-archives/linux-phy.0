Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8EF1C0218C
	for <linux-phy@archiver.kernel.org>; Sat, 25 Jan 2025 17:30:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=km512N2ZGNsCK+Jwr9LH+9H3ykVzXGqa2tbNfNnxUp4=; b=mKPuUUEYQnEaei
	73e4ZgurXs4U+6lzuyjUdouyYQXjk35djUMHFDv6X/7Fb/SAMALc1z09g26dPIFoXLxyv16L9mgaf
	zqNpz7WZD3e3pOR7rhnmCnEgH2gPK1apHyQeAT4L0D9Dm0J2XQOx9U8+dQgYyQ88zKyZu1Hun9lVA
	WICG3bbQvbqOpf4wReX5tDQeMR1VTOby6dMOMC4PIiyB9Xjp5nsyjixO+k93u8NyMrml9M03Rz9RM
	sYyDJVFXmRpBYgr5+LqJF/Bney2eLJUF/8TgcB64p9C/cE73ZxqZcDQvYcj3Ahwm0biglqTEnlCx2
	WW6xuDy2tJoFu6OP6LHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tbjzL-0000000GeBD-41Wb;
	Sat, 25 Jan 2025 17:30:31 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tbjzI-0000000GeAp-394h
	for linux-phy@lists.infradead.org;
	Sat, 25 Jan 2025 17:30:30 +0000
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-30613802a59so34173741fa.0
        for <linux-phy@lists.infradead.org>; Sat, 25 Jan 2025 09:30:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737826226; x=1738431026; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=US0EnBiHsIYKJlqPkzCqVbNBc2Ls+ZuNd0+qd6Uqb/Y=;
        b=D/mG63Uboz1RK+TgW1N3rMK6dYRulaeMTLZZkiXmsqR4ZZket7ILw8UwR7vx1Dq8Rx
         Osv4LzYAGXoxajtaQzdU332H3i/a2aJAddbvwD+iXOzG9s1OIDmzeYDMpGGe+fG1uM24
         mAVydrh65+6IX/hH6kaAfWR/JxAqRo67Zp40X0UtUDFW3OJjD3CJkSQ0Cb23h+FgN4Go
         LVCwd9m1lXlUJf3KhK8eB1rFO9ZvhCHKIN8cUC6oaMdl8RZtRFcpTFsY3r/B7+lNaoQk
         ZkKl0Td6aKJe9280Sc4mExxiadS42i4HvJ0c0fxaZP2Qy0r2DeCIYiA3Ksw+TDun97Fi
         VtKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737826226; x=1738431026;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=US0EnBiHsIYKJlqPkzCqVbNBc2Ls+ZuNd0+qd6Uqb/Y=;
        b=hpzCo4K9u7QkNUmc0zvjv9Oy4N0ke8IAhoP7Jxrn9wpq8+odTOqzezt3SLn2MDIDD+
         AJkeVln4ozmcF/jB7DTGIw/RsZgJU6WBokPdUlAOwDJJvsH1ybKaU1vL0m2+eMU2jt8I
         iEzcXFD9HDjFK3QMfmyHvcBXd6ljteuiMEWeMbO8ehzle0j/wsc4HXqrZaqjniqBP9w9
         NvP2U12HVJJAkhvlw+bP2tRhR9otCeKZCY9omDsRl1e1uZGp4a68nNsRHXY6oF4kbhz5
         m1HMghOEAOn+5ZxR3T63NeIs+HbrUnjUKukcsSpVrHUV6ZGx2icjs07t44PRDQXsvw/Z
         te0w==
X-Forwarded-Encrypted: i=1; AJvYcCWKC5Sy7DUxoPlStGd2uGY/AXww90NKaHjDIjxSvU//3wu1Us2OV0W0rHj9+LrrmstpH4jrDEyAUaA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw5wSb8Kaq9AtZPhtmVxvI2rhXRviCXj0TkLzzgJFY5TTodNtPM
	dwwTvwuavi5MY9D1QCaE/QA93AwM7uWMInh/JngilTwlu4tNf9yw9tMwlmpvSCA=
X-Gm-Gg: ASbGncunEZ9EKWifR36nMRFzPGcUjQRtYnjYI819a0wHU8Ww2pGIliQU2oEl3sorDtQ
	4CY97Lr+pC/fftOAtg9qn/ccNc1pU83VXZQyGs8ZHdOI7lJo/5740CstDXaYyVXW5IQHe8JSMDc
	jJq/9PYGEcuIdcw2qtCQ8Mfdqur5h8KstJxKk8+rUab0WDEte7ZDabO/SaHSmK6OccOwTpP/MwX
	2Dphs5P4EoYdqCGG7X4LIheIJKsdejLMXTXC3ojjUNiYNoDc+jmPIVm84ggbzUoc32BVsi40rS5
	3OOdZsVq71nifNP1DNp7XJ2/VwuHWyNLEE8luhhgtqYZUer7NSMK0Fyhh0PX
X-Google-Smtp-Source: AGHT+IEJdOGBDBJSDCvFhU2PUzzZMFjItFiSFpgzHyoEnKNXwK9asBOtQ13f6ME37s/+fooYaxI9aA==
X-Received: by 2002:a2e:be04:0:b0:302:3ff6:c8c6 with SMTP id 38308e7fff4ca-3072cb3cd60mr129216181fa.33.1737826226314;
        Sat, 25 Jan 2025 09:30:26 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3076bacb2bfsm7581241fa.29.2025.01.25.09.30.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Jan 2025 09:30:25 -0800 (PST)
Date: Sat, 25 Jan 2025 19:30:23 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Marijn Suijten <marijn.suijten@somainline.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 3/6] phy: qcom: qmp-pcie: Add X1P42100 Gen4x4 PHY
Message-ID: <h6zfhxkc4dj2ueaxipha6prbvmv7pnqglghtjs7vkhlc2s7ndi@vhbj4uojlzwd>
References: <20250125-topic-x1p4_dts-v1-0-02659a08b044@oss.qualcomm.com>
 <20250125-topic-x1p4_dts-v1-3-02659a08b044@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250125-topic-x1p4_dts-v1-3-02659a08b044@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250125_093028_791994_52AA1B9C 
X-CRM114-Status: GOOD (  12.80  )
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

On Sat, Jan 25, 2025 at 04:31:19AM +0100, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Add a new, common configuration for Gen4x4 V6 PHYs without an init
> sequence.
> 
> The bootloader configures the hardware once and the OS retains that
> configuration by using the NOCSR reset line (which doesn't drop
> register state on assert) in place of the "full reset" one.

I know your opinion, but my 2c would still be for not depending on the
bootloader. I think that was the rule for ages for many possible
reasons.

> 
> Use this new configuration for X1P42100's Gen4x4 PHY.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
