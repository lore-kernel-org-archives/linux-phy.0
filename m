Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53A63C6FD18
	for <linux-phy@archiver.kernel.org>; Fri, 31 Mar 2023 13:19:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3ExRkcWv6jtxzHqn1R0w+PtpIp2+e3Z9ED3+PVkbB8M=; b=yvJJB9I7WOaYo4
	jnk2bUF5KFdp7koSUurHx+bMvyeQXi42DcXNvupiowMT5B1kVFmi8jOHQCegZpHBDQj4W1z0tGCWT
	oHgTqkv2M//GUb8WIjLNC+9Tiwcf98Jx9Fok9yI3K6RGZZzX5ZI19r15PYATQYuR21rk8QtwqOf6M
	mU0LfwioUKVTF/OMvrlYSDx/9pHZEygA3mj4u2LK5KYxRFSMxpCfarSzbe33fDLn8ndUzbIz9nfFR
	5VPVO1JehrPjkqa/QNIFfsGadn5ve5B0jktHOmGNO0ERmXs/v3oOkITmwBhMnwidW4C7GVqJTIdJz
	qHzjJ3vv4FgDpls6n77Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piEf9-007VMV-32;
	Fri, 31 Mar 2023 13:19:27 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piEf4-007VLB-0M;
	Fri, 31 Mar 2023 13:19:23 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 239B0623C4;
	Fri, 31 Mar 2023 13:19:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0874FC433D2;
	Fri, 31 Mar 2023 13:19:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1680268759;
	bh=k7P3LLPoi5flpTps2tt3EjUcT9vTTVh1FQCqlTbt508=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IPsP4YtBLuxf0e2y0YB0qxaOgeawll6KBzuVi4JV8IGqIGzqhl4LztbIpJz9R8BVB
	 n7xCBRt3YVmn6M5h+5pohpguo851q/M5phSkk6gXP7xnUYkO5Ycnn/wcWoH9X9PNCR
	 MSZDdieQhx39+fDI7AwafxUSVTZXgb18DZYhYyBQ=
Date: Fri, 31 Mar 2023 15:19:17 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Michael Grzeschik <mgr@pengutronix.de>
Cc: Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	vkoul@kernel.org, kishon@kernel.org, mcoquelin.stm32@gmail.com,
	alexandre.torgue@foss.st.com, error27@gmail.com,
	kernel@pengutronix.de, linux-stm32@st-md-mailman.stormreply.com,
	amelie.delaunay@foss.st.com
Subject: Re: [PATCH v2] phy: stm32-usphyc: add 200 to 300 us delay to fix
 timeout on some machines
Message-ID: <ZCbd1TyLhBvfEsoE@kroah.com>
References: <1869feff-06b1-17f1-4628-b433c858ad79@foss.st.com>
 <20230227151318.1894938-1-m.grzeschik@pengutronix.de>
 <27b9e057-bdd7-b4e6-445c-8da700423600@foss.st.com>
 <20230310104438.GB7352@pengutronix.de>
 <20230320120210.GA26652@pengutronix.de>
 <20230331120627.GJ6000@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230331120627.GJ6000@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230331_061922_230987_D834140A 
X-CRM114-Status: GOOD (  25.18  )
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

On Fri, Mar 31, 2023 at 02:06:27PM +0200, Michael Grzeschik wrote:
> Cc'ing: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> 
> 
> On Mon, Mar 20, 2023 at 01:02:10PM +0100, Michael Grzeschik wrote:
> > Gentle Ping!
> > 
> > On Fri, Mar 10, 2023 at 11:44:38AM +0100, Michael Grzeschik wrote:
> > > Hi Fabrice,
> > > 
> > > On Tue, Feb 28, 2023 at 06:28:21PM +0100, Fabrice Gasnier wrote:
> > > > On 2/27/23 16:13, Michael Grzeschik wrote:
> > > > > An minimum udelay of 200 us seems to be necessary on some machines. After
> > > > > the setup of the pll, which needs about 100 us to be locked there seem
> > > > > to be additional 100 us to get the phy really functional. Without this
> > > > > delay the usb runs not functional. With this additional short udelay
> > > > > this issue was not reported again.
> > > > > 
> > > > > Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> > > > > 
> > > > 
> > > > Hi Michael,
> > > > 
> > > > Thank you for the updates,
> > > > 
> > > > Fell free to add my:
> > > > Reviewed-by: Fabrice Gasnier <fabrice.gasnier@foss.st.com>
> > > 
> > > Thanks!
> > > 
> > > Through which tree will this be picked?
> > > Will it be possible to add this to v6.3?
> 
> Hi Greg!
> 
> Since nobody seem to catch this, is it possible that you pick this?

What is "this"?  The change to the following file:

> > > > > ---
> > > > > v1 -> v2: - changed the mdelay to udelay_range(200, 300), like suggested by fabrice
> > > > >         - moved the delay to pll enable so it will only be triggered once
> > > > > 
> > > > > drivers/phy/st/phy-stm32-usbphyc.c | 3 +++
> > > > > 1 file changed, 3 insertions(+)

That one?

I'm not anywhere on the maintainer path for it:

$ ./scripts/get_maintainer.pl drivers/phy/st/phy-stm32-usbphyc.c
Vinod Koul <vkoul@kernel.org> (supporter:GENERIC PHY FRAMEWORK,commit_signer:3/3=100%)
Kishon Vijay Abraham I <kishon@kernel.org> (supporter:GENERIC PHY FRAMEWORK)
Maxime Coquelin <mcoquelin.stm32@gmail.com> (maintainer:ARM/STM32 ARCHITECTURE)
Alexandre Torgue <alexandre.torgue@foss.st.com> (maintainer:ARM/STM32 ARCHITECTURE)
Philipp Zabel <p.zabel@pengutronix.de> (maintainer:RESET CONTROLLER FRAMEWORK)
Liam Girdwood <lgirdwood@gmail.com> (supporter:VOLTAGE AND CURRENT REGULATOR FRAMEWORK)
Mark Brown <broonie@kernel.org> (supporter:VOLTAGE AND CURRENT REGULATOR FRAMEWORK)
Amelie Delaunay <amelie.delaunay@foss.st.com> (commit_signer:2/3=67%)
Dan Carpenter <error27@gmail.com> (commit_signer:2/3=67%,authored:2/3=67%,added_lines:4/7=57%)
Fabrice Gasnier <fabrice.gasnier@foss.st.com> (commit_signer:1/3=33%,authored:1/3=33%,added_lines:3/7=43%,removed_lines:1/1=100%)
linux-phy@lists.infradead.org (open list:GENERIC PHY FRAMEWORK)
linux-stm32@st-md-mailman.stormreply.com (moderated list:ARM/STM32 ARCHITECTURE)
linux-arm-kernel@lists.infradead.org (moderated list:ARM/STM32 ARCHITECTURE)
linux-kernel@vger.kernel.org (open list)


What happened to the maintainers involved here?

thanks,

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
