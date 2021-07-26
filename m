Return-Path: <SRS0=7glD=MS=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_2 autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8159AC4338F
	for <linux-phy@archiver.kernel.org>; Mon, 26 Jul 2021 23:50:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4278F60F93
	for <linux-phy@archiver.kernel.org>; Mon, 26 Jul 2021 23:50:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 4278F60F93
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LJcibhsNzJRc6Ce6YsN7LRlS/z48aM8/A9cGKs5et8o=; b=vJ2RKXfIP5RdAo
	XPn8YCafuBQDfUl5NHf7lsKU47KXnrEBk15qqoMvgd/YR8vFH0C8hytzVmKKqfwOz49NELbmIGNil
	N5jUT6MsyuJoV1LOxDHbwS4Ji5ZcUn8pa3T/f2HrfaRRYktE4VQmmTg1tKZFCXE5SGf7BQrSD+zLH
	wf/SGtmSWY5J7y3gYaX9yyb5cwUOjl9OY69MKwUyV1HFc9GLhvKrb7G8DTzwKGOIjyD8JZcuxeXq5
	q6W/JX/IF38bkR3omgIYF5ns1GFG4OZJsP98bTdyTSajRIKUNoXzHUXT0aRR7gUpNPNvHHM/UnOOQ
	+TzyJQOwOnUSTZLlZ4iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8AMh-00Cefc-Pk; Mon, 26 Jul 2021 23:50:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8AMe-00CeeZ-LE
 for linux-phy@lists.infradead.org; Mon, 26 Jul 2021 23:50:30 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 87C1860F5D;
 Mon, 26 Jul 2021 23:50:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1627343426;
 bh=PiNdLiUO8u4iBcOTQ7S6uIUxce5LMuVYHd8pBWdnPz4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=dEAhRv0wUpoz5VShCmC9g+qjBGBctAWaPX/XGpIo0vjMitRrdQw+3BgzvZir4AvNb
 YAeLc3po8RdFy+/aP4CVZXB5Kgd48x2FwWiLlf21luZ+7Td6MnFTYbxmwBqtfuJCGq
 IIyfQT2ncrUYKnsUM/bdtFa1OBb3adtL+h4QrDzlkKEtsL7FGE+mFkLe7tpjaWkhz5
 gcT4voyLy6Xs+E7jIKeQn0mJHrX5uu5e3hOLykR+G5gsBw9bogp/TWCfrW1KDkWMTR
 s3/MMEyOdB+mSlS0Ja3YNwnhKDj5QaLLVANcOEQdjsEUk8kkZf/f52WN9irjnqF1QT
 Wlmjt384dYMxA==
Date: Tue, 27 Jul 2021 01:50:20 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Linuxarm <linuxarm@huawei.com>, mauro.chehab@huawei.com, Kishon Vijay
 Abraham I <kishon@ti.com>, devicetree@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH v7 06/10] dt-bindings: phy: Add bindings for HiKey 970
 PCIe PHY
Message-ID: <20210727015020.403bbf73@coco.lan>
In-Reply-To: <CAL_JsqLA7Z908SQKkZpyEcCvpkWsW3pa42eajpxCSkbUy4rv9g@mail.gmail.com>
References: <cover.1626855713.git.mchehab+huawei@kernel.org>
 <946f2426bc542638240980931eae924c57f2ba27.1626855713.git.mchehab+huawei@kernel.org>
 <20210723225059.GA2727093@robh.at.kernel.org>
 <20210724021244.780297ee@coco.lan>
 <CAL_JsqLA7Z908SQKkZpyEcCvpkWsW3pa42eajpxCSkbUy4rv9g@mail.gmail.com>
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.30; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210726_165028_797613_76F921C2 
X-CRM114-Status: GOOD (  63.25  )
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

Em Mon, 26 Jul 2021 15:37:28 -0600
Rob Herring <robh@kernel.org> escreveu:

> On Fri, Jul 23, 2021 at 6:12 PM Mauro Carvalho Chehab
> <mchehab+huawei@kernel.org> wrote:
> >
> > Em Fri, 23 Jul 2021 16:50:59 -0600
> > Rob Herring <robh@kernel.org> escreveu:
> >  
> > > On Wed, Jul 21, 2021 at 10:39:08AM +0200, Mauro Carvalho Chehab wrote:  
> > > > Document the bindings for HiKey 970 (hi3670) PCIe PHY
> > > > interface, supported via the pcie-kirin driver.
> > > >
> > > > Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> > > > ---
> > > >  .../phy/hisilicon,phy-hi3670-pcie.yaml        | 95 +++++++++++++++++++
> > > >  1 file changed, 95 insertions(+)
> > > >  create mode 100644 Documentation/devicetree/bindings/phy/hisilicon,phy-hi3670-pcie.yaml
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/phy/hisilicon,phy-hi3670-pcie.yaml b/Documentation/devicetree/bindings/phy/hisilicon,phy-hi3670-pcie.yaml
> > > > new file mode 100644
> > > > index 000000000000..a5ea13332cac
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/phy/hisilicon,phy-hi3670-pcie.yaml
> > > > @@ -0,0 +1,95 @@
> > > > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > > > +%YAML 1.2
> > > > +---
> > > > +$id: http://devicetree.org/schemas/phy/hisilicon,phy-hi3670-pcie.yaml#
> > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > +
> > > > +title: HiSilicon Kirin970 PCIe PHY
> > > > +
> > > > +maintainers:
> > > > +  - Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> > > > +
> > > > +description: |+
> > > > +  Bindings for PCIe PHY on HiSilicon Kirin 970.
> > > > +
> > > > +properties:
> > > > +  compatible:
> > > > +    const: hisilicon,hi970-pcie-phy
> > > > +
> > > > +  "#phy-cells":
> > > > +    const: 0
> > > > +
> > > > +  reg:
> > > > +    maxItems: 1
> > > > +    description: PHY Control registers
> > > > +
> > > > +  phy-supply:
> > > > +    description: The PCIe PHY power supply
> > > > +
> > > > +  clocks:
> > > > +    items:
> > > > +      - description: PCIe PHY clock
> > > > +      - description: PCIe AUX clock
> > > > +      - description: PCIe APB PHY clock
> > > > +      - description: PCIe APB SYS clock
> > > > +      - description: PCIe ACLK clock
> > > > +
> > > > +  clock-names:
> > > > +    items:
> > > > +      - const: phy_ref
> > > > +      - const: aux
> > > > +      - const: apb_phy
> > > > +      - const: apb_sys
> > > > +      - const: aclk
> > > > +
> > > > +  reset-gpios:
> > > > +    description: PCI PERST reset GPIOs
> > > > +    maxItems: 4
> > > > +
> > > > +  clkreq-gpios:
> > > > +    description: Clock request GPIOs
> > > > +    maxItems: 3  
> > >
> > > Again, this will not work.  
> >
> > Just to be sure: you're talking about the PERST# gpios (e. g. reset-gpios)
> > here, right?  
> 
> Both that and CLKREQ.
> 
> > > It boils down to this fails to describe how the GPIOs are connected
> > > which is the point of GPIOs in DT. This in no way captures the hierarchy
> > > of devices. While you may be lucky that you can just assert or
> > > deassert all the lines at one time, that's not likely to work in a
> > > more complicated case (such as having to power up/down each device).  
> >
> > There's no way to power up/down each device, as they all share the
> > same regulator line (LDO33). So, when this is powered on, all PCI
> > devices are powered at the same time.  
> 
> I understand that for your board, but you could easily have a power
> supply per device (or multiple supplies per device).

There are probably thousands of alternatives, but I don't see any
benefit on trying to do write a very complex abstraction here.

> 
> > The original DT had names for each reset-gpio, but this was just
> > informative, as the only possible way for this hardware to work is
> > to send the PERST# signal via all GPIOs at the same time.  
> 
> What's the timing requirement here? I doubt 'at the same time' is the
> actual h/w requirement. My guess is it is before the PCI bus scan if
> you don't have any hook before each child bus is scanned.

No idea, as the available documentation doesn't mention. As this is an 
old hardware, finding any extra documentation about it is not easy,
and, afaikt, the developers who originally worked on it (back in 2017) 
were already moved to work with least two or three generations that came
after this SoC. So, we need to check what the code does.

Looking at the code, both the PERST# signals and the CLKREQ happen
during the PHY power on sequence, and don't require any special
order. They just need to be initialized altogether at the same
power on step. The power on steps are:

1. turn on the power supply from the regulator to feed the bridge
   and other PCI devices;
2. turn on the PHY;
3. request clocks;
4. set PHY clock and enable the other clocks;
5. configure some parameters at the PHY layer;
6. send the PERST# signals. This part has actually a 21 ms delay before
   sending the signal and will wait for 10ms after sending PERST# to
   all PCI devices. The actual PERST# code is:

	usleep_range(21000, 23000);
	for (i = 0; i < phy->n_gpio_resets; i++) {
		ret = gpio_direction_output(phy->gpio_id_reset[i], 1);
		if (ret)
			return ret;
	}
	usleep_range(10000, 11000);

   In summary, all PERST# signals are sent (about) the same time,
   and the driver logic will wait for 10 ms.

7. Wait for the PCIe to be stable;

8. Adjust the eye parameter;

9. power off NOC.

All the above happens before the PCI bus scan.


> > Ok, we might overdesign the DT, in order to consider a non-existent
> > scenario where it would be possible to power on and reset the devices
> > in separate, but I can't think on a way to do that, except by maybe
> > creating virtual phy (or pcie) DT nodes, one for each combination of
> > regulator + PERST#, and have separate drivers for each one. Such kind
> > of scenario only makes sense when each PCIe device can be powered on
> > independently (which is not the case here).  
> 
> If someone made hikey970 with the topology you have, then someone can
> just as easily make a different topology and one that doesn't work
> with the assumptions you've made. We're only going to see more and
> more embedded boards with multiple PCI devices.

I wouldn't expect a new device using this chipset being upstreamed.
As I said before, there are 3 generations after Kirin 970.

> 
> > If you have a better idea, I'm all ears.  
> 
> There's already a spec for populating PCI devices in DT. It's existed
> for over 20 years with OpenFirmware[1]. It's not widely used on FDT
> systems because most cases to date are just a single device attached
> and they don't have extra things needing to be described in DT. There
> are a few, but not many examples in the tree of PCI devices with DT
> nodes. That's the only way to generically describe the topology you
> have.

I'll try to find something, but still I think that this is overdesign,
as this is really a single event that was split on multiple GPIOs just
due to some voltage/current/temperature constraints.

> While I haven't seen another case exactly like yours yet, there are
> frequent cases of PCI devices (and other discoverable buses) that have
> extra resources that are not discoverable. And some of those need
> control before the device can be discovered. I see various
> work-arounds to the problem, but describing the devices in DT is the
> right way. It's only going to get solved if the work-arounds are
> rejected. I care more that the DT binding is correct and less if the
> kernel side is clean. The kernel implementation can evolve, the DT
> cannot.

Yeah, I understand that DT changes would be painful, but, IMHO,
writing something very complex here just because the hardware design
opted to use multiple GPIOs instead of a single one is overkill.

> > > I realize the right solution is more complex, but that's the only way to
> > > handle this in a host bridge and board independent way.
> > >
> > > If you want the simple solution, just configure all these GPIOs in
> > > firmware before Linux boots.  
> >
> > This won't work. The PERST# signal should be sent after initializing
> > the PCIe + PHY and powering up the PEX8606 PCIe bridge chipset
> > (via LDO33). That happens when the PCIe driver is loaded.  
> 
> Only because you have no hooks for handling PERST# on devices
> downstream of the PEX8606. Surely a sequence like this would work:
> deassert root PERST# (to PEX8606), scan root bus, find and init PCIe
> bridge, deassert PEX8606 child bus(es) PERST#, scan child bus(es),
> find and init child devices. I think the .add_bus() hook could work
> for you. IIRC, that's called before a child bus is scanned.

As explained above, after sending the PERST# signal and wait for
10 ms, it tunes the PHY eye diagram and powers off NOC.

> [1] https://www.devicetree.org/open-firmware/home.html#OFDbussupps


Thanks,
Mauro

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
