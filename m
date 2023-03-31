Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D982C76196
	for <linux-phy@archiver.kernel.org>; Fri, 31 Mar 2023 13:27:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PcfTvnfDJtMltAFzG6yRWF9h9tc34UBuqrt5UKPgMts=; b=ak2wziSzhiypKH
	g3cjWrILS8Ty+O8/Zwu1CkbKLZWjMpsLWVbfmLidr9vJntgFV+c9z+vemn8YR++mobSrkdgDhsUic
	RD2pGYLgCyUL6+YZ6hZSeVnICZCt9pxlPkri4qK36E0QXLg08hFaIyYgRDnU+CAsxYjNIwy/3erI/
	wfbVeA57FkPPxBaic6fCqYdz/LThMO709A/HI1K/ZXmPQH2ZGls/2DGuJ8ui3zhbOY+4wCpcg9lTQ
	yaUsQ1dMOz65bL/vysCwwhFez/UwJ6gRimAmP+plTDyFLYepCyEdn0viyMwPbjQZimV/ncMtCztTr
	4ypvF26DHy2LpY7ORRTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piEmv-007Wbc-0c;
	Fri, 31 Mar 2023 13:27:29 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piEmp-007Wah-2U;
	Fri, 31 Mar 2023 13:27:26 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 09B3CB82EAE;
	Fri, 31 Mar 2023 13:27:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1ABD5C433D2;
	Fri, 31 Mar 2023 13:27:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680269237;
	bh=FNfbBuac+lfXIPgQ6rZLOIA4FEfDXjWwi1WDy/J/i1Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YZcpBkshWdInjpxLsM1OJBROP5WFjd6vzUeqcGrsiLAhqRfCO+C25nWM7xV3xJxcX
	 IGHF16yN5bTbaVGrzcfdj/8LGOlEQBFdPiqSrhgcr/S3G8UEoOtwvsgOmQd66gnQqV
	 Z30fQXqViOkw89Uds2O36clXZNbXN6fAPyPRJNiK/+45vRSZQLZuuKrXs+Q3TMd9NM
	 Lo6JMAiM2cqyrki0GRrwaKTx5If3lgPdHcAY69qADq8n0WYnqIJCnXvswrcjSK2OMf
	 cAhE/Wr3ENWPFXIM2giREH4sI4Pl0VqSZUCM22AFE1tIK5uoL8Nnu/HA00fmC2oEdY
	 sb7xIr3KqcRfg==
Date: Fri, 31 Mar 2023 18:57:13 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Michael Grzeschik <mgr@pengutronix.de>,
	Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	kishon@kernel.org, mcoquelin.stm32@gmail.com,
	alexandre.torgue@foss.st.com, error27@gmail.com,
	kernel@pengutronix.de, linux-stm32@st-md-mailman.stormreply.com,
	amelie.delaunay@foss.st.com
Subject: Re: [PATCH v2] phy: stm32-usphyc: add 200 to 300 us delay to fix
 timeout on some machines
Message-ID: <ZCbfsUldPi5dvL0k@matsya>
References: <1869feff-06b1-17f1-4628-b433c858ad79@foss.st.com>
 <20230227151318.1894938-1-m.grzeschik@pengutronix.de>
 <27b9e057-bdd7-b4e6-445c-8da700423600@foss.st.com>
 <20230310104438.GB7352@pengutronix.de>
 <20230320120210.GA26652@pengutronix.de>
 <20230331120627.GJ6000@pengutronix.de>
 <ZCbd1TyLhBvfEsoE@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZCbd1TyLhBvfEsoE@kroah.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230331_062724_961361_808A7412 
X-CRM114-Status: GOOD (  28.87  )
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

On 31-03-23, 15:19, Greg KH wrote:
> On Fri, Mar 31, 2023 at 02:06:27PM +0200, Michael Grzeschik wrote:
> > Cc'ing: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > 
> > 
> > On Mon, Mar 20, 2023 at 01:02:10PM +0100, Michael Grzeschik wrote:
> > > Gentle Ping!
> > > 
> > > On Fri, Mar 10, 2023 at 11:44:38AM +0100, Michael Grzeschik wrote:
> > > > Hi Fabrice,
> > > > 
> > > > On Tue, Feb 28, 2023 at 06:28:21PM +0100, Fabrice Gasnier wrote:
> > > > > On 2/27/23 16:13, Michael Grzeschik wrote:
> > > > > > An minimum udelay of 200 us seems to be necessary on some machines. After
> > > > > > the setup of the pll, which needs about 100 us to be locked there seem
> > > > > > to be additional 100 us to get the phy really functional. Without this
> > > > > > delay the usb runs not functional. With this additional short udelay
> > > > > > this issue was not reported again.
> > > > > > 
> > > > > > Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> > > > > > 
> > > > > 
> > > > > Hi Michael,
> > > > > 
> > > > > Thank you for the updates,
> > > > > 
> > > > > Fell free to add my:
> > > > > Reviewed-by: Fabrice Gasnier <fabrice.gasnier@foss.st.com>
> > > > 
> > > > Thanks!
> > > > 
> > > > Through which tree will this be picked?
> > > > Will it be possible to add this to v6.3?
> > 
> > Hi Greg!
> > 
> > Since nobody seem to catch this, is it possible that you pick this?
> 
> What is "this"?  The change to the following file:
> 
> > > > > > ---
> > > > > > v1 -> v2: - changed the mdelay to udelay_range(200, 300), like suggested by fabrice
> > > > > >         - moved the delay to pll enable so it will only be triggered once
> > > > > > 
> > > > > > drivers/phy/st/phy-stm32-usbphyc.c | 3 +++
> > > > > > 1 file changed, 3 insertions(+)
> 
> That one?
> 
> I'm not anywhere on the maintainer path for it:
> 
> $ ./scripts/get_maintainer.pl drivers/phy/st/phy-stm32-usbphyc.c
> Vinod Koul <vkoul@kernel.org> (supporter:GENERIC PHY FRAMEWORK,commit_signer:3/3=100%)
> Kishon Vijay Abraham I <kishon@kernel.org> (supporter:GENERIC PHY FRAMEWORK)
> Maxime Coquelin <mcoquelin.stm32@gmail.com> (maintainer:ARM/STM32 ARCHITECTURE)
> Alexandre Torgue <alexandre.torgue@foss.st.com> (maintainer:ARM/STM32 ARCHITECTURE)
> Philipp Zabel <p.zabel@pengutronix.de> (maintainer:RESET CONTROLLER FRAMEWORK)
> Liam Girdwood <lgirdwood@gmail.com> (supporter:VOLTAGE AND CURRENT REGULATOR FRAMEWORK)
> Mark Brown <broonie@kernel.org> (supporter:VOLTAGE AND CURRENT REGULATOR FRAMEWORK)
> Amelie Delaunay <amelie.delaunay@foss.st.com> (commit_signer:2/3=67%)
> Dan Carpenter <error27@gmail.com> (commit_signer:2/3=67%,authored:2/3=67%,added_lines:4/7=57%)
> Fabrice Gasnier <fabrice.gasnier@foss.st.com> (commit_signer:1/3=33%,authored:1/3=33%,added_lines:3/7=43%,removed_lines:1/1=100%)
> linux-phy@lists.infradead.org (open list:GENERIC PHY FRAMEWORK)
> linux-stm32@st-md-mailman.stormreply.com (moderated list:ARM/STM32 ARCHITECTURE)
> linux-arm-kernel@lists.infradead.org (moderated list:ARM/STM32 ARCHITECTURE)
> linux-kernel@vger.kernel.org (open list)
> 
> 
> What happened to the maintainers involved here?

That would be me, sorry to have missed this one. I should be able to
review and do the needful shortly


-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
