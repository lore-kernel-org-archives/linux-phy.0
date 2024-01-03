Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E96D6C3DA6E
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jan 2024 10:51:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lkdAjEnMBEzrnF2rLsoZ8QR0eM7to9Q7EtEstTphApM=; b=OhjG2QIhs0+29C
	XQnTJVgAHlPVchGEKSsJmMVnaIJrg3SArFMhMr9XFTKVov14zYauIrGtRQz+7D8lrhR4jodJZystl
	nHnKfpf5AL2DpRCmXUvugT082soSOlAkIxqA53P8lGPw0wGPGuOvV16oPHuIkneQ5tlnPJGf75sIO
	KcD+HXDUhTzTw3j3EQQTwJPYOVKtMbdTKBoL7YOWyOLpn4HDGRgm2qFsW02FUmF0iKBwOFRSPbO/K
	TCjG5E79DCc8muJ+q8plJ1oFMb78buYMnq3kFjfecXaC1JrDmrC/SVgseamvQW3Ju/bdC/AkmInEC
	nb2fRGw5l/JVVcUM3APQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKyqX-00ARNF-1i;
	Wed, 03 Jan 2024 10:51:37 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKyqU-00ARLd-2m
	for linux-phy@lists.infradead.org;
	Wed, 03 Jan 2024 10:51:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=UsxFTjUw6Zc2yvy6gkvn2mjApUFXVkeXpGQUxAbjitU=; b=gpZ/aCjnmyd++8LssUZU3FoxdS
	6XaYiNdun0vIQV5JJmt2Pf3BjvxTq5Ch1Z97pUyBawgO/vOBlUiRJAMbQtpTFBBMGKHSmpJoWa4Uw
	WhKFhSIBGDm23A1bEM6Zr3pjEMAboW0AWo5XwZWxX5lQLwHCJvKYhHwrOKLIKs+HRjIsj2q/NtHco
	43oQyAcVgfqZcxIF1IuIsEztTSoukqniwvxlR2Pl+efRByvnAy4PPIeuMIddCRdCbpVqIEp67mitf
	u/RNfIcrqInq0IJoVxyrZ+aTboaQIvXsDmITtylv4fbz/JNmTg+JfDgtS0S5kPUrTJJabNwu0Dhrz
	QRqo0bYg==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:57900)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <linux@armlinux.org.uk>)
	id 1rKyqC-0007Ll-3B;
	Wed, 03 Jan 2024 10:51:17 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.94.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1rKyqB-0006Ia-VO; Wed, 03 Jan 2024 10:51:15 +0000
Date: Wed, 3 Jan 2024 10:51:15 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Yajun Deng <yajun.deng@linux.dev>
Cc: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
	pabeni@redhat.com, andrew@lunn.ch, olteanv@gmail.com,
	hkallweit1@gmail.com, kabel@kernel.org, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH net-next] net: phy: Cleanup struct mdio_driver_common
Message-ID: <ZZU8I5wwH+y1VsIy@shell.armlinux.org.uk>
References: <20231228072350.1294425-1-yajun.deng@linux.dev>
 <ZZRJLg6U0G5CNRQ0@shell.armlinux.org.uk>
 <a5aca886-ca0a-8170-417f-a189ec28c87f@linux.dev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a5aca886-ca0a-8170-417f-a189ec28c87f@linux.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_025134_896711_0C3C6C13 
X-CRM114-Status: GOOD (  15.39  )
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

On Wed, Jan 03, 2024 at 10:03:14AM +0800, Yajun Deng wrote:
> =

> On 2024/1/3 01:34, Russell King (Oracle) wrote:
> > I'm not sure why this consistency is even desired, the commit message
> > doesn't properly say _why_ this change is being proposed.
> =

> Most drivers use device_driver directly. This should be added to the comm=
it.
> =

> Like this:
> =

> struct sdio_driver {
> =

> ... ...
> =

> =A0=A0=A0=A0=A0=A0=A0 struct device_driver drv;
> };
> =

> =

> struct pcie_port_service_driver {
> =

> ... ...
> =

> =A0=A0=A0=A0=A0=A0=A0 struct device_driver driver;
> };
> =

> and so on ...

... which is fine for those other drivers because they don't share the
same bus. That is not the case here - we have two different classes
of drivers on the same bus.

I don't like a justification that just because other subsystems do
something in one particular way, that is the only way things should be
done. I think there is good reason to have the structure we have, and
thus there needs to be a good reason to change it.

Maybe Andrew has a different opinion, but I think we need a better
justification for this change.

-- =

RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
