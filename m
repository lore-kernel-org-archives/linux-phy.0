Return-Path: <SRS0=+yjZ=L6=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3F8A3C07E99
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jul 2021 02:18:12 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E153B61285
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jul 2021 02:18:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E153B61285
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=samsung.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-Id:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=S3K1M7XvCGHIksH7VK2cMOMeJEnZisHh5crkuzxe1JQ=; b=hYjox6VsRtcANH
	Zu+3aKS0X3eNAq6IsPDCuBVLuM34Q1N26WTD7vbV4Y1RmJZrhDsTVXht1Rf3nAi/ibSJPrEGGpLxO
	KZl/S+fhfLIeA6CtwbIoZCbiXqs2nQX+Eth36cbbho7UeSbnD6dy8X+9MoF6YTJy1D5qQKGihsI/S
	tcltjiKROGN7Rov6PNXXkjXexjwz1v9eiJLLRWSjpBAGKwivrgmVEQIIY42cBLq2LSVGuXY9Va3sa
	T6YQIwOiB4DwrF3oB1QwQnc2yGnIwejuiTWNUJKbYb7ACL1tiffVISw2JL2g6tWRrCNorfazG+PHE
	4sLk90eC7TRKCGA+iWZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0af5-00A9UI-EC; Tue, 06 Jul 2021 02:18:11 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0af2-00A9Tt-Hx
 for linux-phy@lists.infradead.org; Tue, 06 Jul 2021 02:18:10 +0000
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20210706021806epoutp03f7fc1248765df2245022dae1fe2678e1~PEhhaahph3016730167epoutp03b
 for <linux-phy@lists.infradead.org>; Tue,  6 Jul 2021 02:18:06 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20210706021806epoutp03f7fc1248765df2245022dae1fe2678e1~PEhhaahph3016730167epoutp03b
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1625537886;
 bh=lkhOxY8GYS5bntih0pjyztWyHp95uxatGI/KcbPODm0=;
 h=From:To:Cc:Subject:Date:References:From;
 b=LdquwHWUurYiLb8mXsN4MpcXc3mlHYhNTIm8xmiLEp/ehxG200xtwEakRQmoT28BP
 qrWbN9M2ifYMSC5ikVe3rBrpwFZB9G9F/Z6BCA8Mt5dsCqVBFjkYkSnvFNkaHmTTRu
 2NBCkMTxzkyb6k+JFLpQDJOlxCaFbrft1UjW/1ms=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas2p2.samsung.com (KnoxPortal) with ESMTP id
 20210706021805epcas2p26e4196fac6d2a8a6ff93aac40e729458~PEhhEYjyc3129031290epcas2p2L;
 Tue,  6 Jul 2021 02:18:05 +0000 (GMT)
Received: from epsmges2p4.samsung.com (unknown [182.195.40.187]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 4GJmRv2BCtz4x9QC; Tue,  6 Jul
 2021 02:18:03 +0000 (GMT)
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
 epsmges2p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 72.49.09571.A5DB3E06; Tue,  6 Jul 2021 11:18:02 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas2p4.samsung.com (KnoxPortal) with ESMTPA id
 20210706021802epcas2p4f1e71284dbe217ebff6887c2879fb489~PEhdxewqK0392503925epcas2p4c;
 Tue,  6 Jul 2021 02:18:02 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20210706021802epsmtrp2de6a832430463d01e5898224b4186a6b~PEhdwevCu1231312313epsmtrp2I;
 Tue,  6 Jul 2021 02:18:02 +0000 (GMT)
X-AuditID: b6c32a48-1f5ff70000002563-2f-60e3bd5a5883
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 6A.B6.08394.A5DB3E06; Tue,  6 Jul 2021 11:18:02 +0900 (KST)
Received: from localhost.localdomain (unknown [10.229.9.51]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20210706021802epsmtip1f0f3a19dcd8047a85a4638bc0a75b92d~PEhdiNHU32098020980epsmtip1b;
 Tue,  6 Jul 2021 02:18:02 +0000 (GMT)
From: Chanho Park <chanho61.park@samsung.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: Marek Szyprowski <m.szyprowski@samsung.com>, Jaehoon Chung
 <jh80.chung@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>,
 linux-phy@lists.infradead.org, Chanho Park <chanho61.park@samsung.com>
Subject: [PATCH v3 0/2] Support exynosautov9 ufs phy driver
Date: Tue,  6 Jul 2021 11:18:02 +0900
Message-Id: <20210706021804.12890-1-chanho61.park@samsung.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpgk+LIzCtJLcpLzFFi42LZdljTTDdq7+MEg+fTNSwezNvGZnF5v7bF
 jV9trBYXnvawWZw/v4HdYsKqbywWa4/cZbfYeecEswOHx6ZVnWwem5fUe/RtWcXocfzGdqYA
 lqgcm4zUxJTUIoXUvOT8lMy8dFsl7+B453hTMwNDXUNLC3MlhbzE3FRbJRefAF23zBygK5QU
 yhJzSoFCAYnFxUr6djZF+aUlqQoZ+cUltkqpBSk5BYaGBXrFibnFpXnpesn5uVaGBgZGpkCV
 CTkZG7vyCuZzVjw6upaxgXE/excjJ4eEgInEpbM/2boYuTiEBHYwSmx9vJUFwvnEKLHqWwMj
 hPONUWLZyoeMMC2fer9BtexllNix4jQThPORUeLYwWfMIFVsAroSW56/AusQESiS+LT2IVgR
 s8ApRon31w6CFQkLWEvsWfYbrIhFQFXiwaMGFhCbV8BO4sWD01AXykucWnaQCSIuKHFy5hOw
 GmagePPW2cwgQyUETrFLrLk2iwmiwUVi98cOqGZhiVfHt0DZUhKf3+1lg2joZpRoffQfKrGa
 UaKz0QfCtpf4NX0LaxcjB9AGTYn1u/RBTAkBZYkjt6D28kl0HP7LDhHmlehoE4JoVJc4sH06
 C4QtK9E95zMrhO0hceP4X7C4kECsxMZHp1gmMMrPQvLNLCTfzELYu4CReRWjWGpBcW56arFR
 gQlyrG5iBCdFLY8djLPfftA7xMjEwXiIUYKDWUmEV2TKowQh3pTEyqrUovz4otKc1OJDjKbA
 8J3ILCWanA9My3kl8YamRmZmBpamFqZmRhZK4rwc7IcShATSE0tSs1NTC1KLYPqYODilGpjm
 6K3+4hh0bt7Gojin20oTt8+2kHNY+Wr+3Jj+5YZx18w9G7c0BATf4PXvLeFfqMuyS/rw42dC
 fzTVet32P3iukLck5Vqg1LffwvVt1au2W91VNXv0nfXOfMuwp7GuQU99I385WHxLEdDn1Za0
 e6ze/KNY4/aXl527lS+/enPfP2YC90lOHw8HR/clpj5TnG4derkoZHFdTUsK57JZPV5LDLPn
 CoesWseZPs9egmeS4ruGUI2Np07LHXH/maTjI8L+sFbus5GXeXvizHD7ktPfaqbvsZwYbu70
 a8+F5edvJSuGNcbaxx+P92XJnajSri34Q8tFWNry97HefqeGC7ZqFg9FpCY/Xf9los3U6Uos
 xRmJhlrMRcWJAPpAIpUTBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrHLMWRmVeSWpSXmKPExsWy7bCSnG7U3scJBs++8lg8mLeNzeLyfm2L
 G7/aWC0uPO1hszh/fgO7xYRV31gs1h65y26x884JZgcOj02rOtk8Ni+p9+jbsorR4/iN7UwB
 LFFcNimpOZllqUX6dglcGRu78grmc1Y8OrqWsYFxP3sXIyeHhICJxKfeb2xdjFwcQgK7GSU2
 73vFCJGQlXj2bgdUkbDE/ZYjrBBF7xklFi5ZzgqSYBPQldjyHKJBRKBE4vrsv8wgRcwC5xgl
 Ll9/ygaSEBawltiz7DdYEYuAqsSDRw0sIDavgJ3EiwenoTbIS5xadpAJIi4ocXLmE7AaZqB4
 89bZzBMY+WYhSc1CklrAyLSKUTK1oDg3PbfYsMAwL7Vcrzgxt7g0L10vOT93EyM4SLU0dzBu
 X/VB7xAjEwfjIUYJDmYlEV6RKY8ShHhTEiurUovy44tKc1KLDzFKc7AoifNe6DoZLySQnliS
 mp2aWpBaBJNl4uCUamCSZloexruBZVpOjtzlW/kRb+ycFSp6mwud9+9bZOg/yeHkxo+s4mxM
 IRvfll1VUXvIU6h4667K72LnF9GH+Z8bvH4SarayIlmi1o5Pg1+nsuVJTurD86wRPCemRKm2
 5G5uijoQKBnkfvlfTOtrwcMZlRefxj/q/qi6f2tNnf1ZcQG7SdLMEQeWnJy2/lLgM8Wn21yT
 UrikHuw9qXHyTszLJZP6Fi543LXvVmn+x6tuaR2RE9ZK8jhNFHf0LS3o4rONflEyNe5UcmJB
 +t71n3fbuF9089G/vWGt6czwi8eMc0UnLXuj2r9xlmKsrqDdO+UQ+Wkc7hci9+ctfr0kt//1
 6U0y3tX3F6/O2X8p87ISS3FGoqEWc1FxIgCP1BoowQIAAA==
X-CMS-MailID: 20210706021802epcas2p4f1e71284dbe217ebff6887c2879fb489
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20210706021802epcas2p4f1e71284dbe217ebff6887c2879fb489
References: <CGME20210706021802epcas2p4f1e71284dbe217ebff6887c2879fb489@epcas2p4.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210705_191808_960703_AA83472F 
X-CRM114-Status: GOOD (  12.06  )
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
 drivers/phy/samsung/Makefile                  |  4 +-
 .../{phy-exynos7-ufs.h => phy-exynos7-ufs.c}  | 11 ++-
 drivers/phy/samsung/phy-exynosautov9-ufs.c    | 70 +++++++++++++++++++
 drivers/phy/samsung/phy-samsung-ufs.c         |  3 +
 drivers/phy/samsung/phy-samsung-ufs.h         | 12 +++-
 6 files changed, 91 insertions(+), 10 deletions(-)
 rename drivers/phy/samsung/{phy-exynos7-ufs.h => phy-exynos7-ufs.c} (93%)
 create mode 100644 drivers/phy/samsung/phy-exynosautov9-ufs.c

-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
