Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F22ECCF9E5
	for <linux-phy@archiver.kernel.org>; Mon, 27 Oct 2025 02:06:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AIz5DaywnvVMDCo9M5S+hRLZ7aumi779FNJAbQo1RaA=; b=Pj+06NlwecjTs/
	cQmDmpFVIRyIIYSGsqurfpQd5UcRKdxJIl1h1a/t5TmgKITq7C3qUWtS4elGP/1Nnkj1tMKFvzd8c
	vPvIZwwgrTDQiBEjO2/S2r/j71Hiy+9KFDwZwavJ38oE9u3Zac67QwtELCUskPHnMw0sx6hygglCR
	8RKuIMY+/UKXlf23OMYLn14Wb2wnBxNhKYsIAb6Jze1rOfClAazvFLmgp81/9OuUZGI44OPQsfP4M
	Vpx9MEk8SKRyMfQUARs5Y/cMBfVBrJyQIpuLlpkjF1ut8tBLhJuZUPvAkJtQgOPODo+j1qrGadOZ8
	PyXy/yKM2DkedjVr0Ewg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDCdA-0000000D09I-0OqF;
	Mon, 27 Oct 2025 02:06:44 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDCd7-0000000D08j-3nvm
	for linux-phy@lists.infradead.org;
	Mon, 27 Oct 2025 02:06:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=tu+M7M2YF38JiZNC0fahSFfxfFEADGU7uVQ/AZh5caY=; b=UybAvca29K/efssa5m01nE9JZO
	50t332oIzhW3rJ+6FgUXsLwBv2VTMkLh+7Z8wb+rY4DAZe1Z7w7P5pdVQY5NkHMzGD+kvWg0J1u7x
	rckJu2zgKx9l0MKUraY0B/EQNpzZIZ1ME4svZP07rtWKdGlyuvHVu+jfe0/2W2TRzSOg=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1vDCd5-00C9GW-ST; Mon, 27 Oct 2025 03:06:39 +0100
Date: Mon, 27 Oct 2025 03:06:39 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Josua Mayer <josua@solid-run.com>
Cc: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"advaitdhamorikar@gmail.com" <advaitdhamorikar@gmail.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>, Rabeeh Khoury <rabeeh@solid-run.com>,
	Yazan Shhady <yazan.shhady@solid-run.com>,
	Mikhail Anikin <mikhail.anikin@solid-run.com>,
	Jon Nettleton <jon@solid-run.com>
Subject: Re: phy: marvell: phy-mvebu-cp110-comphy: link failure and lockup
 built as module (=M)
Message-ID: <e5fd6b91-be1f-4d0d-86c1-9dc1713873d4@lunn.ch>
References: <43918f90-9bcb-4838-9328-8f06a8693681@solid-run.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <43918f90-9bcb-4838-9328-8f06a8693681@solid-run.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251026_190641_965375_86592CB1 
X-CRM114-Status: GOOD (  19.36  )
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

On Sat, Oct 25, 2025 at 12:45:52PM +0000, Josua Mayer wrote:
> Dear Maintainers,
> 
> I came across a bug srelating to cp110 comphy driver.
> 
> On a board with CN9130 SoC + 2 external CPs Debian 13 freezes during boot,
> at some point after initramfs and kernel module loading has started.
> 
> This occurs only when a pci card is present and had link-up from u-boot, e.g.:
> 
> PCIE-0: Link up (Gen3-x4, Bus0)
> PCIE-12: Link up (Gen3-x1, Bus12)
> 
> The issue is reproducible with a generic rootfs, kernel built with arm64 defconfig,
> no initramfs, but a single kernel configuration change:
> 
> CONFIG_PHY_MVEBU_CP110_COMPHY=y -> m
> 
> i.e. building the comphy driver as a module.
> 
> The problem shows up usually by the console freezing during boot,
> before eventually the system watchdog hard resets SoC.

Do you know at what point the comphy driver module is loaded?

Do you get the same behaviour if the comphy module is not built/not
available?

I _guess_ that there is some missing EPROBE_DEFER code. It could be
when the PCIE code tries to get the PHY and fails, it just keeps
going, when in fact it needs to return EPROBE_DEFER, so that the core
will try again later, once the module has been loaded.

Actually

static int armada8k_pcie_setup_phys(struct armada8k_pcie *pcie)
{
        struct dw_pcie *pci = pcie->pci;
        struct device *dev = pci->dev;
        struct device_node *node = dev->of_node;
        int ret = 0;
        int i;

        for (i = 0; i < ARMADA8K_PCIE_MAX_LANES; i++) {
                pcie->phy[i] = devm_of_phy_get_by_index(dev, node, i);
                if (IS_ERR(pcie->phy[i])) {
                        if (PTR_ERR(pcie->phy[i]) != -ENODEV)
                                return PTR_ERR(pcie->phy[i]);

                        pcie->phy[i] = NULL;
                        continue;
                }

                pcie->phy_count++;
        }

Do you see devm_of_phy_get_by_index() return -ENODEV? If i'm reading
this code correctly, it will just continue without the PHY.

	Andrew

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
