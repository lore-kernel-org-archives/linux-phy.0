Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB8B3EE6422
	for <linux-phy@archiver.kernel.org>; Fri, 15 Sep 2023 06:57:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QAQXSpEO3FE0Bjq+b0abLoEfZv9Jl76jiemeOwxyZ0U=; b=WzJHjc0ZH/1Yk8
	1rYMMktDIBiFyD+FbWo/yncAyavIPSeCnDyp24TNquN6+AhrOgNxNQ5MtBNEc2a45Pj+6+PvVGANU
	+rQknhfA8iy1ISwognb2IRFczLz6jbsoQK3nLgpDNSLXQtt5JfSciO9QDZSndMBtRU64B2RZ7i48w
	SWfPSdXxeU77yTPqbd5fdOrOHi8GB5K97wvBchgSWfIEtdxbu/mDQc9nLuzJbVzRAnF4ST8jVCqxY
	UFPcBkIOMuN9bdFItGxNQJelAK6Vpqur1N13vWrif6Wm7JTy60Y3EQzw7Tn4ynnn5l1Hw7Tyyyo5h
	uswzZY0HfnugixaQGqMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qh2lU-009xJM-28;
	Fri, 15 Sep 2023 06:57:20 +0000
Received: from relay5-d.mail.gandi.net ([2001:4b98:dc4:8::225])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qh2lQ-009xGA-2F;
	Fri, 15 Sep 2023 06:57:18 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id C0D3D1C0006;
	Fri, 15 Sep 2023 06:57:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1694761030;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=L2sqXGX4RhAKmchQsyxvig/E2PRZhb7DReGQK6xBbNU=;
	b=k7twtjv6n8Xxz02Bp/gL0ujKol4nOUFVLl0MvEaDXFChS/iA1yTepQVk9WwaOLNPw2n1/r
	yQSWeM/0zUiQ2/SpYtds6CKKXiyeuqwbYeXgY1A1LrNUCkARLCP23wzd+6WOA/mGTS+oDK
	8hfeGIrlSkbOuaOZWxiG2mF4EawayP/3IFK5MWfHGydjnYO7rmUX2igpzxeUgMElu6FH6y
	+BmERYzpRPOYxObcWeuOnycDnkpH25XQqpwYIYy86+Q8aJ7EZzPpMH9KzwZ0q+K0INeATK
	KtnNflcpBDmb6qWfH6HrTtTqGgOK0d7XDDUjW48AMAef9dA4F6mbxp9u1PMuJA==
Date: Fri, 15 Sep 2023 08:57:06 +0200
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: Sandor Yu <sandor.yu@nxp.com>
Cc: Lucas Stach <l.stach@pengutronix.de>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Pengutronix Kernel Team
 <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, dl-linux-imx
 <linux-imx@nxp.com>, "linux-phy@lists.infradead.org"
 <linux-phy@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "patchwork-lst@pengutronix.de"
 <patchwork-lst@pengutronix.de>, Richard Leitner
 <richard.leitner@skidata.com>
Subject: Re: [EXT] Re: [PATCH v3 2/2] phy: freescale: add Samsung HDMI PHY
Message-ID: <20230915085706.2452129e@booty>
In-Reply-To: <PAXPR04MB9448947986184612E67E3E2DF4F6A@PAXPR04MB9448.eurprd04.prod.outlook.com>
References: <20230906184211.1857585-1-l.stach@pengutronix.de>
	<20230906184211.1857585-2-l.stach@pengutronix.de>
	<20230914231610.2c339f7e@booty>
	<PAXPR04MB9448947986184612E67E3E2DF4F6A@PAXPR04MB9448.eurprd04.prod.outlook.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-GND-Sasl: luca.ceresoli@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230914_235717_038391_09D19112 
X-CRM114-Status: GOOD (  27.00  )
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

Hello Sandor, Lucas,

On Fri, 15 Sep 2023 01:49:42 +0000
Sandor Yu <sandor.yu@nxp.com> wrote:

> Hi Luca, 
> 
> > 
> > Hi Lucas,
> > 
> > [+Cc: Sandor]
> > 
> > On Wed,  6 Sep 2023 20:42:11 +0200
> > Lucas Stach <l.stach@pengutronix.de> wrote:
> >   
> > > This adds the driver for the Samsung HDMI PHY found on the i.MX8MP
> > > SoC. Based on downstream implementation from Sandor Yu
> > > <Sandor.yu@nxp.com>.
> > >
> > > Tested-by: Luca Ceresoli <luca.ceresoli@bootlin.com> (v2)  
> > 
> > Also for v3:
> > [On custom board based on MSC SM2S-IMX8PLUS SMARC module]
> > Tested-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
> > 
> > I have a few notes however, see below.
> >   
> > > +#define PHY_REG_14           0x38
> > > +#define  REG14_TOL_MASK              GENMASK(7, 4)
> > > +#define  REG14_RP_CODE_MASK  GENMASK(2, 1)  
> > 
> > According to the latest reference manual currently available on the NXP
> > website (Rev. 1, 06/2021), this should be GENMASK(3, 1). This is somewhat
> > nitpicking as the only possible value documented is 2. But let's continue...
> >   
> I agree, according the RM it should be GENMASK(3, 1).
> 
> > > +#define PHY_REG_33           0x84
> > > +#define  REG33_MODE_SET_DONE BIT(7)
> > > +#define  REG33_FIX_DA                BIT(1)  
> > 
> > Here the reference manual is very different:
> > 
> > MODE_SET_DONE BIT(4)
> > TX_INV2       BIT(3)
> > TX_INV1       BIT(2)
> > TX_INV0       BIT(1)
> > MON_RXD       BIT(0)
> > bits 7-5 are reserved
> > 
> > ...which is strange: in the code you are always writing 0 in bit 4, which
> > according to the docs means MODE_SET_DONE is always "Assert forced
> > global reset". Thus I guess your definitions come from the downstream driver
> > which, as it sadly happens, is more authoritative than the docs. :-/
> > 
> > Sandor, can you confirm this, or provide any clarifications?  
> 
> There is a doc issue on the i.MX8MP latest RM, actually the fields for REG33 should be:
> REG33 fields:
> --------------------------------------------------------------------------------
> |    Field	   |       Description
> --------------------------------------------------------------------------------
> |     7         | 0 - Assert forced global reset
> |MODE_SET_DONE | 1 - Release forced global reset             
> --------------------------------------------------------------------------------
> |     6        | 0 - There are not any change in 20bit data from TXD2 port     
> |TX_INV2	       | 1 Invert polarity of 10bit data of 20bit data from TXD2 port
> --------------------------------------------------------------------------------
> |     5        | 0 - There are not any change in 20bit data from TXD1 port     
> |TX_INV1       | 1 - Invert polarity of 10bit data of 20bit data from TXD1 port
> --------------------------------------------------------------------------------
> |     4        | 0 - There are not any change in 20bit data from TXD0 port      
> |TX_INV0       | 1 - Invert polarity of 10bit data of 20bit data from TXD0 port 
> --------------------------------------------------------------------------------
> |    3         | 0 : TESTOUT[0] - BIST_ON                                    
> |MON_RXD     | TESTOUT[1] - BIST_ERROR                                     
> |              | TESTOUT[2] - DES_CLK_SEL[0]                                 
> |              | TESTOUT[3] - DES_CLK_SEL[1]                                 
> |              | TESTOUT[4] - TX_CLK_SEL[0]                                  
> |              | TESTOUT[5] - TX_CLK_SEL[1]                                  
> |              | TESTOUT[6] - TX_CLK_SEL[2]                                  
> |              | TESTOUT[7] - TX_CLK_SEL[3]                                  
> |              | TESTOUT[8] - PLL_COARSE_LOCK_DONE                           
> |              | TESTOUT[9] - PLL_FINE_LOCK_DONE                             
> |              | TESTOUT[10] - Divided by 10 clock (source clock : PIXEL_CLK)
> |              | TESTOUT[11] - Divided by 10 clock (source clock : TMDS_CLK) 
> |              | 1 : TESTOUT[0:9] - 10bit of RXDATA                          
> |              | TESTOUT[10] - Divided by 10 clock (source clock : PIXEL_CLK)
> |              | TESTOUT[11] - Divided by 10 clock (source clock : TMDS_CLK) 
> --------------------------------------------------------------------------------
> |    2         |
> |FIX_DB        | Disable de-skew function 1 - Select fixed phase 2
> --------------------------------------------------------------------------------
> |    1         |
> |FIX_DA        | Disable de-skew function 1 - Select fixed phase 1
> --------------------------------------------------------------------------------
> |    0         | 0 : There are not any change in 20bit data from TESTIN port    
> |ALTER         | 1: Invert polarity of 10bit data of 20bit data from TESTIN port
> --------------------------------------------------------------------------------
> 
> The issue will be fixed in the next i.MX8MP RM release, sorry for the inconvenience.

Thanks for the prompt clarification!

I'm not sure whether this should deserve a comment such as "/*
Reference manual Rev. 1, 06/2021 has incorrect documentation of this
register */". It depends on the time the fixed RM will take before it's
public, so up to you Lucas.

Bottom line, I think only the PHY_REG_14 fix is needed to this patch.

Luca

-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
