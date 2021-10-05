Return-Path: <SRS0=czee=OZ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6332DC433FE
	for <linux-phy@archiver.kernel.org>; Tue,  5 Oct 2021 09:24:59 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 20465615A6
	for <linux-phy@archiver.kernel.org>; Tue,  5 Oct 2021 09:24:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 20465615A6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=20gH06G6LMh8sWCiNgDjljns3wrSZxxor6DbO2Q1Llk=; b=4m+8SwDjQEeUCk
	44Ix50tCVySqVgTi8L4FjaG8us/qDjtG7cvzSdxlayV18IPnB4FoKAwe6gZ1XCPvxR4J0Bf8EAzZl
	WTzk/9LV0KkzChwJqbHGVg5qiY+ytED9c8v+M1qroQgLeNNABXl1MwZ8mwOyrhDq60GT4CJfSsUz/
	KeBNF3ZHdaEO5MEZ5q5oHgFOM2KhRIfRqpbhDRJBDn5xqGFXtiP0nuBo//ECMXwJbTw41IHuAQlhd
	r4yDuufkSiTDGLiRC7jBP17zYa23wbzHCooKoYhkOsK2zn6iGWyP2YawWEOl5RwV5mI8exwOjPG3k
	yq/02No1Sx3In3yYRvjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXgh0-009m7V-Mn; Tue, 05 Oct 2021 09:24:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXggy-009m60-7F
 for linux-phy@lists.infradead.org; Tue, 05 Oct 2021 09:24:57 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9FF1D6154B;
 Tue,  5 Oct 2021 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1633425895;
 bh=IEdllWxDaEmWx3XyCkSILsBxQd/sSHr6TrZzjfQkKzg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=pIXQ5hiu3AwH8jtQRSWFMo3uXgoRqoh3CQm7L/4LRPlO4UA1+bde5S1JNdZnpFMv6
 928AVBioWQDkV95uWuX8yWEkjnAdTACm8zuv+tzajp//n7WTh1qRjAGGnoK4V1MkNP
 vzjOMxZrhgvt/sULIVj/WAr7nx5PihNWAQZj4s/BhBTHdVTVmskDdMUG2kNTwZ11ia
 RZGzxthsaYK11QCuow14kFr6+BCwXkGD5DBy6nFAxYZASw5Ln3Nbe9BEPKOWiY2RP6
 iKwBp7qiB9Sm1Ga7bFf1jJxkqOihHcSOwC/+eoABY/aeYMQ3CMUyk0e8Hs4JGPeN+6
 +0oeKMOSn2lpw==
Date: Tue, 5 Oct 2021 11:24:48 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Bjorn Helgaas <bhelgaas@google.com>
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com, Krzysztof =?UTF-8?B?V2ls?=
 =?UTF-8?B?Y3p5xYRza2k=?= <kw@linux.com>, Binghui Wang
 <wangbinghui@hisilicon.com>, Rob Herring <robh@kernel.org>, Xiaowei Song
 <songxiaowei@hisilicon.com>, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v12 00/11] Add support for Hikey 970 PCIe
Message-ID: <20211005112448.2c40dc10@coco.lan>
In-Reply-To: <cover.1632814194.git.mchehab+huawei@kernel.org>
References: <cover.1632814194.git.mchehab+huawei@kernel.org>
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.30; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211005_022456_333413_7D721F92 
X-CRM114-Status: GOOD (  21.16  )
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

Em Tue, 28 Sep 2021 09:34:10 +0200
Mauro Carvalho Chehab <mchehab+huawei@kernel.org> escreveu:

> The pcie-kirin PCIe driver contains internally a PHY interface for
> Kirin 960, but it misses support for Kirin 970.
> 
> Patch1 contains a PHY for Kirin 970 PCIe.
> 
> The remaining patches add support for Kirin 970 at the pcie-kirin driver, and
> add the needed logic to compile it as module and to allow to dynamically
> remove the driver in runtime.
> 
> Tested on HiKey970:
> 
>   # lspci -D -PP
>   0000:00:00.0 PCI bridge: Huawei Technologies Co., Ltd. Device 3670 (rev 01)
>   0000:00:00.0/01:00.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
>   0000:00:00.0/01:00.0/02:01.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
>   0000:00:00.0/01:00.0/02:04.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
>   0000:00:00.0/01:00.0/02:05.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
>   0000:00:00.0/01:00.0/02:07.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
>   0000:00:00.0/01:00.0/02:09.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
>   0000:00:00.0/01:00.0/02:01.0/03:00.0 Non-Volatile memory controller: Samsung Electronics Co Ltd Device a809
>   0000:00:00.0/01:00.0/02:07.0/06:00.0 Ethernet controller: Realtek Semiconductor Co., Ltd. RTL8111/8168/8411 PCI Express Gigabit Ethernet Controller (rev 07)
> 
> Tested on HiKey960:
> 
>   # lspci -D 
>   0000:00:00.0 PCI bridge: Huawei Technologies Co., Ltd. Device 3660 (rev 01)
> 
> ---
> 
> v12:
>   - Change a comment at patch 1 to not use c99 style.
> 
> v11:
>   - patch 5 changed to use the right PCIe topology
>   - all other patches are identical to v10.
> 
> v10:
>   - patch 1: dropped magic numbers from PHY driver
>   - patch 5: allow pcie child nodes without reset-gpios
>   - all other patches are identical to v9.
> 
> v9:
>   - Did some cleanups at patches 1 and 5
> 

As the DT changes needed by HiKey 970 PCIe support are already upstream:

	commit cfcf126fc6795e843d090d98754391ece55e8b0c
	Author:     Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
	AuthorDate: Wed Aug 4 09:18:56 2021 +0200
	Commit:     Rob Herring <robh@kernel.org>
	CommitDate: Mon Aug 16 16:00:52 2021 -0500

	    dt-bindings: PCI: kirin: Add support for Kirin970
	    
	    Add a new compatible, plus the new bindings needed by
	    HiKey970 board.
    
	    Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
	    Link: https://lore.kernel.org/r/875a4571e253040d3885ee1f37467b0bade7361b.1628061310.git.mchehab+huawei@kernel.org
	    Signed-off-by: Rob Herring <robh@kernel.org>

> 
> Mauro Carvalho Chehab (11):
>   phy: HiSilicon: Add driver for Kirin 970 PCIe PHY

And the PHY patch was already accepted and merged at today's
linux-next:

	commit 73075011ffff876de8516a1e583dc41869293da9
	Author:     Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
	AuthorDate: Tue Sep 28 09:34:11 2021 +0200
	Commit:     Vinod Koul <vkoul@kernel.org>
	CommitDate: Fri Oct 1 13:42:18 2021 +0530

	    phy: HiSilicon: Add driver for Kirin 970 PCIe PHY
    
	    The Kirin 970 PHY is somewhat similar to the Kirin 960, but it
	    does a lot more. Add the needed bits for PCIe to start working on
	    HiKey 970 boards.
    
	    Co-developed-by: Manivannan Sadhasivam <mani@kernel.org>
	    Signed-off-by: Manivannan Sadhasivam <mani@kernel.org>
	    Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
	    Link: https://lore.kernel.org/r/b7a4ff41b57d861b003f1a00cae81f3d226fbe18.1632814194.git.mchehab+huawei@kernel.org
	    Signed-off-by: Vinod Koul <vkoul@kernel.org>

>   PCI: kirin: Reorganize the PHY logic inside the driver
>   PCI: kirin: Add support for a PHY layer
>   PCI: kirin: Use regmap for APB registers
>   PCI: kirin: Add support for bridge slot DT schema
>   PCI: kirin: Add Kirin 970 compatible
>   PCI: kirin: Add MODULE_* macros
>   PCI: kirin: Allow building it as a module
>   PCI: kirin: Add power_off support for Kirin 960 PHY
>   PCI: kirin: fix poweroff sequence
>   PCI: kirin: Allow removing the driver

I guess everything is already satisfying the review feedbacks.
If so, could you please merge the PCI ones?

> 
>  drivers/pci/controller/dwc/Kconfig      |   2 +-
>  drivers/pci/controller/dwc/pcie-kirin.c | 644 +++++++++++++-----
>  drivers/phy/hisilicon/Kconfig           |  10 +
>  drivers/phy/hisilicon/Makefile          |   1 +
>  drivers/phy/hisilicon/phy-hi3670-pcie.c | 845 ++++++++++++++++++++++++
>  5 files changed, 1354 insertions(+), 148 deletions(-)
>  create mode 100644 drivers/phy/hisilicon/phy-hi3670-pcie.c

Thanks,
Mauro

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
