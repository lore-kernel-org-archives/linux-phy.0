Return-Path: <SRS0=nKrG=M4=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_2 autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C15F2C4338F
	for <linux-phy@archiver.kernel.org>; Thu,  5 Aug 2021 07:58:59 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 87A1B6105A
	for <linux-phy@archiver.kernel.org>; Thu,  5 Aug 2021 07:58:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 87A1B6105A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C89L0bmn7didyUB7Vn7Tth+vSACdNBKAoJ6bPvfp9LE=; b=1FW4oktO7ATbAS
	xEi0M6Pzd22JEk1F42H1AXG2eRRGBgZ3HtsZO3Sp2JidwlXSFWqtUNRmjEpyPFSLExlSoon2dspU1
	pUj0OIls++MSQzrRVRqXIdSlPusYKXFqDTAjfHX6SH6cZpZIVDWUrermzHm1JHutCyVKLlykEeoqs
	cD0y4cxQoMLMMJNwXm5dsf6dEPmmpkWUXZsH65ky/MhiuJ7j8388Mr7hUAScFL49jLQzd0eZZNQYx
	/vj+jR2RCz1ezhCOfXNmiOnP6V+2rqfzOOOc8aFmW3oxcv/UjH8EnVUgCUyJ2XYuJOYK7KfjnrElu
	Nz2VWhn50ROtAhm9yRrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBYHL-008X39-0x; Thu, 05 Aug 2021 07:58:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBYHH-008X12-EM
 for linux-phy@lists.infradead.org; Thu, 05 Aug 2021 07:58:57 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5C0FD6104F;
 Thu,  5 Aug 2021 07:58:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628150334;
 bh=VLknsodvrM25ND+q2Zj+641W3Gv+7CB4psNdhS3kxz0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=VqhbEXN5PI6DwUvKqtkn10XVO4YuIhff+eXWTy/yKXc2ryKsB2ee4ld53RF3jkXiV
 wfNL+0fiIj85UnbD6dOm3jv8FemjEV5wmYRhL2oRRG7FYDMmmsb9lHHQEOYe7dVyFk
 l67GzvhfmmJsTRbgdEtvP0+ja5y7TqMG6YNPlGKGjx0OwwH8gKRsQOMC32nk5yu5uc
 yf98mveCx4kZ/VL53vaQWam1C0obOVcxw2yW3Zs2MTTFuOUufowYDX9IwEfTFLzW5v
 aSe0rAn3UuuXdWONRxFuDb3ZcfFN7JG4XYHuG8peANPnUSelyFhuIjvLxyHzlMtlvw
 guyAgaus/K/wQ==
Date: Thu, 5 Aug 2021 09:58:48 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Rob Herring <robh@kernel.org>, Linuxarm <linuxarm@huawei.com>,
 mauro.chehab@huawei.com
Cc: Binghui Wang <wangbinghui@hisilicon.com>, Gustavo Pimentel
 <gustavo.pimentel@synopsys.com>, Jingoo Han <jingoohan1@gmail.com>, Xiaowei
 Song <songxiaowei@hisilicon.com>, devicetree@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, PCI
 <linux-pci@vger.kernel.org>, linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 0/4] DT schema changes for HiKey970 PCIe hardware to
 work
Message-ID: <20210805095848.464cf85c@coco.lan>
In-Reply-To: <20210805094612.2bc2c78f@coco.lan>
References: <cover.1627965261.git.mchehab+huawei@kernel.org>
 <CAL_JsqLjw=+szXWJjGe86tMc51NA-5j=jVSXUAWuKeZRuJNJUg@mail.gmail.com>
 <20210804085045.3dddbb9c@coco.lan>
 <YQrARd7wgYS1nywt@robh.at.kernel.org>
 <20210805094612.2bc2c78f@coco.lan>
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.30; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210805_005855_618725_17B88F5E 
X-CRM114-Status: GOOD (  28.53  )
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

Em Thu, 5 Aug 2021 09:46:12 +0200
Mauro Carvalho Chehab <mchehab+huawei@kernel.org> escreveu:

> Em Wed, 4 Aug 2021 10:28:53 -0600
> Rob Herring <robh@kernel.org> escreveu:
> 
> > On Wed, Aug 04, 2021 at 08:50:45AM +0200, Mauro Carvalho Chehab wrote:  
> > > Em Tue, 3 Aug 2021 16:11:42 -0600
> > > Rob Herring <robh+dt@kernel.org> escreveu:
> > >     
> > > > On Mon, Aug 2, 2021 at 10:39 PM Mauro Carvalho Chehab
> > > > <mchehab+huawei@kernel.org> wrote:    
> > > > >
> > > > > Hi Rob,
> > > > >
> > > > > That's the third version of the DT bindings for Kirin 970 PCIE and its
> > > > > corresponding PHY.
> > > > >
> > > > > It is identical to v2, except by:
> > > > >         -          pcie@7,0 { // Lane 7: Ethernet
> > > > >         +          pcie@7,0 { // Lane 6: Ethernet      
> > > > 
> > > > Can you check whether you have DT node links in sysfs for the PCI
> > > > devices? If you don't, then something is wrong still in the topology
> > > > or the PCI core is failing to set the DT node pointer in struct
> > > > device. Though you don't rely on that currently, we want the topology
> > > > to match. It's possible this never worked on arm/arm64 as mainly
> > > > powerpc relied on this.
> > > >
> > > > I'd like some way to validate the DT matches the PCI topology. We
> > > > could have a tool that generates the DT structure based on the PCI
> > > > topology.    
> > > 
> > > The of_node node link is on those places:
> > > 
> > > 	$ find /sys/devices/platform/soc/f4000000.pcie/ -name of_node
> > > 	/sys/devices/platform/soc/f4000000.pcie/of_node
> > > 	/sys/devices/platform/soc/f4000000.pcie/pci0000:00/0000:00:00.0/of_node
> > > 	/sys/devices/platform/soc/f4000000.pcie/pci0000:00/0000:00:00.0/pci_bus/0000:01/of_node
> > > 	/sys/devices/platform/soc/f4000000.pcie/pci0000:00/pci_bus/0000:00/of_node    
> > 
> > Looks like we're missing some... 
> > 
> > It's not immediately obvious to me what's wrong here. Only the root 
> > bus is getting it's DT node set. The relevant code is pci_scan_device(), 
> > pci_set_of_node() and pci_set_bus_of_node(). Give me a few days to try 
> > to reproduce and debug it.  
> 
> I added a printk on both pci_set_*of_node() functions:
> 
> 	[    4.872991]  (null): pci_set_bus_of_node: of_node: /soc/pcie@f4000000
> 	[    4.913806]  (null): pci_set_of_node: of_node: /soc/pcie@f4000000
> 	[    4.978102] pci_bus 0000:01: pci_set_bus_of_node: of_node: /soc/pcie@f4000000/pcie@0,0
> 	[    4.990622]  (null): pci_set_of_node: of_node: /soc/pcie@f4000000/pcie@0,0
> 	[    5.052383] pci_bus 0000:02: pci_set_bus_of_node: of_node: (null)
> 	[    5.059263]  (null): pci_set_of_node: of_node: (null)
> 	[    5.085552]  (null): pci_set_of_node: of_node: (null)
> 	[    5.112073]  (null): pci_set_of_node: of_node: (null)
> 	[    5.138320]  (null): pci_set_of_node: of_node: (null)
> 	[    5.164673]  (null): pci_set_of_node: of_node: (null)
> 	[    5.233759] pci_bus 0000:03: pci_set_bus_of_node: of_node: (null)
> 	[    5.240539]  (null): pci_set_of_node: of_node: (null)
> 	[    5.310545] pci_bus 0000:04: pci_set_bus_of_node: of_node: (null)
> 	[    5.324719] pci_bus 0000:05: pci_set_bus_of_node: of_node: (null)
> 	[    5.338914] pci_bus 0000:06: pci_set_bus_of_node: of_node: (null)
> 	[    5.345516]  (null): pci_set_of_node: of_node: (null)
> 	[    5.415795] pci_bus 0000:07: pci_set_bus_of_node: of_node: (null)

The enclosed patch makes the above a clearer:

	[    4.800975]  (null): pci_set_bus_of_node: of_node: /soc/pcie@f4000000
	[    4.855983] pci 0000:00:00.0: pci_set_of_node: of_node: /soc/pcie@f4000000
	[    4.879169] pci_bus 0000:01: pci_set_bus_of_node: of_node: /soc/pcie@f4000000/pcie@0,0
	[    4.900602] pci 0000:01:00.0: pci_set_of_node: of_node: /soc/pcie@f4000000/pcie@0,0
	[    4.953086] pci_bus 0000:02: pci_set_bus_of_node: of_node: (null)
	[    4.968821] pci 0000:02:01.0: pci_set_of_node: of_node: (null)
	[    5.003538] pci 0000:02:04.0: pci_set_of_node: of_node: (null)
	[    5.041348] pci 0000:02:05.0: pci_set_of_node: of_node: (null)
	[    5.092770] pci 0000:02:07.0: pci_set_of_node: of_node: (null)
	[    5.118298] pci 0000:02:09.0: pci_set_of_node: of_node: (null)
	[    5.178215] pci_bus 0000:03: pci_set_bus_of_node: of_node: (null)
	[    5.198433] pci 0000:03:00.0: pci_set_of_node: of_node: (null)
	[    5.233330] pci_bus 0000:04: pci_set_bus_of_node: of_node: (null)
	[    5.247071] pci_bus 0000:05: pci_set_bus_of_node: of_node: (null)
	[    5.260898] pci_bus 0000:06: pci_set_bus_of_node: of_node: (null)
	[    5.293764] pci 0000:06:00.0: pci_set_of_node: of_node: (null)
	[    5.332808] pci_bus 0000:07: pci_set_bus_of_node: of_node: (null)

> 
> It sounds that the parent is missing when pci_set_bus_of_node() is
> called on some places. I'll try to identify why.
> 
> Thanks,
> Mauro

Thanks,
Mauro

[PATCH] pci: setup PCI before setting the OF node

With this change, it is easier to add a debug printk at
pci_set_of_node() in order to address possible issues.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>

diff --git a/drivers/pci/probe.c b/drivers/pci/probe.c
index 79177ac37880..c5dfc1afb1d3 100644
--- a/drivers/pci/probe.c
+++ b/drivers/pci/probe.c
@@ -2374,15 +2374,14 @@ static struct pci_dev *pci_scan_device(struct pci_bus *bus, int devfn)
 	dev->vendor = l & 0xffff;
 	dev->device = (l >> 16) & 0xffff;
 
-	pci_set_of_node(dev);
-
 	if (pci_setup_device(dev)) {
-		pci_release_of_node(dev);
 		pci_bus_put(dev->bus);
 		kfree(dev);
 		return NULL;
 	}
 
+	pci_set_of_node(dev);
+
 	return dev;
 }
 



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
