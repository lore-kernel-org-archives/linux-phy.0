Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D96A8C433F5
	for <linux-phy@archiver.kernel.org>; Tue,  1 Mar 2022 12:43:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=86H6MWGTEWF9qryWKZyMQVhZkPsorBcT5WlQyVUfy+s=; b=Pe5sJnElJyfzW/
	KUHv57t/q6qAkCRH54ykCHZw/GDJgbgW0VI/+3CIP2BfVDeR4VJSeH8GcwFE10mxdjljkyrAVUx0V
	a25lxNucjuW09KKetyGcSnzrCi/oNRREXg2eAenT1J/k79Vb0J7er4jlLQFlpdWD4F2ld3KEV1UJw
	BD25YJhY/vN45I1KEPb87mDenQ3R7KMpCW5isSsVR62Rr1kfHKpd0H4xGeEe9au+hY1E3B6dGJVBp
	JJDSX1SBhIhuCJHEc5J6Jw8+5JyYS5CM7B9xGCxhWjxBQ1UMuM3l4FNEOAeQs4kM0y3tJm+0QTGZZ
	7shIX4GRewx3Z4Tf5YRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nP1qd-00GcHO-BE; Tue, 01 Mar 2022 12:43:23 +0000
Received: from relmlor2.renesas.com ([210.160.252.172]
 helo=relmlie6.idc.renesas.com)
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nP1qb-00GcG2-6A
 for linux-phy@lists.infradead.org; Tue, 01 Mar 2022 12:43:22 +0000
X-IronPort-AV: E=Sophos;i="5.90,146,1643641200"; d="scan'208";a="112806374"
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
 by relmlie6.idc.renesas.com with ESMTP; 01 Mar 2022 21:43:15 +0900
Received: from localhost.localdomain (unknown [10.226.36.204])
 by relmlir5.idc.renesas.com (Postfix) with ESMTP id 4FA5E400F7B5;
 Tue,  1 Mar 2022 21:43:13 +0900 (JST)
From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-kernel@vger.kernel.org, Prabhakar <prabhakar.csengg@gmail.com>,
 Biju Das <biju.das.jz@bp.renesas.com>, linux-phy@lists.infradead.org
Subject: [PATCH v2] dt-bindings: phy: renesas,
 usb2-phy: Document RZ/V2L phy bindings
Date: Tue,  1 Mar 2022 12:42:55 +0000
Message-Id: <20220301124255.16836-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220301_044321_389761_AD80C82F 
X-CRM114-Status: UNSURE (   8.44  )
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

Document USB phy bindings for RZ/V2L SoC. RZ/V2L USB phy is identical to
one found on the RZ/G2L SoC. No driver changes are required as generic
compatible string "renesas,rzg2l-usb2-phy" will be used as a fallback.

While at it, drop the comment "RZ/G2L family" for "renesas,rzg2l-usb2-phy"
compatible string as this will avoid changing the line for every new SoC
addition.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Reviewed-by: Biju Das <biju.das.jz@bp.renesas.com>
Acked-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
v1->v2
* Included Ack and RB tags
* Dropped the comment from generic string as suggested by Geert.

v1:
https://patchwork.kernel.org/project/linux-renesas-soc/patch/
20220227230817.31094-1-prabhakar.mahadev-lad.rj@bp.renesas.com/
---
 Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
index 3a6e1165419c..16807bbbdcb1 100644
--- a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
@@ -33,7 +33,8 @@ properties:
       - items:
           - enum:
               - renesas,usb2-phy-r9a07g044 # RZ/G2{L,LC}
-          - const: renesas,rzg2l-usb2-phy  # RZ/G2L family
+              - renesas,usb2-phy-r9a07g054 # RZ/V2L
+          - const: renesas,rzg2l-usb2-phy
 
   reg:
     maxItems: 1
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
