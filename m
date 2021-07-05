Return-Path: <SRS0=p6g3=L5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 37C3BC07E99
	for <linux-phy@archiver.kernel.org>; Mon,  5 Jul 2021 10:23:52 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E3308613E7
	for <linux-phy@archiver.kernel.org>; Mon,  5 Jul 2021 10:23:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E3308613E7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=samsung.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-Id:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=JWzkExKscgf94AetnUmN28XKATIA3V/ZT6N31oAeYMY=; b=Cw9vlB2p2GVmHV
	7ydKbH6BELKIfXNxym3EZXwjzBsi+oJ8t0HpmYj/u/RgUUCikHT/jdhK7uyb2Y23OmmCh5Ytdxj7j
	pN2IDYTNfHs88CXeq9xgs8hOnzx+Ll6XMdxTJzQAWEm/WCgvR7op/7nRj3yz/LxKRzUJG+j4erCNV
	MkC+h783CcUPJ/BFbhjYwlg9EQn4FS6hmJAJd16PNEzwv6JGc2fDVWYG9IM++yVr+pymS0ucP0SDN
	xfNODZXNadqw0hybxPSrVxijZIK3HuxfSiqf0xjn+x7kG1FOS8gHyg4hDPTmEgdoNUQaekoHsGEHB
	0MdiSuu/CxSYkTILdC4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0LlX-008Zoa-Bc; Mon, 05 Jul 2021 10:23:51 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0LlU-008Znf-2Q
 for linux-phy@lists.infradead.org; Mon, 05 Jul 2021 10:23:49 +0000
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20210705102342epoutp04c7790fca60b18d3aeb30e5e5369e3eef~O3gOgoxa92932929329epoutp04G
 for <linux-phy@lists.infradead.org>; Mon,  5 Jul 2021 10:23:42 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20210705102342epoutp04c7790fca60b18d3aeb30e5e5369e3eef~O3gOgoxa92932929329epoutp04G
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1625480622;
 bh=nkQ6neolXDbDavOdo1CKfRIAowYuj+ChJFKiyYK7pP8=;
 h=From:To:Cc:Subject:Date:References:From;
 b=tYAmLv62ICfwm7UaJAeTeoLwi8Clgi/iN0eb643Anmq7tyF0qtkCaUf5LXtjB4cMQ
 gIDCeRIztzxf2sYN85MRXBbtHmzgLfG5s9aDT9ZiWd4n+mXKLjjsPiV0BoQAe3oTo7
 v+U1abetmDtohAUWHwDjIDYzE8Z3gUJ64vpxxM9k=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas2p3.samsung.com (KnoxPortal) with ESMTP id
 20210705102342epcas2p34f0673e466d74808b8ef0f4bcfa6bfeb~O3gN7kVEg0810708107epcas2p39;
 Mon,  5 Jul 2021 10:23:42 +0000 (GMT)
Received: from epsmges2p3.samsung.com (unknown [182.195.40.184]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 4GJMGh6CNhz4x9Q3; Mon,  5 Jul
 2021 10:23:40 +0000 (GMT)
Received: from epcas2p1.samsung.com ( [182.195.41.53]) by
 epsmges2p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 1C.27.09541.CADD2E06; Mon,  5 Jul 2021 19:23:40 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas2p2.samsung.com (KnoxPortal) with ESMTPA id
 20210705102339epcas2p2963b4eb64ad038315a7b8da304b37218~O3gLLLZbn2215722157epcas2p2p;
 Mon,  5 Jul 2021 10:23:39 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20210705102339epsmtrp15a775a7d15ba84e62fbc74c96b7e3491~O3gLKvKvX1341013410epsmtrp1D;
 Mon,  5 Jul 2021 10:23:39 +0000 (GMT)
X-AuditID: b6c32a47-5f3ff70000002545-3c-60e2ddac3076
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 78.2F.08394.AADD2E06; Mon,  5 Jul 2021 19:23:38 +0900 (KST)
Received: from localhost.localdomain (unknown [10.229.9.51]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20210705102338epsmtip105e087a80a4db4e7c83981c9e7ee9092~O3gK5w-E02565725657epsmtip1U;
 Mon,  5 Jul 2021 10:23:38 +0000 (GMT)
From: Chanho Park <chanho61.park@samsung.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Marek Szyprowski
 <m.szyprowski@samsung.com>, Jaehoon Chung <jh80.chung@samsung.com>, Alim
 Akhtar <alim.akhtar@samsung.com>, linux-phy@lists.infradead.org, Chanho Park
 <chanho61.park@samsung.com>
Subject: [PATCH 0/2] Support exynosauto ufs phy driver
Date: Mon,  5 Jul 2021 19:23:16 +0900
Message-Id: <20210705102318.102999-1-chanho61.park@samsung.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrHKsWRmVeSWpSXmKPExsWy7bCmqe6au48SDNa+1LR4MG8bm8Xl/doW
 N361sVpceNrDZnH+/AZ2iwmrvrFYrD1yl91i550TzA4cHptWdbJ5bF5S79G3ZRWjx/Eb25kC
 WKJybDJSE1NSixRS85LzUzLz0m2VvIPjneNNzQwMdQ0tLcyVFPISc1NtlVx8AnTdMnOArlBS
 KEvMKQUKBSQWFyvp29kU5ZeWpCpk5BeX2CqlFqTkFBgaFugVJ+YWl+al6yXn51oZGhgYmQJV
 JuRknOi7zF6wgbXi/oR7rA2MK1i6GDk5JARMJLoPzWDqYuTiEBLYwShx8OBbdgjnE6PEkRln
 2SCcb4wS67s3sMK0bLjVywKR2MsoMa93EiNIQkjgI6NEyxl2EJtNQFdiy/NXQHEODhEBT4mV
 KxhB6pkFPjNKXN+0mBmkRljATGLJ2bNg9SwCqhKrHi4Ds3kF7CV2NfxhhFgmL3Fq2UEmiLig
 xMmZT8DuZgaKN2+dzQxRc4pdYuNJIwjbRWL27ldQcWGJV8e3sEPYUhIv+9vAXpMQ6GaUaH30
 HyqxmlGis9EHwraX+DV9CyvI0cwCmhLrd+mDmBICyhJHbkGt5ZPoOPyXHSLMK9HRJgTRqC5x
 YPt0aIjKSnTP+QwNKg+JpndzWCChEytx9NgW5gmM8rOQPDMLyTOzEPYuYGRexSiWWlCcm55a
 bFRgjBynmxjBCVHLfQfjjLcf9A4xMnEwHmKU4GBWEuEVmfIoQYg3JbGyKrUoP76oNCe1+BCj
 KTB4JzJLiSbnA1NyXkm8oamRmZmBpamFqZmRhZI4Lwf7oQQhgfTEktTs1NSC1CKYPiYOTqkG
 JtPjN6JzXt+4kJwvtvfCl/u7fvLGKRr2ifZ+O1QaedZA/rF8UaV646QzE45M8DbYL/ir3323
 lyt/xal0/eaMl8eC7U4KXj2xJsZ+VdADLuUDORwh4v1Ln4gHXp0y9ZOwN1+m3t6lbRs2Xlt3
 5nHqLYYL3n9YSl1fBv65z7TwnDtfzaTFfZpXrCawf8xqCFpm6873q19m4cvZoY6Sdxl3HZ90
 eOeyA/oHPsz+yia7aUOWVcySgkt8c222LJQ+7SoluC1Y/+O26idLXV7PsSz6fnTi5K2n9y54
 nap10UkgWaGR98NNsz61Lq69xdUieoVXmBzqgys3hLy0zv/IYMKvuVTntLzsr5W8ydv/Z29y
 6VZiKc5INNRiLipOBADJ5C3YEQQAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrHLMWRmVeSWpSXmKPExsWy7bCSnO6qu48SDGbdM7N4MG8bm8Xl/doW
 N361sVpceNrDZnH+/AZ2iwmrvrFYrD1yl91i550TzA4cHptWdbJ5bF5S79G3ZRWjx/Eb25kC
 WKK4bFJSczLLUov07RK4Mk70XWYv2MBacX/CPdYGxhUsXYycHBICJhIbbvUC2VwcQgK7GSVO
 7d3ODJGQlXj2bgc7hC0scb/lCCtE0XtGibO/uphAEmwCuhJbnr9i7GLk4BAR8JY4c1UWpIZZ
 4DujxJa7EDXCAmYSS86eBRvEIqAqserhMjCbV8BeYlfDH0aIBfISp5YdZIKIC0qcnPkE7Dpm
 oHjz1tnMExj5ZiFJzUKSWsDItIpRMrWgODc9t9iwwDAvtVyvODG3uDQvXS85P3cTIzhItTR3
 MG5f9UHvECMTB+MhRgkOZiURXpEpjxKEeFMSK6tSi/Lji0pzUosPMUpzsCiJ817oOhkvJJCe
 WJKanZpakFoEk2Xi4JRqYJopZ5Fw7Zd3eX7Qpb8seemd+xtrTkm3v5W5y7K6pSFtxRrmrr47
 BusYj9Zn7cu4lLMsSb3lyn3hyxLV50uDlrOmmN8Mn6x9+GtsWCTv/0cZbRnl8+Xve2ZsuWp4
 N3NLyJE41hlhR1UkjdWdUkXuJlyJ/Hj/3i7tU6X7+DySzzPXHt04zUN9anVc5MyYe7/PP+Ca
 ccO9Rkae25ehS/RHmprfLocDedo77gvanNrn/l5jh7GB6pMp8tMCgu332T9urW7/XXOSo+mn
 iOumm7/yb/J83xnpcHTXqgtsIgVKZzesX7DD+8Mnm9uXxdUnaPZLit5qyFdatW+R/KFqveXd
 z595nDSzLipk2+HeJihTp8RSnJFoqMVcVJwIAGcflFXBAgAA
X-CMS-MailID: 20210705102339epcas2p2963b4eb64ad038315a7b8da304b37218
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20210705102339epcas2p2963b4eb64ad038315a7b8da304b37218
References: <CGME20210705102339epcas2p2963b4eb64ad038315a7b8da304b37218@epcas2p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210705_032348_509627_39976912 
X-CRM114-Status: GOOD (  11.74  )
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

This patchset introduces ExynosAuto SoC ufs phy driver as Generic PHY
driver framework. Unlike current exynos7 ufs phy driver, this uses 0x50
for offset of PHY_TRSV_CH_OFFSET macro.

Chanho Park (2):
  phy: samsung-ufs: custom PHY_TRSV_CH_OFFSET support
  phy: samsung-ufs: support exynosauto ufs phy driver

 .../bindings/phy/samsung,ufs-phy.yaml         |  1 +
 drivers/phy/samsung/phy-exynosauto-ufs.h      | 70 +++++++++++++++++++
 drivers/phy/samsung/phy-samsung-ufs.c         |  3 +
 drivers/phy/samsung/phy-samsung-ufs.h         |  8 ++-
 4 files changed, 80 insertions(+), 2 deletions(-)
 create mode 100644 drivers/phy/samsung/phy-exynosauto-ufs.h

-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
