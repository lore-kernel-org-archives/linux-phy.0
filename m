Return-Path: <SRS0=o6wI=O7=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 37A74C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 11 Oct 2021 06:04:14 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D2B1260EE7
	for <linux-phy@archiver.kernel.org>; Mon, 11 Oct 2021 06:04:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D2B1260EE7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=hisilicon.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uRfx5KwYtgHJdiTKx7n5to9KQrWCsnoxwlJ6W3TTEc4=; b=IXXcY60DDr5Jy+
	okBpKIqbrIHhg0uI2fM7l3Y2fpyGVYdnU9Qbci8sAKBiUdHh7C6Htb0Var9qlFfnhRnfYlgqfyOWP
	DC5IL5qL0hWnNXmCt2IVLZg5y4YoCCAHckerwHLVs3TbHL3lAzt6TNjVIMARU4I3q8CDzFWyb83hH
	BA4EVhFtUK8akRdw7Tw37JY7eeJQTJ9KEVSf83v0P9BpffZpZjbabqGJsMWyfgVQlVogpYZxANxEs
	DXIZJnctD9d1MXeHJy+FOtF2gc49CLvDAXjVOFshyGnWG/+SIH2ltwcwZORPgAxYWgE7oyup2fhKP
	o8HOiSI2VvttI2sSyjOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mZoQ1-007tEH-DB; Mon, 11 Oct 2021 06:04:13 +0000
Received: from szxga02-in.huawei.com ([45.249.212.188])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mZ1Pf-004RcB-1m
 for linux-phy@lists.infradead.org; Sat, 09 Oct 2021 01:44:36 +0000
Received: from dggeml709-chm.china.huawei.com (unknown [172.30.72.57])
 by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4HR75k4CsKz903F;
 Sat,  9 Oct 2021 09:39:38 +0800 (CST)
Received: from dggeme756-chm.china.huawei.com (10.3.19.102) by
 dggeml709-chm.china.huawei.com (10.3.17.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2308.8; Sat, 9 Oct 2021 09:44:24 +0800
Received: from dggeme756-chm.china.huawei.com ([10.6.80.68]) by
 dggeme756-chm.china.huawei.com ([10.6.80.68]) with mapi id 15.01.2308.008;
 Sat, 9 Oct 2021 09:44:24 +0800
From: "Songxiaowei (Kirin_DRV)" <songxiaowei@hisilicon.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Mauro Carvalho Chehab
 <mchehab+huawei@kernel.org>
CC: Bjorn Helgaas <helgaas@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Linuxarm <linuxarm@huawei.com>, Mauro Carvalho Chehab
 <mauro.chehab@huawei.com>, =?utf-8?B?S3J6eXN6dG9mIFdpbGN6ecWEc2tp?=
 <kw@linux.com>, "Wangbinghui (Biggio, Kirin_DRV)"
 <wangbinghui@hisilicon.com>, Rob Herring <robh@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>
Subject: Re: [PATCH v12 00/11] Add support for Hikey 970 PCIe
Thread-Topic: [PATCH v12 00/11] Add support for Hikey 970 PCIe
Thread-Index: Ade8q7iJlFQZnl/9QeuKIfdoWRmMGg==
Date: Sat, 9 Oct 2021 01:44:24 +0000
Message-ID: <cd22c1e143b94f55a78d969193847812@hisilicon.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.143.62.236]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211008_184435_457658_8A091C86 
X-CRM114-Status: GOOD (  22.04  )
X-Mailman-Approved-At: Sun, 10 Oct 2021 23:04:12 -0700
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

Ack-by Xiaowei Song.

> Hi Lorenzo,
> 
> Em Thu, 7 Oct 2021 15:41:03 +0100
> Lorenzo Pieralisi <lorenzo.pieralisi@arm.com> escreveu:
> 
> > On Tue, Oct 05, 2021 at 01:23:21PM -0500, Bjorn Helgaas wrote:
> > > [+cc Lorenzo]
> > > 
> > > On Tue, Oct 05, 2021 at 11:24:48AM +0200, Mauro Carvalho Chehab wrote:  
> > > > Hi Bjorn,
> > > > 
> > > > Em Tue, 28 Sep 2021 09:34:10 +0200
> > > > Mauro Carvalho Chehab <mchehab+huawei@kernel.org> escreveu:  
> > >   
> > > > >   PCI: kirin: Reorganize the PHY logic inside the driver
> > > > >   PCI: kirin: Add support for a PHY layer
> > > > >   PCI: kirin: Use regmap for APB registers
> > > > >   PCI: kirin: Add support for bridge slot DT schema
> > > > >   PCI: kirin: Add Kirin 970 compatible
> > > > >   PCI: kirin: Add MODULE_* macros
> > > > >   PCI: kirin: Allow building it as a module
> > > > >   PCI: kirin: Add power_off support for Kirin 960 PHY
> > > > >   PCI: kirin: fix poweroff sequence
> > > > >   PCI: kirin: Allow removing the driver  
> > > > 
> > > > I guess everything is already satisfying the review feedbacks.
> > > > If so, could you please merge the PCI ones?  
> > > 
> > > Lorenzo takes care of the native host bridge drivers, so I'm sure this
> > > is on his list.  I added him to cc: in case not.  
> > 
> > Ideally I'd like to see these patches ACKed/Review-ed by the kirin
> > maintainers - that's what I was waiting for and that's what they
> > are there for.
> > 
> > Having said that, I will keep an eye on this series so that we
> > can hopefully queue it for v5.16.
> 
> Not sure if you received the e-mail from Xiaowei with his ack.

I have not (and it did not make it to linux-pci either).

> At least here, I only received on my internal e-mail (perhaps because
> the original e-mail was base64-encoded with gb2312 charset). 
> 
> So, let me forward his answer to you, c/c the mailing lists.

Patches should be acked with tags that tooling recognize, this
would help me.

> Thanks,
> Mauro
> 

Thanks.
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
