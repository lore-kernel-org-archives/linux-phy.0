Return-Path: <SRS0=zCth=NB=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66311C4338F
	for <linux-phy@archiver.kernel.org>; Tue, 10 Aug 2021 17:14:06 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2854E61076
	for <linux-phy@archiver.kernel.org>; Tue, 10 Aug 2021 17:14:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2854E61076
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=78eZozHE3u7QWilDPZcUWHRpQZs2BqAwIOTOPk/OC+I=; b=GoRfWr5gZv01Ja
	yAhlFMf/JTg3ULVOQaSONnJmXkBkEaDSITDy4fp5bOOwiA5Tkm0VSm7AZNN7Uqh/zTPeSHjLZI5Yp
	slVWkuBdgI/XSITvD/bBF0m+3Z5x3ShOR6Xjbk9VKCxZOoT8Rd4UyRKDoGC11HeGPRlXGldBA5QH6
	7042+ycwYBVAJDSk+AkEHEvHICe14h5LidxO8nhnUzb3LXQpW+B37j0vT7WXamTXdOpGSpsX5Hpz6
	j6wVWDDBSi/95qSKQVvIn1kP0ELdu0pufp7DHC+iPczlOOxrylkqLjp4hJWY9/uSHpBefdGMgomSt
	cC5EfyQZP/Bb8LSr9QmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mDVKH-004WEE-Hq; Tue, 10 Aug 2021 17:14:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mDVKE-004WCw-RO
 for linux-phy@lists.infradead.org; Tue, 10 Aug 2021 17:14:04 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id DC39760EDF
 for <linux-phy@lists.infradead.org>; Tue, 10 Aug 2021 17:14:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628615641;
 bh=3hvStO5mtP89PZL0SRaa4SH5ftb8hZFRahpmKIwYLSE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=MG6Iq0snBaaZQuXZQWLqCyuUmPcDe4ara15oBV0ONmWrge0Q+Z2YRLz0uAfFUqLn6
 JNuFJ6IlHedZbnOHyhYwxfzrv3Ht0vQsWfcWM4iGoxLB25g7bJh7KxMwBcuN1dwwO+
 DnqlnKVO6gJSpcbCS1p+qEuLFdp/duHZR0tvouKj6UsVJRu6NCVBMhFveuGYg8m8/h
 s2L1QeMCEuWYDdqx6gmbguvMntvuI/1WfXYCxsvBEe8NWaKLZH9WsF+blQ8mp/jwPG
 aUUKjGNFRJO76FOkNGtkN0VZwsugwidKXr71aL4I5Qr4R9u0syiyX5nYpQAGqcfd9R
 mCTQaeBmt5fsw==
Received: by mail-qv1-f51.google.com with SMTP id kk23so10645656qvb.6
 for <linux-phy@lists.infradead.org>; Tue, 10 Aug 2021 10:14:01 -0700 (PDT)
X-Gm-Message-State: AOAM533vV/FdA3gUJkDgXLr4GDIvCa25t+2EUMrZN8JDN0wm2AjnmfsZ
 y02mmT+iB7TLPGzas6r46wCyQlM2U+tgdL1PyQ==
X-Google-Smtp-Source: ABdhPJxbSAKX9C/u3IRL3qRUvllPh6YBt2Y4FFNovGdXa5kdn08O6OM4jS0KgVnhRJGXDDBwRTTm6RSX8iS8weAiloo=
X-Received: by 2002:a0c:edb0:: with SMTP id h16mr19355640qvr.11.1628615640933; 
 Tue, 10 Aug 2021 10:14:00 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1627965261.git.mchehab+huawei@kernel.org>
 <CAL_JsqLjw=+szXWJjGe86tMc51NA-5j=jVSXUAWuKeZRuJNJUg@mail.gmail.com>
 <20210804085045.3dddbb9c@coco.lan> <YQrARd7wgYS1nywt@robh.at.kernel.org>
 <20210805094612.2bc2c78f@coco.lan> <20210805095848.464cf85c@coco.lan>
 <CAL_JsqKso=z8LG3ViaggyS1k+1T2F5aAhP3_RNhumQoUUD+bbg@mail.gmail.com>
 <20210810114211.01df0246@coco.lan>
 <CAL_JsqKtXoFeJO6_13U+VsSXNGX_1TQvwOyQYRk5JUgBhvQChA@mail.gmail.com>
 <20210810162054.1aa84b84@coco.lan>
In-Reply-To: <20210810162054.1aa84b84@coco.lan>
From: Rob Herring <robh@kernel.org>
Date: Tue, 10 Aug 2021 11:13:48 -0600
X-Gmail-Original-Message-ID: <CAL_JsqL-R=kTugNAC-C1gfSm6Xnb0Nw_iLcRki8aQMNQjcLN6A@mail.gmail.com>
Message-ID: <CAL_JsqL-R=kTugNAC-C1gfSm6Xnb0Nw_iLcRki8aQMNQjcLN6A@mail.gmail.com>
Subject: Re: [PATCH v3 0/4] DT schema changes for HiKey970 PCIe hardware to
 work
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: Linuxarm <linuxarm@huawei.com>, mauro.chehab@huawei.com, 
 Binghui Wang <wangbinghui@hisilicon.com>, 
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Jingoo Han <jingoohan1@gmail.com>, 
 Xiaowei Song <songxiaowei@hisilicon.com>, devicetree@vger.kernel.org, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 PCI <linux-pci@vger.kernel.org>, linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210810_101402_959064_642A2295 
X-CRM114-Status: GOOD (  39.47  )
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

On Tue, Aug 10, 2021 at 8:21 AM Mauro Carvalho Chehab
<mchehab+huawei@kernel.org> wrote:
>
> Em Tue, 10 Aug 2021 07:44:50 -0600
> Rob Herring <robh@kernel.org> escreveu:
>
> > On Tue, Aug 10, 2021 at 3:42 AM Mauro Carvalho Chehab
> > <mchehab+huawei@kernel.org> wrote:
> > >
> > > Em Fri, 6 Aug 2021 10:23:35 -0600
> > > Rob Herring <robh@kernel.org> escreveu:
> > >
> > > > On Thu, Aug 5, 2021 at 1:58 AM Mauro Carvalho Chehab
> > > > <mchehab+huawei@kernel.org> wrote:
> > > > >
> > > > > Em Thu, 5 Aug 2021 09:46:12 +0200
> > > > > Mauro Carvalho Chehab <mchehab+huawei@kernel.org> escreveu:
> > > > >
> > > > > > Em Wed, 4 Aug 2021 10:28:53 -0600
> > > > > > Rob Herring <robh@kernel.org> escreveu:
> > > > > >
> > > > > > > On Wed, Aug 04, 2021 at 08:50:45AM +0200, Mauro Carvalho Chehab wrote:
> > > > > > > > Em Tue, 3 Aug 2021 16:11:42 -0600
> > > > > > > > Rob Herring <robh+dt@kernel.org> escreveu:
> > > > > > > >
> > > > > > > > > On Mon, Aug 2, 2021 at 10:39 PM Mauro Carvalho Chehab
> > > > > > > > > <mchehab+huawei@kernel.org> wrote:
> > > > > > > > > >
> > > > > > > > > > Hi Rob,
> > > > > > > > > >
> > > > > > > > > > That's the third version of the DT bindings for Kirin 970 PCIE and its
> > > > > > > > > > corresponding PHY.
> > > > > > > > > >
> > > > > > > > > > It is identical to v2, except by:
> > > > > > > > > >         -          pcie@7,0 { // Lane 7: Ethernet
> > > > > > > > > >         +          pcie@7,0 { // Lane 6: Ethernet
> > > > > > > > >
> > > > > > > > > Can you check whether you have DT node links in sysfs for the PCI
> > > > > > > > > devices? If you don't, then something is wrong still in the topology
> > > > > > > > > or the PCI core is failing to set the DT node pointer in struct
> > > > > > > > > device. Though you don't rely on that currently, we want the topology
> > > > > > > > > to match. It's possible this never worked on arm/arm64 as mainly
> > > > > > > > > powerpc relied on this.
> > > > > > > > >
> > > > > > > > > I'd like some way to validate the DT matches the PCI topology. We
> > > > > > > > > could have a tool that generates the DT structure based on the PCI
> > > > > > > > > topology.
> > > > > > > >
> > > > > > > > The of_node node link is on those places:
> > > > > > > >
> > > > > > > >   $ find /sys/devices/platform/soc/f4000000.pcie/ -name of_node
> > > > > > > >   /sys/devices/platform/soc/f4000000.pcie/of_node
> > > > > > > >   /sys/devices/platform/soc/f4000000.pcie/pci0000:00/0000:00:00.0/of_node
> > > > > > > >   /sys/devices/platform/soc/f4000000.pcie/pci0000:00/0000:00:00.0/pci_bus/0000:01/of_node
> > > > > > > >   /sys/devices/platform/soc/f4000000.pcie/pci0000:00/pci_bus/0000:00/of_node
> > > > > > >
> > > > > > > Looks like we're missing some...
> > > > > > >
> > > > > > > It's not immediately obvious to me what's wrong here. Only the root
> > > > > > > bus is getting it's DT node set. The relevant code is pci_scan_device(),
> > > > > > > pci_set_of_node() and pci_set_bus_of_node(). Give me a few days to try
> > > > > > > to reproduce and debug it.
> > > > > >
> > > > > > I added a printk on both pci_set_*of_node() functions:
> > > > > >
> > > > > >       [    4.872991]  (null): pci_set_bus_of_node: of_node: /soc/pcie@f4000000
> > > > > >       [    4.913806]  (null): pci_set_of_node: of_node: /soc/pcie@f4000000
> > > > > >       [    4.978102] pci_bus 0000:01: pci_set_bus_of_node: of_node: /soc/pcie@f4000000/pcie@0,0
> > > > > >       [    4.990622]  (null): pci_set_of_node: of_node: /soc/pcie@f4000000/pcie@0,0
> > > > > >       [    5.052383] pci_bus 0000:02: pci_set_bus_of_node: of_node: (null)
> > > > > >       [    5.059263]  (null): pci_set_of_node: of_node: (null)
> > > > > >       [    5.085552]  (null): pci_set_of_node: of_node: (null)
> > > > > >       [    5.112073]  (null): pci_set_of_node: of_node: (null)
> > > > > >       [    5.138320]  (null): pci_set_of_node: of_node: (null)
> > > > > >       [    5.164673]  (null): pci_set_of_node: of_node: (null)
> > > > > >       [    5.233759] pci_bus 0000:03: pci_set_bus_of_node: of_node: (null)
> > > > > >       [    5.240539]  (null): pci_set_of_node: of_node: (null)
> > > > > >       [    5.310545] pci_bus 0000:04: pci_set_bus_of_node: of_node: (null)
> > > > > >       [    5.324719] pci_bus 0000:05: pci_set_bus_of_node: of_node: (null)
> > > > > >       [    5.338914] pci_bus 0000:06: pci_set_bus_of_node: of_node: (null)
> > > > > >       [    5.345516]  (null): pci_set_of_node: of_node: (null)
> > > > > >       [    5.415795] pci_bus 0000:07: pci_set_bus_of_node: of_node: (null)
> > > > >
> > > > > The enclosed patch makes the above a clearer:
> > > > >
> > > > >         [    4.800975]  (null): pci_set_bus_of_node: of_node: /soc/pcie@f4000000
> > > > >         [    4.855983] pci 0000:00:00.0: pci_set_of_node: of_node: /soc/pcie@f4000000
> > > > >         [    4.879169] pci_bus 0000:01: pci_set_bus_of_node: of_node: /soc/pcie@f4000000/pcie@0,0
> > > > >         [    4.900602] pci 0000:01:00.0: pci_set_of_node: of_node: /soc/pcie@f4000000/pcie@0,0
> > > > >         [    4.953086] pci_bus 0000:02: pci_set_bus_of_node: of_node: (null)
> > > >
> > > > I believe the issue is we need another bridge node in the DT
> > > > hierarchy. What we have is:
> > > >
> > > > Bus 0 is node /soc/pcie@f4000000
> > > > Bus 1 is device 0 on bus 0 is node /soc/pcie@f4000000/pcie@0,0
> > > > Bus 2 is device 0 on bus 1 in node ... whoops, there's no device 0
> > > > under /soc/pcie@f4000000/pcie@0,0
> > > >
> > > > So we need the hierarchy to be: /soc/pcie@f4000000/pcie@0/pcie@0/pcie@{1,5,7}
> > >
> > > Adding a child pcie@0 produces the following output from my debug
> > > patches:
> >
> > You removed your changes to the PCI code other than the debug print?
>
> Yes.
>
> > >
> > > [    4.984278]  (null): pci_set_bus_of_node: of_node: /soc/pcie@f4000000
> > > [    5.042992] pci 0000:00:00.0: pci_set_of_node: of_node: /soc/pcie@f4000000
> > > [    5.083738] pci_bus 0000:01: pci_set_bus_of_node: of_node: /soc/pcie@f4000000/pcie@0,0
> > > [    5.124377] pci 0000:01:00.0: pci_set_of_node: of_node: /soc/pcie@f4000000/pcie@0,0
> > > [    5.168395] pci_bus 0000:02: pci_set_bus_of_node: of_node: /soc/pcie@f4000000/pcie@0,0/pcie@0,0
> > > [    5.200719] pci 0000:02:01.0: pci_set_of_node: of_node: /soc/pcie@f4000000/pcie@0,0/pcie@0,0
> >
> > This should not happen. The devfn doesn't match.
> >
> > > [    5.247777] pci 0000:02:04.0: pci_set_of_node: of_node: /soc/pcie@f4000000/pcie@0,0/pcie@0,0
> > > [    5.276768] pci 0000:02:05.0: pci_set_of_node: of_node: /soc/pcie@f4000000/pcie@0,0/pcie@0,0
> > > [    5.305018] pci 0000:02:07.0: pci_set_of_node: of_node: /soc/pcie@f4000000/pcie@0,0/pcie@0,0
> > > [    5.333093] pci 0000:02:09.0: pci_set_of_node: of_node: /soc/pcie@f4000000/pcie@0,0/pcie@0,0
> > > [    5.395620] pci_bus 0000:03: pci_set_bus_of_node: of_node: (null)
> > > [    5.416333] pci 0000:03:00.0: pci_set_of_node: of_node: (null)
> > > [    5.451353] pci_bus 0000:04: pci_set_bus_of_node: of_node: (null)
> > > [    5.473970] pci_bus 0000:05: pci_set_bus_of_node: of_node: (null)
> > > [    5.487765] pci_bus 0000:06: pci_set_bus_of_node: of_node: (null)
> > > [    5.530219] pci 0000:06:00.0: pci_set_of_node: of_node: (null)
> > > [    5.560896] pci_bus 0000:07: pci_set_bus_of_node: of_node: (null)
> > >
> > > It produces the following sysfs nodes:
> > >
> > >         $ find /sys/devices/platform/soc/f4000000.pcie/ -name of_node
> > >         /sys/devices/platform/soc/f4000000.pcie/of_node
> > >         /sys/devices/platform/soc/f4000000.pcie/pci0000:00/0000:00:00.0/of_node
> > >         /sys/devices/platform/soc/f4000000.pcie/pci0000:00/0000:00:00.0/0000:01:00.0/of_node
> > >         /sys/devices/platform/soc/f4000000.pcie/pci0000:00/0000:00:00.0/0000:01:00.0/pci_bus/0000:02/of_node
> > >         /sys/devices/platform/soc/f4000000.pcie/pci0000:00/0000:00:00.0/pci_bus/0000:01/of_node
> > >         /sys/devices/platform/soc/f4000000.pcie/pci0000:00/pci_bus/0000:00/of_node
> > >
> > >
> > > I'm enclosing the DT schema I'm using.
> > >
> > >
> > >
> > > Thanks,
> > > Mauro
> > >
> > > ---
> > >
> > >                 pcie@f4000000 {
> > >                         compatible = "hisilicon,kirin970-pcie";
> > >                         reg = <0x0 0xf4000000 0x0 0x1000000>,
> > >                               <0x0 0xfc180000 0x0 0x1000>,
> > >                               <0x0 0xf5000000 0x0 0x2000>;
> > >                         reg-names = "dbi", "apb", "config";
> > >                         bus-range = <0x00 0xff>;
> > >                         #address-cells = <3>;
> > >                         #size-cells = <2>;
> > >                         device_type = "pci";
> > >                         phys = <&pcie_phy>;
> > >                         ranges = <0x02000000 0x0 0x00000000
> > >                                   0x0 0xf6000000
> > >                                   0x0 0x02000000>;
> > >                         num-lanes = <1>;
> > >                         #interrupt-cells = <1>;
> > >                         interrupts = <GIC_SPI 283 IRQ_TYPE_LEVEL_HIGH>;
> > >                         interrupt-names = "msi";
> > >                         interrupt-map-mask = <0 0 0 7>;
> > >                         interrupt-map = <0x0 0 0 1
> > >                                          &gic GIC_SPI 282 IRQ_TYPE_LEVEL_HIGH>,
> > >                                         <0x0 0 0 2
> > >                                          &gic GIC_SPI 283 IRQ_TYPE_LEVEL_HIGH>,
> > >                                         <0x0 0 0 3
> > >                                          &gic GIC_SPI 284 IRQ_TYPE_LEVEL_HIGH>,
> > >                                         <0x0 0 0 4
> > >                                          &gic GIC_SPI 285 IRQ_TYPE_LEVEL_HIGH>;
> > >                         reset-gpios = <&gpio7 0 0>;
> > >                         hisilicon,clken-gpios = <&gpio27 3 0>, <&gpio17 0 0>,
> > >                                                 <&gpio20 6 0>;
> > >                         pcie@0,0 { // Lane 0: PCIe switch: Bus 1, Device 0
> > >                                 reg = <0x80 0 0 0 0>;
> >
> > s/0x80/0/
> >
> > >                                 compatible = "pciclass,0604";
> > >                                 device_type = "pci";
> > >                                 #address-cells = <3>;
> > >                                 #size-cells = <2>;
> > >                                 ranges;
> > >                                 bus-range = <0x01 0xff>;
> > >                                 msi-parent = <&its_pcie>;
> > >
> > >                                 pcie@0,0 { // Lane 0: upstream
> > >                                         reg = <0x010000 0 0 0 0>;
> >
> > While technically correct having the bus# in the address, that doesn't
> > work for FDT since we don't know the bus assignment. So we should just
> > use 0.
>
> Using 0 causes DTB compilation to produce a warning, due to the
> bus-range. Without the bus-range, there will be runtime warnings,
> as this will be assigned as bus 1.

Okay, that might be something we need to fix.


> > >                                         compatible = "pciclass,0604";
> > >                                         device_type = "pci";
> > >                                         #address-cells = <3>;
> > >                                         #size-cells = <2>;
> > >                                         ranges;
> > >                                 };
> > >                                 pcie@1,0 { // Lane 4: M.2
> >
> > These 3 nodes (1, 5, 7) need to be child nodes of the above node.

This was the main issue.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
