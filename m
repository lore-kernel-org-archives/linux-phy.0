Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1321FEFB56
	for <linux-phy@archiver.kernel.org>; Fri, 27 Feb 2026 14:08:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/SH/OBnsZJ20BlJDQxAgSLDktEVtb2RW/sxJEWEESr8=; b=XJ/73oO8ZXfaQU
	5u3Zu6Z0d4oUkHZFH6l7/xmv4A7VtiKhj8FmTMSCgxHvTvzE5s+CJnYldKB9cUchYIuaPRAlVBFTX
	wfyNFIquFXkYM3InzsuLACktnkyHB5gzZ89bgjTJqUB99+73ekfJM510E7/yBEuU+6iGiDFltDifC
	B2bTfd0gssA2++JezyDJi57/L2Q0mjhWcV6jbx/mxj3j7sDdjPa9D39rMM8MovwpXFfMqZBkxTYvd
	h4AXOgNu2g3oA6oSRH5JHSC5F8fg90gqqIsI+yHiRb9iT9ehPlXp6kKWTaSfHOldJ74b4T0IGeNz6
	jVrG7/7pax0k38Fg6qaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvyVx-00000008T8r-1amC;
	Fri, 27 Feb 2026 14:08:21 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvyVu-00000008T8V-2rFR
	for linux-phy@lists.infradead.org;
	Fri, 27 Feb 2026 14:08:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 5070A444FE;
	Fri, 27 Feb 2026 14:08:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6710EC116C6;
	Fri, 27 Feb 2026 14:08:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772201298;
	bh=TiA19B2029SlmlVMXMVhf5Vhssf3HDX9ajqPqZqlpZ4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gDgpHXguuDtFsPLvt5L9lwMfiCQOf/4HSL46ZN/ED0LkW0DDIeeNy0IcBYLH3G+zt
	 Xy+JzTjYjLuzYkpyESSr6Pe0x7jw/epDMI3WmgXLUUDhX/Zy98NE1+6Keli7o9uujt
	 8Lj4oI5UgrgmKV4goxcXJGzjiHm+9ATKk8ZOgE1aj5eukLpIgbe/lBikFD0Cf+7jGZ
	 ogHin5ey692vHtyNAV982Sxha7gL+0r07DiHjFxe7qzSIGsYQjjx/xaiDutXe+ZZwU
	 XYgZ9U8HIc83spzcoBHQ9dDqr790NXaAOan3kyYMd2xTsR06HUYN9kJ8/TCPvIVNFk
	 AQkVA5GPcKwYw==
Date: Fri, 27 Feb 2026 19:38:14 +0530
From: Vinod Koul <vkoul@kernel.org>
To: =?iso-8859-1?Q?Th=E9o?= Lebrun <theo.lebrun@bootlin.com>
Cc: Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>,
	=?iso-8859-1?Q?Gr=E9gory?= Clement <gregory.clement@bootlin.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-mips@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-clk@vger.kernel.org,
	=?iso-8859-1?Q?Beno=EEt?= Monin <benoit.monin@bootlin.com>,
	Tawfik Bayouk <tawfik.bayouk@mobileye.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v6 3/8] phy: Add driver for EyeQ5 Ethernet PHY wrapper
Message-ID: <aaGlTqjgRgIvB_O5@vaman>
References: <20260127-macb-phy-v6-0-cdd840588188@bootlin.com>
 <20260127-macb-phy-v6-3-cdd840588188@bootlin.com>
 <aZ8OkJ4BH0-sVSHS@vaman>
 <DGO5XYKELMA3.14FPOZ2FCD8NN@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DGO5XYKELMA3.14FPOZ2FCD8NN@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_060818_739991_584F81F5 
X-CRM114-Status: GOOD (  16.30  )
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

On 25-02-26, 16:54, Th=E9o Lebrun wrote:
> On Wed Feb 25, 2026 at 4:00 PM CET, Vinod Koul wrote:
> > On 27-01-26, 18:09, Th=E9o Lebrun wrote:
> >> EyeQ5 embeds a system-controller called OLB. It features many unrelated
> >> registers, and some of those are registers used to configure the
> >> integration of the RGMII/SGMII Cadence PHY used by MACB/GEM instances.
> >> =

> >> Wrap in a neat generic PHY provider, exposing two PHYs with standard
> >> phy_init() / phy_set_mode() / phy_power_on() operations.
> >
> > Is there a dependency of this patch with rest of the series. If not
> > please post different series for subsystems.
> =

> ACK. It felt sensible to keep patches close together to understand their
> reasoning.
>  - clk patches are there because they imply we get a dev->of_node.
>    Without them we don't and therefore the driver is useless.
>  - DTS/MIPS patches are there because they exploit this new driver.
>    They show the first users of this driver.

You can add that in cover letter for people interested to read. It is
easy for me to pick a series rather than find which patches to review
and apply

> =

> Will split for next revision.

Thanks

-- =

~Vinod

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
