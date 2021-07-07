Return-Path: <SRS0=i3rj=L7=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 89F62C07E9C
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jul 2021 00:58:05 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 557C361CB0
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jul 2021 00:58:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 557C361CB0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=samsung.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-Id:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=cBTHBnuTYGehVpYoF5/lkFUGvLNmLvOmv40L9HSNCpE=; b=X3UKG9afXlyElQ
	c7LS20PuXwVMSUnUNZqHaQg6ox8HXcGtspEr7JLYR2I1HSuPOvrcwjhhRcG73erXF7DmTvN3MDNrO
	4TbdwH5Z0qbi5DMrrOArxBf1gFlKoEW9+yxYUksiKX0UirLd3UCiuijtHqPpR1owpTmDXKIhnOS11
	AsrHpRWsVe3muIRryyb+jkxN76e9LFoUICGdw1kEIi7OgkilhBGTYuhhrstzpvi1Wl6OJuCaSeds7
	kfdEL+wpZx5nt76LaCGyX2FDgYrOiW1gUh1NW68IN86j6Ff1FDNgy82np0ZoMheubvmS33qi8P6Mi
	pP1UOL0WzIYZXpn7aRKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0vt6-00D7e5-SU; Wed, 07 Jul 2021 00:58:04 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0vt3-00D7d1-Iv
 for linux-phy@lists.infradead.org; Wed, 07 Jul 2021 00:58:03 +0000
Received: from epcas2p4.samsung.com (unknown [182.195.41.56])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20210707005757epoutp0213829d138d50387ab9afb0794504621f~PXE1gLTGi1560415604epoutp02t
 for <linux-phy@lists.infradead.org>; Wed,  7 Jul 2021 00:57:57 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20210707005757epoutp0213829d138d50387ab9afb0794504621f~PXE1gLTGi1560415604epoutp02t
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1625619477;
 bh=hKMJ46ELWx/naLIWXo/b2OhB5uXVCUJqH18tApq/yx8=;
 h=From:To:Cc:Subject:Date:References:From;
 b=pwo5MjWk6u3B80UwpvBMcQhwEkgokEVR8NwxyKs3nPFuoCpjMIItsgDLJE0AJINoD
 s6ieUe9NXEu5LWKXRc+G8iFkobkuFYvPe/mEZs35VI6NevvRdR8KvKlEi9a6bE+Bkp
 IAvdfIM3MSkrWS0uX4OeOWj90Fxsz/r2v0BgWWBY=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas2p1.samsung.com (KnoxPortal) with ESMTP id
 20210707005757epcas2p1a79dfc4d0cf2835d38ddd4a6b5c107ef~PXE1DQCpR0255202552epcas2p15;
 Wed,  7 Jul 2021 00:57:57 +0000 (GMT)
Received: from epsmges2p2.samsung.com (unknown [182.195.40.183]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 4GKLcy5wk2z4x9Q2; Wed,  7 Jul
 2021 00:57:54 +0000 (GMT)
Received: from epcas2p1.samsung.com ( [182.195.41.53]) by
 epsmges2p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 D7.16.09541.21CF4E06; Wed,  7 Jul 2021 09:57:54 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas2p2.samsung.com (KnoxPortal) with ESMTPA id
 20210707005753epcas2p2a31c4c7bb025d494017323d27cfc1cff~PXEx2AlPA1229012290epcas2p27;
 Wed,  7 Jul 2021 00:57:53 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20210707005753epsmtrp23a6cbe775305da47de8b0536731083d4~PXEx1Pswd3000130001epsmtrp2s;
 Wed,  7 Jul 2021 00:57:53 +0000 (GMT)
X-AuditID: b6c32a46-63f81a8000002545-6b-60e4fc12c7b3
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 EF.CC.08289.11CF4E06; Wed,  7 Jul 2021 09:57:53 +0900 (KST)
Received: from localhost.localdomain (unknown [10.229.9.51]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20210707005753epsmtip2761646269352b547fe76e59a65257b32~PXExm0K3R2568225682epsmtip2V;
 Wed,  7 Jul 2021 00:57:53 +0000 (GMT)
From: Chanho Park <chanho61.park@samsung.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: Marek Szyprowski <m.szyprowski@samsung.com>, Jaehoon Chung
 <jh80.chung@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>,
 linux-phy@lists.infradead.org, Chanho Park <chanho61.park@samsung.com>
Subject: [PATCH v4 0/2] Support exynosautov9 ufs phy driver
Date: Wed,  7 Jul 2021 09:57:51 +0900
Message-Id: <20210707005753.52042-1-chanho61.park@samsung.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrPKsWRmVeSWpSXmKPExsWy7bCmqa7QnycJBpd69SwezNvGZnF5v7bF
 jV9trBYXnvawWZw/v4HdYsKqbywWa4/cZbfYeecEswOHx6ZVnWwem5fUe/RtWcXocfzGdqYA
 lqgcm4zUxJTUIoXUvOT8lMy8dFsl7+B453hTMwNDXUNLC3MlhbzE3FRbJRefAF23zBygK5QU
 yhJzSoFCAYnFxUr6djZF+aUlqQoZ+cUltkqpBSk5BYaGBXrFibnFpXnpesn5uVaGBgZGpkCV
 CTkZn/b8ZS94yVnx7MQ51gbGn+xdjJwcEgImEgfu/mADsYUEdjBK3PpQ08XIBWR/YpRY/XU/
 M4TzmVFi9quJjDAdnzv+MEIkdjFKXJ13ggmi/SOjxITlsSA2m4CuxJbnr8AaRASKJD6tfcgE
 0sAscIpR4v21g8wgCWEBa4mTnZvBilgEVCX61z1lBbF5Bewk1u9/yAyxTV7i1LKDTBBxQYmT
 M5+wgNjMQPHmrbPBzpMQOMcuMe3ICagGF4mLl5+xQtjCEq+Ob4F6VEri87u9bBAN3YwSrY/+
 QyVWM0p0NvpA2PYSv6ZvAWrmANqgKbF+lz6IKSGgLHHkFtRePomOw3/ZIcK8Eh1tQhCN6hIH
 tk9ngbBlJbrnfIa6wEPi4pJjrJDwiZXY8+Ys0wRG+VlIvpmF5JtZCHsXMDKvYhRLLSjOTU8t
 NiowQo7UTYzglKjltoNxytsPeocYmTgYDzFKcDArifDW+TxJEOJNSaysSi3Kjy8qzUktPsRo
 CgzficxSosn5wKScVxJvaGpkZmZgaWphamZkoSTOy8F+KEFIID2xJDU7NbUgtQimj4mDU6qB
 Kfb96cIgqxitn9dFmS+bHEtTPHBlge/BrRvnXL6vW6K0TfMF84KNPA80pHkmP918yKGUk/3U
 yQaPyS9rpp//PK1+ej13Q3FKwlqppe4FsXXlbts+b3uuYdNus1FjWia/0Otp/hzWZnfy/59e
 WWlVz3kz60nj1E2SKoEaD3kneOQn81S2c3/b+5vh0McJ8mecVh/zdTDoKE5ZU3F+z3TlHl77
 jl4rmVtyRTG/tl/61LFvXYvNhg36H6f+Wbxe4ntmZN8MxRNKIbe7Tyh9aN9Qudjkw+w1c44f
 9Xj3KV+5rPnU6cWNa5SWTJivdGcvz3bGffM7DLav7ObUOrPTZk2y8FypmNy6lvgj5d/X+u99
 KqjEUpyRaKjFXFScCADM/WQsEgQAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrPLMWRmVeSWpSXmKPExsWy7bCSvK7gnycJBkc3m1g8mLeNzeLyfm2L
 G7/aWC0uPO1hszh/fgO7xYRV31gs1h65y26x884JZgcOj02rOtk8Ni+p9+jbsorR4/iN7UwB
 LFFcNimpOZllqUX6dglcGZ/2/GUveMlZ8ezEOdYGxp/sXYycHBICJhKfO/4wdjFycQgJ7GCU
 WNqzixEiISvx7N0OqCJhifstR1ghit4zSpxceY4VJMEmoCux5fkrsAYRgRKJ67P/MoMUMQuc
 Y5S4fP0pG0hCWMBa4mTnZrAiFgFVif51T8GaeQXsJNbvf8gMsUFe4tSyg0wQcUGJkzOfsIDY
 zEDx5q2zmScw8s1CkpqFJLWAkWkVo2RqQXFuem6xYYFRXmq5XnFibnFpXrpecn7uJkZwmGpp
 7WDcs+qD3iFGJg7GQ4wSHMxKIrx1Pk8ShHhTEiurUovy44tKc1KLDzFKc7AoifNe6DoZLySQ
 nliSmp2aWpBaBJNl4uCUamCyeFiRJPLtoJaX5XnzO5xNPC37mmtrnVNm3Jl5epth/b2Ea0+7
 P6QvO/ZExvWJ/1aDw3mybFqvu5h3J+wKi7saeqbxQfkNVp8Xm85tO5sRZ5rwrUBUoTTeLtu5
 bv6SdSs+t4T+W7Pp4yuLRbl3BU+tWtrZ55uR5JfjetfX49atiofnOk8J+mxTErh3o7KXgXVL
 7JPP6r/qGc0ft56OE1uw1uS+3FL/qKer80xeM6yrNRfu3PUty0qbdf7Glia5zCf/DrX+2JXI
 ff56ld7sn5e286z7Y2leKZoewWX+QHLpvoVbL2ikJ3InbXlx/6sD89n4JdUFiTzpa7bvbZNX
 tFBa7aTr/lw3c+vuheoF/SJKLMUZiYZazEXFiQDyITk0wgIAAA==
X-CMS-MailID: 20210707005753epcas2p2a31c4c7bb025d494017323d27cfc1cff
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20210707005753epcas2p2a31c4c7bb025d494017323d27cfc1cff
References: <CGME20210707005753epcas2p2a31c4c7bb025d494017323d27cfc1cff@epcas2p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210706_175802_121897_69ADBAE8 
X-CRM114-Status: GOOD (  12.27  )
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
 drivers/phy/samsung/Makefile                  |  4 +-
 .../{phy-exynos7-ufs.h => phy-exynos7-ufs.c}  |  8 +--
 drivers/phy/samsung/phy-exynosautov9-ufs.c    | 67 +++++++++++++++++++
 drivers/phy/samsung/phy-samsung-ufs.c         |  3 +
 drivers/phy/samsung/phy-samsung-ufs.h         | 13 +++-
 6 files changed, 86 insertions(+), 10 deletions(-)
 rename drivers/phy/samsung/{phy-exynos7-ufs.h => phy-exynos7-ufs.c} (93%)
 create mode 100644 drivers/phy/samsung/phy-exynosautov9-ufs.c

-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
