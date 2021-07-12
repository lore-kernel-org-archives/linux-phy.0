Return-Path: <SRS0=iZVT=ME=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1946C07E9B
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jul 2021 08:20:06 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 78BAD6113E
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jul 2021 08:20:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 78BAD6113E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cXmDxBxAU/ANiDpFFsQM+ihYbFUpcCgJi/1ID1hEt/o=; b=1RXtigR+t/9ZDN
	h9Fn0UHvudc9OV1szdB4xdabH8Esq4ZpUlS4ZbkAW4DrYxmmep7K8lpQ/xyrTrG/cfpBN/IF3Hs/l
	wQdAp6rqQKm6Ruqsd+kftJeQvreU6oe4qtef/ze2akgKMKeyzirdCkp7qg/0mIOhuq7Noh4AS2G5h
	ur2fpnuq1sc7WvN0IePQXbClNitU3OovadIvT+gtKYqI/EelZzBy+ovqaXnZdxHeGHDTuNCWNCel4
	UuqZNalS1jbt/yPAl5xpWoWif/yvUNTLEfWm+hBdP7Fh2ZuYqMxl9saXkAr2oyajV2P65yR+sbEV/
	VL1Jy/3ehL7H33DG5oJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m2rAc-006Z0R-1Y; Mon, 12 Jul 2021 08:20:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m2rAO-006YxR-Rn; Mon, 12 Jul 2021 08:19:54 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 192B56115A;
 Mon, 12 Jul 2021 08:19:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626077992;
 bh=oiAKFE0F6sF9YhyTJBg+1E7QA8xdjUhbMNjBvBqhUp8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=H9jyRPsSgBpbzr0U7ugKnFGzSoeoZh5NLAuVVLjzojjgZMF9Bi7QDBe63AvxT6u1Q
 I26ah/GCPI4ObdZlhUbfZsw2J48Uv6FHO/57yuvvkf1iqhzFqkDJ0ZYWtFTOzpfRct
 fXjUl2cqjppSFPFC645Ij1uroFqSCsRaowmOiiOcgg2q2Chml5QMW3eT4LXyqWNxcm
 lfBvRHbUZ9U4pQzokko9yBubUmZNweaq6btX9sIpLoqPBuUcp87VAAMrtfGygEhYUb
 jtzdtZg6HZdC+EMQsLx5b3WGiinShYyUoq2Js3uYe5CNiRgL+yZSq9kJ1Sf++HbRMj
 7hMLbk6aSYnpg==
Date: Mon, 12 Jul 2021 13:49:44 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: Rob Herring <robh@kernel.org>, linuxarm@huawei.com,
 mauro.chehab@huawei.com,
 Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
 Binghui Wang <wangbinghui@hisilicon.com>, Rob Herring <robh+dt@kernel.org>,
 Xiaowei Song <songxiaowei@hisilicon.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 0/9] Add support for Hikey 970 PCIe
Message-ID: <20210712081944.GC8113@workstation>
References: <cover.1625826353.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1625826353.git.mchehab+huawei@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210712_011952_983046_25E7ACA8 
X-CRM114-Status: GOOD (  27.95  )
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

Hi Mauro,

On Fri, Jul 09, 2021 at 12:41:36PM +0200, Mauro Carvalho Chehab wrote:
> As requested by Rob Herring, this series split the PHY part into a separate driver.
> Then, it adds support for Kirin 970 on a single patch.
> 
> With this change, the PHY-specific device tree bindings for Kirin 960 moved
> to its own PHY properties.
> 
> Manivannan,
> 
> Please notice that the last two patches are marked as co-developed:
> 
> 	phy: hisilicon: add driver for Kirin 970 PCIe PHY
> 	arm64: dts: hisilicon: Add support for HiKey 970 PCIe controller hardware
> 
> The first one contains the code you submitted in the past adding
> support for Kirin 970 at the pcie-kirin driver, modified by me and
> moved to a separate driver.
> 
> The second one is the DTS file, also modified by me in order to split the PHY
> properties from the PCIe ones.
> 
> Please send your SoB to confirm that both changes are OK for you.
> 

I'm fine with the changes. The dts patch already has my s-o-b as you
preserved my authorship and I've sent my s-o-b for the driver patch.
I used my korg address for the driver patch but that's fine as all these
efforts were done in my spare time.

Thanks,
Mani

> Tested on Hikey970:
> 
>   $ lspci
>   00:00.0 PCI bridge: Huawei Technologies Co., Ltd. Device 3670 (rev 01)
>   01:00.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
>   02:01.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
>   02:04.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
>   02:05.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
>   02:07.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
>   02:09.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
>   06:00.0 Ethernet controller: Realtek Semiconductor Co., Ltd. RTL8111/8168/8411 PCI Express Gigabit Ethernet Controller (rev 07)
> 
>   $ ethtool enp6s0
>   Settings for enp6s0:
> 	Supported ports: [ TP	 MII ]
> 	Supported link modes:   10baseT/Half 10baseT/Full
> 	                        100baseT/Half 100baseT/Full
> 	                        1000baseT/Half 1000baseT/Full
> 	Supported pause frame use: Symmetric Receive-only
> 	Supports auto-negotiation: Yes
> 	Supported FEC modes: Not reported
> 	Advertised link modes:  10baseT/Half 10baseT/Full
> 	                        100baseT/Half 100baseT/Full
> 	                        1000baseT/Half 1000baseT/Full
> 	Advertised pause frame use: Symmetric Receive-only
> 	Advertised auto-negotiation: Yes
> 	Advertised FEC modes: Not reported
> 	Link partner advertised link modes:  10baseT/Half 10baseT/Full
> 	                                     100baseT/Half 100baseT/Full
> 	Link partner advertised pause frame use: Symmetric Receive-only
> 	Link partner advertised auto-negotiation: Yes
> 	Link partner advertised FEC modes: Not reported
> 	Speed: 100Mb/s
> 	Duplex: Full
> 	Auto-negotiation: on
> 	master-slave cfg: preferred slave
> 	master-slave status: slave
> 	Port: Twisted Pair
> 	PHYAD: 0
> 	Transceiver: external
> 	MDI-X: Unknown
>   netlink error: Operation not permitted
> 	Link detected: yes
> 
> Partially tested on Hikey 960[1]:
> 
>   $ lspci
>   00:00.0 PCI bridge: Huawei Technologies Co., Ltd. Device 3660 (rev 01)
> 
> [1] The Hikey 960 doesn't come with any internal PCIe device.
>     Its hardware supports just an external device via a M.2 slot that
>     doesn't support SATA. I ordered a NVMe device to test, but the vendor
>     is currently out of supply. It should take 4-5 weeks to arrive here. I'll
>     run an extra test on it once it arrives.
> 
> Manivannan Sadhasivam (1):
>   arm64: dts: hisilicon: Add support for HiKey 970 PCIe controller
>     hardware
> 
> Mauro Carvalho Chehab (8):
>   dt-bindings: phy: add bindings for Hikey 960 PCIe PHY
>   dt-bindings: phy: add bindings for Hikey 970 PCIe PHY
>   dt-bindings: PCI: kirin: fix compatible string
>   dt-bindings: PCI: kirin: drop PHY properties
>   phy: hisilicon: add a PHY driver for Kirin 960
>   PCI: kirin: drop the PHY logic from the driver
>   PCI: kirin: use regmap for APB registers
>   phy: hisilicon: add driver for Kirin 970 PCIe PHY
> 
>  .../devicetree/bindings/pci/kirin-pcie.txt    |  21 +-
>  .../phy/hisilicon,phy-hi3660-pcie.yaml        |  82 ++
>  .../phy/hisilicon,phy-hi3670-pcie.yaml        | 101 ++
>  arch/arm64/boot/dts/hisilicon/hi3660.dtsi     |  29 +-
>  arch/arm64/boot/dts/hisilicon/hi3670.dtsi     |  72 ++
>  .../boot/dts/hisilicon/hikey970-pmic.dtsi     |   1 -
>  drivers/pci/controller/dwc/pcie-kirin.c       | 298 ++----
>  drivers/phy/hisilicon/Kconfig                 |  20 +
>  drivers/phy/hisilicon/Makefile                |   2 +
>  drivers/phy/hisilicon/phy-hi3660-pcie.c       | 325 +++++++
>  drivers/phy/hisilicon/phy-hi3670-pcie.c       | 892 ++++++++++++++++++
>  11 files changed, 1572 insertions(+), 271 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/hisilicon,phy-hi3660-pcie.yaml
>  create mode 100644 Documentation/devicetree/bindings/phy/hisilicon,phy-hi3670-pcie.yaml
>  create mode 100644 drivers/phy/hisilicon/phy-hi3660-pcie.c
>  create mode 100644 drivers/phy/hisilicon/phy-hi3670-pcie.c
> 
> -- 
> 2.31.1
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
