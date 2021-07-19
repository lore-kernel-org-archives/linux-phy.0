Return-Path: <SRS0=/uDz=ML=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_2 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0BDBC07E95
	for <linux-phy@archiver.kernel.org>; Mon, 19 Jul 2021 15:26:18 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8D37B613F0
	for <linux-phy@archiver.kernel.org>; Mon, 19 Jul 2021 15:26:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8D37B613F0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OV+hzxCEQFxeE+hILrqRiHWGgY3yqjCYKBG2KyZh3Fk=; b=WK5xlCLRv1hpPW
	yp11rJpiN4d02xxGVSXuns8c1wpw1cDeG9WItdn9bJT2TXGz0yCzOz2nfWIM4EdsTzYdEGIVcKtIc
	wp7sViHPIqDPj4AH4lzQj49fSlsnIqPKpxSKYYfVT2jFDxeKQRTVkwhtNPKsqusgtrbgK0l6loTkD
	TpBCbqCrmUdJompRx3lYnscwAXZ3nS5Z2AcG0NA6Big1ap4+z5uI9R1TFHgUa1PqetcTxUE146Nfg
	V/v9wvxSHfg6JOF747KnEIe0MxJT12ngi/yEVfGQUBp3+dvgeQw9mIDrac2ySyQqACkjZg5+1PmoU
	LqfgBNn4q9qhel1RqhQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m5V9t-00A5bp-Sz; Mon, 19 Jul 2021 15:26:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m5V9p-00A5aC-2w
 for linux-phy@lists.infradead.org; Mon, 19 Jul 2021 15:26:15 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id C4D2C613E9;
 Mon, 19 Jul 2021 15:26:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626708372;
 bh=zfpHOPbzqOb45TQg2e5X5lqUxhhBOY7V6RTs4fIxWng=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=HdPKFMKH5JcpjUQ6NsZFKh+r9/ZwwyzK6Pyv4UXQPFw6tp9UNBFVtxBD+Du1Ztcjp
 1ScUA1owkwz35p6rKle0uh2Z8WymdrTfiVWYfgawZxeDZvFWbmnzoHqBNqk4/7a6QJ
 M0DXR1pYiCTUDlxBkGEjAF6eMxn9NWjHe2C/WuYI4gpY7wm5J+aahgo0wHTKXhUBHS
 brRZRFXt7T92RazQaNrEnBZy7WWiaO6qmJDUHz9tpEW+u/iWwvBgjc3P+6hxmVWw1P
 70Q4420LWQwks5M/gaDaeVTMpdEtLeyf3Wz50mZwYNEFR6bIdNvtRelIWDyO6EgqS/
 leQRYUDvb3Cqg==
Date: Mon, 19 Jul 2021 17:26:06 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Rob Herring <robh@kernel.org>, Bjorn Helgaas <helgaas@kernel.org>
Cc: Manivannan Sadhasivam <mani@kernel.org>, linuxarm@huawei.com,
 mauro.chehab@huawei.com, Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul
 <vkoul@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v5 2/8] dt-bindings: phy: Add bindings for HiKey 970
 PCIe PHY
Message-ID: <20210719172606.5bc41378@coco.lan>
In-Reply-To: <20210715083709.35dade89@coco.lan>
References: <cover.1626157454.git.mchehab+huawei@kernel.org>
 <baa7e71e13953b28a11fffdcef35195099feb7fd.1626157454.git.mchehab+huawei@kernel.org>
 <20210714022649.GA1324196@robh.at.kernel.org>
 <20210714091435.322d68b1@coco.lan>
 <20210714174225.GA8988@workstation>
 <20210715083709.35dade89@coco.lan>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210719_082613_255023_E43E89E0 
X-CRM114-Status: GOOD (  40.61  )
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

Hi Rob/Bjorn,

I rebased my repository in a way that the PHY for Kirin 960 won't
be touched. As I explained before:

	https://lore.kernel.org/lkml/20210716132208.3cd8f404@coco.lan/

the only way of doing that without modifying the PHY core and doing ugly
hacks is to not split Kirin 960 PHY from the pcie-kirin driver. 

So, the approach I took was to make the core code at the pcie-kirin driver
generic, ensuring that the internal PHY code is self-contained.

Then, I added support for using a PHY from drivers/phy. This way, the DT 
schema for Kirin 960 won't be touched. The patch series is at:

	https://github.com/mchehab/linux/commits/pcie-alternate

Now, this is the only pending issue on my TODO list:

Em Thu, 15 Jul 2021 08:37:09 +0200
Mauro Carvalho Chehab <mchehab+huawei@kernel.org> escreveu:

> > > > > +  reset-gpios:
> > > > > +    description: PCI PERST reset GPIOs
> > > > > +    maxItems: 4      
> > > > 
> > > > Hiding the 4 ports in the phy?    
> > > 
> > > Rob,
> > > 
> > > I'm not trying to hide anything.
> > > 
> > > There are several differences with regards to how PERST# is handled between
> > > HiKey 960 and HiKey 970.
> > > 
> > > From hardware perspective, you can see the schematics of both boards:
> > > 
> > > 	https://github.com/96boards/documentation/raw/master/consumer/hikey/hikey960/hardware-docs/HiKey960_SoC_Reference_Manual.pdf
> > > 	https://www.96boards.org/documentation/consumer/hikey/hikey970/hardware-docs/files/hikey970-schematics.pdf
> > > 
> > > The 960 PHY has the SoC directly connected to a PCIE M.2 slot 
> > > (model 10130616) without any external bridge chipset. It uses a single 
> > > GPIO (GPIO 089) for the PERST# signal, connected via a voltage converter
> > > (from 1.8V to 3.3V).
> > > 
> > > 	$ lspci
> > > 	00:00.0 PCI bridge: Huawei Technologies Co., Ltd. Device 3660 (rev 01)
> > > 
> > > The 970 PHY has an external PCI bridge chipset (PLX Technology PEX 8606).
> > > Besides the bridge, the hardware comes with an Ethernet PCI adapter, a
> > > M.2 slot and a mini-PCIe connector. Each one with its own PERST# signal,
> > > mapped to different GPIO pins, and each one using its own voltage
> > > converter.
> > > 
> > > 	$ lspci
> > > 	00:00.0 PCI bridge: Huawei Technologies Co., Ltd. Device 3670 (rev 01)
> > > 	01:00.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
> > > 	02:01.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
> > > 	02:04.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
> > > 	02:05.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
> > > 	02:07.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
> > > 	02:09.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
> > > 	06:00.0 Ethernet controller: Realtek Semiconductor Co., Ltd. RTL8111/8168/8411 PCI Express Gigabit Ethernet Controller (rev 07)
> > > 
> > > On other words, there are 4 GPIOs mapped to different PERST# pins in
> > > the hardware:
> > > 
> > > - GPIO 56 is connected to the PERST# pin at PEX 8606;
> > > - GPIO 25 is connected to the PERST# pin at the M.2 slot;
> > > - GPIO 220 is connected to the PERST# pin at the PCIe mini slot;
> > > - GPIO 203 is connected to the PERST# pin at the Ethernet chipset.
> > > 
> > > Maybe due to different electrical requirements, the hardware design
> > > use different GPIOs instead of feeding them altogether.
> > > 
> > > Anyway, the fact is that the PHY on 970 has 4 different GPIOs that are
> > > need in order for the hardware to work. and this is specific to this
> > > particular PHY.
> > >     
> > 
> > I'm not sure about this. That fact that the PCIe device's PERST# signal
> > wired to different GPIOs doesn't mean that those GPIOs belong to the PHY.
> > Those GPIOs should be independent of the PCIe core controlled manually
> > by the driver.
> > 
> > I think this issue is somewhat similar to the one we are dealing on the
> > Qcom platforms [1] where each PCIe device uses a different GPIO and voltage
> > config to operate. And those need to be active for the link training to
> > succeed.
> > 
> > So perhaps we should aim for a common solution? The GPIO and voltage
> > layout should be described in DT for each port exposed by the SoC/board.  
> 
> It doesn't seem to be the same case. In the case of Hikey 970[1], it uses
> one pullup for each GPIO to convert from 1V8 to the voltage needed by
> each chipset. There's no regulators envolved: the output voltage is
> fixed. From the diagram, it seems that PEX8606 uses 2V5 (via U2602), while 
> the other 3 GPIOs (M.2, PCIe mini and Ethernet) use 3V3. Interesting
> enough, the layout uses a separate gate chip for Ethernet (U3107),
> while both M.2 and PCIe mini use two ports at the same gate chip (U2801).
> 
> [1] https://www.96boards.org/documentation/consumer/hikey/hikey970/hardware-docs/files/hikey970-schematics.pdf
> 
> I can think on a couple of reasons why the hardware designers opted to
> use 4 different GPIOs:
> 
> - the PCIe external bridge required a lower voltage;
> - the current drained by each output port could be different;
> - the chips used by the pullup could have some sort of protection to
>   minimize the risk of damaging the hardware due to a bad contact
>   and/or short circuit (for M.2 and PCIe mini connectors).
> 
> In any case, from DT perspective, the only thing that makes sense to
> expose are the 4 GPIOs used by the PERST# signal, as the output voltages
> and max currents are fixed.
> 
> Conceptually, IMO, such pullup logic can be considered as part of 
> the physical layer, but, as Rob pointed, all PCIe devices need to
> have PERST#. So, they could be just mapped as gpio-resets at the
> PCIe OF node.
> 
> In summary, IMO, mapping those 4 GPIOs via DT can be done by
> either:
> 
> 1. Place all of them at the PCIe OF node;
> 2. Place all of them at the PHY OF node;
> 3. Place one of them at the PCIe, and the other three at PHY.
> 
> IMO, (3) is messier. So, I would go either for (1) or (2). Between them,
> I don't have any preferences, as both would work.
> 
> Right now, pci-bus.yaml doesn't allow (1), as it limits reset-gpios
> to a maximum of 1 item, but this is easily fixable, but it requires
> a patch against https://github.com/devicetree-org/dt-schema to raise
> MaxItems to at least 4.
> 
> Rob,
> 
> Among the above alternatives, what do you prefer?

At the patch series I mentioned, I'm keeping the PERST# signals as
part of the PHY layer, just because DT currently produces a warning
if maxItems > 1 for gpio-resets for PCI bus.

In the case it was decided to allow the PCI bus to have more than
one PERST# pin, I already sent a patch to DT-schema:

	https://github.com/devicetree-org/dt-schema/pull/56

But I'll need to change the patch series to consider such
approach, if this will be the case.

So, please let me know how do you prefer to proceed with that.

Thanks!
Mauro

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
