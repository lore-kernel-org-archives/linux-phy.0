Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B9BC606A335
	for <linux-phy@archiver.kernel.org>; Wed, 25 Nov 2026 14:44:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=EcRG1CWH;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=WTRrXEUt
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=32salUGEjy1EFZw78jiow+u5TroKQq0ApqgG6en9aJI=; b=EcRG1CWHrNJSHTd6z3TgcpiR9j
	kWmOf5J7Bnt0RcidQ55/ORqBFIj8PFly4PFuxZRYjvQCOfzy1xQfRA7Qe1YaCyGST9fS7LYv+7NR6
	l306zgg1e7bCo8kORQa/qHsm63PboGM4FNK3yUI8eFLC8J1DSqO7f870ABrH7ScOznS82SlP/7BA+
	wTyPM+17buauGmJwoW5kuQDKHYh3IuF6yKvgOKHNVUVyCllGHHxGYE7cVLIMEOSLplTmb5nw7pd4B
	zQUmf/ul0XP9IPSD6sENWWy0JWSc9PNAkgg7l/PCJawvvbP1dwDnY/HobdshlleBR1EBhlB0z8bwv
	y+QIbSPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWEEh-0000000ADjE-0o2r;
	Wed, 25 Nov 2026 14:44:39 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWEEe-0000000ADi4-2CSj
	for linux-phy@lists.infradead.org;
	Wed, 25 Nov 2026 14:44:37 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-4a5348aaba5so6435935e9.0
        for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 06:44:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795617874; x=1796222674; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=8ll/7pjiu26j2DN45BTUViH87j7UCm3E+vVLd5MHWxI=;
        b=WTRrXEUtayl1oBaAhaKaO+tcAxHWNn+Z+EZqBPGbAWk/uDfDGAMKpcip8oMtFOL9xn
         d2e2/4L3FELKEx2c0Zzy26lIGCsrqmySZAz/2tql/9pDgCTdpkGEXQhEnD3+tQoLJflo
         OHrtAnL0zG0TXGfuQKiHZm6+fHW1t+AuxxL7utz1+WtXf9iwpinOTg9E906OiSuObq9w
         9JomJZjHM9+lAVT6bpRmP/+uQhFhikYgWeaTPbINl9SAzIblONxWKpTg1Udn3ZuUyXt8
         JZ/wxJVpTL4WGiOdknn7pNEnram0vuNH1c7RkX4smW9I/8NUM2aLKfCqO6Lt1aRIIFgc
         T1Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795617874; x=1796222674;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=8ll/7pjiu26j2DN45BTUViH87j7UCm3E+vVLd5MHWxI=;
        b=CSUhjLCw5kSA5o/kuq8kQrIl9M9B76yKsXYhJJBHM5Tf2DQyMvArwHB2vuqeHUOM5B
         0h03JnxjE2WFvWqKGtPHbz1HG6WzvyQmW2REq/TYEHCYSdwx1GXDtOFWlIdWtZW5SpQ/
         J3Sxt5nGSsU2yT1Gzo6naabwVYvreSh7XGTOufrIKAxCNXEMnS+OK108lavmMtdC+cUL
         rsSUu2XwaB3855B73FLnA/fn3hEjHUbIa59zHpzMg5dmU5DKIGHgD0O23KL/DVA84a67
         QgPJylZ653sBQFOjOeZuoQKM/rU4LJZui8d7jkuAw00zUl6B+4qRbl6a7rAAYzJ5W9nH
         HjVw==
X-Forwarded-Encrypted: i=1; AL+hErEEaghZsmd7nOEhqF+cKz4U97aeTgocdp7lbsSiBZgYzAXBBl49TjY60LgfK7EW/AOPujXDIAP4Svc=@lists.infradead.org
X-Gm-Message-State: APuU4Z9OSXve+oC9ijLRH0PrM/gq0/IJSgxnU8XNCz+Do485mWIDITsJ
	PcAP/vLZdxlDRjOgnRK0yg0hND5be/YQbzPpu4/OxpI2TIqpSJhHE6VS
X-Gm-Gg: AZFdTZeqITEwpITHOkdMsMnSrLK/zs1BA6mr/s3xoj958sYq0kn4L7yyGhrjuNc8MMF
	P5kqQbYgSFtjl1mnIUxIk473H2vxgyy9MydhBkdEMCCY9KTbRCC60CIwjtyXXVa+5F0YRh9he9v
	Om4Pyg3CNl3YWPEj7D0jxKetV4KjFBcszl1vONq7XiaPfyPwjRNgcnfgulpaN2a9JKpimnZ8CrB
	sGJfvdU1AWH56Fo6HBe6wR0Vi1DkKYachiSYDGzsJ6WIYFRpRvoo+vUbjXFyy0ohYskcBM9wtdT
	cuFl3DGI3V7yswraJrFjP99KUvGEg50W11JLqX+Fb/CjCfYu3DkvIKlF4xUHGTtrgWNJlLsqW7u
	E/zgh30A3IOsc0WFEQNimTE6x4Ewb6uhF6+M2qPaIWPBbWtBOKxoDsfh3jn/WUBDfOsMt5sFMcE
	86vJb8D70KUUfSIngDQWUhsUQRVFBUuIEsNLi5sCxE7t7xU43NAzWsrwG3alqvVKso5eE/alcZs
	x4SVxYv4zY2u9qh/kSP8YfXBncPyL2u3P073jZ9ieLYr5dFLGd9hjri39G1pYQAO2RWNpgC88pv
	KNT73IwHqTk6z+ya3DPiyw==
X-Received: by 2002:a05:600c:1088:b0:4a2:417:7db5 with SMTP id 5b1f17b1804b1-4bb887f43cdmr285531595e9.2.1795617873970;
        Wed, 25 Nov 2026 06:44:33 -0800 (PST)
Received: from skbuf ([2a02:2f04:d401:2601:d3cc:6bc:a861:f9da])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb906e4ce6sm303747515e9.4.2026.11.25.06.44.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Nov 2026 06:44:32 -0800 (PST)
Date: Wed, 25 Nov 2026 16:44:28 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: jan.petrous@oss.nxp.com
Cc: Vincent Guittot <vincent.guittot@linaro.org>, 
	Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>, Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>, 
	NXP S32 Linux Team <s32@nxp.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@kernel.org>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Bogdan Hamciuc <bogdan.hamciuc@nxp.com>, 
	Ionut Vicovan <ionut.vicovan@nxp.com>, Andrew Lunn <andrew@lunn.ch>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Maxime Chevallier <maxime.chevallier@bootlin.com>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Chester Lin <chester62515@gmail.com>, Matthias Brugger <mbrugger@suse.com>, 
	Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Richard Cochran <richardcochran@gmail.com>, linux-arm-kernel@lists.infradead.org, 
	linux-phy@lists.infradead.org, netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, imx@lists.linux.dev, linux-pci@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, Alexandru-Catalin Ionita <alexandru-catalin.ionita@nxp.com>, 
	Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>, Bogdan Roman <bogdan-gabriel.roman@nxp.com>
Subject: Re: [PATCH RFC v4 09/15] phy: freescale: s32g: Add SerDes subsystem
 PHY
Message-ID: <awbmvSYZ9RJ6agIu@skbuf>
References: <20261125-s32g_serdes-v4-0-3bfe0589be8d@oss.nxp.com>
 <20261125-s32g_serdes-v4-9-3bfe0589be8d@oss.nxp.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261125-s32g_serdes-v4-9-3bfe0589be8d@oss.nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_064436_608353_70695523 
X-CRM114-Status: GOOD (  21.88  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Jan,

On Wed, Nov 25, 2026 at 10:33:51AM +0100, Jan Petrous via B4 Relay wrote:
> From: Vincent Guittot <vincent.guittot@linaro.org>
> 
> Each S32G SerDes subsystem is made of one PCIe controller, two XPCS and
> a shared 2-lane combo PHY. The lanes carry PCIe and/or SGMII.
> 
> Add the SerDes subsystem driver: the PCIe PHY, the combo PHY bring-up
> and the setup of the XPCS instances. A MAC gets its phylink PCS through
> s32g_serdes_pcs_create(), which also creates a device link, so that the
> MAC is unbound and suspended before the SerDes.
> 
> SS_RW_REG_0[SUBSYS_MODE] is derived at probe from the consumers' phys
> references to the SerDes node, <lane type instance max-speed>: a PCIe
> root port names its lanes, a MAC names its lane, the XPCS instance it
> is wired to and the highest speed the lane is wired for, 1000 in this
> series. The driver walks the tree for them, as the mux is programmed before
> the reset is released, long before the consumers probe. Each supported
> mode has a unique lane mux; a lane nobody references takes the function
> it has in the first matching mode. The reference clock rate is
> validated against the derived mode.
> 
> The SerDes provides one PHY for the PCIe link, whatever its width, and
> one PHY per XPCS instance in use. The XPCS lane PHY has no operations:
> the lane is brought up with the SerDes, and the MAC drives it through
> the PCS, which it gets from s32g_serdes_pcs_create() with its own node.
> 
> After the subsystem reset is released, the PHY needs up to 5.2 ms to
> become operational (MPLL_STATE). Poll it before any further PHY or XPCS
> PMA access, in every mode.
> 
> Signed-off-by: Vincent Guittot <vincent.guittot@linaro.org>
> Co-developed-by: Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>
> Signed-off-by: Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>
> Co-developed-by: Alexandru-Catalin Ionita <alexandru-catalin.ionita@nxp.com>
> Signed-off-by: Alexandru-Catalin Ionita <alexandru-catalin.ionita@nxp.com>
> Co-developed-by: Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
> Signed-off-by: Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
> Co-developed-by: Ionut Vicovan <Ionut.Vicovan@nxp.com>
> Signed-off-by: Ionut Vicovan <Ionut.Vicovan@nxp.com>
> Co-developed-by: Bogdan Roman <bogdan-gabriel.roman@nxp.com>
> Signed-off-by: Bogdan Roman <bogdan-gabriel.roman@nxp.com>
> Co-developed-by: Jan Petrous (OSS) <jan.petrous@oss.nxp.com>
> Signed-off-by: Jan Petrous (OSS) <jan.petrous@oss.nxp.com>
> ---

I am trying to spend some time to understand this design. I have a few
basic questions:

- Simply explained, what do you gain by integrating with the Generic PHY framework?
  The XPCS has a dummy phy_ops. Clearly this means phy_init(), phy_power_on(),
  phy_set_mode_ext() etc will do nothing for it. Who and why is better
  off if it exists?

- If you have 2 physical lanes, why do you have 3 Generic PHY objects?
  Why not a Generic PHY object per lane?

- Does the lane mux need to be programmed by the kernel driver? Does it
  ever need to change at runtime? How do previous boot layers use the
  SerDes? If you leave the lane mux set by a previous boot layer, and
  make the device tree describe that configuration as read-only, what
  doesn't work for your use cases?

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
