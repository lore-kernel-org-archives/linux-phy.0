Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A47FC83F1A
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jul 2025 04:53:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xStJDduB6BKHbX7dzdFlJO1eIDfW5wkgZpO1A2qImZA=; b=DIT9EdDx1IVwOf
	98KG4Ugr86grfG4cvgEBEqLOIlczWhIdX4Esl6tPepY7IR+UpOvC95Cy4HVYJjIvfX7Bm21BGWc2G
	A9zobqmHYVo7GEm9jCZV9+9wUK6S21ehvQmCvnjgR8gws+cdMXE4cKwJZkuYpTRyQiEV7qrUIobUe
	wpDEhBgz3shU1HHStkvt625kLX7rfTLSI172s2O4mHdBYmX2wyfjDRHh2Wfkj4F/oVRnf7kibFcUd
	DSEsppySA4lJqJt6QoQ6UjqaUO5TXPraf76Yu3h+Y83Q/J4t1TXM0tyO/YG1y4MKre0JRSHgYFCXy
	enUoWs0HRgOITypRwmvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ue50h-00000001I1X-01O3;
	Tue, 22 Jul 2025 04:53:51 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ue50c-00000001HzI-1Vcq
	for linux-phy@lists.infradead.org;
	Tue, 22 Jul 2025 04:53:49 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20250722045337epoutp03c733a97af15672b0991113f1fd0651f0~Ueb9mToUx0775807758epoutp03S
	for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 04:53:37 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20250722045337epoutp03c733a97af15672b0991113f1fd0651f0~Ueb9mToUx0775807758epoutp03S
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1753160017;
	bh=oHgbp2zI6pWHBoFSpFNJfPfed8jnhU/boVEitqs7EpY=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=IVT29UPXc/lyldNPJUfmsb2cWuayt7gQHggZuv2uDnSQJjqqhRY+FHKHT9zVWh2/V
	 6GqzvQeKyMt5jXRMnlQ3KqJ2HOK2UXzf9FCQxavd/7o/74jJwVUk36heqq6A9kWZCr
	 MU9b8nNiJRsMC2dFFbq4A4fdNE35OIlQKsNMnRWM=
Received: from epsnrtp02.localdomain (unknown [182.195.42.154]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPS id
	20250722045336epcas5p40ecb63ff167b91f84375d516fef00fa5~Ueb8vawWq0587105871epcas5p4T;
	Tue, 22 Jul 2025 04:53:36 +0000 (GMT)
Received: from epcas5p4.samsung.com (unknown [182.195.38.88]) by
	epsnrtp02.localdomain (Postfix) with ESMTP id 4bmPzg6htyz2SSKk; Tue, 22 Jul
	2025 04:53:35 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
	20250722043437epcas5p25e73a61921d2d15cae61388fa042de75~UeLXT5Vxm3047830478epcas5p2G;
	Tue, 22 Jul 2025 04:34:37 +0000 (GMT)
Received: from INBRO001840 (unknown [107.122.3.105]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20250722043434epsmtip131fb92dc6a6a0c2b894d89da91b3a9ab~UeLUTk9r90921009210epsmtip18;
	Tue, 22 Jul 2025 04:34:33 +0000 (GMT)
From: "Pritam Manohar Sutar" <pritam.sutar@samsung.com>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>, "'Krzysztof Kozlowski'"
	<krzysztof.kozlowski@linaro.org>
Cc: <vkoul@kernel.org>, <kishon@kernel.org>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>, <alim.akhtar@samsung.com>,
	<andre.draszik@linaro.org>, <peter.griffin@linaro.org>,
	<neil.armstrong@linaro.org>, <kauschluss@disroot.org>,
	<ivo.ivanov.ivanov1@gmail.com>, <m.szyprowski@samsung.com>,
	<s.nawrocki@samsung.com>, <linux-phy@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-samsung-soc@vger.kernel.org>,
	<rosa.pila@samsung.com>, <dev.tailor@samsung.com>, <faraz.ata@samsung.com>,
	<muhammed.ali@samsung.com>, <selvarasu.g@samsung.com>
In-Reply-To: <a43cfe4f-8ff9-4dbd-b7f4-07ccc3d8e01b@kernel.org>
Subject: RE: [PATCH v4 1/6] dt-bindings: phy: samsung,usb3-drd-phy: add
 ExynosAutov920 HS phy compatible
Date: Tue, 22 Jul 2025 10:04:32 +0530
Message-ID: <00ff01dbfac1$ee528860$caf79920$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQJAgQZ9LFXBZrDskwNBYris6jFv1AKCX9A9Aa5wAf0Bi5UAqwCML2yKAWUlSf8CRPacEQIi1iyNsxPSqvA=
Content-Language: en-in
X-CMS-MailID: 20250722043437epcas5p25e73a61921d2d15cae61388fa042de75
X-Msg-Generator: CA
X-Sendblock-Type: REQ_APPROVE
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250701115955epcas5p320cfe73ca33522cd2f9f7970cfde1c63
References: <20250701120706.2219355-1-pritam.sutar@samsung.com>
	<CGME20250701115955epcas5p320cfe73ca33522cd2f9f7970cfde1c63@epcas5p3.samsung.com>
	<20250701120706.2219355-2-pritam.sutar@samsung.com>
	<20250706-fresh-meaty-cougar-5af170@krzk-bin>
	<07d301dbf0ae$0658cbe0$130a63a0$@samsung.com>
	<9a2d0ad7-cb1f-473d-a91a-3a1b59b71280@kernel.org>
	<000c01dbf70b$ccdbf630$6693e290$@samsung.com>
	<a43cfe4f-8ff9-4dbd-b7f4-07ccc3d8e01b@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250721_215347_087000_FF27FB69 
X-CRM114-Status: GOOD (  14.33  )
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
> Sent: 17 July 2025 04:59 PM
> To: Pritam Manohar Sutar <pritam.sutar@samsung.com>; 'Krzysztof Kozlowski'
> <krzysztof.kozlowski@linaro.org>
> Cc: vkoul@kernel.org; kishon@kernel.org; robh@kernel.org;
> krzk+dt@kernel.org; conor+dt@kernel.org; alim.akhtar@samsung.com;
> andre.draszik@linaro.org; peter.griffin@linaro.org; neil.armstrong@linaro.org;
> kauschluss@disroot.org; ivo.ivanov.ivanov1@gmail.com;
> m.szyprowski@samsung.com; s.nawrocki@samsung.com; linux-
> phy@lists.infradead.org; devicetree@vger.kernel.org; linux-
> kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-samsung-
> soc@vger.kernel.org; rosa.pila@samsung.com; dev.tailor@samsung.com;
> faraz.ata@samsung.com; muhammed.ali@samsung.com;
> selvarasu.g@samsung.com
> Subject: Re: [PATCH v4 1/6] dt-bindings: phy: samsung,usb3-drd-phy: add
> ExynosAutov920 HS phy compatible
> 
> On 17/07/2025 13:13, Pritam Manohar Sutar wrote:
> >>
> >>
> >> Nothing is explained in changelog/cover letter. You claim you only added Rb
> tag.
> >> This is an entirely silent change while keeping the review.
> >
> > Will add more explanations in cover letter/changelog why this block is added.
> >
> >> Combined with not even following DTS style!
> >
> > Ok got it. Will change supplies name as below avdd075_usb =>
> > avdd075-usb
> > avdd18_usb20 => avdd18-usb20
> > avdd33_usb20 => avdd33-usb20
> >
> > Confirm the above change that is meant in terms of DTS style.
> Yes. I have doubts that actual supplies have suffix usb20. Are there more than
> one avdd18 for this block?
> 

Yes, there are more than one vdd18 supplies for this block. 

Re-analysed your comment on adding new supplies. 
Going to re-use existing supplies as mentioned below, rather than 
introducing new supplies

  dvdd-usb20-supply   => for 0.75v
  vddh-usb20-supply   => for 1.8v
  vdd33-usb20-supply => for 3.3v

> Best regards,
> Krzysztof


Thank you.

Regards,
Pritam


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
