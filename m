Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7838CA0EE4
	for <linux-phy@archiver.kernel.org>; Mon, 18 Aug 2025 18:59:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=4Dz+cQQooia7KqVpCYkq9Qp0hwwBwqO3d633cUxurYU=; b=gLKFnft6tJur58
	JiBTEgbwon91N3v6sUChMaLFqO6Wz9Vhi/cr7F1LI7r90eKeQpc5OZ/qa27ck9QECSgb5vV/BSLuh
	XZweVkTARlh8C7PC7iw3PNZQQ/M/YrG2ik7SZADKyVMAgQdSG72JWkGaFmXZJhvAB7af0+eE2sJeq
	rDgzpPnyWFAAQzS7pnE6SNFS4+8ooxnxmEiahoO3wo0tjzKiWwI1+fFkDQmKebY1LJ3ehTJoqln3G
	FWZxiC+oSLIslDwGaJuAdmJorJhfJl3w5WhWQg71VpdHg5x9AaM6PDEkfnPUg3Jdq2b6EAB2/rB9e
	37WLxB5KK27xXxsYsO/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo54u-00000008R7X-2e59;
	Mon, 18 Aug 2025 18:59:32 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo4YF-00000008Kdu-3yT9;
	Mon, 18 Aug 2025 18:25:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 23F565C62A4;
	Mon, 18 Aug 2025 18:25:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50078C4CEEB;
	Mon, 18 Aug 2025 18:25:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755541546;
	bh=P5OJ4RHbL7bfCZueIbVBkF40afwl0Pm482XBXI7/HfQ=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=IDIrUk6equNseS0ZrN+tjnJzBgBbvhGFPTLcNrmqpDYFo8ThI70gRQ1UQo83gHjLN
	 y6axwix4PwvKDr3Qxm4V+5NyFfjqgcbavchlT1oHZgZygTQm9lVuS1d70g6BqQBdya
	 50XI46xc97f1NcbV9SKLIwwXvcY/QHJfm5PPEZ4BRJ7f61zRejSLUpXnWGVDzcerDF
	 fzJ9IGTpdNW9EmIJ52biPC64T7A73pMNSc5BRcd6QmhoC2Y9A4KEwaVUs17c44r9Zj
	 4Ba762DlDExTmr4RoFgVk3fpKr7j0VmeHipw0KWx8OadDdKkSeegTBvmRmNl//M3xp
	 UHGRuax/NOnLA==
Date: Mon, 18 Aug 2025 13:25:44 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Shradha Todi <shradha.t@samsung.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, mani@kernel.org,
	lpieralisi@kernel.org, kwilczynski@kernel.org, robh@kernel.org,
	bhelgaas@google.com, jingoohan1@gmail.com, krzk+dt@kernel.org,
	conor+dt@kernel.org, alim.akhtar@samsung.com, vkoul@kernel.org,
	kishon@kernel.org, arnd@arndb.de, m.szyprowski@samsung.com,
	jh80.chung@samsung.com, pankaj.dubey@samsung.com
Subject: Re: [PATCH v3 11/12] PCI: exynos: Add support for Tesla FSD SoC
Message-ID: <20250818182544.GA534647@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <000d01dc1022$ad8c0740$08a415c0$@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_112548_068591_3F272F4F 
X-CRM114-Status: GOOD (  33.01  )
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

[+to Krzysztof]

On Mon, Aug 18, 2025 at 03:00:00PM +0530, Shradha Todi wrote:
> > On Mon, Aug 11, 2025 at 09:16:37PM +0530, Shradha Todi wrote:
> > > Add host and endpoint controller driver support for FSD SoC.

> > It's kind of unfortunate that the driver uses "ep" everywhere for
> > struct exynos_pcie pointers.  It's going to be confusing because "ep"
> > is also commonly used for endpoint-related things, e.g., struct
> > dw_pcie_ep pointers.  Maybe it's not worth changing; I dunno.
> 
> I did try to rename the structure and the pointers 
> (https://lore.kernel.org/all/20230214121333.1837-9-shradha.t@samsung.com/)
> But the intention was different back then and so the idea was rejected.
> I could add a patch to only rename the pointers to something less
> confusing like "exy_pci"

The patch you mention did several renames:

  s/to_exynos_pcie/to_samsung_pcie/
  s/struct exynos_pcie/struct samsung_pcie/
  s/struct exynos_pcie *ep/struct samsung_pcie *sp/

I'm only concerned about the confusion of "ep" being used both for
"struct exynos_pcie *" and for "struct dw_pcie_ep *".

It would still be sort of an annoying patch to do something like this:

  s/struct exynos_pcie *ep/struct exynos_pcie *pcie/

But 'git grep "struct .*_pcie \*.*=" drivers/pci/controller/' says
using "pcie" in this way is quite common, so maybe it would be worth
doing.

What do you think, Krzysztof?

> > > +static irqreturn_t fsd_pcie_irq_handler(int irq, void *arg)
> > > +{
> > > +	u32 val;
> > > +	struct exynos_pcie *ep = arg;
> > > +	struct dw_pcie *pci = &ep->pci;
> > > +	struct dw_pcie_rp *pp = &pci->pp;
> > > +
> > > +	val = readl(ep->elbi_base + FSD_IRQ2_STS);
> > > +	if ((val & FSD_IRQ_MSI_ENABLE) == FSD_IRQ_MSI_ENABLE) {
> > > +		val &= FSD_IRQ_MSI_ENABLE;
> > > +		writel(val, ep->elbi_base + FSD_IRQ2_STS);
> > 
> > This looks weird because FSD_IRQ_MSI_ENABLE sounds like an *enable*
> > bit, but here you're treating it as a *status* bit.
> > 
> > As far as I can tell, you set FSD_IRQ_MSI_ENABLE once at probe-time in
> > fsd_pcie_msi_init(), then you clear it here in an IRQ handler, and it
> > will never be set again.  That seems wrong; am I missing something?
> 
> Actually the status IRQ and enable IRQ registers are different offsets
> but the bit position for MSI remains same in both cases so I just reused
> the macro.

Ah, that's what I missed, thanks!  At probe-time, fsd_pcie_msi_init()
enables it in FSD_IRQ2_EN.  Here you clear it in FSD_IRQ2_STS.

> But I understand that it's confusing so I will add another
> macro for FSD_IRQ_MSI_STATUS or just rename the macro to
> FSD_IRQ_MSI to re-use.

Using the same name just because a similar bit happens to be at the
same position in two different registers is definitely confusing.  I
think it will be better to have two macros, one for FSD_IRQ2_STS and
another for FSD_IRQ2_EN, e.g.,

  #define FSD_IRQ2_STS                         0x008
  #define   FSD_IRQ2_STS_MSI                   BIT(17)
  #define FSD_IRQ2_EN                          0x018
  #define   FSD_IRQ2_EN_MSI                    BIT(17)

Another question about the test:

  if ((val & FSD_IRQ_MSI_ENABLE) == FSD_IRQ_MSI_ENABLE) {

This assumes there are no other bits in FSD_IRQ2_STS that could be
set.  I would have expected a test like this:

  if (val & FSD_IRQ_MSI_ENABLE) {

Is there a reason to restrict it to the case when *only*
FSD_IRQ_MSI_ENABLE is set?

Bjorn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
