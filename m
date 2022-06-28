Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19E17C43334
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jun 2022 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=rHkmJHIiUkC3MIbjmmMM07kChpQ9Kbx5DxxAm10cTAM=; b=TG4jaT/CiLCgh4
	S1cLlWSqcdVlLIx2N3/6xNR3jzjzLjH3rY70O5/AP6n5u+POB9HXyRv67tOtZsN2//M9AUkYr97L0
	DVKT5F/wSWB6DTRRDhYIHaCNgceO+eDDZlrhhbr5d1t5q6HblIT7nY/CzJCpRrIzzGlK2GfByqXf/
	uh1r9qKCrkK6ax+qV8nbtvqxKao5NVGpYXftPIh/HzmzXiNr8Jg0yoSL3H8hnCApRkwV3Om5PzQfu
	sMsjcCfbHH9e08xxOspH9KIMUERCDMGoXRtYFWBnoZjreEs3KIfskowWHJ4tdrMkM1Hclc9DiiVeT
	pRo/lJpuD6YaTvztyI6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6JKG-008Kaf-9e; Tue, 28 Jun 2022 22:04:52 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6JKC-008KY1-CK
	for linux-phy@lists.infradead.org; Tue, 28 Jun 2022 22:04:50 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
	by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20220628220438euoutp0273b2ab29f9fc010a6dfbe8e7eed8b80b~86Aa9gz-s1156311563euoutp02N
	for <linux-phy@lists.infradead.org>; Tue, 28 Jun 2022 22:04:38 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20220628220438euoutp0273b2ab29f9fc010a6dfbe8e7eed8b80b~86Aa9gz-s1156311563euoutp02N
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1656453878;
	bh=XEuq3SoUCY32rfJJrgZxojZUmItQVq6RytvcYj0hSbs=;
	h=From:To:Cc:Subject:Date:References:From;
	b=Y+BJsk26H5ToRd6tJGulIcbbwZdtDuj6xhebV+W5pzpP/DHvBE6oyQ0RyeuN4PtyI
	 o24SWBAtVq1KfE+DolHPDpwsNWuUygLnH4huMPKxlmY66y34v+ep2scyIFdHAXY5hD
	 Wz5VVPzDRmjBM4UKGinUIgQB9LUvEVMJuR90VpsQ=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTP id
	20220628220437eucas1p1998d971649c75eed01ed6305cbd7dd8b~86AaKlB_l1022110221eucas1p13;
	Tue, 28 Jun 2022 22:04:37 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
	eusmges2new.samsung.com (EUCPMTA) with SMTP id B3.DB.10067.5FA7BB26; Tue, 28
	Jun 2022 23:04:37 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
	20220628220437eucas1p2c478751458323f93a71050c4a949f12e~86AZy9Opa2730027300eucas1p2A;
	Tue, 28 Jun 2022 22:04:37 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
	eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
	20220628220437eusmtrp1b00e467e1f8bff9ce14904891ffe86d7~86AZx69k03076730767eusmtrp1_;
	Tue, 28 Jun 2022 22:04:37 +0000 (GMT)
X-AuditID: cbfec7f4-dd7ff70000002753-db-62bb7af5cce6
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
	eusmgms2.samsung.com (EUCPMTA) with SMTP id 71.51.09038.5FA7BB26; Tue, 28
	Jun 2022 23:04:37 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
	eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20220628220436eusmtip286b1356ea04d39555a4a5a75b064c1f1~86AZKJcH31092910929eusmtip2b;
	Tue, 28 Jun 2022 22:04:36 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: linux-pci@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: Marek Szyprowski <m.szyprowski@samsung.com>, Jingoo Han
	<jingoohan1@gmail.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, Rob
	Herring <robh@kernel.org>, =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?=
	<kw@linux.com>, Bjorn Helgaas <bhelgaas@google.com>, Krzysztof Kozlowski
	<krzysztof.kozlowski@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>,
	Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Subject: [PATCH 1/2] phy: samsung: phy-exynos-pcie: sanitize init/power_on
 callbacks
Date: Wed, 29 Jun 2022 00:04:08 +0200
Message-Id: <20220628220409.26545-1-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSa1BMcRjG53/O7jmn1XLajf5EWArNlJCZY1xzGWf4QI3xoYY6OF1oK3va
	LRkjNtJaizK23Sgq00XZbKm226hoMysSk1uNmBjTZSgJubadxbfnfZ7nN8+Xl0AlZ4UziKiY
	eFYRw0TLMJGgsuXbA5/PSbV7/DLavame7EqMyj8eSRWOGHCq/a0Wo+r7b+FUsva7kGrLtmLU
	ueJRAZX5sAGhUn6kCKjSO9049buuGqcsXa3oOjFtMXbj9BWzkjYXp2F0V2cdRvc+0SN0ef5R
	WldRDGjrsyqE/mT22O4ULFq1j42OUrGKxWvCRJEDneVoXNO0xKL3ZwTJ4KJUA5wISPrDosYc
	RANEhIQsBLDid5uQP0YArK0aBPzxCcCx0X78L3Jn+KkDKQCwsKUZ/4eUtJ0A9hZGLoGaQQ1m
	164kA8tzNai9hJIFKMwrvSC0B1JyJ+zIbJwoCUhPaOgbmoDF5Gr4MzvfMTcbXi+7PQFDspWA
	VTfTUD7YCGtHrYDXUthnrXAAM6EtQyvQAGJcx8Kfmct4OxF29pc40JWw68EYZq+g5CJoqlnM
	2wHw1bGrCE9Ohs8GXew2Oi7TK/Uob4vhqZMSvu0FjdYb/zYb2zscFRoa1IF2W0Lugr3G09g5
	4GH8P3UFgGLgxio5eQTLLY1hE3w5Rs4pYyJ898bKzWD8Z2y/rCPVoKBvyLcJIARoApBAZa7i
	q/cteyTifcyhJFYRG6pQRrNcE3AnBDI38d6oMkZCRjDx7AGWjWMVf1OEcJqRjJw/8eRxhcst
	2+t4n0kpN4ryJ1eH5MUe2X9wQPeyMy7B0JzrVZLUor8UINN7e69NCp4bOhUL37pDury8YV3g
	nJsLRf3C8PSX9VlBzpzJv1SdmrKhF4Z/HPbUpgadcskp29Qb3pFD01NCBi7BrOv1gUjg7vlP
	X0C/5VFaq/mNOjXxbrdyh236MnyO7YunXv38kXuEYb0uLEERaqIUhZXK9CGpSf7usO4yk9V1
	wBKfm5B291prtbP/i57H97xq5N9dfT4Me8jeWA+2q6bMcttY5ZylqvP7mqw2Bl2euwKXpwfU
	cJptphXu4iPZee8DNuvUqkyPLbJ5nxf0WOrDulWvzo7JBFwks8QbVXDMH/uuzXSiAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrBLMWRmVeSWpSXmKPExsVy+t/xe7pfq3YnGfw5wmPxYN42NoslTRkW
	K77MZLe48LSHzWLv663sFg09v1ktzs47zmYxYdU3FosZ5/cxWbT8aWGxWHvkLrvF/z072C12
	3jnB7MDrsXPWXXaPBZtKPTat6mTzuHNtD5vHkyvTmTw2L6n36NuyitHj+I3tTB6fN8kFcEbp
	2RTll5akKmTkF5fYKkUbWhjpGVpa6BmZWOoZGpvHWhmZKunb2aSk5mSWpRbp2yXoZby5tpm5
	4JBYxcoXvSwNjNOEuxg5OSQETCSOfLrO1MXIxSEksJRR4uSVg0wQCRmJk9MaWCFsYYk/17rY
	IIo+MUpc+7MVLMEmYCjR9RYkwckhIpAssfn8D7AiZoH1zBL7r18HmyQsECKxpKeLBcRmEVCV
	mPnqIyOIzStgK/F33hJ2iA3yEqs3HGCewMizgJFhFaNIamlxbnpusZFecWJucWleul5yfu4m
	RmCQbzv2c8sOxpWvPuodYmTiYDzEKMHBrCTCu/DMziQh3pTEyqrUovz4otKc1OJDjKZA+yYy
	S4km5wPjLK8k3tDMwNTQxMzSwNTSzFhJnNezoCNRSCA9sSQ1OzW1ILUIpo+Jg1OqgSniwMNL
	jwPWT7jOI9d3Lm2XQ4LyvjvBXR0b5D277Pn/2/ytNli4Xf73tWM6N4MW38gPXvPkc65AbZxe
	c/hXCVelOxEW8xaV5D+pdbct3Pd8u9c0gS0dDqsPdu9klzR6XHBAPT3yQgaLwcSfMXEdnhcv
	cC0LM668/eCWrQ7/lOmGLBNSHBiCm+cpvCnVOPpt7587XTW/uGuFD8iuSb/o0Syo6hUbYfPi
	3MyDbi+mb5yxeep/no0PJuocKXfUNVeW9Whcdc5XZ8aJC6uS1t+deSp378x7zkZpm05w/9zr
	v/SrQZHsL7tLfoyeqYvcwkx2dbO03EuP8AyQXnco7VBMW2Mne2Ro1fwNjtx7OBLaVimxFGck
	GmoxFxUnAgCPG9qD+wIAAA==
X-CMS-MailID: 20220628220437eucas1p2c478751458323f93a71050c4a949f12e
X-Msg-Generator: CA
X-RootMTR: 20220628220437eucas1p2c478751458323f93a71050c4a949f12e
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20220628220437eucas1p2c478751458323f93a71050c4a949f12e
References: <CGME20220628220437eucas1p2c478751458323f93a71050c4a949f12e@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_150448_735212_79FEBCBE 
X-CRM114-Status: GOOD (  12.64  )
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

The exynos-pcie driver called phy_power_on() and then phy_init() for some
historical reasons. However the generic PHY framework assumes that the
proper sequence is to call phy_init() first, then phy_power_on(). The
operations done by both functions should be considered as one action and
as such they are called by the exynos-pcie driver (without doing anything
between them). The initialization is just a sequence of register writes,
which cannot be altered, without breaking the hardware operation.

To match the generic PHY framework requirement, simply move all register
writes to the phy_init()/phy_exit() and drop power_on()/power_off()
callbacks. This way the driver will also work with the old (incorrect)
PHY initialization call sequence.

Reported-by: Bjorn Helgaas <helgaas@kernel.org>
Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
 drivers/phy/samsung/phy-exynos-pcie.c | 25 +++++++++----------------
 1 file changed, 9 insertions(+), 16 deletions(-)

diff --git a/drivers/phy/samsung/phy-exynos-pcie.c b/drivers/phy/samsung/phy-exynos-pcie.c
index 578cfe07d07a..53c9230c2907 100644
--- a/drivers/phy/samsung/phy-exynos-pcie.c
+++ b/drivers/phy/samsung/phy-exynos-pcie.c
@@ -51,6 +51,13 @@ static int exynos5433_pcie_phy_init(struct phy *phy)
 {
 	struct exynos_pcie_phy *ep = phy_get_drvdata(phy);
 
+	regmap_update_bits(ep->pmureg, EXYNOS5433_PMU_PCIE_PHY_OFFSET,
+			   BIT(0), 1);
+	regmap_update_bits(ep->fsysreg, PCIE_EXYNOS5433_PHY_GLOBAL_RESET,
+			   PCIE_APP_REQ_EXIT_L1_MODE, 0);
+	regmap_update_bits(ep->fsysreg, PCIE_EXYNOS5433_PHY_L1SUB_CM_CON,
+			   PCIE_REFCLK_GATING_EN, 0);
+
 	regmap_update_bits(ep->fsysreg,	PCIE_EXYNOS5433_PHY_COMMON_RESET,
 			   PCIE_PHY_RESET, 1);
 	regmap_update_bits(ep->fsysreg, PCIE_EXYNOS5433_PHY_MAC_RESET,
@@ -109,20 +116,7 @@ static int exynos5433_pcie_phy_init(struct phy *phy)
 	return 0;
 }
 
-static int exynos5433_pcie_phy_power_on(struct phy *phy)
-{
-	struct exynos_pcie_phy *ep = phy_get_drvdata(phy);
-
-	regmap_update_bits(ep->pmureg, EXYNOS5433_PMU_PCIE_PHY_OFFSET,
-			   BIT(0), 1);
-	regmap_update_bits(ep->fsysreg, PCIE_EXYNOS5433_PHY_GLOBAL_RESET,
-			   PCIE_APP_REQ_EXIT_L1_MODE, 0);
-	regmap_update_bits(ep->fsysreg, PCIE_EXYNOS5433_PHY_L1SUB_CM_CON,
-			   PCIE_REFCLK_GATING_EN, 0);
-	return 0;
-}
-
-static int exynos5433_pcie_phy_power_off(struct phy *phy)
+static int exynos5433_pcie_phy_exit(struct phy *phy)
 {
 	struct exynos_pcie_phy *ep = phy_get_drvdata(phy);
 
@@ -135,8 +129,7 @@ static int exynos5433_pcie_phy_power_off(struct phy *phy)
 
 static const struct phy_ops exynos5433_phy_ops = {
 	.init		= exynos5433_pcie_phy_init,
-	.power_on	= exynos5433_pcie_phy_power_on,
-	.power_off	= exynos5433_pcie_phy_power_off,
+	.exit		= exynos5433_pcie_phy_exit,
 	.owner		= THIS_MODULE,
 };
 
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
