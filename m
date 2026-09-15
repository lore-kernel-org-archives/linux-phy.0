Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 402EFC88E75
	for <linux-phy@archiver.kernel.org>; Tue, 15 Sep 2026 05:54:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KD7q+dOAjpm3JfxajxS6DFb293KoLGDfVTt4fpA+PCk=; b=pMWUidOkViw9zx
	so7wK80XtBZJkj1vHAu483BptG2XqVcZg8rv4ORKfBcAWhGKt+Mg97xJwN5wp2p2yY0fJG2lHyWYW
	LfgR1gv7xbia/Kata9lcRsBeX6RAIgqPcHFkrA6POC0YW7h+39D4egBwmrBjfhtyy/WcanAllvllZ
	SCpCRsPkzPQvpgUgYMr5eHFEXC2DK3L0b8ulxnpbrsCS78us1RJF0K1SYc2wA2ivyIns6dgv/bRLK
	HsAyHc2C/xjpKRrt35vMVQq78D+j0P/NviC8LdxgnJ3crEVU+w9laFCF/oatIvHEFm5tFHBqXXoER
	3mGw68SFLGKlFC0Ni0BA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6M7W-00000005JeL-385F;
	Tue, 15 Sep 2026 05:54:18 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6M7S-00000005JdH-0nlZ
	for linux-phy@lists.infradead.org;
	Tue, 15 Sep 2026 05:54:17 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20260915055405epoutp025a9d2b5db7eb5304e9e81127788ec9b0~VaMpXNzWR2635726357epoutp02C
	for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 05:54:05 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20260915055405epoutp025a9d2b5db7eb5304e9e81127788ec9b0~VaMpXNzWR2635726357epoutp02C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1789451645;
	bh=6pnARJWU8Hn/XLwXN42+gQ7sps7ZUuWfUhevWLlNNPg=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=F3aR4IMx/qlMGya5Xr0xNdL4TM9u53nAUc3/581RY3B5kcT8G1qHipkiClM6AnGv9
	 qOfCc8mW1NW5RZ0VvZj41ThXyPaB5mMRVLZuFF5dSbe7E++tYWmK34Xt3labPalbKw
	 ZoD3NSLlD4SFVRbR7y+BOBtJmLe6xC3iA+o/TNzw=
Received: from epsnrtp02.localdomain (unknown [182.195.42.154]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPS id
	20260915055404epcas5p27df422b565f6cdd3834007c781f48090~VaMoi1tW-1755617556epcas5p2R;
	Tue, 15 Sep 2026 05:54:04 +0000 (GMT)
Received: from epcas5p4.samsung.com (unknown [182.195.38.94]) by
	epsnrtp02.localdomain (Postfix) with ESMTP id 4hkWRb1vf6z2SSKn; Tue, 15 Sep
	2026 05:54:03 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
	20260915055402epcas5p1d4131ca25d791c6e4ba38ced99f1e29d~VaMnCxL-F1505315053epcas5p1m;
	Tue, 15 Sep 2026 05:54:02 +0000 (GMT)
Received: from INBRO002756 (unknown [107.122.3.168]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20260915055400epsmtip137fa43b73213458bcb593794a8e06add~VaMk7hdm70286302863epsmtip1j;
	Tue, 15 Sep 2026 05:54:00 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Selvarasu Ganesan'" <selvarasu.g@samsung.com>, <vkoul@kernel.org>,
	<neil.armstrong@linaro.org>, <krzk@kernel.org>, <peter.griffin@linaro.org>,
	<pritam.sutar@samsung.com>, <andre.draszik@linaro.org>, <kernel@lvkasz.us>,
	<linux-phy@lists.infradead.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-samsung-soc@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Cc: <jh0801.jung@samsung.com>, <dh10.jung@samsung.com>,
	<akash.m5@samsung.com>, <muhammed.ali@samsung.com>, <thiagu.r@samsung.com>
In-Reply-To: <20260831070309.158069-1-selvarasu.g@samsung.com>
Subject: RE: [PATCH] phy: exynos5-usbdrd: Use dynamic phy_cfg size to
 prevent OOB access
Date: Tue, 15 Sep 2026 11:23:58 +0530
Message-ID: <01e001dd44d6$9c203730$d460a590$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQGKDVFXPtvwg5u1EEO2Agv0acLiRgJK+Mort2M6G0A=
Content-Language: en-us
X-CMS-MailID: 20260915055402epcas5p1d4131ca25d791c6e4ba38ced99f1e29d
X-Msg-Generator: CA
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-543,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20260831070349epcas5p4c62a4e46592dffe95723ddd51a6068e0
References: <CGME20260831070349epcas5p4c62a4e46592dffe95723ddd51a6068e0@epcas5p4.samsung.com>
	<20260831070309.158069-1-selvarasu.g@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260914_225414_878297_C5809D6E 
X-CRM114-Status: GOOD (  14.09  )
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

Hi Selvarasu

> -----Original Message-----
> From: Selvarasu Ganesan <selvarasu.g@samsung.com>
> Sent: Monday, August 31, 2026 12:33 PM
> To: vkoul@kernel.org; neil.armstrong@linaro.org; krzk@kernel.org;
> peter.griffin@linaro.org; alim.akhtar@samsung.com;
> pritam.sutar@samsung.com; andre.draszik@linaro.org; kernel@lvkasz.us;
> linux-phy@lists.infradead.org; linux-arm-kernel@lists.infradead.org; linux-
> samsung-soc@vger.kernel.org; linux-kernel@vger.kernel.org
> Cc: jh0801.jung@samsung.com; dh10.jung@samsung.com;
> akash.m5@samsung.com; muhammed.ali@samsung.com;
> thiagu.r@samsung.com; Selvarasu Ganesan <selvarasu.g@samsung.com>
> Subject: [PATCH] phy: exynos5-usbdrd: Use dynamic phy_cfg size to prevent
> OOB access
> 
> The probe loop currently iterates using EXYNOS5_DRDPHYS_NUM (2),
> creating both UTMI and PIPE3 PHY instances regardless of the SoC capability.
> Several SoCs (Exynos2200, Exynos7870, Exynos850, Exynos990, and
> ExynosAutoV920) provide phy_cfg arrays containing only a single element.
> 
> On these SoCs, when the loop reaches index 1, the driver reads past the end
> of the rodata array, populating the second PHY instance with garbage data.
> Since the configuration structure contains critical function pointers (phy_isol,
> phy_init, set_refclk), any subsequent access to this PHY instance via
> exynos5_usbdrd_phy_xlate could result in a kernel oops.
> 
> Fix this by adding 'n_phy_cfg' to struct exynos5_usbdrd_phy_drvdata to
> store the actual size of the phy_cfg array for each SoC. Update the probe
> loop and the xlate function to bound their access against this value instead of
> the hardcoded EXYNOS5_DRDPHYS_NUM.
> 
> Assisted-by: Claude:claude-sonnet-5
> Signed-off-by: Selvarasu Ganesan <selvarasu.g@samsung.com>
> ---
Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
