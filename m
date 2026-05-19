Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B171CD4F57
	for <linux-phy@archiver.kernel.org>; Tue, 19 May 2026 10:32:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RPFHRHK3cUvZGV4tJVdO9KNRV9MxBzkCP3hlvUZ9cuA=; b=rXtf0p56OatuLM
	91he7accdarGD9p94sZBvYcZq3WAidvt/y4d9/xQVR5SZHVXK69U8wBqpEjZBnO02qubRftpsJ42Q
	C/NS6RqTIRAmqqsYUU9reP/BmZBxgVITjbcnrLpwOBqmRpMgA7vxA6dUQhrOdJUe9uvaNahzXfi0O
	SaW/xCOqknIvq4OSQNQkW8jdAwgi1PuVmR6N1/d/NfXu8Nxr7837xZbDi/v2GsnhNZbkGWmwNTjhy
	iF8hYWKNOqM1JpbScc0N7whqruyXCCBMj7sjETc0aIQW92ghMOiC/5PFdEeQrCfHTq+w3yi6v2lRT
	iCYPJqnMHT7Cz4ziQH1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPHk2-0000000163C-0VxR;
	Tue, 19 May 2026 10:32:02 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPHjy-0000000162Q-0iB3
	for linux-phy@lists.infradead.org;
	Tue, 19 May 2026 10:32:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id EEF8643F1E;
	Tue, 19 May 2026 10:31:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E40DC2BCB3;
	Tue, 19 May 2026 10:31:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779186716;
	bh=+pVjRCef2fx1wi/94V9Q9YLIKI0OIkOkvW/Td8OA66c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kdNr/RJdErIY9+7bHbp4T3wbfDSwMqwFtAzQRJzv0L4oX1ofQCCt5bUkBgs2KhxnG
	 Do9r2dZK3fqYGaRq+C7pBCxbE5IFtwP7k0cRNDR1R5x/Aeep33imJEuoe9Rd0r+B2b
	 u7dAjaWQvkvnVj7xeRIJ1O0AZb6UCf0wvzd6QvIeiv5cVgbUTBtBrQCRbx+S1Q9xG+
	 yqfx1gHpOyaqd+6FTm/T7HLV2/c5kfiOcHB5nY8/QePaplbOfONmxMPAmJjUvlfyYL
	 SrTiW5KJN2oRojwB20yeeIoopjp6SnLRhHXKL3IGNjmqBmGsYM2UUdeIVfsYYPJPSe
	 dAIiEblMf9GKA==
Date: Tue, 19 May 2026 16:01:53 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Ioana Ciornei <ioana.ciornei@nxp.com>
Cc: neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, johan@kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 phy-next 2/2] phy: ti: add PHY driver for TI
 DS125DF111 Dual-Channel Retimer
Message-ID: <agw8GeTLAZJ8XU8-@vaman>
References: <20260516060309.2282592-1-ioana.ciornei@nxp.com>
 <20260516060309.2282592-3-ioana.ciornei@nxp.com>
 <agnu5Mmf_d8zvWXH@vaman>
 <fkosq3es6lqzabowzpppgsal4lhctb4qyr6ypmazm7vwekd7ix@elffqa6kx5jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fkosq3es6lqzabowzpppgsal4lhctb4qyr6ypmazm7vwekd7ix@elffqa6kx5jp>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_033158_252913_C537BB1F 
X-CRM114-Status: GOOD (  32.83  )
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

On 18-05-26, 10:29, Ioana Ciornei wrote:
> On Sun, May 17, 2026 at 10:07:56PM +0530, Vinod Koul wrote:
> > On 16-05-26, 09:03, Ioana Ciornei wrote:
> > > Add a generic PHY driver for the TI DS125DF111 Multi-Protocol
> > > Dual-Channel Retimer. The driver currently supports only 10G and 1G link
> > > speeds but it can easily extended to also cover other usecases.
> > > 
> > > Since the available datasheet (https://www.ti.com/lit/gpn/DS125DF111)
> > > does not name the registers, the name for the macros were determined by
> > > their usage pattern.
> > > 
> > > A PHY device is created for each of the two channels present on the
> > > retimer. This allows for independent configuration of the two channels.
> > > This capability is especially important on retimers which have more than
> > > 2 channels that can be, depending on the board design, connected in
> > > multiple different ways to the SerDes lanes.
> > > 
> > > Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
> > > ---
> > > Changes in v3:
> > > - Use reverse Christmas tree ordering
> > > - Print a symbolic description in case of error
> > > - Some words do not need to be capitalized
> > > - Remove duplicated exit code path
> > > - Return -EINVAL in case of unsupported submode received in .set_mode()
> > > - Add a .validate() callback
> > > - Remove comma after sentinel entry
> > > - Add a ds125df111_rmw() helper
> > > - Use read_poll_timeout() to wait for channel reset to complete
> > > 
> > > Changes in v2:
> > > - Explicitly include all the needed headers
> > > - Change ds125df111_xlate() so that it returns an error if args_count is
> > > not exactly 1
> > > - Add a MAINTAINERS entry
> > > ---
> > >  MAINTAINERS                     |   7 +
> > >  drivers/phy/ti/Kconfig          |  10 ++
> > >  drivers/phy/ti/Makefile         |   1 +
> > >  drivers/phy/ti/phy-ds125df111.c | 294 ++++++++++++++++++++++++++++++++
> > >  4 files changed, 312 insertions(+)
> > >  create mode 100644 drivers/phy/ti/phy-ds125df111.c
> > > 
> > > diff --git a/MAINTAINERS b/MAINTAINERS
> > > index f877e5aaf2c7..58f410b666e7 100644
> > > --- a/MAINTAINERS
> > > +++ b/MAINTAINERS
> > > @@ -26781,6 +26781,13 @@ T:	git git://linuxtv.org/mhadli/v4l-dvb-davinci_devices.git
> > >  F:	drivers/media/platform/ti/davinci/
> > >  F:	include/media/davinci/
> > >  
> > > +TI DS125DF111 RETIMER PHY DRIVER
> > > +M:	Ioana Ciornei <ioana.ciornei@nxp.com>
> > > +L:	linux-phy@lists.infradead.org (moderated for non-subscribers)
> > > +S:	Maintained
> > > +F:	Documentation/devicetree/bindings/phy/ti,ds125df111.yaml
> > > +F:	drivers/phy/ti/phy-ds125df111.c
> > > +
> > >  TI ENHANCED CAPTURE (eCAP) DRIVER
> > >  M:	Vignesh Raghavendra <vigneshr@ti.com>
> > >  R:	Julien Panis <jpanis@baylibre.com>
> > > diff --git a/drivers/phy/ti/Kconfig b/drivers/phy/ti/Kconfig
> > > index b40f28019131..475e80fcd52d 100644
> > > --- a/drivers/phy/ti/Kconfig
> > > +++ b/drivers/phy/ti/Kconfig
> > > @@ -111,3 +111,13 @@ config PHY_TI_GMII_SEL
> > >  	help
> > >  	  This driver supports configuring of the TI CPSW Port mode depending on
> > >  	  the Ethernet PHY connected to the CPSW Port.
> > > +
> > > +config PHY_TI_DS125DF111
> > 
> > This should be in alphabetical order, so I guess before PHY_TI_G...
> 
> Now that I actually tried to make the change that you requested, I
> realised that the Kconfig is not following any alphabetical order. And
> neither does the Makefile.
> 
> Do you still want me to move the entries?

Yes please. I will sort this one later in the cycle again!

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
