Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D22D2C433FE
	for <linux-phy@archiver.kernel.org>; Tue, 31 May 2022 12:20:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-Id:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=ExwNT2kzTOMmb96GY6OGA9z49XfqOfS9SIgk21h61nw=; b=nrKM6YErCAE1mY
	MpNLVIiCv0aqm/fFXCfk/ZcLx/Q28sGxcu+igtUrTs2uC/BoW2n2LynhNZ//f3JRNRIHWpUfgkKJS
	gXhaDC/ZHJDhCi8hwocA46jCuzT0O9vJAB8fY5a9NJNtnxliTi0n/TXuPYnsFAbROP5h685WYPzZy
	KXAgQdA5gjr2lF2HVRTVJNZB2M587EUhYAbgT3UKsttUufUCWBRAgjhot3Z3nvXmV2CRKRDPZS4Xq
	vd5KHwb0BSIAjwT7vDJUcUjf+rW+zb1CezIOEUdBvPxb4PsbPABJDUhVeRuNpx6MA0A1Zsz29Oe82
	NO1NJ8iKImQSplwMdaBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw0r9-00AhB2-5R; Tue, 31 May 2022 12:20:15 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw0qS-00AgtN-Qr
	for linux-phy@lists.infradead.org; Tue, 31 May 2022 12:19:34 +0000
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20220531121924epoutp024009045c546be45a6b27a98eb7b5e5bd~0L9dK9nWT0559005590epoutp02A
	for <linux-phy@lists.infradead.org>; Tue, 31 May 2022 12:19:24 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20220531121924epoutp024009045c546be45a6b27a98eb7b5e5bd~0L9dK9nWT0559005590epoutp02A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1653999564;
	bh=zDj968qjhoitzucIx3DnEJjQCteSdo3vwlysv6LRSXU=;
	h=From:To:Cc:Subject:Date:References:From;
	b=Rcqu5QftplxiB1oynE6jR4v6vjqi02W/+IKU2PKHZBAG+llKYCURr2soK4l+HneZV
	 ocpdIImxKtH6b7sTwQJ6qoB2i2u2dQIkZ4BGOkChkkqJetlloif78w4tQrVoHdX2Ml
	 mqm5O8Ff1doISuJUmODs6xP1bQTmdazG3nLMzqT8=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
	epcas2p2.samsung.com (KnoxPortal) with ESMTP id
	20220531121924epcas2p22dbe2fab4f1ebb58cb33a7a133ca7acc~0L9cg-a8f1560015600epcas2p2n;
	Tue, 31 May 2022 12:19:24 +0000 (GMT)
Received: from epsmges2p2.samsung.com (unknown [182.195.36.99]) by
	epsnrtp1.localdomain (Postfix) with ESMTP id 4LCBCt5Ctkz4x9Pv; Tue, 31 May
	2022 12:19:22 +0000 (GMT)
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
	epsmges2p2.samsung.com (Symantec Messaging Gateway) with SMTP id
	CC.BA.09764.AC706926; Tue, 31 May 2022 21:19:22 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
	epcas2p1.samsung.com (KnoxPortal) with ESMTPA id
	20220531121922epcas2p1441278a45ff7ed662e6ec3474869bf40~0L9avGv0U0523905239epcas2p1_;
	Tue, 31 May 2022 12:19:22 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
	epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20220531121922epsmtrp2fd1220f7607e60b77825566d394e8639~0L9auWAGR2232122321epsmtrp2X;
	Tue, 31 May 2022 12:19:22 +0000 (GMT)
X-AuditID: b6c32a46-f75ff70000002624-ae-629607ca81b6
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
	epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	E1.E1.11276.AC706926; Tue, 31 May 2022 21:19:22 +0900 (KST)
Received: from localhost.localdomain (unknown [10.229.9.51]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20220531121921epsmtip1444282c0b97a0dcce6235e94afacfc0c~0L9afl_lu1653516535epsmtip1I;
	Tue, 31 May 2022 12:19:21 +0000 (GMT)
From: Chanho Park <chanho61.park@samsung.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Alim Akhtar
	<alim.akhtar@samsung.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof
	Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, Chanho Park
	<chanho61.park@samsung.com>
Subject: [PATCH 0/4] support secondary ufs for Exynos Auto v9 SoC
Date: Tue, 31 May 2022 21:19:09 +0900
Message-Id: <20220531121913.48722-1-chanho61.park@samsung.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprIJsWRmVeSWpSXmKPExsWy7bCmme4p9mlJBo2PNS0ezNvGZnF5v7bF
	/CPnWC0uPO1hs+h78ZDZYu/rrewWmx5fY7WYsOobi0Xr3iPsFjvvnGB24PLYtKqTzePOtT1s
	HpuX1Hv0bVnF6HH8xnYmj8+b5ALYorJtMlITU1KLFFLzkvNTMvPSbZW8g+Od403NDAx1DS0t
	zJUU8hJzU22VXHwCdN0yc4AOU1IoS8wpBQoFJBYXK+nb2RTll5akKmTkF5fYKqUWpOQUmBfo
	FSfmFpfmpevlpZZYGRoYGJkCFSZkZ0xb3sVUMJu94vxqiwbGp6xdjJwcEgImErcmzQeyuTiE
	BHYwSjyasJ4RwvnEKLF443s2COcbo8TPWfMYYVpWPbnNDJHYyyhxf81BqKqPjBLHWj+zgFSx
	CehKbHn+CmyWiEA7k8SJe3PZQRxmgQmMEhcv7WACqRIWcJT48mo+O4jNIqAq8bRlNjOIzStg
	J7Hx1HMWiH3yEhvm90LFBSVOznwCFmcGijdvhaiXEHjJLrHsXySE7SLxY80RJghbWOLV8S3s
	ELaUxOd3e9kg7GKJpbM+MYEcJCHQwChxedsvqISxxKxn7UBncwAt0JRYv0sfxJQQUJY4cgtq
	LZ9Ex+G/7BBhXomONiGIRnWJA9unQ10sK9E95zMrRImHxBSIw4QEYiVWrF/FOoFRfhaSX2Yh
	+WUWwtoFjMyrGMVSC4pz01OLjQqM4JGanJ+7iRGcNrXcdjBOeftB7xAjEwfjIUYJDmYlEd6S
	XVOThHhTEiurUovy44tKc1KLDzGaAkN3IrOUaHI+MHHnlcQbmlgamJiZGZobmRqYK4nzeqVs
	SBQSSE8sSc1OTS1ILYLpY+LglGpg8nroEXAj9dm61XJHSr79OzHrIue9ry+5xXccuhG0oH1O
	Zmbh9J8qLbUNvYU3rj6odvv+ZwPP0rLkRP9EpmjpV1Y3VaM2Gp33X7tYa9KiYy1+P1ecfH3Z
	6pvfgR3ti7+u9w1w1/3MUrfFoXbPbKni4x9SDZUyZPm/Xj8nUuvGvnqBWMGijCCPmet2R06x
	fMDVqXuE8bXCvP1Wrd52VpKeXH7bEj2niQit/liq3zf3pOe/OxvYOHMeBV47O/to/pXuVT8+
	e4XIhMx8/OGXO/+Pks4HB+7f6d/erPJUQuRtavLf6kv7Jz9M7Js7sZyVhenpKYaaxr44Ts+n
	LJ1Lnf/zfH/7cI1m+hZDHtF2EaFPPEosxRmJhlrMRcWJABXkEmMkBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrILMWRmVeSWpSXmKPExsWy7bCSnO4p9mlJBle/c1s8mLeNzeLyfm2L
	+UfOsVpceNrDZtH34iGzxd7XW9ktNj2+xmoxYdU3FovWvUfYLXbeOcHswOWxaVUnm8eda3vY
	PDYvqffo27KK0eP4je1MHp83yQWwRXHZpKTmZJalFunbJXBlTFvexVQwm73i/GqLBsanrF2M
	nBwSAiYSq57cZu5i5OIQEtjNKLGh9z9UQlbi2bsd7BC2sMT9liOsEEXvGSUenVzOCJJgE9CV
	2PL8FSNIQkSgm0lizqZ+JpAEs8AkRok/fyNAbGEBR4kvr+aDTWIRUJV42jKbGcTmFbCT2Hjq
	OQvEBnmJDfN7oeKCEidnPmGBmCMv0bx1NvMERr5ZSFKzkKQWMDKtYpRMLSjOTc8tNiwwzEst
	1ytOzC0uzUvXS87P3cQIDmUtzR2M21d90DvEyMTBeIhRgoNZSYS3ZNfUJCHelMTKqtSi/Pii
	0pzU4kOM0hwsSuK8F7pOxgsJpCeWpGanphakFsFkmTg4pRqYJk7Q3l182yrJyqaPvftfIJvZ
	lTdTylsFvky/ZXbqQ4z7Zs2+p5cuBR28F+weM5epJeWYstGbqJOV+p7uZ+XyGTx1jF6x5D5V
	0CnTerZ04p3avycyHujZx4YsX98zpfKp6EWzpXVTbDcaOvw0mLFk0XlFW6W1DCu0nq/eK5Ts
	/Wb6JyneCUIpEY4vlB0eLY/iWmx0W1G07HU4x4IdM8/fLbdlMuX0qDk0/4X5A8PCibxela27
	ao6/YY9S0L/9L/XW6qbpE7+2KrRs3lNqzBH4wOLHFa71fp2Wf75MZc/cXl9mZp9aml9vZlJZ
	2nNQr7mS6dKbUE6+7Nb3b0N19n7vUmvy2GT3ZzWDRPv64v9KLMUZiYZazEXFiQBWfLjh1AIA
	AA==
X-CMS-MailID: 20220531121922epcas2p1441278a45ff7ed662e6ec3474869bf40
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220531121922epcas2p1441278a45ff7ed662e6ec3474869bf40
References: <CGME20220531121922epcas2p1441278a45ff7ed662e6ec3474869bf40@epcas2p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_051933_340870_5B773089 
X-CRM114-Status: GOOD (  11.68  )
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

To support ufs #1 for Exynos Auto v9 SoC, we need to control its own pmu
register. So, we need to specify the offset of the register via an
argument of syscon node.
Regarding UFS HCI driver, we need to specify different sysreg
configuration for UFS #1's io coherency setting.

Chanho Park (4):
  dt-bindings: phy: samsung,ufs-phy: make pmu-syscon as phandle-array
  phy: samsung: ufs: support secondary ufs phy
  arm64: dts: exynosautov9: add secondary ufs devices
  arm64: dts: exynosautov9-sadk: enable secondary ufs devices

 .../bindings/phy/samsung,ufs-phy.yaml         | 13 +++++---
 .../boot/dts/exynos/exynosautov9-sadk.dts     | 18 +++++++++++
 arch/arm64/boot/dts/exynos/exynosautov9.dtsi  | 32 +++++++++++++++++++
 drivers/phy/samsung/phy-samsung-ufs.c         |  7 +++-
 drivers/phy/samsung/phy-samsung-ufs.h         |  2 +-
 5 files changed, 66 insertions(+), 6 deletions(-)

-- 
2.36.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
