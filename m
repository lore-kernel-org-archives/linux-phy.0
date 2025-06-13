Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44885C71148
	for <linux-phy@archiver.kernel.org>; Fri, 13 Jun 2025 20:54:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=6Eg24ag8w6Lzqv+aG1RZ+Wcs8qjMLlIxkRDhxvJp7CE=; b=UuZYmSGnMR0D+D
	8fAoBQdKuWQipGcoop4xRsltdoM0umJmEy1Bl0DQeiWPAC3GBLxrSLGPBP/MT+C/n214/tNA6TsUr
	rslI2Pq6ohqOLr4spwZo1bSFxuYR3jiIQYInrvWnCIsOdWWYw1xPkw75LUdOfczQCGHFjesxyKgHA
	voe6ILywR1LeHO2PcPnO2cLm/kyrYsmBYwagrbvDE4an031i5PBJ5xDWdvCrOrAvRBpL5GcJyHFma
	0Wf5sG5MF5tqqaTeABIQhUvOLz5YqS3CMuAPpjRdGo+5H9e+oDq/lTCIlNG1r0HOebr7qUix3K47X
	r13CMyscBDzY4Sc2N2lA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQBQB-000000002cC-3Uzf;
	Fri, 13 Jun 2025 20:54:43 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQBM1-000000002Ei-47eC;
	Fri, 13 Jun 2025 20:50:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 530E349FFC;
	Fri, 13 Jun 2025 20:50:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0EB2CC4CEE3;
	Fri, 13 Jun 2025 20:50:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749847825;
	bh=rlvKqvqdkEFLQEjr/WDkmwzemWu5/XidctqnjEijYfA=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=jyRKM3BwZ30ApC0n4zkoy8NvY+mslGvuJUBIM/Es0paRZxNmFP/suFT1ugJPmXlhG
	 b7IXKN/jdezHBpAW0uWMyXd0+q7ok+C948R9jpbSdB+vopmAPJHi62pW/TxJ5Cd27R
	 8L3axnVJsjb00FdpZHbTBeZJNDaq0cqVWzK5Jf5uifF4jA/VcX5ZGG6t3YRq6Kla2b
	 fB7HJywUeFu0MeuCsfP1vZLA79euz53xaJZw0kjcZIidN95dyhoixyYEzDxk6s9fJ1
	 mi0iMJevqEe5wyuwcw67pMCEaMIKA67ZMnMCfpr2zgr+WrlJgbPQbGiJzdQy7b7pfd
	 84wTnMR6MXSpg==
Date: Fri, 13 Jun 2025 15:50:23 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Geraldo Nascimento <geraldogabriel@gmail.com>
Cc: linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [RESEND RFC PATCH v4 1/5] PCI: rockchip: Use standard PCIe
 defines
Message-ID: <20250613205023.GA975137@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aEyJhoiPP0Ugm1t6@geday>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250613_135026_046566_2B75A60B 
X-CRM114-Status: GOOD (  21.20  )
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

On Fri, Jun 13, 2025 at 05:26:46PM -0300, Geraldo Nascimento wrote:
> On Fri, Jun 13, 2025 at 03:14:09PM -0500, Bjorn Helgaas wrote:
> > On Fri, Jun 13, 2025 at 12:05:31PM -0300, Geraldo Nascimento wrote:
> > > -	status = rockchip_pcie_read(rockchip, PCIE_RC_CONFIG_LCS);
> > > +	status = rockchip_pcie_read(rockchip, PCIE_RC_CONFIG_CR + PCI_EXP_LNKCTL);
> > >  	status |= (PCI_EXP_LNKSTA_LBMS | PCI_EXP_LNKSTA_LABS) << 16;
> > 
> > It looks funny to write PCI_EXP_LNKCTL with bits from PCI_EXP_LNKSTA.
> > I guess this is because rockchip_pcie_write() does 32-bit writes, but
> > PCI_EXP_LNKCTL and PCI_EXP_LNKSTA are adjacent 16-bit registers.
> > 
> > If the hardware supports it, adding rockchip_pcie_readw() and
> > rockchip_pcie_writew() for 16-bit accesses would make this read
> > better.
> > 
> > Hopefully the hardware *does* support this (it's required per spec at
> > least for config accesses, which would be a different path in the
> > hardware).  Doing the 32-bit write of PCI_EXP_LNKCTL above is
> > problematic because writes PCI_EXP_LNKSTA as well, and PCI_EXP_LNKSTA
> > includes some RW1C bits that may be unintentionally cleared.
> 
> Hi Bjorn and thank you for the review,
> 
> while your rationale is correct per PCIe spec, per RK3399 TRM
> those registers are indeed 32 bits in the Rockchip-IP PCIe, so
> I'm forced to work with that, but without fear that other
> registers get messed-up. (See for example Section 17.6.6.1.30
> of RK3399 TRM, Part 2)

I don't have access to any of these TRMs, so I only know what's in the
driver.

When you say "without fear", are you saying there's a way to do that
32-bit write such that the LNKSTA bits are discarded by the hardware?
Or just that the hardware forces us to accept this potential status
register corruption?

Is this something that could be written using the config access path?
I guess probably not, based on this:

  https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/pci/controller/pcie-rockchip-host.c?id=v6.15#n141

Bjorn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
