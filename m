Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25DC9C3DA6E
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jan 2024 13:30:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ue19W4ib8JTbr7i5uCB7Y9SdBoAo9nEP9PH6rsHqhYs=; b=ppGARC8B8UcrPb
	GaEypknDV7GwYOwSOEX+PixDwOicjv7uIkXbR4XC71oaigervtIfxeUyb8amOFHMzd8El8AMWWOUt
	KSNWlQsshJlQEsLzvZKb/84WyOYX2JzXfYgdJSQn/JO125m4yYV7lZT+4ea6tB9oSIcDcexG24Jyo
	X47Ns8C9wyfMdKa+yKyII0dplXJpGeV/yE3JThZToDZjXiXflM+QaWeZfeb+izVUEQCJgCn8gm7MT
	PkMV6sP5w0VG/cAwLbLKV5G/sQgbpe6anV1gakOoXI+qNvov49Dig1zEwizLGAK75uWBj5J/pxWgF
	dcSvr6YWyRvvja6jxzKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL1KW-00AxOq-2b;
	Wed, 03 Jan 2024 13:30:44 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL1KS-00AxKo-1y
	for linux-phy@lists.infradead.org;
	Wed, 03 Jan 2024 13:30:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:
	Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
	In-Reply-To:References; bh=1H++AJiescRoXR5SWrVB1eNQUoip3aAkOmJ/HiZ4zFc=; b=1z
	HnQX+cm/ClYDZS+R5jDLXvXTqeToFIScTgJmaxWCtETaENqsdsnHh5KxQzovCNiLb/Fx8sJa0kTcD
	rMA3pPqTrNa7ZY9R64Wl9LYSxiS80L7yrD82n7/1d5vul9xWJ6tb0SzQemRdx4eK34bqzblhXXsq7
	5dtK8NxHj7Vk330=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1rL1K8-004Fxw-12; Wed, 03 Jan 2024 14:30:20 +0100
Date: Wed, 3 Jan 2024 14:30:20 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Yajun Deng <yajun.deng@linux.dev>
Cc: "Russell King (Oracle)" <linux@armlinux.org.uk>, davem@davemloft.net,
	edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
	olteanv@gmail.com, hkallweit1@gmail.com, kabel@kernel.org,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH net-next] net: phy: Cleanup struct mdio_driver_common
Message-ID: <7367681a-3ef5-42ad-9c2f-173f77cc1b56@lunn.ch>
References: <20231228072350.1294425-1-yajun.deng@linux.dev>
 <ZZRJLg6U0G5CNRQ0@shell.armlinux.org.uk>
 <a5aca886-ca0a-8170-417f-a189ec28c87f@linux.dev>
 <ZZU8I5wwH+y1VsIy@shell.armlinux.org.uk>
 <52ea5dbf-2d60-7a23-e525-9dcae2809554@linux.dev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <52ea5dbf-2d60-7a23-e525-9dcae2809554@linux.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_053040_667131_B648081E 
X-CRM114-Status: GOOD (  25.83  )
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

On Wed, Jan 03, 2024 at 07:38:04PM +0800, Yajun Deng wrote:
> =

> On 2024/1/3 18:51, Russell King (Oracle) wrote:
> > On Wed, Jan 03, 2024 at 10:03:14AM +0800, Yajun Deng wrote:
> > > On 2024/1/3 01:34, Russell King (Oracle) wrote:
> > > > I'm not sure why this consistency is even desired, the commit messa=
ge
> > > > doesn't properly say _why_ this change is being proposed.
> > > Most drivers use device_driver directly. This should be added to the =
commit.
> > > =

> > > Like this:
> > > =

> > > struct sdio_driver {
> > > =

> > > ... ...
> > > =

> > >  =A0=A0=A0=A0=A0=A0=A0 struct device_driver drv;
> > > };
> > > =

> > > =

> > > struct pcie_port_service_driver {
> > > =

> > > ... ...
> > > =

> > >  =A0=A0=A0=A0=A0=A0=A0 struct device_driver driver;
> > > };
> > > =

> > > and so on ...
> > ... which is fine for those other drivers because they don't share the
> > same bus. That is not the case here - we have two different classes
> > of drivers on the same bus.
> =

> =

> Yes, that's true. But we can implement it with is_phy_driver(). I don't
> think we need a flag for that.
> =

> > =

> > I don't like a justification that just because other subsystems do
> > something in one particular way, that is the only way things should be
> > done. I think there is good reason to have the structure we have, and
> > thus there needs to be a good reason to change it.
> =

> Its purpose is to clean up struct mdio_driver_common, and make the code
> cleaner.

I have to agree with Russell here. The commit message should explain
the 'Why?'. Why is this better? Why is it cleaner? Why does making it
the same as all other drivers make it better, when in fact we have two
classes of devices stacked on top of it, and making it different to
every other driver actually helps developers realise that?

      Andrew

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
