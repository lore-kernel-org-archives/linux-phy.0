Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75EBCCAC5A8
	for <linux-phy@archiver.kernel.org>; Thu, 18 Sep 2025 11:50:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r8wxaajU6bTHmB7+kkABhw5q+v71zCrAev62H25qmVs=; b=lbCCC4OjewaZ/3
	9PNQvqTuqgS6L+14z8NwEa43O1ZX/+PQe+WKfdfJYzW5MI+FkvuiqKGpyFLiPd6cL4vw6DQFZrbzg
	QaLb3H0rs3UERL3tvPb7epM6RNQ+AutveDqDKwiGgfHJSI74JNI4hLTMPpxjm3sSgZ+1WR+YsFeK1
	e04ZPZlxeaWNNok9XOKvZiFO78EXQtIsNloyE8yfJYnfB3jlZbldE0Kq0W4yzT+SQzhGlmYj1fUVy
	sbzcHDj84JV9fasQAg0LcK5y7cSIKCwxQ2WwKd9oqyPws0ZXaXJFCzmMpSEJnCJ9HdFU3LFKNjzZS
	1Tv6GTfEVecvteNTPyfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzD9G-0000000HGhA-0JBe;
	Thu, 18 Sep 2025 11:50:02 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzD9C-0000000HGfO-0ZEH
	for linux-phy@lists.infradead.org;
	Thu, 18 Sep 2025 11:50:00 +0000
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20250918114950epoutp03c4a65368a17305c03842c00590b11073~mXh66iCcv1130811308epoutp034
	for <linux-phy@lists.infradead.org>; Thu, 18 Sep 2025 11:49:50 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20250918114950epoutp03c4a65368a17305c03842c00590b11073~mXh66iCcv1130811308epoutp034
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1758196190;
	bh=FuCxKZOC5gMCxjvUIfysdvbKbIwAjaMklqaPwT6Cdlc=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=TGWkFV+vyXk3M6D6IuqlvEcybwVaHrnNnW9UTGangKu78Dxid6hGC6Jp6+GP/8M4/
	 K07WT+sAL/a7T+T93OpNKuIMJJCdbO2Vd0njOwz4MQ3Hb+pRUh8J12oYOcOwokCEJ2
	 +M5oqwcj6WkE/+sf8JWveeiB8lg96xueIVHg6boM=
Received: from epsnrtp04.localdomain (unknown [182.195.42.156]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPS id
	20250918114949epcas5p4219721d84eadeb39ff7750e82a05c84f~mXh6Ld_2n0579905799epcas5p4a;
	Thu, 18 Sep 2025 11:49:49 +0000 (GMT)
Received: from epcas5p1.samsung.com (unknown [182.195.38.92]) by
	epsnrtp04.localdomain (Postfix) with ESMTP id 4cSDT863xpz6B9m9; Thu, 18 Sep
	2025 11:49:48 +0000 (GMT)
Received: from epsmtip2.samsung.com (unknown [182.195.34.31]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
	20250918114947epcas5p1851912aadf4466cda635681b1a9fa798~mXh4OkerZ1378713787epcas5p1m;
	Thu, 18 Sep 2025 11:49:47 +0000 (GMT)
Received: from INBRO001840 (unknown [107.122.3.105]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20250918114943epsmtip210861e859c25dd4fcf3ce0fb14a9bf45~mXh0dCmTB3083330833epsmtip2O;
	Thu, 18 Sep 2025 11:49:43 +0000 (GMT)
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
In-Reply-To: <67c2b5c6-7559-4ae9-b2af-e839b6b8f4d5@kernel.org>
Subject: RE: [PATCH v8 1/6] dt-bindings: phy: samsung,usb3-drd-phy: add
 ExynosAutov920 HS phy compatible
Date: Thu, 18 Sep 2025 17:19:41 +0530
Message-ID: <007701dc2892$553aded0$ffb09c70$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQIRMOVGdWg5oRjNsRBgEjzIeIB8IgGabj6EAmTXuDcB8lF0oAGjtHpaA19Hw4UBhGAZeAGHPhyts76/S3A=
Content-Language: en-in
X-CMS-MailID: 20250918114947epcas5p1851912aadf4466cda635681b1a9fa798
X-Msg-Generator: CA
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250903072936epcas5p4a28d0e63c7f0792b516b0cbc68bf3a8e
References: <20250903073827.3015662-1-pritam.sutar@samsung.com>
	<CGME20250903072936epcas5p4a28d0e63c7f0792b516b0cbc68bf3a8e@epcas5p4.samsung.com>
	<20250903073827.3015662-2-pritam.sutar@samsung.com>
	<20250904-interesting-lovely-ringtail-38bbef@kuoka>
	<000001dc1d70$aebf7d80$0c3e7880$@samsung.com>
	<87857202-b436-4476-9384-67566126d844@kernel.org>
	<001001dc1d85$c0d56a60$42803f20$@samsung.com>
	<67c2b5c6-7559-4ae9-b2af-e839b6b8f4d5@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250918_044958_493130_FFE4E064 
X-CRM114-Status: GOOD (  22.83  )
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
> Sent: 18 September 2025 08:13 AM
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
> On 04/09/2025 19:21, Pritam Manohar Sutar wrote:
> > Hi Krzysztof,
> >
> >> -----Original Message-----
> >> From: Krzysztof Kozlowski <krzk@kernel.org>
> >> Sent: 04 September 2025 03:12 PM
> >> To: Pritam Manohar Sutar <pritam.sutar@samsung.com>
> >> Cc: vkoul@kernel.org; kishon@kernel.org; robh@kernel.org;
> >> krzk+dt@kernel.org; conor+dt@kernel.org; alim.akhtar@samsung.com;
> >> andre.draszik@linaro.org; peter.griffin@linaro.org;
> >> kauschluss@disroot.org; ivo.ivanov.ivanov1@gmail.com;
> >> igor.belwon@mentallysanemainliners.org;
> >> m.szyprowski@samsung.com; s.nawrocki@samsung.com; linux-
> >> phy@lists.infradead.org; devicetree@vger.kernel.org; linux-
> >> kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> >> linux-samsung- soc@vger.kernel.org; rosa.pila@samsung.com;
> >> dev.tailor@samsung.com; faraz.ata@samsung.com;
> >> muhammed.ali@samsung.com; selvarasu.g@samsung.com
> >> Subject: Re: [PATCH v8 1/6] dt-bindings: phy: samsung,usb3-drd-phy:
> >> add
> >> ExynosAutov920 HS phy compatible
> >>
> >> On 04/09/2025 09:51, Pritam Manohar Sutar wrote:
> >>> Hi Krzysztof,
> >>>
> >>>> -----Original Message-----
> >>>> From: Krzysztof Kozlowski <krzk@kernel.org>
> >>>> Sent: 04 September 2025 12:18 PM
> >>>> To: Pritam Manohar Sutar <pritam.sutar@samsung.com>
> >>>> Cc: vkoul@kernel.org; kishon@kernel.org; robh@kernel.org;
> >>>> krzk+dt@kernel.org; conor+dt@kernel.org; alim.akhtar@samsung.com;
> >>>> andre.draszik@linaro.org; peter.griffin@linaro.org;
> >>>> kauschluss@disroot.org; ivo.ivanov.ivanov1@gmail.com;
> >>>> igor.belwon@mentallysanemainliners.org;
> >>>> m.szyprowski@samsung.com; s.nawrocki@samsung.com; linux-
> >>>> phy@lists.infradead.org; devicetree@vger.kernel.org; linux-
> >>>> kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> >>>> linux-samsung- soc@vger.kernel.org; rosa.pila@samsung.com;
> >>>> dev.tailor@samsung.com; faraz.ata@samsung.com;
> >>>> muhammed.ali@samsung.com; selvarasu.g@samsung.com
> >>>> Subject: Re: [PATCH v8 1/6] dt-bindings: phy: samsung,usb3-drd-phy:
> >>>> add
> >>>> ExynosAutov920 HS phy compatible
> >>>>
> >>>> On Wed, Sep 03, 2025 at 01:08:22PM +0530, Pritam Manohar Sutar wrote:
> >>>>> Document support for the USB20 phy found on the ExynosAutov920 SoC.
> >>>>> The
> >>>>> USB20 phy is functionally identical to that on the Exynos850 SoC,
> >>>>> so no driver changes are needed to support this phy. However, add
> >>>>> a dedicated compatible string for USB20 phy found in this SoC.
> >>>>>
> >>>>> Signed-off-by: Pritam Manohar Sutar <pritam.sutar@samsung.com>
> >>>>
> >>>> You just dropped all tags without explaining why.
> >>>
> >>> Regretted inconvenience.
> >>>
> >>> There were significant changes in supplies' names in driver and
> >>> schemas (patch-set v8). This led to make changes in patch no 5.  And
> >>> review for these changes is needed.  Hence, removed RB tag in this patch-
> set.
> >>>
> >>> There was a ask for the same https://lore.kernel.org/linux-
> >>
> phy/000401dc18cd$ec02a1b0$c407e510$@samsung.com/#:~:text=Let%20me%
> >>
> 20know%2C%20because%20of%20above%20changes%2C%20should%20be%20
> >>
> removing%20your%20%0A%27reviewed%2Dby%27%20tag%20from%20patch%
> >> 201%20and%203.
> >>>
> >>
> >>
> >> Where in the changelog you explained why you dropped the tags?
> >
> > Along with supplies' names, there were similar commit messages for
> > patch no 1, 3 as patch no 5 (v7). (though, they were explaining schema
> > more than h/w). Changed commit messages of the patch no 1, 3, 5 (v7)
> > as per reference commits and would like to get them reviewed again, so
> > did not add RB for patch 1 and 3, which you had given RB (in v7).
> 
> I do not have time to review the same second time and I find such request quite
> a waste of my time. It's v8 so I am surprised to see it getting changed even after
> review.	
> 

OK, those were only commit message changes, so I am going to retain your 
RB tags for patch 1 and 3. Sorry about noise.

However, do you want me to send v9 by retaining RB tags in respective patches?

> 
> Best regards,
> Krzysztof

Thank you,

Regards,
Pritam


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
