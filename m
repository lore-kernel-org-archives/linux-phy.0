Return-Path: <SRS0=XorX=M3=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D93B9C4338F
	for <linux-phy@archiver.kernel.org>; Wed,  4 Aug 2021 16:29:00 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9CE2460FC3
	for <linux-phy@archiver.kernel.org>; Wed,  4 Aug 2021 16:29:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9CE2460FC3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b90jHVCuXL20GwJPYBuwPcO2M+LpiAxxZmTKm7cyexA=; b=GGOuFoAa1RDUSg
	Nic+PwrmZdTD6Co9IjJlPPrxQRD+NdMfcROWQnwZh8k3IfosGqgFWgPSPnNNWRpDA1z5wgUUt7m67
	HoX0vCRZcObrXuq3pDJsLJ6Rv4jVcuWjYJ2D+bOl3MGuPHzwrKc0tRbbiIdzxEmzMSeBMIpXw6UQ+
	8pDO5uJ/4umvWCcc8qBVy7SCWlfiQwiz/Dpe2qWYHOLbS8LOfVQjmc0z8bZz1z4UbvfhStAv5vhK/
	gxJrHaK5MVpU7PrBzRn4LBzeg7uTHWfNkaxWmacIDQvJEivJQUt2ejfb5ke7o/mZbS4Uf9cio98fx
	eSUtCqdQurbYTiOcAkVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBJlM-006lVq-5k; Wed, 04 Aug 2021 16:29:00 +0000
Received: from mail-io1-f51.google.com ([209.85.166.51])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBJlJ-006lUr-Jb
 for linux-phy@lists.infradead.org; Wed, 04 Aug 2021 16:28:58 +0000
Received: by mail-io1-f51.google.com with SMTP id d22so3058404ioy.11
 for <linux-phy@lists.infradead.org>; Wed, 04 Aug 2021 09:28:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=VKjRz072HGEgP1rwlJIh26JWC9tcVy1uWT48FAiuTh0=;
 b=e4eI/2Kmz84SmfFfqUID1afRmbDen2wmxoOOmMV2JgzmuCCbPNvnd9Gv1NP244Cuj1
 GXZJ+sP5scLi/FT9e9BvQEgFNUUH9qCIz7WfQHmsGPNyx//6GoxVxn0C4V9iis7/mcrN
 QWEVejL0+5lpzM5aIo6DqIL+frCrMptvqj8WDt2lmfOD32D6Nd6ddIsLam09Y1KK8FYN
 K5hUx4QsGSaX19dLbap8tKGTQ+HH0Y4tLAPejPMwLNAt6M0iCc7DXxNocrlp1FTzL3GR
 9371Q2CM2YrAReIZ69ESP7qW+yrqkTVUht/Wb3AHdRlapGxMSoyw0CIOE1Q2DsC64/ZL
 boDw==
X-Gm-Message-State: AOAM530kmP7eA1g+52xtqfMBLhAAXY5xBy+quxwZOkqTlYRQVO4X6tw2
 3objI/UfPJiVE5zUUVViNw==
X-Google-Smtp-Source: ABdhPJzM54EOzxkXV7o01ZjhBshqyv3YcG0rFRh3qFfZory8ZzZ/FUEYNWqi9A9W3x8CZlLwLtvqcQ==
X-Received: by 2002:a02:7348:: with SMTP id a8mr302327jae.116.1628094536294;
 Wed, 04 Aug 2021 09:28:56 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
 by smtp.gmail.com with ESMTPSA id u16sm1764975iob.41.2021.08.04.09.28.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Aug 2021 09:28:55 -0700 (PDT)
Received: (nullmailer pid 1331554 invoked by uid 1000);
 Wed, 04 Aug 2021 16:28:53 -0000
Date: Wed, 4 Aug 2021 10:28:53 -0600
From: Rob Herring <robh@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: Linuxarm <linuxarm@huawei.com>, mauro.chehab@huawei.com,
 Binghui Wang <wangbinghui@hisilicon.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Jingoo Han <jingoohan1@gmail.com>, Xiaowei Song <songxiaowei@hisilicon.com>,
 devicetree@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 PCI <linux-pci@vger.kernel.org>, linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 0/4] DT schema changes for HiKey970 PCIe hardware to
 work
Message-ID: <YQrARd7wgYS1nywt@robh.at.kernel.org>
References: <cover.1627965261.git.mchehab+huawei@kernel.org>
 <CAL_JsqLjw=+szXWJjGe86tMc51NA-5j=jVSXUAWuKeZRuJNJUg@mail.gmail.com>
 <20210804085045.3dddbb9c@coco.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210804085045.3dddbb9c@coco.lan>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210804_092857_698485_C5B4D60C 
X-CRM114-Status: GOOD (  22.25  )
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

On Wed, Aug 04, 2021 at 08:50:45AM +0200, Mauro Carvalho Chehab wrote:
> Em Tue, 3 Aug 2021 16:11:42 -0600
> Rob Herring <robh+dt@kernel.org> escreveu:
> 
> > On Mon, Aug 2, 2021 at 10:39 PM Mauro Carvalho Chehab
> > <mchehab+huawei@kernel.org> wrote:
> > >
> > > Hi Rob,
> > >
> > > That's the third version of the DT bindings for Kirin 970 PCIE and its
> > > corresponding PHY.
> > >
> > > It is identical to v2, except by:
> > >         -          pcie@7,0 { // Lane 7: Ethernet
> > >         +          pcie@7,0 { // Lane 6: Ethernet  
> > 
> > Can you check whether you have DT node links in sysfs for the PCI
> > devices? If you don't, then something is wrong still in the topology
> > or the PCI core is failing to set the DT node pointer in struct
> > device. Though you don't rely on that currently, we want the topology
> > to match. It's possible this never worked on arm/arm64 as mainly
> > powerpc relied on this.
> >
> > I'd like some way to validate the DT matches the PCI topology. We
> > could have a tool that generates the DT structure based on the PCI
> > topology.
> 
> The of_node node link is on those places:
> 
> 	$ find /sys/devices/platform/soc/f4000000.pcie/ -name of_node
> 	/sys/devices/platform/soc/f4000000.pcie/of_node
> 	/sys/devices/platform/soc/f4000000.pcie/pci0000:00/0000:00:00.0/of_node
> 	/sys/devices/platform/soc/f4000000.pcie/pci0000:00/0000:00:00.0/pci_bus/0000:01/of_node
> 	/sys/devices/platform/soc/f4000000.pcie/pci0000:00/pci_bus/0000:00/of_node

Looks like we're missing some... 

It's not immediately obvious to me what's wrong here. Only the root 
bus is getting it's DT node set. The relevant code is pci_scan_device(), 
pci_set_of_node() and pci_set_bus_of_node(). Give me a few days to try 
to reproduce and debug it.

In the mean time, I applied the series but haven't pushed it out.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
