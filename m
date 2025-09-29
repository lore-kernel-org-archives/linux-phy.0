Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 862CCCAC5B5
	for <linux-phy@archiver.kernel.org>; Mon, 29 Sep 2025 06:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SambWAmvPe3kUTdPjzW5wp2U8y8V4dOR5tzuJxyoYRs=; b=Ty0ewfDOG8H+4F
	ymv/y8wBYE8AGcy0eJmyPBWBYqcNGswX++tzxH+J8n0mQxYzQ7Sd/q2MR3+Op7ilxclUZ4TD6S9aB
	TXRpLM1vU5JbLTcHghvvySb+uv8VCjsY7z2c/51t/RSVNRqakX6JMVLvTwG7K3OSNO1VUPGNYCVO+
	aF9C5JGPZLJyzcGjlVDjP9He/KNMPN9tqj96vVE9OFjFK3IQV9qj1DUevWXyjJ6qUdz4ZmZ0eGfvi
	VFt90rWwzRgTr50MU9EVOAgHWUNarHRqjBamO/fcEOArUwiPiEchd2pQjrYE/2qjJ5dZHAqkgM2MM
	zBWRwAXa2x+ImZKXRR4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v37gM-00000001WYB-1EF3;
	Mon, 29 Sep 2025 06:48:22 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v37gI-00000001WWr-27dw
	for linux-phy@lists.infradead.org;
	Mon, 29 Sep 2025 06:48:20 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20250929064815epoutp03089a4c5ac3b10677f4da06bab632f239~prgvenXWq2179221792epoutp03B
	for <linux-phy@lists.infradead.org>; Mon, 29 Sep 2025 06:48:15 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20250929064815epoutp03089a4c5ac3b10677f4da06bab632f239~prgvenXWq2179221792epoutp03B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1759128495;
	bh=8TiR7dGLuJ/tq4eQDQdq/rwZsrr+n8wFDc6W+Ckqzuw=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=f5KJ1xZ7ivX42KIaCUmksBu+e7eEdRFhN8kz9NDTGYTv9R+2QG11YwA/BVqm8H8Ws
	 m/51VvtKHY0LT92U7Ax9e0+6/TGw3baJhRu6qqnw+AIZqTghnPd5YFIdZ78kV5Bg+m
	 FZQtLJDQfMCHMavGX+FjtaEYoW+c8Smqeq5nZxIM=
Received: from epsnrtp02.localdomain (unknown [182.195.42.154]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPS id
	20250929064814epcas5p166cba3caff64057f60180a7e870930e1~prgu4RX0f0500005000epcas5p1S;
	Mon, 29 Sep 2025 06:48:14 +0000 (GMT)
Received: from epcas5p2.samsung.com (unknown [182.195.38.88]) by
	epsnrtp02.localdomain (Postfix) with ESMTP id 4cZsG563xDz2SSKg; Mon, 29 Sep
	2025 06:48:13 +0000 (GMT)
Received: from epsmtip2.samsung.com (unknown [182.195.34.31]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
	20250929064813epcas5p4c9eabc364711d3c2948e1d42e986a135~prgtWfP532753627536epcas5p4f;
	Mon, 29 Sep 2025 06:48:13 +0000 (GMT)
Received: from INBRO002756 (unknown [107.122.3.168]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20250929064810epsmtip2ab63fcced95b35cd61b01060a0ddeb0a~prgqdJL-D1104111041epsmtip2H;
	Mon, 29 Sep 2025 06:48:09 +0000 (GMT)
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
In-Reply-To: <20250903073827.3015662-5-pritam.sutar@samsung.com>
Subject: RE: [PATCH v8 4/6] phy: exynos5-usbdrd: support HS combo phy for
 ExynosAutov920
Date: Mon, 29 Sep 2025 12:18:07 +0530
Message-ID: <001601dc310d$069ef990$13dcecb0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQIRMOVGdWg5oRjNsRBgEjzIeIB8IgFajeyMAXpI9yS0KRFjsA==
Content-Language: en-us
X-CMS-MailID: 20250929064813epcas5p4c9eabc364711d3c2948e1d42e986a135
X-Msg-Generator: CA
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250903072946epcas5p371f7d0e15d8757f738c08f80a8eefb60
References: <20250903073827.3015662-1-pritam.sutar@samsung.com>
	<CGME20250903072946epcas5p371f7d0e15d8757f738c08f80a8eefb60@epcas5p3.samsung.com>
	<20250903073827.3015662-5-pritam.sutar@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250928_234818_864883_79913C55 
X-CRM114-Status: GOOD (  11.21  )
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
> Subject: [PATCH v8 4/6] phy: exynos5-usbdrd: support HS combo phy for
> ExynosAutov920
> 
> Support UTMI+ combo phy for this SoC which is somewhat simmilar to what
> the existing Exynos850 support does. The difference is that some register
> offsets and bit fields are defferent from Exynos850.
> 
> Add required change in phy driver to support combo HS phy for this SoC.
> 
> Signed-off-by: Pritam Manohar Sutar <pritam.sutar@samsung.com>
> ---
Thanks!
Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
