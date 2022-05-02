Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48D25C4332F
	for <linux-phy@archiver.kernel.org>; Mon,  2 May 2022 10:14:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JPb8zC2rN5zdExqZlUihbArRbl7ZcSG8l4EpPc2CNBQ=; b=AtZlxp8KcutF1w
	WFCz4ZWfnRh3AatRvQy2GP4QNCVz4hg1An5v8hlax5EvQU2gGt/wvsD3+V9uOrPxrTaIbAeJvXURi
	L2SGdkh/T0a/pmtKgCQGvFSEL2JnMOEjWVPpyK0TmfJXyrXDd1G7LNbgy8Nd5bRYg0vtjJzQ8XPx8
	7DuKyYEfa1gEUIQXIdj95vMRHqUmBscZGRcrvdZPu9yfRCsufn+ZTerlp+gUfJve31Nl/N9FcxbUg
	x62ItwmPH49Aog+Bu+xjgFgiooGvAPDwGraaKn/K6KK6L7LNn0eJ3oZm9RQUaEVTc8vklF88pX5+D
	ZvDqDQhDXxLiyDoQJtGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nlT4U-000mV7-Mq; Mon, 02 May 2022 10:14:26 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nlT4R-000mTf-Di
 for linux-phy@lists.infradead.org; Mon, 02 May 2022 10:14:24 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 4A666B815C8;
 Mon,  2 May 2022 10:14:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 29D33C385A4;
 Mon,  2 May 2022 10:14:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1651486460;
 bh=Ytg1tQ2oxulHa1Lh+RCOt+LqpTtcT9uXRgZ8Buq1CMI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SpmIMQ5eVc/hxV+PCQoHr4To19kotvQqy9Sf6WUumVcluu9KbVh3VRMBFCaHVM663
 Mit0v4iFrBvDWm4shFNDiy+QcSMDPdBnDRoZ4DBk5lsjjTlj1dNNIatlEf8VS5zhlI
 YIGGySaDOmEuQm7nK+cMqMdvif2aE6UIRQ7/xFshx9c0Z/2Qj39lHfdQsqGEGOqJuH
 E9EZuzGjTtNUexiZshZX2Qts/VrP0/zJ6Ppdl7Nfi+CfTRJvyAhNA4U1uJv7Zthnqm
 wt4qraGinyDsAOBvCWUaW3pRapIkfWLTDyFTXx0BLhoNjLZ6078GvB2b476D0lpp1P
 52Rrr7XWBI7Wg==
Date: Mon, 2 May 2022 15:44:15 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Wangseok Lee <wangseok.lee@samsung.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, robh+dt <robh+dt@kernel.org>,
 krzk+dt <krzk+dt@kernel.org>, kishon <kishon@ti.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "jesper.nilsson" <jesper.nilsson@axis.com>,
 "lars.persson" <lars.persson@axis.com>, bhelgaas <bhelgaas@google.com>,
 linux-phy <linux-phy@lists.infradead.org>,
 linux-pci <linux-pci@vger.kernel.org>,
 devicetree <devicetree@vger.kernel.org>,
 "lorenzo.pieralisi" <lorenzo.pieralisi@arm.com>, kw <kw@linux.com>,
 linux-arm-kernel <linux-arm-kernel@axis.com>,
 kernel <kernel@axis.com>, Moon-Ki Jun <moonki.jun@samsung.com>,
 Dongjin Yang <dj76.yang@samsung.com>
Subject: Re: [PATCH 0/5] Add support for Axis, ARTPEC-8 PCIe driver
Message-ID: <Ym+u9yYrV9mxkyWX@matsya>
References: <4a6dd90c-3f8e-ad18-0136-88b75f4d9cf9@kernel.org>
 <20220418072049epcms2p463a9f01d8ae3e29f75b746a0dce934f1@epcms2p4>
 <CGME20220418072049epcms2p463a9f01d8ae3e29f75b746a0dce934f1@epcms2p1>
 <20220421235725epcms2p1fc34c904f960cba958fa692c6d5dad9c@epcms2p1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220421235725epcms2p1fc34c904f960cba958fa692c6d5dad9c@epcms2p1>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220502_031423_644755_3F5871EE 
X-CRM114-Status: GOOD (  14.10  )
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

On 22-04-22, 08:57, Wangseok Lee wrote:
> > On=A018/04/2022=A009:20,=A0Wangseok=A0Lee=A0wrote:

> > Maybe,=A0quite=A0probably.=A0The=A0reluctance=A0to=A0extend=A0any=A0exi=
sting=A0code=A0makes
> > me=A0doubting=A0this,=A0but=A0I=A0admit=A0that=A0there=A0are=A0many=A0d=
ifferences.
> > =

> >>=A0For=A0these=A0reasons,=A0my=A0opinion=A0is=A0that=A0better=A0to=A0cr=
eate
> >>=A0a=A0phy,=A0controller=A0both=A0driver=A0with=A0a=A0new=A0file.
> >>=A0Please=A0let=A0me=A0know=A0your=A0opinion.
> > =

> > At=A0the=A0end=A0it's=A0mostly=A0the=A0decision=A0of=A0PCIe=A0and=A0phy=
=A0subsystem
> > maintainers=A0whether=A0they=A0want=A0to=A0have=A0separate=A0drivers=A0=
for=A0DWC=A0PCIe
> > blocks=A0in=A0ARMv8=A0Samsung=A0SoCs.
> > =

> > In=A0any=A0case,=A0the=A0driver=A0code=A0looks=A0like=A0copied-pasted=
=A0from=A0some=A0vendor
> > sources,=A0so=A0you=A0need=A0to=A0bring=A0it=A0to=A0shape.

I think havong a common driver helps everyone, many vendors do that
already. If you have a technical issue of adding and maintaining a
common driver upstream we would be eager to understand and help with
that...

-- =

~Vinod

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
