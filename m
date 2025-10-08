Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B808CAC5BB
	for <linux-phy@archiver.kernel.org>; Wed,  8 Oct 2025 04:45:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HzgIU9ICxfff1h7SvrUg7iQ0UpqtKU9aBG1JonEGu2o=; b=qM+wkggDBiP8Ec
	faTeFDfofKMUo1VjNB+EMr+RW0kxdtn5SVxj1MRQK1aZFFW9LpdMvQRhEnV7OgQ+ew8eCDZ6bvlpL
	FTFc25KilHw5qRWPRWMQH3BNl2Oee3PHwQbYPxU3S25NMMxixYZDbuIX0apvqixRPhDdjfHfTIL+J
	UTLiDHOwfvSwdzKQehA83Anc5pEU8ZgBpjpXHxJfnkvqxnwvv4/KxHgZlXixothwaY+ZNfwa49G/S
	A8K9+Gpftd2+VVTa1FSfByR8zXrYftjwV6I15d/OZ4zHs3KTGvHMH1BExPtexFWIkqJAXPIRJ4jly
	GBIWmB3tpNujUTgq/ehQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6M3j-00000003Bl1-3mTK;
	Wed, 08 Oct 2025 04:45:52 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6M3Z-00000003Bib-1l3g
	for linux-phy@lists.infradead.org;
	Wed, 08 Oct 2025 04:45:43 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20251008044535epoutp025923e9becb1fbeaf908925949f05a2e3~sapM-24tr2901829018epoutp02Z
	for <linux-phy@lists.infradead.org>; Wed,  8 Oct 2025 04:45:35 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20251008044535epoutp025923e9becb1fbeaf908925949f05a2e3~sapM-24tr2901829018epoutp02Z
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1759898735;
	bh=vROKexdVYNHAhyF4ES21jI5cobDDrJlr4MDKl+4gj3Y=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=b9YTkETDxlWM1AzKrBj0MZRefGT60KTRTCdJ8B8NmeUYvo9o2Uk//mWjkEVLKYKnc
	 bu26mJik2ZFvgzNbQYwmUx1NKQuXCZHBbpApGHJSsJWEairfzIiU9MoCFumdmzHp6B
	 nAfDNOdaPeFyUYztbf/67tMAHdrygsvNoabziGHc=
Received: from epsnrtp03.localdomain (unknown [182.195.42.155]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPS id
	20251008044534epcas5p1270379e0d1536e8cda6567d9be45df5d~sapMfio3Y1099610996epcas5p14;
	Wed,  8 Oct 2025 04:45:34 +0000 (GMT)
Received: from epcas5p2.samsung.com (unknown [182.195.38.93]) by
	epsnrtp03.localdomain (Postfix) with ESMTP id 4chL6P3rz1z3hhT8; Wed,  8 Oct
	2025 04:45:33 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
	20251008044532epcas5p23af935589ba8975d38fc28b5df113e5d~sapK1yD-m2794127941epcas5p29;
	Wed,  8 Oct 2025 04:45:32 +0000 (GMT)
Received: from INBRO001840 (unknown [107.122.3.105]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20251008044529epsmtip1f98e9c929be1697bcf28a33dba660d45~sapHeFoD12062920629epsmtip1I;
	Wed,  8 Oct 2025 04:45:28 +0000 (GMT)
From: "Pritam Manohar Sutar" <pritam.sutar@samsung.com>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>, <vkoul@kernel.org>,
	<kishon@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <alim.akhtar@samsung.com>,
	<andre.draszik@linaro.org>, <peter.griffin@linaro.org>,
	<kauschluss@disroot.org>, <ivo.ivanov.ivanov1@gmail.com>,
	<igor.belwon@mentallysanemainliners.org>, <m.szyprowski@samsung.com>,
	<s.nawrocki@samsung.com>
Cc: <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-samsung-soc@vger.kernel.org>, <rosa.pila@samsung.com>,
	<dev.tailor@samsung.com>, <faraz.ata@samsung.com>,
	<muhammed.ali@samsung.com>, <selvarasu.g@samsung.com>
In-Reply-To: <808d166a-b615-49c6-b0f5-bf5101721381@kernel.org>
Subject: RE: [PATCH v8 1/6] dt-bindings: phy: samsung,usb3-drd-phy: add
 ExynosAutov920 HS phy compatible
Date: Wed, 8 Oct 2025 10:15:27 +0530
Message-ID: <000001dc380e$612b5680$23820380$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQIRMOVGdWg5oRjNsRBgEjzIeIB8IgGabj6EAmTXuDcA7fJUJgHIrfZJAofpNyABqVtXsAE6XDP/s+yr4PA=
Content-Language: en-in
X-CMS-MailID: 20251008044532epcas5p23af935589ba8975d38fc28b5df113e5d
X-Msg-Generator: CA
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250903072936epcas5p4a28d0e63c7f0792b516b0cbc68bf3a8e
References: <20250903073827.3015662-1-pritam.sutar@samsung.com>
	<CGME20250903072936epcas5p4a28d0e63c7f0792b516b0cbc68bf3a8e@epcas5p4.samsung.com>
	<20250903073827.3015662-2-pritam.sutar@samsung.com>
	<0df74c2b-31b9-4f29-97d3-b778c8e3eaf1@kernel.org>
	<007801dc2893$18ed4a20$4ac7de60$@samsung.com>
	<02ef5180-ad56-45f0-a56f-87f442bf6793@kernel.org>
	<007f01dc2b81$84ef19b0$8ecd4d10$@samsung.com>
	<808d166a-b615-49c6-b0f5-bf5101721381@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_214542_106450_8E9299FB 
X-CRM114-Status: GOOD (  13.15  )
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
> Sent: 07 October 2025 11:54 AM
> To: Pritam Manohar Sutar <pritam.sutar@samsung.com>; vkoul@kernel.org;
> kishon@kernel.org; robh@kernel.org; krzk+dt@kernel.org;
> conor+dt@kernel.org; alim.akhtar@samsung.com; andre.draszik@linaro.org;
> peter.griffin@linaro.org; kauschluss@disroot.org;
> ivo.ivanov.ivanov1@gmail.com; igor.belwon@mentallysanemainliners.org;
> m.szyprowski@samsung.com; s.nawrocki@samsung.com
> Cc: linux-phy@lists.infradead.org; devicetree@vger.kernel.org; linux-
> kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-samsung-
> soc@vger.kernel.org; rosa.pila@samsung.com; dev.tailor@samsung.com;
> faraz.ata@samsung.com; muhammed.ali@samsung.com;
> selvarasu.g@samsung.com
> Subject: Re: [PATCH v8 1/6] dt-bindings: phy: samsung,usb3-drd-phy: add
> ExynosAutov920 HS phy compatible
> 
> On 22/09/2025 14:26, Pritam Manohar Sutar wrote:
> > This phy needs 0.75v, 0.18v and 3.3v supplies for its internal
> > functionally. Power Supply's names are as per phy's User Data-Book.
> > These names, (dvdd, vdd18 and vdd33), are considered  for 0.75v, 1.8v
> > and 3.3v respectively.
> > "
> >
> >>
> >> I still cannot find constraints for the rest of properties, though.
> >
> > Sorry I didn't get it completely. Can you please elaborate on the same?
> 
> 
> Writing bindings and introductory talks elaborate on that. You add properties
> without constraints. That's not what we want. We want constraints.
> 

Have added only supplies in this patch-set. However, was going 
through schema example and it says nothing is needed to define
in terms of supply. 

ref: 
1. Documentation/devicetree/bindings/writing-schema.rst +151

... A "description" property is always required.

2. Documentation/devicetree/bindings/example-schema.yaml +135

# *-supply is always a single phandle, so nothing more to define.
foo-supply: true

Please confirm and let me know if your expectations are something 
else in terms of constraints of the properties.

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
