Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2619C2D0CD
	for <linux-phy@archiver.kernel.org>; Mon, 19 May 2025 10:09:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R7OdmnY6MqtGnu0J691C8oMoW/PzLMjVIRbU0h+OxiQ=; b=UCkxT1q+YsKloO
	0flP3bD1p6rKCdN+bh6TuWE6UXs7fah8mlONImRhhevEfdghogdIdVXebYFH0/8ukU8fuZfiTwAZK
	HFF984xNGMAecelWw6xC8eLIh23Nl5j6IoCbyVxA1JcGg8hYK0iS14k3FA9S4sxc/iHymWC8NpJXp
	UZPnmnAbWDd1uNefHk4X62N2z3r6/zGjpFZFleotlImzyI8RdeaCf0h1ZQsNrS7USysUrMAM/9pSx
	Ik+CuKnBsInB33SrbIYSzoj9RZiEYzSCNuDNPOThYem8Yyw/mY3lyWMnuheHvLGC1pTwkxbHfRWiy
	dMgKh3zMRtB0pxtudLOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGxR8-00000008k2h-1fvQ;
	Mon, 19 May 2025 10:09:34 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGxHn-00000008iG1-1Yek;
	Mon, 19 May 2025 09:59:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 5BE285C1B99;
	Mon, 19 May 2025 09:57:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2C87CC4CEE4;
	Mon, 19 May 2025 09:59:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747648794;
	bh=WdkVZramwGI8mC1TPOoMUf9FA7POUXwjiwSg9TZ1T34=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JuTHSvGBuao+udd62qaUwmn5rY/W8IWSEw+QbgqOARvez+B1Z1eKRyiuGxy3WxyOv
	 xq/RipGvKezUbwf9tYIZ3WTQCgIPGQwQAGZIgmG3StIeq8J/rPW5R78MHTCV9/hyrE
	 VRYXyHZf3PKgQVO7twf1h7MYXvMLkcilE4Y8CwdPLwoPB42cISK9tDvdS4pD7moz0h
	 oi7VMJ7s1QbtLzlopdAfgjMg8QFXjp54qT7xblesUcVMwbBmhpQgR1/acb0cnZiv6/
	 N7rHl2MnRI5egEGl52GAvTicTvrX1h0U+l7so3OhndJIfRfUSHRuXHYu1HKLPS09SJ
	 3UEam3TxKTsBg==
Date: Mon, 19 May 2025 11:59:47 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Shradha Todi <shradha.t@samsung.com>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.or, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, manivannan.sadhasivam@linaro.org,
	lpieralisi@kernel.org, kw@linux.com, robh@kernel.org,
	bhelgaas@google.com, jingoohan1@gmail.com, krzk+dt@kernel.org,
	conor+dt@kernel.org, alim.akhtar@samsung.com, vkoul@kernel.org,
	kishon@kernel.org, arnd@arndb.de, m.szyprowski@samsung.com,
	jh80.chung@samsung.com
Subject: Re: [PATCH 10/10] misc: pci_endpoint_test: Add driver data for FSD
 PCIe controllers
Message-ID: <aCsBE7uwU9wyZIXn@ryzen>
References: <20250518193152.63476-1-shradha.t@samsung.com>
 <CGME20250518193305epcas5p263b59196e93ef504eab8537f82c37342@epcas5p2.samsung.com>
 <20250518193152.63476-11-shradha.t@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250518193152.63476-11-shradha.t@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250519_025955_454795_2858D18C 
X-CRM114-Status: GOOD (  14.95  )
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

Hello Shradha,

On Mon, May 19, 2025 at 01:01:52AM +0530, Shradha Todi wrote:
> dma_map_single() might not return a 4KB aligned address, so add the
> default_data as driver data for FSD PCIe controllers to make it
> 4KB aligned.
> 
> Signed-off-by: Shradha Todi <shradha.t@samsung.com>
> ---
>  drivers/misc/pci_endpoint_test.c | 3 +++
>  include/linux/pci_ids.h          | 2 ++
>  2 files changed, 5 insertions(+)
> 
> diff --git a/drivers/misc/pci_endpoint_test.c b/drivers/misc/pci_endpoint_test.c
> index c4e5e2c977be..d94a94231ee5 100644
> --- a/drivers/misc/pci_endpoint_test.c
> +++ b/drivers/misc/pci_endpoint_test.c
> @@ -1110,6 +1110,9 @@ static const struct pci_device_id pci_endpoint_test_tbl[] = {
>  	{ PCI_DEVICE(PCI_VENDOR_ID_FREESCALE, PCI_DEVICE_ID_LS1088A),
>  	  .driver_data = (kernel_ulong_t)&default_data,
>  	},
> +	{ PCI_DEVICE(PCI_VENDOR_ID_TESLA, 0x7777),
> +	  .driver_data = (kernel_ulong_t)&default_data,
> +	},

Are you sure that you actually require this?

Since we now have these two commits:
e73ea1c2d4d8 ("PCI: dwc: endpoint: Implement the pci_epc_ops::align_addr() operation")
0d292a1e6d90 ("misc: pci_endpoint_test: Add support for capabilities")

My expectation is that DWC based endpoint controller drivers should no longer
need an explicit 4k alignment in the host side driver.

Thus, I would expect that:
{ PCI_DEVICE(PCI_VENDOR_ID_TESLA, 0x7777),},

(i.e. no explicit 4k alignment)
should be sufficient.


Kind regards,
Niklas

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
