Return-Path: <SRS0=gvcI=LF=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4E90C48BE0
	for <linux-phy@archiver.kernel.org>; Fri, 11 Jun 2021 13:47:14 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A356661357
	for <linux-phy@archiver.kernel.org>; Fri, 11 Jun 2021 13:47:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A356661357
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bp.renesas.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KyhJg+xTgl33Kmo/vfZ6I0aSt0PLRyaSzfg4H4n0iEg=; b=HlsZ7Sidrs2k+2
	fvkL9w2W6gfAiKVkw2ENstm73ZME0XMpUBmOcQCZJ0o8JIUsc610z8bb9DPZkeDYIDy5tTp6X4Fbb
	U8bqn2cPud6WXg/+tMltUvA2UT4O+1TwlzZSL+D/Mc2sFKWfFjDNWZ13mD7PdYvr52PjCPso37CJ3
	rJzMgrpZLQw2YrmpVLU8OcLKHHna5kVEqdUDOQ/DcatZeN1xtXedTUmLFC3WzvDPikTnvAaJu6Nsu
	ZoXzX9IWfV3sDRKPrQ6rBxg2Vb1nIH+in5k5cjG6kZcJg0xrIdlW8uPoK5sIhGNlBzcQ8jSsq98uI
	QenTiU7QM7W0YUXMwwdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrhVC-005ROM-4u; Fri, 11 Jun 2021 13:47:14 +0000
Received: from relmlor2.renesas.com ([210.160.252.172]
 helo=relmlie6.idc.renesas.com)
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrhV2-005R7f-FY
 for linux-phy@lists.infradead.org; Fri, 11 Jun 2021 13:47:05 +0000
X-IronPort-AV: E=Sophos;i="5.83,265,1616425200"; d="scan'208";a="83958014"
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
 by relmlie6.idc.renesas.com with ESMTP; 11 Jun 2021 22:47:02 +0900
Received: from localhost.localdomain (unknown [10.226.92.121])
 by relmlir6.idc.renesas.com (Postfix) with ESMTP id 230AF4274BC9;
 Fri, 11 Jun 2021 22:46:59 +0900 (JST)
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
Subject: [PATCH 5/6] dt-bindings: phy: renesas,
 usb2-phy: Document RZ/G2L phy bindings
Date: Fri, 11 Jun 2021 14:46:41 +0100
Message-Id: <20210611134642.24029-6-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210611134642.24029-1-biju.das.jz@bp.renesas.com>
References: <20210611134642.24029-1-biju.das.jz@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210611_064704_668557_DE3C5B65 
X-CRM114-Status: UNSURE (   5.27  )
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

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
Reviewed-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
index 0f358d5b84ef..2425295941d1 100644
--- a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
@@ -28,6 +28,7 @@ properties:
               - renesas,usb2-phy-r8a77965 # R-Car M3-N
               - renesas,usb2-phy-r8a77990 # R-Car E3
               - renesas,usb2-phy-r8a77995 # R-Car D3
+              - renesas,usb2-phy-r9a07g044 # RZ/G2{L,LC}
           - const: renesas,rcar-gen3-usb2-phy
 
   reg:
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
