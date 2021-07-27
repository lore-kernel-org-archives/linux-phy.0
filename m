Return-Path: <SRS0=JCKM=MT=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 001AAC4320A
	for <linux-phy@archiver.kernel.org>; Tue, 27 Jul 2021 22:18:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BED4E60F6E
	for <linux-phy@archiver.kernel.org>; Tue, 27 Jul 2021 22:18:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org BED4E60F6E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=84lHnU3giUDOJzyAQrUV8/MyaTuxxo/HMSyYBu5xjh4=; b=O3TZf6oTjVx+q8
	6Pzps+BZtTbpjxL2YlSpQncn/KiDMmYCDO4eqtPNSRIyNePgPdjBqiL2DS0u0kAnN47VwMYe7Mnsm
	yxe9njr7MpWGs/x3AwbeuwsrPBYBPDMnfWx7HyeY0gSIeew6m1jhbrJkfR3upTFZkr/n8Gtw2zTdm
	aBpTQlN+ZkH2Y0bOqCnbFbLomxLciIP0JOnMHr5vwfD5QWw58af/T2UtN3mXcf0Tztu1Mf9CwuoF+
	q6utLOFyoVxF/F0+w+kykrBbv/0Hg5oOXNueXZrc9KVLurIh9dq4B/dgBWGqtAvR4yzGarPB3lulb
	dZ13ke+wyY8vBnwXl9+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8VOj-00GVkR-89; Tue, 27 Jul 2021 22:18:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8VOf-00GVjI-IU
 for linux-phy@lists.infradead.org; Tue, 27 Jul 2021 22:17:59 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id AC68560FA0
 for <linux-phy@lists.infradead.org>; Tue, 27 Jul 2021 22:17:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1627424276;
 bh=NTx2AmyGC2otSjSs47CuSipTZNW0kKqQ1vQxftaHk4A=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Q/7sSe4oHU/CTPp80Dk3jddqbKeLpeVtJTMwJbDHTa5/VKBhx/nZkQHEbnyTobEc1
 q2WzaXZhV5V2zjYqkP3U7/VXHaxmzm2/A1G0XkrfsxaVoSM/UwxO+yl7nVJF00sqGk
 d7AD5UzHRa1NjI84Hxoz+s+efE47CeQgKrZgiph2mNdwJC7m3pwY0KcKdxRyftWz+1
 F63gNsi7C/7FbTmapOVHpRS0LWCTWtUe0EH3Crgn6TlVtRtS438i2w2ahGL9/Qq8cd
 mguUY59Nehy7ydcOZ205/5jbvzpVfSGzQ+Do9F1ImBnjdZ5cMqu1QH+qflSUWEVI6f
 cQ05kefvWSwJQ==
Received: by mail-ed1-f43.google.com with SMTP id b7so515456edu.3
 for <linux-phy@lists.infradead.org>; Tue, 27 Jul 2021 15:17:56 -0700 (PDT)
X-Gm-Message-State: AOAM532KA1VMsI4hnhNEG2O7xBOTEA80vDrJTurAw4bOkxMQmyQsK9JK
 mpaCE8EzQ/ffZ8kkqsViQ/yDyTeAAcLZ6KIFUQ==
X-Google-Smtp-Source: ABdhPJyNP8M8aAQKXxx5tCub5TYW/KAfNDMcwrn6O2Dj7lhqKvX7EyCiM+Atq5P85EUfEBlNdMu/b2yTd8MfL06uTNo=
X-Received: by 2002:aa7:cb19:: with SMTP id s25mr30783265edt.194.1627424275171; 
 Tue, 27 Jul 2021 15:17:55 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1626855713.git.mchehab+huawei@kernel.org>
 <946f2426bc542638240980931eae924c57f2ba27.1626855713.git.mchehab+huawei@kernel.org>
 <20210723225059.GA2727093@robh.at.kernel.org>
 <20210724021244.780297ee@coco.lan>
 <CAL_JsqLA7Z908SQKkZpyEcCvpkWsW3pa42eajpxCSkbUy4rv9g@mail.gmail.com>
 <20210727015020.403bbf73@coco.lan> <20210727085205.5aafb5c9@coco.lan>
In-Reply-To: <20210727085205.5aafb5c9@coco.lan>
From: Rob Herring <robh@kernel.org>
Date: Tue, 27 Jul 2021 16:17:43 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+5raGQAK5T4SoC=Jfzsbov-y4u-rdJ3DJt+ryYOK8q2w@mail.gmail.com>
Message-ID: <CAL_Jsq+5raGQAK5T4SoC=Jfzsbov-y4u-rdJ3DJt+ryYOK8q2w@mail.gmail.com>
Subject: Re: [PATCH v7 06/10] dt-bindings: phy: Add bindings for HiKey 970
 PCIe PHY
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
 Linuxarm <linuxarm@huawei.com>, mauro.chehab@huawei.com, 
 Kishon Vijay Abraham I <kishon@ti.com>, devicetree@vger.kernel.org, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210727_151757_688902_0A7FE184 
X-CRM114-Status: GOOD (  24.99  )
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

On Tue, Jul 27, 2021 at 12:52 AM Mauro Carvalho Chehab
<mchehab+huawei@kernel.org> wrote:
>
> Em Tue, 27 Jul 2021 01:50:20 +0200
> Mauro Carvalho Chehab <mchehab+huawei@kernel.org> escreveu:
>
> > Em Mon, 26 Jul 2021 15:37:28 -0600
> > Rob Herring <robh@kernel.org> escreveu:
> >
>
> > > > > > +  reset-gpios:
> > > > > > +    description: PCI PERST reset GPIOs
> > > > > > +    maxItems: 4
> > > > > > +
> > > > > > +  clkreq-gpios:
> > > > > > +    description: Clock request GPIOs
> > > > > > +    maxItems: 3
> > > > >
> > > > > Again, this will not work.
> > > >
> > > > Just to be sure: you're talking about the PERST# gpios (e. g. reset-gpios)
> > > > here, right?
> > >
> > > Both that and CLKREQ.
>
> The original DT from the downstream version (found at Linaro's tree)
> has:
>
>         pcie@f4000000 {
>                 compatible = "hisilicon,hikey970";
> ...
>                 switch,reset-gpios = <&gpio7 0 0 >;
>                 eth,reset-gpios = <&gpio25 2 0 >;
>                 m_2,reset-gpios = <&gpio3 1 0 >;
>                 mini1,reset-gpios = <&gpio27 4 0 >;
>
>                 eth,clkreq-gpios = <&gpio20 6 0 >;
>                 m_2,clkreq-gpios = <&gpio27 3 0 >;
>                 mini1,clkreq-gpios = <&gpio17 0 0 >;
>         };
>
> So, if we're willing to have a single reset-gpios for the PCIe
> interface, in order to follow the current pci-bus.yaml schema,
> this would probably be:
>
>         reset-gpios = <&gpio7 0 0 >;
>
> which maps to the PEX8606 PCIe bridge chip.
>
> With that, DT still need to point a per-slot clkreq and
> reset-gpio.
>
> One alternative would be to map it as either 3 PCI or PHY
> child nodes. E. g. something like this:
>
>         pcie@f4000000 {
>                 compatible = "hisilicon,kirin970-pcie";
> ...
>                 reset-gpios = <&gpio7 0 0 >;
>
>                 slot {
>                         eth {
>                                 reset-gpios = <&gpio25 2 0>;
>                                 clkreq-gpios = <&gpio20 6 0>;
>                         };
>                         m2 {
>                                 reset-gpios = <&gpio3 1 0>;
>                                 clkreq-gpios = <&gpio27 3 0>;
>                         };
>                         mini1 {
>                                 reset-gpios = <&gpio27 4 0>;
>                                 clkreq-gpios = <&gpio17 0 0>;
>                         };
>                 };
>         };
>
>
> Placing the child nodes ("slot"?) at the pci bus properties makes more
> sense to me, but placing them at the PHY node has the advantage of
> only affecting Kirin 970.
>
> In either case, if each child would need a different power supply,
> it won't be hard to add a "slot-supply" property later on.
>
> Would something like that be acceptable for you?

On the right track, but there's already a definition for what child
devices look like in pci2_1.pdf. I think you want something like this:

pcie@f4000000 { // RP: Bus 0, Device 0
    compatible = "hisilicon,kirin970-pcie";
    ...
    reset-gpios = <&gpio7 0 0>;  // PERST to switch

    pcie@0 { // PCIe switch: Bus 1, Device 0
        reg = <0 0 0 0 0>;
        compatible = "pciclass,0604";
        device_type = "pci";

        pcie@1 { // NC (Can omit this node)
            reg = <0x80 0 0 0 0>;
            compatible = "pciclass,0604";
            device_type = "pci";
        };

        pcie@4 { // M.2
            reg = <0x200 0 0 0 0>;
            compatible = "pciclass,0604";
            device_type = "pci";
            reset-gpios = <&gpio7 1 0>; // PERST to M.2 slot
       };

        pcie@5 { // Mini
            reg = <0x280 0 0 0 0>;
            compatible = "pciclass,0604";
            device_type = "pci";
            reset-gpios = <&gpio7 2 0>; // PERST to Mini slot
        };

        pcie@7 { // Ethernet
            reg = <0x380 0 0 0 0>;
            compatible = "pciclass,0604";
            device_type = "pci";
            reset-gpios = <&gpio7 3 0>; // PERST to Ethernet

            ethernet@0 {
                reg = <0 0 0 0 0>;
                local-mac-address = [ 00 01 02 03 04 05 06 ];
            };
        };

        pcie@9 { // NC
            reg = <0x480 0 0 0 0>;
            compatible = "pciclass,0604";
            device_type = "pci";
       };
};

This is based on what you previously sent:
00:00.0 PCI bridge: Huawei Technologies Co., Ltd. Device 3670 (rev 01)
01:00.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI
Express Gen 2 (5.0 GT/s) Switch (rev ba)
02:01.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI
Express Gen 2 (5.0 GT/s) Switch (rev ba)
02:04.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI
Express Gen 2 (5.0 GT/s) Switch (rev ba)
02:05.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI
Express Gen 2 (5.0 GT/s) Switch (rev ba)
02:07.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI
Express Gen 2 (5.0 GT/s) Switch (rev ba)
02:09.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI
Express Gen 2 (5.0 GT/s) Switch (rev ba)
06:00.0 Ethernet controller: Realtek Semiconductor Co., Ltd.
RTL8111/8168/8411 PCI Express Gigabit Ethernet Controller (rev 07)

A few notes:
I left out #size-cells, #address-cells, and ranges for brevity.

I'm not completely sure I've got the bridges mapped to the right
functions on Hikey970. That's my best guess looking at the schematics.
You should be able to confirm which bridge is the parent bridge for
ethernet at least.

The compatible strings aren't strictly needed. Linux doesn't look at them.

There's a pretty complete example in:
arch/mips/boot/dts/loongson/loongson64-2k1000.dtsi

The simplest Linux implementation to handle the above is just walk the
child nodes and get all the 'reset-gpios' properties. That's not the
implementation I think we should have though. We should handle the
GPIO as each bridge is probed and children scanned.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
