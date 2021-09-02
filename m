Return-Path: <SRS0=/D6Q=NY=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE147C433F5
	for <linux-phy@archiver.kernel.org>; Thu,  2 Sep 2021 18:56:19 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5E78F610FA
	for <linux-phy@archiver.kernel.org>; Thu,  2 Sep 2021 18:56:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5E78F610FA
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WGXD4F998WQG5VoU1tpEaWAVPMOrrzJMoL2pUK0H6fY=; b=mxxqrYjK04u42R
	gFiqH0b1NDcDoNHxn8YYdZ2GwpoBv6AruTDdLAxakTPS4E9qpjN/Brct0N7tUvUPkQBeuU4BmAEAC
	d67FCrqUL+7FwP91kLHJo+uSwesbPJYJLRF8kqCfwyian2GjeG2yfokCvOGmJyf75kZC0rfTB2+Q4
	h5lgSWFeWmF2X4ODUQv4vt5PAI02oflpVGJa+y0egrRBeW7l2Cy6k418nlNbH/hAV51XWMBlO/8xM
	feM4V6d/y/YahOD22lira0AeiwOnrybvWk4vj7oCmfBPm2AWFlsD3z6oKrct9HjQgLj8DLbIfg9Mt
	73T7oUWjzvEDv3dYopjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mLrsm-00AJi6-TU; Thu, 02 Sep 2021 18:56:16 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mLrsk-00AJh2-9e
 for linux-phy@lists.infradead.org; Thu, 02 Sep 2021 18:56:15 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 182IuAqj085973;
 Thu, 2 Sep 2021 13:56:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1630608970;
 bh=5SomkBjnbvwZrjL6mAApUhCSGxJlirib1L1Vfxv67f4=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=Czdo2Z5ykiNVYqh/GT5nV6SNQJFY9+LFHOP90gSsyYudYJpZtiDeFVZwHTcsMNnlx
 BsX7cmrKZXA//yw25QgJmx7UxZ0QE1IkuJ1G5gUa+d3MOM4pjlHhlWCXZDhCtVClSZ
 +4y/8t1bRX6fg2PgA2wmS2jWgJXpPnJia+E/i4vI=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 182IuAtJ016521
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 2 Sep 2021 13:56:10 -0500
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Thu, 2
 Sep 2021 13:56:10 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Thu, 2 Sep 2021 13:56:09 -0500
Received: from pratyush-OptiPlex-790.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 182Itiau017156;
 Thu, 2 Sep 2021 13:56:06 -0500
From: Pratyush Yadav <p.yadav@ti.com>
To: Vinod Koul <vkoul@kernel.org>
CC: Vignesh Raghavendra <vigneshr@ti.com>, Tomi Valkeinen
 <tomi.valkeinen@ideasonboard.com>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>, Nikhil Devshatwar <nikhil.nd@ti.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Pratyush Yadav
 <p.yadav@ti.com>, Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring
 <robh+dt@kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>
Subject: [PATCH v5 6/6] phy: dt-bindings: cdns,dphy: add Rx DPHY compatible
Date: Fri, 3 Sep 2021 00:25:43 +0530
Message-ID: <20210902185543.18875-7-p.yadav@ti.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210902185543.18875-1-p.yadav@ti.com>
References: <20210902185543.18875-1-p.yadav@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210902_115614_443274_44EE4A1A 
X-CRM114-Status: GOOD (  10.28  )
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

The DPHY is treated to be in Tx mode by default. Add a new compatible
for Rx mode DPHYs.

Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

---

Changes in v5:
- Use enum instead.
- Add Laurent's R-by.

Changes in v4:
- New in v4.

 Documentation/devicetree/bindings/phy/cdns,dphy.yaml | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/cdns,dphy.yaml b/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
index 5293c2771b7f..2d86d9e860ba 100644
--- a/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
+++ b/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
@@ -11,8 +11,9 @@ maintainers:
 
 properties:
   compatible:
-    items:
-      - const: cdns,dphy
+    enum:
+      - cdns,dphy
+      - cdns,dphy-rx
 
   reg:
     maxItems: 1
-- 
2.33.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
