Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D05D3E77184
	for <linux-phy@archiver.kernel.org>; Fri, 20 Dec 2024 00:21:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JwzB1l6oQHPDRphUaPSu1/9cDGOF6Fx1BFV/20Fpm+A=; b=Lx2P9rhGZdichC
	XMvRy5LYci+zPQwr2aUKO1qJhKNNSIUI1rLte12xJ0vxEJn/YRgqT6/5AOCCW3H6iQVh9GfL6rZYi
	5EbW3sT35udrSuZG/o4fjQI9pI5d6akTpM6XIrNIH2XHt9VH5ZQav1GmDUtoXleZekmarUROq+qEZ
	YSaZVL01+r5igvN1UWvf6///XLvPo7Pr/dg4fsW5gIzms0I4XB9I0slcWT6WRxus1Z8drj0b8EZKj
	NpZAQiVkqHf19BJx8jzTM/9AyD0nGr9XqZud8Awt8IhFO4HQt2q9a+bPJFPJu+hfmegxTad2c6NQX
	UOaCl2z/1hc/zyIxKd6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOQlf-00000003SLa-2asI;
	Fri, 20 Dec 2024 00:21:23 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOQir-00000003Rbd-1Udg
	for linux-phy@lists.infradead.org;
	Fri, 20 Dec 2024 00:18:31 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-5401d3ea5a1so1297920e87.3
        for <linux-phy@lists.infradead.org>; Thu, 19 Dec 2024 16:18:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734653908; x=1735258708; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JdEM25avAV3Wk0/A8V/RskskKqNdHIG3q8iPcW7Zhuw=;
        b=bstqHfkfqSuemiGFxEujZYN7DETYcKgRVlm3u8FMxG/FRGwC5yEgDMAoKwA5+IgVdk
         98R/P5Bih14thg95sSOH5/Y2qI8mp5MZS0MLyfgDkA/73sBFIN7w7D+8lEMeW+Qop67S
         XTVz4KDtAjmjSkW8zwiqdDBEEhM68CoOqDjkigdcR2pZBDb9C2c8Z0xYcLUWYEn/gOTu
         BFrLcFyny+SQiZAw+ug4dNvJNU5pDXvIEr/wcpF8NOvJsy5+3WrbPCFKnayFImTU6/5p
         y5ikXJzFkJCrX0Ms67CrvvvlQiLxvEFAfQ4BEoWYrFoCr42JmaglPF7aVQekapC/GcIe
         JQtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734653908; x=1735258708;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JdEM25avAV3Wk0/A8V/RskskKqNdHIG3q8iPcW7Zhuw=;
        b=Jv/lvITeZUWnYZfwVBDe53EbpUiZn2uiRlarmQOIZjqkg3Vk4rSbMt/DHLB0OCpRYe
         H6NFHfAdbGPaH2KJov6VLVoj7p8ukK/oaX0PCutE232j8BdcR9V0QnqFCvfLoajnbRiq
         CttPO3ZAOu4/6dzk5dhVxphx/Qfpo1pYvGm4hw91YDT4OvrDC6KyzHuEHgdY0elfQBcd
         KGKsBOXXyLDaqyWNQ3bzQokggmVUBQOcb7qGZyYc5Sao4CUvf88EReGLof+57Vr4gLii
         XMeFWGp3F4Wq/oH4iETy/caTOvCifXdThaYBXwhllPcBhJ3oVJ9Eais1kBYoEP189X2n
         vCaA==
X-Forwarded-Encrypted: i=1; AJvYcCWBV8rXiMoravATrsyR5S5LgsP1DpefRG7Rwyn8dQt4+72YzHhlt9NOf7BzF/3+TKyQphs4/w/4Juk=@lists.infradead.org
X-Gm-Message-State: AOJu0YxyTBGATNRteZQnQ9xud3NqfUHqbVqhQAHGR5wwQan9FD+jwWdn
	J0tp+B9nLnJ3QIA9LP9nJgS/blksv2vI7kXxIeXpiNVwdz10vOFgk1Gkq9Jrdeo=
X-Gm-Gg: ASbGncuF3bPu4uRSdcEKTD2MtxxQACyzw4v5lkBi5mmid+TTPeXQ4NNgnQK5nsfli5o
	v4BQilRidd+jVYq648/cbPUVNnGPK+jDX8qZguJjmb2M6zZPrI6s+/zVBRHtDN803oWqyXuo+WN
	aJk1qYpS+ttWE67T4YUXYx9/VW+7c80SxUOpaYsaHPAgJi2uiXTKYlFV92qMiPYQOdXcMxt92RK
	AT/yPXajVHyQDpSroRj3LmazUIYNqJ6PCRpGHXrNF1R/gFM0lpfCGDjE8UyXLi/6Bo2h33NYCq/
	F1mSi5MhTD1oVBa6OjbuCte00OIsyYjI/iCP
X-Google-Smtp-Source: AGHT+IHaBhOQ2F/tQJgKM89Gv/3h/pUJDiIxhbwnt6itHhtFdLYkVHk0tzYt/YbigfNxUGxwQcqftw==
X-Received: by 2002:a05:6512:3d16:b0:540:1b2d:8ee1 with SMTP id 2adb3069b0e04-54229522508mr159038e87.11.1734653907712;
        Thu, 19 Dec 2024 16:18:27 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-542238135basm315388e87.130.2024.12.19.16.18.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Dec 2024 16:18:26 -0800 (PST)
Date: Fri, 20 Dec 2024 02:18:24 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 10/15] dt-bindings: display: rockchip: analogix-dp:
 Add support to get panel from the DP AUX bus
Message-ID: <bjkcue3dfgaf5i66cqbiczifo7r3xngupghklxgevwqpwfeeix@i2jfd477igri>
References: <20241219080604.1423600-1-damon.ding@rock-chips.com>
 <20241219080604.1423600-11-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241219080604.1423600-11-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241219_161829_387149_2A50B0AC 
X-CRM114-Status: GOOD (  15.16  )
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

On Thu, Dec 19, 2024 at 04:05:59PM +0800, Damon Ding wrote:
> According to Documentation/devicetree/bindings/display/dp-aux-bus.yaml,
> it is a good way to get panel through the DP AUX bus.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  .../bindings/display/rockchip/rockchip,analogix-dp.yaml        | 3 +++
>  1 file changed, 3 insertions(+)

Business before pleasure.^W^W^W Bindings before the driver.

> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
> index 4f84e8849876..c45d92a2d901 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
> @@ -49,6 +49,9 @@ properties:
>      description:
>        This SoC makes use of GRF regs.
>  
> +  aux-bus:
> +    $ref: /schemas/display/dp-aux-bus.yaml#
> +
>  required:
>    - compatible
>    - clocks
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
