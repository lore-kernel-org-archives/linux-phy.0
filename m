Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2359C5AE59
	for <linux-phy@archiver.kernel.org>; Wed, 28 May 2025 05:10:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zbGg3GsE76ofZ7KOjnygKWad6gPFod9tjor97J2ZpBU=; b=cNa/f8JsHvlP9J
	rnhHqmTEPXzOj5EGQK8AdyMAmVS7KOWvNODfoOKG6IxmIdlNTq8HLRkFYApp4wdelYgfLe3KfekAL
	axwqp8IQnu/UFUu2XVLJRuajsG0v3Qc5T2c7eWEMQ9hj5kKSA6nqCCIB3Fq8TUmJonELD+tEf+tKu
	pmLHThlT8aWJreeqLF0ATOAqmYD+r5LYwZgLIdXzrbR5aF8A4vK2MEXm6oAQdpSfym2Rd6vvTsW/v
	6xQen/DOnKDeWQfEzSKpDcjtqvyvp/b7TEvppCyc14WmxVroEZSBVM1w0Nk3RZnWWDYLHXRyZFNYv
	NgedU+L+LsZACZ4gEPcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK93C-0000000CC1E-2fsw;
	Wed, 28 May 2025 05:10:02 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK8nC-0000000CACD-0LhX
	for linux-phy@lists.infradead.org;
	Wed, 28 May 2025 04:53:31 +0000
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20250528045328epoutp0218c0d4fa9a8181a218024cc0b7509c79~Dl9H7W0GE2400624006epoutp02I
	for <linux-phy@lists.infradead.org>; Wed, 28 May 2025 04:53:28 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20250528045328epoutp0218c0d4fa9a8181a218024cc0b7509c79~Dl9H7W0GE2400624006epoutp02I
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1748408008;
	bh=FdZF5l83khTomcseO+QoMWKGMiLcHWOd9nqmuhm1swA=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=EJrYRTqp/+MYUfnbc2HwU5likBWwHpJ+eK95A9am+3wxwQNbo+QlzgTYFrRz+AhEF
	 fC9lmU0dmVGakWqw9MjJs28kBPCGOpmnHwePuxgH5cnEP4v0fLpy9fGRHVXC+vBjkB
	 f4FhFUAiAyBMz5DEy2bP7cUugUb1sGxieRrjnqVg=
Received: from epsnrtp03.localdomain (unknown [182.195.42.155]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPS id
	20250528045327epcas5p355159aadc57fde03a3cb555653fe9bd6~Dl9HZzFwx0196601966epcas5p3-;
	Wed, 28 May 2025 04:53:27 +0000 (GMT)
Received: from epcas5p2.samsung.com (unknown [182.195.38.182]) by
	epsnrtp03.localdomain (Postfix) with ESMTP id 4b6cZt1bwDz3hhTR; Wed, 28 May
	2025 04:53:26 +0000 (GMT)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
	20250527104533epcas5p2ce335b06bb6564469fcfd96786de5cbb~DXHP819kQ1647416474epcas5p2I;
	Tue, 27 May 2025 10:45:33 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
	epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20250527104533epsmtrp298f462a0270bbc1d8cee2dbe97f1a7ae~DXHP6vdyF3064030640epsmtrp2d;
	Tue, 27 May 2025 10:45:33 +0000 (GMT)
X-AuditID: b6c32a29-566fe7000000223e-7b-683597cd959e
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
	epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	C2.54.08766.DC795386; Tue, 27 May 2025 19:45:33 +0900 (KST)
Received: from FDSFTE462 (unknown [107.122.81.248]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20250527104530epsmtip121c695d30e18eef84fe768e5794ed6fa~DXHNDu7CF0476404764epsmtip1H;
	Tue, 27 May 2025 10:45:30 +0000 (GMT)
From: "Shradha Todi" <shradha.t@samsung.com>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>
Cc: <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-samsung-soc@vger.kernel.or>,
	<linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<manivannan.sadhasivam@linaro.org>, <lpieralisi@kernel.org>, <kw@linux.com>,
	<robh@kernel.org>, <bhelgaas@google.com>, <jingoohan1@gmail.com>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>, <alim.akhtar@samsung.com>,
	<vkoul@kernel.org>, <kishon@kernel.org>, <arnd@arndb.de>,
	<m.szyprowski@samsung.com>, <jh80.chung@samsung.com>
In-Reply-To: <20250521-competent-honeybee-of-will-3f3ae1@kuoka>
Subject: RE: [PATCH 09/10] PCI: exynos: Add support for Tesla FSD SoC
Date: Tue, 27 May 2025 16:15:29 +0530
Message-ID: <0e2801dbcef4$78fe5ec0$6afb1c40$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQKa2HaEso6x90WQFKmaYw3pYxuT6gLGtKN5Ag2CUBUBvBCtG7IzpxAA
Content-Language: en-in
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrAIsWRmVeSWpSXmKPExsWy7bCSnO7Z6aYZBpcuSVk8mLeNzeLvpGPs
	FkuaMizW7D3HZDH/yDlWixu/2lgtVnyZyW5xtPU/s8XLWffYLM6f38Bu0dDzm9Vi0+NrrBaX
	d81hszg77zibxYRV31gszn5fwGTR8qeFxWLtkbvsFndbOlkt/u/ZwW6x884JZgdRj9+/JjF6
	7Jx1l91jwaZSj02rOtk87lzbw+bx5Mp0Jo/NS+o9+rasYvQ48nU6i8fnTXIBXFFcNimpOZll
	qUX6dglcGQcXtTEX7BeueHd1HWsDY6NAFyMHh4SAicTpeaZdjFwcQgK7GSV2H9/H1sXICRSX
	lPh8cR0ThC0ssfLfc3aIomeMEs2fHjKDJNgEdCSeXPkDZosI6EpsvrEcrIhZYDuLxJmlDxkh
	Ot4zSrS2bWEFqeIUsJe4NakXrENYwFVix+n3YDaLgKrE0f3TwFbzClhKtBzbygphC0qcnPmE
	BcRmFtCW6H3YyghjL1v4mhniPAWJn0+XsUJc4SaxYslBqHpxiaM/e5gnMArPQjJqFpJRs5CM
	moWkZQEjyypGydSC4tz03GLDAsO81HK94sTc4tK8dL3k/NxNjOBEoKW5g3H7qg96hxiZOBgP
	MUpwMCuJ8G6bYJIhxJuSWFmVWpQfX1Sak1p8iFGag0VJnFf8RW+KkEB6YklqdmpqQWoRTJaJ
	g1OqgWmnfMa32XIi8zh+mf4yL3j35vz1hfL/Hq3+vzbygrhv/u8ZPSJcH3dqzFy9u+EGA29G
	fef0lfFCxo8m+E1cvsJ7y6Il+7YZNBfPNTb6fvZMluduXUnjusitiouj815NczijP+fhCjOr
	e3e85KQ5HU9esMuxWFxnsD/AuUDzZeEUnhsW05Nv7XFb927nW5VrhfXFM5ZpXE4uM3pky+Ih
	4eh2NDPD5rHPvcRTFbpSyxLPfMrlepDKYd6ek8n18chzCVUug/VLm/bonDtbftK356/5xIOP
	JlpfVLU5arQp4Ub836IWdYOVz968dvVcWcB6Y9eJIx4zbFfOdYmaeelhTMFWnsibk/axbnlu
	O4e99cEbJZbijERDLeai4kQAUGU8LXMDAAA=
X-CMS-MailID: 20250527104533epcas5p2ce335b06bb6564469fcfd96786de5cbb
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
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_215330_427797_58E65FCE 
X-CRM114-Status: GOOD (  18.33  )
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
> Sent: 21 May 2025 15:18
> To: Shradha Todi <shradha.t@samsung.com>
> Cc: linux-pci@vger.kernel.org; devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-samsung-soc@vger.kernel.or;
> linux-kernel@vger.kernel.org; linux-phy@lists.infradead.org; manivannan.sadhasivam@linaro.org; lpieralisi@kernel.org;
> kw@linux.com; robh@kernel.org; bhelgaas@google.com; jingoohan1@gmail.com; krzk+dt@kernel.org; conor+dt@kernel.org;
> alim.akhtar@samsung.com; vkoul@kernel.org; kishon@kernel.org; arnd@arndb.de; m.szyprowski@samsung.com;
> jh80.chung@samsung.com
> Subject: Re: [PATCH 09/10] PCI: exynos: Add support for Tesla FSD SoC
> 
> On Mon, May 19, 2025 at 01:01:51AM GMT, Shradha Todi wrote:
> >  static int exynos_pcie_probe(struct platform_device *pdev)  {
> >  	struct device *dev = &pdev->dev;
> > @@ -355,6 +578,26 @@ static int exynos_pcie_probe(struct platform_device *pdev)
> >  	if (IS_ERR(ep->phy))
> >  		return PTR_ERR(ep->phy);
> >
> > +	if (ep->pdata->soc_variant == FSD) {
> > +		ret = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(36));
> > +		if (ret)
> > +			return ret;
> > +
> > +		ep->sysreg = syscon_regmap_lookup_by_phandle(dev->of_node,
> > +				"samsung,syscon-pcie");
> > +		if (IS_ERR(ep->sysreg)) {
> > +			dev_err(dev, "sysreg regmap lookup failed.\n");
> > +			return PTR_ERR(ep->sysreg);
> > +		}
> > +
> > +		ret = of_property_read_u32_index(dev->of_node, "samsung,syscon-pcie", 1,
> > +						 &ep->sysreg_offset);
> > +		if (ret) {
> > +			dev_err(dev, "couldn't get the register offset for syscon!\n");
> 
> So all MMIO will go via syscon? I am pretty close to NAKing all this, but let's be sure that I got it right - please post your complete DTS
> for upstream. That's a requirement from me for any samsung drivers - I don't want to support fake, broken downstream solutions
> (based on multiple past submissions).
> 

By all MMIO do you mean DBI read/write? The FSD hardware architecture is such that the DBI/ATU/DMA address is at the same offset.
The syscon register holds the upper bits of the actual address differentiating between these 3 spaces. This kind of implementation was done
to reduce address space for PCI DWC controller. So yes, each DBI/ATU register read/write will have syscon write before it to switch address space.

> Best regards,
> Krzysztof



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
