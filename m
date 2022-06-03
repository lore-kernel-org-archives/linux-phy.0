Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAA15C43334
	for <linux-phy@archiver.kernel.org>; Fri,  3 Jun 2022 04:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aZSrbIDeRqsaoUwXMhdcikQgBF7QwrqQp05A+0Gd+Jo=; b=YZs5pxhNwCS1pN
	hk1G+ScBaNQ8sgue9vKBaEbIyI3d6kSJhNZ/cI25bxV5Ul0f+H/Pe4iheA/4L/TvCI9e5YElm3lzU
	Ax593BNz0RcXsFHrDRXQzbhXfb2Vd/6Kzi4fhdykpesH4B33UczFUkvumf4FeW1v3CHLLXA0qV0Mp
	RUiwPB1hAcLkrmCcYrDQeRQFou90EGlAkKEOGvWtoS2Sjm94vrNrfmwTbiq8JfMehT0FRk4ioLKWw
	lcl5x19JiI3mCSAcZ58lfJsyDeZN640QeXzFeyJbAIvrBXkttpuvaCvQ5uJxVWS8SBSxGfIYDsWOT
	SaCnyqQfjUHc1SvV8rWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwzMp-005qWB-2p; Fri, 03 Jun 2022 04:56:59 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwzMm-005qVU-Kr
	for linux-phy@lists.infradead.org; Fri, 03 Jun 2022 04:56:58 +0000
Received: from epcas2p3.samsung.com (unknown [182.195.41.55])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20220603045652epoutp03769150ddf66735ecfad33655b7df90d9~1A26yjJUE0609406094epoutp03h
	for <linux-phy@lists.infradead.org>; Fri,  3 Jun 2022 04:56:52 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20220603045652epoutp03769150ddf66735ecfad33655b7df90d9~1A26yjJUE0609406094epoutp03h
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1654232212;
	bh=gI0c/zqtXnsSQ29fU2W9JiIim1L8t6h8yMCPohvByjA=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=jdDPkcUjSw7LNQeWM7lkTdWM5BS+LCKQywlnYkBZ0ViQgt/apJYHHhum1QxxC0ZVD
	 86IcJtelZLpLz7v0dUvueZUkfoTKuTprJLBgCoPl/JSIVM3cSgRJ7OCEmpxl99kLC7
	 a9O3YneUnOQt5Hp4HLGRrLdlxlMW1KmzFlJT/EWU=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
	epcas2p2.samsung.com (KnoxPortal) with ESMTP id
	20220603045651epcas2p2aac192b847620ef6680f106ebd97f407~1A26iHyRC1408014080epcas2p2d;
	Fri,  3 Jun 2022 04:56:51 +0000 (GMT)
Received: from epsmges2p3.samsung.com (unknown [182.195.36.98]) by
	epsnrtp2.localdomain (Postfix) with ESMTP id 4LDrFv0hRSz4x9Q3; Fri,  3 Jun
	2022 04:56:51 +0000 (GMT)
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
	epsmges2p3.samsung.com (Symantec Messaging Gateway) with SMTP id
	A6.2C.10028.29499926; Fri,  3 Jun 2022 13:56:50 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
	epcas2p1.samsung.com (KnoxPortal) with ESMTPA id
	20220603045650epcas2p102f23b55675882bcfe68d02cfb1585da~1A25SzN-Y2238122381epcas2p1P;
	Fri,  3 Jun 2022 04:56:50 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
	epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
	20220603045650epsmtrp13c217eb835ec093d7e1582ae255855b1~1A25SISTu1760917609epsmtrp1o;
	Fri,  3 Jun 2022 04:56:50 +0000 (GMT)
X-AuditID: b6c32a47-589ff7000000272c-1c-62999492e456
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
	epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	2A.94.11276.29499926; Fri,  3 Jun 2022 13:56:50 +0900 (KST)
Received: from KORCO082417 (unknown [10.229.8.121]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20220603045650epsmtip2d946cf820f38465b2dc915f539947a55~1A25B1eV_0217302173epsmtip2H;
	Fri,  3 Jun 2022 04:56:50 +0000 (GMT)
From: "Chanho Park" <chanho61.park@samsung.com>
To: "'Alim Akhtar'" <alim.akhtar@samsung.com>, "'Kishon Vijay Abraham I'"
	<kishon@ti.com>, "'Vinod Koul'" <vkoul@kernel.org>, "'Krzysztof Kozlowski'"
	<krzysztof.kozlowski@linaro.org>
Cc: <linux-phy@lists.infradead.org>, <linux-arm-kernel@lists.infradead.org>
In-Reply-To: <000901d876e9$150a3e40$3f1ebac0$@samsung.com>
Subject: RE: [PATCH] phy: samsung: exynosautov9-ufs: correct TSRV register
 configurations
Date: Fri, 3 Jun 2022 13:56:50 +0900
Message-ID: <000e01d87706$55f10e80$01d32b80$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQF9VBOKfI+/ng0sIK01vrBmi4hmeQKbb+CEARL/eD+t1fDCIA==
Content-Language: ko
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprAJsWRmVeSWpSXmKPExsWy7bCmme6kKTOTDFY8tbJ4MG8bm8WFpz1s
	Fntfb2W32PT4GqvFhFXfWCx23jnB7MDmsWlVJ5vHnWt72Dw2L6n36NuyitHj+I3tTAGsUdk2
	GamJKalFCql5yfkpmXnptkrewfHO8aZmBoa6hpYW5koKeYm5qbZKLj4Bum6ZOUAXKCmUJeaU
	AoUCEouLlfTtbIryS0tSFTLyi0tslVILUnIKzAv0ihNzi0vz0vXyUkusDA0MjEyBChOyMx4f
	Uyo4yljx9/shxgbG2YxdjJwcEgImEp8+X2bpYuTiEBLYwShxr7WPHSQhJPCJUeL1GRmIxDdG
	iQtdLWwwHV9Wgdggib2MEq/2TWWGcF4wSiw73wpWxSagL/GyYxsriC0isItR4vJHGRCbWcBb
	YtfzT2BxTgEriQWTHwLt5uAQFoiWmD+BByTMIqAicXfDJbAxvAKWEg2X/7FA2IISJ2c+YYEY
	Iy+x/e0cZoiDFCR+Pl0GtcpJYunRZ0wQNSISszvbwG6TEOjlkDjz8R8rRIOLxK9bHSwQtrDE
	q+Nb2CFsKYmX/W1QdrHE0lmfmCCaG4Du3/YL6n1jiVnP2hlBjmYW0JRYv0sfxJQQUJY4cgvq
	Nj6JjsN/2SHCvBIdbUIQjeoSB7ZPh9oqK9E95zPrBEalWUg+m4Xks1lIPpiFsGsBI8sqRrHU
	guLc9NRiowJjeFQn5+duYgQnTS33HYwz3n7QO8TIxMF4iFGCg1lJhLdk19QkId6UxMqq1KL8
	+KLSnNTiQ4ymwLCeyCwlmpwPTNt5JfGGJpYGJmZmhuZGpgbmSuK8XikbEoUE0hNLUrNTUwtS
	i2D6mDg4pRqYdm9P/OV2n7Xida4GW6MMS3z3NWnG/dsuGh8LDdtqcSlgfjt7FRunwj4FpSXC
	jk/U47b9WqL2rnC1+Pfqf5n+NwVbpfzjg+6uEJy+g4Mz6wyvVf/j6ZkbmU2+FbjGXtA4fXN+
	3tVdKu13V/LJvCk5Nev75M27IuvFbHdPjnnM7Wx7Pdz33cxtjlH2K882SGTN8zkwdT6XqdaM
	JzM8N/vukD3FPMF9auK05cliZpvS1YONGMz03/UdWDNTO2q1odu6Je1L8ue1XZ7HExiQ3boq
	pEQ6NeRwfPmi8tuPZcq+5h5uzJd5tOJh9S17Mc4v6fffJTMluRVmBDoeLJ3Q+0Jz17GHptP0
	3t/fLvHJTFJIiaU4I9FQi7moOBEANI26ziMEAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrLLMWRmVeSWpSXmKPExsWy7bCSvO6kKTOTDHr3iVo8mLeNzeLC0x42
	i72vt7JbbHp8jdViwqpvLBY775xgdmDz2LSqk83jzrU9bB6bl9R79G1Zxehx/MZ2pgDWKC6b
	lNSczLLUIn27BK6Mx8eUCo4yVvz9foixgXE2YxcjJ4eEgInEl1UtbF2MXBxCArsZJZauXsAE
	kZCVePZuBzuELSxxv+UIK4gtJPCMUeLJPysQm01AX+JlxzawuIjAHkaJk/ciQWxmAV+JyZ9v
	sUAM3ccosenDObBtnAJWEgsmP2QBsYUFIiUa/raBLWARUJG4u+ESG4jNK2Ap0XD5HwuELShx
	cuYTFoih2hK9D1sZIWx5ie1v5zBDHKcg8fPpMqgjnCSWHn3GBFEjIjG7s415AqPwLCSjZiEZ
	NQvJqFlIWhYwsqxilEwtKM5Nzy02LDDMSy3XK07MLS7NS9dLzs/dxAiOIS3NHYzbV33QO8TI
	xMF4iFGCg1lJhLdk19QkId6UxMqq1KL8+KLSnNTiQ4zSHCxK4rwXuk7GCwmkJ5akZqemFqQW
	wWSZODilGpi8JPaUf05YsHn5s5b2B9KpqQ93bjylwuGXMoGZcecCzwfrPq6wuR6/+8gGGYl1
	0X+s5FUUkp/PPrkwwX9ldt2SiJKAuX/OXPHmy8opSPs0KdDmaP3ExDfTOTbfnXTgzJKU6Hiv
	qOkLUtNsdviwiyy9JjFB+mDXo1syQh77HnWJaT5/bHdgyj2Hdak77lpPYm2SF3ieN5P7xSm2
	4+e/fum8OVPs6tQFimrrX020YOtIWHPq4tO+aUH/N7119Gq4Gvb/5KnWCw/yOf67BShWmV/i
	7XF/axv5uGpKzsUfu3bu/8x78YXEtwMvJYVCvW/v1TDzY9vFG9PhOIN3UcSLb/vl+3irxUPP
	WP058lliRdDLZUosxRmJhlrMRcWJAEfIuS8QAwAA
X-CMS-MailID: 20220603045650epcas2p102f23b55675882bcfe68d02cfb1585da
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220531082658epcas2p1a6f22a304ce8031c39c97daa90372715
References: <CGME20220531082658epcas2p1a6f22a304ce8031c39c97daa90372715@epcas2p1.samsung.com>
	<20220531082657.53158-1-chanho61.park@samsung.com>
	<000901d876e9$150a3e40$3f1ebac0$@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220602_215657_211395_15470D44 
X-CRM114-Status: UNSURE (   8.01  )
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

> >s/PHY_TRSV_REG_CFG/PHY_TRSV_REG_CFG/g
> >
> 
> 
> You mean
> 
> s/PHY_TRSV_REG_CFG/PHY_TRSV_REG_CFG_AUTOV9/g

You're right. This needs to be modified...

Best Regards,
Chanho Park


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
