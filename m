Return-Path: <SRS0=N/27=M5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE95BC4320A
	for <linux-phy@archiver.kernel.org>; Fri,  6 Aug 2021 16:23:53 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 75C23611CA
	for <linux-phy@archiver.kernel.org>; Fri,  6 Aug 2021 16:23:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 75C23611CA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rb8fClQgSTkwfoBHQmZ9dTfQ5RyE/Wd2isxJy3bWDwQ=; b=R0VQYSzjNW7uL1
	EAMvUr56cmKrJfa/V+y0DYxIr3vquXrzlA87mlF1lpIAwbH9SuvW7fFHPrHuLfdyGeEv247Kabru+
	Gy2ILOoqdklhSCYjoHEsJNjzLdaFGRAMg3tDyHFLNLjwSHPluUccTrf5we3c9B+KD475YD/lHCsVz
	NyBSEJtzK2oSHSP8uDKvx//b/Qln9GWQfK4F59LA+bXoHlN6aGauBTh0rtnnORKBVz9+4+Id/pnBD
	hwDTREnbBEW9yeiAY5m/dMr8YMpM364muEyQ+T9nUasNVaXt/hORNgzWpA89TAJSt90yMYbpP4+KR
	RzifJGoWIoNDzZtzA3Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mC2dU-00Cxx5-Rx; Fri, 06 Aug 2021 16:23:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mC2dS-00CxwF-1P
 for linux-phy@lists.infradead.org; Fri, 06 Aug 2021 16:23:51 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0DA4A611BF
 for <linux-phy@lists.infradead.org>; Fri,  6 Aug 2021 16:23:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628267029;
 bh=ty09/fANA+AaGrdFgiDJV6XUc9mA5WlqFGlxLtHeCkk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=nh1X7AYI2SpnDgYGEGdB308YJJC2wKemKrWUG/4GpawrksGQk/WWgEqQfsnkiIbPg
 ni2K6Ws3qYLGZqFR7ioShg1lQufUlkX9iN74koEamayIxMgEBJ2sqENQx0YvNUGhcB
 arkxFo/RTUWmbE2GZwHAVUH+zouylzowoHRJ6XjRtOWy403qzHIjihyyS7Slbq4xga
 HLZ5PaVzNdCceISnS5RN/TJ4+0gidvAqEkClXY4fcUFwC5T/X26Kj35D9lE0Q11+VH
 ahJ4aoGavzVWAOfOI9FecvaGbPNrz91ozlkvUZv8xe294IvxUcQZ/HIXWBM8kSBV18
 Svoc4ZvFn07bw==
Received: by mail-ej1-f45.google.com with SMTP id hs10so16028889ejc.0
 for <linux-phy@lists.infradead.org>; Fri, 06 Aug 2021 09:23:48 -0700 (PDT)
X-Gm-Message-State: AOAM533KlEAWZX6ThK0QN9k4qBM9Y4APGs4QEQ+3LuTMDF6Dj2HNqom9
 Nk//eIS8SgacIWQezmdYIRN4xxjjt5HpdvI+1g==
X-Google-Smtp-Source: ABdhPJwuUx8QjZdGDDM7P5slP1wzk+qqeyMJSv+CHKKN77QK/ubEn42xQa4s0696lJ4xkH4ylKUBy7+/jIXhiQ/49jk=
X-Received: by 2002:a17:906:d287:: with SMTP id
 ay7mr10250474ejb.360.1628267027568; 
 Fri, 06 Aug 2021 09:23:47 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1627965261.git.mchehab+huawei@kernel.org>
 <CAL_JsqLjw=+szXWJjGe86tMc51NA-5j=jVSXUAWuKeZRuJNJUg@mail.gmail.com>
 <20210804085045.3dddbb9c@coco.lan> <YQrARd7wgYS1nywt@robh.at.kernel.org>
 <20210805094612.2bc2c78f@coco.lan> <20210805095848.464cf85c@coco.lan>
In-Reply-To: <20210805095848.464cf85c@coco.lan>
From: Rob Herring <robh@kernel.org>
Date: Fri, 6 Aug 2021 10:23:35 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKso=z8LG3ViaggyS1k+1T2F5aAhP3_RNhumQoUUD+bbg@mail.gmail.com>
Message-ID: <CAL_JsqKso=z8LG3ViaggyS1k+1T2F5aAhP3_RNhumQoUUD+bbg@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20210806_092350_162370_976E040C 
X-CRM114-Status: GOOD (  26.96  )
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

On Thu, Aug 5, 2021 at 1:58 AM Mauro Carvalho Chehab
<mchehab+huawei@kernel.org> wrote:
>
> Em Thu, 5 Aug 2021 09:46:12 +0200
> Mauro Carvalho Chehab <mchehab+huawei@kernel.org> escreveu:
>
> > Em Wed, 4 Aug 2021 10:28:53 -0600
> > Rob Herring <robh@kernel.org> escreveu:
> >
> > > On Wed, Aug 04, 2021 at 08:50:45AM +0200, Mauro Carvalho Chehab wrote:
> > > > Em Tue, 3 Aug 2021 16:11:42 -0600
> > > > Rob Herring <robh+dt@kernel.org> escreveu:
> > > >
> > > > > On Mon, Aug 2, 2021 at 10:39 PM Mauro Carvalho Chehab
> > > > > <mchehab+huawei@kernel.org> wrote:
> > > > > >
> > > > > > Hi Rob,
> > > > > >
> > > > > > That's the third version of the DT bindings for Kirin 970 PCIE and its
> > > > > > corresponding PHY.
> > > > > >
> > > > > > It is identical to v2, except by:
> > > > > >         -          pcie@7,0 { // Lane 7: Ethernet
> > > > > >         +          pcie@7,0 { // Lane 6: Ethernet
> > > > >
> > > > > Can you check whether you have DT node links in sysfs for the PCI
> > > > > devices? If you don't, then something is wrong still in the topology
> > > > > or the PCI core is failing to set the DT node pointer in struct
> > > > > device. Though you don't rely on that currently, we want the topology
> > > > > to match. It's possible this never worked on arm/arm64 as mainly
> > > > > powerpc relied on this.
> > > > >
> > > > > I'd like some way to validate the DT matches the PCI topology. We
> > > > > could have a tool that generates the DT structure based on the PCI
> > > > > topology.
> > > >
> > > > The of_node node link is on those places:
> > > >
> > > >   $ find /sys/devices/platform/soc/f4000000.pcie/ -name of_node
> > > >   /sys/devices/platform/soc/f4000000.pcie/of_node
> > > >   /sys/devices/platform/soc/f4000000.pcie/pci0000:00/0000:00:00.0/of_node
> > > >   /sys/devices/platform/soc/f4000000.pcie/pci0000:00/0000:00:00.0/pci_bus/0000:01/of_node
> > > >   /sys/devices/platform/soc/f4000000.pcie/pci0000:00/pci_bus/0000:00/of_node
> > >
> > > Looks like we're missing some...
> > >
> > > It's not immediately obvious to me what's wrong here. Only the root
> > > bus is getting it's DT node set. The relevant code is pci_scan_device(),
> > > pci_set_of_node() and pci_set_bus_of_node(). Give me a few days to try
> > > to reproduce and debug it.
> >
> > I added a printk on both pci_set_*of_node() functions:
> >
> >       [    4.872991]  (null): pci_set_bus_of_node: of_node: /soc/pcie@f4000000
> >       [    4.913806]  (null): pci_set_of_node: of_node: /soc/pcie@f4000000
> >       [    4.978102] pci_bus 0000:01: pci_set_bus_of_node: of_node: /soc/pcie@f4000000/pcie@0,0
> >       [    4.990622]  (null): pci_set_of_node: of_node: /soc/pcie@f4000000/pcie@0,0
> >       [    5.052383] pci_bus 0000:02: pci_set_bus_of_node: of_node: (null)
> >       [    5.059263]  (null): pci_set_of_node: of_node: (null)
> >       [    5.085552]  (null): pci_set_of_node: of_node: (null)
> >       [    5.112073]  (null): pci_set_of_node: of_node: (null)
> >       [    5.138320]  (null): pci_set_of_node: of_node: (null)
> >       [    5.164673]  (null): pci_set_of_node: of_node: (null)
> >       [    5.233759] pci_bus 0000:03: pci_set_bus_of_node: of_node: (null)
> >       [    5.240539]  (null): pci_set_of_node: of_node: (null)
> >       [    5.310545] pci_bus 0000:04: pci_set_bus_of_node: of_node: (null)
> >       [    5.324719] pci_bus 0000:05: pci_set_bus_of_node: of_node: (null)
> >       [    5.338914] pci_bus 0000:06: pci_set_bus_of_node: of_node: (null)
> >       [    5.345516]  (null): pci_set_of_node: of_node: (null)
> >       [    5.415795] pci_bus 0000:07: pci_set_bus_of_node: of_node: (null)
>
> The enclosed patch makes the above a clearer:
>
>         [    4.800975]  (null): pci_set_bus_of_node: of_node: /soc/pcie@f4000000
>         [    4.855983] pci 0000:00:00.0: pci_set_of_node: of_node: /soc/pcie@f4000000
>         [    4.879169] pci_bus 0000:01: pci_set_bus_of_node: of_node: /soc/pcie@f4000000/pcie@0,0
>         [    4.900602] pci 0000:01:00.0: pci_set_of_node: of_node: /soc/pcie@f4000000/pcie@0,0
>         [    4.953086] pci_bus 0000:02: pci_set_bus_of_node: of_node: (null)

I believe the issue is we need another bridge node in the DT
hierarchy. What we have is:

Bus 0 is node /soc/pcie@f4000000
Bus 1 is device 0 on bus 0 is node /soc/pcie@f4000000/pcie@0,0
Bus 2 is device 0 on bus 1 in node ... whoops, there's no device 0
under /soc/pcie@f4000000/pcie@0,0

So we need the hierarchy to be: /soc/pcie@f4000000/pcie@0/pcie@0/pcie@{1,5,7}

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
