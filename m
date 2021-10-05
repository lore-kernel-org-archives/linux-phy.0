Return-Path: <SRS0=czee=OZ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2E485C433FE
	for <linux-phy@archiver.kernel.org>; Tue,  5 Oct 2021 18:23:26 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E549F613D5
	for <linux-phy@archiver.kernel.org>; Tue,  5 Oct 2021 18:23:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E549F613D5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=vQqJPXsYT53D8rd9ZX4AHVqKpelStSdHPV9z+iYBjBc=; b=snWiMgr7Bs6rJd
	GYSrQZ4oyRS/KuWOU2/5RckdrEUFXokXVpMHYtJtCDDvdPU8R8QAbYg/CyNqYyVcHH5dRxbl/sJ8Z
	9ZvrMmUciI9xHwTgJh27alqA0EDBjb3WjZPfMvd/NPEpBtkYrookN8haciAIdQiizpcIKku/MHUlR
	6rAGyVjKf8Ss4jMHFCZMXB4JejHAEp02JwaFFldEb9sHYOhjps1BDaQDLO0xFvRgngMS+6lEXIukC
	TMPv9djBF0cRpNCZoN2tYbSH4Eq2XqhHduPYI5MDx4dmLghSUuqjKxcLpouYGGJ92dykPNip176YP
	ZCK7ZY5VTiQO6QM2ipKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXp65-00BWPj-Gq; Tue, 05 Oct 2021 18:23:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXp62-00BWOr-V0
 for linux-phy@lists.infradead.org; Tue, 05 Oct 2021 18:23:24 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3C869613AC;
 Tue,  5 Oct 2021 18:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1633458202;
 bh=YzSecprsSRN1kCi/iRg3G0GZDxm9Y4cQm5i3sYHtNxE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=K38nQKpVghWY4FF4wjcI3yw/a40A/S+z8WAbRwYv0rp+Kaolq9NrppgddxUEVDeZY
 DVAll8M7jqb2hW40DPrM7QsRRFVc8a9FC8qMheG46uv6kcXI5JdnNqK69PFijLC+FF
 /tnKj1y0xk+EfYVtJ8p7mkOab/zUufAvNPFG2fEW8Z2uSpFSHdq0klx/zcsl5kvd8K
 4jV4vIXiMKcPMHvnK/o+/a43kCGx9gzmekRaMe0KVZmRzmotGdROi1l6rOG1ezTfhy
 1NPckI92tiLajJEnFXLRKtLtm1kx9CTbJFir3ZZklqAMsm5QnI++MG8tg28Ka43w+q
 LrhsbG9kenzVw==
Date: Tue, 5 Oct 2021 13:23:21 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: Bjorn Helgaas <bhelgaas@google.com>, linuxarm@huawei.com,
 mauro.chehab@huawei.com,
 Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
 Binghui Wang <wangbinghui@hisilicon.com>, Rob Herring <robh@kernel.org>,
 Xiaowei Song <songxiaowei@hisilicon.com>,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-phy@lists.infradead.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: Re: [PATCH v12 00/11] Add support for Hikey 970 PCIe
Message-ID: <20211005182321.GA1106986@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211005112448.2c40dc10@coco.lan>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211005_112323_059269_B417BCCB 
X-CRM114-Status: GOOD (  11.38  )
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

[+cc Lorenzo]

On Tue, Oct 05, 2021 at 11:24:48AM +0200, Mauro Carvalho Chehab wrote:
> Hi Bjorn,
> 
> Em Tue, 28 Sep 2021 09:34:10 +0200
> Mauro Carvalho Chehab <mchehab+huawei@kernel.org> escreveu:

> >   PCI: kirin: Reorganize the PHY logic inside the driver
> >   PCI: kirin: Add support for a PHY layer
> >   PCI: kirin: Use regmap for APB registers
> >   PCI: kirin: Add support for bridge slot DT schema
> >   PCI: kirin: Add Kirin 970 compatible
> >   PCI: kirin: Add MODULE_* macros
> >   PCI: kirin: Allow building it as a module
> >   PCI: kirin: Add power_off support for Kirin 960 PHY
> >   PCI: kirin: fix poweroff sequence
> >   PCI: kirin: Allow removing the driver
> 
> I guess everything is already satisfying the review feedbacks.
> If so, could you please merge the PCI ones?

Lorenzo takes care of the native host bridge drivers, so I'm sure this
is on his list.  I added him to cc: in case not.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
