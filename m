Return-Path: <SRS0=+yjZ=L6=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F563C07E99
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jul 2021 02:06:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DE97761986
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jul 2021 02:06:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DE97761986
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=samsung.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-Id:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=uq6xI6TD/XUTxsOEAEpc7SNHmF8XI3shWvcsrRxtTyw=; b=DOZ72Rj8kfI4Dc
	R7fPYSz8vvMpeBrgsOZoAOwNMeDe62TrTxZXoPt9zBbhz4ClPcXlIw0gxFC9ZhnVk31yUq705HfwM
	qxvaDYyNvNK/+YBU9EWZ4byY0g/iU826gdeBCcitG1u7Fn+ents6awuFYRcsZPZ2Hz/vJT8jnLwXa
	lGIeZ6gXp9bKJI5P86+/vcEhlouYMgZc93jXKOWkCXX0qmLtUBsj1oCHJjhVz8fseXbAX/AdHzfTr
	PABkoj64xAljudP8db7T/n2WGLDAeteT15CAxHqMFVoJGOJ0EfVCzFcv16cRJsbP9FKgyU5AcR3pd
	lUNdq8LzHDKOjKxC8TEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0aTd-00A8yG-98; Tue, 06 Jul 2021 02:06:21 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0aTZ-00A8xO-Eu
 for linux-phy@lists.infradead.org; Tue, 06 Jul 2021 02:06:19 +0000
Received: from epcas2p2.samsung.com (unknown [182.195.41.54])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20210706020613epoutp019880aea5ef5e192602b57a52ce089505~PEXJ_065G2744327443epoutp01n
 for <linux-phy@lists.infradead.org>; Tue,  6 Jul 2021 02:06:13 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20210706020613epoutp019880aea5ef5e192602b57a52ce089505~PEXJ_065G2744327443epoutp01n
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1625537173;
 bh=QCjBVoSdvrbs/kJlIjr4inxONV9xw/sWdUzJPzjzhC8=;
 h=From:To:Cc:Subject:Date:References:From;
 b=rtZa9lklO56U5TZnCcFaYF0ZGX419yA8OM4hxxBJOEkED3UVS6QiE5QpTK6pK778p
 6Tow87KcJxUoWW+2yXgLmYRaFFrLISOb4OgzPapV4wS2TqqM+ucZUgOHIqobyp7cvr
 NfsSNDVGvd+6Di4sX4/OXOI4UHZCJUNNHEWYUzm4=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
 epcas2p2.samsung.com (KnoxPortal) with ESMTP id
 20210706020612epcas2p2ac5cc33e00156cfd19535d67bba86ce7~PEXI41Wm22335723357epcas2p28;
 Tue,  6 Jul 2021 02:06:12 +0000 (GMT)
Received: from epsmges2p2.samsung.com (unknown [182.195.40.186]) by
 epsnrtp2.localdomain (Postfix) with ESMTP id 4GJmBB5PxRz4x9Pw; Tue,  6 Jul
 2021 02:06:10 +0000 (GMT)
Received: from epcas2p4.samsung.com ( [182.195.41.56]) by
 epsmges2p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 AB.9F.09541.09AB3E06; Tue,  6 Jul 2021 11:06:08 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas2p1.samsung.com (KnoxPortal) with ESMTPA id
 20210706020608epcas2p1ff6e0073edfa43de92ebd6c754df18cf~PEXEwUtYT2056020560epcas2p1S;
 Tue,  6 Jul 2021 02:06:08 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20210706020608epsmtrp29c984f732e0304746a8a87da2a67e0b4~PEXEvjtON0756707567epsmtrp2q;
 Tue,  6 Jul 2021 02:06:08 +0000 (GMT)
X-AuditID: b6c32a46-0abff70000002545-8b-60e3ba900cba
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 3F.55.08394.09AB3E06; Tue,  6 Jul 2021 11:06:08 +0900 (KST)
Received: from localhost.localdomain (unknown [10.229.9.51]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20210706020608epsmtip2bea219c29bcbde6e403fe5befc109ce6~PEXEiZAaa2625126251epsmtip2O;
 Tue,  6 Jul 2021 02:06:08 +0000 (GMT)
From: Chanho Park <chanho61.park@samsung.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: Marek Szyprowski <m.szyprowski@samsung.com>, Jaehoon Chung
 <jh80.chung@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>,
 linux-phy@lists.infradead.org, Chanho Park <chanho61.park@samsung.com>
Subject: [PATCH v2 0/2] Support exynosautov9 ufs phy driver
Date: Tue,  6 Jul 2021 11:06:23 +0900
Message-Id: <20210706020625.117400-1-chanho61.park@samsung.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrPKsWRmVeSWpSXmKPExsWy7bCmhe6EXY8TDD42Wlg8mLeNzeLyfm2L
 G7/aWC0uPO1hszh/fgO7xYRV31gs1h65y26x884JZgcOj02rOtk8Ni+p9+jbsorR4/iN7UwB
 LFE5NhmpiSmpRQqpecn5KZl56bZK3sHxzvGmZgaGuoaWFuZKCnmJuam2Si4+AbpumTlAVygp
 lCXmlAKFAhKLi5X07WyK8ktLUhUy8otLbJVSC1JyCgwNC/SKE3OLS/PS9ZLzc60MDQyMTIEq
 E3Iy2lf/YS14zFHxcaVbA+ME9i5GTg4JAROJH3fmsILYQgI7GCWWr+LtYuQCsj8xSjTtaWaG
 cL4xSrzZf4YJpmP7qo9MEIm9jBIzt36GqvrIKPFw91GwuWwCuhJbnr9iBLFFBIokPq19CNbB
 LHCKUeL9tYPMIAlhAWuJj9PmgTWwCKhKLO+5AxbnFbCX2HN8GgvEOnmJU8sOMkHEBSVOznwC
 FmcGijdvnQ22WULgFLvExhvT2CAaXCSmNjxihbCFJV4d3wL1qZTE53d72SAauhklWh/9h0qs
 ZpTobPSBsO0lfk3fAtTMAbRBU2L9Ln0QU0JAWeLILai9fBIdh/+yQ4R5JTrahCAa1SUObJ8O
 dbKsRPecz1AXeEj8PtcNDd9YiY4rf1kmMMrPQvLNLCTfzELYu4CReRWjWGpBcW56arFRgRFy
 pG5iBKdELbcdjFPeftA7xMjEwXiIUYKDWUmEV2TKowQh3pTEyqrUovz4otKc1OJDjKbA8J3I
 LCWanA9Mynkl8YamRmZmBpamFqZmRhZK4rwc7IcShATSE0tSs1NTC1KLYPqYODilGpi6Q5IP
 XWItunvF2q3Jb4qtaqGkYk4w+6dMgRNbNvtMb90mFhyYP/H6/l/TX6wNE1Hk+LXs+eHX60z1
 w6004pXjPvNcO+G448wv7/P3D83TjFj8XiqHZav8KsvsDz5xb/Ripltfv6Rb6P/91eL/LeYR
 rvOcrDjvbjN7NadvvlzuRlZp15JTrl+Z5z6bLVIaNyPcnMlr4r5PGXsz6zkDJ/SnJ5qGf5j2
 WIdljUpe8Mezm+0LBF3+P2G46bDI0/nrkd9p3L7pAmee5W3qPd6joPVM6rHuYyXDtNcmtflv
 bmnftjjMYvTgTrzpZkllU+GQEjml9UxzfdUV4sS7TjEwyTIKbJFZtYS9Qy1xvvHGF0osxRmJ
 hlrMRcWJAHpsAAUSBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrHLMWRmVeSWpSXmKPExsWy7bCSvO6EXY8TDJ5M4bF4MG8bm8Xl/doW
 N361sVpceNrDZnH+/AZ2iwmrvrFYrD1yl91i550TzA4cHptWdbJ5bF5S79G3ZRWjx/Eb25kC
 WKK4bFJSczLLUov07RK4MtpX/2EteMxR8XGlWwPjBPYuRk4OCQETie2rPjJ1MXJxCAnsZpSY
 8XsyVEJW4tm7HVC2sMT9liOsEEXvGSWOb73DBJJgE9CV2PL8FSOILSJQInF99l9mkCJmgXOM
 EpevP2UDSQgLWEt8nDYPbBKLgKrE8p47zCA2r4C9xJ7j01ggNshLnFp2kAkiLihxcuYTsDgz
 ULx562zmCYx8s5CkZiFJLWBkWsUomVpQnJueW2xYYJiXWq5XnJhbXJqXrpecn7uJERykWpo7
 GLev+qB3iJGJg/EQowQHs5IIr8iURwlCvCmJlVWpRfnxRaU5qcWHGKU5WJTEeS90nYwXEkhP
 LEnNTk0tSC2CyTJxcEo1MLVkHpl9N7lidnORzXl99Tw7vgkX5ylMa74jO9lgUrHg+XcSpj/1
 eTOsG5hOlU9UbUiaeu7N2T1Jay8F8lZE7m+P+n0p0saHwaDryJY9d9kqA/VD3YU07/n9XyAe
 vCn6jozeCp4ZvVPy65cXP8+9Fbq9dL+K//2LFhy3GbaWfHv9yHpvaaIC26UvPDO7g92nrTOd
 /Vrvx0fnmTsmd98wf7rIcNN/C2Nfdxm5s5G6esVah4Ji1dnZ6irXVGXOsA3+UD5lbfm1VyrP
 liy7nM/7znPPGufiJUdZl8oXO76zUpN3sEtkujuTo09BWeONZPQPSYOa/tWt8/w575oGRkiK
 NLIKx7Po7fPVOnl3n9lkJZbijERDLeai4kQA1Q16scECAAA=
X-CMS-MailID: 20210706020608epcas2p1ff6e0073edfa43de92ebd6c754df18cf
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20210706020608epcas2p1ff6e0073edfa43de92ebd6c754df18cf
References: <CGME20210706020608epcas2p1ff6e0073edfa43de92ebd6c754df18cf@epcas2p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210705_190618_074549_B5E8ECBC 
X-CRM114-Status: GOOD (  14.31  )
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
