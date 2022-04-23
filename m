Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF89AC433EF
	for <linux-phy@archiver.kernel.org>; Sat, 23 Apr 2022 13:48:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/Jdiac9s/rrpy4cv5HFk38dn3dMDXxorgVWrA9MLYgQ=; b=NsUvaDpVgN+Wet
	cMj9FqCAcLIMOPK4RAJBeYg4NKA/a/+nInRAuCFqHqeVa6Kc/N8Zs2aQPIfK9qV+XVcVH/GiZD3jQ
	QIZILMaQHbNUuDMTNPDaRJf5ttIs7Hzuuuvsk/oML2pXa97nhBWWG3MZa4WUpzNHwUlmA4fnxSHvX
	ln/7w86+8d/UXD3zJkEV1K4Xv3oZ9Toe7lpUqTRfy2egFTs9NruEJimWOD0KHo6zu2KtlRkQ6VR1b
	ee95fc5+AZQViw0MLJzQMydKDJNntQiRHICc/TbN4TmnzQ7jnzE1rbQKxEw4EODuISjqbeuB2jPUH
	Uguw8SQYBeG/f+0CfXEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1niG7I-004RA6-6P; Sat, 23 Apr 2022 13:48:04 +0000
Received: from relmlor2.renesas.com ([210.160.252.172]
 helo=relmlie6.idc.renesas.com)
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1niG7F-004R9i-BY
 for linux-phy@lists.infradead.org; Sat, 23 Apr 2022 13:48:03 +0000
X-IronPort-AV: E=Sophos;i="5.90,284,1643641200"; d="scan'208";a="118907198"
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
 by relmlie6.idc.renesas.com with ESMTP; 23 Apr 2022 22:47:59 +0900
Received: from localhost.localdomain (unknown [10.226.92.16])
 by relmlir6.idc.renesas.com (Postfix) with ESMTP id 297C042B5043;
 Sat, 23 Apr 2022 22:47:54 +0900 (JST)
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Chris Paterson <Chris.Paterson2@renesas.com>,
 Biju Das <biju.das@bp.renesas.com>,
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-renesas-soc@vger.kernel.org
Subject: [PATCH] dt-bindings: phy: renesas,
 usb2-phy: Document RZ/G2UL phy bindings
Date: Sat, 23 Apr 2022 14:47:52 +0100
Message-Id: <20220423134752.143090-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220423_064801_562892_3CFDCF64 
X-CRM114-Status: UNSURE (   5.07  )
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

Document USB phy bindings for RZ/G2UL SoC. RZ/G2UL USB phy is identical to
one found on the RZ/G2L SoC. No driver changes are required as generic
compatible string "renesas,rzg2l-usb2-phy" will be used as a fallback.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
 Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
index 16807bbbdcb1..f82649a55e91 100644
--- a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
@@ -32,6 +32,7 @@ properties:
 
       - items:
           - enum:
+              - renesas,usb2-phy-r9a07g043 # RZ/G2UL
               - renesas,usb2-phy-r9a07g044 # RZ/G2{L,LC}
               - renesas,usb2-phy-r9a07g054 # RZ/V2L
           - const: renesas,rzg2l-usb2-phy
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
