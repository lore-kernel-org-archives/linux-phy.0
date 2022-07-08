Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 248FCC43334
	for <linux-phy@archiver.kernel.org>; Fri,  8 Jul 2022 00:29:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lQEyDnl2fJtU75guAS43yYQynMd7AgBPuZS0+qQ459c=; b=3FGFcoYLBhZH3n
	q80NH6T1RV9DaDFJuyRk8nmAr84O19k5wM6E83uWLqVhOSs6b6Ib1pbqvdNcTECRTXvt36+OP37sd
	Sk+1wZWjNpA8UoSZuBgX7iGzNNUqbKDn+h8YnDRkQxX2bbGTfQWb6QAUuO3+uBFepcjdfYoCjm6Yf
	LES8H3XXrZW98Grp8Mg7+BCNc3CsQ5FTK7G6Va5Gx1XiDpcrYYxTMAz9+Hzi94u6ZWzB+/zTlS8nI
	I0aMaIWxqxXeVEisulw2S9G0b3o8BewwETT+wy+zDXYHvm8dGZgqAlUpU5mnDE2bNSVXBsWAxoh/b
	8OP/Ihx2PF7jMAYBJSgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9bsC-000mrA-Di; Fri, 08 Jul 2022 00:29:32 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9brz-000mpo-Gr
	for linux-phy@lists.infradead.org; Fri, 08 Jul 2022 00:29:22 +0000
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20220708002910epoutp024acc64f7e428dada1dd6b2c474337447~-syLq5jE82485424854epoutp02b
	for <linux-phy@lists.infradead.org>; Fri,  8 Jul 2022 00:29:10 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20220708002910epoutp024acc64f7e428dada1dd6b2c474337447~-syLq5jE82485424854epoutp02b
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1657240150;
	bh=bNrCIqf1WnbCJ++WCmdruzjfLqSBRGS4uNJtFsUwZxs=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=ENlTVv5lgfhATBrDECmpQv1I3QtYprfg2g5PcBKM3aaxUnfpRrSWIvuHU+bcyalFU
	 XKhkZGaV5o3iKQz2yzuMJrdHGidBtw1MuwDIpSfUVswmz4AFtChZXST/y1h9LR3B8m
	 K+zxwatPfIIICq6wP5OeQHZM5SmpCxcBokGUhV48=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
	epcas2p1.samsung.com (KnoxPortal) with ESMTP id
	20220708002910epcas2p1c86656d472e5335c29f0f308ce9abefd~-syLRbTwQ2120621206epcas2p1e;
	Fri,  8 Jul 2022 00:29:10 +0000 (GMT)
Received: from epsmges2p3.samsung.com (unknown [182.195.36.97]) by
	epsnrtp2.localdomain (Postfix) with ESMTP id 4LfDfs53KPz4x9Q9; Fri,  8 Jul
	2022 00:29:09 +0000 (GMT)
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
	epsmges2p3.samsung.com (Symantec Messaging Gateway) with SMTP id
	41.64.09642.55A77C26; Fri,  8 Jul 2022 09:29:09 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
	epcas2p3.samsung.com (KnoxPortal) with ESMTPA id
	20220708002909epcas2p34aa1292b3627baed9a85fb6bee26a686~-syKjwFPV2578125781epcas2p3m;
	Fri,  8 Jul 2022 00:29:09 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
	epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20220708002909epsmtrp2d7ff338dcf7f7272a6e4bdfecfc8987b~-syKioeB62212722127epsmtrp2E;
	Fri,  8 Jul 2022 00:29:09 +0000 (GMT)
X-AuditID: b6c32a47-5e1ff700000025aa-92-62c77a55c009
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
	epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
	59.87.08802.55A77C26; Fri,  8 Jul 2022 09:29:09 +0900 (KST)
Received: from KORCO082417 (unknown [10.229.8.121]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20220708002909epsmtip1d014eade0641e9e084e27447ecc6d3ae~-syKWKBqA1429814298epsmtip1y;
	Fri,  8 Jul 2022 00:29:09 +0000 (GMT)
From: "Chanho Park" <chanho61.park@samsung.com>
To: "'Martin K. Petersen'" <martin.petersen@oracle.com>
Cc: "'Kishon Vijay Abraham I'" <kishon@ti.com>, "'Vinod Koul'"
	<vkoul@kernel.org>, "'Krzysztof Kozlowski'"
	<krzysztof.kozlowski@linaro.org>, "'James E . J . Bottomley'"
	<jejb@linux.ibm.com>, "'Alim Akhtar'" <alim.akhtar@samsung.com>, "'Bart	Van
 Assche'" <bvanassche@acm.org>, <linux-phy@lists.infradead.org>,
	<linux-scsi@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-samsung-soc@vger.kernel.org>
In-Reply-To: <yq17d4o624t.fsf@ca-mkp.ca.oracle.com>
Subject: RE: [PATCH v2 0/3] change exynos ufs phy control
Date: Fri, 8 Jul 2022 09:29:08 +0900
Message-ID: <000a01d89261$bd2c4df0$3784e9d0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: ko
Thread-Index: AQJzILGI1MJ4mVKNG27n9ebje/AInwNTesy8AnBoo8KsEGIUIA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrPJsWRmVeSWpSXmKPExsWy7bCmmW5o1fEkgzNH1S0ezNvGZjHtw09m
	i0U3tjFZXHjaw2ax9/VWdotNj6+xWkxY9Y3FYsb5fUwW3dd3sFksP/6PyWLnnRPMDtwel694
	e2xa1cnmcefaHjaPCYsOMHpsXlLv8fHpLRaPvi2rGD2O39jO5PF5k1wAZ1S2TUZqYkpqkUJq
	XnJ+SmZeuq2Sd3C8c7ypmYGhrqGlhbmSQl5ibqqtkotPgK5bZg7QsUoKZYk5pUChgMTiYiV9
	O5ui/NKSVIWM/OISW6XUgpScAvMCveLE3OLSvHS9vNQSK0MDAyNToMKE7IwdexeyFVxiqVhz
	cRlrA+Ml5i5GTg4JAROJA+9vsHYxcnEICexglLj48jU7hPOJUeLl55ksEM5nRon+aQfYYFo2
	tr9lhEjsYpT4cWcVVP8LRomHKyeCVbEJ6Eu87NjGCmKLCJhLTJxwFGwUs8AqZoneH2uYQBKc
	AsYSn9esYAexhQUsJc49+gRmswioSHQvfgVm8wLFv846wgxhC0qcnPmEBcRmFpCX2P52DtQX
	ChI/ny5jhYiLSMzubGOGWOwk8eTqR2aQxRICRzgkDu+5B/WDi8TttfegmoUlXh3fwg5hS0l8
	frcXqqZYYumsT0wQzQ2MEpe3/YJKGEvMetYODAAOoG2aEut36YOYEgLKEkduQd3GJ9Fx+C87
	RJhXoqNNCKJRXeLA9uksELasRPecz6wTGJVmIflsFpLPZiH5ZhbCrgWMLKsYxVILinPTU4uN
	Cozh0Z2cn7uJEZyStdx3MM54+0HvECMTB+MhRgkOZiUR3njl40lCvCmJlVWpRfnxRaU5qcWH
	GE2BYT2RWUo0OR+YFfJK4g1NLA1MzMwMzY1MDcyVxHm9UjYkCgmkJ5akZqemFqQWwfQxcXBK
	NTAVJlw+9+lj6/PIOf5fWd9MqD7P+fFE2a+jezvNkiPPJ7XaO1e+bXfnWPj57apfOz6yfj/6
	NZTr7aQfiicvhZ320X75aNmLG11btWbLnV6UN4sx7vKTWbL/JWrF5xd/sDz7xKCyZcGVhrZo
	/q89k2KFPmpv5T/8qvb+3gYbsTv2H5V22QV8twlqLb/AnstWffBX1M7d4dLxBe0cUgExX9JO
	XtN0XM27Z1KQYh7TxD6/mtIfXzeLr+Xd/zxlreVi1dcNH69vTW0Unlls8kfQO4D/2KtZbFV/
	GBX7d764kSz1eBaLzSeekPm/VwgdK3j5+GWYaO/a7bGPD/MbFATlWuwW7FtkbW176vnEL3IX
	Wrh4lFiKMxINtZiLihMBzOLoUVIEAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrBIsWRmVeSWpSXmKPExsWy7bCSnG5o1fEkgxsLOCwezNvGZjHtw09m
	i0U3tjFZXHjaw2ax9/VWdotNj6+xWkxY9Y3FYsb5fUwW3dd3sFksP/6PyWLnnRPMDtwel694
	e2xa1cnmcefaHjaPCYsOMHpsXlLv8fHpLRaPvi2rGD2O39jO5PF5k1wAZxSXTUpqTmZZapG+
	XQJXxo69C9kKLrFUrLm4jLWB8RJzFyMnh4SAicTG9reMXYxcHEICOxglHp5bywaRkJV49m4H
	O4QtLHG/5QgrRNEzRombM5tZQBJsAvoSLzu2sYLYIgLmEhMnHAWLMwtsYJZYvKsYbur6x2fB
	EpwCxhKf16wAmyosYClx7tEnMJtFQEWie/ErMJsXKP511hFmCFtQ4uTMJ0C9HEBD9STaNjJC
	zJeX2P52DtQHChI/ny5jhYiLSMzubGOGuMdJ4snVj8wTGIVnIZk0C2HSLCSTZiHpXsDIsopR
	MrWgODc9t9iwwCgvtVyvODG3uDQvXS85P3cTIzgytbR2MO5Z9UHvECMTB+MhRgkOZiUR3njl
	40lCvCmJlVWpRfnxRaU5qcWHGKU5WJTEeS90nYwXEkhPLEnNTk0tSC2CyTJxcEo1MC07eCfw
	v4xZbcQeiYXZrAand2jZ74/fILBk0j/F4G97hQUKM1dsFxcsma5wYPLkJd0rw6/IPU+YaMXl
	7XB+/5cmHm+G2+ZrVzEc036jobtNzeNFrsD995zlRuty55V5dEvztncsYQwsZ9qnbjJTVG3a
	3eMy77+bdW+OiNw9Z4XF1c17rTdXSuQfXtoZ3zBtifTUBYfvHYpdufbXIl33n8WHZkX4Sq4O
	3yOTLXW5K0HTvP2YVEHbk4j1vn9yunw4ftQGRl2/EqMwa9HbZ1NOup0KLWowcq/fXNgppGKg
	cDZc/GrxqTUKcw3ulBm7P/qfkWxXLPJKY7esbrOZqfeSu65Lz/alnvx1Y56Uw/7OR0osxRmJ
	hlrMRcWJAKbhYeE7AwAA
X-CMS-MailID: 20220708002909epcas2p34aa1292b3627baed9a85fb6bee26a686
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220706020540epcas2p37a8b697af2c6786db9e4ed67cf20a40f
References: <CGME20220706020540epcas2p37a8b697af2c6786db9e4ed67cf20a40f@epcas2p3.samsung.com>
	<20220706020255.151177-1-chanho61.park@samsung.com>
	<yq17d4o624t.fsf@ca-mkp.ca.oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_172919_924793_1FF64A24 
X-CRM114-Status: GOOD (  13.83  )
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

> > The first patch is for changing phy clocks manipulation from
> > controlling each symbol/ref clocks to clk_bulk APIs. The second patch
> > is for making power on/off sequences between pmu isolation and clk
> > control.  Finally, the third patch changes the phy on/off and init
> > sequences from ufs-exynos host driver.
> 
> Were you intending this series to go through SCSI or the phy tree?

I thinks the first two patches are going to phy-tree and you'll need to pick
the last patch.

Vinod,
Could you pick the first two patches in your tree?

Best Regards,
Chanho Park


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
