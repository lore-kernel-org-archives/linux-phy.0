Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2602C77B7F
	for <linux-phy@archiver.kernel.org>; Tue, 16 May 2023 16:20:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yZQNDKERS1tjYSxMC2pQ/d/DzpW0Le9DZ6IlyCKA90o=; b=KChlW7sptQr4oh
	9uszPSlEP+EaPeS14ms3VmsHabQDwh8JGvtt7qyH9ZrQDRBoJHXic4F5M3QD7BYJr6jtVOuWbIwNa
	wgssYxIoWgMiChwyFtZsnowvrJQt25f3QDdjOvfTuRQ0zOibTDIqqV/G+C/XT+pIkjWDEtnau0hfe
	QDFzZVuywb5iS3QqMfIRlwzrGTbELbC+i6NAXe8ms9t2GVW+ZQUrm2WLRtQnZIjkZZzGY5DEAQx+3
	cic0Q0xll8zJgvp+aAoYRhb/kxYV7m0qMxrrXv+J4S4CdItumblwL9tRgVuSNi4GgMRCh9d0egwQh
	3APA0xm+EEb4DvRdIXGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyxPz-006Rby-1U;
	Tue, 16 May 2023 16:20:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyxPw-006RZv-1k
	for linux-phy@lists.infradead.org;
	Tue, 16 May 2023 16:20:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <j.zink@pengutronix.de>)
	id 1pyxPd-0002nv-Im; Tue, 16 May 2023 18:20:33 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <j.zink@pengutronix.de>)
	id 1pyxPc-000eDz-Pm; Tue, 16 May 2023 18:20:32 +0200
Received: from localhost ([::1] helo=dude03.red.stw.pengutronix.de)
	by dude03.red.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <j.zink@pengutronix.de>)
	id 1pyxPb-00DODy-Q4; Tue, 16 May 2023 18:20:31 +0200
From: Johannes Zink <j.zink@pengutronix.de>
Date: Tue, 16 May 2023 18:20:19 +0200
Subject: [PATCH v2 1/2] dt-bindings: phy: imx8mq-usb: add phy tuning
 properties
MIME-Version: 1.0
Message-Id: <20230516-lustige-usb-phy-dinge-v2-1-3383a0de34ac@pengutronix.de>
References: <20230516-lustige-usb-phy-dinge-v2-0-3383a0de34ac@pengutronix.de>
In-Reply-To: <20230516-lustige-usb-phy-dinge-v2-0-3383a0de34ac@pengutronix.de>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, 
 Li Jun <jun.li@nxp.com>
Cc: patchwork-jzi@pengutronix.de, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Johannes Zink <j.zink@pengutronix.de>
X-Mailer: b4 0.12.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: j.zink@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_092052_601243_DBE83412 
X-CRM114-Status: GOOD (  10.86  )
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

Add optional properties for tuning of usb phy.

Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
---
 .../bindings/phy/fsl,imx8mq-usb-phy.yaml           | 47 ++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml b/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
index e6f9f5540cc3..dc3a3f709fea 100644
--- a/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
@@ -35,6 +35,53 @@ properties:
     description:
       A phandle to the regulator for USB VBUS.
 
+  fsl,phy-tx-vref-tune-percent:
+    description:
+      Tunes the HS DC level relative to the nominal level
+    minimum: 94
+    maximum: 124
+
+  fsl,phy-tx-rise-tune-percent:
+    description:
+      Adjusts the rise/fall time duration of the HS waveform relative to
+      its nominal value
+    minimum: 97
+    maximum: 103
+
+  fsl,phy-tx-preemp-amp-tune-microamp:
+    description:
+      Adjust amount of current sourced to DPn and DMn after a J-to-K
+      or K-to-J transition. Default is 0 (disabled).
+    minimum: 0
+    maximum: 1800
+
+  fsl,phy-tx-vboost-level-microvolt:
+    description:
+      Adjust the boosted transmit launch pk-pk differential amplitude
+    minimum: 880
+    maximum: 1120
+
+  fsl,phy-comp-dis-tune-percent:
+    description:
+      Adjust the voltage level used to detect a disconnect event at the host
+      relative to the nominal value
+    minimum: 91
+    maximum: 115
+
+  fsl,phy-pcs-tx-deemph-3p5db-attenuation-db:
+    description:
+      Adjust TX de-emphasis attenuation in dB at nominal
+      3.5dB point as per USB specification
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 0
+    maximum: 36
+
+  fsl,phy-pcs-tx-swing-full-percent:
+    description:
+      Scaling of the voltage defined by fsl,phy-tx-vboost-level-microvolt
+    minimum: 0
+    maximum: 100
+
 required:
   - compatible
   - reg

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
