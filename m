Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C29E7C433EF
	for <linux-phy@archiver.kernel.org>; Sat,  5 Feb 2022 19:43:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=td448TqfruNAnyXpRLOT11FKbgM+ySHuMjzuYtPxE2A=; b=CZfTq5qSI4RgL9
	89WrYZseS4lhR5LhY8s2/CoA9Sn1UxjkU+ASa5TRBkGeVwV6K0Vbc7ELJY4PBQQngGvBAWQ2v0NGy
	CcMFgNAOZh+A1rbWkoCI29LaeRlvlrLCtXNZgvvq8koJEE8qSENkPkJ3PyOsgpiOUU4zJiCAxFPBE
	VgV7i6BowM+3P1l7miTmiE3INNhBv2wEuHH1r0AqtHAXS3I7SdZzSU/fwKjl5Dr4zLraIIsOwEZZe
	ZezReB16Qy1PPya8xar3yvdIBospvYCoUvImqXAdy2Mgfw8wujfBsqw81Z1+SUAKf5G+tqzbOqq+U
	kJBlhvU7hjgjQznH9JGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGQyF-007JWF-0m; Sat, 05 Feb 2022 19:43:43 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGQEU-0070Ld-MA; Sat, 05 Feb 2022 18:56:31 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id 81F2C240008;
 Sat,  5 Feb 2022 18:56:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1644087385;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=cWlDFlzL8+IkUsCd3XbkduO7AeO2u+RkjDASLQBEGSY=;
 b=Y1ejiq0p8OoCz5w06qcSJEC5AU4QwRHXhkDz48KyNGCc+i9A7mzkvsosBy0vx8SQ74KrJ6
 VuU4jyMJbOdBzBLNxEC+D8qAOPpj9gPMtPfqb9Sc9kTM6Ne8tjIDzi9eHRX2EtDAWNYdXy
 /JrC6ct04HRQkmS2Tld95ochU8sfKPh6Gb8ymG/N2dbNqhvVQ1HZg+bAfB46zsEM4EWCV/
 QcnxjCntqHO3W6w1s3/2Lb+Nex2flzKMPXqWMUXVe+Ssmg3HB1gsZ/AIEg4b8dj44tXPhK
 lspkJi1vkN8XI6vXk4JYzN0N86X8mziteDoGby5LDKyoOhlus4btspxQUiSuzw==
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-staging@lists.linux.dev
Cc: Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: [PATCH v2 62/66] dt-bindings: media: sun6i-a31-csi: Add ISP output
 port
Date: Sat,  5 Feb 2022 19:54:25 +0100
Message-Id: <20220205185429.2278860-63-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220205_105627_007755_E6E57DB7 
X-CRM114-Status: UNSURE (   9.41  )
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

Some Allwinner devices come with an Image Signal Processor (ISP) that
allows processing camera data to produce good-looking images,
especially from raw bayer representations.

The ISP does not have a dedicated capture path: it is fed directly by
one of the CSI controllers, which can be selected at run-time.

Represent this possibility as a graph connection between the CSI
controller and the ISP in the device-tree bindings.

Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 .../bindings/media/allwinner,sun6i-a31-csi.yaml    | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml
index 3cc61866ea89..7952413f98d8 100644
--- a/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml
+++ b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml
@@ -83,6 +83,20 @@ properties:
 
         additionalProperties: false
 
+      port@2:
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        description: ISP output port
+
+        properties:
+          reg:
+            const: 2
+
+          endpoint:
+            $ref: video-interfaces.yaml#
+            unevaluatedProperties: false
+
+        additionalProperties: false
+
     anyOf:
       - required:
         - port@0
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
