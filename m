Return-Path: <SRS0=iZVT=ME=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77449C07E9C
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jul 2021 16:52:38 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4944C61152
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jul 2021 16:52:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4944C61152
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=pJJ/GQ/mcvPB5M1R/aWYrPDSaBeCdZSKEBvHqbQsuVw=; b=WHS2uoknAvm3XB
	VC+B2DL8QmCe5Gxmi29DmQ5Cr+CO+OmE4f6Lz4cnixLwhzgmnf4zXrPVeH51tWhX5Gz7+92zLYyop
	sU/RVOtl4KKUPjhVYkq9ej5e7Qh4ZgAPiOjqAyv6GQgCo+3iSvH2XtWAHj34tjJFt4EoDAwo0+iDv
	l+OPz+DwpqV21ezVZmqpZpf/fibb4/KJ5f5Hk59u+wYPItC6OCzNSaC9qBtQCcagYOw8TVG40zzJp
	DN02lvs8TLOw9iysDQRbhtXvXcfTOgpI/M3kilnLD0n8BLG64UilZGoSEhfMyKRdVJ7CbR/JnikuD
	XzOOIbWfLEOpUQgz39Lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m2zAb-007znC-Qt; Mon, 12 Jul 2021 16:52:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m2zAN-007zjx-S6; Mon, 12 Jul 2021 16:52:25 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9114B60FF3;
 Mon, 12 Jul 2021 16:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626108742;
 bh=7PA9T4ztHxOhgBCB8sQ5ExrO4Ozk846zDZeaKJ8RHac=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=RWyIORS+4H5zY6ZjBkzga+X1zqSL1ArvZninJVErcXMIjFZvLaMjB6ivhxTgqPMW0
 ubGYbLe2Ww++YTj+qIJseRu6fAgPZrGYrk7LxBfKcdhfNglXAMqLQge2mK3ogHr8Rt
 17ScldlFy755U7xlEdfO/w+tdKhFgiVS8zpmNMFA0d1HuoR/Y5DrOgIweUTbkLKysD
 hb6xY6hVnViQsg6if5Y3/XMyWm3EK35yJEN2DW9PHtEvTb+sRfV7vFh3UajtWyRpWm
 emMfS9JAVvqxB9gRFLf8FN3NVLYstmywcDVZNJTiTX4fL9HGoPRNdXfFfth4HhrV30
 RVW15PvWgF3og==
Date: Mon, 12 Jul 2021 11:52:21 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 linuxarm@huawei.com, mauro.chehab@huawei.com,
 Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
 Binghui Wang <wangbinghui@hisilicon.com>, Rob Herring <robh+dt@kernel.org>,
 Xiaowei Song <songxiaowei@hisilicon.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 0/9] Add support for Hikey 970 PCIe
Message-ID: <20210712165221.GA1654345@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1625826353.git.mchehab+huawei@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210712_095223_958433_5F897C70 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
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

On Fri, Jul 09, 2021 at 12:41:36PM +0200, Mauro Carvalho Chehab wrote:
> ...
> Manivannan Sadhasivam (1):
>   arm64: dts: hisilicon: Add support for HiKey 970 PCIe controller
>     hardware

FWIW, this didn't apply cleanly for me to v5.14-rc1.

> Mauro Carvalho Chehab (8):
>   dt-bindings: phy: add bindings for Hikey 960 PCIe PHY
>   dt-bindings: phy: add bindings for Hikey 970 PCIe PHY
>   dt-bindings: PCI: kirin: fix compatible string
>   dt-bindings: PCI: kirin: drop PHY properties
>   phy: hisilicon: add a PHY driver for Kirin 960

>   PCI: kirin: drop the PHY logic from the driver
>   PCI: kirin: use regmap for APB registers

If/when you repost this, please update these subject lines to match the
historical style:

  PCI: kirin: Drop PHY logic from the driver
  PCI: kirin: Use regmap for APB registers

Also, please update subject lines, commit logs, Kconfig menu and help
text, comments, etc throughout to capitalize "HiKey" and "HiSilicon"
as the vendor does.

>   phy: hisilicon: add driver for Kirin 970 PCIe PHY

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
