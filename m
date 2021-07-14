Return-Path: <SRS0=Fvr8=MG=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAC25C07E9A
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jul 2021 17:42:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 89EC3613CB
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jul 2021 17:42:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 89EC3613CB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=orxTKcQh4igJI2/6OMfRHwI+m/qDTE7VkAlol9R9u6Q=; b=c6G2llBAVm0wJo
	lUdsRTso10p5keTx8HZRu4XWDcSxmmjuJtfkvKoBsPT/8WpbCZRfMpwvmAndMVMkhJqaMAGGr7HIQ
	rGUEi/Of/xKSWiGOpbGrAP10EYbOq5Y/dQEsazSPAcoAhS/QfqiCxwRP2G2PrNOd7H90yTFl0MyMp
	2S2N6z0DS2ns5Z3JSDALYHzzvWam0mkwAtgLY0+C9y1om3yLsSHCDIpI2qzPEq5LFyjZkx+MG2VXa
	GPBH0tyIPU+rOkRKhl5CAyxv4uyD9efyl5mEed0inKPOwOxzSaxaJPZ1sypTauUP9npVIP0U9FbHi
	QpwutJ1ixrouT4YfMF7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m3iu5-00ELCB-23; Wed, 14 Jul 2021 17:42:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3iu1-00ELAR-Mr
 for linux-phy@lists.infradead.org; Wed, 14 Jul 2021 17:42:35 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 84F8E613AB;
 Wed, 14 Jul 2021 17:42:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626284553;
 bh=TkCzfR8l+WPsOeYqxQfU5E9hJqIQYCL4keS+qZTCaUE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Xn8MwWL+QbFcwRBdQbnIVVEdQdQxZ9Rxbe8Z+VWr9PrdXi3BUYwJPIGq85wnPVltZ
 zgDpxKPPwPOwpMhWm+Oq8NpcYL6ct9E5sGOjE879izdAIWdjKeMuaDtxZ0N2JWSxRl
 /zvcXr0KMw7oLyzAKTFi0t91khx5uoPXTjddOBtD7fYqkEILdJTu3+7hcQsHqHMYeq
 McFKAoYYM0JFIGB5NjNdHTXcZUMfJSvr6QywTd9AdzLquifr1f5Al6tHNXgI00gGq+
 3jkaU1Cee9llFcyaE15yQl7SPj0DcbTz8/WYkaTbK/6CmzHvGNQxCNNw8skKKUcySx
 37cU3w0sGS7MQ==
Date: Wed, 14 Jul 2021 23:12:25 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Bjorn Helgaas <helgaas@kernel.org>,
 linuxarm@huawei.com, mauro.chehab@huawei.com,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v5 2/8] dt-bindings: phy: Add bindings for HiKey 970 PCIe
 PHY
Message-ID: <20210714174225.GA8988@workstation>
References: <cover.1626157454.git.mchehab+huawei@kernel.org>
 <baa7e71e13953b28a11fffdcef35195099feb7fd.1626157454.git.mchehab+huawei@kernel.org>
 <20210714022649.GA1324196@robh.at.kernel.org>
 <20210714091435.322d68b1@coco.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210714091435.322d68b1@coco.lan>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210714_104233_864022_5CAE17AA 
X-CRM114-Status: GOOD (  20.51  )
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

Hi Mauro,

On Wed, Jul 14, 2021 at 09:14:35AM +0200, Mauro Carvalho Chehab wrote:
> Em Tue, 13 Jul 2021 20:26:49 -0600
> Rob Herring <robh@kernel.org> escreveu:
> 
> > On Tue, Jul 13, 2021 at 08:28:35AM +0200, Mauro Carvalho Chehab wrote:
> 
> > > +  reset-gpios:
> > > +    description: PCI PERST reset GPIOs
> > > +    maxItems: 4  
> > 
> > Hiding the 4 ports in the phy?
> 
> Rob,
> 
> I'm not trying to hide anything.
> 
> There are several differences with regards to how PERST# is handled between
> HiKey 960 and HiKey 970.
> 
> From hardware perspective, you can see the schematics of both boards:
> 
> 	https://github.com/96boards/documentation/raw/master/consumer/hikey/hikey960/hardware-docs/HiKey960_SoC_Reference_Manual.pdf
> 	https://www.96boards.org/documentation/consumer/hikey/hikey970/hardware-docs/files/hikey970-schematics.pdf
> 
> The 960 PHY has the SoC directly connected to a PCIE M.2 slot 
> (model 10130616) without any external bridge chipset. It uses a single 
> GPIO (GPIO 089) for the PERST# signal, connected via a voltage converter
> (from 1.8V to 3.3V).
> 
> 	$ lspci
> 	00:00.0 PCI bridge: Huawei Technologies Co., Ltd. Device 3660 (rev 01)
> 
> The 970 PHY has an external PCI bridge chipset (PLX Technology PEX 8606).
> Besides the bridge, the hardware comes with an Ethernet PCI adapter, a
> M.2 slot and a mini-PCIe connector. Each one with its own PERST# signal,
> mapped to different GPIO pins, and each one using its own voltage
> converter.
> 
> 	$ lspci
> 	00:00.0 PCI bridge: Huawei Technologies Co., Ltd. Device 3670 (rev 01)
> 	01:00.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
> 	02:01.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
> 	02:04.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
> 	02:05.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
> 	02:07.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
> 	02:09.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
> 	06:00.0 Ethernet controller: Realtek Semiconductor Co., Ltd. RTL8111/8168/8411 PCI Express Gigabit Ethernet Controller (rev 07)
> 
> On other words, there are 4 GPIOs mapped to different PERST# pins in
> the hardware:
> 
> - GPIO 56 is connected to the PERST# pin at PEX 8606;
> - GPIO 25 is connected to the PERST# pin at the M.2 slot;
> - GPIO 220 is connected to the PERST# pin at the PCIe mini slot;
> - GPIO 203 is connected to the PERST# pin at the Ethernet chipset.
> 
> Maybe due to different electrical requirements, the hardware design
> use different GPIOs instead of feeding them altogether.
> 
> Anyway, the fact is that the PHY on 970 has 4 different GPIOs that are
> need in order for the hardware to work. and this is specific to this
> particular PHY.
> 

I'm not sure about this. That fact that the PCIe device's PERST# signal
wired to different GPIOs doesn't mean that those GPIOs belong to the PHY.
Those GPIOs should be independent of the PCIe core controlled manually
by the driver.

I think this issue is somewhat similar to the one we are dealing on the
Qcom platforms [1] where each PCIe device uses a different GPIO and voltage
config to operate. And those need to be active for the link training to
succeed.

So perhaps we should aim for a common solution? The GPIO and voltage
layout should be described in DT for each port exposed by the SoC/board.

Thanks,
Mani

[1] https://lkml.org/lkml/2021/6/21/1524

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
