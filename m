Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0F5CCCA471
	for <linux-phy@archiver.kernel.org>; Mon,  6 Oct 2025 07:56:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r83x+D3tGGZMOcOrelnJ7yLwVz0zGZPpR2YyLADWGu0=; b=vw4VGtmKxodoJ9
	KIlAq9AmLnrqdcFfXYtNRLxcaTA9KNVpDmUYc1MHVy0YpMDwUclB2JVIpW9hwbB7roLPJo9L7EX7u
	Inm8vOQZkgtdWdwkLtTsMpfHMr3S2wlWnnd5IkqsDq7lhEHOqSGK7RSCoNoJUcglVZXFU9oDYEOIp
	7suaFlJY6w6ZLil2wGazzWsP383ZLwI3k8kr9gp0mDiEvjZK8tZJzVfkRX9TI3hmdZxwY9jAy3N4L
	5ep+TSivGnT7NPijgjwT8F69RMQp5m4lrNM9UYNA0SJK2EqS9DziSCw6/1YjtYv3r9v4zhp/p2QwQ
	hRE0Pjt+joaDNG97wZ4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5g4w-0000000H9AT-1DMT;
	Mon, 06 Oct 2025 07:56:18 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5g4q-0000000H98y-3SdU
	for linux-phy@lists.infradead.org;
	Mon, 06 Oct 2025 07:56:17 +0000
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20251006075605epoutp013304f2d0203160359ed4d83fb88c128a~r189tTiS50503805038epoutp018
	for <linux-phy@lists.infradead.org>; Mon,  6 Oct 2025 07:56:05 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20251006075605epoutp013304f2d0203160359ed4d83fb88c128a~r189tTiS50503805038epoutp018
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1759737365;
	bh=y3jKOu9b+P0Ih93AICIcneY/oMkTMn7T+Krlp2E8KKA=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=F4D8FWIXj/ijjKU7Fj+GximToN7e4DiY0q0oKVkmyNh3sFfuzgBLg+3Fwv+21A/8g
	 l3QSx0pmM3KxioyAccJ3TErPRfOO98ZbHkYNsdQP+2SSnkZNlnjjfqFwc9jMx9W2b/
	 JWACmnEZu08FxzRSomen6pSfhzB+UlIKrNMSy6as=
Received: from epsnrtp03.localdomain (unknown [182.195.42.155]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPS id
	20251006075604epcas5p2340605e3e9393140844ab163feb26c00~r189NvSTp1431114311epcas5p24;
	Mon,  6 Oct 2025 07:56:04 +0000 (GMT)
Received: from epcas5p4.samsung.com (unknown [182.195.38.94]) by
	epsnrtp03.localdomain (Postfix) with ESMTP id 4cgBR75fF4z3hhT3; Mon,  6 Oct
	2025 07:56:03 +0000 (GMT)
Received: from epsmtip2.samsung.com (unknown [182.195.34.31]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
	20251006075603epcas5p1b56873cad2f305bcdee52ea7c550529f~r187tLzhK0791807918epcas5p1R;
	Mon,  6 Oct 2025 07:56:03 +0000 (GMT)
Received: from INBRO001840 (unknown [107.122.3.105]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20251006075600epsmtip20e24c5f8001f5c1fad71053ea9c0d0e8~r1842CSE20799907999epsmtip2K;
	Mon,  6 Oct 2025 07:55:59 +0000 (GMT)
From: "Pritam Manohar Sutar" <pritam.sutar@samsung.com>
To: "'Alim Akhtar'" <alim.akhtar@samsung.com>, <vkoul@kernel.org>,
	<kishon@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <andre.draszik@linaro.org>,
	<peter.griffin@linaro.org>, <kauschluss@disroot.org>,
	<ivo.ivanov.ivanov1@gmail.com>, <igor.belwon@mentallysanemainliners.org>,
	<m.szyprowski@samsung.com>, <s.nawrocki@samsung.com>
Cc: <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-samsung-soc@vger.kernel.org>, <rosa.pila@samsung.com>,
	<dev.tailor@samsung.com>, <faraz.ata@samsung.com>,
	<muhammed.ali@samsung.com>, <selvarasu.g@samsung.com>
In-Reply-To: <001301dc310c$b7a78550$26f68ff0$@samsung.com>
Subject: RE: [PATCH v8 1/6] dt-bindings: phy: samsung,usb3-drd-phy: add
 ExynosAutov920 HS phy compatible
Date: Mon, 6 Oct 2025 13:25:58 +0530
Message-ID: <000001dc3696$a97bcf10$fc736d30$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQIRMOVGdWg5oRjNsRBgEjzIeIB8IgGabj6EAmTXuDcDLshEdrQRTsmg
Content-Language: en-in
X-CMS-MailID: 20251006075603epcas5p1b56873cad2f305bcdee52ea7c550529f
X-Msg-Generator: CA
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250903072936epcas5p4a28d0e63c7f0792b516b0cbc68bf3a8e
References: <20250903073827.3015662-1-pritam.sutar@samsung.com>
	<CGME20250903072936epcas5p4a28d0e63c7f0792b516b0cbc68bf3a8e@epcas5p4.samsung.com>
	<20250903073827.3015662-2-pritam.sutar@samsung.com>
	<001301dc310c$b7a78550$26f68ff0$@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_005615_113206_702FF03E 
X-CRM114-Status: GOOD (  16.38  )
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
> From: Alim Akhtar <alim.akhtar@samsung.com>
> Sent: 29 September 2025 12:16 PM
> To: 'Pritam Manohar Sutar' <pritam.sutar@samsung.com>; vkoul@kernel.org;
> kishon@kernel.org; robh@kernel.org; krzk+dt@kernel.org;
> conor+dt@kernel.org; andre.draszik@linaro.org; peter.griffin@linaro.org;
> kauschluss@disroot.org; ivo.ivanov.ivanov1@gmail.com;
> igor.belwon@mentallysanemainliners.org; m.szyprowski@samsung.com;
> s.nawrocki@samsung.com
> Cc: linux-phy@lists.infradead.org; devicetree@vger.kernel.org; linux-
> kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-samsung-
> soc@vger.kernel.org; rosa.pila@samsung.com; dev.tailor@samsung.com;
> faraz.ata@samsung.com; muhammed.ali@samsung.com;
> selvarasu.g@samsung.com
> Subject: RE: [PATCH v8 1/6] dt-bindings: phy: samsung,usb3-drd-phy: add
> ExynosAutov920 HS phy compatible
> 
> Hi Pritam
> 
> > -----Original Message-----
> > From: Pritam Manohar Sutar <pritam.sutar@samsung.com>
> > Sent: Wednesday, September 3, 2025 1:08 PM
> > To: vkoul@kernel.org; kishon@kernel.org; robh@kernel.org;
> > krzk+dt@kernel.org; conor+dt@kernel.org; alim.akhtar@samsung.com;
> > andre.draszik@linaro.org; peter.griffin@linaro.org;
> > kauschluss@disroot.org; ivo.ivanov.ivanov1@gmail.com;
> > igor.belwon@mentallysanemainliners.org;
> > m.szyprowski@samsung.com; s.nawrocki@samsung.com;
> > pritam.sutar@samsung.com
> > Cc: linux-phy@lists.infradead.org; devicetree@vger.kernel.org; linux-
> > kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> > samsung-soc@vger.kernel.org; rosa.pila@samsung.com;
> > dev.tailor@samsung.com; faraz.ata@samsung.com;
> > muhammed.ali@samsung.com; selvarasu.g@samsung.com
> > Subject: [PATCH v8 1/6] dt-bindings: phy: samsung,usb3-drd-phy: add
> > ExynosAutov920 HS phy compatible
> >
> > Document support for the USB20 phy found on the ExynosAutov920 SoC.
> > The
> > USB20 phy is functionally identical to that on the Exynos850 SoC, so
> > no driver changes are needed to support this phy. However, add a
> > dedicated compatible string for USB20 phy found in this SoC.
> >
> > Signed-off-by: Pritam Manohar Sutar <pritam.sutar@samsung.com>
> > ---
> Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>

Hi Alim,
Thank you for RB tag.

Hi Vinod, 
Addressed comments on phy drivers those were given in patch-set v5. 
Can you please check and let me know if any other comments? 

Hi Krzysztof, 
Please let me know if you want me send v9 by retaining  your RB on 
patch1 and patch3? Also do let me know if any other concerns need 
to be addressed?

Regards,
Pritam


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
