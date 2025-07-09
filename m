Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F2AAC83F09
	for <linux-phy@archiver.kernel.org>; Wed,  9 Jul 2025 11:32:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1V19LIprHTk/O4jgqg3G0E5XPS5wVDg+8EZIm80hmcg=; b=hFusQ2+pSwunLD
	MMZVMqvYOjptzgD/uDoezmVmcYoKAvneyIYLHFQ3WO4f9+VBoloPUnIjgvqPI2xHxFxf1cwJ0LOyH
	1io9I50H0XzFJ9pHoLC2hdlagmINQASzCoJFhYaZ9oiWarUPa6OipAXBv3Vpf6fAsWX6qnCxiSrgQ
	76Z8N3LU7kbEoeJ6ctZLEDTvdxuh9p28rW/7r4/xvsCU/0IITgsC5RmWXr8f4Dubo1k5HjlC6DlvX
	oAvXp3cc95kyLmC+4fqI15BVzxXDnTxpWg2HxieqOxx6ouszJtXKTiZcyuiLtmcdlPLb3eD3y/T/j
	4d7kqUx9ou1ixy4pfr2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZT2C-00000008VhT-0t9V;
	Wed, 09 Jul 2025 11:32:20 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZRbY-00000008DO7-0tod
	for linux-phy@lists.infradead.org;
	Wed, 09 Jul 2025 10:00:46 +0000
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
	by mailout4.samsung.com (KnoxPortal) with ESMTP id 20250709100035epoutp0409f60e1796a382de035203ccb8fcc80b~QjPRIyCGL1924119241epoutp04W
	for <linux-phy@lists.infradead.org>; Wed,  9 Jul 2025 10:00:35 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20250709100035epoutp0409f60e1796a382de035203ccb8fcc80b~QjPRIyCGL1924119241epoutp04W
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1752055235;
	bh=8YjDIVkSzZ1qBfDNEzt6aiWfmZ06SFpmvJBdwg8GbFU=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=crM7sDQ1Uz9NtR7Lf5itnb9Kxo52UH9FjSGOjp2JkszPtedhMD5yYtuYLOW3diez/
	 JPkFeY49RxYNNxrnIaqgsbyUhQeN8lHbywF+MaOZmR+G2WbWzqcQ5AR4mnJDBjOoQ2
	 uzRfhHRw+oNiDyxGt4ThAj8UYDSsUzBnjC+ZaEg0=
Received: from epsnrtp04.localdomain (unknown [182.195.42.156]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPS id
	20250709100035epcas5p11cefc566289685aa4dadd35429e93d22~QjPQiuHEG1114111141epcas5p1k;
	Wed,  9 Jul 2025 10:00:35 +0000 (GMT)
Received: from epcas5p1.samsung.com (unknown [182.195.38.180]) by
	epsnrtp04.localdomain (Postfix) with ESMTP id 4bcYPr5Dhtz6B9mD; Wed,  9 Jul
	2025 10:00:32 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
	20250709085159epcas5p15cd74d4ab9d7944eef406ce118768a84~QiTXJ9MsA0055000550epcas5p1N;
	Wed,  9 Jul 2025 08:51:59 +0000 (GMT)
Received: from INBRO001840 (unknown [107.122.3.105]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20250709085156epsmtip13f8f84df1a677aaa0f8edc8247250f7a~QiTUNkrE12100421004epsmtip1O;
	Wed,  9 Jul 2025 08:51:55 +0000 (GMT)
From: "Pritam Manohar Sutar" <pritam.sutar@samsung.com>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>
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
In-Reply-To: <20250706-grouse-of-pastoral-bloom-7d79b0@krzk-bin>
Subject: RE: [PATCH v4 3/6] dt-bindings: phy: samsung,usb3-drd-phy: add
 ExynosAutov920 combo HS phy
Date: Wed, 9 Jul 2025 14:21:54 +0530
Message-ID: <07d401dbf0ae$bb0256b0$31070410$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQJAgQZ9LFXBZrDskwNBYris6jFv1AJNRgOcAqL7pisBlv/N8LMsH/TA
Content-Language: en-in
X-CMS-MailID: 20250709085159epcas5p15cd74d4ab9d7944eef406ce118768a84
X-Msg-Generator: CA
X-Sendblock-Type: REQ_APPROVE
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250701120002epcas5p2c4d728d599a819057bcc40b724881276
References: <20250701120706.2219355-1-pritam.sutar@samsung.com>
	<CGME20250701120002epcas5p2c4d728d599a819057bcc40b724881276@epcas5p2.samsung.com>
	<20250701120706.2219355-4-pritam.sutar@samsung.com>
	<20250706-grouse-of-pastoral-bloom-7d79b0@krzk-bin>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250709_030044_574778_EA9F6D51 
X-CRM114-Status: GOOD (  12.71  )
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
> Sent: 06 July 2025 03:12 PM
> To: Pritam Manohar Sutar <pritam.sutar@samsung.com>
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
> Subject: Re: [PATCH v4 3/6] dt-bindings: phy: samsung,usb3-drd-phy: add
> ExynosAutov920 combo HS phy
> 
> On Tue, Jul 01, 2025 at 05:37:03PM +0530, Pritam Manohar Sutar wrote:
> > This phy supports USB3.1 SSP+(10Gbps) protocol and is backwards
> 
> What is "this"? You add here HS PHY, so HS is 3.1?
> 

"this" means "combo phy". Combo phy is combination of 2 types of the phys. 
1. one supports only USB3.1 SSP+ and denoted as "samsung,exynosautov920-usb31drd-combo-ssphy" as in patch no 5 (combo SS phy)
2. another supports only USB2.0 HS and termed as "samsung,exynosautov920-usbdrd-combo-hsphy" as in this patch (combo HS phy)

> If this is the same phy, why are you adding another compatible?

As explained earlier (even in cover letter), there are 3 types of the phys in this SoC.
1. one is simmilar with exynos850 and termed as "samsung,exynosautov920-usbdrd-phy" as mentioned in patch no.1
2. two phys are in combo phys as explained above (patch no 3 [combo HS phy] and 5[combo SS phy])
			
NOTE: hs phy in combo phy in "NOT" same as phy (patch no. 1 which is similar with exynos850). 
			
These three phys (usbdrd-phy, combo-hsphy, combo-ssphy) are totally deferent "NOT" same, hence added 3 three compatible for three phys.

> 
> Best regards,
> Krzysztof



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
