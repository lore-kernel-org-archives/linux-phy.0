Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6B90C8302F
	for <linux-phy@archiver.kernel.org>; Tue,  1 Jul 2025 11:47:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ChpO19gd86OARnIZp2DHy8/VHU4NkVGV8jQMUjidWJI=; b=m5eTum9KNp7f3J
	rrErphrmuKkHA3nKRrcIMrhvYPKC9qqoXIvCzfZdVDTp8JZxjsNvf2/edEBE03JWK2aw5UFPEoGEe
	87tMljUJyAzT12tAAeLTH9DryO+++yUaF2x9Za3NbEshSb/EsViQ1EHioba1drz+3IQ5N9d830fXv
	4uHgr4Qy/0mXUSZjRNw3jgp3vfQuU5ytnxtcLspsKhUFLXCmvTHjc8auPnSoMvAwv9EBSnzz/ruoj
	HvJ9DNT1rt9SrX2mm3VWFJcjFd99M5dIMmHt2RrovjSU95tTXJRbEk9+Z3wpbZq1xfgvRH6Wcf31R
	1iyqJ3KBcKvqWMq2bX3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWZSu-00000004ufi-1gi2;
	Tue, 01 Jul 2025 11:47:56 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWZLg-00000004t7e-1f5s
	for linux-phy@lists.infradead.org;
	Tue, 01 Jul 2025 11:40:30 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20250701114024epoutp02eb16883bb20222a70d0452257da6ba16~OHcIQRFsT2710927109epoutp02L
	for <linux-phy@lists.infradead.org>; Tue,  1 Jul 2025 11:40:24 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20250701114024epoutp02eb16883bb20222a70d0452257da6ba16~OHcIQRFsT2710927109epoutp02L
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1751370024;
	bh=2Nli5jAMu0NC9zLKjZfj4lZI1r3k1lL6PZil61CiwoQ=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=KY7JO1IsHlfA9MJX/INx8OUB847GygezOpPrB/oKVBqWR2MCcGbK12Jt072bSnoBJ
	 zI0/WThqCBwwTO3oKM9pVqvvpST/SigLVMAIRRB0OV3jRQh9C0Kiti219ZeHzcOB/N
	 89AT5YOTsEUDcOR3qPlJQMDXwMWgDHnNnCFAxM9Y=
Received: from epsnrtp04.localdomain (unknown [182.195.42.156]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPS id
	20250701114023epcas5p33dd4f6f24af1c80abcf7c49a1993ea12~OHcHvVz-72271022710epcas5p3o;
	Tue,  1 Jul 2025 11:40:23 +0000 (GMT)
Received: from epcas5p1.samsung.com (unknown [182.195.38.180]) by
	epsnrtp04.localdomain (Postfix) with ESMTP id 4bWh0j3BTSz6B9m7; Tue,  1 Jul
	2025 11:40:21 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
	20250701113336epcas5p1cfa1a369fad337b9a2211c7588cd7561~OHWMK6rHg2219722197epcas5p1d;
	Tue,  1 Jul 2025 11:33:36 +0000 (GMT)
Received: from FDSFTE462 (unknown [107.122.81.248]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20250701113333epsmtip106136eafe25d00b19c1917b7fa970e20~OHWJXty0k3251632516epsmtip1u;
	Tue,  1 Jul 2025 11:33:33 +0000 (GMT)
From: "Shradha Todi" <shradha.t@samsung.com>
To: "'Bjorn Helgaas'" <helgaas@kernel.org>
Cc: <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-samsung-soc@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<linux-fsd@tesla.com>, <mani@kernel.org>, <lpieralisi@kernel.org>,
	<kw@linux.com>, <robh@kernel.org>, <bhelgaas@google.com>,
	<jingoohan1@gmail.com>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
	<alim.akhtar@samsung.com>, <vkoul@kernel.org>, <kishon@kernel.org>,
	<arnd@arndb.de>, <m.szyprowski@samsung.com>, <jh80.chung@samsung.com>,
	<pankaj.dubey@samsung.com>
In-Reply-To: <20250627162943.GA1672296@bhelgaas>
Subject: RE: [PATCH v2 06/10] dt-bindings: PCI: Add bindings support for
 Tesla FSD SoC
Date: Tue, 1 Jul 2025 17:03:31 +0530
Message-ID: <02b201dbea7b$fbaf5390$f30dfab0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQLemVNzYEMOy/tIwP8yQfjCLghe+gHQOY9Ysgk/TyA=
Content-Language: en-in
X-CMS-MailID: 20250701113336epcas5p1cfa1a369fad337b9a2211c7588cd7561
X-Msg-Generator: CA
X-Sendblock-Type: REQ_APPROVE
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-541,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250627162949epcas5p1fc5eebd0036116ce2913cdcbabdab1fd
References: <CGME20250627162949epcas5p1fc5eebd0036116ce2913cdcbabdab1fd@epcas5p1.samsung.com>
	<20250627162943.GA1672296@bhelgaas>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250701_044028_740439_F155A809 
X-CRM114-Status: GOOD (  21.53  )
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



> -----Original Message-----
> From: Bjorn Helgaas <helgaas@kernel.org>
> Sent: 27 June 2025 22:00
> To: Shradha Todi <shradha.t@samsung.com>
> Cc: linux-pci@vger.kernel.org; devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
linux-
> samsung-soc@vger.kernel.org; linux-kernel@vger.kernel.org; linux-phy@lists.infradead.org; linux-
> fsd@tesla.com; manivannan.sadhasivam@linaro.org; lpieralisi@kernel.org; kw@linux.com;
> robh@kernel.org; bhelgaas@google.com; jingoohan1@gmail.com; krzk+dt@kernel.org;
> conor+dt@kernel.org; alim.akhtar@samsung.com; vkoul@kernel.org; kishon@kernel.org;
> arnd@arndb.de; m.szyprowski@samsung.com; jh80.chung@samsung.com; pankaj.dubey@samsung.com
> Subject: Re: [PATCH v2 06/10] dt-bindings: PCI: Add bindings support for Tesla FSD SoC
> 
> On Wed, Jun 25, 2025 at 10:22:25PM +0530, Shradha Todi wrote:
> > Document the PCIe controller device tree bindings for Tesla FSD
> > SoC for both RC and EP.
> 
> > +++ b/Documentation/devicetree/bindings/pci/samsung,exynos-pcie.yaml
> 
> > -  clocks:
> > -    items:
> > -      - description: PCIe bridge clock
> > -      - description: PCIe bus clock
> 
> > -  vdd10-supply:
> > -    description:
> > -      Phandle to a regulator that provides 1.0V power to the PCIe block.
> > -
> > -  vdd18-supply:
> > -    description:
> > -      Phandle to a regulator that provides 1.8V power to the PCIe block.
> 
> > +            - description: pcie bridge clock
> > +            - description: pcie bus clock
> 
> Gratuitous "PCIe" capitalization changes here and in supplies below.
> This is just plain English text so we can use English conventions.
> 
> > +        vdd10-supply:
> > +          description:
> > +            phandle to a regulator that provides 1.0v power to the pcie block.
> > +
> > +        vdd18-supply:
> > +          description:
> > +            phandle to a regulator that provides 1.8v power to the pcie block.
> 
> I *would* be OK if you dropped the periods at the end of these, which
> would make them match the other descriptions in this binding.
> 
> > +++ b/Documentation/devicetree/bindings/pci/tesla,fsd-pcie-ep.yaml
> 
> I'm not sure about the "tesla,fsd-pcie-ep.yaml" filename.  I see that
> it currently only describes a tesla endpoint, but it seems like maybe
> this should be parallel to the "samsung,exynos-pcie.yaml" host
> controller binding.
> 
> Bjorn

Actually there is no support for Exynos5433 in EP mode. Initially I named
the binding file "samsung,exynos-pcie-ep.yaml" to make it parallel to the host
controller bindings. But I received a comment that file names should match
the compatible strings which makes sense so I changed it to this.



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
