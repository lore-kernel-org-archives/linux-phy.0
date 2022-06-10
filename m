Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1E3DCCA47E
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jun 2022 10:44:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=8H0oCt4h/BIwxK77cituzuyPHUWS4na1N1M33yfX17Q=; b=xYuUIs1Mz2ODcE
	OiXeHAVMw4jGcycQTyMlA2UOy9H7ObIfPujkaDepzR5D1nkM/QPZ6f0yLcyqfMT8hz72UcinYPQAQ
	996iF8Uw4dye76p1rNDIl6EtvTdZpEud3PITLeskiBC16Rtb9y6Sl6pCjzE77kI6aCNJdS4fz0q+l
	taMrJKAlP2FCxq4gabfhn5LoE/0RsvhbbCnmnrOTMbyfEWAtRfz+9IenqS6epzqu2wWKzeMWmUjKv
	xtHDb9oKYKSJZZjCVZNbpg+A3V+lt9leeD62BFa62l/9sTsnZUmCjOI0xADrViKk7+4fWTvj21JPg
	JGi1Y4vxZvQ3RwkNrOoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzc7b-007eS8-6t; Fri, 10 Jun 2022 10:44:07 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzc7M-007eJQ-QY
	for linux-phy@lists.infradead.org; Fri, 10 Jun 2022 10:43:56 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20220610104343epoutp03ce398da3e9453ae9f1ee27c6d5b7fa0c~3PGxIz7ED0430504305epoutp03Y
	for <linux-phy@lists.infradead.org>; Fri, 10 Jun 2022 10:43:43 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20220610104343epoutp03ce398da3e9453ae9f1ee27c6d5b7fa0c~3PGxIz7ED0430504305epoutp03Y
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1654857823;
	bh=hZydefGMCXXwJQLGPq6/KgCxy9AqlRGtqjW7pmdoKH4=;
	h=From:To:Cc:Subject:Date:References:From;
	b=fTceMiu0FZPTKYSwS0vVOCgH3su889maoKY9ZfomZBveAUeD11OWMbw14N38J9Qps
	 POB7V+HmQ1YXEWv/5fjiiXeMVgNrH+6iFvN0i+3BkY9O+ag/d5SN5ltRcDHTLNAq10
	 eCXXx/Q6wtfTkIfnAf/Fz4fAjkTQ5pLVcmBCwr4g=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTP id
	20220610104343epcas5p2705f3fe5701edcbc6cc4f15d8850efc5~3PGwoxVhb1105611056epcas5p2E;
	Fri, 10 Jun 2022 10:43:43 +0000 (GMT)
Received: from epsmges5p3new.samsung.com (unknown [182.195.38.182]) by
	epsnrtp1.localdomain (Postfix) with ESMTP id 4LKHcr42GHz4x9Pp; Fri, 10 Jun
	2022 10:43:40 +0000 (GMT)
Received: from epcas5p1.samsung.com ( [182.195.41.39]) by
	epsmges5p3new.samsung.com (Symantec Messaging Gateway) with SMTP id
	C2.6A.09762.C5023A26; Fri, 10 Jun 2022 19:43:40 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
	20220610104340epcas5p1d6cee31aba4dc2952ef09003c9e67863~3PGtjz07z0424004240epcas5p1q;
	Fri, 10 Jun 2022 10:43:40 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
	epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
	20220610104339epsmtrp114e7b0ec0528601f0ca731b699451577~3PGtizm7u1337313373epsmtrp1J;
	Fri, 10 Jun 2022 10:43:39 +0000 (GMT)
X-AuditID: b6c32a4b-1fdff70000002622-b2-62a3205c993d
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
	epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	0B.B0.11276.B5023A26; Fri, 10 Jun 2022 19:43:39 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
	[107.108.73.139]) by epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20220610104337epsmtip1b8444ff1d5df918c359b3d34762459f1~3PGrrJWs91361013610epsmtip1F;
	Fri, 10 Jun 2022 10:43:37 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org, avri.altman@wdc.com,
	bvanassche@acm.org, martin.petersen@oracle.com, chanho61.park@samsung.com,
	pankaj.dubey@samsung.com, Alim Akhtar <alim.akhtar@samsung.com>
Subject: [PATCH v4 0/6] Add support for UFS controller found in FSD SoC
Date: Fri, 10 Jun 2022 16:11:13 +0530
Message-Id: <20220610104119.66401-1-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrKKsWRmVeSWpSXmKPExsWy7bCmum6MwuIkg/U/pSwezNvGZvHy51U2
	i2kffjJbXN6vbTH/yDlWi74XD5ktNj2+xmpxedccNosJq76xWHRf38Fmsfz4PyaLRVu/sFu0
	7j3CbrHzzglmBz6Py1e8PTat6mTzuHNtD5vH5iX1Hh+f3mLx6NuyitHj8yY5j/YD3UwBHFHZ
	NhmpiSmpRQqpecn5KZl56bZK3sHxzvGmZgaGuoaWFuZKCnmJuam2Si4+AbpumTlAVysplCXm
	lAKFAhKLi5X07WyK8ktLUhUy8otLbJVSC1JyCkwK9IoTc4tL89L18lJLrAwNDIxMgQoTsjN+
	zt3NXDCXt2LCnX6WBsbJXF2MnBwSAiYSndtXMYPYQgK7GSXmbsvqYuQCsj8B2TdPskM43xgl
	Xi24xwjTse3QVxaIxF5GiQvvd0BVtTBJPJ3wmAWkik1AW+Lu9C1MIAkRgWZGiYMdu8AcZoE+
	Joklt2+zglQJC7hL7Pr8D6yDRUBV4lRbK9AODg5eARuJQ8udINbJS6zecIAZpFdC4Ce7xK6W
	Z8wQCReJiTP/QdnCEq+Ob2GHsKUkXva3sYPMkRDwkFj0RwoinCHxdvl6qBfsJQ5cmcMCUsIs
	oCmxfpc+SJhZgE+i9/cTJohOXomONiGIalWJ5ndXWSBsaYmJ3d2sELaHxM+vyxkhQRcr0fFi
	AdsERplZCEMXMDKuYpRMLSjOTU8tNi0wzksth8dNcn7uJkZw+tPy3sH46MEHvUOMTByMhxgl
	OJiVRHgDbi9KEuJNSaysSi3Kjy8qzUktPsRoCgykicxSosn5wAScVxJvaGJpYGJmZmZiaWxm
	qCTOK/C/MUlIID2xJDU7NbUgtQimj4mDU6qBiXe6gcvfzw+T11yrO3lmq3vSZFWTDbdt3BUj
	Ty8w7b/RbitpUX5J5NoVZoN/kUfCdPNEf2XP2lY+23nizisRbg9izXQFvx/uj3f2K/uidPzy
	8Rmb8+f/25m4+tfqynsGRxVMp8p/uMmV0WK9q3+rtqWwbfDzpJQJvTkZ71IOCHo9a+VzbNws
	H5f6cE1r8/8M318CCiZFqqocOhk3L36+p5u9cM2PzWWth03OPLTYqqZ165G2QOzrpF0nT7zY
	sumXekr+lHm3ZvQe4nq+wSSY873isbdxs2JkUk1ZPUUZAsJOaX4p8r564u+fsntrphgWXWDV
	2+BiuvzS2Y0fez7wi1icecG2aN+Fzyc7b7vzqSixFGckGmoxFxUnAgDkF8zJCAQAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrLLMWRmVeSWpSXmKPExsWy7bCSnG60wuIkg33zzS0ezNvGZvHy51U2
	i2kffjJbXN6vbTH/yDlWi74XD5ktNj2+xmpxedccNosJq76xWHRf38Fmsfz4PyaLRVu/sFu0
	7j3CbrHzzglmBz6Py1e8PTat6mTzuHNtD5vH5iX1Hh+f3mLx6NuyitHj8yY5j/YD3UwBHFFc
	NimpOZllqUX6dglcGT/n7mYumMtbMeFOP0sD42SuLkZODgkBE4lth76ydDFycQgJ7GaUmNd1
	lB0iIS1xfeMEKFtYYuW/52C2kEATk8SHg4EgNpuAtsTd6VuYQGwRgXZGifvb2UAGMQvMYpJ4
	P+kJI0hCWMBdYtfnfywgNouAqsSptlagOAcHr4CNxKHlThDz5SVWbzjAPIGRZwEjwypGydSC
	4tz03GLDAsO81HK94sTc4tK8dL3k/NxNjOAQ1dLcwbh91Qe9Q4xMHIyHGCU4mJVEeANuL0oS
	4k1JrKxKLcqPLyrNSS0+xCjNwaIkznuh62S8kEB6YklqdmpqQWoRTJaJg1Oqgenwqd6DsvfS
	39c2qZa2Lbw6s99ultGPQubldz1qStVOfDgQ5Xy/dPYSuXcxfspCKlUvVjZn7KzSODDD+GGz
	Kv+cB3MybC4VSG78VfFwi9DUkpylkxJ2V825tEuGZ0qSgOftk8kW57cdlt/YspL501fW7VLR
	urMYXG8yKPEcCQtx4vy4NOx2plaO866152UtzXYITwszVfXUe5YYM1Otbwf3hiPHtWx+8xzU
	l9N9sD4y3Xz3hOpAmeeuU9kjN8+9Wl6qFhD89LPnjZn3KxyYz3KX7OuzUpBuq7gbdYevZg3j
	qgNWQuI/p6w5XfTJOio1bwPX4YVnm0Iz5gcVrrzcfvuoYqjinpv9Rer+mb/vFiuxFGckGmox
	FxUnAgAU8W1DwAIAAA==
X-CMS-MailID: 20220610104340epcas5p1d6cee31aba4dc2952ef09003c9e67863
X-Msg-Generator: CA
CMS-TYPE: 105P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220610104340epcas5p1d6cee31aba4dc2952ef09003c9e67863
References: <CGME20220610104340epcas5p1d6cee31aba4dc2952ef09003c9e67863@epcas5p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_034353_407186_755BB55F 
X-CRM114-Status: GOOD (  13.34  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


This series adds support for UFS controller found in FSD SoC.
The HCI is almost same as found on other Exynos SoCs with minor
differences. This also adds the required UFS-PHY driver changes.

Patch 2/6: common change to handle different CDR offsets

*Changes since v3:
- Addressed review comments on patch 6/6 from Chanho

*Changes since v2:
- Addressed review comments from Chanho
- collected reviewed-by, tested-by tags
- rebased on next-20220609

*Changes since v1:
- Addressed review comments from Bart, Krzysztof, Chanho
- collected Ack-by tags
- rebased on next-20220602


Alim Akhtar (6):
  dt-bindings: phy: Add FSD UFS PHY bindings
  phy: samsung-ufs: move cdr offset to drvdata
  phy: samsung-ufs: add support for FSD ufs phy driver
  dt-bindings: ufs: exynos-ufs: add fsd compatible
  ufs: host: ufs-exynos: add mphy apb clock mask
  ufs: host: ufs-exynos: add support for fsd ufs hci

 .../bindings/phy/samsung,ufs-phy.yaml         |   1 +
 .../bindings/ufs/samsung,exynos-ufs.yaml      |   1 +
 drivers/phy/samsung/Makefile                  |   1 +
 drivers/phy/samsung/phy-exynos7-ufs.c         |   3 +
 drivers/phy/samsung/phy-exynosautov9-ufs.c    |   2 +
 drivers/phy/samsung/phy-fsd-ufs.c             |  58 +++++++
 drivers/phy/samsung/phy-samsung-ufs.c         |   7 +-
 drivers/phy/samsung/phy-samsung-ufs.h         |   3 +-
 drivers/ufs/host/ufs-exynos.c                 | 143 +++++++++++++++++-
 drivers/ufs/host/ufs-exynos.h                 |   1 +
 10 files changed, 217 insertions(+), 3 deletions(-)
 create mode 100644 drivers/phy/samsung/phy-fsd-ufs.c


base-commit: ff539ac73ea559a8c146d99ab14bfcaddd30547a
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
