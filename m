Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05A1BCFA748
	for <linux-phy@archiver.kernel.org>; Fri, 21 Nov 2025 08:11:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EoK9Xr3qX1yaOhJt7A9PxGNUmAKvJKwcSZDZU3H0EPM=; b=e+gFFngJsPmWCA
	AKK/J9cjxXUpIyIq7DW72KUfK6mD/+6rwffXx8q+t2A4T5CD0UwT6a+3ZL9AMf6Z9pBIgr+2ySwu6
	u+0cMRosRszETPTBzMIBv7vGrg2JuZlNbIhCR6G3qgutUjiCYSKiyVE7jOOouvbdDqxQbYHziA7bp
	eR1D3qSBJ/06GK03fdLcx1FHbqm70sfxPb+/J/eMaoY6A0anG+J5aVhrgOGhI2iKkw4sJt04Ilh8E
	QADki2bgIogurU0NL2rL4MBzkpGY2GzmG1EqW0iRvtkqIPDDQOPHKYPnIjzKXvZrqpu1MjxSiEBPe
	PIZG9f6g8LHAtDPlbJQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vMMEi-000000081aK-3CW1;
	Fri, 21 Nov 2025 08:11:20 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vMMEf-000000081ZU-3MzR
	for linux-phy@lists.infradead.org;
	Fri, 21 Nov 2025 08:11:19 +0000
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20251121081114epoutp015605d92f2b9777a8958fbebd7d94f68d~591UtRgwK1141511415epoutp01U
	for <linux-phy@lists.infradead.org>; Fri, 21 Nov 2025 08:11:14 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20251121081114epoutp015605d92f2b9777a8958fbebd7d94f68d~591UtRgwK1141511415epoutp01U
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1763712674;
	bh=4E9M62Me/h6erfMIN1DQKUjCF0wnRycI4GmGTblPxAU=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=ay75cYitLrlhnC+2yJytnzNnKCLTN+27BHiRDR17aWeZcKA9bW+X4U7SGgLNkXB1p
	 JDUq2l6n/uAcznsAiRGP61mkjhz+00/oDcKssN/k7NXNvuROa0z3vxGxhFE/uEJ4ln
	 PGt5RtFZAmhsgjyg8qLAqDkHg3uXvXtgGjenb2qs=
Received: from epsnrtp03.localdomain (unknown [182.195.42.155]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPS id
	20251121081113epcas5p2ff50cb9e60abb66cea9c21e303196e74~591UB06qW0583405834epcas5p2y;
	Fri, 21 Nov 2025 08:11:13 +0000 (GMT)
Received: from epcas5p2.samsung.com (unknown [182.195.38.87]) by
	epsnrtp03.localdomain (Postfix) with ESMTP id 4dCSbN41Gpz3hhTL; Fri, 21 Nov
	2025 08:11:12 +0000 (GMT)
Received: from epsmtip2.samsung.com (unknown [182.195.34.31]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
	20251121081111epcas5p4058d461e132b62b19353c324e4945af4~591SY40PU2083220832epcas5p4d;
	Fri, 21 Nov 2025 08:11:11 +0000 (GMT)
Received: from INBRO001840 (unknown [107.122.3.105]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20251121081108epsmtip20f5444687891e55a700ba969ef877ec4~591Padg460059200592epsmtip2Y;
	Fri, 21 Nov 2025 08:11:08 +0000 (GMT)
From: "Pritam Manohar Sutar" <pritam.sutar@samsung.com>
To: "'Vinod Koul'" <vkoul@kernel.org>
Cc: <kishon@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <alim.akhtar@samsung.com>,
	<andre.draszik@linaro.org>, <peter.griffin@linaro.org>,
	<kauschluss@disroot.org>, <johan@kernel.org>,
	<ivo.ivanov.ivanov1@gmail.com>, <m.szyprowski@samsung.com>,
	<s.nawrocki@samsung.com>, <linux-phy@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-samsung-soc@vger.kernel.org>,
	<rosa.pila@samsung.com>, <dev.tailor@samsung.com>, <faraz.ata@samsung.com>,
	<muhammed.ali@samsung.com>, <selvarasu.g@samsung.com>
In-Reply-To: <aR9EAj82IiLWFQ-t@vaman>
Subject: RE: [PATCH v9 6/6] phy: exynos5-usbdrd: support SS combo phy for
 ExynosAutov920
Date: Fri, 21 Nov 2025 13:40:52 +0530
Message-ID: <00f001dc5abe$66163610$3242a230$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQId6djPdSPyHc1kqH9U3Yvp+ju6FgKXgK1iAO7OvGACspMeQbRH4LFA
Content-Language: en-in
X-CMS-MailID: 20251121081111epcas5p4058d461e132b62b19353c324e4945af4
X-Msg-Generator: CA
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20251010070106epcas5p2a7e051ce5edc0768e5a5d3b3c267f984
References: <20251010070912.3758334-1-pritam.sutar@samsung.com>
	<CGME20251010070106epcas5p2a7e051ce5edc0768e5a5d3b3c267f984@epcas5p2.samsung.com>
	<20251010070912.3758334-7-pritam.sutar@samsung.com> <aR9EAj82IiLWFQ-t@vaman>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251121_001118_160125_203EBD53 
X-CRM114-Status: GOOD (  13.52  )
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

Hi Vinod, 

> -----Original Message-----
> From: Vinod Koul <vkoul@kernel.org>
> Sent: 20 November 2025 10:08 PM
> To: Pritam Manohar Sutar <pritam.sutar@samsung.com>
> Cc: kishon@kernel.org; robh@kernel.org; krzk+dt@kernel.org;
> conor+dt@kernel.org; alim.akhtar@samsung.com; andre.draszik@linaro.org;
> peter.griffin@linaro.org; kauschluss@disroot.org; johan@kernel.org;
> ivo.ivanov.ivanov1@gmail.com; m.szyprowski@samsung.com;
> s.nawrocki@samsung.com; linux-phy@lists.infradead.org;
> devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; linux-samsung-soc@vger.kernel.org;
> rosa.pila@samsung.com; dev.tailor@samsung.com;
> faraz.ata@samsung.com; muhammed.ali@samsung.com;
> selvarasu.g@samsung.com
> Subject: Re: [PATCH v9 6/6] phy: exynos5-usbdrd: support SS combo phy for
> ExynosAutov920
> 
> On 10-10-25, 12:39, Pritam Manohar Sutar wrote:
> > Add required change in phy driver to support combo SS phy for this SoC.
> 
> what is the 'required change', would be good to describe.
> 

Can you please confirm if commit message is described as below?

"
    phy: exynos5-usbdrd: support SS combo phy for ExynosAutov920

    Update phy driver to enable SS combo phy for this SoC. New register
    definitions, init/reset helper functions and a dedicated PHY
    configuration structure are added. Add these changes in driver
    to support combo SS phy for this SoC.
"

> --
> ~Vinod

Thank you,

Regards,
Pritam


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
