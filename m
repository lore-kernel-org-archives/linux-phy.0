Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 422E1C67861
	for <linux-phy@archiver.kernel.org>; Mon,  8 Apr 2024 08:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pOsw0zBPwl6vV4BeakEgmhoAjLNUfbd0HG/kX843D84=; b=Sun+rYsB+6oDZO
	FxXgW9z8AOAikRvkPpN3c9ZVSst/z1No1yPR3yI5Wa9m0vBgDfRZDUaDf5PMGTrb9dLrrroTyyrCU
	h/QtAGImMVKOW8Svg6Yl3/Rs5+7QbWa/KdzzcEqEuBzuQoEOwMxICHc5F9xJB+zH7BHKPb5hEKqTJ
	sb1jMO7pjIjIg6JCDteUh1OlxSno6HnHwm1EomeBRVbTthuBrsHCXKrYH85RvtypgzJWsqrWPOun2
	nnpOSdPLo0JPspMGrN9p7vezROJyoD4HUHug1+BJtM4I+N3YR9JhAiYtdN107NiwrdYihCQxzwKdu
	+ZKut8gd7vF2mwQJwx8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtkOf-0000000Eu7I-2VB1;
	Mon, 08 Apr 2024 08:30:33 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtkOY-0000000Eu5j-3e6R
	for linux-phy@lists.infradead.org;
	Mon, 08 Apr 2024 08:30:31 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20240408083021epoutp02bb9eb6d5976b696bafb085a04f7c209f~EQNBPjH9M2274522745epoutp02I
	for <linux-phy@lists.infradead.org>; Mon,  8 Apr 2024 08:30:21 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20240408083021epoutp02bb9eb6d5976b696bafb085a04f7c209f~EQNBPjH9M2274522745epoutp02I
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1712565021;
	bh=9xA2wuGcrIdnD6QeGCy6pEWH3ESJOZu31jlHG5iQwik=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=Z7kJ1jj9MYf5CiYovRq/Ur5n5kClTRjQmZkb0MozYiehYWGMcoqzWCYNe9w/rTZbV
	 zP75BK8Q2LzWKLbw5EswMttKCEPI/m3PLqpLHIYBv/Gti4IpkaTaI1acON2gdwjolf
	 wXyH40CIJPezyvYNXXsp2ff8wbNrUL3L5zN/ZbO8=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTP id
	20240408083021epcas5p491258648313d8da9b58c4a4934efc60a~EQNAsQgpS0206302063epcas5p4y;
	Mon,  8 Apr 2024 08:30:21 +0000 (GMT)
Received: from epsmgec5p1-new.samsung.com (unknown [182.195.38.178]) by
	epsnrtp1.localdomain (Postfix) with ESMTP id 4VCj2g6XtLz4x9Pr; Mon,  8 Apr
	2024 08:30:19 +0000 (GMT)
Received: from epcas5p2.samsung.com ( [182.195.41.40]) by
	epsmgec5p1-new.samsung.com (Symantec Messaging Gateway) with SMTP id
	5E.EC.19431.B1BA3166; Mon,  8 Apr 2024 17:30:19 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
	20240408083019epcas5p429571d61b25b95490b913fcabc7f59d5~EQM-CUC7b1593915939epcas5p4J;
	Mon,  8 Apr 2024 08:30:19 +0000 (GMT)
Received: from epsmgmc1p1new.samsung.com (unknown [182.195.42.40]) by
	epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
	20240408083019epsmtrp1fa891c230381087b44984bc443f55da4~EQM-AK4XT0109201092epsmtrp1a;
	Mon,  8 Apr 2024 08:30:19 +0000 (GMT)
X-AuditID: b6c32a50-f57ff70000004be7-f2-6613ab1bfa7a
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
	epsmgmc1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	20.74.07541.B1BA3166; Mon,  8 Apr 2024 17:30:19 +0900 (KST)
Received: from INBRO000447 (unknown [107.122.12.5]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20240408083014epsmtip26c7beec99df2675222e2fb04202b7b6e~EQM60mQBJ1598715987epsmtip29;
	Mon,  8 Apr 2024 08:30:14 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Peter Griffin'" <peter.griffin@linaro.org>, <mturquette@baylibre.com>,
	<sboyd@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <vkoul@kernel.org>, <kishon@kernel.org>,
	<avri.altman@wdc.com>, <bvanassche@acm.org>, <s.nawrocki@samsung.com>,
	<cw00.choi@samsung.com>, <jejb@linux.ibm.com>, <martin.petersen@oracle.com>,
	<chanho61.park@samsung.com>, <ebiggers@kernel.org>
Cc: <linux-scsi@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-clk@vger.kernel.org>,
	<linux-samsung-soc@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <tudor.ambarus@linaro.org>,
	<andre.draszik@linaro.org>, <saravanak@google.com>,
	<willmcvicker@google.com>
In-Reply-To: <20240404122559.898930-1-peter.griffin@linaro.org>
Subject: RE: [PATCH 00/17] HSI2, UFS & UFS phy support for Tensor GS101
Date: Mon, 8 Apr 2024 14:00:13 +0530
Message-ID: <04d401da898e$fd57ec10$f807c430$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQG67MGYnqOHzIYqhKHsGv8jtpiocwJaURTOsYpwP3A=
Content-Language: en-us
X-Brightmail-Tracker: H4sIAAAAAAAAA01Ta1BUZRiec9mziwkdFsJvgEncLJEEdpXFbxkuMoCcwgkaHUlnCo/s4TLA
	7s5e0popTVkkQC6TmeKahIW0psBCuHGTuEjcJAOW60ARRGBAIAOSsMRysPj3vO88z/e8z/vN
	y8P4l7iOvHiZmlHK6EQBsQUvr9/t6u502y5G2FIggmWTpTicWOom4OW/lzDYef91+F31QxT2
	zI9z4I2Ghxx4p2oZg/m95Shs1K5icCJ3iICG300cOJsxxIGdFToCZusXcHilowaF6T1GAt5q
	MqPwUUsILL5ixuFqlZEL6/+6wIFpdSsENJtKcDjX/x78YfAnDOrnVpEDTlRnVxg106vlUnkG
	DWXQf0pQg6YqgsrOr0Wo0q/PULNj/TiVWaZHqCeGl6kLteloxAvHE3zjGFrKKF0YWbRcGi+L
	9ROEHY4KihJ7C0XuIgncL3CR0UmMnyD4UIT7wfjEtRUIXN6nEzVrrQhapRJ4+vsq5Ro14xIn
	V6n9BIxCmqjwUnio6CSVRhbrIWPUPiKhcK94jXgiIc6Q/gRTzNicXikIP4vc25qGWPEA6QXu
	nruJpiFbeHyyCgGZqfe5bDGHgCXjCMYWCwhoe1zHeS651v4ZbsF8shoBxZmBaQhvDf+JgGd7
	LG2CdAfGmymERWtP5mKgprh7/SGMHELBgPY8YWFZkQHgk5FMxILtyFCQXV2yboCTO4HpZ/16
	35qUgKKxPILFtqD56ui6MUZuB/emdBg7kAtYGivgWIawJ32A9qtolrINTDQ2rKcB5C9WoG+y
	E2H5weDX5BKcxXZgsqmMy2JHMJGVwrW8A0gK5C87su04MHWraEMaAGq7dLiFgpG7QVGFJ2tl
	Ay4+G0VZpTVITeGz7FfB+enuDSMnkJOevrFBCvReHcCzkR25m3LlbsqVuylA7v9meQiuRxwZ
	hSoplokWK0TuMubUf78dLU8yIOvn4RZhRG4Xr3jUISgPqUMADxPYWx8W28bwraX0Bx8ySnmU
	UpPIqOoQ8dq2czDHl6Lla/clU0eJvCRCL29vby/JPm+RYJv1Y+11KZ+MpdVMAsMoGOVzHcqz
	cjyLRh0xDS+brad29XVUbm8pnBWDmsIHMVXOYb49T6sDM2o+8jff8Ms42le5WPiFwTm09VSw
	acehhPIY2j0v5wT1bdNMe2SQ8I2db/441aHI0updP56r35WyaMVpGvOdfFEQGtk17vB2zNFy
	dX/qK9PSEIf9+XitP/qujjjZtpggdLMVHzlZt6dZ13y9a6htZLbHrNFWu3158FJrOBZwRnV6
	9MHYYLhzc1nweIjIteLzZPu3Gusr+UGtW+8EFmf/Zpy/GxNyXKKz+WM+o2Dv8DtPL+/L6i/l
	Tz+a95GbGr5PzhtwC45sCUIkyweGjzmsXENfm/Rs7z8WWIafWxaX098sLNYP/SPAVXG0yA1T
	quh/AXnKHTOnBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrLIsWRmVeSWpSXmKPExsWy7bCSvK70auE0gwv9vBZbXm1msXj58yqb
	xbQPP5ktLu/Xtliz9xyTxfUvz1kt5h85x2qxds8fZotFN7YxWRxt/c9s8XLWPTaLTY+vsVp8
	7LnHanF51xw2iwmrvrFYzDi/j8mi+/oONovlx/8xWVw85WqxYcY/Fov/e3awWxx+085q0XXo
	L5vFv2sbWSw+3Yqz2HnnBLPFqk//GR2kPS5f8fZ4f6OV3WPBplKPTas62TzuXNvD5jFh0QFG
	j81L6j0+Pr3F4tG3ZRWjx+dNch7tB7qZArijuGxSUnMyy1KL9O0SuDI2dX9mLnjPV/F3mX8D
	43aeLkZODgkBE4nZZyezdDFycQgJ7GaU6Jn9hxUiIS1xfeMEdghbWGLlv+fsEEXPGCWajpxg
	A0mwCehK7FjcxgaSEBFYxyzx/d4zJpAEs8ALJomzl+IgOiYwSsyZ3AI2ilPAXqLxUR8jiC0s
	4C4xYe9GsHUsAioS1y6sAovzClhKrH+6gA3CFpQ4OfMJ0H0cQEP1JNo2MkLMl5fY/nYOM8R1
	ChI/ny5jBSkREbCSaF2YDFEiLvHy6BH2CYzCs5AMmoUwaBaSQbOQdCxgZFnFKJlaUJybnpts
	WGCYl1quV5yYW1yal66XnJ+7iRGcQrQ0djDem/9P7xAjEwfjIUYJDmYlEd5gU8E0Id6UxMqq
	1KL8+KLSnNTiQ4zSHCxK4ryGM2anCAmkJ5akZqemFqQWwWSZODilGpguyf3eHm1yub7kf0Pw
	Sdv6NZ+fzwzZcynF7rxG3tuSu0/nlk8wSTTJlF7wsn1amX4fl87LKY/Z5r1InrJz40v+1y7/
	FiQ3cV5vrbK7laVopBmzPePXa7OT31Za6T4tNLD5GS/iUqebyqr79WGarlVKcVisUdiTCzHX
	hZUS9cLvfvqxJijr8M9np561TJ9dnbu9df72w4nzjLTXMi9bVqO7bUHHjSovTcmDkpPm7BfM
	uW5eaLygSuX4ezmZ+Xv2bbxdNlU3dtuZX03Sqt5sdawSH2JmNhR3bG9yD/zIlTlv4Tab56vz
	94hFXVEvK1B0yd8vXXzQInPO/+qYsyXRaZcFfeKkRDKSEhhNFqbbHldiKc5INNRiLipOBADk
	2iCOkAMAAA==
X-CMS-MailID: 20240408083019epcas5p429571d61b25b95490b913fcabc7f59d5
X-Msg-Generator: CA
CMS-TYPE: 105P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20240404122615epcas5p3812bd7c825bf604fc474bbcdf40d11f6
References: <CGME20240404122615epcas5p3812bd7c825bf604fc474bbcdf40d11f6@epcas5p3.samsung.com>
	<20240404122559.898930-1-peter.griffin@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240408_013028_457102_9AA890B6 
X-CRM114-Status: GOOD (  18.03  )
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

Hi Peter

> -----Original Message-----
> From: Peter Griffin <peter.griffin@linaro.org>
> Sent: Thursday, April 4, 2024 5:56 PM
> To: mturquette@baylibre.com; sboyd@kernel.org; robh@kernel.org;
> krzk+dt@kernel.org; conor+dt@kernel.org; vkoul@kernel.org;
> kishon@kernel.org; alim.akhtar@samsung.com; avri.altman@wdc.com;
> bvanassche@acm.org; s.nawrocki@samsung.com; cw00.choi@samsung.com;
> jejb@linux.ibm.com; martin.petersen@oracle.com;
> chanho61.park@samsung.com; ebiggers@kernel.org
> Cc: linux-scsi@vger.kernel.org; linux-phy@lists.infradead.org;
> devicetree@vger.kernel.org; linux-clk@vger.kernel.org; linux-samsung-
> soc@vger.kernel.org; linux-kernel@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; tudor.ambarus@linaro.org;
> andre.draszik@linaro.org; saravanak@google.com;
> willmcvicker@google.com; Peter Griffin <peter.griffin@linaro.org>
> Subject: [PATCH 00/17] HSI2, UFS & UFS phy support for Tensor GS101
> 
> Hi folks,
> 
> 
> Question
> ========
> 
> Currently the link comes up in Gear 3 due to ufshcd_init_host_params()
> host_params initialisation. If I update that to use UFS_HS_G4 for
negotiation
> then the link come up in Gear 4. I propose (in a future patch) to use VER
> register offset 0x8 to determine whether to set G4 capability or not (if
major
> version is >= 3).
> 
> The bitfield of VER register in gs101 docs is
> 
> RSVD [31:16] Reserved
> MJR [15:8] Major version number
> MNR [7:4] Minor version number
> VS [3:0] Version Suffix
> 
> Can anyone confirm if other Exynos platforms supported by this driver have
> the same register, and if it conforms to the bitfield described above?
> 

VER (offset 0x8) is standard UFS HCI spec, so all vendor need to have this
(unless something really wrong with the HW)
Yes, Exynos and FSD SoC has these bitfield implemented.
 
> 
> 2.44.0.478.gd926399ef9-goog



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
