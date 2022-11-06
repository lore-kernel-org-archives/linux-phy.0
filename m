Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86D4BC4332F
	for <linux-phy@archiver.kernel.org>; Sun,  6 Nov 2022 15:50:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qqe6o749bJ0H96AfeSj464wdArdoN+O8yKmpF+0YmX4=; b=XAqvEmAK66zOAy
	SGT9gRTPEYZBBsbrpRPOAddCjiQLE5cct9r25on0yVHNXw3xAAMw4gDau/7oRvceatq+dHfcp/hBA
	J4hG+2e+7oJBRxvmfgxSYSbEz1fGTp1MkamRwj/lDHPib9uOWFV3ENP3cPDh5sVXJhjyvWZD4Si33
	/Qqp3XzFxNwtgFfsGRyKeeDwNV0EH5tysg6ckJYdtolcg+ucGks7XRka+Usd/Rr8ziMU1KlBhyt2S
	Rufp7YPCciYY1ntnB/bW8Pb5GhstIGuyvygc4L4NQCw3CcRw1voXY7t6aG9s8eSZhYnPIezjzKbCZ
	LDefS5wFaoiYBK7MkNOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orhuz-008f8k-Jg; Sun, 06 Nov 2022 15:50:41 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orhuR-008eqQ-Vp; Sun, 06 Nov 2022 15:50:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 75786ED1;
	Sun,  6 Nov 2022 07:50:11 -0800 (PST)
Received: from slackpad.fritz.box (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 515233F534;
	Sun,  6 Nov 2022 07:50:03 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Chen-Yu Tsai <wens@csie.org>,
	Samuel Holland <samuel@sholland.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Icenowy Zheng <uwu@icenowy.me>
Cc: soc@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 02/11] dt-bindings: usb: sunxi-musb: add F1C100s MUSB compatible string
Date: Sun,  6 Nov 2022 15:48:17 +0000
Message-Id: <20221106154826.6687-3-andre.przywara@arm.com>
X-Mailer: git-send-email 2.35.5
In-Reply-To: <20221106154826.6687-1-andre.przywara@arm.com>
References: <20221106154826.6687-1-andre.przywara@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221106_075008_088887_9235EE20 
X-CRM114-Status: UNSURE (   7.81  )
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

From: Icenowy Zheng <uwu@icenowy.me>

Allwinner F1C100s has a hybrid MUSB controller between the A10 one and
the A33 one.

Add a compatible string for it.

Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 .../devicetree/bindings/usb/allwinner,sun4i-a10-musb.yaml        | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/usb/allwinner,sun4i-a10-musb.yaml b/Documentation/devicetree/bindings/usb/allwinner,sun4i-a10-musb.yaml
index 8992eff6ce38..9ae634280bf4 100644
--- a/Documentation/devicetree/bindings/usb/allwinner,sun4i-a10-musb.yaml
+++ b/Documentation/devicetree/bindings/usb/allwinner,sun4i-a10-musb.yaml
@@ -17,6 +17,7 @@ properties:
       - const: allwinner,sun6i-a31-musb
       - const: allwinner,sun8i-a33-musb
       - const: allwinner,sun8i-h3-musb
+      - const: allwinner,suniv-f1c100s-musb
       - items:
           - enum:
               - allwinner,sun8i-a83t-musb
-- 
2.35.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
