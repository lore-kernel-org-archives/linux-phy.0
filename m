Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCDD6C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 16 Dec 2021 16:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nTD3LSHf1ZgAeOhF0wZqmGWxhTBTIDP7OtvGhGPFGLg=; b=3iLWP/umkzaMoP
	a5EfT8ISpz1kvbSBnywEteqGlhmvcdmTLZTETjGPCcexo3SrqAijcwX0R8i4R2zkEkI6dtt7yPCXI
	X8ZNaPUBN1kET58VzrP4Uj55CDamkOnLv0RExXLAd7HLAkTrJmmCRY9k0Hs6oUmxDDkNqRdIgZ5kI
	YndgY7McrHYUeTrlBsoqmPb10DH5sf3qFHEvwQFgc1sfLlENNZEhY3AWM8O9QsxGtJL7gDAFSK+7m
	0+u4sHl0p1MsK9Vx3+Ga6f4zl+Focot7CTia6YwRWiTZ0kPS1iYa/GSvLhMA/grAIgP8juK0VWYws
	YpRtwGjR+5XLOTkMhByQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxtK1-006V1u-3y; Thu, 16 Dec 2021 16:09:33 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxtGU-006TSg-H8; Thu, 16 Dec 2021 16:05:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
 t=1639670754; x=1671206754;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=p5HHJrSYp7xxYPtjPoRgmxeGfWmt/+mPIconMbitaRw=;
 b=V03VoirFryCsDsSr77xAGJct6Fpdvf6prih7cppGHSoGHWTUWkiu47Bo
 IyfQAKZgMW2xGpQhF6cXucr/m52rlft0VSbfKrt1FgDdwYWMUDT/1yO/u
 t7icKp2ecJV+dMijjUpX9xIN44gLGQ1MV9OkzM2T/tj9DExUQa4S+GJB4
 RM3VF06te62I2M7k6s78UWccgDc02gjK4bOsvokWrxPvLte2hHkYuYRfn
 POJowEXvmyQJPX8ErkOtygA0gitomhwcd1M2Y5sV4D6TPBsLW2djdQ8Qh
 bJMPJ/oL08WGT77Z7GKcWVh5XdaGeJqlAYXZV2YQH+Z7Jcmx+xcKZb3Q/ g==;
X-IronPort-AV: E=Sophos;i="5.88,211,1635199200"; d="scan'208";a="21103119"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
 by mx1-pgp.tq-group.com with ESMTP; 16 Dec 2021 17:05:50 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
 by tq-pgp-pr1.tq-net.de (PGP Universal service);
 Thu, 16 Dec 2021 17:05:50 +0100
X-PGP-Universal: processed;
 by tq-pgp-pr1.tq-net.de on Thu, 16 Dec 2021 17:05:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
 t=1639670750; x=1671206750;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=p5HHJrSYp7xxYPtjPoRgmxeGfWmt/+mPIconMbitaRw=;
 b=f47b9sh68caCcc8NOisVj4ILwTT3LSAfRZyDrHH1e+qQgjFvbSZhHAfx
 xQCH7G2cnpsjy0mYvk/BUbXWfNikW7mgi4tfgEYgLDZRQKM/Yd1J8E7dE
 wR8dnVtWV8nHhMi21MXLOWvFpzAafSlz5Z1hTGs6v7nMW8VhsWsdkmzSS
 jCYJncuIIKsPXNiSkuS1V7fkKzRBVBBIUjeIfkH2J+byUKe4IEjb+Vio6
 9ONB9waI+ptQGMm90zFo4G8FhO1DVMEH0tR33i4IgeXSmfFdgRVZzahXE
 n3as5oJbI6v9S8SBkE9xZvbgYHepexc1098UfQyXFO4LzDcti7YFOZi20 A==;
X-IronPort-AV: E=Sophos;i="5.88,211,1635199200"; d="scan'208";a="21103118"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
 by mx1.tq-group.com with ESMTP; 16 Dec 2021 17:05:50 +0100
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id CFDAB280075;
 Thu, 16 Dec 2021 17:05:49 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
 NXP Linux Team <linux-imx@nxp.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/3] dt-bindings: phy: imx8mq-usb-phy: Add imx8mp specific
 flags
Date: Thu, 16 Dec 2021 17:05:39 +0100
Message-Id: <20211216160541.544974-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211216160541.544974-1-alexander.stein@ew.tq-group.com>
References: <20211216160541.544974-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211216_080554_934548_BBCFAD70 
X-CRM114-Status: GOOD (  13.32  )
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

This adds bindings for features only available on imx8mp. They allow
setting polarity of PWR and OC as well as disabling port power control.
Also permanently atteched can be annotated as well.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
Adding properties specific to one compatible globally and disabling them on
other compatibles is the way to go?

Are there any best practices on the usage of '-' and/or '_' in property names?

 .../bindings/phy/fsl,imx8mq-usb-phy.yaml      | 52 ++++++++++++++++++-
 1 file changed, 51 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml b/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
index 2936f3510a6a..1d28b7d1c413 100644
--- a/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
@@ -16,7 +16,8 @@ properties:
       - fsl,imx8mp-usb-phy
 
   reg:
-    maxItems: 1
+    minItems: 1
+    maxItems: 2
 
   "#phy-cells":
     const: 0
@@ -32,6 +33,28 @@ properties:
     description:
       A phandle to the regulator for USB VBUS.
 
+  fsl,permanently-attached:
+    type: boolean
+    description:
+      Indicates if the device atached to a downstream port is
+      permanently attached.
+
+  fsl,disable-port-power-control:
+    type: boolean
+    description:
+      Indicates whether the host controller implementation includes port
+      power control. Defines Bit 3 in capability register (HCCPARAMS).
+
+  fsl,over-current-active-low:
+    type: boolean
+    description:
+      Over current signal polarity is active low.
+
+  fsl,power-active-low:
+    type: boolean
+    description:
+      Power pad (PWR) polarity is active low.
+
 required:
   - compatible
   - reg
@@ -39,6 +62,33 @@ required:
   - clocks
   - clock-names
 
+if:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - fsl,imx8mp-usb-phy
+
+then:
+  properties:
+    reg:
+      minItems: 2
+      maxItems: 2
+      items:
+        - description: PHY register base address
+        - description: Glue layer base address
+
+else:
+  properties:
+    reg:
+      maxItems: 1
+      items:
+        - description: PHY register base address
+    fsl,permanently-attached: false
+    fsl,disable-port-power-control: false
+    fsl,over-current-active-low: false
+    fsl,power-active-low: false
+
 additionalProperties: false
 
 examples:
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
