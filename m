Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66FA7CA0EEB
	for <linux-phy@archiver.kernel.org>; Tue, 19 Aug 2025 13:07:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hiGSz4H0qPmYkyoZvcmngNk12vPCsiRZHHQYCixwq6E=; b=Zr7VbnWdOcl84C
	8b12r/fxBKrUGqdyhRD3sBwC+GX4i/PoVZH7e4RcDKU7ukXI6mOEbsS0W26934OkUV/PH5jaVwPcC
	GISeJh5EPzTvDiVvfzFQTDWrfiF8+uvgA66P1SepMAPFvFXDC5tKs+hjbdVko7QbZbRqB+Sau4ekv
	wPLB0xysQDuNYu72KAmagXqG62NFrgf+qTrfkEcW7p6qq6D3GjYWUoZhxUvyGgJFHs+RQRZQWml+R
	odaT6GVaUh+Ug93ZVghO1p92lcJdNj0Vm9CT+Vl/9cv0vNCatK51QCb2Z4rZ6LxYnzncmYZPumvWU
	OuisTI0p+2bt0M3j91yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoM3t-0000000AX9E-0koV;
	Tue, 19 Aug 2025 13:07:37 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoKMz-0000000AFon-0ry7
	for linux-phy@lists.infradead.org;
	Tue, 19 Aug 2025 11:19:30 +0000
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
	by mailout4.samsung.com (KnoxPortal) with ESMTP id 20250819111905epoutp047623f048bd69db2ab73eb5c507f7fb4f~dJwgv9HN02980129801epoutp04h
	for <linux-phy@lists.infradead.org>; Tue, 19 Aug 2025 11:19:05 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20250819111905epoutp047623f048bd69db2ab73eb5c507f7fb4f~dJwgv9HN02980129801epoutp04h
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1755602345;
	bh=0x7d8H6xz06YdYxBNLbU6UcbRVQToFcahkQJVNXKeqY=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=U1BmD/j/YwHu+EzB0ss87m0t849jfii6N5aFLgGxZWLTxUYiJjQQbn6ZZHAF5aIO8
	 MM+lGFfh7VKEocSr9NHirbwVaEXcyedMZCDhHfMafc98WLYEniBfTnzklZASPQytyl
	 7u3qTq5A6Gn81m+5ddvih6GoEJtzRRY965Ux2tPA=
Received: from epsnrtp03.localdomain (unknown [182.195.42.155]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPS id
	20250819111905epcas5p29e792b412afad62d2b1010071fe37c5e~dJwgKcvVD1153211532epcas5p2r;
	Tue, 19 Aug 2025 11:19:05 +0000 (GMT)
Received: from epcas5p2.samsung.com (unknown [182.195.38.95]) by
	epsnrtp03.localdomain (Postfix) with ESMTP id 4c5nCX0vk7z3hhTD; Tue, 19 Aug
	2025 11:19:04 +0000 (GMT)
Received: from epsmtip2.samsung.com (unknown [182.195.34.31]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
	20250819111903epcas5p415026199e9a0ed1375118cb29bc45e32~dJweljSOS3266032660epcas5p4K;
	Tue, 19 Aug 2025 11:19:03 +0000 (GMT)
Received: from FDSFTE462 (unknown [107.122.81.248]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20250819111900epsmtip260850d7ecf79765666ebe8b2011e9d64~dJwboEOGA1429714297epsmtip2f;
	Tue, 19 Aug 2025 11:19:00 +0000 (GMT)
From: "Shradha Todi" <shradha.t@samsung.com>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>, "'Bjorn Helgaas'"
	<helgaas@kernel.org>, "'Krzysztof Kozlowski'"
	<krzysztof.kozlowski@linaro.org>
Cc: <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-samsung-soc@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<mani@kernel.org>, <lpieralisi@kernel.org>, <kwilczynski@kernel.org>,
	<robh@kernel.org>, <bhelgaas@google.com>, <jingoohan1@gmail.com>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>, <alim.akhtar@samsung.com>,
	<vkoul@kernel.org>, <kishon@kernel.org>, <arnd@arndb.de>,
	<m.szyprowski@samsung.com>, <jh80.chung@samsung.com>,
	<pankaj.dubey@samsung.com>
In-Reply-To: <29287880-9436-4acd-b3f9-b4d9eb726896@kernel.org>
Subject: RE: [PATCH v3 11/12] PCI: exynos: Add support for Tesla FSD SoC
Date: Tue, 19 Aug 2025 16:48:59 +0530
Message-ID: <00b401dc10fb$11bb1020$35313060$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQMTDUGC4sYT5EPbicD3neTazEuiywIHCRg2AsFZ7fKx1ZhD8A==
Content-Language: en-in
X-CMS-MailID: 20250819111903epcas5p415026199e9a0ed1375118cb29bc45e32
X-Msg-Generator: CA
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-541,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250819063415epcas5p3e0bebab838b913e90bd07adf23c410f1
References: <20250818182544.GA534647@bhelgaas>
	<CGME20250819063415epcas5p3e0bebab838b913e90bd07adf23c410f1@epcas5p3.samsung.com>
	<29287880-9436-4acd-b3f9-b4d9eb726896@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250819_041913_918457_3B8A3A24 
X-CRM114-Status: GOOD (  29.32  )
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
> From: Krzysztof Kozlowski <krzk@kernel.org>
> Sent: 19 August 2025 12:04
> To: Bjorn Helgaas <helgaas@kernel.org>; Shradha Todi <shradha.t@samsung.com>; Krzysztof
> Kozlowski <krzysztof.kozlowski@linaro.org>
> Cc: linux-pci@vger.kernel.org; devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> linux-samsung-soc@vger.kernel.org; linux-kernel@vger.kernel.org; linux-phy@lists.infradead.org;
> mani@kernel.org; lpieralisi@kernel.org; kwilczynski@kernel.org; robh@kernel.org;
> bhelgaas@google.com; jingoohan1@gmail.com; krzk+dt@kernel.org; conor+dt@kernel.org;
> alim.akhtar@samsung.com; vkoul@kernel.org; kishon@kernel.org; arnd@arndb.de;
> m.szyprowski@samsung.com; jh80.chung@samsung.com; pankaj.dubey@samsung.com
> Subject: Re: [PATCH v3 11/12] PCI: exynos: Add support for Tesla FSD SoC
> 
> On 18/08/2025 20:25, Bjorn Helgaas wrote:
> > [+to Krzysztof]
> >
> > On Mon, Aug 18, 2025 at 03:00:00PM +0530, Shradha Todi wrote:
> >>> On Mon, Aug 11, 2025 at 09:16:37PM +0530, Shradha Todi wrote:
> >>>> Add host and endpoint controller driver support for FSD SoC.
> >
> >>> It's kind of unfortunate that the driver uses "ep" everywhere for
> >>> struct exynos_pcie pointers.  It's going to be confusing because "ep"
> >>> is also commonly used for endpoint-related things, e.g., struct
> >>> dw_pcie_ep pointers.  Maybe it's not worth changing; I dunno.
> >>
> >> I did try to rename the structure and the pointers
> >> (https://lore.kernel.org/all/20230214121333.1837-9-shradha.t@samsung.com/)
> >> But the intention was different back then and so the idea was rejected.
> >> I could add a patch to only rename the pointers to something less
> >> confusing like "exy_pci"
> >
> > The patch you mention did several renames:
> >
> >   s/to_exynos_pcie/to_samsung_pcie/
> >   s/struct exynos_pcie/struct samsung_pcie/
> >   s/struct exynos_pcie *ep/struct samsung_pcie *sp/
> >
> > I'm only concerned about the confusion of "ep" being used both for
> > "struct exynos_pcie *" and for "struct dw_pcie_ep *".
> >
> > It would still be sort of an annoying patch to do something like this:
> >
> >   s/struct exynos_pcie *ep/struct exynos_pcie *pcie/
> >
> > But 'git grep "struct .*_pcie \*.*=" drivers/pci/controller/' says
> > using "pcie" in this way is quite common, so maybe it would be worth
> > doing.
> >
> > What do you think, Krzysztof?
> 
> I think you want other Krzysztof, but nevertheless, the reasoning there
> "Changing it to samsung_pcie for making it
> generic."
> is wrong. The naming of these structures do not matter, they are not
> less generic. This is rather churn, which will affect backporting for
> ZERO readability increase. Why zero? Because calling all this "exynos"
> is the same as calling all this "samsung". It just does not matter.
> 
> However s/ep/pcie/ in variable name makes sense if that's more common.
> 

I will add a patch in the series to do that.

> 
> Best regards,
> Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
