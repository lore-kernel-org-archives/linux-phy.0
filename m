Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F012C83F03
	for <linux-phy@archiver.kernel.org>; Fri,  4 Jul 2025 13:35:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Bcf8QxywNuvG3KmbtYLurhaxg4IfdVv7xJKedlIP/s=; b=LmcPSYn76TP169
	K7NxexWfuiV1T7fUmmRXYjotT/cigSc4IiI0+UA6uIU8sO/enDgtg4px9m73tEr6s2sPsh4Tnose0
	OkfywOZcEHWLnTG6IQ/zH6GK7dWX15EL+7kwDgmJzAXW2w0fRNxrypyiH2emTY+VLHX+5nwdFf59C
	XCSvE1sjVnO9M36+X2UvLHz8UGDmqL1Gt8FSwDztWkaYygNDxz0JGEqan/Io1NmQ9kkbvdUFjnzdF
	i9k61dYf56doVYwoBnk+25W4VWaMrUyguWJgVlF5cf/1Sx+2OuwDXzAbXhpJKEJli+myFc/1t6GbK
	XhEocC5bh7+L4i5C8PCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXgZW-0000000EXBP-3MVK;
	Fri, 04 Jul 2025 13:35:22 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXgAQ-0000000ETXg-3GzE
	for linux-phy@lists.infradead.org;
	Fri, 04 Jul 2025 13:09:29 +0000
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20250704130920epoutp01666df00bbe4aa5a6da9c5dcb7c039704~PDlo1IOOv2442324423epoutp01-
	for <linux-phy@lists.infradead.org>; Fri,  4 Jul 2025 13:09:20 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20250704130920epoutp01666df00bbe4aa5a6da9c5dcb7c039704~PDlo1IOOv2442324423epoutp01-
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1751634560;
	bh=7ZXkeb6eFkBOPADQFZ6Ugr+b8t74NHRMQP7v0mRURjs=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=tGy7O1TWZRAGFzE9c5zCBfJ0EWJB9ZW168DlwGplfHmJMdkgUweVwdg8Ma0qOU969
	 owlFoU46WtVhNOXjrual6QCRz/QaeuITxMMQwP4EEnKVB6rxrE9Z3bslWmSbEaCWxw
	 FgEOg93qp+uo6zw0nVsaku9VYF6FtZbxTtgieNXE=
Received: from epsnrtp02.localdomain (unknown [182.195.42.154]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPS id
	20250704130919epcas5p19ebf1ad617b18e718d49ca531405bd15~PDlna0mq20316103161epcas5p13;
	Fri,  4 Jul 2025 13:09:19 +0000 (GMT)
Received: from epcas5p3.samsung.com (unknown [182.195.38.182]) by
	epsnrtp02.localdomain (Postfix) with ESMTP id 4bYYqx3J2Dz2SSKX; Fri,  4 Jul
	2025 13:09:17 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
	20250704130916epcas5p2ccff0f947268712a35e5e80977bf5806~PDllQx00_1901719017epcas5p21;
	Fri,  4 Jul 2025 13:09:16 +0000 (GMT)
Received: from INBRO001561 (unknown [107.122.12.6]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20250704130913epsmtip1efc9beeb49ba18d5c56da5d5c629e5c4~PDligOFVO0201502015epsmtip1b;
	Fri,  4 Jul 2025 13:09:13 +0000 (GMT)
From: "Pankaj Dubey" <pankaj.dubey@samsung.com>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>, "'Shradha Todi'"
	<shradha.t@samsung.com>, "'Rob Herring'" <robh@kernel.org>
Cc: <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-samsung-soc@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<linux-fsd@tesla.com>, <mani@kernel.org>, <lpieralisi@kernel.org>,
	<kw@linux.com>, <bhelgaas@google.com>, <jingoohan1@gmail.com>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>, <alim.akhtar@samsung.com>,
	<vkoul@kernel.org>, <kishon@kernel.org>, <arnd@arndb.de>,
	<m.szyprowski@samsung.com>, <jh80.chung@samsung.com>
In-Reply-To: <5ea33054-8a08-4bb3-81e7-d832c53979dc@kernel.org>
Subject: RE: [PATCH v2 07/10] dt-bindings: phy: Add PHY bindings support for
 FSD SoC
Date: Fri, 4 Jul 2025 18:39:12 +0530
Message-ID: <000101dbece4$d8694d80$893be880$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQFUClgbainc6hQuKSBO0V8ttZVgkwGg1JXJAfs/ltABn1f9rAD4JQ8bAeFf3fQB1zUu0wGsyVLstNTsxXA=
Content-Language: en-us
X-CMS-MailID: 20250704130916epcas5p2ccff0f947268712a35e5e80977bf5806
X-Msg-Generator: CA
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-541,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250625165319epcas5p3721c19f6e6b482438c62dd1ef784de03
References: <20250625165229.3458-1-shradha.t@samsung.com>
	<CGME20250625165319epcas5p3721c19f6e6b482438c62dd1ef784de03@epcas5p3.samsung.com>
	<20250625165229.3458-8-shradha.t@samsung.com>
	<20250627211721.GA153863-robh@kernel.org>
	<02af01dbea78$24f01310$6ed03930$@samsung.com>
	<f877b3d7-d770-4424-9813-da748775f456@kernel.org>
	<02bf01dbea8c$fc835cb0$f58a1610$@samsung.com>
	<5ea33054-8a08-4bb3-81e7-d832c53979dc@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250704_060927_460994_C53CE96D 
X-CRM114-Status: GOOD (  33.02  )
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
> Sent: Thursday, July 3, 2025 1:48 AM
> To: Shradha Todi <shradha.t@samsung.com>; 'Rob Herring'
> <robh@kernel.org>
> Cc: linux-pci@vger.kernel.org; devicetree@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; linux-samsung-soc@vger.kernel.org; linux-
> kernel@vger.kernel.org; linux-phy@lists.infradead.org; linux-fsd@tesla.com;
> mani@kernel.org; lpieralisi@kernel.org; kw@linux.com;
> bhelgaas@google.com; jingoohan1@gmail.com; krzk+dt@kernel.org;
> conor+dt@kernel.org; alim.akhtar@samsung.com; vkoul@kernel.org;
> kishon@kernel.org; arnd@arndb.de; m.szyprowski@samsung.com;
> jh80.chung@samsung.com; pankaj.dubey@samsung.com
> Subject: Re: [PATCH v2 07/10] dt-bindings: phy: Add PHY bindings support for
> FSD SoC
> 
> On 01/07/2025 15:35, Shradha Todi wrote:
> >>> does not support auto adaptation so we need to tune the PHYs
> >>> according to the use case (considering channel loss, etc). This is
> >>> why we
> >>
> >> So not same? Decide. Either it is same or not, cannot be both.
> >>
> >> If you mean that some wiring is different on the board, then how does
> >> it differ in soc thus how it is per-soc property? If these are
> >> use-cases, then how is even suitable for DT?
> >>
> >> I use your Tesla FSD differently and then I exchange DTSI and compatibles?
> >>
> >> You are no describing real problem and both binding and your
> >> explanations are vague and imprecise. Binding tells nothing about it,
> >> so it is example of skipping important decisions.
> >>
> >>> have 2 different SW PHY initialization sequence depending on the
> >>> instance number. Do you think having different compatible (something
> >>> like
> >>> tesla,fsd-pcie-phy0 and tesla,fsd-pcie-phy1) and having phy ID as
> >>> platform data is okay in this case? I actually took reference from files like:
> >>
> >> And in different use case on same soc you are going to reverse
> >> compatibles or instance IDs?
> >>
> >
> > Even though both the PHYs are exactly identical in terms of hardware,
> > they need to be programmed/initialized/configured differently.
> >
> > Sorry for my misuse of the word "use-case". To clarify, these
> > configurations will always remain the same for FSD SoC even if you use it
> differently.
> >
> > I will use different compatibles for them as I understand that it is
> > the best option.
> 
> I still do not see the difference in hardware explained.
> 

Hi Krzysztof 

Let me add more details and see if that makes sense to understand the intention
behind the current design of the PHY driver.

In FSD SoC, the two PHY instances, although having identical hardware design and
register maps, are placed in different locations (Placement and routing) inside the
SoC and have distinct PHY-to-Controller topologies. 

One instance is connected to two PCIe controllers, while the other is connected to
only one. As a result, they experience different analog environments, including
varying channel losses and noise profiles.

Since these PHYs lack internal adaptation mechanisms and f/w based tuning,
manual register programming is required for analog tuning, such as equalization,
de-emphasis, and gain. To ensure optimal signal integrity, it is essential to use different
register values for each PHY instance, despite their identical hardware design.
This is because the same register values may not be suitable for both instances due to
their differing environments and topologies.

Do let us know if this explains the intention behind separate programming sequence
for both instance of the PHY?

Thanks,
Pankaj Dubey
> Best regards,
> Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
