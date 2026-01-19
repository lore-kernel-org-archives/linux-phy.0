Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0420CD29C2D
	for <linux-phy@archiver.kernel.org>; Mon, 19 Jan 2026 14:01:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	References:MIME-Version:In-Reply-To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/zokWa5vPctilPKZF2Nx9Nw2P1ypGkwx6rFt2xefXz0=; b=4Yw+Lbv/rDj9QG13QeIEyWxAjn
	cJuOSIuPBmwBlQYGaehm3twE9wMU6Nv1d9dwZdZierpU4Jdg+E3Kz3x/q/hpFwrwVfnu2zvj0ipPb
	bdnP7shPVMmaNNb2PYNwwfkItPWhKL59h3hswuKyqUavePIwHwVqZp7iTCW/HwU7KIHM08fkyvoG0
	Cg5uwZl1eceGtOjEOVaV7ZhuDjCRWRtpine50D6sGAPy+RKU0XaxFpUKPaLkAacn+EIZLcS4hc3/U
	NjQOWgc4J9LFw2HUXebuRiCoJfOzr89BGRRSIpsI+yb/wv4i+p36rjxP3tNGhvn15pxv1Vj/qp2l3
	REhZZUOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhpoR-00000002CuD-42EF;
	Mon, 19 Jan 2026 14:01:01 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhpoK-00000002CsR-0zug
	for linux-phy@lists.infradead.org;
	Mon, 19 Jan 2026 14:00:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id A01B843E30
	for <linux-phy@lists.infradead.org>; Mon, 19 Jan 2026 14:00:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 784FFC2BC86
	for <linux-phy@lists.infradead.org>; Mon, 19 Jan 2026 14:00:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768831251;
	bh=HE73SGFgiopqRikw2FKculLOZOlYZlR6rqxK/wanCFk=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc:From;
	b=jwVKJjp9fns1b9wcslCE68MTZcgIfU6F5IeoOia67oQxU9ZTsL4T0ai4jPeX69jDG
	 vY1+fpZmZcEYK0lqiSXuyy9QJSxNLWqzrEJvUVQuQFWSFaaGmfjPGWH1SzDLo2xz61
	 vxns494nw4qas7fTVfZDKloTP6zl1HSMaWQQn2OQoZ69mZ221Udsr5vyEM/Im+rtx+
	 tthgza1ro0XjZPTbDSjT1FhE/nNXT0A4u6m6k+nd8e9/ATR2K1gxUmPzsrtEi0Q2U8
	 1DvpW+Au1cbaon6rQDxzuh5jY43wdtpylbec8gATzBbHxp53/osb5a2zmVxPuEwco2
	 WFyTE1ioCZqAQ==
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-59b6a987346so3942000e87.3
        for <linux-phy@lists.infradead.org>; Mon, 19 Jan 2026 06:00:51 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWVHZPAqIdh0xTdfiNdEn5rHl7lxtUW7aBUFgzTVKwAdoEnWNAUQDtXVqwhbIN8+56GruvfvSVRsTg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyi9/KM1n30cqBiWsK5upgXLyB+tuTsHWxbBPP2dX3nTWMvuv6O
	10vcHb3T7o4dDLWlnTv2tQcLWkSKNfAF8TRS2BvWqfhmyW+BsqbcDVnjudr/A2ERhi/4ypDX0wP
	ttLlw2uvs0KRL5FL3/cJ0W3MjscB4Xd6uTg7126LfeA==
X-Received: by 2002:a05:6512:3c88:b0:59b:9f6f:20b1 with SMTP id
 2adb3069b0e04-59bafeb6f0dmr3932244e87.21.1768831250152; Mon, 19 Jan 2026
 06:00:50 -0800 (PST)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 19 Jan 2026 14:00:49 +0000
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 19 Jan 2026 14:00:49 +0000
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <E1vhoS7-00000005H1T-1dXt@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
References: <aW4kakF3Ly7VaxN6@shell.armlinux.org.uk> <E1vhoS7-00000005H1T-1dXt@rmk-PC.armlinux.org.uk>
Date: Mon, 19 Jan 2026 14:00:49 +0000
X-Gmail-Original-Message-ID: <CAMRc=MfqJiHi1Ug92izGoL9CVty7-ijP0+6-m6hMyEJbZeLyBA@mail.gmail.com>
X-Gm-Features: AZwV_QghYvQWH9GY8wcodXLcC8y2z84EtqfT-DXsw94HUPeCH7ZRyaHEOMNrN9A
Message-ID: <CAMRc=MfqJiHi1Ug92izGoL9CVty7-ijP0+6-m6hMyEJbZeLyBA@mail.gmail.com>
Subject: Re: [PATCH net-next 03/14] phy: qcom-sgmii-eth: add .set_mode() and
 .validate() methods
To: "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>, Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com, 
	Maxime Chevallier <maxime.chevallier@bootlin.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	netdev@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>, 
	Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260119_060057_455100_743B7923 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
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

On Mon, 19 Jan 2026 13:33:51 +0100, "Russell King (Oracle)"
<rmk+kernel@armlinux.org.uk> said:
> qcom-sgmii-eth is an Ethernet SerDes supporting only Ethernet mode
> using SGMII, 1000BASE-X and 2500BASE-X.
>
> Add an implementation of the .set_mode() method, which can be used
> instead of or as well as the .set_speed() method. The Ethernet
> interface modes mentioned above all have a fixed data rate, so
> setting the mode is sufficient to fully specify the operating
> parameters.
>
> Add an implementation of the .validate() method, which will be
> necessary to allow discovery of the SerDes capabilities for platform
> independent SerDes support in the stmmac network driver.
>
> Reviewed-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
> ---

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
