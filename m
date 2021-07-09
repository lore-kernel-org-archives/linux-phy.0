Return-Path: <SRS0=210v=MB=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD6BDC07E99
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jul 2021 10:00:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 81EEF613CC
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jul 2021 10:00:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 81EEF613CC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=samsung.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-Id:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=Be3MplrY8y9QyQy8+/TBmAv5Spm22TpGVdpaeysmnDc=; b=W/eskIHL2Jic0/
	3Wu9lk0MIcNA2S8A11B+2WO++5n0X9mKBgBLPbh+Okok15sP5u64MTC7r2QWFk0c9EbCMweikEFCg
	RlWT80xfXD2Gl/dXaN+Ec7m/I+c7+cxDZF1/T9R//H77xum51CTG8MJQ+xxmZsPGeiQLyiiBW+J1y
	L0vUtLlTThHuT7p/mxyJIMsB7AIOEokCm2pth+Nu856NHbBl1XlIM/2lU2wdONR5VNm1aOb2NIIOy
	YIzhHooycjtCP5OJ0wC2t0AprS4uh4gI6newshnr6iu3K9tKSTc0Hs9sCc5UU19tC5cz/fzGAbDBL
	DUDdezZnvlty7Y79xTtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m1nJQ-001Qwz-Ug; Fri, 09 Jul 2021 10:00:48 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m1nJM-001QuV-OZ
 for linux-phy@lists.infradead.org; Fri, 09 Jul 2021 10:00:46 +0000
Received: from epcas2p4.samsung.com (unknown [182.195.41.56])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20210709100041epoutp011de57df370d803e025a302820c5b7c9b~QFxRosAqW1528815288epoutp01n
 for <linux-phy@lists.infradead.org>; Fri,  9 Jul 2021 10:00:41 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20210709100041epoutp011de57df370d803e025a302820c5b7c9b~QFxRosAqW1528815288epoutp01n
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1625824841;
 bh=xUeuFJbzIqzNMBDZ8udPpSa5rgtamqTG53jzGdxqHFY=;
 h=From:To:Cc:Subject:Date:References:From;
 b=MyhFMZyt3B2hfuOcbrAjPVKOFQrKBlFskLdHbCgtxY1At8FJq805EiuFWLMaE3Kh2
 JigFsmVl3ukqqffTjU0z9xLGL2JIhTVZdp7ICTdI6Sxdj7q+kUpoupJSP9tkWd07Vz
 RedS5W5CmNqB5mqgBxtzVyt/+D6/v7lTHQdq7svA=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas2p3.samsung.com (KnoxPortal) with ESMTP id
 20210709100040epcas2p3e6cd8cd1bc0c3799b0f116833efa2afd~QFxQtnGI82776127761epcas2p3J;
 Fri,  9 Jul 2021 10:00:40 +0000 (GMT)
Received: from epsmges2p3.samsung.com (unknown [182.195.40.181]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 4GLpZG72WDz4x9Q1; Fri,  9 Jul
 2021 10:00:38 +0000 (GMT)
Received: from epcas2p1.samsung.com ( [182.195.41.53]) by
 epsmges2p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 AB.17.09541.64E18E06; Fri,  9 Jul 2021 19:00:38 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas2p4.samsung.com (KnoxPortal) with ESMTPA id
 20210709100037epcas2p4893e64c9007777d054b59b2688a9dba8~QFxN60KJ42811928119epcas2p4z;
 Fri,  9 Jul 2021 10:00:37 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20210709100037epsmtrp261a48bfb94a9fa93d3b794daed846207~QFxN55G0F2381723817epsmtrp2G;
 Fri,  9 Jul 2021 10:00:37 +0000 (GMT)
X-AuditID: b6c32a47-609ff70000002545-b1-60e81e46b888
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 99.4A.08289.54E18E06; Fri,  9 Jul 2021 19:00:37 +0900 (KST)
Received: from localhost.localdomain (unknown [10.229.9.51]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20210709100037epsmtip18278a926b0577a3c1c73b47b51d353f8~QFxNrtAHQ1190911909epsmtip1L;
 Fri,  9 Jul 2021 10:00:37 +0000 (GMT)
From: Chanho Park <chanho61.park@samsung.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: Marek Szyprowski <m.szyprowski@samsung.com>, Jaehoon Chung
 <jh80.chung@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>,
 linux-phy@lists.infradead.org, Chanho Park <chanho61.park@samsung.com>
Subject: [PATCH v5 0/2] Support exynosautov9 ufs phy driver
Date: Fri,  9 Jul 2021 18:45:22 +0900
Message-Id: <20210709094524.110193-1-chanho61.park@samsung.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrLKsWRmVeSWpSXmKPExsWy7bCmqa6b3IsEg/9rLCwezNvGZnF5v7bF
 jV9trBYXnvawWZw/v4HdYsKqbywWa4/cZbfYeecEswOHx6ZVnWwem5fUe/RtWcXocfzGdqYA
 lqgcm4zUxJTUIoXUvOT8lMy8dFsl7+B453hTMwNDXUNLC3MlhbzE3FRbJRefAF23zBygK5QU
 yhJzSoFCAYnFxUr6djZF+aUlqQoZ+cUltkqpBSk5BYaGBXrFibnFpXnpesn5uVaGBgZGpkCV
 CTkZP98tZC6YzVXx5mpxA+Msji5GTg4JAROJ29cfsoPYQgI7GCWWn0+HsD8xSlx8EdzFyAVk
 f2aUOLH5BxNMw/wHbWwQiV2MEr9mr4NyPjJKrHt/DWwUm4CuxJbnrxhBbBGBIolPax8ygRQx
 C5xilHh/7SAzSEJYwFpiy6MWoG4ODhYBVYkjl/NBwrwC9hI/v+1nhdgmL3Fq2UEmiLigxMmZ
 T1hAbGagePPW2cwgMyUEzrFLbH++hw2iwUXi9fZNjBC2sMSr41vYIWwpic/v9rJBNHQzSrQ+
 +g+VWM0o0dnoA2HbS/yavoUV5CBmAU2J9bv0QUwJAWWJI7eg9vJJdBz+yw4R5pXoaBOCaFSX
 OLB9OguELSvRPecz1PkeEhdf/mCGhGisxNfph5knMMrPQvLNLCTfzELYu4CReRWjWGpBcW56
 arFRgTFylG5iBKdDLfcdjDPeftA7xMjEwXiIUYKDWUmE12jGswQh3pTEyqrUovz4otKc1OJD
 jKbA4J3ILCWanA9MyHkl8YamRmZmBpamFqZmRhZK4rwc7IcShATSE0tSs1NTC1KLYPqYODil
 Gphm3T/MuLdw976FL76LLpi5WqHn5qn1PasmFeYpfHZf8/HZ9FdPJb7f4bJ8ZGqQnK3kpjm9
 h4Pf6kwFf1zciYU1d/K0XtYxvxS+2O/GzPLUmOFk18KpC3x1Lj13EjIPWlJl/PPfkx/PYmes
 lYvf0dQ+p9FS6cDF3unX+tI1X0et9RD/eyB3muLMDdtXst2VMVVda7r1mvqnewFaEue/OCRe
 Tl4RYnR86jdjBluPrtSVOTdjhb+ffa+o3fe0L4Xhy3evaYzxDUvznvxbesGO/fEfo3s2jDsD
 dudszpoaIxOm/XkX82Lm9ufCj097+c1oeHF+0827wUFPD7JMqMlp5zSU/PEndLke34km5bfc
 6fsclViKMxINtZiLihMBep2SbxAEAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrLLMWRmVeSWpSXmKPExsWy7bCSnK6r3IsEgx3LDSwezNvGZnF5v7bF
 jV9trBYXnvawWZw/v4HdYsKqbywWa4/cZbfYeecEswOHx6ZVnWwem5fUe/RtWcXocfzGdqYA
 ligum5TUnMyy1CJ9uwSujJ/vFjIXzOaqeHO1uIFxFkcXIyeHhICJxPwHbWxdjFwcQgI7GCXu
 bnzMBpGQlXj2bgc7hC0scb/lCCtE0XtGiStbulhBEmwCuhJbnr9iBLFFBEokrs/+ywxSxCxw
 jlHi8vWnYJOEBawltjxqAbI5OFgEVCWOXM4HCfMK2Ev8/LafFWKBvMSpZQeZIOKCEidnPmEB
 sZmB4s1bZzNPYOSbhSQ1C0lqASPTKkbJ1ILi3PTcYsMCo7zUcr3ixNzi0rx0veT83E2M4BDV
 0trBuGfVB71DjEwcjIcYJTiYlUR4jWY8SxDiTUmsrEotyo8vKs1JLT7EKM3BoiTOe6HrZLyQ
 QHpiSWp2ampBahFMlomDU6qBab7TPc+OuR85X1Xd/+AWunDKshqjFZoZdgt8d6WWzsu8Z5A+
 JeO/hWntTp+LsWaT54UWVRulReW8517eXrfm2aOl3+UjDFlmcUQtcIrUs7jdajiJw0hv8t6r
 8rPSNqV9OBue97hHUCYuPCjnv0SuoKXN5vTMs3zWnEq8X1iPWzrcSg+bl/lvSXyex3a29S7S
 ojbTrttVFgcYha8p22H+9FW//KNT2UdWRzyu/Kv8nn/Wl2ixzFMbmTL7X9WeqnPZGFLs/+S5
 gNs3dt8/3IYWMj6/e2U+TZn05fnEP9WTvT2Opnndm3zuY1OM+gupc4tFN6zs2C8rFl8QFPKD
 pYYn9dyGlx2r7pqU6hVFbr+mxFKckWioxVxUnAgA3MtlG8ACAAA=
X-CMS-MailID: 20210709100037epcas2p4893e64c9007777d054b59b2688a9dba8
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20210709100037epcas2p4893e64c9007777d054b59b2688a9dba8
References: <CGME20210709100037epcas2p4893e64c9007777d054b59b2688a9dba8@epcas2p4.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210709_030045_243966_A0854740 
X-CRM114-Status: GOOD (  13.82  )
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

This patchset introduces ExynosAuto v9 SoC ufs phy driver as Generic PHY
driver framework. According to Krzysztof's suggestion, this patchset
moves phy-exynos7-ufs header to c source file.

Changes from v4:
- support module build

Changes from v3:
- correct header inclusion as suggested by Krzysztof

Changes from v2:
- Removed Change-id in commit message.

Changes from v1:
- squashed "custom PHY_TRSV_CH_OFFSET support" patch
- use "exynosautov9" instead of "exynosauto" to avoid confusion with
  exynosauto 8890
- move phy-exynos7-ufs.h to phy-exynos7-ufs.c
- s/exynosauto/exynosautov9/g




Chanho Park (2):
  phy: samsung-ufs: move phy-exynos7-ufs header
  phy: samsung-ufs: support exynosauto ufs phy driver

 .../bindings/phy/samsung,ufs-phy.yaml         |  1 +
 drivers/phy/samsung/Makefile                  |  5 +-
 .../{phy-exynos7-ufs.h => phy-exynos7-ufs.c}  |  8 +--
 drivers/phy/samsung/phy-exynosautov9-ufs.c    | 67 +++++++++++++++++++
 drivers/phy/samsung/phy-samsung-ufs.c         |  3 +
 drivers/phy/samsung/phy-samsung-ufs.h         | 13 +++-
 6 files changed, 87 insertions(+), 10 deletions(-)
 rename drivers/phy/samsung/{phy-exynos7-ufs.h => phy-exynos7-ufs.c} (93%)
 create mode 100644 drivers/phy/samsung/phy-exynosautov9-ufs.c

-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
