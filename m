Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D87A8E7719E
	for <linux-phy@archiver.kernel.org>; Mon, 13 Jan 2025 09:20:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3o5n8ACLnz/kP3s2SuJXEtyLiCKJ128Gsmk11Ys09+s=; b=cdwQVbJt6A+pPg
	Z8oJrdMd/eKGrdKTRzLue40i3J4aE2c597Y+03cYrLCvKpRgeo3iFJ8SuIVNL0Jpqr8nSgy9FrL/f
	oy12Yt+3fsZ0nsmbrcyQhYE+nuNHxhFOsPtrD89alplThykUVqZv/Bnq/Pj5iGI3z1xROlM/1oOjY
	bj53WRBd0CvsGOLMiSgR9iqfrN26EbsclhVgpkn7SDDcN3Y96x6HQdO/3zy2tlRZoP5kDK65ZR3GD
	3IYIOIdvXy/PX3TLAyvWVtl+DitEaI5zYytQ/8AJwqMtHYVqq5Dyy7wZUtCruseWOLQa9yyUI/ILE
	Wj6oLT2rR8WwXm0r04nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXGcU-00000004a3G-2hJL;
	Mon, 13 Jan 2025 09:20:26 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXGSV-00000004Y8w-17De
	for linux-phy@lists.infradead.org;
	Mon, 13 Jan 2025 09:10:10 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-5401bd6cdb7so4083532e87.2
        for <linux-phy@lists.infradead.org>; Mon, 13 Jan 2025 01:10:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736759405; x=1737364205; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2m7BqFyPTCb5l2+wQfuOnNqekkEOfPARePQKvpZbjSw=;
        b=f66w0IweUKuCo07oZfKp/IZrAs5/BZA08j1LADCj/KUCVFcrDI7VIIkzwXZICmWvDe
         XjCnkuMJjFkZ/p5+G+sBvBlgXJ1Addjv2Fmqy+ERtUcKo2xLtmkoC9nDE3H0S9RTAEPa
         RZazfSAt0SZxQjvakPq/C5s0X89LwZpd1Sdt4frzpnQRHlnTaDvv8lI55lxT2wR0tPHR
         X5yBWVgifkvw61Hr6ASDKao+zaIVeywCPMir8frtPcDcmRco8mZByxawbEbTDuFCMObz
         pQeBd1DOfu70tCTOhmy3yD5pJSUmuwRDPJbDC5enRLSo5Ojt4MM3OlrqsINI//ZvpL/l
         YE/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736759405; x=1737364205;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2m7BqFyPTCb5l2+wQfuOnNqekkEOfPARePQKvpZbjSw=;
        b=wHufF8hKTJVHLQ4RbxCr7eIr1YU/lZo4ksegGgPVcbs0O8N+HQ0RqgDrLbpsSyAI2e
         OZFboLiOY9V7KdCYfQts+zZ3rykOCf9YbsrVYIslx6vRg+JLnQ6W7LPp/olzgUyjt7Bp
         SyKn09JiLYZ+oH2YU3zvtpp8y8m/OobW9N53oIyy8TmDzO9jGb8Ntnm/WafhHmz3589I
         rj/dZ9WezxzubyZ9oBFwJHKoCjKFScOrafiXoEUwSfTkf/xO5+noQrObDqPynaK9dAxP
         F40jS/A0cwl1ckyavlgnUCRbCRx1tZjImQAFzDI2RMY1lGbyet8SYBYA844Hhxwb1r9J
         P7qA==
X-Forwarded-Encrypted: i=1; AJvYcCWW/lUV4OIpK3mJfhxR8/AEPcQy4StR1f/4qV5vG1HBlbv3+JLrpi6Uipls3t43GPOYk5u3dP68jE8=@lists.infradead.org
X-Gm-Message-State: AOJu0YziNeAEjWLE4eekd6j3M6ZflIovUz3F+Ng7XnC7oQ+tHnz78WKR
	7spVjUnG/EK0JMwWOGlRnUnkheLhlTsC5+8rrxCQjUBXZ5y7Qc91akKNUsDkGhw=
X-Gm-Gg: ASbGncs2njIWAwaF3gNdGVeKjWWEbDLOzIlYtoLsdqpp/6OS6W6kgLv1Dm4dIdWGsMv
	86gZpJgC7QA/CHlXDDWiWpLeiRjHaxsQIiTLkW0DXpLYVjLiOAxwoCCVKJUxPmpcAAO9cDx0vis
	GRktYMyxMUcKuu4rkWhH2C10nKqfPfWaf3YB9IuYmvdHOaR/vUZWWHUndn0PEMaL5KmH23zFVhw
	ghwIVrPfVt3yyz0fOCH9L0NuaCfjQZfwzsY21xxZdW5xHF6M0hEgGDeGYpYuLLr1FOAIB+cAvDh
	b8ftpyQ5UnYOfO2SuqusQl+GGZjkd7KBFU+s
X-Google-Smtp-Source: AGHT+IGw4VY/Y6W8zkOKJuAFr5OCeGQE4lHsOJ/tJKFeVu0YC0sUMWeW67o9DovWrzDT+skDY5PJJw==
X-Received: by 2002:a05:6512:3f12:b0:540:3566:5397 with SMTP id 2adb3069b0e04-542845b70d4mr6410811e87.22.1736759405308;
        Mon, 13 Jan 2025 01:10:05 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428be5492bsm1294955e87.104.2025.01.13.01.10.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jan 2025 01:10:04 -0800 (PST)
Date: Mon, 13 Jan 2025 11:10:01 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v1 0/6] Add eDP mode support for Rockchip Samsung HDPTX
 PHY
Message-ID: <ezoduel3qz5ihlhekry26cb7ace3bm4xmzsfrsqvbodtcl3gjq@xxo75h7uozei>
References: <20250112090714.1564158-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250112090714.1564158-1-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250113_011008_305310_D2F786C4 
X-CRM114-Status: GOOD (  12.98  )
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

On Sun, Jan 12, 2025 at 05:07:08PM +0800, Damon Ding wrote:
> Picked from:
> https://patchwork.kernel.org/project/linux-rockchip/list/?series=923593

Then it should have been v6, not v1.

> 
> These patchs have been tested with a 1536x2048p60 eDP panel on
> RK3588S EVB1 board, and HDMI 1080P/4K display also has been verified
> on RK3588 EVB1 board.
> 
> Damon Ding (6):
>   phy: phy-rockchip-samsung-hdptx: Swap the definitions of LCPLL_REF and
>     ROPLL_REF
>   phy: phy-rockchip-samsung-hdptx: Supplement some register names with
>     their full version
>   phy: phy-rockchip-samsung-hdptx: Add the '_MASK' suffix to all
>     registers
>   phy: phy-rockchip-samsung-hdptx: Add eDP mode support for RK3588
>   dt-bindings: display: rockchip: Fix label name of hdptxphy for RK3588
>     HDMI TX Controller
>   arm64: dts: rockchip: Fix label name of hdptxphy for RK3588
> 
>  .../rockchip/rockchip,rk3588-dw-hdmi-qp.yaml  |   2 +-
>  arch/arm64/boot/dts/rockchip/rk3588-base.dtsi |   4 +-
>  .../dts/rockchip/rk3588-coolpi-cm5-evb.dts    |   2 +-
>  .../rockchip/rk3588-coolpi-cm5-genbook.dts    |   2 +-
>  .../boot/dts/rockchip/rk3588-evb1-v10.dts     |   2 +-
>  .../rk3588-friendlyelec-cm3588-nas.dts        |   2 +-
>  .../arm64/boot/dts/rockchip/rk3588-jaguar.dts |   2 +-
>  .../boot/dts/rockchip/rk3588-nanopc-t6.dtsi   |   2 +-
>  .../dts/rockchip/rk3588-orangepi-5-plus.dts   |   2 +-
>  .../boot/dts/rockchip/rk3588-rock-5b.dts      |   2 +-
>  .../boot/dts/rockchip/rk3588-tiger-haikou.dts |   2 +-
>  .../boot/dts/rockchip/rk3588s-coolpi-4b.dts   |   2 +-
>  .../dts/rockchip/rk3588s-indiedroid-nova.dts  |   2 +-
>  .../boot/dts/rockchip/rk3588s-nanopi-r6.dtsi  |   2 +-
>  .../boot/dts/rockchip/rk3588s-odroid-m2.dts   |   2 +-
>  .../boot/dts/rockchip/rk3588s-orangepi-5.dtsi |   2 +-
>  .../boot/dts/rockchip/rk3588s-rock-5a.dts     |   2 +-
>  .../boot/dts/rockchip/rk3588s-rock-5c.dts     |   2 +-
>  .../phy/rockchip/phy-rockchip-samsung-hdptx.c | 971 +++++++++++++++++-
>  19 files changed, 934 insertions(+), 75 deletions(-)
> 
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
