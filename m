Return-Path: <SRS0=0r5I=KV=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23188C47089
	for <linux-phy@archiver.kernel.org>; Wed, 26 May 2021 16:51:35 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D6D7E613D2
	for <linux-phy@archiver.kernel.org>; Wed, 26 May 2021 16:51:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D6D7E613D2
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9UqRkd9yYx/rR2jeFHOWVSL51x1GreirqjSIP7EHN1Y=; b=U7Be0IaNnMlc41
	lh93nhlnmhRknAa+49uykPb9Kw7SXm/cjasKiAvyHMRSsI7TOr6lLBrha/6q4JWV/xSlV4YK2pZpl
	KS7dGblmkiJpRAqrYv57lXH29BBHxKM7k8crgp4srSz0+wlbZDY4H+oY79P8JX2vMLg/RsuhYHqp0
	lkQoBsFmnsPHXDOzJnrRn+hxOrg/9MYxp/rQzRoqutYU30b9SucMyVISRQzfnmVym7Yku3caTfPL+
	sb9Fx7vJL1iw5wH6h1U8nY9nFmeizL9VJ7/Vt9StsO8hLBMn1TM6BXNJRTSLBIv+Kr7mnsBd7nx2X
	OwXU17F1yy0PaKi8vzcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llwkn-00FsXs-PQ; Wed, 26 May 2021 16:51:33 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llvNy-00FKha-Bi
 for linux-phy@lists.infradead.org; Wed, 26 May 2021 15:23:55 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 14QFNpY3076891;
 Wed, 26 May 2021 10:23:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1622042631;
 bh=pa6nQIVZcdm7Nv79anocZJUgCF885/mvEjU3jtVZ7kU=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=htWtkJbU9DTXY9r65ZK8WChykbFkmIjf2KJDahZz5GJlEWVktn7Tsj1eVbyyTH0A/
 qPFSbuwUjvwzDmokigqgDNTgp+HtTPtljMGIEvhq+u2T9s9ZdQm/ZdynGWGEKiMZg/
 rl8+X3F9kJX0G3Z9+GWDw+N3IkK843TE7F9228pQ=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 14QFNpw6078777
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 26 May 2021 10:23:51 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Wed, 26
 May 2021 10:23:50 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Wed, 26 May 2021 10:23:50 -0500
Received: from pratyush-OptiPlex-790.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 14QFN9Jf056314;
 Wed, 26 May 2021 10:23:45 -0500
From: Pratyush Yadav <p.yadav@ti.com>
To: Maxime Ripard <mripard@kernel.org>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>, Pratyush Yadav
 <p.yadav@ti.com>, Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul
 <vkoul@kernel.org>, Peter Ujfalusi <peter.ujfalusi@gmail.com>, Steve
 Longerbeam <slongerbeam@gmail.com>,
 Benoit Parrot <bparrot@ti.com>, <linux-media@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <dmaengine@vger.kernel.org>
CC: Vignesh Raghavendra <vigneshr@ti.com>, Tomi Valkeinen
 <tomi.valkeinen@ideasonboard.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: [PATCH v2 07/18] media: cadence: csi2rx: Soft reset the streams
 before starting capture
Date: Wed, 26 May 2021 20:52:57 +0530
Message-ID: <20210526152308.16525-8-p.yadav@ti.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210526152308.16525-1-p.yadav@ti.com>
References: <20210526152308.16525-1-p.yadav@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210526_082354_504253_FDF52A6B 
X-CRM114-Status: GOOD (  13.12  )
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

This resets the stream state machines and FIFOs, giving them a clean
slate. On J721E if the streams are not reset before starting the
capture, the captured frame gets wrapped around vertically on every run
after the first.

Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
---

(no changes since v1)

 drivers/media/platform/cadence/cdns-csi2rx.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/media/platform/cadence/cdns-csi2rx.c b/drivers/media/platform/cadence/cdns-csi2rx.c
index 459326de2eff..80a50284e525 100644
--- a/drivers/media/platform/cadence/cdns-csi2rx.c
+++ b/drivers/media/platform/cadence/cdns-csi2rx.c
@@ -39,6 +39,7 @@
 #define CSI2RX_STREAM_BASE(n)		(((n) + 1) * 0x100)
 
 #define CSI2RX_STREAM_CTRL_REG(n)		(CSI2RX_STREAM_BASE(n) + 0x000)
+#define CSI2RX_STREAM_CTRL_SOFT_RST			BIT(4)
 #define CSI2RX_STREAM_CTRL_START			BIT(0)
 
 #define CSI2RX_STREAM_DATA_CFG_REG(n)		(CSI2RX_STREAM_BASE(n) + 0x008)
@@ -150,12 +151,22 @@ struct csi2rx_priv *v4l2_subdev_to_csi2rx(struct v4l2_subdev *subdev)
 
 static void csi2rx_reset(struct csi2rx_priv *csi2rx)
 {
+	int i;
+
 	writel(CSI2RX_SOFT_RESET_PROTOCOL | CSI2RX_SOFT_RESET_FRONT,
 	       csi2rx->base + CSI2RX_SOFT_RESET_REG);
 
 	udelay(10);
 
 	writel(0, csi2rx->base + CSI2RX_SOFT_RESET_REG);
+
+	/* Reset individual streams. */
+	for (i = 0; i < csi2rx->max_streams; i++) {
+		writel(CSI2RX_STREAM_CTRL_SOFT_RST,
+		       csi2rx->base + CSI2RX_STREAM_CTRL_REG(i));
+		usleep_range(10, 20);
+		writel(0, csi2rx->base + CSI2RX_STREAM_CTRL_REG(i));
+	}
 }
 
 static int csi2rx_configure_external_dphy(struct csi2rx_priv *csi2rx)
-- 
2.30.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
