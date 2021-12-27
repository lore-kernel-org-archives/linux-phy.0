Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43535C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 27 Dec 2021 10:32:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bCl817CkUyBiJHUGceM7lO6/ND9LJLkQMsIWXY+ru8c=; b=q9u+BTPiBChPRa
	SPCtAY4ldemadmMVOuh/C728bPYXENvuiG93Xz3Jb6pjdXqBZZJbQgm7p1WxBePzCHCpDpO69WWZu
	MYT7noOYB+G+rcjBCX7YXtMjMzU1UMucZmV69b1PW1jEWnYuLJI1EsgaMvdg0Rg+hi50+W88oM9fk
	Mawh5fxh+RW9/E6mmd4BY3SHwPMwI2MbBmZ1wNw4Ai3SsmcDEApzzpAxkz7gQcGjyCUdjqabvDwGd
	MD9di0wyMGP7FD/aT6uWHwwlVbGxMO6aj/3CBAsEuwScdM/rwvyrQM/Zzmp7koU/vXTd8x2BV9kpW
	8NP2OPuySUc+D0VsT2Lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n1nIQ-00GXAA-G1; Mon, 27 Dec 2021 10:32:02 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n1nIN-00GX9q-Gh
 for linux-phy@lists.infradead.org; Mon, 27 Dec 2021 10:32:01 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id AE467B80E66;
 Mon, 27 Dec 2021 10:31:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8ED29C36AE7;
 Mon, 27 Dec 2021 10:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1640601114;
 bh=/KjC1UJVv3vSOLwDC5ETeD3L87FQ7q37TromhwIqc+0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=k8i2bd3ehjpyERzYC03d3VeS6CFfActH89ZFJUcT9Uigy6kxH4SoPSRQOmC9WrHAg
 Z1GsEF6nWL4KIEQ9RDZb90Ffr2EoTUCPYpAkmy2DZf2xkF8MaO0+COQ8YgTZggjSAK
 RiiyBcllMfogt9zR7SbL6Ig6BEkx9+OQPaCoG9QrMdiPxMJoY6wFFnyinCP+Pn5VdF
 u30JL66e62JfsD8waDNJjvnMcvPTKez7VXPzQZzHd50DDIKaASj3l3/JWBpJk2faOG
 MR/wXIbE5vIYFw+MX/rnoCp+QpVLt/y0ZrmDxqs3kvrRamjNAOWnLFEruZoeDQ+Vu6
 r4bFY61eXWz/g==
Date: Mon, 27 Dec 2021 16:01:50 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>
Cc: Marek =?iso-8859-1?Q?Beh=FAn?= <kabel@kernel.org>,
 linux-phy@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: Re: [PATCH phy v2 2/6] phy: marvell: phy-mvebu-a3700-comphy: Add
 native kernel implementation
Message-ID: <YcmWFtjBke3LDY79@matsya>
References: <20211208024038.8797-1-kabel@kernel.org>
 <20211208024038.8797-3-kabel@kernel.org> <YcRuVCdXztTTrJs7@matsya>
 <20211223132102.lgne4vsdjeqqudwc@pali>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211223132102.lgne4vsdjeqqudwc@pali>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211227_023159_889326_ABADE3A0 
X-CRM114-Status: GOOD (  16.92  )
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

On 23-12-21, 14:21, Pali Roh=E1r wrote:
> On Thursday 23 December 2021 18:10:52 Vinod Koul wrote:
> > On 08-12-21, 03:40, Marek Beh=FAn wrote:
> > > From: Pali Roh=E1r <pali@kernel.org>
> > =

> > > +/* COMPHY registers */
> > > +#define COMPHY_POWER_PLL_CTRL		0x01
> > > +#define PU_IVREF_BIT			BIT(15)
> > > +#define PU_PLL_BIT			BIT(14)
> > > +#define PU_RX_BIT			BIT(13)
> > > +#define PU_TX_BIT			BIT(12)
> > > +#define PU_TX_INTP_BIT			BIT(11)
> > > +#define PU_DFE_BIT			BIT(10)
> > > +#define RESET_DTL_RX_BIT		BIT(9)
> > > +#define PLL_LOCK_BIT			BIT(8)
> > > +#define REF_FREF_SEL_MASK		GENMASK(4, 0)
> > > +#define REF_FREF_SEL_SERDES_25MHZ	(0x1 << 0)
> > > +#define REF_FREF_SEL_SERDES_40MHZ	(0x3 << 0)
> > > +#define REF_FREF_SEL_SERDES_50MHZ	(0x4 << 0)
> > > +#define REF_FREF_SEL_PCIE_USB3_25MHZ	(0x2 << 0)
> > > +#define REF_FREF_SEL_PCIE_USB3_40MHZ	(0x3 << 0)
> > > +#define COMPHY_MODE_MASK		GENMASK(7, 5)
> > > +#define COMPHY_MODE_SATA		(0x0 << 5)
> > > +#define COMPHY_MODE_PCIE		(0x3 << 5)
> > > +#define COMPHY_MODE_SERDES		(0x4 << 5)
> > > +#define COMPHY_MODE_USB3		(0x5 << 5)
> > =

> > Any reason why these are not using GENMASK. I guess documentation would
> > define these as BIT x-y right?
> =

> Hello Vinod! I'm not sure to which macro refers your question as all
> *_MASK defines are now using GENMASK() macros.
> =

> Definitions which do not have mask _MASK are not masks, but rather
> particular values for corresponding _MASK constant.
> =

> So, for example: REF_FREF_SEL_MASK is 5 bit mask for fref_sel and
> fref_sel can contain exactly one of the following values:
> REF_FREF_SEL_SERDES_25MHZ, REF_FREF_SEL_SERDES_40MHZ,
> REF_FREF_SEL_SERDES_50MHZ, REF_FREF_SEL_PCIE_USB3_25MHZ,
> REF_FREF_SEL_PCIE_USB3_40MHZ. So you want to set serdes ref freq to
> 50 MHz you need to clear bits [4:0] (macro REF_FREF_SEL_MASK) and then
> set to value 0x4 (macro REF_FREF_SEL_SERDES_50MHZ) to bits [4:0].
> =

> It is clear now? Or did you mean something different?

Thanks for explanation.

Looking at this, i think this should be defined as constants as defined
in the spec:
#define REF_FREF_SEL_SERDES_25MHZ x
#define REF_FREF_SEL_SERDES_40MHZ y
... so on

and then use FIELD_PREP(MASK, constant) ie,
FIELD_PREP(REF_FREF_SEL_MASK, REF_FREF_SEL_SERDES_25MHZ)

That sounds more readable and less error prone to me :)

Thanks
-- =

~Vinod

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
