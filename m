Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DF46C71157
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jun 2025 01:30:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uNuU/c4lrjZdzbiHxQZnyTH/7+a9X5jkPI76YZ8+2tA=; b=KNFMnXT3/Mi6zJ
	q/0pbg0q1cQtyxhbTuxcasv52/5W8z9nDSlXKVaPHpUqIZn1z3/i6P9IvNLSOjEWyc1gCSU8Q+2Zi
	KVXGSHBqpiZTStvAGav6gEauJ2BQnR5qwTmoB0bOOo48HFG3P7KnGu2+/azdlfFIdDFYqkrEeo+1m
	vhGDs/YLrQ5nbnVESYdVor5Vfgt6jFkjY75tZFpANAgX4MQGyuw3RMzI84J4BxRWOU1fz6fh1Kn/0
	VoxGprZ++eTVWbNk8Awc78pYakOMccLP/jE0zDPAoCBxCDmtlc/A02UHXiWg7q7DLNE7Elbabjjt/
	A0Or5CEdm3QKqyHMR/6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRhd4-00000008kln-02MZ;
	Wed, 18 Jun 2025 01:30:18 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRhRW-00000008jpO-3meF
	for linux-phy@lists.infradead.org;
	Wed, 18 Jun 2025 01:18:25 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20250618011821epoutp012a8683a4f751c67061d6dd487e28d48c~J-kSpPjRw0182101821epoutp014
	for <linux-phy@lists.infradead.org>; Wed, 18 Jun 2025 01:18:21 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20250618011821epoutp012a8683a4f751c67061d6dd487e28d48c~J-kSpPjRw0182101821epoutp014
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1750209501;
	bh=f4ePGu/HbODHfgnW4Rd+HUYbGf55CDlg7sZxq2mBe4w=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=sXphC0aTlOO6aRyI0peueCrJ7ZfvPU5xb4Fd92j9l57bTbx1Ue+6w0vdFV1vIO3Cl
	 c/qM+DGikHZNSsJCMbGvbSS2mCyNhaV2FMXnQYBnLhxbId9AfF5zRdCgiMFduiicfa
	 odMFXKEHUYB67ThaaCxPhQIsfK34HqIK00gNnuuw=
Received: from epsnrtp03.localdomain (unknown [182.195.42.155]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPS id
	20250618011820epcas5p19a33a255e86e59b0ec429aa61c56cc63~J-kSAM_0S0181101811epcas5p1t;
	Wed, 18 Jun 2025 01:18:20 +0000 (GMT)
Received: from epcas5p3.samsung.com (unknown [182.195.38.182]) by
	epsnrtp03.localdomain (Postfix) with ESMTP id 4bMQpy3dVRz3hhTM; Wed, 18 Jun
	2025 01:18:18 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
	20250617180446epcas5p1fc8bbc3efe3ef7dc2c97e3f0598f7332~J5pvH0OJo0228502285epcas5p1Q;
	Tue, 17 Jun 2025 18:04:46 +0000 (GMT)
Received: from INBRO001840 (unknown [107.122.3.105]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20250617180443epsmtip130a4506dfb7f000acfa72e5107f09a8b~J5psRzdK51544215442epsmtip1a;
	Tue, 17 Jun 2025 18:04:43 +0000 (GMT)
From: "Pritam Manohar Sutar" <pritam.sutar@samsung.com>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>
Cc: <vkoul@kernel.org>, <kishon@kernel.org>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>, <alim.akhtar@samsung.com>,
	<andre.draszik@linaro.org>, <peter.griffin@linaro.org>,
	<kauschluss@disroot.org>, <ivo.ivanov.ivanov1@gmail.com>,
	<m.szyprowski@samsung.com>, <s.nawrocki@samsung.com>,
	<linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-samsung-soc@vger.kernel.org>, <rosa.pila@samsung.com>,
	<dev.tailor@samsung.com>, <faraz.ata@samsung.com>,
	<muhammed.ali@samsung.com>, <selvarasu.g@samsung.com>
In-Reply-To: <20250616-snobbish-chimpanzee-from-arcadia-bd9fcb@kuoka>
Subject: RE: [PATCH v3 4/9] dt-bindings: phy: samsung,usb3-drd-phy: add
 ExynosAutov920 combo HS phy
Date: Tue, 17 Jun 2025 23:34:42 +0530
Message-ID: <000501dbdfb2$4f6f0450$ee4d0cf0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQNTkACKxnsdZBPuyPiYuNftoBZF1gI3IvSUAW5i7SwC0YsPGrDkisWw
Content-Language: en-in
X-CMS-MailID: 20250617180446epcas5p1fc8bbc3efe3ef7dc2c97e3f0598f7332
X-Msg-Generator: CA
X-Sendblock-Type: REQ_APPROVE
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250613055050epcas5p3f995a6696ccf4f7eeb0b5d76382f71f7
References: <20250613055613.866909-1-pritam.sutar@samsung.com>
	<CGME20250613055050epcas5p3f995a6696ccf4f7eeb0b5d76382f71f7@epcas5p3.samsung.com>
	<20250613055613.866909-5-pritam.sutar@samsung.com>
	<20250616-snobbish-chimpanzee-from-arcadia-bd9fcb@kuoka>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_181823_247929_6FC04A6D 
X-CRM114-Status: GOOD (  12.72  )
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
> Sent: 16 June 2025 01:46 PM
> To: Pritam Manohar Sutar <pritam.sutar@samsung.com>
> Cc: vkoul@kernel.org; kishon@kernel.org; robh@kernel.org;
> krzk+dt@kernel.org; conor+dt@kernel.org; alim.akhtar@samsung.com;
> andre.draszik@linaro.org; peter.griffin@linaro.org; kauschluss@disroot.org;
> ivo.ivanov.ivanov1@gmail.com; m.szyprowski@samsung.com;
> s.nawrocki@samsung.com; linux-phy@lists.infradead.org;
> devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; linux-samsung-soc@vger.kernel.org;
> rosa.pila@samsung.com; dev.tailor@samsung.com;
> faraz.ata@samsung.com; muhammed.ali@samsung.com;
> selvarasu.g@samsung.com
> Subject: Re: [PATCH v3 4/9] dt-bindings: phy: samsung,usb3-drd-phy: add
> ExynosAutov920 combo HS phy
> 
> On Fri, Jun 13, 2025 at 11:26:08AM GMT, Pritam Manohar Sutar wrote:
> > Add a dedicated compatible string for USB combo HS phy found in this
> 
> I reviewed patch #1, then went here and see that this is HS PHY. So patch #1
> is not HS PHY?
> 

https://lore.kernel.org/linux-phy/20250613055613.866909-1-pritam.sutar@samsung.com/
This Soc has 2 types HS phys. one in combo phy and another stand-alone. please refer the block diagrams in cover-letter. 
	
	1. samsung,exynosautov920-usbdrd-phy => represents hs phy (synopsys phy version-303) and it is same as "samsung,exynos850-usbdrd-phy". used same naming conventions
	2. samsung,exynosautov920-usbdrd-hsphy => represents 'Add-on' HS phy(synopsys phy version-400) with SS phy in combo phy. this is different from "samsung,exynosautov920-usbdrd-phy" (reg offsets and bits are different). 
	samsung,exynosautov920-usb31drd-ssphy =>  represents SS phy in combo phy

> Best regards,
> Krzysztof

Thank you.

Regards,
Pritam


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
