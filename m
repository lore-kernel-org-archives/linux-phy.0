Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E228CC71157
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jun 2025 01:25:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eMUZYXeB9QjHNA4XnTcxAshon+jfILrA6/2XthBUfvg=; b=FqdL7SzU+Jjsyl
	6Bf5B7rq6DakO6lq0ReVDmrRz3LJzIQ2VVJ1dEwi/lwqUgelmNDeXKS7kt9MNoUPAYurfDbyXe8c2
	qnc2gcMZ5MkIhuPK/8NFFiZItaSSWdtcG8d4fO4ff2KNaKcG6Jnf7DXYELA3IzmFSWZQ0l/Gp2pQa
	QbG5BLELK9xxip3ndfCCzMLjVmX8KdgdGj4MDD8xNKaW+uFkuilnYLF3ZWfMVe3vgSCnEZHZNuZ2M
	bUkXWkN1tcBB9DWMjytUKDRCJASFOKQ9zd1LKiCBEALkv6QXEMLH1k5hEHcpm0gbnIRwSDn1QQirB
	+fHuL993QYZ547ndK96Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRhYh-00000008kX9-2j7b;
	Wed, 18 Jun 2025 01:25:47 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRhR6-00000008jjJ-11fN
	for linux-phy@lists.infradead.org;
	Wed, 18 Jun 2025 01:17:57 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20250618011747epoutp01dd4b97037b98047271efa91429d6cef4~J-jzopBpR0156801568epoutp01k
	for <linux-phy@lists.infradead.org>; Wed, 18 Jun 2025 01:17:47 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20250618011747epoutp01dd4b97037b98047271efa91429d6cef4~J-jzopBpR0156801568epoutp01k
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1750209467;
	bh=B7lcd7QwCqVVz+1MsL2E136+jJ3dujGQV0XbaXLkoYM=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=CgCyrWBNFTIzy7mBstR4eidWO4lD/HELni9e1+3wI8Co/mJVl+RwYNxilO0vAqIwe
	 oszi0AG66KO03lVfrzpW9mtuEYdtmBVzGsRwvf+D7Oc4c/2hKO9ZOwSIxpU5iQojSz
	 7VVshvNwhUxsXLzaHtuY0T4s6byBpmpNDroFkufI=
Received: from epsnrtp03.localdomain (unknown [182.195.42.155]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPS id
	20250618011746epcas5p393312e74614088b0f2bbabd36423233a~J-jyzlkZI1283912839epcas5p36;
	Wed, 18 Jun 2025 01:17:46 +0000 (GMT)
Received: from epcas5p2.samsung.com (unknown [182.195.38.177]) by
	epsnrtp03.localdomain (Postfix) with ESMTP id 4bMQpJ54Cbz3hhTD; Wed, 18 Jun
	2025 01:17:44 +0000 (GMT)
Received: from epsmtip2.samsung.com (unknown [182.195.34.31]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
	20250617174937epcas5p202e625e46a92fba4f4ab08fdbf1063ae~J5cgNQ94f0706807068epcas5p2i;
	Tue, 17 Jun 2025 17:49:37 +0000 (GMT)
Received: from INBRO001840 (unknown [107.122.3.105]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20250617174934epsmtip2b285fba314cc0e9470a26d9b747b9cb4~J5cdcycjC0696206962epsmtip2H;
	Tue, 17 Jun 2025 17:49:34 +0000 (GMT)
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
In-Reply-To: <20250616-remarkable-zealous-orangutan-7ace78@kuoka>
Subject: RE: [PATCH v3 3/9] arm64: dts: exynos: ExynosAutov920: add USB and
 USB-phy nodes
Date: Tue, 17 Jun 2025 23:19:33 +0530
Message-ID: <000301dbdfb0$3168ee00$943aca00$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQNTkACKxnsdZBPuyPiYuNftoBZF1gGoxAPYAeRpXwgBWhb/9LDxAqUA
Content-Language: en-in
X-CMS-MailID: 20250617174937epcas5p202e625e46a92fba4f4ab08fdbf1063ae
X-Msg-Generator: CA
X-Sendblock-Type: REQ_APPROVE
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250613055047epcas5p220b1cd1e9b2819997a3d4747c395d13d
References: <20250613055613.866909-1-pritam.sutar@samsung.com>
	<CGME20250613055047epcas5p220b1cd1e9b2819997a3d4747c395d13d@epcas5p2.samsung.com>
	<20250613055613.866909-4-pritam.sutar@samsung.com>
	<20250616-remarkable-zealous-orangutan-7ace78@kuoka>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_181756_585647_D9679819 
X-CRM114-Status: GOOD (  18.54  )
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
> Sent: 16 June 2025 01:43 PM
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
> Subject: Re: [PATCH v3 3/9] arm64: dts: exynos: ExynosAutov920: add USB
> and USB-phy nodes
> 
> On Fri, Jun 13, 2025 at 11:26:07AM GMT, Pritam Manohar Sutar wrote:
> > Add USB controller and USB PHY controller nodes for this SoC.
> >
> > The USB controller has following features:
> > * Dual Role Device (DRD) controller
> > * DWC3 compatible
> > * Supports USB 3.0 host and USB 3.0 device interfaces but phy
> >   controller capability is limited to USB 2.0.
> > * Supports  full-speed (12 Mbps) and high-speed (480 Mbps) modes with
> >   USB device 2.0 interface
> > * Supports on-chip USB PHY transceiver
> > * Supports up to 16 bi-directional endpoints (that includes control
> >   endpoint 0)
> > * Complies with xHCI 1.1 specification
> >
> > Signed-off-by: Pritam Manohar Sutar <pritam.sutar@samsung.com>
> > ---
> >  .../boot/dts/exynos/exynosautov920-sadk.dts   |  37 ++++++
> >  .../arm64/boot/dts/exynos/exynosautov920.dtsi | 108
> > ++++++++++++++++++
> >  2 files changed, 145 insertions(+)
> 
> DTS cannot be a dependency for driver changes. Organize your patchset
> correctly or fix the dependency.
> 

ExynosAutov920 has three types of the phy controllers (please check block diagram mentioned in cover-letter https://lore.kernel.org/linux-phy/20250613055613.866909-1-pritam.sutar@samsung.com/)
1. HS phy (synopsys phy version v303), similar as existing exynos850.
2. SS phy in combo that that suppors only SS+, SS
3. HS phy (synopsys phy version v400) in 'Add-on' HS phy in combo phy (with 2nd phy). Different from 1st phy in case of  reg offsets and bits.

This implementation follows below sequence to post patches for above phys
1. schema 
2. driver changes
3. DTS changes 

Please elaborate your comment. Do you want these DTS related patches in separate patch-set series (not with this patch-set)?

> Best regards,
> Krzysztof


Thank you.

Regards,
Pritam


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
