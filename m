Return-Path: <SRS0=B2Kc=I4=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 593AEC433E0
	for <linux-phy@archiver.kernel.org>; Tue, 30 Mar 2021 17:35:18 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CBBB8619DB
	for <linux-phy@archiver.kernel.org>; Tue, 30 Mar 2021 17:35:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CBBB8619DB
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=igJx6tDaPaX+A9rQLoaNRCqFODCvqn3EwMwYFK0Dbio=; b=efmJ1LZt0wkyBBWrAab+/PusH
	Ey4beuzuzUX923f3Tn9fnORYdGY2a3DY475em7sgQOS+1dOKqAfa+CE/66EtVYV96Enviw+FSxzbC
	hBobgKm0CJ0vLHw+mYasavZRrCcRuCnX1icDgGGHw0Hg7AHJUrSV3/Wm6XiYAasfWOarE95LSWP7c
	GnxHM/BqMTBb3q9S98sN+CPcX6lPIHadE7K7v+tTYorbfFtbcY32sBr7Rj1246tmny7ovjmVO1lU0
	euTtLGRRw+x7VDkN9H+E1WkIRRiSi7R7ouKeXSd4cxBbE2fgsZW56GC+DGnAlAXjipbE/dL/+rYV8
	ZAKI6h+9w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRIGq-004Smi-1s; Tue, 30 Mar 2021 17:35:16 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRIGm-004Slz-7E
 for linux-phy@lists.infradead.org; Tue, 30 Mar 2021 17:35:15 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 12UHZ5OJ057284;
 Tue, 30 Mar 2021 12:35:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1617125705;
 bh=exPtfFP357uEoI265sBSxQidNZbHwCy+lm1TSU/QwUI=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=klAWR/g0XSp2ekS+fjDS4+DVOXI4pDzmUIoimtLc7c0L+6GJkGkI4W5QVV4YyAdYq
 nXuwWpMbVPfG4qZHoQi0QnX2MW9BGKQxHI2xvhdwrPA+r5w7CguUyusI6IMQA+BZGC
 ISZjLeYLrwKpIce8XWLipZvfufACHZndR2k3KpLw=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 12UHZ5CD041024
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 30 Mar 2021 12:35:05 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Tue, 30
 Mar 2021 12:35:05 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Tue, 30 Mar 2021 12:35:05 -0500
Received: from pratyush-OptiPlex-790.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 12UHXmgs125244;
 Tue, 30 Mar 2021 12:34:59 -0500
From: Pratyush Yadav <p.yadav@ti.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul
 <vkoul@kernel.org>, Peter Ujfalusi <peter.ujfalusi@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, Benoit Parrot <bparrot@ti.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Alexandre Courbot <acourbot@chromium.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Stanimir Varbanov
 <stanimir.varbanov@linaro.org>, Helen Koike <helen.koike@collabora.com>,
 Michael Tretter <m.tretter@pengutronix.de>,
 Peter Chen <peter.chen@nxp.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 <linux-media@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <dmaengine@vger.kernel.org>
CC: Pratyush Yadav <p.yadav@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Subject: [PATCH 11/16] dmaengine: ti: k3-psil-j721e: Add entry for CSI2RX
Date: Tue, 30 Mar 2021 23:03:43 +0530
Message-ID: <20210330173348.30135-12-p.yadav@ti.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210330173348.30135-1-p.yadav@ti.com>
References: <20210330173348.30135-1-p.yadav@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210330_183512_828507_4D83FE4F 
X-CRM114-Status: GOOD (  12.07  )
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

The CSI2RX subsystem uses PSI-L DMA to transfer frames to memory. It can
have up to 32 threads but the current driver only supports using one. So
add an entry for that one thread.

Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
---
 drivers/dma/ti/k3-psil-j721e.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/dma/ti/k3-psil-j721e.c b/drivers/dma/ti/k3-psil-j721e.c
index 7580870ed746..19ffa31e6dc6 100644
--- a/drivers/dma/ti/k3-psil-j721e.c
+++ b/drivers/dma/ti/k3-psil-j721e.c
@@ -58,6 +58,14 @@
 		},					\
 	}
 
+#define PSIL_CSI2RX(x)					\
+	{						\
+		.thread_id = x,				\
+		.ep_config = {				\
+			.ep_type = PSIL_EP_NATIVE,	\
+		},					\
+	}
+
 /* PSI-L source thread IDs, used for RX (DMA_DEV_TO_MEM) */
 static struct psil_ep j721e_src_ep_map[] = {
 	/* SA2UL */
@@ -138,6 +146,8 @@ static struct psil_ep j721e_src_ep_map[] = {
 	PSIL_PDMA_XY_PKT(0x4707),
 	PSIL_PDMA_XY_PKT(0x4708),
 	PSIL_PDMA_XY_PKT(0x4709),
+	/* CSI2RX */
+	PSIL_CSI2RX(0x4940),
 	/* CPSW9 */
 	PSIL_ETHERNET(0x4a00),
 	/* CPSW0 */
-- 
2.30.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
