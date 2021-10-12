Return-Path: <SRS0=98aa=PA=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A009FC433EF
	for <linux-phy@archiver.kernel.org>; Tue, 12 Oct 2021 13:06:30 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 702DD61050
	for <linux-phy@archiver.kernel.org>; Tue, 12 Oct 2021 13:06:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 702DD61050
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LYHa6B/n6xTOy23qlF7UzRuxL8zGsP5FrTlrM2krOx4=; b=eMm9b2pzcKZ24w
	V6NlADn1P+FADu7cdi+DYFI1M/rjSH3BF74z16DU4fgxcxxz45z0xw7/JuMu8n2rpJgvD6RC0yIwu
	tB8lgqxA5Dwnh5ANTAzYEcU8iCuiDMpl4U7OuoD2uofl7cNdspjn5LutIz9l1VV5DyvYAVIQCkX1H
	2aDvWcC7YjF5LCQVk09J/5tdiMF262cBe8s32IP5u4F5bHv0S/5fNxi+LG2g/sc8DoZPl384vH8Rg
	Plgdr6WPO9bfeRtRO/XcoOTKhR2NZ3F2XLlZ88Nk22A3B3LmFcSnOCA1+8jSURHBUkcR5+C5E8G02
	FvHpztvyIGUk9QYGc6OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1maHUE-00CqIz-16; Tue, 12 Oct 2021 13:06:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maHUA-00CqHa-Ld
 for linux-phy@lists.infradead.org; Tue, 12 Oct 2021 13:06:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 84C2FED1;
 Tue, 12 Oct 2021 06:06:22 -0700 (PDT)
Received: from lpieralisi (e121166-lin.cambridge.arm.com [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F1FB63F70D;
 Tue, 12 Oct 2021 06:06:20 -0700 (PDT)
Date: Tue, 12 Oct 2021 14:06:15 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: "Songxiaowei (Kirin_DRV)" <songxiaowei@hisilicon.com>
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Bjorn Helgaas <helgaas@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Linuxarm <linuxarm@huawei.com>,
 Mauro Carvalho Chehab <mauro.chehab@huawei.com>,
 Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
 "Wangbinghui (Biggio, Kirin_DRV)" <wangbinghui@hisilicon.com>,
 Rob Herring <robh@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>
Subject: Re: [PATCH v12 00/11] Add support for Hikey 970 PCIe
Message-ID: <20211012130615.GA27771@lpieralisi>
References: <cd22c1e143b94f55a78d969193847812@hisilicon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cd22c1e143b94f55a78d969193847812@hisilicon.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211012_060626_774845_FCB79E4F 
X-CRM114-Status: GOOD (  28.54  )
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

On Sat, Oct 09, 2021 at 01:44:24AM +0000, Songxiaowei (Kirin_DRV) wrote:
> Ack-by Xiaowei Song.

First of all, you should not top-post:

https://kernelnewbies.org/PatchCulture

Second the format does not match the guidelines:

https://www.kernel.org/doc/html/latest/process/submitting-patches.html

So let's retry to send your ACK a third time please.

Thanks,
Lorenzo

> 
> > Hi Lorenzo,
> > 
> > Em Thu, 7 Oct 2021 15:41:03 +0100
> > Lorenzo Pieralisi <lorenzo.pieralisi@arm.com> escreveu:
> > 
> > > On Tue, Oct 05, 2021 at 01:23:21PM -0500, Bjorn Helgaas wrote:
> > > > [+cc Lorenzo]
> > > > 
> > > > On Tue, Oct 05, 2021 at 11:24:48AM +0200, Mauro Carvalho Chehab wrote:  
> > > > > Hi Bjorn,
> > > > > 
> > > > > Em Tue, 28 Sep 2021 09:34:10 +0200
> > > > > Mauro Carvalho Chehab <mchehab+huawei@kernel.org> escreveu:  
> > > >   
> > > > > >   PCI: kirin: Reorganize the PHY logic inside the driver
> > > > > >   PCI: kirin: Add support for a PHY layer
> > > > > >   PCI: kirin: Use regmap for APB registers
> > > > > >   PCI: kirin: Add support for bridge slot DT schema
> > > > > >   PCI: kirin: Add Kirin 970 compatible
> > > > > >   PCI: kirin: Add MODULE_* macros
> > > > > >   PCI: kirin: Allow building it as a module
> > > > > >   PCI: kirin: Add power_off support for Kirin 960 PHY
> > > > > >   PCI: kirin: fix poweroff sequence
> > > > > >   PCI: kirin: Allow removing the driver  
> > > > > 
> > > > > I guess everything is already satisfying the review feedbacks.
> > > > > If so, could you please merge the PCI ones?  
> > > > 
> > > > Lorenzo takes care of the native host bridge drivers, so I'm sure this
> > > > is on his list.  I added him to cc: in case not.  
> > > 
> > > Ideally I'd like to see these patches ACKed/Review-ed by the kirin
> > > maintainers - that's what I was waiting for and that's what they
> > > are there for.
> > > 
> > > Having said that, I will keep an eye on this series so that we
> > > can hopefully queue it for v5.16.
> > 
> > Not sure if you received the e-mail from Xiaowei with his ack.
> 
> I have not (and it did not make it to linux-pci either).
> 
> > At least here, I only received on my internal e-mail (perhaps because
> > the original e-mail was base64-encoded with gb2312 charset). 
> > 
> > So, let me forward his answer to you, c/c the mailing lists.
> 
> Patches should be acked with tags that tooling recognize, this
> would help me.
> 
> > Thanks,
> > Mauro
> > 
> 
> Thanks.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
