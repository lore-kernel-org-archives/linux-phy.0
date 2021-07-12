Return-Path: <SRS0=iZVT=ME=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_2 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D20F7C07E99
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jul 2021 21:11:36 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8FB44611C0
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jul 2021 21:11:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8FB44611C0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gNqzBRh7gos/E17XzySbVrLA6Xn2JipGh5R6/h64L90=; b=WGHJpUyZVBhkJG
	cvxILujR/gKkYRZ72ko1+x7ZdwpyNJNERz0q2IW1qA24y93ZgRJ3IGcUvhN5WvzPfv03QKZE1s0G9
	kSiovme0lAGRmp2Jhc5XwqOiB+Sv8p3X1WUdItHqNoZT4Y7reME+iZDqZF71+6TDqwsmVnu8H6bqY
	EFO2h/u+1RshByGowvIY0rL55uTl0MfbiSzovkg+PKjfFTIOITKSGnAVh6UDbBlzzI6EmTZvO+1E8
	7sS6xNfZGPcsEQ12poUFEn6IT/eOeoJIsfGUQ2/MQZD78sCrKIybeesQn1NlznG3v9x20VJAXHZWb
	ZOyuy3UdZad0PtvXHYQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m33DE-008T01-3S; Mon, 12 Jul 2021 21:11:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m33D0-008Syt-QB; Mon, 12 Jul 2021 21:11:24 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7830C61249;
 Mon, 12 Jul 2021 21:11:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626124282;
 bh=0Wx45sxU13fCIWUUT3TdPFMKGJcb4SVUd3EIYciwlcQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=G41PBVPkyZdnCydhZfTwOuR2nfNMe+dxVrD7UEwpNapFldoVHSuTK1DF/zkyS2CZm
 mpPb76owEUJfdGn4O3TJkc+WQibupaiXbKotpybH14gwp8hm+6ugsisGwcSPqPq3JO
 fD4MtdfXCfSVkS6zCPXv/vROxesjG2iWRaz1SHr9wx8sAyDuX/8/eu+PrERmLw7Zks
 f40VjN2WVxzrDpkacYbtSrb4Tdcsni8LCvnPiF3TuXJ/W+lKw3STkMsmMhoYiZxHNd
 Zjez30+zvUf14kjWO9lrLQUxzjpBb32wDGWnL54k35BWSmxS9cyDT01JA2ljS52H9+
 QES2F3rBDRP+A==
Date: Mon, 12 Jul 2021 23:11:15 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 linuxarm@huawei.com, mauro.chehab@huawei.com, Krzysztof =?UTF-8?B?V2ls?=
 =?UTF-8?B?Y3p5xYRza2k=?= <kw@linux.com>, Binghui Wang
 <wangbinghui@hisilicon.com>, Rob Herring <robh+dt@kernel.org>, Xiaowei Song
 <songxiaowei@hisilicon.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 0/9] Add support for Hikey 970 PCIe
Message-ID: <20210712231115.638b0697@coco.lan>
In-Reply-To: <20210712165221.GA1654345@bjorn-Precision-5520>
References: <cover.1625826353.git.mchehab+huawei@kernel.org>
 <20210712165221.GA1654345@bjorn-Precision-5520>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210712_141122_926128_6728BABB 
X-CRM114-Status: GOOD (  14.31  )
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

Hi Bjorn,

Em Mon, 12 Jul 2021 11:52:21 -0500
Bjorn Helgaas <helgaas@kernel.org> escreveu:

> On Fri, Jul 09, 2021 at 12:41:36PM +0200, Mauro Carvalho Chehab wrote:
> > ...
> > Manivannan Sadhasivam (1):
> >   arm64: dts: hisilicon: Add support for HiKey 970 PCIe controller
> >     hardware  
> 
> FWIW, this didn't apply cleanly for me to v5.14-rc1.

True. The last patch of this series:

	dts: HiSilicon: Add support for HiKey 970 PCIe controller hardware

Depends on a patch that should be merged via another tree:

	https://lore.kernel.org/lkml/db5b33e4d0b239a7377e123b46f63b5640329021.1625477735.git.mchehab+huawei@kernel.org/

Such patch adds the DTS data required for the PMIC.

I guess I'll submit the series without this one. Once both series
get merged, I'll submit it in separate.

> 
> > Mauro Carvalho Chehab (8):
> >   dt-bindings: phy: add bindings for Hikey 960 PCIe PHY
> >   dt-bindings: phy: add bindings for Hikey 970 PCIe PHY
> >   dt-bindings: PCI: kirin: fix compatible string
> >   dt-bindings: PCI: kirin: drop PHY properties
> >   phy: hisilicon: add a PHY driver for Kirin 960  
> 
> >   PCI: kirin: drop the PHY logic from the driver
> >   PCI: kirin: use regmap for APB registers  
> 
> If/when you repost this, please update these subject lines to match the
> historical style:
> 
>   PCI: kirin: Drop PHY logic from the driver
>   PCI: kirin: Use regmap for APB registers
> 
> Also, please update subject lines, commit logs, Kconfig menu and help
> text, comments, etc throughout to capitalize "HiKey" and "HiSilicon"
> as the vendor does.

Ok.

> 
> >   phy: hisilicon: add driver for Kirin 970 PCIe PHY  



Thanks,
Mauro

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
