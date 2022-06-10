Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10993C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jun 2022 08:15:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OBXOIOLt/50LuTPQ1cZ6Pzrz0nhcYLs+X/G910z5hFI=; b=skFxuvuMBraL7a
	T1EVWJRWqZDNfzmWfd2ZMQWKo2c7gDfu137c2XXyjwO4qDi6dV3Go0UatQlI2Olj3j37frrbIZPP0
	25woc1uCWAQ7G9BWBfaeZUpj8rDECHj0zMTpn+9Qpma0gIchEvTF8sapR9wInUR61O71VFo9R1FuR
	5nNM6bEtA/B1AQRq0pwclaB4icv9sfqGXp2oTqTr2iTCSVjWlb0Z5dY+qSFBIIAv+QM28C5yvy2H/
	f1TMD4/V8CQlpHjhn2TzvV4VoOdU4FGqVN950E0BCpvSTP3uDQk/aMM2iMxgwfHtlRsHutSn1WHzc
	AYn7VnHjDFyp7lYDQAfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzZnu-006iDc-8M; Fri, 10 Jun 2022 08:15:38 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzZnj-006iAb-Eo
	for linux-phy@lists.infradead.org; Fri, 10 Jun 2022 08:15:37 +0000
Received: from epcas2p3.samsung.com (unknown [182.195.41.55])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20220610081524epoutp033766e213b4dd98bbc4b5f2122eb77207~3NFQ2mRDd0737407374epoutp034
	for <linux-phy@lists.infradead.org>; Fri, 10 Jun 2022 08:15:24 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20220610081524epoutp033766e213b4dd98bbc4b5f2122eb77207~3NFQ2mRDd0737407374epoutp034
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1654848924;
	bh=bMeQj0WB3feMcKPWBDNinj0jpYwg44qY0abSStpfGFw=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=D/KQM85/40GSvpCjNi9id8qfEmR5VrgOmHydQU3VF7LIm1AfsZPHISQtw6EMNBACF
	 NHB5nbhqZucXNGSZXZ6PsgupMGOk7HmG34KadC+qmkPr+sDRBT4jFjEsjV9o5P4Bvx
	 QbZcniBGLkgiOO2wfQvrW8Vg0oSHgoXf8RaS1/qE=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
	epcas2p2.samsung.com (KnoxPortal) with ESMTP id
	20220610081524epcas2p281a106d878387fbc07419ca43ed5aedf~3NFQhaoin1840018400epcas2p2r;
	Fri, 10 Jun 2022 08:15:24 +0000 (GMT)
Received: from epsmges2p4.samsung.com (unknown [182.195.36.102]) by
	epsnrtp1.localdomain (Postfix) with ESMTP id 4LKDKl46jHz4x9Q5; Fri, 10 Jun
	2022 08:15:23 +0000 (GMT)
Received: from epcas2p4.samsung.com ( [182.195.41.56]) by
	epsmges2p4.samsung.com (Symantec Messaging Gateway) with SMTP id
	7E.FE.09694.A9DF2A26; Fri, 10 Jun 2022 17:15:22 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
	epcas2p1.samsung.com (KnoxPortal) with ESMTPA id
	20220610081522epcas2p1bff7fcad5bf93d5b05b8d01dad6793e0~3NFOs4Yvo2888328883epcas2p1b;
	Fri, 10 Jun 2022 08:15:22 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
	epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
	20220610081522epsmtrp10a39c80c05c8b09afb5992538534afd0~3NFOsMhvI2304823048epsmtrp1I;
	Fri, 10 Jun 2022 08:15:22 +0000 (GMT)
X-AuditID: b6c32a48-47fff700000025de-16-62a2fd9a96cd
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
	epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
	DB.02.08924.99DF2A26; Fri, 10 Jun 2022 17:15:21 +0900 (KST)
Received: from KORCO082417 (unknown [10.229.8.121]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20220610081521epsmtip19abbe1a8fc44efa89ea6b41340797757~3NFOjD_x52561225612epsmtip1o;
	Fri, 10 Jun 2022 08:15:21 +0000 (GMT)
From: "Chanho Park" <chanho61.park@samsung.com>
To: "'Alim Akhtar'" <alim.akhtar@samsung.com>,
	<linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>
Cc: <krzysztof.kozlowski+dt@linaro.org>, <vkoul@kernel.org>,
	<pankaj.dubey@samsung.com>
In-Reply-To: <20220610070547.71193-1-alim.akhtar@samsung.com>
Subject: RE: [PATCH -next] phy: samsung-ufs: fix NULL pointer dereference
Date: Fri, 10 Jun 2022 17:15:21 +0900
Message-ID: <000001d87ca2$3ac0f520$b042df60$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQJNUr2mveM3EJGNpu0kIdNV5dOukgIPmyx5rE4hWXA=
Content-Language: ko
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupnk+LIzCtJLcpLzFFi42LZdljTQnfW30VJBof+K1g8mLeNzaLvxUNm
	i8u75rBZTFj1jcVi0dYv7BY775xgdmDz2LSqk83jzrU9bB6bl9R79G1ZxejxeZNcAGtUtk1G
	amJKapFCal5yfkpmXrqtkndwvHO8qZmBoa6hpYW5kkJeYm6qrZKLT4CuW2YO0AFKCmWJOaVA
	oYDE4mIlfTubovzSklSFjPziElul1IKUnALzAr3ixNzi0rx0vbzUEitDAwMjU6DChOyMaTdX
	MBe8Zq84fWs6ewPjIbYuRk4OCQETiX07n7N3MXJxCAnsYJRoX3WXEcL5xCjx/d1RJgjnM6PE
	xwOfWGBaDk9oYoNI7GKUePv/ClT/C0aJz2v7wQazCehLvOzYxgpiiwgUSDQe/cwEYjMLREo0
	Pt8ANolTwFbiRucndhBbWMBTYsW7e0A2BweLgKrEx8OlICavgKXEh7e1IBW8AoISJ2c+YYGY
	oi2xbOFrZoh7FCR+Pl0GtclKYsKeFqgaEYnZnW1QNa0cEp+nC0PYLhJzvu2CigtLvDq+hR3C
	lpJ42d8GZRdLLJ31Cex5CYEGRonL235Bw8tYYtazdkaQ25gFNCXW79IHMSUElCWO3IJayyfR
	cfgvO0SYV6KjTQiiUV3iwPbp0BCUleie85l1AqPSLCSPzULy2CwkD8xC2LWAkWUVo1hqQXFu
	emqxUYEJPKqT83M3MYJTppbHDsbZbz/oHWJk4mA8xCjBwawkwhtwe1GSEG9KYmVValF+fFFp
	TmrxIUZTYEBPZJYSTc4HJu28knhDE0sDEzMzQ3MjUwNzJXFer5QNiUIC6YklqdmpqQWpRTB9
	TBycUg1Mrbu/Fi9mjXCzClRu3xGmLmMhlyaVV5kysSvuB2NwtoezncKXmrsLM04UvVQSC630
	C5neZpfCmigQIbDzzY2o024bpzWu7Xgs/i5kxuxHpd3745ROynqtDs7q2cNh889C7554L/8N
	/7bNO+o05La7dW02OZC7UuNY5fqjK2/XPvnCmT83Pjx5dTZT4XzVwJbAjp9HS5dzGy79dKF0
	r5CY67Y/mRkRDzn7buleDp976YGF4IPNVhwu/+YdK7ZatnJRieziDwdbdG6HPb9jItfMoiZn
	4/9XNeKmd8WvmvRNQZtl8l+Zr+nJeuxhce7b5kbRvxG+pl8WqdeflXZdMSXBLdShZ1VBkXmV
	ayVTqRJLcUaioRZzUXEiANxOSl0iBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrFLMWRmVeSWpSXmKPExsWy7bCSnO6sv4uSDB4KWDyYt43Nou/FQ2aL
	y7vmsFlMWPWNxWLR1i/sFjvvnGB2YPPYtKqTzePOtT1sHpuX1Hv0bVnF6PF5k1wAaxSXTUpq
	TmZZapG+XQJXxoYNpxgLrrFXrP3Xx9LAuJqti5GTQ0LAROLwhCYgm4tDSGAHo8TpMy9YIBKy
	Es/e7WCHsIUl7rccYYUoesYocfXkQrAiNgF9iZcd21hBbBGBIok368+CTWUWiJZY9HsLWI2Q
	QB+jxJOTZSA2p4CtxI3OT2BDhQU8JVa8uwdkc3CwCKhKfDxcCmLyClhKfHhbC1LBKyAocXLm
	ExaIidoST28+hbOXLXzNDHGagsTPp8ugLrCSmLCnBapGRGJ2ZxvzBEbhWUhGzUIyahaSUbOQ
	tCxgZFnFKJlaUJybnltsWGCUl1quV5yYW1yal66XnJ+7iREcPVpaOxj3rPqgd4iRiYPxEKME
	B7OSCG/A7UVJQrwpiZVVqUX58UWlOanFhxilOViUxHkvdJ2MFxJITyxJzU5NLUgtgskycXBK
	NTBNYQzbevVD/Q7h3bb2Ovu165br3w89u5r7JHeUjuQygaAFZx/9nrNU6NoHwaIFDId2dUSc
	cI1J3nUrxi121wUu/pY679TsxTwPd6nH8eY8e7fn6O2L+9YK1D0KDKp6fd9++lG24AUSwi5b
	0zv36J5zXKbUb1Z+ONDkfO3CS2Wr197/MGH1fClnT7uZCtazLvZ/SfBOMp3i8uWdQGn1irNl
	Znr6Z5Zf7nbQEt5nHtR35ly83kV9Lfk3FtYqe44yOrCvVV6348n7p9P0+hQ9lRI5YuVf5Cz5
	9Ttqpqla0vNbcrnc3R/Ftc9OnrQp6czmFL7XqyPf7AmoLRZzuPDvW8S+xmWPpxdId89uXi10
	bnapEktxRqKhFnNRcSIA9f25YA0DAAA=
X-CMS-MailID: 20220610081522epcas2p1bff7fcad5bf93d5b05b8d01dad6793e0
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220610070811epcas5p3c62ef9ad9c82092deac59ff9be896677
References: <CGME20220610070811epcas5p3c62ef9ad9c82092deac59ff9be896677@epcas5p3.samsung.com>
	<20220610070547.71193-1-alim.akhtar@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_011533_714119_38D1C51E 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
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

> Subject: [PATCH -next] phy: samsung-ufs: fix NULL pointer dereference
> 
> commit f86c1d0a58b1f63a ("phy: samsung: ufs: remove drvdata from struct
> samsung_ufs_phy")
> 
> removes _drvdata_ initialization which resulting in NULL pointer
> dereferencing in samsung_ufs_phy_wait_for_lock_acq(). Fix this by
> initializing drvdata.
> 
> The said commit also duplicate "has_symbol_clk" both in drvdata struct and
> in samsung_ufs_phy struct, let's go back and use only one "has_symbol_clk".
> 
> Fixes: f86c1d0a58b1 phy: samsung: ufs: remove drvdata from struct
> samsung_ufs_phy

This might be conflicted when you apply your patch.
https://lore.kernel.org/linux-phy/20220610072924.12362-3-alim.akhtar@samsung.com/T/#u

When I created my patch, it was not existing so my previous patch make sense.
If you get back drvdata for your patch, please drop this "fixes tag + patch" and put this in your patchset.

Best Regards,
Chanho Park


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
