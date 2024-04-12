Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDF8BC4345F
	for <linux-phy@archiver.kernel.org>; Fri, 12 Apr 2024 11:24:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CdJHFAR/XMTUuRfcoZAHWiW8ib1JE2WIfjFnufv4YHk=; b=IvEd944qUR7nlj
	5NTSjAxcZWbmQrV847113wkETVpFn4OEWTRpshIoJ5GwFUu+YO22o/U45fLQJddJHJ6sfoBG/LxLI
	X6dxtZ0OGuoI3kxCWTwwodQFBRfdg3fsTdOMWa7fy8dy3l9oAvtfa/h7pXM97uAjiYu0lxH6wCFh/
	DRi9x5q07ThOsvvsCWfWnNhGSqk1fiISORdRUkTsjhv7jQTxQJYTw6i8VHhY6i5d2llXYHU6PP2KO
	omfm1rUxH79m8IzezWPxw9rEtC0a1DUugbZRfog8CrTgopFDFGmhq1Yc3o21nrQPEEMO3n39ZiDYY
	MAoOPb9H/ZBQK/adRwIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvF1L-0000000Gtqe-2Zll;
	Fri, 12 Apr 2024 11:24:39 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvF1H-0000000Gtps-1fcb;
	Fri, 12 Apr 2024 11:24:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 4F78E61D89;
	Fri, 12 Apr 2024 11:24:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14499C113CC;
	Fri, 12 Apr 2024 11:24:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712921073;
	bh=R3EqEdsxBODVZiR1t4FsAY+uuXyMbJl01zKUTUB4X0I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CqQ7kT95yl/1TSCMsM0Ubak214wpR+mfm7iQA7CU/OuTGl4C/gKGQhlCR9OghpH3I
	 8oC4lxUB6jhgZPWP2FZsD9sgeb9MD1W2BpkZbYpJt3GKkGQl979HM4DiZSyCTrnPms
	 aNEmXpDfsiKmPPMlyVIwPbLKUZ0FFCyQEYA0i2sNDA6/49qNyY7qdg6FXtPwvMJdsA
	 L3hAVRCAY1On5mr7niXzvgTXwT8U9dSP28znSmJ4X3f5bwKfo1zXEyuGFjAn8k7Xfq
	 5rt4RfJSM2foXL8pqWVpetqDGk03OylwFPQvIsDpdEbwQMuIoGAyjjPqosdAJ++93W
	 kgjBDILRl6VzA==
Date: Fri, 12 Apr 2024 16:54:29 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>
Cc: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"hongxing.zhu@nxp.com" <hongxing.zhu@nxp.com>,
	"linux-imx@nxp.com" <linux-imx@nxp.com>,
	"robh@kernel.org" <robh@kernel.org>,
	"kishon@kernel.org" <kishon@kernel.org>,
	"heiko@sntech.de" <heiko@sntech.de>,
	"l.stach@pengutronix.de" <l.stach@pengutronix.de>,
	"yang.lee@linux.alibaba.com" <yang.lee@linux.alibaba.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"tharvey@gateworks.com" <tharvey@gateworks.com>,
	"shawnguo@kernel.org" <shawnguo@kernel.org>,
	"kernel@pengutronix.de" <kernel@pengutronix.de>,
	"s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
	"mkl@pengutronix.de" <mkl@pengutronix.de>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"imx@lists.linux.dev" <imx@lists.linux.dev>,
	"festevam@gmail.com" <festevam@gmail.com>
Subject: Re: [PATCH v1 0/1] phy: freescale: imx8m-pcie: facing pcie link-up
 instability
Message-ID: <ZhkZ7R7E9LlfZX-l@matsya>
References: <20240322130646.1016630-1-marcel@ziswiler.com>
 <171239511427.352254.8525089049107113141.b4-ty@kernel.org>
 <ae96ab05b47f9788bce1c8df5a795b35e16a629c.camel@toradex.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ae96ab05b47f9788bce1c8df5a795b35e16a629c.camel@toradex.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_042435_632665_D98D3E95 
X-CRM114-Status: GOOD (  18.20  )
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

On 07-04-24, 22:22, Marcel Ziswiler wrote:
> Hi Vinod
> =

> On Sat, 2024-04-06 at 14:48 +0530, Vinod Koul wrote:
> > =

> > On Fri, 22 Mar 2024 14:06:31 +0100, Marcel Ziswiler wrote:
> > > In our automated testing setup, we use Delock Mini-PCIe SATA cards [1=
].
> > > While this setup has proven very stable overall we noticed upstream on
> > > the i.MX8M Mini fails quite regularly (about 50/50) to bring up the P=
CIe
> > > link while with NXP's downstream BSP 5.15.71_2.2.2 it always works. As
> > > that old downstream stuff was quite different, I first also tried NXP=
's
> > > latest downstream BSP 6.1.55_2.2.0 which from a PCIe point of view is
> > > fairly vanilla, however, also there the PCIe link-up was not stable.
> > > Comparing and debugging I noticed that upstream explicitly configures
> > > the AUX_PLL_REFCLK_SEL to I_PLL_REFCLK_FROM_SYSPLL while working
> > > downstream [2] leaving it at reset defaults of AUX_IN (PLL clock).
> > > Unfortunately, the TRM does not mention any further details about this
> > > register (both for the i.MX 8M Mini as well as the Plus). Maybe someb=
ody
> > > from NXP could further comment on this?
> > > =

> > > [...]
> > =

> > Applied, thanks!
> > =

> > [1/1] phy: freescale: imx8m-pcie: fix pcie link-up instability
> > =A0=A0=A0=A0=A0 commit: 3a161017f1de55cc48be81f6156004c151f32677
> =

> Sorry, but it is slightly confusing whether v1 or v2 now got applied. I b=
elieve v1 but then only the commit
> messages differ. However, please note that only v2 included information o=
n how to proceed concerning
> backporting to stable 6.1.x.

V2 was picked, you can check phy tree

Somehow b4 sent email for v1 as well

-- =

~Vinod

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
