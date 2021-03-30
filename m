Return-Path: <SRS0=B2Kc=I4=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60572C433DB
	for <linux-phy@archiver.kernel.org>; Tue, 30 Mar 2021 17:34:19 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0021360235
	for <linux-phy@archiver.kernel.org>; Tue, 30 Mar 2021 17:34:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0021360235
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3CJLFVE/wtYp7kXX9ZNidy8hTyWGkNJ1u8SsgkqNrz4=; b=Iy7/mYmXg4SesbVIlhLs6AA7a
	bnCgXeJf+Pc5JW+vXW/EII/2n9GWo4RKCjWgyOcd9r/YK5v7R1H6tyRFAoFQjCVUq2xShOrFZczz9
	jeIr2JMUrc0+9i68VvBO7mwmOG/fV6Cjvr7QJ8+NBGPH+wz5tD7KNr9PsEfvz+WmnAGCbfaj1tCzZ
	bNhjUmmdChT1V8fwC8xW9lsF5REsj61Kuz6hM2O1inOXhfDKaWn0FBXzkTI3YgoQiDcP2+NPzwcAl
	Xbk5Zozpyd2ZSFZlyhhBvLvrVLkmP8Dg9yQfCfG/UG5AOfBkMszje7WrQtbCz67mMElSSUPaUzm3i
	aQsJngwjw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRIFt-004Sci-3B; Tue, 30 Mar 2021 17:34:17 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRIFm-004SbX-Qm
 for linux-phy@lists.infradead.org; Tue, 30 Mar 2021 17:34:13 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 12UHY27G080685;
 Tue, 30 Mar 2021 12:34:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1617125642;
 bh=bOoAsGAFt4jk/rid5QKQyQcMiWPMKnzEbnCMJ1Uie3U=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=D7owOXb0KpBrZ0eP/FWeqeYbhDTzvBtSCRPY843Hx9WWHBn4R8/NOUb3c+Avs/l7G
 7fUsk5Dm1zKqkOG53TNWrhCjXMgcCgX9DL7h2n1MxdSwaPM8HnMdc1x1s3cblH8TMt
 5QkPe4UF5tnKanDaEwjCKgDMVFfqqE/KI7k4XByQ=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 12UHY229024850
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 30 Mar 2021 12:34:02 -0500
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Tue, 30
 Mar 2021 12:34:02 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Tue, 30 Mar 2021 12:34:01 -0500
Received: from pratyush-OptiPlex-790.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 12UHXmgi125244;
 Tue, 30 Mar 2021 12:33:56 -0500
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
Subject: [PATCH 01/16] phy: Distinguish between Rx and Tx for MIPI D-PHY with
 submodes
Date: Tue, 30 Mar 2021 23:03:33 +0530
Message-ID: <20210330173348.30135-2-p.yadav@ti.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210330173348.30135-1-p.yadav@ti.com>
References: <20210330173348.30135-1-p.yadav@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210330_183411_210609_963721D4 
X-CRM114-Status: GOOD (  11.53  )
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

From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

As some D-PHY controllers support both Rx and Tx mode, we need a way for
users to explicitly request one or the other. For instance, Rx mode can
be used along with MIPI CSI-2 while Tx mode can be used with MIPI DSI.

Introduce new MIPI D-PHY PHY submodes to use with PHY_MODE_MIPI_DPHY.
The default (zero value) is kept to Tx so only the rkisp1 driver, which
uses D-PHY in Rx mode, needs to be adapted.

Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
---
 include/linux/phy/phy-mipi-dphy.h | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/include/linux/phy/phy-mipi-dphy.h b/include/linux/phy/phy-mipi-dphy.h
index a877ffee845d..0f57ef46a8b5 100644
--- a/include/linux/phy/phy-mipi-dphy.h
+++ b/include/linux/phy/phy-mipi-dphy.h
@@ -6,6 +6,19 @@
 #ifndef __PHY_MIPI_DPHY_H_
 #define __PHY_MIPI_DPHY_H_
 
+/**
+ * enum phy_mipi_dphy_submode - MIPI D-PHY sub-mode
+ *
+ * A MIPI D-PHY can be used to transmit or receive data.
+ * Since some controllers can support both, the direction to enable is specified
+ * with the PHY sub-mode. Transmit is assumed by default with phy_set_mode.
+ */
+
+enum phy_mipi_dphy_submode {
+	PHY_MIPI_DPHY_SUBMODE_TX = 0,
+	PHY_MIPI_DPHY_SUBMODE_RX,
+};
+
 /**
  * struct phy_configure_opts_mipi_dphy - MIPI D-PHY configuration set
  *
-- 
2.30.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
