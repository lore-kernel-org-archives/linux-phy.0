Return-Path: <SRS0=UgvN=LS=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F4040C49EA6
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jun 2021 18:41:45 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C2EEB613FE
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jun 2021 18:41:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C2EEB613FE
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c5VIoSNPaM9w7vcEzMK1JK1yjdQ3MnmGzkPv1q7uN9c=; b=LPMj7KjjXyXs5H
	GKIkC+crtY82c25qJ0jb6rY3x+LOl9UNRqX+Utx8HSl4AERpIRweCAFpqW7Vw1itwoCc/5j3E8gC6
	qDCrdd8A8oiBFwZcYTksQXjVJAFgq/oRCL0bb6+Vq1XUh4vZutHNQF4c+JvEaMO1meMga40lzAydf
	0Mr8XwUarC/k4Z4YKD8bUk8rbmHNJV/RPgVqXSWTkiMmohSjtMcihwHiqSewG+VK0FQI+8o8/Bi5g
	XiWcsS7nW0HWCh431WRsOw5r2mTO9Y47MP1B35VdL1I/s/618P01hpaVvAtDmRaQXHJiKhZzAOID/
	0d9bycwUDlt7oIbVJw3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwUIL-00FslQ-9n; Thu, 24 Jun 2021 18:41:45 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwUIJ-00Fskb-9B
 for linux-phy@lists.infradead.org; Thu, 24 Jun 2021 18:41:44 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 15OIfdi4074596;
 Thu, 24 Jun 2021 13:41:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1624560099;
 bh=97SZxNWvj2hMoNekiqrjBVL8pP6z9iOpUJnHtbWub18=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=ANY/vM34wEWOQhoPjxyiMj1wYS4dBHzAls9QtoXYz9XqAKA+ELwUpmcNHSkDu8ezm
 Qb27PRkn/OUsCT/oMYC07FW/GLuouJLfmZ8yL5eab4GwW11yvxXUlh7rphVO26Zfbw
 E5rl0wcSPF3PC81RkVmnAVmoGath/8qMKw3yLUJo=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 15OIfdNU034468
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 24 Jun 2021 13:41:39 -0500
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Thu, 24
 Jun 2021 13:41:38 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Thu, 24 Jun 2021 13:41:39 -0500
Received: from pratyush-OptiPlex-790.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 15OIf9I4041395;
 Thu, 24 Jun 2021 13:41:35 -0500
From: Pratyush Yadav <p.yadav@ti.com>
To: Vinod Koul <vkoul@kernel.org>
CC: Nikhil Devshatwar <nikhil.nd@ti.com>, Tomi Valkeinen
 <tomi.valkeinen@ideasonboard.com>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>, Paul Kocialkowski
 <paul.kocialkowski@bootlin.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Pratyush Yadav <p.yadav@ti.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob
 Herring <robh+dt@kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>
Subject: [PATCH v3 7/7] phy: dt-bindings: cdns,
 dphy: add power-domains property
Date: Fri, 25 Jun 2021 00:11:08 +0530
Message-ID: <20210624184108.21312-8-p.yadav@ti.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210624184108.21312-1-p.yadav@ti.com>
References: <20210624184108.21312-1-p.yadav@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_114143_447736_5A86F8B3 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
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

This property is needed on TI platforms to enable the PD of the DPHY
before it can be used.

Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Acked-by: Rob Herring <robh@kernel.org>

---

Changes in v3:
- Add Rob's Ack.

Changes in v2:
- Add power-domain to the example.
- Add Laurent's R-by.
- Re-order subject prefixes.

 Documentation/devicetree/bindings/phy/cdns,dphy.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/cdns,dphy.yaml b/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
index 3bb5be05e825..d5a5e1f0b671 100644
--- a/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
+++ b/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
@@ -30,6 +30,9 @@ properties:
   "#phy-cells":
     const: 0
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - reg
@@ -39,11 +42,13 @@ additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/soc/ti,sci_pm_domain.h>
 
     dphy0: phy@fd0e0000{
         compatible = "cdns,dphy";
         reg = <0xfd0e0000 0x1000>;
         clocks = <&psm_clk>, <&pll_ref_clk>;
         clock-names = "psm", "pll_ref";
+        power-domains = <&k3_pds 147 TI_SCI_PD_EXCLUSIVE>;
         #phy-cells = <0>;
     };
-- 
2.30.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
