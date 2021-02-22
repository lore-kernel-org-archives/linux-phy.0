Return-Path: <SRS0=RVtz=HZ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 179B6C433E0
	for <linux-phy@archiver.kernel.org>; Tue, 23 Feb 2021 03:59:52 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6D1DE64E5B
	for <linux-phy@archiver.kernel.org>; Tue, 23 Feb 2021 03:59:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6D1DE64E5B
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=l9nFcnLpad3uxKU1lgj6rhbe+nk5s226/RZDhWwkzPU=; b=nOSaHBvOmfTKpDlXcARu/wfyw
	IDcApO8C42BAp1HN2Jd+8Go2EvrBodqpvcwAXoeC59a+a39XnasmxIAMFul9oy24PMfSbnb77U+Is
	afqeFS1yfw5Ia97O6lp6fQOz6fhRh/Ty2+GL5nTVGI9nLpU1Uc4PxbiWe8BDFRYAQue3Tq0MpQrLw
	6U8T8xjNDiCH/rqQIadrPOFaLB800pZtyHsK2kirERyA4BE68HmUxZSbpoNN2zNYNZW6reUwfp+13
	y+JxV/uJDnIIvlG9vUq5Im5+8ej+RwLE4j/8f+Thsbrbk7P/EJ4DGTn1ThJZDCtwtp1S905Mrm6wf
	CYrHEYu3A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lEOrW-0005Cq-Ik; Tue, 23 Feb 2021 03:59:50 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lE9Jq-0004uK-Gz
 for linux-phy@lists.infradead.org; Mon, 22 Feb 2021 11:24:06 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 11MBNhxr007131;
 Mon, 22 Feb 2021 05:23:43 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1613993023;
 bh=ejNLP8A0/TozqWiIO9rw/YN3cU1wXkHRhs46676Bh+o=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=FNziTBa8jf46AudF0ZD0QI0kzHFUi+AkjCf+HVzp3lwm9ihWMFBSsMZ3HOBZW3sVD
 BAN2ZsN0IJSRQEuX0z/V8HYocDm+gSzcl712b+d+xRhvA75kPIXDz6D1R9pbLvkZZw
 b9yEtYTl/ZhNFgnE46he7cyIehH7h0nup51vwILE=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 11MBNhq0101411
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 22 Feb 2021 05:23:43 -0600
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 22
 Feb 2021 05:23:42 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 22 Feb 2021 05:23:42 -0600
Received: from a0393678-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 11MBNFDc088010;
 Mon, 22 Feb 2021 05:23:40 -0600
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Peter Rosin <peda@axentia.se>,
 Swapnil Jakhade <sjakhade@cadence.com>
Subject: [PATCH v2 3/9] dt-bindings: ti-serdes-mux: Add defines for AM64 SoC
Date: Mon, 22 Feb 2021 16:53:08 +0530
Message-ID: <20210222112314.10772-4-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210222112314.10772-1-kishon@ti.com>
References: <20210222112314.10772-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210222_062402_726590_EBA1BD73 
X-CRM114-Status: GOOD (  10.18  )
X-Mailman-Approved-At: Mon, 22 Feb 2021 22:59:48 -0500
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

AM64 has a single lane SERDES which can be configured to be used
with either PCIe or USB. Define the possilbe values for the SERDES
function in AM64 SoC here.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
Acked-by: Peter Rosin <peda@axentia.se>
---
 include/dt-bindings/mux/ti-serdes.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/dt-bindings/mux/ti-serdes.h b/include/dt-bindings/mux/ti-serdes.h
index 9047ec6bd3cf..d417b9268b16 100644
--- a/include/dt-bindings/mux/ti-serdes.h
+++ b/include/dt-bindings/mux/ti-serdes.h
@@ -90,4 +90,9 @@
 #define J7200_SERDES0_LANE3_USB			0x2
 #define J7200_SERDES0_LANE3_IP4_UNUSED		0x3
 
+/* AM64 */
+
+#define AM64_SERDES0_LANE0_PCIE0		0x0
+#define AM64_SERDES0_LANE0_USB			0x1
+
 #endif /* _DT_BINDINGS_MUX_TI_SERDES */
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
