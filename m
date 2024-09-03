Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5F43CD3420
	for <linux-phy@archiver.kernel.org>; Tue,  3 Sep 2024 11:50:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VXhSGZZwWCdnq1/Q+DA8r7FM64g91BxA/nMLc1pRkLg=; b=iYou2KpQJoxAZY
	1vyxHND2BvNtXJTDB99xZfbURJzWu22H+vJGQeVfTa1seGWKEUhmPzLFeqn/0WNyF1LH15YIziN2w
	wGjILfch5md+gmqr+VAItZN8SSVqk1rjojwj0TDA+2VkPDlZHJJVGRd/p82lBuUln9X5+mW12Qk9Z
	P85wTo0CtiHAcs5d4JrrswH3oNhCCDCeVzbOIkazz1h3D7r10v0H79R8fjFv7fFZ+sbeAE2a/OC7E
	pUch2cj1twaIqq12fGOlEutMkp1y681XtpAKy2ZqSRUvfN0vNoCX4HClodT/6OZpzysD9m43q6lCs
	iUwsoFN95PydMo+Ot68Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slS3a-000000001Q9-2PTQ;
	Tue, 03 Sep 2024 11:50:46 +0000
Received: from mail-yb1-xb29.google.com ([2607:f8b0:4864:20::b29])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slS3X-000000001PH-3rUp
	for linux-phy@lists.infradead.org;
	Tue, 03 Sep 2024 11:50:45 +0000
Received: by mail-yb1-xb29.google.com with SMTP id 3f1490d57ef6-e03caab48a2so3995896276.1
        for <linux-phy@lists.infradead.org>; Tue, 03 Sep 2024 04:50:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725364243; x=1725969043; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=M6oe5mOo0/Q2QUx8kdHtHzBteg518/H7oafdVdtWZ8E=;
        b=WMc8x/edhm4+yTL+Hhodt0OfCHY0/tgclZnUyxmvbrZJjK27dsS4ktVdVkWQJWRAct
         mqV4xFUGQ8Rc45XX1jd4y6eidOk/8pP6Kh9JGY09b4G6VBOE7o6VQyrcwzVnmw9pxPaK
         IrnxTW+3102httdum+prW/hAoY9dBMlm/bVE0y+QAYcM1yjhTKzXVl700gEYPJHGObIT
         kd7c7BjoqKbOmgG+zyU/Sg+rOijcxeq1tgHSUbePE2juRyJfClG9nOMgYTZjTHmNutRG
         db6T2rrr+0Jky/R2Xiz+aJs+JS3UtfA8cb5ktSC4HEoPwIKtigKx86QWtrblXlZ96vDh
         zj8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725364243; x=1725969043;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M6oe5mOo0/Q2QUx8kdHtHzBteg518/H7oafdVdtWZ8E=;
        b=chqpXyHAhDQv+6GMWlpdyUcXPKoDVJwkj4xPYne79VuTH6lKodq0Ia5M35lljuI0Np
         lBwTcJkNmwo76A6BCqGNCKOpeQLLH2FmG1IIs7O4jOcUbeSeoZkqVwoLvOnto8iIqwHv
         h7Cyo7yavE+uia9be7H4VHsvHUnPQYZoLGsy9HZmLjXh2B4DBtdjrhltNzyB8bSLUPHw
         XzsvUmtHfneVITcHnxkSV5GDvxGIrD3SsV2lIO5Iql+HqJCO/J6jUqByYgneb2J7s6Br
         FRlOS4KQZWLICK524v7rXfB7fdpEFFp1kA+BvGhLEBBYd4OSimVXL4htWtArlP3pKOSc
         bqAA==
X-Forwarded-Encrypted: i=1; AJvYcCVNlx7EmvKJFyJnvah3Aq+l/6XHjvhC0Sx6OG1PjwkU6CgD/P4ZCA7MxBVzLT/OFpF6kNznOMRUlhQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw3wl7k1Pdvfvy6SwFGHhgDYD0e+of4N4hSEdi5Yx52ceX57IVe
	TofxFnTT05A8/3EWBosbwf2aC2OBUBV+FGydjvxNAS5XDSscidvQCf6B8HmNuIH5JEf7+u6rcyG
	bcP6YtBu7lERKDFFo9LiNZKXzsQ0LZOJiU4MSGA==
X-Google-Smtp-Source: AGHT+IGQtMOS4YakO3mVRU55aBPqdi3LzajbKXFr5W6dpvH6QZXYvNNBmu8gXnrpyyZN1Wg9oeBHgUN50f5gy2PQASY=
X-Received: by 2002:a05:6902:e92:b0:e0e:8740:2a76 with SMTP id
 3f1490d57ef6-e1a7a3d95d9mr9063263276.26.1725364242841; Tue, 03 Sep 2024
 04:50:42 -0700 (PDT)
MIME-Version: 1.0
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
 <CAPDyKFrS4Dhd7DZa2zz=oPro1TiTJFix0awzzzp8Qatm-8Z2Ug@mail.gmail.com>
 <99bef301-9f6c-4797-b47e-c83e56dfbda9@tuxon.dev> <CAPDyKFrVS2vpsJqTvjKCJ7ADqXc4D4k2eeCBsaK4T+=pXDnKUA@mail.gmail.com>
 <fa9b3449-ea3e-4482-b7eb-96999445cea5@tuxon.dev> <CAPDyKFrkkASq7rfRN=9sEet-p8T8t+f__PdnSNRN3bMNipnNNw@mail.gmail.com>
 <CAPDyKFpLnREr4C=wZ7o8Lb-CZbQa4Nr2VTuYdZHZ26Rcb1Masg@mail.gmail.com> <da4c57ff-de2b-418f-ba2c-e83c1d399b94@tuxon.dev>
In-Reply-To: <da4c57ff-de2b-418f-ba2c-e83c1d399b94@tuxon.dev>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 3 Sep 2024 13:50:07 +0200
Message-ID: <CAPDyKFpkCYuK=T6ZGzJ=V67Jj7C6CSKv1GH1W_apWs2rKF4q-g@mail.gmail.com>
Subject: Re: [PATCH 00/16] Add initial USB support for the Renesas RZ/G3S SoC
To: claudiu beznea <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be, 
	magnus.damm@gmail.com, gregkh@linuxfoundation.org, mturquette@baylibre.com, 
	sboyd@kernel.org, yoshihiro.shimoda.uh@renesas.com, 
	biju.das.jz@bp.renesas.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, 
	linux-pm@vger.kernel.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_045044_014148_2127BDFC 
X-CRM114-Status: GOOD (  36.28  )
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

On Tue, 3 Sept 2024 at 12:58, claudiu beznea <claudiu.beznea@tuxon.dev> wrote:
>
>
>
> On 03.09.2024 13:35, Ulf Hansson wrote:
> > On Sat, 31 Aug 2024 at 12:32, Ulf Hansson <ulf.hansson@linaro.org> wrote:
> >>
> >> [...]
> >>
> >>>>
> >>>> If not, there are two other options that can be considered I think.
> >>>> *) Using the genpd on/off notifiers, to really allow the consumer
> >>>> driver of the reset-control to know when the PM domain gets turned
> >>>> on/off.
> >>>> **) Move the entire reset handling into the PM domain provider, as it
> >>>> obviously knows when the domain is getting turned on/off.
> >>>
> >>> This option is what I've explored, tested on my side.
> >>>
> >>> I explored it in 2 ways:
> >>>
> >>> 1/ SYSC modeled as an individual PM domain provider (this is more
> >>>    appropriate to how HW manual described the hardware) with this the PHY
> >>>    reset DT node would have to get 2 PM domains handlers (one for the
> >>>    current PM domain provider and the other one for SYSC):
> >>>
> >>> +               phyrst: usbphy-ctrl@11e00000 {
> >>> +                       compatible = "renesas,r9a08g045-usbphy-ctrl";
> >>> +                       reg = <0 0x11e00000 0 0x10000>;
> >>> +                       clocks = <&cpg CPG_MOD R9A08G045_USB_PCLK>;
> >>> +                       resets = <&cpg R9A08G045_USB_PRESETN>;
> >>> +                       power-domain-names = "cpg", "sysc";
> >>> +                       power-domains = <&cpg R9A08G045_PD_USB_PHY>, <&sysc
> >>> R9A08G045_SYSC_PD_USB>;
> >>> +                       #reset-cells = <1>;
> >>> +                       status = "disabled";
> >>> +
> >>> +                       usb0_vbus_otg: regulator-vbus {
> >>> +                               regulator-name = "vbus";
> >>> +                       };
> >>> +               };
> >>> +
> >>
> >> According to what you have described earlier/above, modelling the SYSC
> >> as a PM domain provider seems like a better description of the HW to
> >> me. Although, as I said earlier, if you prefer the reset approach, I
> >> would not object to that.
> >
> > Following the discussion I believe I should take this back. If I
> > understand correctly, SYSC signal seems best to be modelled as a
> > reset.
> >
> >  Although, it looks like the USB PM domain provider should rather be
> > the consumer of that reset, instead of having the reset being consumed
> > by the consumers of the USB PM domain.
>
> The PM domain provider for USB is the provider for the rest of IPs. To work
> like this the SYSC these signals should be handled in the USB domains power
> on/off function. It's not impossible to have it implemented like this but
> it will complicate a bit the code, AFAICT. This will not describe the
> hardware, also.
>
> With the information that we had up to yesterday, the connection b/w HW
> blocks was something as follows:
>
>                  USB area
>               +--------------------------+
>       sig     | PHY -> USB controller X  |
> SYSC -------->|  ^                       |
>               |  |                       |
>               | PHY reset                |
>               +--------------------------+
>
> In this implementation the SYSC signal was connected to PHY reset block as
> it is the root of the devices used in the USB setup and no USB
> functionality can exist w/o the PHY reset being setup.
>
> There is a new information arrived just yesterday from hardware team saying
> this about SYSC signals: "When turning off USB PHY and PCIe PHY, if they
> are not controlled, PHY may break" which may means that it is just
> connected to the PHYs not to the USB area/region or PCIe area/region as
> initially expressed in HW manual.
>
> With that the HW connection b/w the USB devices and SYSC might become
> something like:
>
>                  USB area
>               +--------------------------+
>      sig   +--->PHY -> USB controller X  |
> SYSC ------+  |  ^                       |
>               |  |                       |
>               | PHY reset                |
>               +--------------------------+
>
> I haven't got the chance to test this topology, though.
>
> With this new information would you be OK to still have it as a reset
> signal and connected only to the PHY driver ?

As long as it's a better description of the HW, I am fine with that too.

Although, please note that pm_runtime_get|put() doesn't give you full
controll of how the USB PM domain is being powered. So in that case,
it sounds like you need to use the genpd on/off notifiers too.

Kind regards
Uffe

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
