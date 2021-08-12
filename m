Return-Path: <SRS0=qRVw=ND=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_2 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 40401C4320E
	for <linux-phy@archiver.kernel.org>; Thu, 12 Aug 2021 07:50:17 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EE9976044F
	for <linux-phy@archiver.kernel.org>; Thu, 12 Aug 2021 07:50:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org EE9976044F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bRmdp/rnW00NOoPIETtxKM4V9a9XfDd5TfjwIF35e7I=; b=aEBk3DIPPd/Cs0
	SAN+Cflx43hoHGM8NjgLEyxyEy/JEX1rd4Z20RYjRChBc8H6Cok5KokONJE7RbVV8uZIqaoh797TY
	qXwf68npHDWaB8N7eJH/7FU6VBWLRiY+f8zMHgAll6r9m4t5zoUgtwyxK0sFch6cB/zwkeeIJAG9r
	ptp47iPkLgNhPcaXipJ5IoAwY5JZkqIG3i6k2As0cxGelk8aT7dioTGL3UzkzvPkkSIvlLwUqXIrY
	Uq6Mg9P/2uabBCmFYSYiMR6q8bn5F5e2ifjoTtMGYe1O0pFzEoY/QQjSxgUNM8qoj1BwxnjvGWi1g
	9OxhXlZQJ9lr7xQqTQwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mE5Tj-008z9E-MC; Thu, 12 Aug 2021 07:50:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mE5Rl-008ynh-Jq
 for linux-phy@lists.infradead.org; Thu, 12 Aug 2021 07:48:15 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8C84D6044F;
 Thu, 12 Aug 2021 07:48:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628754492;
 bh=CyN2mPCfM3j2Hf8s0RQ6ZOCusox6Uwiz3cxbwisUK9Y=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=goj28NmLw6K0aBCSpjhlakd71Ui8aT3P15TAEq2tRX5UTYN1tRSFfRaYn+K3GgStT
 4RCKyHlC+KxRt7hGwtV1Te26766lX1BlM/gtI9qrzdMXx1rCF1Um0+q4Fezf3EZZZo
 sV0jKC5L50UdUuf9eI1zsomfFO3gUUDK1G9GDdw74dWM2DgZmPbbgOVdDBGk//ZBf0
 Pda/nW3TK7tqoreMNpQN1rCoAeLYP1AqX8RRZcwwyAtHwvMfI8Po920ZltkkibORwj
 pKPSojrC05WkoRuMAzby2Bf3wmHJ0eKHK0DpOMAz6flMtpvrW1+KWkE9jjcSP1T+gs
 c/bXmY0z6piiw==
Date: Thu, 12 Aug 2021 09:48:06 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Linuxarm <linuxarm@huawei.com>, mauro.chehab@huawei.com, Binghui Wang
 <wangbinghui@hisilicon.com>, Gustavo Pimentel
 <gustavo.pimentel@synopsys.com>, Jingoo Han <jingoohan1@gmail.com>, Xiaowei
 Song <songxiaowei@hisilicon.com>, devicetree@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, PCI
 <linux-pci@vger.kernel.org>, linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 0/4] DT schema changes for HiKey970 PCIe hardware to
 work
Message-ID: <20210812094806.3a6de2a5@coco.lan>
In-Reply-To: <CAL_JsqLg-jD1P3oGDocMaeHWQc+9kLr3gEdantRNUScUq5xsQw@mail.gmail.com>
References: <cover.1627965261.git.mchehab+huawei@kernel.org>
 <CAL_JsqLjw=+szXWJjGe86tMc51NA-5j=jVSXUAWuKeZRuJNJUg@mail.gmail.com>
 <20210804085045.3dddbb9c@coco.lan>
 <YQrARd7wgYS1nywt@robh.at.kernel.org>
 <20210805094612.2bc2c78f@coco.lan>
 <20210805095848.464cf85c@coco.lan>
 <CAL_JsqKso=z8LG3ViaggyS1k+1T2F5aAhP3_RNhumQoUUD+bbg@mail.gmail.com>
 <20210810114211.01df0246@coco.lan>
 <CAL_JsqKtXoFeJO6_13U+VsSXNGX_1TQvwOyQYRk5JUgBhvQChA@mail.gmail.com>
 <20210810162054.1aa84b84@coco.lan>
 <CAL_JsqL-R=kTugNAC-C1gfSm6Xnb0Nw_iLcRki8aQMNQjcLN6A@mail.gmail.com>
 <20210811084648.66ddff29@coco.lan>
 <CAL_JsqLg-jD1P3oGDocMaeHWQc+9kLr3gEdantRNUScUq5xsQw@mail.gmail.com>
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.30; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210812_004813_786780_9035F9FC 
X-CRM114-Status: GOOD (  12.00  )
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

Em Wed, 11 Aug 2021 22:13:32 -0500
Rob Herring <robh@kernel.org> escreveu:

> On Wed, Aug 11, 2021 at 1:46 AM Mauro Carvalho Chehab
> <mchehab+huawei@kernel.org> wrote:
> >
> > Em Tue, 10 Aug 2021 11:13:48 -0600
> > Rob Herring <robh@kernel.org> escreveu:
> >  
> > > > > >                                         compatible = "pciclass,0604";
> > > > > >                                         device_type = "pci";
> > > > > >                                         #address-cells = <3>;
> > > > > >                                         #size-cells = <2>;
> > > > > >                                         ranges;
> > > > > >                                 };
> > > > > >                                 pcie@1,0 { // Lane 4: M.2  
> > > > >
> > > > > These 3 nodes (1, 5, 7) need to be child nodes of the above node.  
> > >
> > > This was the main issue.  
> >
> > Ok, placing 1, 5, 7 as child nodes of 0 worked, with the attached
> > DT schema:
> >
> >
> >         $ ls -l $(find /sys/devices/platform/soc/f4000000.pcie/ -name of_node)
> >         lrwxrwxrwx 1 root root 0 ago 11 08:43 /sys/devices/platform/soc/f4000000.pcie/of_node -> ../../../../firmware/devicetree/base/soc/pcie@f4000000
> >         lrwxrwxrwx 1 root root 0 ago 11 08:43 /sys/devices/platform/soc/f4000000.pcie/pci0000:00/0000:00:00.0/0000:01:00.0/0000:02:01.0/of_node -> ../../../../../../../../firmware/devicetree/base/soc/pcie@f4000000/pcie@0,0/pcie@0,0/pcie@1,0
> >         lrwxrwxrwx 1 root root 0 ago 11 08:43 /sys/devices/platform/soc/f4000000.pcie/pci0000:00/0000:00:00.0/0000:01:00.0/0000:02:01.0/pci_bus/0000:03/of_node -> ../../../../../../../../../../firmware/devicetree/base/soc/pcie@f4000000/pcie@0,0/pcie@0,0/pcie@1,0
> >         lrwxrwxrwx 1 root root 0 ago 11 08:43 /sys/devices/platform/soc/f4000000.pcie/pci0000:00/0000:00:00.0/0000:01:00.0/0000:02:05.0/of_node -> ../../../../../../../../firmware/devicetree/base/soc/pcie@f4000000/pcie@0,0/pcie@0,0/pcie@5,0
> >         lrwxrwxrwx 1 root root 0 ago 11 08:43 /sys/devices/platform/soc/f4000000.pcie/pci0000:00/0000:00:00.0/0000:01:00.0/0000:02:05.0/pci_bus/0000:05/of_node -> ../../../../../../../../../../firmware/devicetree/base/soc/pcie@f4000000/pcie@0,0/pcie@0,0/pcie@5,0
> >         lrwxrwxrwx 1 root root 0 ago 11 08:43 /sys/devices/platform/soc/f4000000.pcie/pci0000:00/0000:00:00.0/0000:01:00.0/0000:02:07.0/of_node -> ../../../../../../../../firmware/devicetree/base/soc/pcie@f4000000/pcie@0,0/pcie@0,0/pcie@7,0
> >         lrwxrwxrwx 1 root root 0 ago 11 08:43 /sys/devices/platform/soc/f4000000.pcie/pci0000:00/0000:00:00.0/0000:01:00.0/0000:02:07.0/pci_bus/0000:06/of_node -> ../../../../../../../../../../firmware/devicetree/base/soc/pcie@f4000000/pcie@0,0/pcie@0,0/pcie@7,0
> >         lrwxrwxrwx 1 root root 0 ago 11 08:43 /sys/devices/platform/soc/f4000000.pcie/pci0000:00/0000:00:00.0/0000:01:00.0/of_node -> ../../../../../../../firmware/devicetree/base/soc/pcie@f4000000/pcie@0,0/pcie@0,0
> >         lrwxrwxrwx 1 root root 0 ago 11 08:43 /sys/devices/platform/soc/f4000000.pcie/pci0000:00/0000:00:00.0/0000:01:00.0/pci_bus/0000:02/of_node -> ../../../../../../../../../firmware/devicetree/base/soc/pcie@f4000000/pcie@0,0/pcie@0,0
> >         lrwxrwxrwx 1 root root 0 ago 11 08:43 /sys/devices/platform/soc/f4000000.pcie/pci0000:00/0000:00:00.0/of_node -> ../../../../../../firmware/devicetree/base/soc/pcie@f4000000/pcie@0,0
> >         lrwxrwxrwx 1 root root 0 ago 11 08:43 /sys/devices/platform/soc/f4000000.pcie/pci0000:00/0000:00:00.0/pci_bus/0000:01/of_node -> ../../../../../../../../firmware/devicetree/base/soc/pcie@f4000000/pcie@0,0
> >         lrwxrwxrwx 1 root root 0 ago 11 08:43 /sys/devices/platform/soc/f4000000.pcie/pci0000:00/pci_bus/0000:00/of_node -> ../../../../../../../firmware/devicetree/base/soc/pcie@f4000000  
> 
> This all looks right to me, but...
> 
> > The logs also seem OK on my eyes:
> >
> >         [    3.911082]  (null): pci_set_bus_of_node: of_node: /soc/pcie@f4000000
> >         [    4.001104] pci 0000:00:00.0: pci_set_of_node: of_node: /soc/pcie@f4000000
> >         [    4.043609] pci_bus 0000:01: pci_set_bus_of_node: of_node: /soc/pcie@f4000000/pcie@0,0
> >         [    4.076756] pci 0000:01:00.0: pci_set_of_node: of_node: /soc/pcie@f4000000/pcie@0,0
> >         [    4.120652] pci_bus 0000:02: pci_set_bus_of_node: of_node: /soc/pcie@f4000000/pcie@0,0/pcie@0,0
> >         [    4.150766] pci 0000:02:01.0: pci_set_of_node: of_node: /soc/pcie@f4000000/pcie@0,0/pcie@0,0
> >         [    4.196413] pci 0000:02:04.0: pci_set_of_node: of_node: /soc/pcie@f4000000/pcie@0,0/pcie@0,0
> >         [    4.238896] pci 0000:02:05.0: pci_set_of_node: of_node: /soc/pcie@f4000000/pcie@0,0/pcie@0,0
> >         [    4.280116] pci 0000:02:07.0: pci_set_of_node: of_node: /soc/pcie@f4000000/pcie@0,0/pcie@0,0
> >         [    4.309821] pci 0000:02:09.0: pci_set_of_node: of_node: /soc/pcie@f4000000/pcie@0,0/pcie@0,0  
> 
> ...these do not.

For the above:

	s/of_node:/BUS of_node:/

The debug printk is misleading. It is actually printing the BUS of_node:

	void pci_set_of_node(struct pci_dev *dev)
	{
		dev_dbg(&dev->dev, "%s: of_node: %pOF\n",
			__func__, dev->bus->dev.of_node);

		if (!dev->bus->dev.of_node)
			return;
	...

If I move it to the right place, e. g.:

	void pci_set_of_node(struct pci_dev *dev)
	{
		if (!dev->bus->dev.of_node) {
			dev_dbg(&dev->dev, "%s: BUS of_node is null\n",
				__func__, dev->bus->dev.of_node);
			return;
		}
		dev->dev.of_node = of_pci_find_child_device(dev->bus->dev.of_node,
							    dev->devfn);
		if (dev->dev.of_node)
			dev->dev.fwnode = &dev->dev.of_node->fwnode;

		dev_dbg(&dev->dev, "%s: of_node: %pOF\n",
			__func__, dev->dev.of_node);
	}

It will produce:

	[    4.155771]  (null): pci_set_bus_of_node: of_node: /soc/pcie@f4000000
	[    4.208740] pci 0000:00:00.0: pci_set_of_node: of_node: /soc/pcie@f4000000/pcie@0,0
	[    4.236759] pci_bus 0000:01: pci_set_bus_of_node: of_node: /soc/pcie@f4000000/pcie@0,0
	[    4.257899] pci 0000:01:00.0: pci_set_of_node: of_node: /soc/pcie@f4000000/pcie@0,0/pcie@0,0
	[    4.310350] pci_bus 0000:02: pci_set_bus_of_node: of_node: /soc/pcie@f4000000/pcie@0,0/pcie@0,0
	[    4.337784] pci 0000:02:01.0: pci_set_of_node: of_node: /soc/pcie@f4000000/pcie@0,0/pcie@0,0/pcie@1,0
	[    4.370998] pci 0000:02:04.0: pci_set_of_node: of_node: (null)
	[    4.391459] pci 0000:02:05.0: pci_set_of_node: of_node: /soc/pcie@f4000000/pcie@0,0/pcie@0,0/pcie@5,0
	[    4.415378] pci 0000:02:07.0: pci_set_of_node: of_node: /soc/pcie@f4000000/pcie@0,0/pcie@0,0/pcie@7,0
	[    4.439420] pci 0000:02:09.0: pci_set_of_node: of_node: (null)
	[    4.494288] pci_bus 0000:03: pci_set_bus_of_node: of_node: /soc/pcie@f4000000/pcie@0,0/pcie@0,0/pcie@1,0
	[    4.511394] pci_bus 0000:04: pci_set_bus_of_node: of_node: (null)
	[    4.525084] pci_bus 0000:05: pci_set_bus_of_node: of_node: /soc/pcie@f4000000/pcie@0,0/pcie@0,0/pcie@5,0
	[    4.542173] pci_bus 0000:06: pci_set_bus_of_node: of_node: /soc/pcie@f4000000/pcie@0,0/pcie@0,0/pcie@7,0
	[    4.578575] pci 0000:06:00.0: pci_set_of_node: of_node: (null)
	[    4.612159] pci_bus 0000:07: pci_set_bus_of_node: of_node: (null)

Which reflects the PCIe topology.

Thanks,
Mauro

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
