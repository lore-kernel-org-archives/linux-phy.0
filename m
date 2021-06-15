Return-Path: <SRS0=aWzV=LJ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0632CC48BDF
	for <linux-phy@archiver.kernel.org>; Tue, 15 Jun 2021 17:57:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B93F36109E
	for <linux-phy@archiver.kernel.org>; Tue, 15 Jun 2021 17:57:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B93F36109E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v+e2LkifPL5BP1Z1o1/JZ5pRezp+GV/Hj4mZONP8luc=; b=Sw2Y7HkLNBr8zZ
	KGnZ/nmu1evTOVXVZGQRUXV7Hj1Aws5sUXpI75qjpITpzG3ewVucpNTkn7I5GF9QkTqiV0aIepM+j
	9ty0ewUFBwrlW56tJpMtEOJWkLDQTOO/urk4i6IjqaeN5hOBOiZJbjdWQZO0Vhl2Ran3o4CG+kL8R
	M65ykDySzU1sVDkyVW758AR1jKFI/B7ZDPoBXLe92W6ePvK7axS1S6/UeC8w9kuW8Ad0QEoyXbW4z
	qhRTE44kdpuD3swNt7391KaNVXEYml8YmBNFRwmzq00xKipB/ueFf56EKK56FEhHD3r7bUFuSzj9s
	VysfvuqLvTA6iP9dQVVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltDJC-001uZC-QN; Tue, 15 Jun 2021 17:57:06 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt9GE-000ByJ-38; Tue, 15 Jun 2021 13:37:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=References:In-Reply-To:Message-Id:Date
 :Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=tVBxn+5Mqbv9dMvK8XUFshrmTuJgCfkpHWpeIzWhgr4=; b=qVV0GLuzRiE3vRP3UHVJJmkFg1
 LxonXUFii6GftegRsHwKfdMVHPhdMJIxMl0Lgr8KYbbaqw541mNK3a26feOK4LFjjzQranm4tYMYX
 s/mKsGRXRPVexV7DdfoJnzf9mA6XUpTuaUh6aQPRE9e/hEbG0CNdhS70/7cPk989ib0Y5B2bj2mtO
 vliy1tl+V+bw6zHdVBGdJydT6yxPL06tSog3Rs41lzJyOvcN98atFpIZ/5WBoVUWB+ZVvq5Dm1X3m
 7NPUIGnYiETzYEY6JlnyyhjGUhrcN5coDz6oPWEikj85lUVCidI9Dtq9FkbvsuezIn+c/FQJ9naMj
 QoGFukKg==;
Received: from foss.arm.com ([217.140.110.172])
 by desiato.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt6ub-007l9g-VQ; Tue, 15 Jun 2021 11:07:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AB054113E;
 Tue, 15 Jun 2021 04:07:23 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 542D43F719;
 Tue, 15 Jun 2021 04:07:21 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Icenowy Zheng <icenowy@aosc.io>,
 Samuel Holland <samuel@sholland.org>, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@googlegroups.com, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, Ondrej Jirman <megous@megous.com>,
 devicetree@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org,
 linux-usb@vger.kernel.org
Subject: [PATCH v7 10/19] dt-bindings: usb: Add H616 compatible string
Date: Tue, 15 Jun 2021 12:06:27 +0100
Message-Id: <20210615110636.23403-11-andre.przywara@arm.com>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <20210615110636.23403-1-andre.przywara@arm.com>
References: <20210615110636.23403-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_120725_040920_C9C28F5F 
X-CRM114-Status: UNSURE (   9.32  )
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

The H616 has four PHYs as the H3, along with their respective clock
gates and resets, so the property description is identical.

However the PHYs itself need some special bits, so we need a new
compatible string for it.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/phy/allwinner,sun8i-h3-usb-phy.yaml   | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun8i-h3-usb-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun8i-h3-usb-phy.yaml
index f80431060803..e288450e0844 100644
--- a/Documentation/devicetree/bindings/phy/allwinner,sun8i-h3-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/allwinner,sun8i-h3-usb-phy.yaml
@@ -15,7 +15,9 @@ properties:
     const: 1
 
   compatible:
-    const: allwinner,sun8i-h3-usb-phy
+    enum:
+      - allwinner,sun8i-h3-usb-phy
+      - allwinner,sun50i-h616-usb-phy
 
   reg:
     items:
-- 
2.17.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
