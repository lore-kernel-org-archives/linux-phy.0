Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48DADC433EF
	for <linux-phy@archiver.kernel.org>; Thu, 16 Jun 2022 00:11:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nQQCMymR2Wib0A4wipbzh4fN6Qk9hvCrl4xR0VJmVv8=; b=c/ksrZRjc3IGoq
	ikYe9Fl8npdjQSeovZL2oYxLUOBnHslxLvjW1zdQYcV/bg8El6LejxoUDOagnhmRWrfc+Nekf+0Em
	1cI8nsf5CT74pHRIoIaB4tyOsnLPEPvJleGyjgVqs4uyLjc8igfdblIdOKZ8WMPEYR8pLozU15av6
	r14THvFe/0hRRZN5A1La2XxMluoV1kp9nWfZMzv3OPvVtyL5KpVKwM4kbAoMRyO4kZwU3eCsv9TnK
	f3bCW+MtzoL4PZ7JT3FIxllLrhRuuuM0Wkjn5ikZpAyv2RGLh22RfTGV2uw0ufsPreBhntvbzE2pR
	zfspLBRmJSasuvQG9oCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1d6n-00H46c-JT; Thu, 16 Jun 2022 00:11:37 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1d6T-00H3z7-Nu
	for linux-phy@lists.infradead.org; Thu, 16 Jun 2022 00:11:19 +0000
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20220616001113epoutp0374b7da9a57e3a73104ace3340f7e51a8~48WPCeITN2628626286epoutp03Z
	for <linux-phy@lists.infradead.org>; Thu, 16 Jun 2022 00:11:13 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20220616001113epoutp0374b7da9a57e3a73104ace3340f7e51a8~48WPCeITN2628626286epoutp03Z
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1655338273;
	bh=FRpW+vUCXTheKk/ZNlNQ7QYp5Q/L9ZImcCwz6+mgf9c=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=BgcSERAlVsFdP/oA/UYpzDhTatXBxZwsIUsZgi+pO3+rUlOry/GQbYWxhoN801+jS
	 Pbqt/ZRRYVa2uqGen5yMwDmY6XtH8JaCJbB9AAv+I5QzLkef4tGOpQxx5HozzwRG3U
	 qSURJaBS/ndfr1GDibhl9xEEIf8jQm2ogS6FDep4=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
	epcas2p2.samsung.com (KnoxPortal) with ESMTP id
	20220616001113epcas2p23ec0d1dc8fc90f23da07fc020f134cef~48WOkY-8c1810018100epcas2p2r;
	Thu, 16 Jun 2022 00:11:13 +0000 (GMT)
Received: from epsmges2p2.samsung.com (unknown [182.195.36.88]) by
	epsnrtp3.localdomain (Postfix) with ESMTP id 4LNjJJ5KwSz4x9QJ; Thu, 16 Jun
	2022 00:11:12 +0000 (GMT)
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
	epsmges2p2.samsung.com (Symantec Messaging Gateway) with SMTP id
	62.4A.09764.0257AA26; Thu, 16 Jun 2022 09:11:12 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
	epcas2p1.samsung.com (KnoxPortal) with ESMTPA id
	20220616001111epcas2p1a85f1a05e2c66ddaad263e3d942902ad~48WNRiV9g0276502765epcas2p1C;
	Thu, 16 Jun 2022 00:11:11 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
	epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20220616001111epsmtrp21ac240f7fe2fb78b6d86ac13ddabf437~48WNQyMbq0348103481epsmtrp2f;
	Thu, 16 Jun 2022 00:11:11 +0000 (GMT)
X-AuditID: b6c32a46-f8bff70000002624-9c-62aa7520ec20
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
	epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
	5D.D9.08924.F157AA26; Thu, 16 Jun 2022 09:11:11 +0900 (KST)
Received: from KORCO082417 (unknown [10.229.8.121]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20220616001111epsmtip23e12bb8842a5416842e3ff7cb3c4bb99~48WND8Q6A1512315123epsmtip2a;
	Thu, 16 Jun 2022 00:11:11 +0000 (GMT)
From: "Chanho Park" <chanho61.park@samsung.com>
To: "'Alim Akhtar'" <alim.akhtar@samsung.com>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<linux-scsi@vger.kernel.org>, <linux-phy@lists.infradead.org>
Cc: <beanhuo@micron.com>, <krzysztof.kozlowski+dt@linaro.org>,
	<avri.altman@wdc.com>, <bvanassche@acm.org>, <martin.petersen@oracle.com>,
	<linux-samsung-soc@vger.kernel.org>
In-Reply-To: <20220615121204.16642-3-alim.akhtar@samsung.com>
Subject: RE: [PATCH 3/3] include: ufs: re-arrange addresses in increasing
 order
Date: Thu, 16 Jun 2022 09:11:11 +0900
Message-ID: <000a01d88115$95f509f0$c1df1dd0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQHvmU5DcyiwlSK20wvy0jCKBqg0HwKsErLwAt1YyOWs9qp4EA==
Content-Language: ko
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrBJsWRmVeSWpSXmKPExsWy7bCmma5C6aokg57JUhYP5m1js3j58yqb
	xcGHnSwW0z78ZLboe/GQ2WLT42usFpd3zWGzmLDqG4vFjPP7mCy6r+9gs1h+/B+TA7fH5Sve
	Hneu7WHz2Lyk3uP7+g42j49Pb7F49G1ZxejxeZOcR/uBbqYAjqhsm4zUxJTUIoXUvOT8lMy8
	dFsl7+B453hTMwNDXUNLC3MlhbzE3FRbJRefAF23zBygO5UUyhJzSoFCAYnFxUr6djZF+aUl
	qQoZ+cUltkqpBSk5BeYFesWJucWleel6eaklVoYGBkamQIUJ2Rk91zcwF6zkrJj++jRTA+NT
	9i5GTg4JAROJzTNfMncxcnEICexglJjT3swCkhAS+MQocXmzPUTiM6PEgmfXWWA6ruw5xAqR
	2MUo8Wj1N3YI5wWjRNvd6WBVbAL6Ei87toFViYDM/bziEwuIwyywkVGit3ErkMPBwSlgK/F3
	NjuIKSwQKLFxVhJIL4uAqsSj29/YQGxeAUuJf9eWMkPYghInZz4Bm88sIC+x/e0cZoiLFCR+
	Pl3GCmKLCDhJ7N/7kA2iRkRidmcb2G8SAmc4JNZs2Az1gotE95upUM3CEq+Ob4EGhpTE53d7
	2SDsYomlsz4xQTQ3AMNi2y+ohLHErGftjCBHMwtoSqzfpQ9iSggoSxy5BXUbn0TH4b/sEGFe
	iY42IYhGdYkD26dDXSAr0T3nM+sERqVZSD6bheSzWUg+mIWwawEjyypGsdSC4tz01GKjAiN4
	ZCfn525iBCdhLbcdjFPeftA7xMjEwXiIUYKDWUmE1yx4ZZIQb0piZVVqUX58UWlOavEhRlNg
	WE9klhJNzgfmgbySeEMTSwMTMzNDcyNTA3MlcV6vlA2JQgLpiSWp2ampBalFMH1MHJxSDUxX
	nFZO4D1ZEs+d9WqryqQPnlnsO3I9exbbytzRvqqppX5AsGQCy/df+iU31LVmyXHUuWXzrLUI
	EdRy16/9rStt7X2bY3t+bQrHTM2a8HcPlO/Ed9/Ztm73eg8Vcctm9a1q08S9jPjyHSezMVZO
	av5ceG1urJ6Eggt3wLzvc7lNTifYbK+Ne7Y38dpXsd3Lq5Z/W8v5Kfaa/Hb3RwKf3c7/Peuk
	Y7Zl3+yVDFdq3MI/lHxp6Jp/9rKUmuzM/1cZrbY+/H1CT4zXTG3yFKMb6XflL05v3Sv2dM3a
	gNdp2/z3FmU/U0hWab5sOuPCnrwXnL9iAguSpn9Z6en2p9rdlU17+53EvM97pjcLKdhPO6fE
	UpyRaKjFXFScCACv1YBrSwQAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrKIsWRmVeSWpSXmKPExsWy7bCSvK586aokg3ezjSwezNvGZvHy51U2
	i4MPO1kspn34yWzR9+Ihs8Wmx9dYLS7vmsNmMWHVNxaLGef3MVl0X9/BZrH8+D8mB26Py1e8
	Pe5c28PmsXlJvcf39R1sHh+f3mLx6NuyitHj8yY5j/YD3UwBHFFcNimpOZllqUX6dglcGT3X
	NzAXrOSsmP76NFMD41P2LkZODgkBE4krew6xdjFycQgJ7GCUWP50ORtEQlbi2bsdUEXCEvdb
	jkAVPWOU2D3rHSNIgk1AX+JlxzawhIjAHkaJtnmn2EEcZoHtjBIbF19ggWjZzyjxbPZ2IIeD
	g1PAVuLvbHYQU1jAX2LtWh2QQSwCqhKPbn8D28wrYCnx79pSZghbUOLkzCcsIDazgLbE05tP
	oWx5ie1v5zBDXKcg8fPpMlYQW0TASWL/3odsEDUiErM725gnMArPQjJqFpJRs5CMmoWkZQEj
	yypGydSC4tz03GLDAqO81HK94sTc4tK8dL3k/NxNjOCY1NLawbhn1Qe9Q4xMHIyHGCU4mJVE
	eM2CVyYJ8aYkVlalFuXHF5XmpBYfYpTmYFES573QdTJeSCA9sSQ1OzW1ILUIJsvEwSnVwBQz
	f262tMz7B8/nBc94V8Sgu9Do3ivbSO/XW/W+HBNlj+hg37DTzOPzNZbiktCSh8Lhkov47W44
	bdWZ7+daMc86Ktn+uDzHIblDzhuW8Eg1rTvtua634VmpschUzQNfXx9/li3UrPJ3leED8X9/
	EgR3/mWo3LnxaojWce/Pr95mR+3Lv2P/+ulWm32RCu4Ce60u7r3nGlgneVE/7rBmZcs1tXaZ
	r1Grlsz6HXtU+bhWtepxw2Lj/4KvOxXm6QjzJiz/L3HwrXN0okdxxrXkT0dV/0o6ha3ab7V/
	9S3uhVlaKpOrdt5rEfnFMm+ueUR1SduhnYVZKh9Wfj40b+FlO4mXcitedE65zMN47N457TdK
	LMUZiYZazEXFiQAVrgbjOAMAAA==
X-CMS-MailID: 20220616001111epcas2p1a85f1a05e2c66ddaad263e3d942902ad
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220615121515epcas5p29fd5c0b2e215047926cb92507a9919c9
References: <20220615121204.16642-1-alim.akhtar@samsung.com>
	<CGME20220615121515epcas5p29fd5c0b2e215047926cb92507a9919c9@epcas5p2.samsung.com>
	<20220615121204.16642-3-alim.akhtar@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220615_171118_335180_06595797 
X-CRM114-Status: GOOD (  13.21  )
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

> Subject: [PATCH 3/3] include: ufs: re-arrange addresses in increasing
> order
> 
> Rearrange all the unipro and mphy addresses in their increasing order.
> 
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
> ---
>  include/ufs/unipro.h | 102 +++++++++++++++++++++----------------------
>  1 file changed, 51 insertions(+), 51 deletions(-)
> 
> diff --git a/include/ufs/unipro.h b/include/ufs/unipro.h index
> ade92e8d3676..4cbfe9272787 100644
> --- a/include/ufs/unipro.h
> +++ b/include/ufs/unipro.h
> @@ -38,6 +38,18 @@
>  /*
>   * M-RX Configuration Attributes
>   */
> +#define RX_HS_G1_SYNC_LENGTH_CAP		0x008B
> +#define RX_HS_G1_PREP_LENGTH_CAP		0x008C
> +#define RX_MIN_ACTIVATETIME_CAPABILITY		0x008F
> +#define RX_HIBERN8TIME_CAPABILITY		0x0092
> +#define RX_HS_G2_SYNC_LENGTH_CAP		0x0094
> +#define RX_HS_G3_SYNC_LENGTH_CAP		0x0095
> +#define RX_HS_G2_PREP_LENGTH_CAP		0x0096
> +#define RX_HS_G3_PREP_LENGTH_CAP		0x0097
> +#define RX_ADV_GRANULARITY_CAP			0x0098
> +#define RX_HIBERN8TIME_CAP			0x0092
This should be removed.

Otherwise, looks good to me.

Reviewed-by: Chanho Park <chanho61.park@samsung.com>

Best Regards,
Chanho Park


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
