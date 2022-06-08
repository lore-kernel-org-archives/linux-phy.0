Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4D74C43334
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jun 2022 01:44:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gP2Ew93Wk8ezlMLHa/yJaKGfz6Gtb5qN7FE85VTfW+w=; b=TCTlSDWzNSeXk0
	Gj2STSRMksWpaoyScuk2F1s7R1aIrwrMPZnH1UZGwoTUzJm84qCtILdLHmQSqWQILgBWfoDRKKqVZ
	3UBz+lQRKEkW6MBGW+xdtEfuipxY3pxub+kzUJv3vlSWNgqDrNSJCxc+L212Q/mln9dV6evyZEYM5
	sjlFPuCt5iiB0HMi8x3I0RkPykFve2x8LHBn5j43dXWel6kMx5d4QYZRfCujU95gmFdJGPx5T83q1
	m1RspLlw8Mff6/JWsdn1/ZaVOOZngDcWOc4PjoTNxRQ+n3q9qhAFyzJjlcW0LnkGSx53j0r5gbVAp
	LMAn/m27HHbHA6y1VWjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nykjr-00AHEC-4E; Wed, 08 Jun 2022 01:44:03 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nykje-00AHAA-1F
	for linux-phy@lists.infradead.org; Wed, 08 Jun 2022 01:43:52 +0000
Received: from epcas2p2.samsung.com (unknown [182.195.41.54])
	by mailout4.samsung.com (KnoxPortal) with ESMTP id 20220608014344epoutp04dc59abdd186f0b091e7de3acfca1cd73~2gct50VVU0338003380epoutp04K
	for <linux-phy@lists.infradead.org>; Wed,  8 Jun 2022 01:43:44 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20220608014344epoutp04dc59abdd186f0b091e7de3acfca1cd73~2gct50VVU0338003380epoutp04K
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1654652624;
	bh=KqfS/4/IeJ632hAg/V9fsBPAEPGRQopHMhfw27hpgJI=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=rpt1BGGS40YE0Wj64lt8WWv8e/GMQU7qZEDXfM1SlesREL6rdShKj+GAsgahDRIy0
	 pG7+cbGZKD29GllzURwmkys4ecW6GUn9lyrPmVDYhzhqUxsSQROLgCJIPvYXYUTHRk
	 GqxOzxZoJwCk7n6Hvqg12Hgs93MDeaHXerpsG3PU=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
	epcas2p2.samsung.com (KnoxPortal) with ESMTP id
	20220608014343epcas2p2eb6c94e6e0cd2251c3e450aa543bf2aa~2gctV1RUE0725707257epcas2p2A;
	Wed,  8 Jun 2022 01:43:43 +0000 (GMT)
Received: from epsmges2p3.samsung.com (unknown [182.195.36.102]) by
	epsnrtp1.localdomain (Postfix) with ESMTP id 4LHqkk5Dlfz4x9Q3; Wed,  8 Jun
	2022 01:43:42 +0000 (GMT)
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
	epsmges2p3.samsung.com (Symantec Messaging Gateway) with SMTP id
	43.F0.10028.ECEFF926; Wed,  8 Jun 2022 10:43:42 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
	epcas2p1.samsung.com (KnoxPortal) with ESMTPA id
	20220608014341epcas2p1bf184d852c59b35484b3c57189f1eadf~2gcr3jnZZ1607416074epcas2p12;
	Wed,  8 Jun 2022 01:43:41 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
	epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20220608014341epsmtrp243b275605ade7fdc50c7105ac7efea41~2gcr2sFGv1948519485epsmtrp2E;
	Wed,  8 Jun 2022 01:43:41 +0000 (GMT)
X-AuditID: b6c32a47-589ff7000000272c-96-629ffece429f
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
	epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	AD.E3.11276.DCEFF926; Wed,  8 Jun 2022 10:43:41 +0900 (KST)
Received: from KORCO082417 (unknown [10.229.8.121]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20220608014341epsmtip1896b1c38c2d57e0c13addc19484891cc~2gcrpgRQc1248812488epsmtip1Q;
	Wed,  8 Jun 2022 01:43:41 +0000 (GMT)
From: "Chanho Park" <chanho61.park@samsung.com>
To: "'Alim Akhtar'" <alim.akhtar@samsung.com>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<linux-scsi@vger.kernel.org>, <linux-phy@lists.infradead.org>
Cc: <devicetree@vger.kernel.org>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <vkoul@kernel.org>,
	<avri.altman@wdc.com>, <bvanassche@acm.org>, <martin.petersen@oracle.com>,
	<pankaj.dubey@samsung.com>, "'Bharat	Uppal'" <bharat.uppal@samsung.com>
In-Reply-To: <20220603154714.30532-4-alim.akhtar@samsung.com>
Subject: RE: [PATCH v2 3/7] phy: samsung-ufs: add support for FSD ufs phy
 driver
Date: Wed, 8 Jun 2022 10:43:41 +0900
Message-ID: <002d01d87ad9$2ea92ac0$8bfb8040$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: ko
Thread-Index: AQFSBQ9Zoh1+pG8sApsbls4ebot9jgKYKc3AAgKsrFGuLM/TEA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrJJsWRmVeSWpSXmKPExsWy7bCmme65f/OTDGZ95LZ4MG8bm8XLn1fZ
	LK69vMBuMe3DT2aL+UfOsVr0vXjIbLHp8TVWi8u75rBZTFj1jcWi+/oONovlx/8xWSza+oXd
	onXvEXaLnXdOMDvweVy+4u2xaVUnm8eda3vYPDYvqff4+PQWi0ffllWMHp83yXm0H+hmCuCI
	yrbJSE1MSS1SSM1Lzk/JzEu3VfIOjneONzUzMNQ1tLQwV1LIS8xNtVVy8QnQdcvMATpbSaEs
	MacUKBSQWFyspG9nU5RfWpKqkJFfXGKrlFqQklNgXqBXnJhbXJqXrpeXWmJlaGBgZApUmJCd
	0fT9KUvBRZaKK7+OMTUwfmHuYuTkkBAwkXh/5B1rFyMXh5DADkaJ/6vfMUI4nxglNl18ywLh
	fGOUuHi1iR2mpWneTjYQW0hgL6PEp6+8EEUvGCUm7bkBVsQmoC/xsmMb2FwRkLmfV3wCG8Us
	0Mkk0X3kAhNIFaeArcSmvnVgtrBAkMSkQ3/AxrIIqEic27GXBcTmFbCU2HSwix3CFpQ4OfMJ
	WJxZQFti2cLXUF8oSPx8uowVIi4iMbuzDSwuIuAksafvN9gVEgIPOCTuPfnNCtHgInFq92uo
	f4QlXh3fAmVLSXx+t5cNwi6WWDrrExNEcwOjxOVtv6ASxhKznrUDg4kDaJumxPpd+iCmhICy
	xJFbULfxSXQc/ssOEeaV6GgTgmhUlziwfToLhC0r0T3nM+sERqVZSD6bheSzWUi+mYWwawEj
	yypGsdSC4tz01GKjAmN4dCfn525iBKdpLfcdjDPeftA7xMjEwXiIUYKDWUmEVzJ8fpIQb0pi
	ZVVqUX58UWlOavEhRlNgWE9klhJNzgdmirySeEMTSwMTMzNDcyNTA3MlcV6vlA2JQgLpiSWp
	2ampBalFMH1MHJxSDUyM0wLSTZ+ecM2vCLmb4zPRzNfqfdOS7E6l+FAfeevwhJiYkA2sDc+E
	3p41sd8ybXdQbOKS0ttVWUl/Lt7ouaq3UcdaqWT/as+1h8sXrl3w4or59eRLfn8VPoUkGraJ
	rTxyz3Tfh9+aiaLG+g0M/63yeyfOnhzur2usVBomeHNxXeuKP+VKIl1Ctg+qHz5kUNkfbjRf
	bV8y/9e0FbVsuw4/KW0O3P/5d6vChNuTD7z8+X5lfXnjigdcTu94DX/H7J7RGq9cUfVjmvWP
	Pjtjr+pC+5cdb44c+v4w64TQ2ux1/tu/lP2qWVEhLjhb/17D4Tm3eeVW/WrlsI/M5na6NH1K
	a3J00LuAbbm3znu0X1ViKc5INNRiLipOBACrpkQtXAQAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrGIsWRmVeSWpSXmKPExsWy7bCSnO7Zf/OTDPZv0rV4MG8bm8XLn1fZ
	LK69vMBuMe3DT2aL+UfOsVr0vXjIbLHp8TVWi8u75rBZTFj1jcWi+/oONovlx/8xWSza+oXd
	onXvEXaLnXdOMDvweVy+4u2xaVUnm8eda3vYPDYvqff4+PQWi0ffllWMHp83yXm0H+hmCuCI
	4rJJSc3JLEst0rdL4MpY336JseAwS8WWI89YGhifMXcxcnJICJhINM3bydbFyMUhJLCbUWLm
	16VQCVmJZ+92sEPYwhL3W46wQhQ9Y5TYMuUvG0iCTUBf4mXHNrCEiMAeRom2eafYQRxmgclM
	EpMavrJAtOxnlPi9q50FpIVTwFZiU986JhBbWCBAouXwXVYQm0VAReLcjr1gNbwClhKbDnax
	Q9iCEidnPgGLMwtoS/Q+bGWEsZctfA11q4LEz6fLWCHiIhKzO9vA4iICThJ7+n6zTmAUnoVk
	1Cwko2YhGTULSfsCRpZVjJKpBcW56bnFhgWGeanlesWJucWleel6yfm5mxjBUauluYNx+6oP
	eocYmTgYDzFKcDArifBKhs9PEuJNSaysSi3Kjy8qzUktPsQozcGiJM57oetkvJBAemJJanZq
	akFqEUyWiYNTqoFp8ox1QT2ex92EAt2VWs6xcf8489DBtlb4/J7ODdE3jnx4occhtbxq9jUX
	rjk5Oy6eWcv5xylBT82kX9KqqfPP8i27N8lLdbkvXvVCwfGx9MSXhUkvtqVkfc+btP338b21
	P7YKbFhX5vDh8QLtfJdc/iVzBeu3vO/nP19w9krBTd8/DsE7VOe8tfsWWbJxi9DBD1f68yxl
	GXLyFmulPO15O3HNf/8f4awPfae/9yhy+qt6OXL/13vbYr/a/V3EvF38ftzKqXGbJjMq7Hi6
	in+78rabzZzLX96tu3Gmy/rZ+nkudrymGwrvSG7VYf12btssnc3RET4mM1bGf5dwe/KyojHr
	c13pm4aGk5yzaha1n1BiKc5INNRiLipOBAD85gRBSQMAAA==
X-CMS-MailID: 20220608014341epcas2p1bf184d852c59b35484b3c57189f1eadf
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220603154857epcas5p4b4684d4400f4ff66f69ff5e288ef635c
References: <20220603154714.30532-1-alim.akhtar@samsung.com>
	<CGME20220603154857epcas5p4b4684d4400f4ff66f69ff5e288ef635c@epcas5p4.samsung.com>
	<20220603154714.30532-4-alim.akhtar@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_184350_706631_B90694F2 
X-CRM114-Status: UNSURE (   9.52  )
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

> Subject: [PATCH v2 3/7] phy: samsung-ufs: add support for FSD ufs phy
> driver
> 
> Adds support for Tesla Full Self-Driving (FSD) ufs phy driver.
> This SoC has different cdr lock status offset.
> 
> Signed-off-by: Bharat Uppal <bharat.uppal@samsung.com>
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>

Reviewed-by: Chanho Park <chanho61.park@samsung.com>

As you may know, it seems to be rebased if below patchset goes first.
https://lore.kernel.org/linux-phy/20220607072907.127000-1-chanho61.park@samsung.com/T/#t

Best Regards,
Chanho Park


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
