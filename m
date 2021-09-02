Return-Path: <SRS0=/D6Q=NY=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71819C433EF
	for <linux-phy@archiver.kernel.org>; Thu,  2 Sep 2021 18:56:10 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 38356610CE
	for <linux-phy@archiver.kernel.org>; Thu,  2 Sep 2021 18:56:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 38356610CE
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cod2SejTMRyuFxTGP8GZkzHD6axehbEd6L9iOEviZCs=; b=OGRVxkCOA+iq/0
	G+tazcqVivZmaz8N7pTHgPMqXp7tS6BJAQsLLIYsqCH3KmKoKhEDdfd8yIji7kavRJKskzMhUdatW
	utPhS80lu5QCUgPtv9IWNOBZApewBF7cri4ClEyRLQYdImg1KdkLtAB3pjIHc9OOXtuET8GpCn9q+
	llDLgHlWLwqD+jHjoLTRXsHOMj7M5qrkDSSV3jxGFrH02YMQEbsfGt83BhvM9KTqBBT2FhrUfGqbM
	xjGCXHvb3fGae3AyZHbCXzdRE1p97zeDSnBBGxhSl/AQEaSSFjEXhzlFzfsC0njCC1sUpzMYsFjhM
	gGqu3j+lW6WHnOsuZ2JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mLrsf-00AJgA-MH; Thu, 02 Sep 2021 18:56:09 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mLrsd-00AJfS-7c
 for linux-phy@lists.infradead.org; Thu, 02 Sep 2021 18:56:08 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 182Iu3uO116611;
 Thu, 2 Sep 2021 13:56:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1630608963;
 bh=PDhtaIE1w+aqXcN9ZL4ogIDa66D+bPFpiU0ryRquifY=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=eoNED7AHqIL0PQvs0qP+t+IK2AdZ5N9+7JoRlHrfW9b94MoQMVl/ll7VykJmOQr1k
 vMtkEQNbM0qSfHA1ugFQMFjZF97i3OXwTH1Rmzv9WMg3V6PnhH/3kbIXOwekDxFpBI
 r/UQTOIjya0C0KZEQ1ssO6w25pNgI7+JskxzMwRg=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 182Iu2jC003591
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 2 Sep 2021 13:56:03 -0500
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Thu, 2
 Sep 2021 13:56:02 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Thu, 2 Sep 2021 13:56:02 -0500
Received: from pratyush-OptiPlex-790.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 182Itias017156;
 Thu, 2 Sep 2021 13:55:59 -0500
From: Pratyush Yadav <p.yadav@ti.com>
To: Vinod Koul <vkoul@kernel.org>
CC: Vignesh Raghavendra <vigneshr@ti.com>, Tomi Valkeinen
 <tomi.valkeinen@ideasonboard.com>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>, Nikhil Devshatwar <nikhil.nd@ti.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Pratyush Yadav
 <p.yadav@ti.com>, Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring
 <robh+dt@kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>
Subject: [PATCH v5 4/6] phy: dt-bindings: cdns,
 dphy: make clocks optional for Rx mode
Date: Fri, 3 Sep 2021 00:25:41 +0530
Message-ID: <20210902185543.18875-5-p.yadav@ti.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210902185543.18875-1-p.yadav@ti.com>
References: <20210902185543.18875-1-p.yadav@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210902_115607_403554_3A58D483 
X-CRM114-Status: GOOD (  11.26  )
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

The clocks are not used by the DPHY when used in Rx mode so make them
optional for it by using a conditional based on compatible.

Signed-off-by: Pratyush Yadav <p.yadav@ti.com>

---

Changes in v5:
- Make clocks a required property based on the compatible.

Changes in v3:
- Add Rob's Ack.

Changes in v2:
- Re-order subject prefixes.

 .../devicetree/bindings/phy/cdns,dphy.yaml          | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/cdns,dphy.yaml b/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
index b90a58773bf2..558f110fda9e 100644
--- a/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
+++ b/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
@@ -33,10 +33,19 @@ properties:
 required:
   - compatible
   - reg
-  - clocks
-  - clock-names
   - "#phy-cells"
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: cdns,dphy
+    then:
+      required:
+        - clocks
+        - clock-names
+
 additionalProperties: false
 
 examples:
-- 
2.33.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
