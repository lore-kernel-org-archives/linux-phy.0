Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0090BCAC5B5
	for <linux-phy@archiver.kernel.org>; Mon, 29 Sep 2025 06:49:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HsTJmLUmgayltahSSCNvPWfHh1DvfY6i++laTpgOehk=; b=apVtboqQ1mzBuk
	Szk1NWyycgD72KNykEG2HA2as2pTMT4xh01xM96dVSWl4vX3Vye+ddp4QS074dDN/25uMHcNGEf1W
	AGMaJrSUcLGCaEvGTWGfGIGcq9gfhozDvlbuTFuWeeUN6fYax544lAIvTtCZJS7Dd2DX0c3sjDYnI
	EzgZJcKJh849JEWNLirfySKf1bykyTULWT0PblU1iLLIAOLGQTJYCYiWgPy9nq0vfdfoph318T4m+
	teIroqqNUhqPznL/Dqpps9JJ2dJ6uSdHyNDbM6g+9uYkrsz1fIDkTNDzHCKhogKFYDsZaRKy2n5tf
	HHihOK2+Zp6sEWEErW4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v37hj-00000001WtG-3D9F;
	Mon, 29 Sep 2025 06:49:47 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v37hh-00000001Wrr-0aQW
	for linux-phy@lists.infradead.org;
	Mon, 29 Sep 2025 06:49:46 +0000
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20250929064943epoutp0164ee8412093913d5affcbca01eeaa3ba~priBGy2e-2214422144epoutp01H
	for <linux-phy@lists.infradead.org>; Mon, 29 Sep 2025 06:49:43 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20250929064943epoutp0164ee8412093913d5affcbca01eeaa3ba~priBGy2e-2214422144epoutp01H
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1759128583;
	bh=bLrq4rO43N5uwgEaMfX6vfw6nUoLOsIdWCvpc8PcZRo=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=s9zTNF2HX5rIaaQbixw8LehUVvbOFhMX/eOs5TYhqAkyhmPgMdQXhWfpH769F9/jv
	 GmF8pjXlbPk6HimMguVc3SWQkORLpGP6Ne21hvxWAsvnwxfjalxxebgKoyAtssFhyo
	 Z/VQyh+AhRTP2d5ywFehUSK09oA7+BwoLiFpNq/U=
Received: from epsnrtp03.localdomain (unknown [182.195.42.155]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPS id
	20250929064942epcas5p48727b6a24c89d39677b71492610bca36~priAc5c6_2608926089epcas5p4f;
	Mon, 29 Sep 2025 06:49:42 +0000 (GMT)
Received: from epcas5p1.samsung.com (unknown [182.195.38.93]) by
	epsnrtp03.localdomain (Postfix) with ESMTP id 4cZsHn2Y5qz3hhT3; Mon, 29 Sep
	2025 06:49:41 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
	20250929064940epcas5p4994a9e89543d79138f088c625bde279f~prh_9qQS42152621526epcas5p45;
	Mon, 29 Sep 2025 06:49:40 +0000 (GMT)
Received: from INBRO002756 (unknown [107.122.3.168]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20250929064937epsmtip15805f4c40f724e23936b5f428a4dd475~prh7l4ooi1470114701epsmtip1p;
	Mon, 29 Sep 2025 06:49:36 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Pritam Manohar Sutar'" <pritam.sutar@samsung.com>, <vkoul@kernel.org>,
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
In-Reply-To: <20250903073827.3015662-7-pritam.sutar@samsung.com>
Subject: RE: [PATCH v8 6/6] phy: exynos5-usbdrd: support SS combo phy for
 ExynosAutov920
Date: Mon, 29 Sep 2025 12:19:35 +0530
Message-ID: <001801dc310d$3ad95610$b08c0230$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQIRMOVGdWg5oRjNsRBgEjzIeIB8IgHrJOKSAycFebe0FycygA==
Content-Language: en-us
X-CMS-MailID: 20250929064940epcas5p4994a9e89543d79138f088c625bde279f
X-Msg-Generator: CA
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250903072952epcas5p38eaa34521236ad10d963783137748069
References: <20250903073827.3015662-1-pritam.sutar@samsung.com>
	<CGME20250903072952epcas5p38eaa34521236ad10d963783137748069@epcas5p3.samsung.com>
	<20250903073827.3015662-7-pritam.sutar@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250928_234945_505149_6AFAA214 
X-CRM114-Status: GOOD (  11.61  )
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

Hi Pritam

> -----Original Message-----
> From: Pritam Manohar Sutar <pritam.sutar@samsung.com>
> Sent: Wednesday, September 3, 2025 1:08 PM
> To: vkoul@kernel.org; kishon@kernel.org; robh@kernel.org;
> krzk+dt@kernel.org; conor+dt@kernel.org; alim.akhtar@samsung.com;
> andre.draszik@linaro.org; peter.griffin@linaro.org; kauschluss@disroot.org;
> ivo.ivanov.ivanov1@gmail.com; igor.belwon@mentallysanemainliners.org;
> m.szyprowski@samsung.com; s.nawrocki@samsung.com;
> pritam.sutar@samsung.com
> Cc: linux-phy@lists.infradead.org; devicetree@vger.kernel.org; linux-
> kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> samsung-soc@vger.kernel.org; rosa.pila@samsung.com;
> dev.tailor@samsung.com; faraz.ata@samsung.com;
> muhammed.ali@samsung.com; selvarasu.g@samsung.com
> Subject: [PATCH v8 6/6] phy: exynos5-usbdrd: support SS combo phy for
> ExynosAutov920
> 
> Add required change in phy driver to support combo SS phy for this SoC.
> 
> Signed-off-by: Pritam Manohar Sutar <pritam.sutar@samsung.com>
> ---

Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
