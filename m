Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95E18C43334
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jun 2022 07:32:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=GRWON0ZXtJNQd56BLEcYwM7GM/2rKGMR6m5i4OpKQAU=; b=buEYJ30AExG6Hd
	Zq7L+KDuJM9WBl3pQHo+g0bFqMs+JlF9jlxjS3/b+qPfyw9kdaIFd0Ww5QG67Zd5RtJiU0+RMscoG
	GwEB0slcyOQzXdflum0EtbWMNHPk9IBeGoTkAsg2kyQfOm7yvX68oJ2l7LEizOY5YtjX2Ja1Aj60w
	khU9afGx3d78Mn7212Gd+pqDwjI+u8m5GAU8LvbEN1ESLvdLF2jpQhicA1befTs5LHB5XeYoGtNCM
	zzCGYg+zNRC4X6zn4Y19Q6ymJYibywGhVXwWrL4XjAkrwgKA9aalvIuEqr2SjR3+hmt1/4VLI8/6R
	HtYZZU/6lAskx5dimtzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzZ7s-006RSH-U1; Fri, 10 Jun 2022 07:32:12 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzZ7q-006RPW-68
	for linux-phy@lists.infradead.org; Fri, 10 Jun 2022 07:32:12 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20220610073203epoutp011eff38fed2c02391861966ca7b7afa64~3Mfa-pqON0689806898epoutp01B
	for <linux-phy@lists.infradead.org>; Fri, 10 Jun 2022 07:32:03 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20220610073203epoutp011eff38fed2c02391861966ca7b7afa64~3Mfa-pqON0689806898epoutp01B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1654846323;
	bh=txhypdCSGxcpzunLj6FnsUocQ8uwPEWPghvi9lfqylE=;
	h=From:To:Cc:Subject:Date:References:From;
	b=Zkg6g4Kj5pNm/Ud0FKxCwyUQOHX3fKpFUVia3DBvhYjeqw4sjFACaMGoIHQ1Vm7S9
	 EqNbwZaMJhHgmlbU4onQ1eB8GAJD1Aol8j7lrbdN8JgP0VoTgV+0VTZla7mrGBoZzv
	 Ti6f+8f4nkW2XOnrdzS6SrSnCqJnDVD0g2wRkZ+I=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTP id
	20220610073203epcas5p48b1d21de23860ce0d8c420bb1c5b7244~3MfaaZ9Vs0315403154epcas5p4-;
	Fri, 10 Jun 2022 07:32:03 +0000 (GMT)
Received: from epsmges5p3new.samsung.com (unknown [182.195.38.183]) by
	epsnrtp1.localdomain (Postfix) with ESMTP id 4LKCMf3nWFz4x9QK; Fri, 10 Jun
	2022 07:31:58 +0000 (GMT)
Received: from epcas5p1.samsung.com ( [182.195.41.39]) by
	epsmges5p3new.samsung.com (Symantec Messaging Gateway) with SMTP id
	FC.C4.09762.C63F2A26; Fri, 10 Jun 2022 16:31:56 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
	20220610073155epcas5p397e45ae128b29d3f99942fddf9afc0a3~3MfThxQSA2825728257epcas5p37;
	Fri, 10 Jun 2022 07:31:55 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
	epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20220610073155epsmtrp29ff30484576b9233b60e71ee34d1ab6f~3MfTglCet1438114381epsmtrp2c;
	Fri, 10 Jun 2022 07:31:55 +0000 (GMT)
X-AuditID: b6c32a4b-1fdff70000002622-c4-62a2f36c7a6c
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
	epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
	3A.3E.08924.B63F2A26; Fri, 10 Jun 2022 16:31:55 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
	[107.108.73.139]) by epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20220610073153epsmtip132666b6b611e3139683920ed3d69e244~3MfRrOSR92477624776epsmtip1a;
	Fri, 10 Jun 2022 07:31:53 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org, avri.altman@wdc.com,
	bvanassche@acm.org, martin.petersen@oracle.com, chanho61.park@samsung.com,
	pankaj.dubey@samsung.com, Alim Akhtar <alim.akhtar@samsung.com>
Subject: [PATCH v3 0/6] Add support for UFS controller found in FSD SoC
Date: Fri, 10 Jun 2022 12:59:18 +0530
Message-Id: <20220610072924.12362-1-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrOKsWRmVeSWpSXmKPExsWy7bCmum7O50VJBh/nKVg8mLeNzeLlz6ts
	FtM+/GS2uLxf22L+kXOsFn0vHjJbbHp8jdXi8q45bBYTVn1jsei+voPNYvnxf0wWi7Z+Ybdo
	3XuE3WLnnRPMDnwel694e2xa1cnmcefaHjaPzUvqPT4+vcXi0bdlFaPH501yHu0HupkCOKKy
	bTJSE1NSixRS85LzUzLz0m2VvIPjneNNzQwMdQ0tLcyVFPISc1NtlVx8AnTdMnOArlZSKEvM
	KQUKBSQWFyvp29kU5ZeWpCpk5BeX2CqlFqTkFJgU6BUn5haX5qXr5aWWWBkaGBiZAhUmZGc8
	vtrCXnCRp+LR7J1sDYzXObsYOTkkBEwkju9dwtLFyMUhJLCbUeLP3gOsEM4nRonnx9vZIZzP
	jBKbtn1hhGmZvbuBCSKxi1Hi5J6TbBBOC5PE7c0PwarYBLQl7k7fAlYlItDMKHGwYxeYwyzQ
	xySx5PZtVpAqYQF3iWPte8A6WARUJVp7trGB2LwCNhIT5hxggtgnL7F6wwFmkGYJga/sEidb
	7rFBJFwk9hx+zwJhC0u8Or6FHcKWkvj8bi9QDQeQ7SGx6I8URDhD4u3y9VA/2EscuDKHBaSE
	WUBTYv0ufZAwswCfRO/vJ0wQnbwSHW1CENWqEs3vrkItkpaY2N3NCmF7SKzq2Qx2pZBArMSJ
	uY3sExhlZiEMXcDIuIpRMrWgODc9tdi0wDgvtRweO8n5uZsYwSlQy3sH46MHH/QOMTJxMB5i
	lOBgVhLhDbi9KEmINyWxsiq1KD++qDQntfgQoykwlCYyS4km5wOTcF5JvKGJpYGJmZmZiaWx
	maGSOK/A/8YkIYH0xJLU7NTUgtQimD4mDk6pBibeck4ttrNZf60e21kt33xeQk7/k3pQybOU
	TynZ6hqG4n90/yn+snq38vCjXidpAekOkR3pb5++ij1Q6DrD7x5Tm5zt1EJ/bY8fu5XWHv1Z
	djauwMYwSXzH04cbH73jOF5mGmfud65Q7iVjyPPdAV/kU82ZTK6vW95p93tqwazGPv5DAZpf
	0yPPHG8Wm6yiFn4pUGnmmtJMTaMm0SkHBfhPuvn4V0nPsmv44zvZ9eiPO5M1TEQPcfPXiv6T
	+ar5tyNuafe6qL+xpwN6eTymTCh+e/s0N6fGp+icMxIefC3TmlbO/HJTiY9v91URzcirH2Mf
	HNp+oUWPc/fTyZapG099uDFzX6wRT031QqV9B5RYijMSDbWYi4oTAZvAZ64KBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrHLMWRmVeSWpSXmKPExsWy7bCSnG7250VJBgsuGls8mLeNzeLlz6ts
	FtM+/GS2uLxf22L+kXOsFn0vHjJbbHp8jdXi8q45bBYTVn1jsei+voPNYvnxf0wWi7Z+Ybdo
	3XuE3WLnnRPMDnwel694e2xa1cnmcefaHjaPzUvqPT4+vcXi0bdlFaPH501yHu0HupkCOKK4
	bFJSczLLUov07RK4Mh5fbWEvuMhT8Wj2TrYGxuucXYycHBICJhKzdzcwdTFycQgJ7GCUaP0/
	kxkiIS1xfeMEdghbWGLlv+dgtpBAE5PEzPu5IDabgLbE3elbmEBsEYF2Ron729lABjELzGKS
	eD/pCSNIQljAXeJY+x4wm0VAVaK1ZxsbiM0rYCMxYc4BJogF8hKrNxxgnsDIs4CRYRWjZGpB
	cW56brFhgVFearlecWJucWleul5yfu4mRnCQamntYNyz6oPeIUYmDsZDjBIczEoivAG3FyUJ
	8aYkVlalFuXHF5XmpBYfYpTmYFES573QdTJeSCA9sSQ1OzW1ILUIJsvEwSnVwNQySVMxNrBI
	PODvnG8tP9yS8nsLe4sSchkNDn14sc/qRf2n35sn24of4leaxXXz96+zvg/uqUntD18aJD1z
	Wlpwe7k8v19JhSFHS67nPzELVkEmIbsnm484Fe+OSPY/7sKY+Hnafr778x9PfeEy6xD/Nm+R
	1NJtZ1Q9bBY+FdhkHKJy7H+r+JsDNUYNrNNYOqLv3WwQT2Bl6Nz8ZsvLW8XZt8UexPM+O/Q4
	dH1y2iwLmVLJqqOB97lSrhfOSd37rND1R2u5jN/3ZY/Wn+hy01GaL7rYapJ42haW5sSZezcZ
	mXtUeS+yDFuq2PnrueGaU3N7iqclXihRdrsj5q99sWmKhpH9w7quTU23TQ7WKrEUZyQaajEX
	FScCAGPXBtnBAgAA
X-CMS-MailID: 20220610073155epcas5p397e45ae128b29d3f99942fddf9afc0a3
X-Msg-Generator: CA
CMS-TYPE: 105P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220610073155epcas5p397e45ae128b29d3f99942fddf9afc0a3
References: <CGME20220610073155epcas5p397e45ae128b29d3f99942fddf9afc0a3@epcas5p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_003210_898583_CD6D322C 
X-CRM114-Status: GOOD (  15.55  )
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
 drivers/phy/samsung/phy-samsung-ufs.c         |   6 +-
 drivers/phy/samsung/phy-samsung-ufs.h         |   3 +-
 drivers/ufs/host/ufs-exynos.c                 | 143 +++++++++++++++++-
 drivers/ufs/host/ufs-exynos.h                 |   1 +
 10 files changed, 216 insertions(+), 3 deletions(-)
 create mode 100644 drivers/phy/samsung/phy-fsd-ufs.c


base-commit: ff539ac73ea559a8c146d99ab14bfcaddd30547a
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
