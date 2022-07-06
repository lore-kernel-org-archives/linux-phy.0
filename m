Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EBB3C43334
	for <linux-phy@archiver.kernel.org>; Wed,  6 Jul 2022 16:56:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xvMpbNp+kaulEKoU7qk1GrTPrVJE3yAE2WijeKJXbA4=; b=Yh+qCu5YVfy61+
	o5hmN5ENq7BnQk2XBQK6t8LC3VjEnb6Fn3wDjsXFNoaKDNLRC76O8tV8oJxmgV4GcGLRsd2q4z6We
	61Tob5wHc2APF5/R92rY5IO8Gq2HICfWAksdMNTBZvESINeIPirtFrMWUGAiZpRyeIsLLZREgPd2J
	9NI/CsaUYruh/NM51E/rHUzeRWxnE7Udpa4OmQRvmZ1kDIaEnT46jT0O+4bPbQv9M/O1LPsDdAOIn
	sGvqh1/0XbZdam6g8xAETZC06vzUZEYVGx3KCB+UH//B5cNv9WyCqxpNAvDgxcE6kCKxSQGjLLC5C
	aI44KIfIFV884Ge9+/sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o98Jw-00BVsU-B6; Wed, 06 Jul 2022 16:56:12 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o98Fd-00BU5E-32
	for linux-phy@lists.infradead.org; Wed, 06 Jul 2022 16:51:46 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 741D161DDA;
	Wed,  6 Jul 2022 16:51:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 072EBC3411C;
	Wed,  6 Jul 2022 16:51:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657126303;
	bh=pIiWhmzedFgugbr07W1T7Td/EKYRbZ9ectUju0WGfCk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ge+fJ19MGAxwkfdGkPGAlffA869wkEJnIo+qBMcyxMktWwMme4Xr9KH58gLkM4hVP
	 RGn62if3hFffimiyBpH1AeFafkJ1iAPhLLfJYp/KmWyDpZZWH2igubVXIZhshv1Tai
	 oPzS9Iarw52/FXD+nX/hhgt2l5ZpJMz8YG0xJVLQ7z2QbWfXzj5p+/046/QrIwnmNr
	 Rg2w7Q6XXF3zI1vhEiVl8QCDJJ3aef2yQjxJtRxCMKJe4Zze1H2AGMCHrKiF777+I3
	 onCecIwtu022Fs04j2Tn8sGleZ/QyrSZy8gZpbOcAVpbfVpG2e6utJlxTnt7wdxtlH
	 SM49rT+6RZFvA==
Date: Wed, 6 Jul 2022 22:21:39 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Wangseok Lee <wangseok.lee@samsung.com>
Cc: "robh+dt@kernel.org" <robh+dt@kernel.org>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"kishon@ti.com" <kishon@ti.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"jesper.nilsson@axis.com" <jesper.nilsson@axis.com>,
	"lars.persson@axis.com" <lars.persson@axis.com>,
	"bhelgaas@google.com" <bhelgaas@google.com>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
	"kw@linux.com" <kw@linux.com>,
	"linux-arm-kernel@axis.com" <linux-arm-kernel@axis.com>,
	"kernel@axis.com" <kernel@axis.com>,
	Moon-Ki Jun <moonki.jun@samsung.com>,
	Sang Min Kim <hypmean.kim@samsung.com>,
	Dongjin Yang <dj76.yang@samsung.com>,
	Yeeun Kim <yeeun119.kim@samsung.com>
Subject: Re: [PATCH v3 4/5] phy: Add ARTPEC-8 PCIe PHY driver
Message-ID: <YsW9m6hotDKacXe3@matsya>
References: <YsPYc3YPuG56yTYM@matsya>
 <20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7@epcms2p7>
 <20220614013446epcms2p8c88ea65da49447f72fef6536c7f73fb6@epcms2p8>
 <CGME20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7@epcms2p6>
 <20220706081036epcms2p6baf1d8afac994cd0d45c5e59029c8ce7@epcms2p6>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220706081036epcms2p6baf1d8afac994cd0d45c5e59029c8ce7@epcms2p6>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_095145_330976_5EDC329E 
X-CRM114-Status: GOOD (  24.93  )
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

On 06-07-22, 17:10, Wangseok Lee wrote:
> On=A005-07-22,=A015:30,=A0Vinod Koul=A0wrote:
> > On=A014-06-22,=A010:34,=A0Wangseok=A0Lee=A0wrote:
> >>=A0Add=A0support=A0Axis,=A0ARTPEC-8=A0SoC.
> >>=A0ARTPEC-8=A0is=A0the=A0SoC=A0platform=A0of=A0Axis=A0Communications.
> >>=A0This=A0is=A0based=A0on=A0arm64=A0and=A0support=A0GEN4=A0&=A02lane.
> >>=A0This=A0driver=A0provides=A0PHY=A0interface=A0for=A0ARTPEC-8=A0SoC=A0=
PCIe=A0controller,
> >>=A0based=A0on=A0Samsung=A0PCIe=A0PHY=A0IP.
> >> =

> >> Signed-off-by: Wangseok Lee <wangseok.lee@samsung.com>
> >> Signed-off-by: Jaeho Cho <jaeho79.cho@samsung.com>
> >> ---
> >> v2->v3 :
> >> -remove unnecessary indentation
> >> -redefine local struct to statis const
> >> -add static const to struct that requires static const definition
> >> -remove wrappers on writel and readl
> >> =

> >> v1->v2 :
> >> -change folder name of phy driver to axis from artpec
> >> ---
> >>  drivers/phy/Kconfig                 |   1 +
> >>  drivers/phy/Makefile                |   1 +
> >>  drivers/phy/axis/Kconfig            |   9 +
> >>  drivers/phy/axis/Makefile           |   2 +
> >>  drivers/phy/axis/phy-artpec8-pcie.c | 776 +++++++++++++++++++++++++++=
+++++++++
> >>  5 files changed, 789 insertions(+)
> >>  create mode 100644 drivers/phy/axis/Kconfig
> >>  create mode 100644 drivers/phy/axis/Makefile
> >>  create mode 100644 drivers/phy/axis/phy-artpec8-pcie.c
> >> =

> >> diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
> >> index 300b0f2..92b8232 100644
> >> --- a/drivers/phy/Kconfig
> >> +++ b/drivers/phy/Kconfig
> >> @@ -73,6 +73,7 @@ config PHY_CAN_TRANSCEIVER
> >>=A0=A0
> >>=A0=A0source=A0"drivers/phy/allwinner/Kconfig"
> >>=A0=A0source=A0"drivers/phy/amlogic/Kconfig"
> >>=A0+source=A0"drivers/phy/axis/Kconfig"
> >>=A0=A0source=A0"drivers/phy/broadcom/Kconfig"
> >>=A0=A0source=A0"drivers/phy/cadence/Kconfig"
> >>=A0=A0source=A0"drivers/phy/freescale/Kconfig"
> >>=A0diff=A0--git=A0a/drivers/phy/Makefile=A0b/drivers/phy/Makefile
> >>=A0index=A001e9eff..808c055e=A0100644
> >>=A0---=A0a/drivers/phy/Makefile
> >>=A0+++=A0b/drivers/phy/Makefile
> >>=A0@@=A0-12,6=A0+12,7=A0@@=A0obj-$(CONFIG_PHY_PISTACHIO_USB)=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0+=3D=A0phy-pistachio-usb.o
> >>=A0=A0obj-$(CONFIG_USB_LGM_PHY)=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0+=3D=A0phy-lgm-usb.o
> >>=A0=A0obj-y=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0+=3D=A0allwinne=
r/=A0=A0=A0=A0=A0=A0=A0=A0\
> >>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0amlogic/=
=A0=A0=A0=A0=A0=A0=A0=A0\
> >>=A0+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0axis/=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0\
> >>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0broadcom/=
=A0=A0=A0=A0=A0=A0=A0=A0\
> >>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0cadence/=
=A0=A0=A0=A0=A0=A0=A0=A0\
> >>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0freescale=
/=A0=A0=A0=A0=A0=A0=A0=A0\
> >>=A0diff=A0--git=A0a/drivers/phy/axis/Kconfig=A0b/drivers/phy/axis/Kconf=
ig
> >>=A0new=A0file=A0mode=A0100644
> >>=A0index=A00000000..7198b93
> >>=A0---=A0/dev/null
> >>=A0+++=A0b/drivers/phy/axis/Kconfig
> >>=A0@@=A0-0,0=A0+1,9=A0@@
> >>=A0+config=A0PHY_ARTPEC8_PCIE
> >>=A0+=A0=A0=A0=A0=A0=A0=A0=A0bool=A0"ARTPEC-8=A0PCIe=A0PHY=A0driver"
> >>=A0+=A0=A0=A0=A0=A0=A0=A0=A0depends=A0on=A0OF=A0&&=A0(ARCH_ARTPEC8=A0||=
=A0COMPILE_TEST)
> >>=A0+=A0=A0=A0=A0=A0=A0=A0=A0select=A0GENERIC_PHY
> >>=A0+=A0=A0=A0=A0=A0=A0=A0=A0help
> >>=A0+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0Enable=A0PCIe=A0PHY=A0support=A0for=
=A0ARTPEC-8=A0SoC.
> >>=A0+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0This=A0driver=A0provides=A0PHY=A0inte=
rface=A0for=A0ARTPEC-8=A0SoC
> >>=A0+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0PCIe=A0controller.
> >>=A0+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0This=A0is=A0based=A0on=A0Samsung=A0PC=
Ie=A0PHY=A0IP.
> > =

> > How=A0different=A0is=A0it=A0from=A0SS=A0IP=A0and=A0why=A0should=A0it=A0=
not=A0be=A0under
> > phy/samsung/=A0then?
> > =

> =

> SoC platform is completely different from exynos platform and different =

> from exynos PCIe PHY. So the overall sysreg configuration is different
> and register map is also different. The reset method and type of PHY for
> initialization are different. This is not a driver that supports Samsung
> SoC platform, but this PHY driver that supports only Axis, Artpec-8
> platforms, so it is not added to phy/samsung.

SoC is a moot point. If the IP block is same then we should try to reuse
the existing phy driver, modifications to current driver to support your
changes should be fine...

Is that feasible?

-- =

~Vinod

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
