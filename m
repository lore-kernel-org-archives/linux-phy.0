Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B38DCAC5B5
	for <linux-phy@archiver.kernel.org>; Mon, 29 Sep 2025 06:46:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QBm+iNQBlSboqRew9NaK1KrHURwFs8dbBWsacFjnS2g=; b=rJgod8NgZ75qc7
	WBY1GE3qBt+sYOhs/9YwGZZZ9m7CHkDJQOk65hbWKRo1npKPHLbbiARWlfT5DpVVW6SjluIX5NgCT
	C4QOTmwz9Fb73gfJhT7GGC/POv/AMA8YMMyIrAkvltcPuQmzkCgdzCVM/L8S4NHwst7h6RG6wv51+
	jClVTAlLaCzDD0NqvvuGKu0S3cZk6UzEeo63Uaa19miCGobFYUQRF4TtFy+0gRtZSihAtmM+iuKTm
	sjVbk0fIYbtaMEVXRKwffG0PDuBig1WlUmLjgZ4FkMyGLoPj4jaZh3N+UMDNphKc6U5Pq5Dnoj1G0
	GOJWvXzMAWLydhd/zFzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v37eJ-00000001VuS-3CNm;
	Mon, 29 Sep 2025 06:46:15 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v37eF-00000001VtY-06sZ
	for linux-phy@lists.infradead.org;
	Mon, 29 Sep 2025 06:46:13 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20250929064603epoutp025424d6c1b368da59b96dacca4cc28b98~pre0LvNUU0751807518epoutp02U
	for <linux-phy@lists.infradead.org>; Mon, 29 Sep 2025 06:46:03 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20250929064603epoutp025424d6c1b368da59b96dacca4cc28b98~pre0LvNUU0751807518epoutp02U
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1759128363;
	bh=tEcpI5UHajZzcOgKwh0ZSahyLNRamKTjcsRj6A5OzRs=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=DT1H1tqNqhbjc9LyomxUMXC/CTMq/GHzDlmjSDD1B4PrE8yIw/d9D9XkFL4ZYe7SO
	 d/GX2BCZGovXORXJnqwgxEkD77cTtZNhSjaltD2dATvxoxqm9qVBWgOs0gjn3v/Zfo
	 BiU3U8VOFmKa8v+unIuPcSaLJrxQARLqhb0hX5HY=
Received: from epsnrtp02.localdomain (unknown [182.195.42.154]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPS id
	20250929064602epcas5p45e71a950ed75ff05f651d9e8ea81577c~prezjA47S0430204302epcas5p4w;
	Mon, 29 Sep 2025 06:46:02 +0000 (GMT)
Received: from epcas5p3.samsung.com (unknown [182.195.38.92]) by
	epsnrtp02.localdomain (Postfix) with ESMTP id 4cZsCY1ggDz2SSKq; Mon, 29 Sep
	2025 06:46:01 +0000 (GMT)
Received: from epsmtip2.samsung.com (unknown [182.195.34.31]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
	20250929064600epcas5p2aad3d7244d83c6751ea7b1dbd0b63dc9~prex_ExEA3230632306epcas5p2G;
	Mon, 29 Sep 2025 06:46:00 +0000 (GMT)
Received: from INBRO002756 (unknown [107.122.3.168]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20250929064554epsmtip2d133b1f85860186fda42b9aae1351b20~presS4JLU0831808318epsmtip29;
	Mon, 29 Sep 2025 06:45:54 +0000 (GMT)
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
In-Reply-To: <20250903073827.3015662-2-pritam.sutar@samsung.com>
Subject: RE: [PATCH v8 1/6] dt-bindings: phy: samsung,usb3-drd-phy: add
 ExynosAutov920 HS phy compatible
Date: Mon, 29 Sep 2025 12:15:52 +0530
Message-ID: <001301dc310c$b7a78550$26f68ff0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQIRMOVGdWg5oRjNsRBgEjzIeIB8IgGabj6EAmTXuDe0H7zKkA==
Content-Language: en-us
X-CMS-MailID: 20250929064600epcas5p2aad3d7244d83c6751ea7b1dbd0b63dc9
X-Msg-Generator: CA
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250903072936epcas5p4a28d0e63c7f0792b516b0cbc68bf3a8e
References: <20250903073827.3015662-1-pritam.sutar@samsung.com>
	<CGME20250903072936epcas5p4a28d0e63c7f0792b516b0cbc68bf3a8e@epcas5p4.samsung.com>
	<20250903073827.3015662-2-pritam.sutar@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250928_234611_713503_380B6402 
X-CRM114-Status: GOOD (  10.29  )
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
> Subject: [PATCH v8 1/6] dt-bindings: phy: samsung,usb3-drd-phy: add
> ExynosAutov920 HS phy compatible
> 
> Document support for the USB20 phy found on the ExynosAutov920 SoC.
> The
> USB20 phy is functionally identical to that on the Exynos850 SoC, so no driver
> changes are needed to support this phy. However, add a dedicated
> compatible string for USB20 phy found in this SoC.
> 
> Signed-off-by: Pritam Manohar Sutar <pritam.sutar@samsung.com>
> ---
Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
