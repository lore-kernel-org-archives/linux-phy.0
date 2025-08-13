Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 454B7CA0EE4
	for <linux-phy@archiver.kernel.org>; Wed, 13 Aug 2025 21:24:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=8O6zIa9ur49UNV+5YnhZeNQyGdBuxBlLViLOz/7RWeU=; b=iIX+3q4ZubXlcn
	lK/T7A6z0jYfVG7grGlZAW9sPf7OY6suk/Ksv3nwC6gahw6TZIKHaxzyTSuZtah+EwyUUfMT088EP
	XJUnOrU99LcMUCLtIuxRczOGKlIfSnGRh5AdrM+4nG20Lq5VJ1I+CzPWPAKgyB+kmHOF79R2NhO2P
	kmaw0CmiW4TxdN544cJd7nVjH8ogyyxmAbn534dhzfGSGy7yKOBAsjSQbfbcRZtfShgzJeWjvfyEm
	uhzlwYWJ64gnqT3TT1wiWK7VkUg1EpSa29zt1/P3bVZM/kxK7F/GoWu0HQN99MOTqVSQ1ZQqLybj+
	ks1iV7gE8Ks5uWjk2mLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umIx1-0000000F0rf-0C8c;
	Wed, 13 Aug 2025 21:24:03 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umIvO-0000000F0hW-0m2H;
	Wed, 13 Aug 2025 21:22:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8466C5C6827;
	Wed, 13 Aug 2025 21:22:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03AD0C4CEEB;
	Wed, 13 Aug 2025 21:22:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755120141;
	bh=jOyMn9dtqvh/9ep6s+bvq0jUruv1N2SPd6/+nQzCeFs=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=hom5yvlZtVVD3nCZUEXH0Z98bLXFdGzwRvl/ETxGqpXkfdL8sLWcB735nkfn8dp/I
	 5h5jst3Dppot5DcWTitHbMczp85JgskbTDJczbb18BIAAUUiE9LaqwUaJ6sM4AdBuN
	 VlreHRRzSYB92KzUjg8b1+5KPXSh3akG2bUa/gshp/Gz+9z6J84oCwsqhHAgFYdAL4
	 IaowqSOXnvDM3RxaXV9xOp7allA3vRJxXZ/U9nL7dcQK3WOERfCNi2YA1V6vMimm0G
	 RlYoT73E7Tgb5T1QzsnZDJd7Pn8vrHHVa/fhVVinCuA/x4DRzjSqZRGOwqfXTrRU0b
	 hlSR1tqJJXsWw==
Date: Wed, 13 Aug 2025 16:22:19 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Alex Elder <elder@riscstar.com>
Cc: lpieralisi@kernel.org, kwilczynski@kernel.org, mani@kernel.org,
	robh@kernel.org, bhelgaas@google.com, krzk+dt@kernel.org,
	conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org,
	dlan@gentoo.org, paul.walmsley@sifive.com, palmer@dabbelt.com,
	aou@eecs.berkeley.edu, alex@ghiti.fr, p.zabel@pengutronix.de,
	tglx@linutronix.de, johan+linaro@kernel.org,
	thippeswamy.havalige@amd.com, namcao@linutronix.de,
	mayank.rana@oss.qualcomm.com, shradha.t@samsung.com,
	inochiama@gmail.com, quic_schintav@quicinc.com, fan.ni@samsung.com,
	devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-pci@vger.kernel.org, spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 5/6] PCI: spacemit: introduce SpacemiT PCIe host driver
Message-ID: <20250813212219.GA294849@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250813184701.2444372-6-elder@riscstar.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250813_142222_304531_B3D78658 
X-CRM114-Status: GOOD (  17.00  )
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

On Wed, Aug 13, 2025 at 01:46:59PM -0500, Alex Elder wrote:
> Introduce a driver for the PCIe root complex found in the SpacemiT
> K1 SoC.  The hardware is derived from the Synopsys DesignWare PCIe IP.
> The driver supports three PCIe ports that operate at PCIe v2 transfer
> rates (5 GT/sec).  The first port uses a combo PHY, which may be
> configured for use for USB 3 instead.

I assume "PCIe v2" means what most people call "PCIe gen2", but the
spec encourages avoidance "genX" because it's ambiguous.

> +config PCIE_K1
> +	bool "SpacemiT K1 host mode PCIe controller"

Style of nearby entries is:

  "SpacemiT K1 PCIe controller (host mode)"

Please alphabetize by the company name ("SpacemiT") in the menu entry.

> +#define K1_PCIE_VENDOR_ID	0x201f
> +#define K1_PCIE_DEVICE_ID	0x0001

I assume this (0x201f) has been reserved by the PCI-SIG?  I don't see
it at:

  https://pcisig.com/membership/member-companies?combine=0x201f

Possibly rename this to PCI_VENDOR_ID_K1 (or maybe
PCI_VENDOR_ID_SPACEMIT?) to match the usual format in
include/linux/pci_ids.h, since it seems likely to end up there
eventually.

> +#define PCIE_RC_PERST			BIT(12)	/* 0: PERST# high; 1: low */

Maybe avoid confusion by describing as "1: assert PERST#" or similar?

> +	/* Wait the PCIe-mandated 100 msec before deasserting PERST# */
> +	mdelay(100);

I think this is PCIE_T_PVPERL_MS.  Comment is superfluous then.

> +static int k1_pcie_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct dw_pcie_rp *pp;
> +	struct dw_pcie *pci;
> +	struct k1_pcie *k1;
> +	int ret;
> +
> +	k1 = devm_kzalloc(dev, sizeof(*k1), GFP_KERNEL);
> +	if (!k1)
> +		return -ENOMEM;
> +	dev_set_drvdata(dev, k1);

Most neighboring drivers use platform_set_drvdata().  Personally, I
would set drvdata after initializing k1 because I don't like to
advertise pointers to uninitialized things.

> +static void k1_pcie_remove(struct platform_device *pdev)
> +{
> +	struct k1_pcie *k1 = dev_get_drvdata(&pdev->dev);

Neighbors use platform_get_drvdata().

> +	struct dw_pcie_rp *pp = &k1->pci.pp;
> +
> +	dw_pcie_host_deinit(pp);
> +}

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
