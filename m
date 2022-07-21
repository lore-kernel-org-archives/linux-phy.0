Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D937BC43334
	for <linux-phy@archiver.kernel.org>; Thu, 21 Jul 2022 20:56:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=dTitk2LdzUAAHu9XpB6xa64kBZHUA27AwYbPNCmhA2M=; b=C0ox6CdthylaP5
	xfoEbVRgkqWTppi0l6GcX6RbjE9NgQmfh8EVZR61LUaErhbbuZY7Yz46ELIvdU8pjHBWUhJZOaI40
	tY1xgIbYjGsO/VnfihFo+kVxf+cKmeJg8wskDruumCJSlww/NVd56hAmzu0jr709s0QV3k7jfBkJU
	98E+n2GD/IlzYpZCqzue8jYsj33VbPMu34sIDgo4sP1RO71AfpllV5xzcvkUm7If9+m+erHpgCnhr
	6iK4m5SfFALEO9c82OT8gzMYNFTGicIUNJdnacWGIyggGBLs+cbtNr5Jxjfi7jpAj/JiRqwUBdEUh
	Bu55CCkiyDPACjFpEF7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oEdDY-00CJ5g-7r; Thu, 21 Jul 2022 20:56:20 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oEdDV-00CJ1r-4c
	for linux-phy@lists.infradead.org; Thu, 21 Jul 2022 20:56:19 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id CC2A761241;
	Thu, 21 Jul 2022 20:56:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B36A1C3411E;
	Thu, 21 Jul 2022 20:56:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1658436968;
	bh=tX6kO771Y8rae7XBY2hGr6gk9lyb6FdmAulTojf4f9w=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=V3Ss2H67Xvnx8ZyuGEpnPgx1kEi/8dQ8yRb5Eu7KmogmH8k+CCAH4J3MAWiLdGvGN
	 dU3RKuozG9sXJPrGUMa/0zy7PkEWdLLixnT8qHgnwyS95ktqSeecguhRqZ+67W7KpI
	 LUV5IvMVOKaGss2QuQdWlgL1/Z7oLbl5+wvQ0ppG3fdWkJE4uM00NK1aTJOHWc7z6a
	 1++shiOGSgqmwOD2ucU/s9bvRbsKX1m1HCw3pl9Oz3EE38x3d/vyLySjd1r6w9a7kq
	 Q6JjpWNiK0HjWYzJ+X+F9uVmO58fQihbqHFHbseW04Vxudc9aojkVqJKTWLlwpWDYK
	 6kgxj44bnoLZg==
Date: Thu, 21 Jul 2022 15:56:05 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Wangseok Lee <wangseok.lee@samsung.com>
Cc: "robh+dt@kernel.org" <robh+dt@kernel.org>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"kishon@ti.com" <kishon@ti.com>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"jesper.nilsson@axis.com" <jesper.nilsson@axis.com>,
	"lars.persson@axis.com" <lars.persson@axis.com>,
	"bhelgaas@google.com" <bhelgaas@google.com>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
	"kw@linux.com" <kw@linux.com>,
	"linux-arm-kernel@axis.com" <linux-arm-kernel@axis.com>,
	"kernel@axis.com" <kernel@axis.com>,
	Moon-Ki Jun <moonki.jun@samsung.com>,
	Sang Min Kim <hypmean.kim@samsung.com>,
	Dongjin Yang <dj76.yang@samsung.com>,
	Yeeun Kim <yeeun119.kim@samsung.com>
Subject: Re: [PATCH v4 3/5] PCI: axis: Add ARTPEC-8 PCIe controller driver
Message-ID: <20220721205605.GA1749669@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220720060112epcms2p30a05414992cf814e5886af2b70c0f58f@epcms2p3>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220721_135617_306409_483C67A0 
X-CRM114-Status: GOOD (  39.27  )
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

On Wed, Jul 20, 2022 at 03:01:12PM +0900, Wangseok Lee wrote:
> Add support Axis, ARTPEC-8 SoC. ARTPEC-8 is the SoC platform of Axis
> Communications. This is based on arm64 and support GEN4 & 2lane. This
> PCIe controller is based on DesignWare Hardware core and uses DesignWare
> core functions to implement the driver. "pcie-artpec6. c" supports artpec6
> and artpec7 H/W. artpec8 can not be expanded because H/W configuration is
> completely different from artpec6/7. PHY and sub controller are different.
> 
> Signed-off-by: Wangseok Lee <wangseok.lee@samsung.com>
> Signed-off-by: Jaeho Cho <jaeho79.cho@samsung.com>

Since you are the one sending the patch, your sign-off should be last:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/process/submitting-patches.rst?id=v5.18#n363

> +config PCIE_ARTPEC8_HOST
> +	bool "Axis ARTPEC-8 PCIe controller Host Mode"
> +	depends on ARCH_ARTPEC || COMPILE_TEST
> +	depends on PCI_MSI_IRQ_DOMAIN
> +	depends on PCI_ENDPOINT
> +	select PCI_EPF_TEST
> +	select PCIE_DW_HOST
> +	select PCIE_ARTPEC8
> +	help
> +	  Say 'Y' here to enable support for the PCIe controller in the
> +	  ARTPEC-8 SoC to work in host mode.

Add a blank line between paragraphs.  Mentioned previously:
https://lore.kernel.org/r/20220603160314.GA76545@bhelgaas

> +	  This PCIe controller is based on DesignWare hardware core and
> +	  uses DesignWare core functions to implement the driver.

I don't think Kconfig users need to know how the driver is
implemented.  Not really even sure they need to know that it's based
on DesignWare hardware.  Users need to be able to connect the hardware
in front of them with the drivers for it, which means they start with
the name on the box.

> +config PCIE_ARTPEC8_EP
> +	bool "Axis ARTPEC-8 PCIe controller Endpoint Mode"
> +	depends on ARCH_ARTPEC || COMPILE_TEST
> +	depends on PCI_ENDPOINT
> +	depends on PCI_ENDPOINT_CONFIGFS
> +	select PCI_EPF_TEST
> +	select PCIE_DW_EP
> +	select PCIE_ARTPEC8
> +	help
> +	  Say 'Y' here to enable support for the PCIe controller in the
> +	  ARTPEC-8 SoC to work in endpoint mode.

Same.

> +	  This PCIe controller is based on DesignWare hardware core and
> +	  uses DesignWare core functions to implement the driver.

> +#define PCIE_GEN3_EQUALIZATION_DISABLE	(0x1 << 16)

Why the mix of "(0x1 << 16)" and "BIT(...)" below?  Pick one.

> +#define PCIE_GEN3_EQ_PHASE_2_3		(0x1 << 9)
> +#define PCIE_GEN3_RXEQ_PH01_EN		(0x1 << 12)
> +#define PCIE_GEN3_RXEQ_RGRDLESS_RXTS	(0x1 << 13)
> +
> +#define FAST_LINK_MODE			(7)
> +
> +/* PCIe ELBI registers */
> +#define PCIE_IRQ0_STS			0x000
> +#define PCIE_IRQ1_STS			0x004
> +#define PCIE_IRQ2_STS			0x008
> +#define IRQ2_STS_IRQ_MSI_ST		BIT(20)

> +static const int artpec8_pcie_dbi_addr_con[] = {
> +	FSYS_PCIE_DBI_ADDR_CON

Since this is an array, I assume you envision adding more entries
eventually.  That means you should have a comma at the end of this
entry, as you do in artpec8_pcie_clks[] below, so the
FSYS_PCIE_DBI_ADDR_CON line will not need to change when you add
entries in the future.

> +};

> +static u32 artpec8_pcie_read_dbi(struct dw_pcie *pci, void __iomem *base,
> +				 u32 reg, size_t size)
> +{
> +	struct artpec8_pcie *artpec8_ctrl = to_artpec8_pcie(pci);

Typical names for pointers like this are "dra7xx", "rockchip",
"artpec6_pcie", and even "pcie".  "artpec6_pcie" seems unnecessarily
wordy.  "pcie" seems possibly confusing since "pci" is the common
pointer to struct dw_pcie.  I think "artpec8" would be perfect.

> +	u32 val;
> +	bool is_atu = false;
> +
> +	if (base == pci->atu_base) {
> +		is_atu = true;
> +		base = pci->dbi_base;
> +		regmap_write(artpec8_ctrl->sysreg,
> +			     artpec8_pcie_dbi_addr_con[artpec8_ctrl->link_id],

This is not safe because nothing guarantees that 
artpec8_ctrl->link_id == 0.  Any other index other than zero would be
out of bounds.

That suggests that making artpec8_pcie_dbi_addr_con[] an array is
over-engineered.  If you need more than one value in the future, you
could make it an array at that time.  For now it just makes the code
hard to read.

> +			     FSYS_PCIE_DBI_ADDR_OVR_ATU);
> +	}

> +static int artpec8_pcie_get_subsys_resources(struct platform_device *pdev,
> +					     struct artpec8_pcie *artpec8_ctrl)
> +{
> +	struct device *dev = &pdev->dev;
> +
> +	/* External Local Bus interface(ELBI) Register */

Add a space before things like "(ELBI)".  Also below for "(DBI)".

> +	artpec8_ctrl->elbi_base =
> +		devm_platform_ioremap_resource_byname(pdev, "elbi");
> +	if (IS_ERR(artpec8_ctrl->elbi_base)) {
> +		dev_err(dev, "failed to map elbi_base\n");
> +		return PTR_ERR(artpec8_ctrl->elbi_base);
> +	}
> +
> +	artpec8_ctrl->sysreg =
> +		syscon_regmap_lookup_by_phandle(dev->of_node,
> +						"samsung,fsys-sysreg");
> +	if (IS_ERR(artpec8_ctrl->sysreg)) {
> +		dev_err(dev, "fsys sysreg regmap lookup failed.\n");

Omit periods on error messages (as you did for the elbi_base message
above).  This also applies to several messages below.

> +		return PTR_ERR(artpec8_ctrl->sysreg);
> +	}
> +
> +	artpec8_ctrl->pmu_syscon =
> +		syscon_regmap_lookup_by_phandle(dev->of_node,
> +						"samsung,syscon-phandle");
> +	if (IS_ERR(artpec8_ctrl->pmu_syscon)) {
> +		dev_err(dev, "pmu syscon regmap lookup failed.\n");
> +		return PTR_ERR(artpec8_ctrl->pmu_syscon);
> +	}

> +static int artpec8_pcie_get_rc_mem_resources(struct platform_device *pdev,
> +					     struct artpec8_pcie *artpec8_ctrl)
> +{
> +	struct dw_pcie *pci = artpec8_ctrl->pci;
> +
> +	/* Data Bus Interface(DBI) Register */

> +	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "addr_space");
> +	if (!res)
> +		return -EINVAL;

Add a blank line here.

> +	ep->phys_base = res->start;
> +	ep->addr_size = resource_size(res);

> +	ret = devm_clk_bulk_get(dev, ARRAY_SIZE(artpec8_pcie_clks),
> +				artpec8_pcie_clks);
> +	if (ret)
> +		return ret;
> +
> +	return 0;

This is the same as:

  return devm_clk_bulk_get(dev, ...);

> +	ret = clk_bulk_prepare_enable(ARRAY_SIZE(artpec8_pcie_clks),
> +				      artpec8_pcie_clks);
> +	if (ret)
> +		return ret;
> +
> +	return 0;

Again, same as:

  return clk_bulk_prepare_enable(...);

> +static u8 artpec8_pcie_iatu_unroll_enabled(struct dw_pcie *pci)
> +{
> +	u32 val;
> +
> +	val = dw_pcie_readl_dbi(pci, PCIE_ATU_VIEWPORT);
> +	pci->atu_base = pci->dbi_base + DEFAULT_DBI_ATU_OFFSET;

This line is out of place.  This function is essentially a boolean and
should not have side effects like updating pci->atu_base.

> +
> +	if (val == 0xffffffff)
> +		return 1;
> +
> +	return 0;

This function as a whole is a copy of dw_pcie_iatu_unroll_enabled(),
which is static in pcie-designware.c.  I assume you'll resolve this
eventually (maybe not in this initial patch) so we don't have two
copies.

> +static void artpec8_pcie_ep_init(struct dw_pcie_ep *ep)
> +{
> +	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
> +	enum pci_barno bar;

Add a blank line here.

> +	/*
> +	 * Currently PCIe EP core is not setting iatu_unroll_enabled
> +	 * so let's handle it here. We need to find proper place to
> +	 * initialize this so that it can be used for other EP
> +	 * controllers as well.
> +	 */
> +	pci->iatu_unroll_enabled = artpec8_pcie_iatu_unroll_enabled(pci);

> +static int __init artpec8_add_pcie_ep(struct artpec8_pcie *artpec8_ctrl,
> +				      struct platform_device *pdev)

Why is this __init when the caller is not __init?

> +	ret = dw_pcie_ep_init(ep);
> +	if (ret)
> +		return ret;
> +
> +	return 0;

Again:

  return dw_pcie_ep_init(ep);

> +static int __init artpec8_add_pcie_port(struct artpec8_pcie *artpec8_ctrl,
> +					struct platform_device *pdev)

Why is this __init?

> +	pci = devm_kzalloc(dev, sizeof(*pci), GFP_KERNEL);
> +	if (!pci)
> +		return -ENOMEM;
> +
> +	pdata = of_device_get_match_data(dev);
> +
> +	if (!pdata)
> +		return -ENODEV;
> +
> +	mode = (enum dw_pcie_device_mode)pdata->mode;
> +
> +	artpec8_ctrl->pci = pci;
> +	artpec8_ctrl->pdata = pdata;
> +	artpec8_ctrl->mode = mode;
> +
> +	pci->dev = dev;
> +	pci->ops = pdata->dwc_ops;
> +	pci->dbi_base2 = NULL;
> +	pci->dbi_base = NULL;

These are guaranteed NULL already by the kzalloc().

> +static int __exit artpec8_pcie_remove(struct platform_device *pdev)

Why do we need __exit and __exit_p below?  exynos, keystone, and kirin
use them, but I'm not sure they need them either.  I don't know all
the details, but most of our drivers don't use them, so I assume this
one doesn't need them either.

> +static struct platform_driver artpec8_pcie_driver = {
> +	.probe	= artpec8_pcie_probe,
> +	.remove		= __exit_p(artpec8_pcie_remove),

__exit_p(), see above.

> +	.driver = {
> +		.name	= "artpec8-pcie",
> +		.of_match_table = artpec8_pcie_of_match,
> +	},
> +};

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
