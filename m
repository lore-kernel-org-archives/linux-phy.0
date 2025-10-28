Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83FF5CCF9E0
	for <linux-phy@archiver.kernel.org>; Tue, 28 Oct 2025 17:13:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=0ZwDjtR2ygtcQ6BjjTiYe9d6ak1hljm8JDEXJArPwf0=; b=JEqFx9jhHAdWvw
	6zX9+tHGnPA8FpnS4E4TC/o6qRYkblLbH2Ks442EXGM6942X1a4BgYLB+1ot2D/IGPhpgYtIo4heW
	Z0B3sacXKp30bWk5vWJixt3KXU1J5V9nU0wiHSMYNFWMF3IMCNYKqMP6CjOWWvYgeRw9eM5XJ/Max
	4ZeALZXU1d0cCsctULY+QhNcID6++SS7Z9uT1PyshJLmC7/pLPs6vc2OzQP6m2eCCypjJFEyaqb6D
	hgDpVrVqRxr8H4gpXXLm0cf0uPEIPla2jr6FiXhfjF0OH+j2knC59P4gOF/0u4gCIyfsKPn8dprLh
	PgS7Grb3bydb2BjRw5AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDnGJ-0000000GOIJ-0Ucm;
	Tue, 28 Oct 2025 17:13:35 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDnGH-0000000GOHY-0Ypu;
	Tue, 28 Oct 2025 17:13:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 3B9306124B;
	Tue, 28 Oct 2025 17:13:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B658BC4CEE7;
	Tue, 28 Oct 2025 17:13:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761671611;
	bh=+cenkb0yL5U6fkb9PXEJLOZBBfbIw/K5JcCnxUVgehI=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=GHWgETQ1RNiG4NgBjVLnhJH9atMiVJdloWNMv11jPg99tyK+rmBwAzqK9hTb4gVhT
	 2ZtFnJKwxLI4s2Q1P8yhoci5coU0j5l4vn2zCzKepsIfscxlIj7Zu5fXo/n3/KWGIz
	 hHMqKbrGfsuMHEa9JXdVniJNLDuD3aTag4FRYpY8MZC7Tdt+1tj5Isr/dt42Ncc8NJ
	 sH4jdipg5MKIr6H7mirxdjLBByUiKYKRocaUoLgV9TRC+GCZAmUas2q83NjwZJ561i
	 7CYd2BuJMIACVxarC+376c/AlA60uR1HFbp6n2bx39j1c/IyYibnP+f7s04InfotSN
	 hUMwQm5MxpCww==
Date: Tue, 28 Oct 2025 12:13:30 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Jacky Chou <jacky_chou@aspeedtech.com>
Cc: lpieralisi@kernel.org, kwilczynski@kernel.org, mani@kernel.org,
	robh@kernel.org, bhelgaas@google.com, krzk+dt@kernel.org,
	conor+dt@kernel.org, joel@jms.id.au, andrew@codeconstruct.com.au,
	vkoul@kernel.org, kishon@kernel.org, linus.walleij@linaro.org,
	p.zabel@pengutronix.de, linux-aspeed@lists.ozlabs.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, openbmc@lists.ozlabs.org,
	linux-gpio@vger.kernel.org
Subject: Re: [PATCH v4 8/9] PCI: aspeed: Add ASPEED PCIe RC driver
Message-ID: <20251028171330.GA1506282@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251027095825.181161-9-jacky_chou@aspeedtech.com>
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

On Mon, Oct 27, 2025 at 05:58:24PM +0800, Jacky Chou wrote:
> Introduce PCIe Root Complex driver for ASPEED SoCs. Support RC
> initialization, reset, clock, IRQ domain, and MSI domain setup.
> Implement platform-specific setup and register configuration for
> ASPEED. And provide PCI config space read/write and INTx/MSI
> interrupt handling.

> +config PCIE_ASPEED
> +	bool "ASPEED PCIe controller"
> +	depends on ARCH_ASPEED || COMPILE_TEST
> +	depends on OF
> +	depends on PCI_MSI
> +	select IRQ_MSI_LIB
> +	help
> +	  Enable this option to support the PCIe controller found on ASPEED
> +	  SoCs.
> +
> +	  This driver provides initialization and management for PCIe
> +	  Root Complex functionality, including interrupt and MSI support.

Maybe "INTx and MSI support", since MSI is an interrupt?

> +/* Complete status */

"Completion"

> +static int aspeed_ast2700_ahb_remap_to_bar(struct aspeed_pcie *pcie)
> +{
> +	struct resource_entry *win, *tmp;
> +	struct pci_host_bridge *bridge = pcie->host;
> +
> +	/* Configure AHB remapping to BAR on AST27x0.
> +	 * The BAR region is HW-fixed in AST27x0, these BARs will be filled
> +	 * in the ranges of pcie node in DT.
> +	 */

I don't understand what "HW-fixed" means here.  It looks like you're
writing host bridge window addresses (that came from DT) to the
hardware.  That sounds like they're not actually "fixed" but
programmable.

Host bridge windows are not BARs themselves.  Mem space for devices
below the host bridge is allocated from the windows, and the addresses
are programmed into BARs of those downstream devices.

Multi-line comment style:

  /*
   * Configure ...
   */

Wrap to fill 78 columns, or add blank lines between paragraphs.

> +	resource_list_for_each_entry_safe(win, tmp, &bridge->windows) {
> +		struct resource *res = win->res;
> +
> +		if (resource_type(res) == IORESOURCE_MEM &&
> +		    !(res->flags & IORESOURCE_MEM_64)) {
> +			writel(ASPEED_REMAP_BAR_BASE(res->start),
> +			       pcie->reg + ASPEED_H2X_REMAP_DIRECT_ADDR);
> +			return 0;
> +		}
> +	}
> +
> +	return -ENODEV;
> +}
> +
> +static int aspeed_ast2700_setup(struct platform_device *pdev)
> +{
> +	struct aspeed_pcie *pcie = platform_get_drvdata(pdev);
> +	struct device *dev = pcie->dev;
> +	int ret;
> +
> +	pcie->cfg = syscon_regmap_lookup_by_phandle(dev->of_node,
> +						    "aspeed,pciecfg");
> +	if (IS_ERR(pcie->cfg))
> +		return dev_err_probe(dev, PTR_ERR(pcie->cfg),
> +				     "failed to map pciecfg base\n");
> +
> +	regmap_update_bits(pcie->cfg, ASPEED_SCU_60,
> +			   ASPEED_RC_E2M_PATH_EN | ASPEED_RC_H2XS_PATH_EN |
> +			   ASPEED_RC_H2XD_PATH_EN | ASPEED_RC_H2XX_PATH_EN |
> +			   ASPEED_RC_UPSTREAM_MEM_EN,
> +			   ASPEED_RC_E2M_PATH_EN | ASPEED_RC_H2XS_PATH_EN |
> +			   ASPEED_RC_H2XD_PATH_EN | ASPEED_RC_H2XX_PATH_EN |
> +			   ASPEED_RC_UPSTREAM_MEM_EN);
> +	regmap_write(pcie->cfg, ASPEED_SCU_64,
> +		     ASPEED_RC0_DECODE_DMA_BASE(0) |
> +		     ASPEED_RC0_DECODE_DMA_LIMIT(0xff) |
> +		     ASPEED_RC1_DECODE_DMA_BASE(0) |
> +		     ASPEED_RC1_DECODE_DMA_LIMIT(0xff));
> +	regmap_write(pcie->cfg, ASPEED_SCU_70, ASPEED_DISABLE_EP_FUNC);
> +
> +	aspeed_host_reset(pcie);
> +
> +	writel(0, pcie->reg + ASPEED_H2X_CTRL);
> +	writel(ASPEED_H2X_BRIDGE_EN | ASPEED_H2X_BRIDGE_DIRECT_EN,
> +	       pcie->reg + ASPEED_H2X_CTRL);
> +
> +	ret = aspeed_ast2700_ahb_remap_to_bar(pcie);
> +	if (ret)
> +		return dev_err_probe(dev, ret, "failed to assign BAR\n");

This is not assigning *BARs*.  A host bridge doesn't have BARs in the
PCI spec sense.  It might have programmable address ranges, but the
host bridge is not itself a PCI device, so its programmability is
device specific.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
