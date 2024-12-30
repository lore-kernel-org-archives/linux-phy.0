Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D93EE7718F
	for <linux-phy@archiver.kernel.org>; Mon, 30 Dec 2024 12:33:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GnYiGpAGf/VRySnwsPudYVaHY86K7L5fjuyoXBbJYNA=; b=Xg7XqVeyXaX2NG
	W9DCWfPJAHbI/IBreYzYX2An5mm24WNe7FCuf9+4XVl+xWdQDI4Xq0ZMQutX79+Ip6gtYdMudZRHa
	gBlaN5iqDIr8IVvQMs494vMzyQmer9oNGXf62qaKim0hp2imRdzOLH/68BgooSokxwcPtop+xPsD+
	1bX03jhRWulgoe1zNpj1In4MYTwVoYAhjIpBHU9yRmdonrxevB86L/dcJgY+NKg/Mp9sgQ0i/F0ay
	6XtA++Wt8Ny3nU/gA5VJhh52nAeqzgdXm4k9HpQ03Hlpon5ayck3GuuNlEQQO39Z1YGwHnlcm1Nvz
	TiILZcegZBHiS+moZk0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tSExN-00000005BLK-2ugO;
	Mon, 30 Dec 2024 12:33:13 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tSExK-00000005BJJ-44e0
	for linux-phy@lists.infradead.org;
	Mon, 30 Dec 2024 12:33:12 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-53e399e3310so11176153e87.1
        for <linux-phy@lists.infradead.org>; Mon, 30 Dec 2024 04:33:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735561989; x=1736166789; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Sk7KZ64g3QjSKBcPqpBugYd5y4zZQVTOsSnxLt9QvEM=;
        b=Cc5Jh/N3SWbXyKBdWoQUA2dEt4jcbPRoJRfSZZXp7nV6LhYr506JBvEVztLahhvtvg
         FWeaJDmEryxeURr0oHVsmgKNF9Vgq6ek7E0pP8pdnZbEqwk8NxDuhXY7zxA3ny47XRj1
         Lim7K0o60Gn+bTxG/FHrsVxBWrlJYkefLIFCgVFMPI5wWT5tCxIgimWaBRLUzbPAF7TU
         0RwODM0hb2tTN9oJwlmrUfdi4PCkWzOgp8lpR5nFnkEQIlr6Mv+xrTp02af2cS3HarNH
         moMird7dBWTLzx/waWA86gBeh3zq08K5H4roeHLqXbdVwknAX1OJhKFhWchAVGKqN/jO
         7Isw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735561989; x=1736166789;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Sk7KZ64g3QjSKBcPqpBugYd5y4zZQVTOsSnxLt9QvEM=;
        b=iHDOqVsoZnQawwGh6suyvv0NojbVblMDW0FTJg8TAG0Yv9ABwFwwXuxWqxsMj66SM8
         ZfzUN0s9q5GvNHwzZpCiwbZ84PAIw5rbS1R8F7shXx52wD7KQgqfdHPcyt/GZqxTmX2x
         +lKG772s0ykC8jxNqonptRyBM3sV0ZvfCdW4HD6ZGB686AzyJezt/RPrm/buDhZIG9JH
         5eMsBSMvPRBSIEWAe4Bjley1tQCUUQufAQr8cMjeFEkZa4J7ldsVU0SfoaJ9PeM+0Ehl
         FeRSD7tFAOVGBMpYsoOxlZWAp+PODQETFsZRTBVj4UaNQPSl5tkRI1lF1VMIGmrfM1nK
         /kAw==
X-Forwarded-Encrypted: i=1; AJvYcCWspoGNTm+xzWV5gBhA9Z71SiR8rh1w4dj1WNyIUWQV9Gex/dh6icFeoRHiDT5nlFT9jEC83v9C+Wc=@lists.infradead.org
X-Gm-Message-State: AOJu0YyUs+RmdLt+3nYce781e0iFmUUdsWgkEmlk9nxMUI6zLLx1xvTx
	7Um02kiwpI1MZMz4CqHcl1dbDr5Wp4GP43jea37EOHb962mm9xIAcMsOCav80WU=
X-Gm-Gg: ASbGnctk8haAWAWszsivmSGa1TVES3BI3xtwjqCKM0lLGbQx1385GodB0eqDC0EcdO0
	PQ77xfeichkdMN4wjOnqZH8EQ8zdH28m18pmKH58KKb2Oat6O+qYQE/1scXFNbWMB2vVEzO9/fG
	PYFuWZNLlAEMsnC+GKflX/IqhnRWYSjBt2hMmodR0fqdwj7f7WL1IdJoracLhlMNINn06CqbZ95
	MOVFyfZws9eAC/Lh9Y5z3XLvj1kRXtg2PCcdZIEbrVxgURfvVm1Gyk/xu0uDvjKzqpC8vjH73Kt
	4/Nf+9xgh4pvPYFaTUtj+4pcIEJjtQUKEwX7
X-Google-Smtp-Source: AGHT+IGzkRgSziPMi+OuvqqF5BpICe3Uj4EKlYJrSjSIBpngZHhFVUrx0eOYogAtQxS8zwZb6NLAVg==
X-Received: by 2002:a05:6512:2246:b0:542:2e04:edd1 with SMTP id 2adb3069b0e04-5422e04f073mr7912458e87.42.1735561988824;
        Mon, 30 Dec 2024 04:33:08 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-542238135basm3125829e87.130.2024.12.30.04.33.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Dec 2024 04:33:08 -0800 (PST)
Date: Mon, 30 Dec 2024 14:33:06 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v4 04/17] phy: phy-rockchip-samsung-hdptx: Swap the
 definitions of LCPLL_REF and ROPLL_REF
Message-ID: <ru3xpse4mg62gcxemut3zro6qw6v6firjnefo57k74n2ti66ym@l3pe2hpz5csl>
References: <20241226063313.3267515-1-damon.ding@rock-chips.com>
 <20241226063313.3267515-5-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241226063313.3267515-5-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241230_043311_046919_2760A737 
X-CRM114-Status: GOOD (  11.53  )
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

On Thu, Dec 26, 2024 at 02:33:00PM +0800, Damon Ding wrote:
> According to the datasheet, setting the dig_clk_sel bit of CMN_REG(0097)
> to 1'b1 selects LCPLL as the reference clock, while setting it to 1'b0
> selects the ROPLL.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
