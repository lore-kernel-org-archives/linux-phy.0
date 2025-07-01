Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 501C6C8303F
	for <linux-phy@archiver.kernel.org>; Tue,  1 Jul 2025 19:00:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tFfnBITOdcJlB3P5blkwUWKsXUZB/0Zrc7e8oYp8w4A=; b=uHleIBYOyq36bL
	yEl4ugsuKQ+kbVE9mV6MJBh+1O4wmib8LIWiaKJkkPQzkT04VQUVbeCc9yL04I3WlexTJGSrUx40S
	H8EYgeZF9CI0yhTRJwUroE1xWyC7J0LevQ6TDbzWk5acTKGcHlrqlDphCQTsU3+CCYldSdigLCaEQ
	wqNQsJ818WhHqnIwCky1/aeem2CgbjjYh0dE9JaBArb5CfT3vDFCWTM7hAT6RlVv6DgCYxcHNUWIk
	RL+OPTRQueYK5Jq7o0qKX/ze4BHRBWDmvg8UinPmvgt9F2JmgPVyrjYy/R7bCbUMjJ8U/bWN5qcsK
	veFw0RerB1zz1ArFoMQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWgDU-00000006PFV-0AlD;
	Tue, 01 Jul 2025 19:00:28 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWdt7-0000000632d-02JQ
	for linux-phy@lists.infradead.org;
	Tue, 01 Jul 2025 16:31:18 +0000
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20250701163112epoutp032a7bc755b113617b6951ec7da1e8fd7e~OLaCJ5IXC2043220432epoutp03I
	for <linux-phy@lists.infradead.org>; Tue,  1 Jul 2025 16:31:12 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20250701163112epoutp032a7bc755b113617b6951ec7da1e8fd7e~OLaCJ5IXC2043220432epoutp03I
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1751387472;
	bh=CYCieZx7RGc4LBogHf+a8UqHutLdl5VHK4F8STwbvPM=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=oT3g7+5ykWliopi8mIAdsTlCpWF4z7LPDgU/YHY2nVhTIVLVp/iNxC6sMHGpCscf6
	 xXqM5Vf8YsWk3RvOJ8/byHzgAuVETzDxQ3lqsd3/X5++BIaDvsp8+hk9g/aj6uzSwF
	 qpm6UMUNgJgIvc3JXmvsYi33AP+FsPag3DbUfyZY=
Received: from epsnrtp04.localdomain (unknown [182.195.42.156]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPS id
	20250701163111epcas5p2709c45ba4dad180fe68d0ca67be7a784~OLaBi-Gsx2740427404epcas5p2f;
	Tue,  1 Jul 2025 16:31:11 +0000 (GMT)
Received: from epcas5p1.samsung.com (unknown [182.195.38.174]) by
	epsnrtp04.localdomain (Postfix) with ESMTP id 4bWpSF6RFTz6B9m5; Tue,  1 Jul
	2025 16:31:09 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
	20250701133810epcas5p3e1acdfe3bfcf5276e6c70f12755fdf57~OJC9HjeEd0290902909epcas5p3y;
	Tue,  1 Jul 2025 13:38:10 +0000 (GMT)
Received: from FDSFTE462 (unknown [107.122.81.248]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20250701133807epsmtip15aa5b5f8243b909f80b036d6b7b3ca61~OJC6dIU3K0912509125epsmtip18;
	Tue,  1 Jul 2025 13:38:07 +0000 (GMT)
From: "Shradha Todi" <shradha.t@samsung.com>
To: "'Rob Herring'" <robh@kernel.org>
Cc: <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-samsung-soc@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<linux-fsd@tesla.com>, <manivannan.sadhasivam@linaro.org>,
	<lpieralisi@kernel.org>, <kw@linux.com>, <bhelgaas@google.com>,
	<jingoohan1@gmail.com>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
	<alim.akhtar@samsung.com>, <vkoul@kernel.org>, <kishon@kernel.org>,
	<arnd@arndb.de>, <m.szyprowski@samsung.com>, <jh80.chung@samsung.com>,
	<pankaj.dubey@samsung.com>
In-Reply-To: <20250627211236.GA147018-robh@kernel.org>
Subject: RE: [PATCH v2 06/10] dt-bindings: PCI: Add bindings support for
 Tesla FSD SoC
Date: Tue, 1 Jul 2025 19:08:06 +0530
Message-ID: <02c001dbea8d$62b21d50$281657f0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQFUClgbainc6hQuKSBO0V8ttZVgkwK41mGpAfhwG8gB/KC3xLT3likQ
Content-Language: en-in
X-CMS-MailID: 20250701133810epcas5p3e1acdfe3bfcf5276e6c70f12755fdf57
X-Msg-Generator: CA
X-Sendblock-Type: REQ_APPROVE
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-541,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250625165315epcas5p19f081c8a0e2e7dc87698577cc2d460ca
References: <20250625165229.3458-1-shradha.t@samsung.com>
	<CGME20250625165315epcas5p19f081c8a0e2e7dc87698577cc2d460ca@epcas5p1.samsung.com>
	<20250625165229.3458-7-shradha.t@samsung.com>
	<20250627211236.GA147018-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250701_093117_362254_76D18C34 
X-CRM114-Status: GOOD (  14.04  )
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
> From: Rob Herring <robh@kernel.org>
> Sent: 28 June 2025 02:43
> To: Shradha Todi <shradha.t@samsung.com>
> Cc: linux-pci@vger.kernel.org; devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
linux-
> samsung-soc@vger.kernel.org; linux-kernel@vger.kernel.org; linux-phy@lists.infradead.org; linux-
> fsd@tesla.com; manivannan.sadhasivam@linaro.org; lpieralisi@kernel.org; kw@linux.com;
> bhelgaas@google.com; jingoohan1@gmail.com; krzk+dt@kernel.org; conor+dt@kernel.org;
> alim.akhtar@samsung.com; vkoul@kernel.org; kishon@kernel.org; arnd@arndb.de;
> m.szyprowski@samsung.com; jh80.chung@samsung.com; pankaj.dubey@samsung.com
> Subject: Re: [PATCH v2 06/10] dt-bindings: PCI: Add bindings support for Tesla FSD SoC
> 
> On Wed, Jun 25, 2025 at 10:22:25PM +0530, Shradha Todi wrote:
> > Document the PCIe controller device tree bindings for Tesla FSD
> > SoC for both RC and EP.
> 
> Drop 'bindings support for ' in the subject.
> 
> >
> > Signed-off-by: Shradha Todi <shradha.t@samsung.com>
> > ---
> >  .../bindings/pci/samsung,exynos-pcie.yaml     | 121 ++++++++++++------
> 
> I think this should be its own schema file. There's not much shared.
> 

Resending my reply after trimming.

Will make 2 new bindings - samsung,exynos-pcie-common.yaml and
tesla,fsd-pcie.yaml
Does that sound okay?


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
