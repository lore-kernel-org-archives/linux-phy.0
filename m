Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EC96CA1012
	for <linux-phy@archiver.kernel.org>; Thu,  4 Sep 2025 08:17:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qIg6GTxZeVeTtYsk89VK6gPWtsYWfWFWslevzcIrLf0=; b=Hll6J5N3MDOBOb
	qPOxYtEWGeJ88uol9YI16ESD6ID0PEuTN42zqOom3TyUc7ayB9dfC5W64oNQz2Z9HYggCFGP0LWza
	sC5NalviWpdBky+GpDU5oYZuB90cCRahhxb8HTIcOrRBSrOh22FdjpdlBN5O8GcDXb/5uJwyAzDzw
	WL8HDUOAVXxOjZWaWiFyXLB2TbplmlH4DkG9Tl4tXoo77xKlDZ4Mr/Ko5OaPnciMVv03jCsuen2ba
	fsQvP3VdogoaPmxOPI82gVphUjOi7bO38FF/9iBwP31f+0wuhGSiDhNhaPNXzSw4cdxgE9/T36myp
	N7cNJLHIuSgB16AerSGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu59W-0000000AABX-3mfS;
	Thu, 04 Sep 2025 08:17:06 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu4kb-0000000A0DC-1RDo
	for linux-phy@lists.infradead.org;
	Thu, 04 Sep 2025 07:51:23 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20250904075114epoutp01d26bb449bf7f36ae6fda78ebee1a96a6~iBPmPESM41378413784epoutp012
	for <linux-phy@lists.infradead.org>; Thu,  4 Sep 2025 07:51:14 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20250904075114epoutp01d26bb449bf7f36ae6fda78ebee1a96a6~iBPmPESM41378413784epoutp012
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1756972274;
	bh=BR2gZ2ua1hawq9ETTub8etbCtTRBasyb9bOMsgkE+5E=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=Gkk95YVGgKoh1+rYqdqaEg/PXdvf4qvbychJ0Od0sDf5pmCQyxJPCIe9Bm0iwK2es
	 x/k2atHBSI/kz9oH2OdLuPxvFDZHUJdEVJ3Be8QFSzTWII5RQvBGI59YIx8XO3bFtl
	 SoxvOqW+3GNP7UHyrZg/eGePJjDP8tRzDHu4zEtI=
Received: from epsnrtp02.localdomain (unknown [182.195.42.154]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPS id
	20250904075113epcas5p394340cc759dc824bd310f5b5d72f2cdf~iBPliafs32306923069epcas5p3P;
	Thu,  4 Sep 2025 07:51:13 +0000 (GMT)
Received: from epcas5p4.samsung.com (unknown [182.195.38.89]) by
	epsnrtp02.localdomain (Postfix) with ESMTP id 4cHWrJ5Zw5z2SSKh; Thu,  4 Sep
	2025 07:51:12 +0000 (GMT)
Received: from epsmtip2.samsung.com (unknown [182.195.34.31]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
	20250904075112epcas5p49650dcfae9c59e1241751ea53f73fbcc~iBPj-8a8Q2959129591epcas5p47;
	Thu,  4 Sep 2025 07:51:12 +0000 (GMT)
Received: from INBRO001840 (unknown [107.122.3.105]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20250904075109epsmtip2fcfead067a25af3c3ad223ce40bbf198~iBPhGx2ni3175031750epsmtip2A;
	Thu,  4 Sep 2025 07:51:08 +0000 (GMT)
From: "Pritam Manohar Sutar" <pritam.sutar@samsung.com>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>
Cc: <vkoul@kernel.org>, <kishon@kernel.org>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>, <alim.akhtar@samsung.com>,
	<andre.draszik@linaro.org>, <peter.griffin@linaro.org>,
	<kauschluss@disroot.org>, <ivo.ivanov.ivanov1@gmail.com>,
	<igor.belwon@mentallysanemainliners.org>, <m.szyprowski@samsung.com>,
	<s.nawrocki@samsung.com>, <linux-phy@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-samsung-soc@vger.kernel.org>,
	<rosa.pila@samsung.com>, <dev.tailor@samsung.com>, <faraz.ata@samsung.com>,
	<muhammed.ali@samsung.com>, <selvarasu.g@samsung.com>
In-Reply-To: <20250904-interesting-lovely-ringtail-38bbef@kuoka>
Subject: RE: [PATCH v8 1/6] dt-bindings: phy: samsung,usb3-drd-phy: add
 ExynosAutov920 HS phy compatible
Date: Thu, 4 Sep 2025 13:21:07 +0530
Message-ID: <000001dc1d70$aebf7d80$0c3e7880$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQIRMOVGdWg5oRjNsRBgEjzIeIB8IgGabj6EAmTXuDcB8lF0oLPo6zcQ
Content-Language: en-in
X-CMS-MailID: 20250904075112epcas5p49650dcfae9c59e1241751ea53f73fbcc
X-Msg-Generator: CA
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250903072936epcas5p4a28d0e63c7f0792b516b0cbc68bf3a8e
References: <20250903073827.3015662-1-pritam.sutar@samsung.com>
	<CGME20250903072936epcas5p4a28d0e63c7f0792b516b0cbc68bf3a8e@epcas5p4.samsung.com>
	<20250903073827.3015662-2-pritam.sutar@samsung.com>
	<20250904-interesting-lovely-ringtail-38bbef@kuoka>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250904_005121_690769_EC1B814E 
X-CRM114-Status: GOOD (  26.26  )
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

Hi Krzysztof,

> -----Original Message-----
> From: Krzysztof Kozlowski <krzk@kernel.org>
> Sent: 04 September 2025 12:18 PM
> To: Pritam Manohar Sutar <pritam.sutar@samsung.com>
> Cc: vkoul@kernel.org; kishon@kernel.org; robh@kernel.org;
> krzk+dt@kernel.org; conor+dt@kernel.org; alim.akhtar@samsung.com;
> andre.draszik@linaro.org; peter.griffin@linaro.org; kauschluss@disroot.org;
> ivo.ivanov.ivanov1@gmail.com; igor.belwon@mentallysanemainliners.org;
> m.szyprowski@samsung.com; s.nawrocki@samsung.com; linux-
> phy@lists.infradead.org; devicetree@vger.kernel.org; linux-
> kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-samsung-
> soc@vger.kernel.org; rosa.pila@samsung.com; dev.tailor@samsung.com;
> faraz.ata@samsung.com; muhammed.ali@samsung.com;
> selvarasu.g@samsung.com
> Subject: Re: [PATCH v8 1/6] dt-bindings: phy: samsung,usb3-drd-phy: add
> ExynosAutov920 HS phy compatible
> 
> On Wed, Sep 03, 2025 at 01:08:22PM +0530, Pritam Manohar Sutar wrote:
> > Document support for the USB20 phy found on the ExynosAutov920 SoC.
> > The
> > USB20 phy is functionally identical to that on the Exynos850 SoC, so
> > no driver changes are needed to support this phy. However, add a
> > dedicated compatible string for USB20 phy found in this SoC.
> >
> > Signed-off-by: Pritam Manohar Sutar <pritam.sutar@samsung.com>
> 
> You just dropped all tags without explaining why.

Regretted inconvenience. 

There were significant changes in supplies' names in driver and schemas 
(patch-set v8). This led to make changes in patch no 5.  And review for 
these changes is needed.  Hence, removed RB tag in this patch-set. 

There was a ask for the same https://lore.kernel.org/linux-phy/000401dc18cd$ec02a1b0$c407e510$@samsung.com/#:~:text=Let%20me%20know%2C%20because%20of%20above%20changes%2C%20should%20be%20removing%20your%20%0A%27reviewed%2Dby%27%20tag%20from%20patch%201%20and%203.

This had to be captured in changelog along with other details. Will remember to add details 
in future, if any tags are removed. 

However,  do I need to send v9 with the details? 

> 
> <form letter>
> This is a friendly reminder during the review process.
> 
> It looks like you received a tag and forgot to add it.
> 
> If you do not know the process, here is a short explanation:
> Please add Acked-by/Reviewed-by/Tested-by tags when posting new versions of
> patchset, under or above your Signed-off-by tag, unless patch changed
> significantly (e.g. new properties added to the DT bindings). Tag is "received",
> when provided in a message replied to you on the mailing list. Tools like b4 can
> help here. However, there's no need to repost patches *only* to add the tags.
> The upstream maintainer will do that for tags received on the version they apply.
> 
> Please read:
> https://protect2.fireeye.com/v1/url?k=6abe7ac7-0bc392bf-6abff188-
> 74fe485fffb1-49c70cea06738e63&q=1&e=fc43c80a-8c7b-41b0-aa24-
> 8cb76d954fe5&u=https%3A%2F%2Felixir.bootlin.com%2Flinux%2Fv6.12-
> rc3%2Fsource%2FDocumentation%2Fprocess%2Fsubmitting-
> patches.rst%23L577
> 
> If a tag was not added on purpose, please state why and what changed.
> </form letter>
> 
> Best regards,
> Krzysztof

Thank you.

Regards,
Pritam



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
