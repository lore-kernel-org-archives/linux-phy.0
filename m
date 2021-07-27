Return-Path: <SRS0=JCKM=MT=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80096C4338F
	for <linux-phy@archiver.kernel.org>; Tue, 27 Jul 2021 18:57:14 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 40EAD60F6E
	for <linux-phy@archiver.kernel.org>; Tue, 27 Jul 2021 18:57:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 40EAD60F6E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bp.renesas.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oMk9EQEjVOdka725msA8G+Kkk0j8RCR9dpTo4WfzehA=; b=ckv9mIQ2lQcmL0
	r4e/DE0qjkSZMY9Usj7HCOBN01LzDWjx2r1f+TJj2kkS8ABM1njuQeGLDJNMxeLMN13gZedDyjEzg
	Nt+Sq/+PtpjuLs/TArpvxFqSBDO1SU8E8tF6/rXuz16zQLSMcDoLX60HlJC+vOwg6mXlyyIJoOnCi
	QbauXVKn5GyrSG8kHwbqgrW/gql1QDgcF2yPbizzUf+axkWQsxMAGyqu9AQt5qRfpk7wKOaDdOaL/
	lBirxT/plfXycP/yqh5+B7DmEFWaxExYHvQzqIa2uqTobgGijcg88ZSRLfUs3R+Yc/R2ta7zLLBIt
	grOrCl4ACGJK0Kpd9c2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8SGP-00G3rJ-NL; Tue, 27 Jul 2021 18:57:13 +0000
Received: from relmlor1.renesas.com ([210.160.252.171]
 helo=relmlie5.idc.renesas.com)
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8SEy-00G3Ea-3w
 for linux-phy@lists.infradead.org; Tue, 27 Jul 2021 18:55:45 +0000
X-IronPort-AV: E=Sophos;i="5.84,274,1620658800"; d="scan'208";a="88939034"
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
 by relmlie5.idc.renesas.com with ESMTP; 28 Jul 2021 03:55:41 +0900
Received: from localhost.localdomain (unknown [10.226.92.236])
 by relmlir5.idc.renesas.com (Postfix) with ESMTP id 90992400B9EB;
 Wed, 28 Jul 2021 03:55:38 +0900 (JST)
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Rob Herring <robh+dt@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Chris Paterson <Chris.Paterson2@renesas.com>,
 Biju Das <biju.das@bp.renesas.com>,
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-renesas-soc@vger.kernel.org
Subject: [PATCH v5 2/6] dt-bindings: phy: renesas,
 usb2-phy: Document RZ/G2L phy bindings
Date: Tue, 27 Jul 2021 19:55:23 +0100
Message-Id: <20210727185527.19907-3-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210727185527.19907-1-biju.das.jz@bp.renesas.com>
References: <20210727185527.19907-1-biju.das.jz@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210727_115544_382144_17A74DB0 
X-CRM114-Status: UNSURE (   5.60  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Document USB phy bindings for RZ/G2L SoC.

RZ/G2L USB2.0 phy uses line ctrl register for OTG_ID pin changes. It uses
a different OTG-BC interrupt bit for device recognition. Apart from this,
the PHY reset is controlled by USBPHY control IP and Document reset is a
required property.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
Reviewed-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
v4->v5:
 * Removed 'properties' and just used 'required' for RZ/G2L SoC.
v3->v4:
 * Removed second reset
 * Added family specific compatible string.
v2->v3
 * Created a new compatible for RZ/G2L as per Geert's suggestion.
 * Added resets required properties for RZ/G2L SoC.
---
 .../devicetree/bindings/phy/renesas,usb2-phy.yaml | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
index d5dc5a3cdceb..3a6e1165419c 100644
--- a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
@@ -30,6 +30,11 @@ properties:
               - renesas,usb2-phy-r8a77995 # R-Car D3
           - const: renesas,rcar-gen3-usb2-phy
 
+      - items:
+          - enum:
+              - renesas,usb2-phy-r9a07g044 # RZ/G2{L,LC}
+          - const: renesas,rzg2l-usb2-phy  # RZ/G2L family
+
   reg:
     maxItems: 1
 
@@ -91,6 +96,16 @@ required:
   - clocks
   - '#phy-cells'
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: renesas,rzg2l-usb2-phy
+    then:
+      required:
+        - resets
+
 additionalProperties: false
 
 examples:
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
