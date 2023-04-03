Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FBB6C761A6
	for <linux-phy@archiver.kernel.org>; Mon,  3 Apr 2023 09:46:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=B3A0UHnVzcwNmomucKtn15tMoGCJbX8q1+jcchy0XbQ=; b=VURzcJ2JtgdqJi
	kUVGJQtXZWLgQAiHBYyS48jL1XyOwDIdtHZ42LxZX7cerdHqMQCvFVwTWT4RFapUZQ74iNYQe8q0A
	sSN+HmlhZhKLzAkRTB/BQl5weiL1viazS+1agoXEFVZnsd2i+aMuLeYqTdMueiIgQNW4qfSno6rQD
	QSagXEZaNiEeiEdeGDZKahU3d6Sek1Se6TJVopKFehKGMze4zDqDd07BJ4GcH1xIQ5WA76U1yVsNM
	JPzP6pAoiqZ6gtMIh3L4cfp0n+vG7V48xb45jerQe/gQFVxpmD4gVmqqiImkf/rQZg92xD8WgrSHP
	iQQnaCAk01caWBGpZ+QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjGlK-00EnGM-38;
	Mon, 03 Apr 2023 09:46:06 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjGlH-00EnDv-1X;
	Mon, 03 Apr 2023 09:46:04 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3339jt9d060131;
	Mon, 3 Apr 2023 04:45:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1680515155;
	bh=Rm/llBoGWp5ffCljOTXVOPt7tOqpycYvTpWxArdeVzg=;
	h=From:To:CC:Subject:Date;
	b=ZcY638IkZzznWM9yQWrg+ni1xdvZ2a/Jgw1p3hBrtBB1zvH6dI6NZCjgQMi4Q+RgP
	 /JjSHKixWExoo5WupTRmPiQjJiQTFHqZfnIng5/fV9sFG+QuQfTvHHwdlqttLLJRNB
	 5P8QXXAAbi5Yb/byqwRYtKk8xF2VykXRgZPgoag4=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3339jtwa118730
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 3 Apr 2023 04:45:55 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16; Mon, 3
 Apr 2023 04:45:55 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16 via
 Frontend Transport; Mon, 3 Apr 2023 04:45:55 -0500
Received: from uda0492258.dhcp.ti.com (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3339jq9L012694;
	Mon, 3 Apr 2023 04:45:53 -0500
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <rogerq@kernel.org>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <srk@ti.com>, <t-patil@ti.com>,
        <s-vadapalli@ti.com>
Subject: [PATCH] phy: ti: j721e-wiz: Fix unreachable code in wiz_mode_select()
Date: Mon, 3 Apr 2023 15:15:52 +0530
Message-ID: <20230403094552.929108-1-s-vadapalli@ti.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_024603_634969_10190D80 
X-CRM114-Status: GOOD (  11.33  )
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

In the wiz_mode_select() function, the configuration performed for
PHY_TYPE_USXGMII is unreachable. Fix it.

Fixes: b64a85fb8f53 ("phy: ti: phy-j721e-wiz.c: Add usxgmii support in wiz driver")
Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
---
 drivers/phy/ti/phy-j721e-wiz.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
index 1b83c98a78f0..1b5f1a5e2b3b 100644
--- a/drivers/phy/ti/phy-j721e-wiz.c
+++ b/drivers/phy/ti/phy-j721e-wiz.c
@@ -443,18 +443,17 @@ static int wiz_mode_select(struct wiz *wiz)
 	int i;
 
 	for (i = 0; i < num_lanes; i++) {
-		if (wiz->lane_phy_type[i] == PHY_TYPE_DP)
+		if (wiz->lane_phy_type[i] == PHY_TYPE_DP) {
 			mode = LANE_MODE_GEN1;
-		else if (wiz->lane_phy_type[i] == PHY_TYPE_QSGMII)
+		} else if (wiz->lane_phy_type[i] == PHY_TYPE_QSGMII) {
 			mode = LANE_MODE_GEN2;
-		else
-			continue;
-
-		if (wiz->lane_phy_type[i] == PHY_TYPE_USXGMII) {
+		} else if (wiz->lane_phy_type[i] == PHY_TYPE_USXGMII) {
 			ret = regmap_field_write(wiz->p0_mac_src_sel[i], 0x3);
 			ret = regmap_field_write(wiz->p0_rxfclk_sel[i], 0x3);
 			ret = regmap_field_write(wiz->p0_refclk_sel[i], 0x3);
 			mode = LANE_MODE_GEN1;
+		} else {
+			continue;
 		}
 
 		ret = regmap_field_write(wiz->p_standard_mode[i], mode);
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
