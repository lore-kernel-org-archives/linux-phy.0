Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16FA7C4332F
	for <linux-phy@archiver.kernel.org>; Tue, 31 May 2022 12:20:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mExD4NWtmYDZEVjq7yKVuGimxhU3mHzo/aYAdnEtLLc=; b=F0gGdm7N2s8GM4
	OaUOwOcLrfT8dDBuWDDKA4suyb0qdrEN92mtOgfHcHBZp6Qb3ca9GxZ+RRme+WzcNGW6MbHQ9Uh9X
	7+Kcl7X0KziS6T3VRzgbIFv4S6mHblnJP+/l2uIrYElebZFSHWwCIHnmy4wq1B+EM9jYXnFx6GzDg
	HeVAAlni36Fw1M3Igx3tV3+/+njVdoUs6MaGXCM/LGBtnLIzni8ISXqyP0I9WdJVM/E0K6N084C15
	tR4V8KpIEET/beqcQHA/VJYcbKXlDJkKt0Sl9j8EDYlD6mhC5wB4r//FRJoJcwDR3iI5tjhVojYz1
	UZk0oSP8/juT3PaJVMkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw0r9-00AhBG-Av; Tue, 31 May 2022 12:20:15 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw0qS-00AgtP-Qr
	for linux-phy@lists.infradead.org; Tue, 31 May 2022 12:19:35 +0000
Received: from epcas2p4.samsung.com (unknown [182.195.41.56])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20220531121924epoutp027ae8cefeab4380ddd3da355abfa93125~0L9c2liOq0559005590epoutp02-
	for <linux-phy@lists.infradead.org>; Tue, 31 May 2022 12:19:24 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20220531121924epoutp027ae8cefeab4380ddd3da355abfa93125~0L9c2liOq0559005590epoutp02-
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1653999564;
	bh=bt9eJGxpGB4Idj/b/nTRYM+1lQYvFBux+4s6f9TfviI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=RmraLzbI1Rb7xjM2FdHNb8Mh9RYAZhMAi7Cb71hxdPaJPneE27N+UmtMzNk7dfMeL
	 91H5U4eF7zwhYItDRwhGzDJJa1V+69l2IV80pc8vGnhXUz8MPvmM0AH5bKnPsnSrlJ
	 bnfAuFhYob3J5PVDmvTz8wphYB+W7zeHzlMWyo9g=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
	epcas2p2.samsung.com (KnoxPortal) with ESMTP id
	20220531121923epcas2p2f5b4fa0718e56e8da3dbc106277074de~0L9cUfRYH0530905309epcas2p2o;
	Tue, 31 May 2022 12:19:23 +0000 (GMT)
Received: from epsmges2p4.samsung.com (unknown [182.195.36.98]) by
	epsnrtp3.localdomain (Postfix) with ESMTP id 4LCBCv0x8fz4x9Pw; Tue, 31 May
	2022 12:19:23 +0000 (GMT)
Received: from epcas2p1.samsung.com ( [182.195.41.53]) by
	epsmges2p4.samsung.com (Symantec Messaging Gateway) with SMTP id
	94.47.09694.AC706926; Tue, 31 May 2022 21:19:23 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
	epcas2p3.samsung.com (KnoxPortal) with ESMTPA id
	20220531121922epcas2p3c37a39cd28f56326c4f3980ac76f3b5c~0L9aydBcu2954529545epcas2p3i;
	Tue, 31 May 2022 12:19:22 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
	epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20220531121922epsmtrp28584f6a8b587bf1972a25d6242bb4125~0L9awu5j62232122321epsmtrp2Y;
	Tue, 31 May 2022 12:19:22 +0000 (GMT)
X-AuditID: b6c32a48-495ff700000025de-03-629607ca9a85
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
	epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	02.E1.11276.AC706926; Tue, 31 May 2022 21:19:22 +0900 (KST)
Received: from localhost.localdomain (unknown [10.229.9.51]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20220531121922epsmtip1b78dddc886c7f487e577e85288b6c3ad~0L9apAUiq1600216002epsmtip1C;
	Tue, 31 May 2022 12:19:22 +0000 (GMT)
From: Chanho Park <chanho61.park@samsung.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Alim Akhtar
	<alim.akhtar@samsung.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof
	Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, Chanho Park
	<chanho61.park@samsung.com>
Subject: [PATCH 2/4] phy: samsung: ufs: support secondary ufs phy
Date: Tue, 31 May 2022 21:19:11 +0900
Message-Id: <20220531121913.48722-3-chanho61.park@samsung.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220531121913.48722-1-chanho61.park@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprLJsWRmVeSWpSXmKPExsWy7bCmqe5p9mlJBmf/MVo8mLeNzeLyfm2L
	+UfOsVpceNrDZtH34iGzxd7XW9ktNj2+xmoxYdU3FovWvUfYLXbeOcHswOWxaVUnm8eda3vY
	PDYvqffo27KK0eP4je1MHp83yQWwRWXbZKQmpqQWKaTmJeenZOal2yp5B8c7x5uaGRjqGlpa
	mCsp5CXmptoqufgE6Lpl5gAdpqRQlphTChQKSCwuVtK3synKLy1JVcjILy6xVUotSMkpMC/Q
	K07MLS7NS9fLSy2xMjQwMDIFKkzIztj05yhLwWv+io1b3RsYd/B2MXJwSAiYSKz6JtnFyMUh
	JLCDUeLC/xPMXYycQM4nRolvM8MhEt8YJbrWN7KAJEAa/lzZywiR2Mso8a7jExuE85FRou39
	fFaQKjYBXYktz1+BVYkItDNJnLg3lx3EYRaYwChx8dIOJpAqYQFHiV/zVoItZBFQldi6uIkR
	xOYVsJNYvWgH1D55iQ3ze5lBjuUUsJfYMsMOokRQ4uTMJ2AlzEAlzVtnM4PMlxBo5ZD4+mkH
	O0Svi0Tr352sELawxKvjW6DiUhKf3+1lg7CLJZbO+sQE0dzAKHF52y+ohLHErGftjCCLmQU0
	Jdbv0ocEmLLEkVtQe/kkOg7/ZYcI80p0tAlBNKpLHNg+Hep6WYnuOZ+hLvCQOLfrNAsksCYx
	Stzbf4plAqPCLCTvzELyziyExQsYmVcxiqUWFOempxYbFZjAIzg5P3cTIzidannsYJz99oPe
	IUYmDsZDjBIczEoivCW7piYJ8aYkVlalFuXHF5XmpBYfYjQFhvVEZinR5HxgQs8riTc0sTQw
	MTMzNDcyNTBXEuf1StmQKCSQnliSmp2aWpBaBNPHxMEp1cBkuFbJreKO/vRnp9S3JytOqDk1
	lVFlysemoidHb0rv5xHY+lOLUVj1CutHOwHe/0dOTe3J8y0280je3Kb9QeexiE97k4d+1bnA
	G3MduJYvSi9cIbZ8+62Px8ostgasev2J5cf9fS5J8VvbMlOqfsRp6ZgvWuV8WyrT78jHVXeX
	T5M7tO7VlK6dNxoNjqx/s+u6xbFVrsrKs/j3TVfhON/NI1eknf8y6UQiB+PtmS9VXPYExmU1
	m0eV5p3xlhf7eOJY4oPVLNbX4hX4NoqneN8ss5jOxpKjVKyQdVOxscsrfIZBg9f8lj5hobOr
	9t7kecaj7PB0vlCm/uyVbFFyzHcOPwhXWHak3j1LtcpmxzQlluKMREMt5qLiRACBnmXqMAQA
	AA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrBLMWRmVeSWpSXmKPExsWy7bCSnO4p9mlJBtc281s8mLeNzeLyfm2L
	+UfOsVpceNrDZtH34iGzxd7XW9ktNj2+xmoxYdU3FovWvUfYLXbeOcHswOWxaVUnm8eda3vY
	PDYvqffo27KK0eP4je1MHp83yQWwRXHZpKTmZJalFunbJXBlbPpzlKXgNX/Fxq3uDYw7eLsY
	OTkkBEwk/lzZy9jFyMUhJLCbUaJv7z1miISsxLN3O9ghbGGJ+y1HWCGK3jNKLJ65FCzBJqAr
	seX5K7BuEYFuJok5m/qZQBLMApMYJf78jQCxhQUcJX7NWwk2lUVAVWLr4iZGEJtXwE5i9aId
	LBAb5CU2zO8FquHg4BSwl9gyww4kLARUcmVqNytEuaDEyZlPWCDGy0s0b53NPIFRYBaS1Cwk
	qQWMTKsYJVMLinPTc4sNCwzzUsv1ihNzi0vz0vWS83M3MYIDX0tzB+P2VR/0DjEycTAeYpTg
	YFYS4S3ZNTVJiDclsbIqtSg/vqg0J7X4EKM0B4uSOO+FrpPxQgLpiSWp2ampBalFMFkmDk6p
	BqYzzN3yPqzfv6gVJxhN28K+onjdX2tldbbOwFsX5zdwuavwtndZCbhxiywoe+t1IK34xtqw
	S91xrvPE7nApcZzbkKi/KnrdoRfhHgb/OJQcb9w7t3vjiguW0zJDGxfv3RwUkt1bJbeNaef+
	S9rmbhbaR4rDVk8tWPS3Wz/CiW39GY/6mtyF3681Rh199yjvTtHfdz/jru56nFC+JMlQ7o3g
	Wsnw3zFy0l9kGIqvqcSLHr+VeU1n7wqFzPeNZ219fA3r9RMlbI5OXvnPZe7fkJj7U6Z6xq0r
	zt5wqJLv1emqoyZ8vVOf74p6ffNAlsgeyYQH6Zv5Z3Dq/P+iOmHB+fqin/qmbNOKrJwuz9dl
	7FZiKc5INNRiLipOBAA9H4i46wIAAA==
X-CMS-MailID: 20220531121922epcas2p3c37a39cd28f56326c4f3980ac76f3b5c
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220531121922epcas2p3c37a39cd28f56326c4f3980ac76f3b5c
References: <20220531121913.48722-1-chanho61.park@samsung.com>
	<CGME20220531121922epcas2p3c37a39cd28f56326c4f3980ac76f3b5c@epcas2p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_051933_351094_EA0A9526 
X-CRM114-Status: GOOD (  18.57  )
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

To support secondary ufs phy device, we need to get an offset for phy
isolation from the syscon DT node. If the first index argument of the
node is existing, we can read the offset value and set it as isol->offset.
To allow this, we should drop the const qualifier of struct pmu_isol.

Signed-off-by: Chanho Park <chanho61.park@samsung.com>
---
 drivers/phy/samsung/phy-samsung-ufs.c | 7 ++++++-
 drivers/phy/samsung/phy-samsung-ufs.h | 2 +-
 2 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/samsung/phy-samsung-ufs.c b/drivers/phy/samsung/phy-samsung-ufs.c
index 602ddef259eb..bb0f8e481a4b 100644
--- a/drivers/phy/samsung/phy-samsung-ufs.c
+++ b/drivers/phy/samsung/phy-samsung-ufs.c
@@ -288,6 +288,7 @@ static int samsung_ufs_phy_probe(struct platform_device *pdev)
 	struct phy *gen_phy;
 	struct phy_provider *phy_provider;
 	const struct samsung_ufs_phy_drvdata *drvdata;
+	u32 isol_offset;
 	int err = 0;
 
 	match = of_match_node(samsung_ufs_phy_match, dev->of_node);
@@ -328,7 +329,11 @@ static int samsung_ufs_phy_probe(struct platform_device *pdev)
 	phy->dev = dev;
 	phy->drvdata = drvdata;
 	phy->cfg = (struct samsung_ufs_phy_cfg **)drvdata->cfg;
-	phy->isol = &drvdata->isol;
+	phy->isol = (struct pmu_isol *)&drvdata->isol;
+	if (!of_property_read_u32_index(dev->of_node, "samsung,pmu-syscon", 1,
+					&isol_offset))
+		phy->isol->offset = isol_offset;
+
 	phy->lane_cnt = PHY_DEF_LANE_CNT;
 
 	phy_set_drvdata(gen_phy, phy);
diff --git a/drivers/phy/samsung/phy-samsung-ufs.h b/drivers/phy/samsung/phy-samsung-ufs.h
index 91a0e9f94f98..75dc533273f9 100644
--- a/drivers/phy/samsung/phy-samsung-ufs.h
+++ b/drivers/phy/samsung/phy-samsung-ufs.h
@@ -122,7 +122,7 @@ struct samsung_ufs_phy {
 	struct clk *rx1_symbol_clk;
 	const struct samsung_ufs_phy_drvdata *drvdata;
 	struct samsung_ufs_phy_cfg **cfg;
-	const struct pmu_isol *isol;
+	struct pmu_isol *isol;
 	u8 lane_cnt;
 	int ufs_phy_state;
 	enum phy_mode mode;
-- 
2.36.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
