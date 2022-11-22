Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DEF5C433FE
	for <linux-phy@archiver.kernel.org>; Tue, 22 Nov 2022 09:22:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6IFgrShd4XLqRDublkZni91p7aLn9+3n7NxdvSU3AvQ=; b=MwqWTAtTq1/Nne
	eOrX6sOGP4fvELceVbF0FTw+nS107bAO95pGy+BuPOY+rovTYsLd2t1gmh43RMVzZMNCgEotCTFit
	vpO0jBr+kQWEXuxXIX6uQ3T7KwKa280IgpAE+JDarILz4CQqxRZEBk5hxjVi15S61B1+iid4Ccbry
	bZM8j8aUpvdn9HDz05nTKNvDN+omyG4mtMmS5sLtmPLnxA5pNvhs0t+a0PLfp4NZOIl3X9TQ5W2/O
	qNdpuViU7rDtuzBsiUiGhjGxCteKLP+T+8GemSz8TvfqlRoiqHOuV7YQJ0L54dt37aSXYuTheAjln
	04ilWpmGtq3SoOUiK6kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxPUC-006wEU-1q; Tue, 22 Nov 2022 09:22:36 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxPTz-006w4A-1E; Tue, 22 Nov 2022 09:22:24 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 2AM9MDvC105786;
	Tue, 22 Nov 2022 03:22:13 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1669108933;
	bh=o9i/OMGOHRPGOosaPjf4hYo2CPypwAf5yuzhoIoQpRU=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=HkYKcAxAeh0ciZHcV7jL097IP0AUUIkTu952gp6VsXBx4JmnIWaDXQ+7eo+mdi7BZ
	 +N7/vcR+sML1Y7nqPU46S4S0bSYuYaNd112t/qtwTuZ+pI/oxRcvQYGfN4jxKaIEiy
	 3cMRYAjQcT/bookMjbdXhmAg9ceAenq3FiA58VaU=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 2AM9MDil020762
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 22 Nov 2022 03:22:13 -0600
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16; Tue, 22
 Nov 2022 03:22:12 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16 via
 Frontend Transport; Tue, 22 Nov 2022 03:22:12 -0600
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 2AM9M9Kd014858;
	Tue, 22 Nov 2022 03:22:11 -0600
From: Matt Ranostay <mranostay@ti.com>
To: <r-gunasekaran@ti.com>, <rogerq@kernel.org>, <vkoul@kernel.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <vigneshr@ti.com>
CC: <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Matt Ranostay <mranostay@ti.com>
Subject: [PATCH 1/2] dt-bindings: phy-j721e-wiz: add j721s2 compatible string
Date: Tue, 22 Nov 2022 01:22:02 -0800
Message-ID: <20221122092203.762308-2-mranostay@ti.com>
X-Mailer: git-send-email 2.38.GIT
In-Reply-To: <20221122092203.762308-1-mranostay@ti.com>
References: <20221122092203.762308-1-mranostay@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221122_012223_220885_1CB2A522 
X-CRM114-Status: UNSURE (   7.27  )
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

Add ti,j721s2-wiz-10g compatible string to binding documentation.

Signed-off-by: Matt Ranostay <mranostay@ti.com>
---
 Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
index a9e38739c010..b837748f33d1 100644
--- a/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
+++ b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
@@ -18,6 +18,7 @@ properties:
       - ti,am64-wiz-10g
       - ti,j7200-wiz-10g
       - ti,j784s4-wiz-10g
+      - ti,j721s2-wiz-10g
 
   power-domains:
     maxItems: 1
-- 
2.38.GIT


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
