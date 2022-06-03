Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C32DACCA47E
	for <linux-phy@archiver.kernel.org>; Fri,  3 Jun 2022 15:49:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=0viufcSRJRgo7V1TT8WO810uSmO5TQVFPmfdrck0wws=; b=v2AYbKDH/XLsMg
	pJngQl0XSseeXjBvmd87h1ZUcOPQt3HaCBq19UQfTuWLZ+CBvNjZm7flEer/Tp/KZPpTisGecsDjx
	Dvv7UOeXeyvrFaj1QHyNvwLQWllkd/JdgQ7Sv8nwMzwknT/cJ0P3pmTeJ0UTyxJ9a9H7OQW77DVIf
	ATcQ+jzHiURvEMMG0u8ZNW3U3n+t/IhYWToo42WsN3Ok6563sT9Er0uGyGiMMKL/CIaUnq9TtjqTl
	9H5hvxJCCJvZDFDb5zKfJLhdfvaxc+e0nG9DXPs/jJ7GAlHQaIDSaACo0sR4SigDMZNQjxSl1Bch6
	RHEhAJAWJSuhyPDGnakw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nx9Xq-008383-1l; Fri, 03 Jun 2022 15:49:02 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nx9Xm-00834c-45
	for linux-phy@lists.infradead.org; Fri, 03 Jun 2022 15:49:00 +0000
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20220603154849epoutp02edfc8418f3b14d93d1bae5ca349a2575~1JwKCIqAP1283712837epoutp02e
	for <linux-phy@lists.infradead.org>; Fri,  3 Jun 2022 15:48:49 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20220603154849epoutp02edfc8418f3b14d93d1bae5ca349a2575~1JwKCIqAP1283712837epoutp02e
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1654271329;
	bh=sWWYrw8VuDqq0QJl4Hk/RiH6NmDQDCjSyYfztasWBHg=;
	h=From:To:Cc:Subject:Date:References:From;
	b=cNKhGOOiBVesRNzVFAgZlk361F2KS8KE/ELmCThwKpuX4bM9dEAmgfQu9W7EEo/3i
	 4sHZAiuNG/teVUASZQ5AlrewtKrW5vJeGjZBp2xqQZ3Xp9hI8QcmX0UvdqVOkYKxuk
	 f1YAMXP8k3mDWC03fagu9z5vCOgoHAWDCHDbhf/U=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTP id
	20220603154848epcas5p3fed8acf433e416fbf58724035fb37585~1JwIvjFdL1875418754epcas5p3a;
	Fri,  3 Jun 2022 15:48:48 +0000 (GMT)
Received: from epsmges5p1new.samsung.com (unknown [182.195.38.181]) by
	epsnrtp3.localdomain (Postfix) with ESMTP id 4LF6k60MFLz4x9Pp; Fri,  3 Jun
	2022 15:48:46 +0000 (GMT)
Received: from epcas5p4.samsung.com ( [182.195.41.42]) by
	epsmges5p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	78.A8.10063.D5D2A926; Sat,  4 Jun 2022 00:48:45 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
	20220603154845epcas5p1b3eaea1ae6bc67e3d4c22d235102a6a8~1JwF1uals1285712857epcas5p1M;
	Fri,  3 Jun 2022 15:48:45 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
	epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
	20220603154845epsmtrp18f7ec9b783423038d6157dcd70616069~1JwF0ziba2840728407epsmtrp1O;
	Fri,  3 Jun 2022 15:48:45 +0000 (GMT)
X-AuditID: b6c32a49-4cbff7000000274f-2f-629a2d5dcd61
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
	epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	C2.6C.11276.D5D2A926; Sat,  4 Jun 2022 00:48:45 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
	[107.108.73.139]) by epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20220603154842epsmtip1c73f572840caa46a8a536637525cf71d~1JwCuMgLa1990619906epsmtip1h;
	Fri,  3 Jun 2022 15:48:41 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org, avri.altman@wdc.com,
	bvanassche@acm.org, martin.petersen@oracle.com, chanho61.park@samsung.com,
	pankaj.dubey@samsung.com, Alim Akhtar <alim.akhtar@samsung.com>
Subject: [PATCH v2 0/7] Add support for UFS controller found in FSD SoC
Date: Fri,  3 Jun 2022 21:17:07 +0530
Message-Id: <20220603154714.30532-1-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrCKsWRmVeSWpSXmKPExsWy7bCmlm6s7qwkg2U/zSwezNvGZvHy51U2
	i2kffjJbXN6vbTH/yDlWi74XD5ktNj2+xmpxedccNosJq76xWHRf38Fmsfz4PyaLRVu/sFu0
	7j3CbrHzzglmBz6Py1e8PTat6mTzuHNtD5vH5iX1Hh+f3mLx6NuyitHj8yY5j/YD3UwBHFHZ
	NhmpiSmpRQqpecn5KZl56bZK3sHxzvGmZgaGuoaWFuZKCnmJuam2Si4+AbpumTlAVysplCXm
	lAKFAhKLi5X07WyK8ktLUhUy8otLbJVSC1JyCkwK9IoTc4tL89L18lJLrAwNDIxMgQoTsjPe
	HUgqeMRTsfjVH8YGxiecXYycHBICJhLbH61l7GLk4hAS2M0o8ev+N2YI5xOjxI51r1ggnG+M
	ElPmnGSBaVm++DcbRGIvo8ShS29ZQRJCAi1MEvsmeYPYbALaEnenb2ECKRIRaGaUONixC8xh
	Fuhjklhy+zZYh7CAu8S/Iw1ACzk4WARUJdbMZgYJ8wrYSKx8uogJYpu8xOoNB8BukhD4yS5x
	bc1DVoiEi8TR1iZmCFtY4tXxLewQtpTEy/42dpCZEgIeEov+SEGEMyTeLl/PCGHbSxy4MocF
	pIRZQFNi/S59kDCzAJ9E7+8nTBCdvBIdbUIQ1aoSze+uQv0uLTGxuxvqAA+J3pnnmSFej5XY
	POcI4wRGmVkIQxcwMq5ilEwtKM5NTy02LTDMSy2HR01yfu4mRnDy0/LcwXj3wQe9Q4xMHIyH
	GCU4mJVEeMvmzUwS4k1JrKxKLcqPLyrNSS0+xGgKDKSJzFKiyfnA9JtXEm9oYmlgYmZmZmJp
	bGaoJM4r8L8xSUggPbEkNTs1tSC1CKaPiYNTqoGp7nOUXaxh4e2pMg+FklQbUlYaS6YlKvmz
	qSWfXVbY83R3cNsJUYfJeW7NH+yLn7hPbGqZZdZryfrQWfCtkIH0/aUCFWdn/c9sia05Jlnv
	W/g/jVfc295KcVrvhaofiQ/ywlwqMr+aSbnP9ef8M13viEdQaMW3xUGTTkSw3g3J/BuivTK4
	skN+xu0NHxqmtwZc0gu4I+b43r9rO/sMgT0CvskX1fR27F33ZBOXeGBK3erpjgsdJhV7HzdZ
	P9X48v3sKQu/Toq5EKTkVKKf6pux/rhxzscdL0w0GsJlao2DMvakBk5wXGWwa5LJ/dutC85F
	+r8UX2nOveXc/sbJ/fyX2Q1dnllv9jQxveugosRSnJFoqMVcVJwIAL/cWcMHBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrLLMWRmVeSWpSXmKPExsWy7bCSnG6s7qwkgwNP+SwezNvGZvHy51U2
	i2kffjJbXN6vbTH/yDlWi74XD5ktNj2+xmpxedccNosJq76xWHRf38Fmsfz4PyaLRVu/sFu0
	7j3CbrHzzglmBz6Py1e8PTat6mTzuHNtD5vH5iX1Hh+f3mLx6NuyitHj8yY5j/YD3UwBHFFc
	NimpOZllqUX6dglcGe8OJBU84qlY/OoPYwPjE84uRk4OCQETieWLf7N1MXJxCAnsZpS40bqF
	DSIhLXF94wR2CFtYYuW/5+wQRU1MErs/LGQFSbAJaEvcnb6FCcQWEWhnlLi/HWwSs8AsJon3
	k54wgiSEBdwl/h1pYO5i5OBgEVCVWDObGSTMK2AjsfLpIiaIBfISqzccYJ7AyLOAkWEVo2Rq
	QXFuem6xYYFhXmq5XnFibnFpXrpecn7uJkZwiGpp7mDcvuqD3iFGJg7GQ4wSHMxKIrxl82Ym
	CfGmJFZWpRblxxeV5qQWH2KU5mBREue90HUyXkggPbEkNTs1tSC1CCbLxMEp1cBkM+0Sg1fQ
	y5lanK5OZx4s4IjSKz1Skvqt1bbQZtL+UyrbGxYmucWHHTZgPijpbKH7cJpJtOg2RsOZG79U
	b0qq3WjYWaPWYTlrrtnDaHbz/1bfUlemhWrEsD2Pnhb7827pxudT05Z61iha8JiKiS19tj9E
	aHmcj0HL5P0i/z994f9RJJZkNvXu6e8N3r81XN/OvW1cr7mPrfem38/ZF12KH6lvL9h/jnPG
	7CWx7YKV1ka8dROzHz4vPf36vcmU/bq/96Ux3bHw2PKA2X6J289DfzOaxD8Znf7e13RX45t2
	y46t9yXdSqwvyG2YHzC/RGLt9Z5pi8wOSWb/tb2tLZdeHvfjya2V/HfWac+dKvJNiaU4I9FQ
	i7moOBEAyqhF2MACAAA=
X-CMS-MailID: 20220603154845epcas5p1b3eaea1ae6bc67e3d4c22d235102a6a8
X-Msg-Generator: CA
CMS-TYPE: 105P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220603154845epcas5p1b3eaea1ae6bc67e3d4c22d235102a6a8
References: <CGME20220603154845epcas5p1b3eaea1ae6bc67e3d4c22d235102a6a8@epcas5p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220603_084858_562352_4F1131DB 
X-CRM114-Status: GOOD (  13.79  )
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

Patch 2/7: common change to handle different CDR offsets

*Changes since v1:
- Addressed review comments from Bart, Krzysztof, Chanho
- collected Ack-by tags
- rebased on next-20220602

Alim Akhtar (7):
  dt-bindings: phy: Add FSD UFS PHY bindings
  phy: samsung-ufs: move cdr offset to drvdata
  phy: samsung-ufs: add support for FSD ufs phy driver
  dt-bindings: ufs: exynos-ufs: add fsd compatible
  ufs: ufs-exynos:  add mphy apb clock mask
  ufs: host: ufs-exynos: add support for fsd ufs hci
  arm64: dts: fsd: add ufs device node

 .../bindings/phy/samsung,ufs-phy.yaml         |   1 +
 .../bindings/ufs/samsung,exynos-ufs.yaml      |   1 +
 arch/arm64/boot/dts/tesla/fsd-evb.dts         |   4 +
 arch/arm64/boot/dts/tesla/fsd-pinctrl.dtsi    |  14 ++
 arch/arm64/boot/dts/tesla/fsd.dtsi            |  29 ++++
 drivers/phy/samsung/Makefile                  |   1 +
 drivers/phy/samsung/phy-exynos7-ufs.c         |   3 +
 drivers/phy/samsung/phy-exynosautov9-ufs.c    |   2 +
 drivers/phy/samsung/phy-fsd-ufs.c             |  58 +++++++
 drivers/phy/samsung/phy-samsung-ufs.c         |   6 +-
 drivers/phy/samsung/phy-samsung-ufs.h         |   3 +-
 drivers/ufs/host/ufs-exynos.c                 | 141 +++++++++++++++++-
 12 files changed, 260 insertions(+), 3 deletions(-)
 create mode 100644 drivers/phy/samsung/phy-fsd-ufs.c


base-commit: 2e776ccffa840ce53ee1c21bde54cbe4bc102c3b
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
