Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90DAEC43334
	for <linux-phy@archiver.kernel.org>; Wed,  6 Jul 2022 02:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5UGKnTeb4AUIUmB82CSj4qKlGwRCqKvLXYND2Jtjs2w=; b=a0DPnRjEI/SeyY
	GMewmk1+gk6vsvL/BabpsXhz8aVYMDa9GpD6KLayTbXRrSxjS/Xn1ZKcb+y0TNetoS8WV49Qgytnj
	JDZAiDD4Ln4zdTPxeSMrABHIdefrMsegIifM+YQsczKwWq5pzMaCJ2d31v4ntXNRgRxbMIf9ePG+5
	etEyDIiHlG5xWJ4shxEv6pnAt9K2ylvcIFnKZjr62oayi279QgvMUuyVV9s4cGdyARelqeKGZqv/G
	Ylu/RfRwtI4q6ftRPZCk8MeeWuZAWCJLC0KHpoKSJoVQ+NxjnnXW+Nz6MHgN5lIOJhebA1if+9xtM
	jlJBLLSNnpIyJsquyVsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8uQZ-005IyF-V6; Wed, 06 Jul 2022 02:06:07 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8uQG-005Iqe-LP
	for linux-phy@lists.infradead.org; Wed, 06 Jul 2022 02:05:50 +0000
Received: from epcas2p2.samsung.com (unknown [182.195.41.54])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20220706020542epoutp03d5807ad7ee6251ae0fc100915da627e6~-Gz5FDP2V2561925619epoutp03q
	for <linux-phy@lists.infradead.org>; Wed,  6 Jul 2022 02:05:42 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20220706020542epoutp03d5807ad7ee6251ae0fc100915da627e6~-Gz5FDP2V2561925619epoutp03q
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1657073142;
	bh=q20ZZ9pb7pfwaxV6xHa3nvjdiyNTQxWPgMn8xQLBB/M=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=obV6EVjMHJGrDhJwJ9EQVyd14Fz2jKb5w2WXO2PvCSHir+9UJT6F//qm1Yqozn7s7
	 UgZDYw55WzTkAvJZkvP7K2/PRUbeo1U9wGj1Vh9V9lLshIKiyMFv73E/3zcSG0dmGt
	 in9J7QUu+2S36nyz685kwqSHZr7xZtK1QecS05iQ=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
	epcas2p3.samsung.com (KnoxPortal) with ESMTP id
	20220706020541epcas2p3c0274b610c61348c736819e3a3cfcb3a~-Gz4y1Vg02761727617epcas2p3N;
	Wed,  6 Jul 2022 02:05:41 +0000 (GMT)
Received: from epsmges2p3.samsung.com (unknown [182.195.36.102]) by
	epsnrtp3.localdomain (Postfix) with ESMTP id 4Ld2v93d0zz4x9QC; Wed,  6 Jul
	2022 02:05:41 +0000 (GMT)
Received: from epcas2p4.samsung.com ( [182.195.41.56]) by
	epsmges2p3.samsung.com (Symantec Messaging Gateway) with SMTP id
	64.C8.09642.5FDE4C26; Wed,  6 Jul 2022 11:05:41 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
	epcas2p1.samsung.com (KnoxPortal) with ESMTPA id
	20220706020540epcas2p15efea24c0f670514785b991e3c1118e8~-Gz38AcBb0308403084epcas2p15;
	Wed,  6 Jul 2022 02:05:40 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
	epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20220706020540epsmtrp29cbd243140a292f9808197fd65722c6b~-Gz37N2mg3159231592epsmtrp27;
	Wed,  6 Jul 2022 02:05:40 +0000 (GMT)
X-AuditID: b6c32a47-5f7ff700000025aa-b6-62c4edf516fc
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
	epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	EA.6E.08905.4FDE4C26; Wed,  6 Jul 2022 11:05:40 +0900 (KST)
Received: from localhost.localdomain (unknown [10.229.9.51]) by
	epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20220706020540epsmtip236434bcc806cd2fa78c2d3e7034fa3e2~-Gz3skejZ1055210552epsmtip2E;
	Wed,  6 Jul 2022 02:05:40 +0000 (GMT)
From: Chanho Park <chanho61.park@samsung.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, "James E . J .
 Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>, Alim Akhtar <alim.akhtar@samsung.com>, Bart
	Van Assche <bvanassche@acm.org>
Cc: linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
	Chanho Park <chanho61.park@samsung.com>
Subject: [PATCH v2 2/3] phy: samsung-ufs: ufs: change phy on/off control
Date: Wed,  6 Jul 2022 11:02:54 +0900
Message-Id: <20220706020255.151177-3-chanho61.park@samsung.com>
X-Mailer: git-send-email 2.37.0
In-Reply-To: <20220706020255.151177-1-chanho61.park@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrOJsWRmVeSWpSXmKPExsWy7bCmhe7Xt0eSDObOlrJ4MG8bm8W0Dz+Z
	LS7v17ZYdGMbk8WFpz1sFntfb2W32PT4GqvFhFXfWCxmnN/HZNF9fQebxfLj/5gsdt45wezA
	43H5irfHplWdbB53ru1h85iw6ACjx+Yl9R4fn95i8ejbsorR4/iN7UwenzfJBXBGZdtkpCam
	pBYppOYl56dk5qXbKnkHxzvHm5oZGOoaWlqYKynkJeam2iq5+AToumXmAB2spFCWmFMKFApI
	LC5W0rezKcovLUlVyMgvLrFVSi1IySkwL9ArTswtLs1L18tLLbEyNDAwMgUqTMjOaNn3jLng
	ulDF21MbmBoYT/B3MXJySAiYSKzsfMsOYgsJ7GCU6F8k08XIBWR/YpQ4fPYDVOIbo8TWWaww
	DY3PDjFCFO1llHj5fSOU8xHIWdLCBlLFJqArseX5K7CEiMAOJolbLRNZQBxmgc2MEu1Xd4JV
	CQt4SJyf3Am2g0VAVeLvgTVgO3gF7CWu9u5mgtgnL7Hh4HYWEJtTwEHi9+9eZogaQYmTM5+A
	xZmBapq3zmYGWSAhsJRDouHLOUaIZheJrs+7WSBsYYlXx7ewQ9hSEp/f7WWDsIslls76xATR
	3MAocXnbL6iEscSsZ+1AgziANmhKrN+lD2JKCChLHLkFtZdPouPwX3aIMK9ER5sQRKO6xIHt
	06G2ykp0z/kMDToPiZdg74JCazIwHD49ZpzAqDALyTuzkLwzC2HxAkbmVYxiqQXFuempxUYF
	xvAoTs7P3cQITsFa7jsYZ7z9oHeIkYmD8RCjBAezkgjvqkkHk4R4UxIrq1KL8uOLSnNSiw8x
	mgIDeyKzlGhyPjAL5JXEG5pYGpiYmRmaG5kamCuJ83qlbEgUEkhPLEnNTk0tSC2C6WPi4JRq
	YBL7dK5cxOHnjBOcjyeJ9Ew6o8z9KO1pwxxplgaj1ydV9n8o7LDor1LcdG7d1aRrn+bNuJ7+
	QWbHttnLjl1l2XEtIGmB0d8wuym/HllJiLpJPL0s4GKz96foq5vGa062NkmZpurczZveeJsl
	U/aRRmT4gmffN5n9NtsSVR6xYSFb2dVnwQa90qf+anle6Dr28zXnGYOWgxlP+V3aW4VsM1tf
	Tbx7wDD09r+UkrJf006vCdpeoOpec2diea7RmfPJWV3BeiszJ7F8Me358Pk3x1LXSoe39xe/
	PJTtFFhUF3eZ53CH5uqp+dJ/P9da2q+XOcT8QbP94DJrA23mXPHdzVn7Luo5RhypNDp/OF5Q
	PUuJpTgj0VCLuag4EQB0oHVbSgQAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrMLMWRmVeSWpSXmKPExsWy7bCSvO6Xt0eSDCZvNLR4MG8bm8W0Dz+Z
	LS7v17ZYdGMbk8WFpz1sFntfb2W32PT4GqvFhFXfWCxmnN/HZNF9fQebxfLj/5gsdt45wezA
	43H5irfHplWdbB53ru1h85iw6ACjx+Yl9R4fn95i8ejbsorR4/iN7UwenzfJBXBGcdmkpOZk
	lqUW6dslcGW07HvGXHBdqOLtqQ1MDYwn+LsYOTkkBEwkGp8dYuxi5OIQEtjNKHHi5zcmiISs
	xLN3O9ghbGGJ+y1HWCGK3jNKrPh1jRUkwSagK7Hl+SuwbhGBPUwSX+ZtYAFxmAW2M0pMeXud
	BaRKWMBD4vzkTrBRLAKqEn8PrAHr5hWwl7jauxtqnbzEhoPbweo5BRwkfv/uZQaxhYBq7n1a
	zQJRLyhxcuYTMJsZqL5562zmCYwCs5CkZiFJLWBkWsUomVpQnJueW2xYYJiXWq5XnJhbXJqX
	rpecn7uJERwvWpo7GLev+qB3iJGJg/EQowQHs5II76pJB5OEeFMSK6tSi/Lji0pzUosPMUpz
	sCiJ817oOhkvJJCeWJKanZpakFoEk2Xi4JRqYFr3I6Mrc//7Xo2HjQ/4tDl29B6p+1dwYWK8
	6G3BQzlMB43N9qzqe/jW9tYJv4v7Hktwck/m2qJb8EUp48fB99eqJU9lnamZ3cm/yD5oUVu+
	u3Sn2ckegTbXLcndeZYLDVhnnF4aw/DkxsL/fx8d18x5NOu8ZMENvl/sc3blyf5uE7GYfIt5
	6a8OSTOLIK6rZ7Ju1Su98Vs413q1sdv1wH4BXSvhlEzRM/U3d4Yq1tl69rkqixjd/Pvw7zqW
	4uztaiXBBhfO5fpWsJ494qWg/OKZwsyOxFVqd6cHcxsXfu26WLJwx+efi97vLX8aJvnrUvDe
	jz6PecJXFP8K+nb5lmx1jYNJB1dcpaPau6le9kosxRmJhlrMRcWJABWowkcGAwAA
X-CMS-MailID: 20220706020540epcas2p15efea24c0f670514785b991e3c1118e8
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220706020540epcas2p15efea24c0f670514785b991e3c1118e8
References: <20220706020255.151177-1-chanho61.park@samsung.com>
	<CGME20220706020540epcas2p15efea24c0f670514785b991e3c1118e8@epcas2p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_190549_158757_A78A50E9 
X-CRM114-Status: GOOD (  15.13  )
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

The sequence of controlling ufs phy block should be below:

1) Power On
 - Turn off pmu isolation
 - Clock enable
2) Power Off
 - Clock disable
 - Turn on pmu isolation

Signed-off-by: Chanho Park <chanho61.park@samsung.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/phy/samsung/phy-samsung-ufs.c | 32 ++++++++++++++++-----------
 1 file changed, 19 insertions(+), 13 deletions(-)

diff --git a/drivers/phy/samsung/phy-samsung-ufs.c b/drivers/phy/samsung/phy-samsung-ufs.c
index 14cce2f2487e..183c88e3d1ec 100644
--- a/drivers/phy/samsung/phy-samsung-ufs.c
+++ b/drivers/phy/samsung/phy-samsung-ufs.c
@@ -151,37 +151,43 @@ static int samsung_ufs_phy_clks_init(struct samsung_ufs_phy *phy)
 static int samsung_ufs_phy_init(struct phy *phy)
 {
 	struct samsung_ufs_phy *ss_phy = get_samsung_ufs_phy(phy);
-	int ret;
 
 	ss_phy->lane_cnt = phy->attrs.bus_width;
 	ss_phy->ufs_phy_state = CFG_PRE_INIT;
 
+	return 0;
+}
+
+static int samsung_ufs_phy_power_on(struct phy *phy)
+{
+	struct samsung_ufs_phy *ss_phy = get_samsung_ufs_phy(phy);
+	int ret;
+
+	samsung_ufs_phy_ctrl_isol(ss_phy, false);
+
 	ret = clk_bulk_prepare_enable(ss_phy->drvdata->num_clks, ss_phy->clks);
 	if (ret) {
 		dev_err(ss_phy->dev, "failed to enable ufs phy clocks\n");
 		return ret;
 	}
 
-	ret = samsung_ufs_phy_calibrate(phy);
-	if (ret)
-		dev_err(ss_phy->dev, "ufs phy calibration failed\n");
+	if (ss_phy->ufs_phy_state == CFG_PRE_INIT) {
+		ret = samsung_ufs_phy_calibrate(phy);
+		if (ret)
+			dev_err(ss_phy->dev, "ufs phy calibration failed\n");
+	}
 
 	return ret;
 }
 
-static int samsung_ufs_phy_power_on(struct phy *phy)
-{
-	struct samsung_ufs_phy *ss_phy = get_samsung_ufs_phy(phy);
-
-	samsung_ufs_phy_ctrl_isol(ss_phy, false);
-	return 0;
-}
-
 static int samsung_ufs_phy_power_off(struct phy *phy)
 {
 	struct samsung_ufs_phy *ss_phy = get_samsung_ufs_phy(phy);
 
+	clk_bulk_disable_unprepare(ss_phy->drvdata->num_clks, ss_phy->clks);
+
 	samsung_ufs_phy_ctrl_isol(ss_phy, true);
+
 	return 0;
 }
 
@@ -202,7 +208,7 @@ static int samsung_ufs_phy_exit(struct phy *phy)
 {
 	struct samsung_ufs_phy *ss_phy = get_samsung_ufs_phy(phy);
 
-	clk_bulk_disable_unprepare(ss_phy->drvdata->num_clks, ss_phy->clks);
+	ss_phy->ufs_phy_state = CFG_TAG_MAX;
 
 	return 0;
 }
-- 
2.37.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
