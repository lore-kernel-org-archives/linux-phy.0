Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8328AC8303C
	for <linux-phy@archiver.kernel.org>; Tue,  1 Jul 2025 19:00:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=HAKSExfvdcMvnpujn8wIV2f/ckKL0l6DHHFZ9PfgU8A=; b=wgTxbqlrr6lG+p
	VZmfrVH+k/aIv/Gtq3vM2Yc3sZqDidxUNzdwdvRCBkRETLFA9xIfh1dbS9mSWUd4kfc9bs2aFeOwE
	H/EpwfEF7r2nmIqNIsdCj08X7grhmY+5DA2CZuwA7AcnUzHij0jJxtIsqFJP0SfKYrjgOkLqhZNQQ
	DAOp5Y2SpK0luBGRXIZAgsCWE4Oa/HAvhLdXQs21WCYpfjYnplSgOkO2SYtf9WAqQCh1+hCnKyznh
	rHP4CXeiuFtpFfXPkAYbHhDLAyxJvlKoUD8WVYw+arRvip+G+Ytq9n537DA+2LUw6cMOXgtECvQIg
	h1f4h3Z4ddiEamnbssOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWgDj-00000006Pa5-13Ng;
	Tue, 01 Jul 2025 19:00:43 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWeIb-000000068P2-0lWr;
	Tue, 01 Jul 2025 16:57:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 4EA96613A9;
	Tue,  1 Jul 2025 16:57:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3601C4CEEB;
	Tue,  1 Jul 2025 16:57:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751389056;
	bh=yt/kc/jTaSiC0j9rC9eyESiUppBPRZhs+YZzLBzzs2Q=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=k3cAUR1cwKTtg4sD128wLSlwJY88qu3T8AwGwte1udkUcUr3rKs7T6494qFObHT3B
	 JTrodUx32RfXmXcNfG9GLlbH7Hv0sRG4CaLCPx0sd/i9FgvVUS06xnNt78wV/DcoOW
	 YZD84F4eISrgrOurB154lqR8dX8fNxi3VqtMT67f+pxlua1FKRWSDMH5Zi5BQELAKU
	 jRdwCi+sEZLy4Ds/xihdLxowlVRqTOkn6NUD+ZIuAz1phRiYvAx5s724BmTAiRVJeP
	 QUQt/PRY4OOWRarBMjZsbQ/3HCYM0A0EbeQBGSiU75BNmWLRI8XMP2GnoUsfYoNV3c
	 N7xUf38+SJ8iQ==
Date: Tue, 1 Jul 2025 11:57:34 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Shradha Todi <shradha.t@samsung.com>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-fsd@tesla.com, mani@kernel.org,
	lpieralisi@kernel.org, kw@linux.com, robh@kernel.org,
	bhelgaas@google.com, jingoohan1@gmail.com, krzk+dt@kernel.org,
	conor+dt@kernel.org, alim.akhtar@samsung.com, vkoul@kernel.org,
	kishon@kernel.org, arnd@arndb.de, m.szyprowski@samsung.com,
	jh80.chung@samsung.com, pankaj.dubey@samsung.com
Subject: Re: [PATCH v2 09/10] PCI: exynos: Add support for Tesla FSD SoC
Message-ID: <20250701165734.GA1839534@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <02b101dbea79$d7e086c0$87a19440$@samsung.com>
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

On Tue, Jul 01, 2025 at 04:48:13PM +0530, Shradha Todi wrote:
> > -----Original Message-----
> > From: Bjorn Helgaas <helgaas@kernel.org>
> > Sent: 28 June 2025 01:01
> > To: Shradha Todi <shradha.t@samsung.com>
> > Cc: linux-pci@vger.kernel.org; devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> linux-
> > samsung-soc@vger.kernel.org; linux-kernel@vger.kernel.org; linux-phy@lists.infradead.org; linux-
> > fsd@tesla.com; manivannan.sadhasivam@linaro.org; lpieralisi@kernel.org; kw@linux.com;
> > robh@kernel.org; bhelgaas@google.com; jingoohan1@gmail.com; krzk+dt@kernel.org;
> > conor+dt@kernel.org; alim.akhtar@samsung.com; vkoul@kernel.org; kishon@kernel.org;
> > arnd@arndb.de; m.szyprowski@samsung.com; jh80.chung@samsung.com; pankaj.dubey@samsung.com
> > Subject: Re: [PATCH v2 09/10] PCI: exynos: Add support for Tesla FSD SoC

Would be good if your mailer could support the usual quote mechanism,
e.g. the "On Wed, Jun 25, 2025 at 10:22:28PM +0530, Shradha Todi
wrote:" line below.  No need for all the header duplication above.

> > On Wed, Jun 25, 2025 at 10:22:28PM +0530, Shradha Todi wrote:
> > > Add host and endpoint controller driver support for FSD SoC.

> > This would be a little nicer if you added soc_variant and device_mode
> > and the code that sets and tests them for exynos_5433 first in a
> > separate patch.  Then it would be more obvious that the new FSD parts
> > don't affect exynos_5433 since this patch would only be *adding*
> > FSD-specific things.
> 
> Sure,  I have no issues in splitting the patches further. Though
> unfortunately, I or anyone I know does not possess a board which has
> Exynos 5433 chipset.  Therefore, I'm unable to verify these changes
> for Exynos chipset. I took care to not disturb the exynos flow
> functionally but would be great if someone could test this and
> confirm that it works well on Exynos 5433 after the changes.

Yeah, that's a common situation, and there's no problem with adding
this functionality.  But in the unlikely event there's a mistake that
relates to Exynos 5433, it will be easier for someone with that board
to analyze the problem if the changes that affect exynos_5433 are
split out into a patch that doesn't include any FSD-related changes.

> > >  static const struct samsung_pcie_pdata exynos_5433_pcie_rc_pdata = {
> > >  	.dwc_ops		= &exynos_dw_pcie_ops,
> > >  	.pci_ops		= &exynos_pci_ops,
> > >  	.host_ops		= &exynos_pcie_host_ops,
> > >  	.res_ops		= &exynos_res_ops_data,
> > > +	.soc_variant		= EXYNOS_5433,
> > > +	.device_mode		= DW_PCIE_RC_TYPE,
> > >  };
> > 
> > >  static const struct of_device_id exynos_pcie_of_match[] = {
> > > @@ -449,6 +756,14 @@ static const struct of_device_id exynos_pcie_of_match[] = {
> > >  		.compatible = "samsung,exynos5433-pcie",
> > >  		.data = (void *) &exynos_5433_pcie_rc_pdata,
> > >  	},
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
