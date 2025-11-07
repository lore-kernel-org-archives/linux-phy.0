Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9100CCF9F8
	for <linux-phy@archiver.kernel.org>; Fri,  7 Nov 2025 09:40:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=drg1kZxzWnd69ceo2d8SftuBaysEcr5StlRAtQ6+f/Y=; b=iBPSAMOzpGura6
	0Mt9L9mtkIR+JgYEfdAcc8jt2KI29BsaqTa2gPuWnPB/34nEtCCX2cBpVOACkYVg2fu8MrkOh3HNO
	xJt2m07+y8KT2kWqpzlOLhIsww7W9gHHbRIAO4RXAOt+179ZhjGbdIRDCMT61mqT6TFqqZCvXClHV
	aQNVV61UMWDMcThSGv/XH9BWc5EMMRBD9HHyy4gj5+KrevujzbcLIBC8UbT1R4Gl/CZ9jA9zGMzdw
	QpfWOyTRaUnmtiI0hZs5m4WsHPW7020q1X4hAKjXKgK5F10tJuR+GOfUp7gC0bTPh74TXUPAcsrW+
	Z1xbLc67XXnoNtelxwWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHIxL-0000000H0KL-3geo;
	Fri, 07 Nov 2025 09:40:31 +0000
Received: from elvis.franken.de ([193.175.24.41])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHIxC-0000000Gzwv-4BRJ
	for linux-phy@lists.infradead.org;
	Fri, 07 Nov 2025 09:40:25 +0000
Received: from uucp by elvis.franken.de with local-rmail (Exim 3.36 #1)
	id 1vHIx6-000494-00; Fri, 07 Nov 2025 10:40:16 +0100
Received: by alpha.franken.de (Postfix, from userid 1000)
	id C1DDCC06A7; Fri,  7 Nov 2025 10:39:52 +0100 (CET)
Date: Fri, 7 Nov 2025 10:39:52 +0100
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: =?iso-8859-1?Q?Th=E9o?= Lebrun <theo.lebrun@bootlin.com>
Cc: Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>,
	=?iso-8859-1?Q?Gr=E9gory?= Clement <gregory.clement@bootlin.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>, linux-mips@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-clk@vger.kernel.org,
	=?iso-8859-1?Q?Beno=EEt?= Monin <benoit.monin@bootlin.com>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Tawfik Bayouk <tawfik.bayouk@mobileye.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH v2 7/7] MIPS: mobileye: eyeq5-epm: add two Cadence GEM
 Ethernet PHYs
Message-ID: <aQ2-aNtzp-VUBjrp@alpha.franken.de>
References: <20251101-macb-phy-v2-0-c1519eef16d3@bootlin.com>
 <20251101-macb-phy-v2-7-c1519eef16d3@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251101-macb-phy-v2-7-c1519eef16d3@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_014023_224704_E2B71FC1 
X-CRM114-Status: UNSURE (   8.74  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Sat, Nov 01, 2025 at 09:53:35AM +0100, Th=E9o Lebrun wrote:
> The Mobileye EyeQ5 eval board (EPM) embeds two MDIO PHYs.
> =

> Reviewed-by: Andrew Lunn <andrew@lunn.ch>
> Signed-off-by: Th=E9o Lebrun <theo.lebrun@bootlin.com>
> ---
>  arch/mips/boot/dts/mobileye/eyeq5-epm5.dts | 26 ++++++++++++++++++++++++=
++
>  1 file changed, 26 insertions(+)

Acked-by: Thomas Bogendoerfer <tsbogend@alpha.franken.de>

-- =

Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
good idea.                                                [ RFC1925, 2.3 ]

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
