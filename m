Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C995FD375E
	for <linux-phy@archiver.kernel.org>; Wed, 25 Feb 2026 14:01:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+eSih+ZZ/aVBNRa+8ufBGz7U0O+g3S3uMlRyqJFYWJw=; b=Q1yVEkZrwKh4Ot
	PSGdqdqQiWgduoJN/KeYt/WveTl5PbcF8+3aqI1CI5jL281zzDNKyOs6uoKtC6cRwO1/mNwYYz37H
	cputwld3qhZc1lJXWWi8H0vzLJiMcpi7GkLKv+SlabvusN1bhrqPcwX3EHvxzfUssu4+aqGRZ07fx
	tz+fAQdBz4X5PloJzAQRsnTF48nRIqEUW17MkZRkhb7+byIieCNbrfCGsZdiGoCMxesv2ZlumCFVS
	6S8CbMGtih23mhhT/TiYKAqaFPgJsyjsiQtN/vXhIYTmmQY62s+9LjHty95/Uo/uNaGBY2sQnZK1c
	Eqt4qG/CNlnzbyOs/4ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvFSH-000000049r0-13sL;
	Wed, 25 Feb 2026 14:01:33 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvFSB-000000049pI-43JX
	for linux-phy@lists.infradead.org;
	Wed, 25 Feb 2026 14:01:31 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-65b9608a9adso11377509a12.3
        for <linux-phy@lists.infradead.org>; Wed, 25 Feb 2026 06:01:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772028086; cv=none;
        d=google.com; s=arc-20240605;
        b=d8An1hx1L/HGkoYPaJLH/+0LbFG1OdX/bMo/7HXTY40L1bVwzZvn7PuegTjIJ/Bawk
         l/ki8I4qfKQrpEXe9O2lljC09tzls4+IsWSyFlwqHqdonpkHMf+bc5aN5Ke23SuRJLEo
         7Z4TRJi7Po8bPkZEdb3XMEac3M/7HNozgnqxglPjNn9pZ25SAVTVmLei1fGqONItAN95
         p//+cpNPFUWSX2wwGsotPNXuM0J0jbmU708R4nDxXLO8FwPWborqVbiBUQnYkeZQ4YtF
         GXB/GrdClNbGs49VFkxKa4IXJQUMU4o5WdHLhZcCVBwaDAVZSxyLE2QzV1lORX0DJp9y
         Wo3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Vy6cNiKVqqdOzrXGU51JG+BLZ2VHPDg76L+Bf6A/K7w=;
        fh=Htfs701e+eN/f0tTcOX66xDDJrZ4YFG7Snv5BDMcOY4=;
        b=P4+moNwjDS9wbmH5AX2GbHDd9J0IQbj/TgE1E5KRCi2XqIZWtyU2kmk3bQpCYSlAoT
         Dv6pnYG91nD2lOhHp4GpwoEzITS98A5cx6QdUZR/AhdZkNC+77oHRBigbaxg+Nd2OqWl
         ISkuXplC0N8PrqxGWO3wzvcwQ/ZYnwWTYGe0MT0xBLppT+VZbpQ29l3eMKemo2rz7IqS
         YK484cDpGeYpUB2tHKoFA+AT4DYFt/YVXy8ITDBXgL019zeMaa/WaHNmTD8Mpdkw4X5M
         qSz6wcVdOfmR6+CZe+xNr3TG39h/zyI00+KtD5OfHrxww7mkp5zLv1KwDgAGtHvlEEgd
         UT7g==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772028086; x=1772632886; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Vy6cNiKVqqdOzrXGU51JG+BLZ2VHPDg76L+Bf6A/K7w=;
        b=FNVu+iGJh/bX14A6OnOKQ29K94Hny+UB8hBNEO9qQhEkDY+ksT4Amk61ldJXXnolgl
         6fyh5OajcujzC0feq8qDIzqVkbgsw+4i0GStQVtQehzZ7GSOlK41BdZd+/8SSzgN/ujM
         x9gm27MOdXydqtecIXFtoMvflxprqlYYbIAVk2rcp5/9oe7vmdlf/9vs7iy6+wpsAbT8
         dMsu5AS+dnDLcuKDK5cx6HuKev7YOiVaI1Lh9dYFF2aqLBWhjAWWFq54Q94dezLAEZWm
         IWsGhTJwgfJUPlfDlKZHXakx97Oi4mcOSVe4ZMCXPWr0pVf5VOmarb4rncUf5qbiNbVv
         1y+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772028086; x=1772632886;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vy6cNiKVqqdOzrXGU51JG+BLZ2VHPDg76L+Bf6A/K7w=;
        b=AQEwNt3w8l+ZIwP1Bn78NvQgbOE3dOvwgMInfdSaYAmEwUIwqVXMqWnDEy8jO0tsZp
         zImpklXWARGFIsRzch0J4zVUqfNZz3qvs3UZnSATxIHL2ExRKrndozYjUukAfxgEgwEH
         7UDPpiMnEI/q/IUbm1xjPpXM/tJE6A0p+CLsn1tuZN+73MS0yX8LYu9NRjZvRM1KeknZ
         1PbDkf+h/kbwvhxE537xG2WgU3jbTfTEjEbwST0Vh/La2ZSgnR5hJy0vtk7a2hVmXhRy
         t/PwyAlE527O7PZjfN/uLJONN6Bef9Uo2RnAka2/6MouVKKAoSTQqCNu051YhBoAKp+w
         2xWg==
X-Forwarded-Encrypted: i=1; AJvYcCXJvGlTBxoEoIymfTKCUkIxoBuwI/3Tp6Eo0k6VEjfU9T4u/wbEcliTuSBewmmKCv5KfX+Yz16nvDs=@lists.infradead.org
X-Gm-Message-State: AOJu0YyMYbVb0rOzQS9RpETa1OrAiuWM9bmltv6D8B/4ysMfAtt4MQwx
	/Uy6ar0PCxIV4vNHRC937qcb6VMOTVlHZY8y3wUUZs+b8R1E6qDoZT3877EaUmFs2sANM/ae5dC
	X6yydwxe44OEQr9Z+Xeefj8vC7AJCa6JJjFlldJfSXQ==
X-Gm-Gg: ATEYQzw/PzQ5IV5erTCWrs5mS64yO7kUp51WdMKFRDTv8P9yAcGrmdwsxKswLpMU+/D
	+VMooqJ8JseqlLwQsaFFSBAHUGYok7T9tg5XVtt+B4JuWSa0dLgnBwlCcc9fWTFnp+DpplOUd8K
	72Y/03iAwxo1i9qENYpPDhBRhYa12cBwybPDD3ScGf9MawjUwzTdzQWv9zdSWXoGmkjoFkvOsLE
	8u01GqdCVi3QWSj/l2g8xV2fEPrY92WWORPuqfRn3qvXux+xg+gkP2W10c0kGYZSV9oMiEtLI81
	hTw9GIQiK4z3HI3iiPvSTFBnCZUtI8+Ylw==
X-Received: by 2002:a17:907:2d89:b0:b93:5297:b3a2 with SMTP id
 a640c23a62f3a-b935297b3bdmr8044466b.59.1772028085419; Wed, 25 Feb 2026
 06:01:25 -0800 (PST)
MIME-Version: 1.0
References: <20260203161917.1666696-1-vincent.guittot@linaro.org>
 <20260203161917.1666696-2-vincent.guittot@linaro.org> <20260210004011.GA2188625-robh@kernel.org>
 <aY2rR3Hlm525kGUN@shell.armlinux.org.uk>
In-Reply-To: <aY2rR3Hlm525kGUN@shell.armlinux.org.uk>
From: Vincent Guittot <vincent.guittot@linaro.org>
Date: Wed, 25 Feb 2026 15:01:13 +0100
X-Gm-Features: AaiRm52xymbtUvdX0WARhHIKYaRvNgdQ5-vzrvF5qBi6nov6q2mJRcNPXMItfGk
Message-ID: <CAKfTPtBB6ZNde+-t7FKkf0F5Uvy0rDvebM_fsGTy9tk=CBq6Xg@mail.gmail.com>
Subject: Re: [PATCH 1/4 v2] dt-bindings: serdes: s32g: Add NXP serdes subsystem
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Rob Herring <robh@kernel.org>, vkoul@kernel.org, neil.armstrong@linaro.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, ciprianmarian.costea@oss.nxp.com, 
	s32@nxp.com, p.zabel@pengutronix.de, ghennadi.procopciuc@nxp.com, 
	Ionut.Vicovan@nxp.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org, 
	horms@kernel.org, Frank.li@nxp.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_060128_031152_6672ADDA 
X-CRM114-Status: GOOD (  23.50  )
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

Sorry for the delayed reply. Some days off kept me away from keyboard

On Thu, 12 Feb 2026 at 11:28, Russell King (Oracle)
<linux@armlinux.org.uk> wrote:
>
> On Mon, Feb 09, 2026 at 06:40:11PM -0600, Rob Herring wrote:
> > On Tue, Feb 03, 2026 at 05:19:14PM +0100, Vincent Guittot wrote:
> > > +description: |
> > > +  The SerDes subsystem on S32G SoC Family includes two types of PHYs:
> > > +    - One PCIe PHY: Supports various PCIe operation modes
> > > +    - Two Ethernet Physical Coding Sublayer (XPCS) controllers
> > > +
> > > +  SerDes operation mode selects the enabled PHYs and speeds. Clock frequency
> > > +  must be adapted accordingly. Below table describes all possible operation
> > > +  modes.
> > > +
> > > +  Mode  PCIe       XPCS0           XPCS1           PHY clock       Description
> > > +                SGMII              SGMII             (MHz)
> > > +  -------------------------------------------------------------------------
> > > +  0        Gen3    N/A             N/A             100             Single PCIe
> > > +  1        Gen2    1.25Gbps        N/A             100             PCIe/SGMII
> > > +  2        Gen2    N/A             1.25Gbps        100             PCIe/SGMII
> > > +  3        N/A     1.25Gbps        1.25Gbps        100,125         SGMII
> > > +  4        N/A     3.125/1.25Gbps  3.125/1.25Gbps  125             SGMII
> > > +  5        Gen2    N/A             3.125Gbps       100             PCIe/SGMII
> >
> > Mixed tabs and spaces. Drop the tabs.
> >
> > What's not clear to me is do you have 2 or 4 lanes?
> >
> ...
> > > +  nxp,sys-mode:
> > > +    $ref: /schemas/types.yaml#/definitions/uint32
> >
> >        maximum: 5
> >
> > Though isn't this redundant with the child nodes? You could use the
> > standard 'phy-mode' property in each child.
>
> phy-mode is ethernet, but the above is more than just ethernet.
>
> I've been wondering why a generic PHY driver needs to know this via DT
> when the generic PHY API has:
>
> phy_set_mode() / phy_set_mode_ext()
>  - sets the type of the PHY and its submode (e.g. ethernet interface
>     mode)
> phy_set_speed()
> phy_set_bus_width()
>
> Surely these are sufficient to describe what mode is required from the
> generic PHY, and the generic PHY driver can figure out whether the
> mode is permitted from the above table, programming the PHY as
> desired.

For the lanes that output SGMII, we don't register a generic phy
driver but we provide the pcs with

pcs-handle = <&phy_xpcs0_0>;

>
> For Ethernet, we don't call the 3.125Gbps "SGMII" using that term. We
> use SGMII strictly for Cisco SGMII, which runs at 1.25Gbps. 3.125Gbps
> single-lane serdes ethernet is not able to use Cisco SGMII inband
> signalling because running the underlying data rate with 10 or 100
> symbol replications makes no sense. So we have decided to all this
> 2500BASE-X. If such a SerDes is connected to a SFP cage, then we
> support switching between 1.25Gbps and 3.125Gbps mode depending on
> the module inserted, which requires dynamic reconfiguration of the
> SerDes.

yes, I still have to figure out how to handle 3.125Gbps and 2500BASE-X mode

>
> What I'm saying is that describing a single mode covering several ports
> could make things difficult in the future, so make sure you think
> carefully.

The serdes mode (deciding wether to output pcie or ethernet for each
lane) has to be decided before de-asserting the reset of the HW IP so
we can't really make it dynamic



>
> --
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
