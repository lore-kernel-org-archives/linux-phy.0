Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74785C5AD49
	for <linux-phy@archiver.kernel.org>; Thu, 29 May 2025 15:33:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bp4tyVqS1b/ZzaGLJavQGLDYCOirW1rw+0mf1HMkxJo=; b=lHjCMvVeN5YDSU
	lcKTEpl4pSUcJbo7B9vDc0aMuJ9O8/2tU65uD33daLe4flHp0IWhgdM5gIvsu+CJ80w7u2UU9tJJx
	5q1go7n/AL+i6dPg+dOmwOB+OB6i7Z+cIYwOWqk0GrhWroz3wbBRIJIkVrPyo9E6gvUeZu+HX6vQt
	Ye5WY8DLdW2KYo7P4eXujo0PrVNSADH/5Iwd9jO+FWYkYUOLWiDUtqg4Ln3GoEE8q286BG/9ja1th
	ceBLFreT3/3KPScU33ELxPIp0+qzDCkGrDli5uclqFvo2UcnZmBd/z35+jxuQkLKuiBE0XR9FeR1M
	7GCB3gu4v38a/3/WXuxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKfGK-0000000G50v-007V;
	Thu, 29 May 2025 15:33:44 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKea3-0000000G0iX-42ob
	for linux-phy@lists.infradead.org;
	Thu, 29 May 2025 14:50:06 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20250529144958epoutp0368745f63dbf2b7e59b88a944e4052e4f~EBvOGkBc10793407934epoutp03V
	for <linux-phy@lists.infradead.org>; Thu, 29 May 2025 14:49:58 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20250529144958epoutp0368745f63dbf2b7e59b88a944e4052e4f~EBvOGkBc10793407934epoutp03V
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1748530198;
	bh=JoVIT/YoibxB9MFqaRb9BAFdhMoHeYYoqYbA3YWaDwU=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=lsIxr1nT8d5gNFvvbFGbztnByv7dD3G0rMX/e5CCROqdCLNOYj97ql/jSZ/zMuM8N
	 vYzJ9/UHxwl4qOQN1q9djKaM9KMZPId/oy3NkURzKFHumIu/jUFYUaVd+0jEpYJq1A
	 oqW62/XHL8f14ceLQhrV+wvGGIdkQCMll60WGd3A=
Received: from epsnrtp02.localdomain (unknown [182.195.42.154]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPS id
	20250529144957epcas5p121ac1b2643ce23abb26c0448e1a0d2f6~EBvNmI7t03174131741epcas5p1v;
	Thu, 29 May 2025 14:49:57 +0000 (GMT)
Received: from epcas5p4.samsung.com (unknown [182.195.38.182]) by
	epsnrtp02.localdomain (Postfix) with ESMTP id 4b7Tmh2V00z2SSKX; Thu, 29 May
	2025 14:49:56 +0000 (GMT)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
	20250529102448epcas5p1a8209b6700e2206c3bbb6669f473b28b~D_Hs54RNZ1678116781epcas5p1m;
	Thu, 29 May 2025 10:24:48 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
	epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20250529102448epsmtrp2ae0261061f58b804d19887addb119fa9~D_Hs4qBBk2330423304epsmtrp2h;
	Thu, 29 May 2025 10:24:48 +0000 (GMT)
X-AuditID: b6c32a29-55afd7000000223e-c2-683835f012c1
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
	epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	9D.C8.08766.0F538386; Thu, 29 May 2025 19:24:48 +0900 (KST)
Received: from FDSFTE462 (unknown [107.122.81.248]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20250529102445epsmtip1d9de3beca2d4560f1d5e428ba1253ead~D_Hp7hmwq1925019250epsmtip1K;
	Thu, 29 May 2025 10:24:45 +0000 (GMT)
From: "Shradha Todi" <shradha.t@samsung.com>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>
Cc: <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<linux-phy@lists.infradead.org>, <manivannan.sadhasivam@linaro.org>,
	<lpieralisi@kernel.org>, <kw@linux.com>, <robh@kernel.org>,
	<bhelgaas@google.com>, <jingoohan1@gmail.com>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <alim.akhtar@samsung.com>, <vkoul@kernel.org>,
	<kishon@kernel.org>, <arnd@arndb.de>, <m.szyprowski@samsung.com>,
	<jh80.chung@samsung.com>, "'Pankaj Dubey'" <pankaj.dubey@samsung.com>,
	<linux-samsung-soc@vger.kernel.org>
In-Reply-To: <441dd5c3-fd51-4471-86ad-337c646b1571@kernel.org>
Subject: RE: [PATCH 09/10] PCI: exynos: Add support for Tesla FSD SoC
Date: Thu, 29 May 2025 15:54:43 +0530
Message-ID: <0eec01dbd083$e78c8200$b6a58600$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQKa2HaEso6x90WQFKmaYw3pYxuT6gLGtKN5Ag2CUBUBvBCtGwIQCop6Ao3fESGyEeNtsA==
Content-Language: en-in
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTYRzGec85O+dstDrOcO9KLBZJWlpCyRsM7aJw0ko/REUSOd3BlU7H
	zjSNJDWtlOxihjlETeziulBTl9YaOdMuVnZZSzA1aaUh1VJLNM3YVuC3HzzP7+H/4U/jkgFi
	Eb0/Xc/p0pVpclJEmNvlASGudUi95va4H/pQbSbRTFknheoL1Oj6/RcYqnn4QoB6po4J0NXx
	Sgp1FM3i6Iuhn0Td3bcolHfytwCZPjoE6M3dKhI9r35EojPGXwS60G3FUOF0IYFuPOyjUF9h
	sQDVNY9TaNbSQqHW94/xDX7s76kywLYa+ii21pTJmozFJPveYSFZp70CYxvrj7CnmoyAHTMF
	xAv3iBQqLm1/FqdbHZEoUjtOx2knArJLnSNkHrgrKwFCGjJr4bu6m1gJENES5h6Az4oGSG8g
	g2Ov3IGbfWHDnyHKW/oMYFd7v6dEMqug0z6Nu3khEwIbe654SjgzREDrmAt4jW4MdhbbBSWA
	poVMBHzyYJlb8GWiYUvXd49MMMuhreaiZ1TMrIdteRW4l33gk0on4WacWQlLB4vAf758cQT3
	XrcUTn66LPAesRPmN1b860thx+RJ/AzwNcyZMsyZMsyZMsxRagFhBDJOy2tSNHyYNiydOxjK
	KzV8ZnpKaHKGxgQ8PxAc1ALuGF2hNoDRwAYgjcsXigsiw9USsUqZc4jTZezTZaZxvA0spgm5
	VCwdLlVJmBSlnkvlOC2n+59itHBRHlZYbtG3S3+Ex1wZ6Ih++e2lYtYa/NwvNilAseNeSw4n
	O26tTOKzirD7GzcnB36Nm/dz9KMttcpfYg1ZGjhfZWZiLRPnQ8RxSV8cq/tikl25raiVmSi2
	97ADdr+uyAZqWwE++cbYuQsGrdk5tLXu4Hjidr1w+NKFTYNNk8j/m2M368JywIKnETGfm5xV
	CTWVfG/sgw5aH2pcIYoa9RnZ/srnz0RYUJklunzLXtyyuFfaXp+x/rEqkkvonVl3wphimcqt
	YdncEplqZNe5a6m2w5Hx2QVtoqizanPQYNSnLp867YFmujY83/xayYwqkKytvFxxNLt3eMlb
	TqDZLCd4tTIsGNfxyr95fT+4cgMAAA==
X-CMS-MailID: 20250529102448epcas5p1a8209b6700e2206c3bbb6669f473b28b
X-Msg-Generator: CA
X-Sendblock-Type: REQ_APPROVE
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-541,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250518193300epcas5p17e954bb18de9169d65e00501b1dcd046
References: <20250518193152.63476-1-shradha.t@samsung.com>
	<CGME20250518193300epcas5p17e954bb18de9169d65e00501b1dcd046@epcas5p1.samsung.com>
	<20250518193152.63476-10-shradha.t@samsung.com>
	<20250521-competent-honeybee-of-will-3f3ae1@kuoka>
	<0e2801dbcef4$78fe5ec0$6afb1c40$@samsung.com>
	<441dd5c3-fd51-4471-86ad-337c646b1571@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250529_075004_700986_DC757657 
X-CRM114-Status: GOOD (  29.71  )
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
> Sent: 28 May 2025 12:56
> To: Shradha Todi <shradha.t@samsung.com>
> Cc: linux-pci@vger.kernel.org; devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> linux-samsung-soc@vger.kernel.or; linux-kernel@vger.kernel.org; linux-phy@lists.infradead.org;
> manivannan.sadhasivam@linaro.org; lpieralisi@kernel.org; kw@linux.com; robh@kernel.org;
> bhelgaas@google.com; jingoohan1@gmail.com; krzk+dt@kernel.org; conor+dt@kernel.org;
> alim.akhtar@samsung.com; vkoul@kernel.org; kishon@kernel.org; arnd@arndb.de;
> m.szyprowski@samsung.com; jh80.chung@samsung.com
> Subject: Re: [PATCH 09/10] PCI: exynos: Add support for Tesla FSD SoC
> 
> On 27/05/2025 12:45, Shradha Todi wrote:
> >
> >
> >> -----Original Message-----
> >> From: Krzysztof Kozlowski <krzk@kernel.org>
> >> Sent: 21 May 2025 15:18
> >> To: Shradha Todi <shradha.t@samsung.com>
> >> Cc: linux-pci@vger.kernel.org; devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> linux-samsung-soc@vger.kernel.or;
> >> linux-kernel@vger.kernel.org; linux-phy@lists.infradead.org; manivannan.sadhasivam@linaro.org;
> lpieralisi@kernel.org;
> >> kw@linux.com; robh@kernel.org; bhelgaas@google.com; jingoohan1@gmail.com;
> krzk+dt@kernel.org; conor+dt@kernel.org;
> >> alim.akhtar@samsung.com; vkoul@kernel.org; kishon@kernel.org; arnd@arndb.de;
> m.szyprowski@samsung.com;
> >> jh80.chung@samsung.com
> >> Subject: Re: [PATCH 09/10] PCI: exynos: Add support for Tesla FSD SoC
> >>
> >> On Mon, May 19, 2025 at 01:01:51AM GMT, Shradha Todi wrote:
> >>>  static int exynos_pcie_probe(struct platform_device *pdev)  {
> >>>  	struct device *dev = &pdev->dev;
> >>> @@ -355,6 +578,26 @@ static int exynos_pcie_probe(struct platform_device *pdev)
> >>>  	if (IS_ERR(ep->phy))
> >>>  		return PTR_ERR(ep->phy);
> >>>
> >>> +	if (ep->pdata->soc_variant == FSD) {
> >>> +		ret = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(36));
> >>> +		if (ret)
> >>> +			return ret;
> >>> +
> >>> +		ep->sysreg = syscon_regmap_lookup_by_phandle(dev->of_node,
> >>> +				"samsung,syscon-pcie");
> >>> +		if (IS_ERR(ep->sysreg)) {
> >>> +			dev_err(dev, "sysreg regmap lookup failed.\n");
> >>> +			return PTR_ERR(ep->sysreg);
> >>> +		}
> >>> +
> >>> +		ret = of_property_read_u32_index(dev->of_node, "samsung,syscon-pcie", 1,
> >>> +						 &ep->sysreg_offset);
> >>> +		if (ret) {
> >>> +			dev_err(dev, "couldn't get the register offset for syscon!\n");
> >>
> >> So all MMIO will go via syscon? I am pretty close to NAKing all this, but let's be sure that I got it right
> - please post your complete DTS
> >> for upstream. That's a requirement from me for any samsung drivers - I don't want to support fake,
> broken downstream solutions
> >> (based on multiple past submissions).
> >>
> >
> > By all MMIO do you mean DBI read/write? The FSD hardware architecture is such that the
> > DBI/ATU/DMA address is at the same offset.
> > The syscon register holds the upper bits of the actual address differentiating between these 3
> > spaces. This kind of implementation was done
> > to reduce address space for PCI DWC controller. So yes, each DBI/ATU register read/write will have
> > syscon write before it to switch address space.
> 
> Wrap your replies correctly to fit mailing list.
> 
> No, I meant your binding does not define any MMIO at all. I see you use
> for example elbi_base which is mapped from "elbi" reg entry, but you do
> not have it in your binding.
> 
> Maybe just binding is heavily incomplete and that confused me.
> 

Got it. I think the confusion is due to the incomplete dt-bindings.
I will fix these issues in the next version. Will post again once I get
clarity about how to avoid redirection in patch 4/10

> Best regards,
> Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
