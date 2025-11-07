Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57AF1CCF9F8
	for <linux-phy@archiver.kernel.org>; Fri,  7 Nov 2025 09:40:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4TzhiXMNM9EdlyQ3+T7z6voS8v/3T3VfCSL3DrJ+VW0=; b=RcwY2GBz9n5wKj
	FKDI9i+e9zAgL3MDSIhk88INwmQE2SgSZRgYeOLu1ynFhn816oEZzuo/t5kfUCw02F9ngHLUukQQo
	cooNXlZ5nmOfbLfA/6OAZw6CabiELt0EgEEb5xgxZI9khi4m4vxnBJCu6avvlL7UQwSLGWfiumVKu
	Kll3l6ukqJ5Eu+8v7JNfBMz+UGkgV+CzkwwEyk+1bmmYqWlL+xB46bcaP3oaFvahydpkP65n/yLhP
	teqxWxj3SZtQQQZLCaclxLYSxkCPP+4eBS7e02OgNE1YbYJ0heUifl38igWsxxkI3ItkIMtaCZ37u
	1xRZfm+tDwM/e7fjoUeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHIxJ-0000000H0Gc-1V45;
	Fri, 07 Nov 2025 09:40:29 +0000
Received: from elvis.franken.de ([193.175.24.41])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHIxC-0000000Gzwo-46Cz
	for linux-phy@lists.infradead.org;
	Fri, 07 Nov 2025 09:40:25 +0000
Received: from uucp by elvis.franken.de with local-rmail (Exim 3.36 #1)
	id 1vHIx6-000492-00; Fri, 07 Nov 2025 10:40:16 +0100
Received: by alpha.franken.de (Postfix, from userid 1000)
	id 5D811C0256; Fri,  7 Nov 2025 10:39:37 +0100 (CET)
Date: Fri, 7 Nov 2025 10:39:37 +0100
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
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v2 6/7] MIPS: mobileye: eyeq5: add two Cadence GEM
 Ethernet controllers
Message-ID: <aQ2-WZkptVKJTM0a@alpha.franken.de>
References: <20251101-macb-phy-v2-0-c1519eef16d3@bootlin.com>
 <20251101-macb-phy-v2-6-c1519eef16d3@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251101-macb-phy-v2-6-c1519eef16d3@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_014023_192085_3490DC72 
X-CRM114-Status: UNSURE (   8.36  )
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

On Sat, Nov 01, 2025 at 09:53:34AM +0100, Th=E9o Lebrun wrote:
> Add both MACB/GEM instances found in the Mobileye EyeQ5 SoC.
> =

> Signed-off-by: Th=E9o Lebrun <theo.lebrun@bootlin.com>
> ---
>  arch/mips/boot/dts/mobileye/eyeq5.dtsi | 45 ++++++++++++++++++++++++++++=
++++++
>  1 file changed, 45 insertions(+)

Acked-by: Thomas Bogendoerfer <tsbogend@alpha.franken.de>

-- =

Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
good idea.                                                [ RFC1925, 2.3 ]

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
