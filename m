Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17383CAC5B5
	for <linux-phy@archiver.kernel.org>; Mon, 29 Sep 2025 06:46:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0m785+2vjmDsNtCJwck67QNCvXpIS75xlokfErkY8wU=; b=wVmcXC0V2yka0I
	cj3tID330rnvlHSb1iFNotatqArk5wiUT0Iic1jzjvu34L04jI3UAvJfw5uk5a+vvNEx/ofHeucaS
	7WLjWmfQQk8xXgrQoD9EaHc4JzLnF9IR8IvTvB7nXxHOULrdD6qpwkyGjCsZPfU/p5VRGmwM5XN2L
	OIq1qS/YmGmXA3ubns5Epkt75iFpfCRps27kfPe8nx1jZ93S1aUv1clspwxZczvWqypJwHJOX9gZX
	8PBFJ7a51+vRKIRgF2AUf8nEKA/Anj2uC+xUW9PZd4jB/5FNNyAygBXAdCBavgIk/99LMWTnMAstz
	kXdOnJsD0pdk1T2ptWBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v37en-00000001W1r-3Mge;
	Mon, 29 Sep 2025 06:46:45 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v37ej-00000001Vy7-0ch2
	for linux-phy@lists.infradead.org;
	Mon, 29 Sep 2025 06:46:44 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20250929064633epoutp031ecafd84fd692d9906a3b74ef2b1d44f~prfQ0Kv6J1909219092epoutp03b
	for <linux-phy@lists.infradead.org>; Mon, 29 Sep 2025 06:46:33 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20250929064633epoutp031ecafd84fd692d9906a3b74ef2b1d44f~prfQ0Kv6J1909219092epoutp03b
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1759128393;
	bh=FfZBLJLuc+uuntD1S7nxM2h+LKVCtE+y0dCkxRqcjtE=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=HNVWJqCHjtOX4H+DJfZ6FrHgojQmY86b8uryxjqMb5WAIUNZpmbTE68r21/TAq0ww
	 YzEvdW8e80wxSvxhQA15Jdy/JJoY3Fpq+2FA0H3d4JfVQmN9FCszI+swlu7IC4OIrn
	 5sTMOM9+0TMQgRwdO/dLzGr8bkCFIox6tJmU7xU4=
Received: from epsnrtp02.localdomain (unknown [182.195.42.154]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPS id
	20250929064633epcas5p3f9bb11016d7a35cd65b5e5228d9e07b6~prfQPnHzg2175121751epcas5p3F;
	Mon, 29 Sep 2025 06:46:33 +0000 (GMT)
Received: from epcas5p2.samsung.com (unknown [182.195.38.91]) by
	epsnrtp02.localdomain (Postfix) with ESMTP id 4cZsD811vkz2SSKf; Mon, 29 Sep
	2025 06:46:32 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
	20250929064631epcas5p2226adbf90c50ec59281f56d85d664bdd~prfOjiy3R0521705217epcas5p2e;
	Mon, 29 Sep 2025 06:46:31 +0000 (GMT)
Received: from INBRO002756 (unknown [107.122.3.168]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20250929064627epsmtip1e18cd0b249e2fc57699cfa1204c7b11a~prfK0LkG31254112541epsmtip1d;
	Mon, 29 Sep 2025 06:46:27 +0000 (GMT)
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
In-Reply-To: <20250903073827.3015662-3-pritam.sutar@samsung.com>
Subject: RE: [PATCH v8 2/6] phy: exynos5-usbdrd: support HS phy for
 ExynosAutov920
Date: Mon, 29 Sep 2025 12:16:26 +0530
Message-ID: <001401dc310c$c9f18710$5dd49530$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQIRMOVGdWg5oRjNsRBgEjzIeIB8IgG7M6EYAY8VKj20JWVfgA==
Content-Language: en-us
X-CMS-MailID: 20250929064631epcas5p2226adbf90c50ec59281f56d85d664bdd
X-Msg-Generator: CA
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250903072939epcas5p4b36818cd2e2b5c59fdd4a1b90579eb47
References: <20250903073827.3015662-1-pritam.sutar@samsung.com>
	<CGME20250903072939epcas5p4b36818cd2e2b5c59fdd4a1b90579eb47@epcas5p4.samsung.com>
	<20250903073827.3015662-3-pritam.sutar@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250928_234641_497844_44E4EF39 
X-CRM114-Status: GOOD (  10.06  )
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
> Subject: [PATCH v8 2/6] phy: exynos5-usbdrd: support HS phy for
> ExynosAutov920
> 
> Enable UTMI+ phy support for this SoC which is very similar to what the
> existing Exynos850 supports.
> 
> Add required change in phy driver to support HS phy for this SoC.
> 
> Signed-off-by: Pritam Manohar Sutar <pritam.sutar@samsung.com>
> ---
Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
