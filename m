Return-Path: <SRS0=JCKM=MT=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_2 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CA5CC4338F
	for <linux-phy@archiver.kernel.org>; Tue, 27 Jul 2021 07:40:31 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 355BE611C5
	for <linux-phy@archiver.kernel.org>; Tue, 27 Jul 2021 07:40:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 355BE611C5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UM3EJE42tCrnjlq63xIPf+aj3/eln0YxzxD4C/Ax6+I=; b=HdesPmPjse+SZd
	BJ5Xlz6MX+zlOMPo3r8FGoIeC1s1AX3QRryQc17lLP4q03dxg6MUM4/M3aftQXP+fUNQfEWUGB4YL
	++AnPr7RCO6pU5CQ3jh8lScjzPaX5ZDR7NXRkUIpKsu5m34FrU3wTR5u2nzn94Fx8keIYM5/EITiz
	ObLQ3wluhLwXOMihsMLqfH9FnGGXjYyfQIjGw+OY6u2MdgzXuTxvU5luPEq6dFKL0XgR+lODsBXOh
	VrDcSd+n89207re08ONDNwomSZLuVtNGvcjIX4+O4kPRIHRY38RAdhEPxJWOFKCzclYSLKlF0/S9n
	pbwu8zqOVXFTkvZ4YgHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8HhW-00Dsm9-DD; Tue, 27 Jul 2021 07:40:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8Gwl-00Dggb-W2
 for linux-phy@lists.infradead.org; Tue, 27 Jul 2021 06:52:13 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id B8C9E610A7;
 Tue, 27 Jul 2021 06:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1627368731;
 bh=1shv90NXbVnI0EhBrF+Di0h2ODnyb3HL6k1slRT7B2Y=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=TAMBdQGIXiYimN4KiU03WNk34Xj4T9BdDaCUEhyE2ZlNDHEGap0JfqhKdBHOQ+zvh
 7kVFBc7vt0vsY6C4FjqLLDD0LS8Sz2FijpzcuPXT0R98PdKPbZ7O00B98+wect0AAR
 JPSAsIBKr90OMnXjpwFFSkgzibrkIOG7+wKCWDuzSKZr2tyUUHDtyPYYvDmkidkD60
 hqRQ2hD7BToNeF9ZmbH58RJDGIXYBzJjCtjcHxlugH4fuLRs8/AUbYgSX9SIINL2OW
 mr1D35eNJBSNSwfeKYXqt+0ldOgnJgfgnpM7YousGlDIgQan9nqlzk6vUFx8ygYBip
 3qBs4nNd6FS2Q==
Date: Tue, 27 Jul 2021 08:52:05 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Linuxarm <linuxarm@huawei.com>, mauro.chehab@huawei.com, Kishon Vijay
 Abraham I <kishon@ti.com>, devicetree@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH v7 06/10] dt-bindings: phy: Add bindings for HiKey 970
 PCIe PHY
Message-ID: <20210727085205.5aafb5c9@coco.lan>
In-Reply-To: <20210727015020.403bbf73@coco.lan>
References: <cover.1626855713.git.mchehab+huawei@kernel.org>
 <946f2426bc542638240980931eae924c57f2ba27.1626855713.git.mchehab+huawei@kernel.org>
 <20210723225059.GA2727093@robh.at.kernel.org>
 <20210724021244.780297ee@coco.lan>
 <CAL_JsqLA7Z908SQKkZpyEcCvpkWsW3pa42eajpxCSkbUy4rv9g@mail.gmail.com>
 <20210727015020.403bbf73@coco.lan>
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.30; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210726_235212_146621_5C149471 
X-CRM114-Status: GOOD (  20.49  )
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

Em Tue, 27 Jul 2021 01:50:20 +0200
Mauro Carvalho Chehab <mchehab+huawei@kernel.org> escreveu:

> Em Mon, 26 Jul 2021 15:37:28 -0600
> Rob Herring <robh@kernel.org> escreveu:
> 

> > > > > +  reset-gpios:
> > > > > +    description: PCI PERST reset GPIOs
> > > > > +    maxItems: 4
> > > > > +
> > > > > +  clkreq-gpios:
> > > > > +    description: Clock request GPIOs
> > > > > +    maxItems: 3    
> > > >
> > > > Again, this will not work.    
> > >
> > > Just to be sure: you're talking about the PERST# gpios (e. g. reset-gpios)
> > > here, right?    
> > 
> > Both that and CLKREQ.

The original DT from the downstream version (found at Linaro's tree)
has:

	pcie@f4000000 {
		compatible = "hisilicon,hikey970";
...
		switch,reset-gpios = <&gpio7 0 0 >;
		eth,reset-gpios = <&gpio25 2 0 >;
		m_2,reset-gpios = <&gpio3 1 0 >;
		mini1,reset-gpios = <&gpio27 4 0 >;

		eth,clkreq-gpios = <&gpio20 6 0 >;
		m_2,clkreq-gpios = <&gpio27 3 0 >;
		mini1,clkreq-gpios = <&gpio17 0 0 >;
	};

So, if we're willing to have a single reset-gpios for the PCIe
interface, in order to follow the current pci-bus.yaml schema,
this would probably be:

	reset-gpios = <&gpio7 0 0 >;

which maps to the PEX8606 PCIe bridge chip.

With that, DT still need to point a per-slot clkreq and
reset-gpio.

One alternative would be to map it as either 3 PCI or PHY
child nodes. E. g. something like this:

	pcie@f4000000 {
		compatible = "hisilicon,kirin970-pcie";
...
		reset-gpios = <&gpio7 0 0 >;

		slot {
			eth {
				reset-gpios = <&gpio25 2 0>;
				clkreq-gpios = <&gpio20 6 0>;
			};
			m2 {
				reset-gpios = <&gpio3 1 0>;
				clkreq-gpios = <&gpio27 3 0>;
			};
			mini1 {
				reset-gpios = <&gpio27 4 0>;
				clkreq-gpios = <&gpio17 0 0>;
			};
		};
	};


Placing the child nodes ("slot"?) at the pci bus properties makes more
sense to me, but placing them at the PHY node has the advantage of 
only affecting Kirin 970.

In either case, if each child would need a different power supply,
it won't be hard to add a "slot-supply" property later on. 

Would something like that be acceptable for you?

> > > If you have a better idea, I'm all ears.    
> > 
> > There's already a spec for populating PCI devices in DT. It's existed
> > for over 20 years with OpenFirmware[1]. It's not widely used on FDT
> > systems because most cases to date are just a single device attached
> > and they don't have extra things needing to be described in DT. There
> > are a few, but not many examples in the tree of PCI devices with DT
> > nodes. That's the only way to generically describe the topology you
> > have.  
> >
> > [1] https://www.devicetree.org/open-firmware/home.html#OFDbussupps  

I was unable to find anything useful there at the two PCI documents.

This one:
	https://www.devicetree.org/open-firmware/bindings/pci/pci-express.txt

has just one property that might be useful:

	physical-slot#

The main one:
	https://www.devicetree.org/open-firmware/bindings/pci/pci2_1.pdf

mentions a few child properties, but it doesn't show how those were
supposed to be mapped, and none of the properties mentioned there
specify clocks, gpios, or reset pins.

Thanks,
Mauro

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
