Return-Path: <SRS0=xS6O=O3=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7626AC433F5
	for <linux-phy@archiver.kernel.org>; Thu,  7 Oct 2021 14:41:21 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 494316113E
	for <linux-phy@archiver.kernel.org>; Thu,  7 Oct 2021 14:41:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 494316113E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0byKzskhlWJUyRcmMAucF7eH3tH+5hKW18c/7jWyBiI=; b=kWuTS5BF2+RoKa
	+lyfiDacW1Du49FeSeK170e7GNU63mZnQiIg04CZyjvXlalOoHe5XN3NsBL9+50tm7fWtvCbHPQad
	WfzsBV27z3nvxOp+XmLK6oXwvvkwC1bKZM4k/MdrIvDVxUiYqBZ2vajwaDsJwiQKCtQCpqZQGLhOp
	f7P1L2yrD7PWe1H42RjzE4Rz1cWscBclyqu9wfOqoi16sNN2NoaLVmTiaw48hr/mrlBcbkdqgtayK
	poBVJcNCTCqj2Q7rAeTQAwvbMh21M6jog+o624qyKb7O6f5MenDJCQC1GJxRcXWUdewC4x/ZB64vV
	9gjtieWUThl55YdbNfyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mYUaG-0002GJ-L4; Thu, 07 Oct 2021 14:41:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mYUaC-0002BK-5a
 for linux-phy@lists.infradead.org; Thu, 07 Oct 2021 14:41:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F30291FB;
 Thu,  7 Oct 2021 07:41:09 -0700 (PDT)
Received: from lpieralisi (e121166-lin.cambridge.arm.com [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6DCAF3F66F;
 Thu,  7 Oct 2021 07:41:08 -0700 (PDT)
Date: Thu, 7 Oct 2021 15:41:03 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, linuxarm@huawei.com,
 mauro.chehab@huawei.com,
 Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
 Binghui Wang <wangbinghui@hisilicon.com>, Rob Herring <robh@kernel.org>,
 Xiaowei Song <songxiaowei@hisilicon.com>,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH v12 00/11] Add support for Hikey 970 PCIe
Message-ID: <20211007144103.GA23778@lpieralisi>
References: <20211005112448.2c40dc10@coco.lan>
 <20211005182321.GA1106986@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211005182321.GA1106986@bhelgaas>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211007_074116_272406_8B9BE97C 
X-CRM114-Status: GOOD (  15.99  )
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

On Tue, Oct 05, 2021 at 01:23:21PM -0500, Bjorn Helgaas wrote:
> [+cc Lorenzo]
> 
> On Tue, Oct 05, 2021 at 11:24:48AM +0200, Mauro Carvalho Chehab wrote:
> > Hi Bjorn,
> > 
> > Em Tue, 28 Sep 2021 09:34:10 +0200
> > Mauro Carvalho Chehab <mchehab+huawei@kernel.org> escreveu:
> 
> > >   PCI: kirin: Reorganize the PHY logic inside the driver
> > >   PCI: kirin: Add support for a PHY layer
> > >   PCI: kirin: Use regmap for APB registers
> > >   PCI: kirin: Add support for bridge slot DT schema
> > >   PCI: kirin: Add Kirin 970 compatible
> > >   PCI: kirin: Add MODULE_* macros
> > >   PCI: kirin: Allow building it as a module
> > >   PCI: kirin: Add power_off support for Kirin 960 PHY
> > >   PCI: kirin: fix poweroff sequence
> > >   PCI: kirin: Allow removing the driver
> > 
> > I guess everything is already satisfying the review feedbacks.
> > If so, could you please merge the PCI ones?
> 
> Lorenzo takes care of the native host bridge drivers, so I'm sure this
> is on his list.  I added him to cc: in case not.

Ideally I'd like to see these patches ACKed/Review-ed by the kirin
maintainers - that's what I was waiting for and that's what they
are there for.

Having said that, I will keep an eye on this series so that we
can hopefully queue it for v5.16.

Lorenzo

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
