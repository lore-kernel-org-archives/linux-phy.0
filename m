Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15777D6B07A
	for <linux-phy@archiver.kernel.org>; Thu, 29 Jan 2026 16:20:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cqtoor2XWWJOV1J57oyy/1NTgnqB54nLWfSosm1JKpk=; b=OJL0K3TEIHPkMz
	nhygsN2M/aiQPCOCFqOaDtJzoF5DhM0xGWySIkwOC5Oq4P8GMuxvN/vKdsdVXuaRh8I0EmNB1X/xp
	ZjIQiGHMDUNQIRS6cQCnjYkoPfnEm95ru3unJWnQQLwPzjT1RY6i9VEsls2mJFcZVjx0uZaciKJXn
	5WmeSVkbQr1iTeZG2jOSg169TdYfGUiobST6JCBrLB3owLOxPuZ7vTzdeUSa4v4bqxT9bxQ8/2r3H
	yxLWIsXVsHhY2oPvxTf41co4N2Fme781BXTHzvAduv2AxLXDhj5IzgmbmneBNIba3BIO+rvOxusbu
	DF072THN9/pqOHLi4pJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlUl4-00000000LEf-2HoB;
	Thu, 29 Jan 2026 16:20:38 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlUl2-00000000LEQ-20ZL;
	Thu, 29 Jan 2026 16:20:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 35A67600C4;
	Thu, 29 Jan 2026 16:20:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BF5CC19422;
	Thu, 29 Jan 2026 16:20:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769703634;
	bh=Fz1cXF6f+rJrvUbhHS3fdB4yadryUHMv1k4BpBRxD8U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Qk8qGl+Pkcd4d1ocyt263pGIIb71t4DaBVUNxvGVhL4GjZ+0VFhvreTqIrTOl9min
	 8TRYYRMyiAqaFRi+sYi/V4FURJnui5PEeeyiYNGGRsOCTbEHfV/k/Rd/efbn4aJw16
	 3ZuZEWelIPyL13/nkF/pOeQBDfkdqq+kS2QmkNk1F0qyHQ8KFV3zbEbrPJnYv8M87r
	 JAL/uuvmRFDGH1Ppn1vGBb4mahgzodbqTAWTygv7ryClXuV3gOk2/wm6XYyNCcl8/d
	 /ueY04E03nuGlhj+h4NdCERf0RQH104yambHI+iDX17QbO79apmkgPv0zLaACAxAZQ
	 Ur7QUYivF1ZGg==
Date: Thu, 29 Jan 2026 16:20:28 +0000
From: Simon Horman <horms@kernel.org>
To: Vincent Guittot <vincent.guittot@linaro.org>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, ciprianmarian.costea@oss.nxp.com, s32@nxp.com,
	p.zabel@pengutronix.de, linux@armlinux.org.uk,
	ghennadi.procopciuc@nxp.com, bogdan-gabriel.roman@nxp.com,
	Ionut.Vicovan@nxp.com, alexandru-catalin.ionita@nxp.com,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	netdev@vger.kernel.org, Frank.li@nxp.com
Subject: Re: [PATCH 3/4] phy: s32g: Add serdes xpcs subsystem
Message-ID: <aXuIzJdZYEGX3XVy@horms.kernel.org>
References: <20260126092159.815968-1-vincent.guittot@linaro.org>
 <20260126092159.815968-4-vincent.guittot@linaro.org>
 <aXtLsuOkMMryrUs4@horms.kernel.org>
 <CAKfTPtB8xDB8qYUZwGnH+h94ww3+gSyOuZ+RL+zOh5tYGuu_HQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKfTPtB8xDB8qYUZwGnH+h94ww3+gSyOuZ+RL+zOh5tYGuu_HQ@mail.gmail.com>
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

On Thu, Jan 29, 2026 at 02:24:15PM +0100, Vincent Guittot wrote:
> On Thu, 29 Jan 2026 at 12:59, Simon Horman <horms@kernel.org> wrote:
> >
> > On Mon, Jan 26, 2026 at 10:21:58AM +0100, Vincent Guittot wrote:
> >
> > ...
> >
> > > diff --git a/drivers/phy/freescale/phy-nxp-s32g-serdes.c b/drivers/phy/freescale/phy-nxp-s32g-serdes.c
> >
> > ...
> >
> > > +static void s32g_serdes_prepare_pma_mode5(struct s32g_serdes *serdes)
> > > +{
> > > +     u32 val;
> > > +     /* Configure TX_VBOOST_LVL and TX_TERM_CTRL */
> > > +     val = readl(serdes->ctrl.ss_base + S32G_PCIE_PHY_EXT_MISC_CTRL_2);
> > > +     val &= ~(EXT_TX_VBOOST_LVL_MASK | EXT_TX_TERM_CTRL_MASK);
> > > +     val |= FIELD_PREP(EXT_TX_VBOOST_LVL_MASK, 0x3) |
> > > +             FIELD_PREP(EXT_TX_TERM_CTRL_MASK, 0x4);
> > > +     writel(val, serdes->ctrl.ss_base + S32G_PCIE_PHY_EXT_MISC_CTRL_2);
> >
> > This is part of an AI Generated review.
> > I have looked over it and I think it warrants investigation.
> > For information on how to reproduce locally, as I did, please see [1].
> >
> >         The entire s32g_serdes_prepare_pma_mode5() function is ~70 lines of
> >         magic numbers with zero explanation. These appear to be
> >         hardware-specific PLL/PHY tuning parameters for 2.5G mode.
> 
> Unfortunately there is no additional information in the reference
> manual other than
> *step 4:
> - Write 3h to EXT_TX_VBOOST_LVL.
> - Write 4h to EXT_TX_TERM_CTRL

Understood. Sometimes you have the play the hand you're dealt.

> 
> >
> > Please consider using #defines, to give values names.
> >
> > ...
> >
> > > +static int s32g_serdes_init_clks(struct s32g_serdes *serdes)
> > > +{
> > > +     struct s32g_serdes_ctrl *ctrl = &serdes->ctrl;
> > > +     struct s32g_xpcs_ctrl *xpcs = &serdes->xpcs;
> > > +     int ret, order[2], xpcs_id;
> > > +     size_t i;
> > > +
> > > +     switch (ctrl->ss_mode) {
> > > +     case 0:
> > > +             return 0;
> > > +     case 1:
> > > +             order[0] = 0;
> > > +             order[1] = XPCS_DISABLED;
> > > +             break;
> > > +     case 2:
> > > +     case 5:
> > > +             order[0] = 1;
> > > +             order[1] = XPCS_DISABLED;
> > > +             break;
> > > +     case 3:
> > > +             order[0] = 1;
> > > +             order[1] = 0;
> > > +             break;
> > > +     case 4:
> > > +             order[0] = 0;
> > > +             order[1] = 1;
> > > +             break;
> > > +     default:
> > > +             return -EINVAL;
> >
> > AI review also flags that s32g_serdes_get_ctrl_resources() ensures that
> > ss_mode is <= 5.  So this check is unnecessary.
> 
> okay but providing a default seems a good practice

Yeah, I was of two minds about forwarding on this part of the report.

...

> > AI review also flags that s32g_xpcs_regmap_reg_read and
> > s32g_xpcs_regmap_reg_write do not protect against concurrent access.
> 
> but regmap framework should

If it does, then I agree there is no problem here.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
