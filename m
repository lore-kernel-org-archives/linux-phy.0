Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36277C433FE
	for <linux-phy@archiver.kernel.org>; Fri, 18 Nov 2022 15:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4e+0kcFvZis4O0/I/ZKPYRsVZxbwLNrUOoNhi0Motkc=; b=kbvm0Bwg5M4YAK
	vA09MAHyOdTtWF4Dn2Adfp3+N315lqK4lviiP2MaOzASG51xsH/NlsIo0mGK/hkfKdcsfek/MurhS
	UOt5frgQLQFW9i6z44MKJbjfWas/AS82GmxBTfkW3sjhBQjV1YzAZ11jt90rcd+NNkjJkCyuoLOl8
	uy+NMHX/U4oPXQmh6/X/lCveAUg5RwB9rK+Gdny9iIWH3dwC0gIcs5qP9vDEGf322ehL62LyBA6qK
	JXvqatbyFAYTNthcHhA6Xn+WgUOCYup6GbNxog/ddFhGooneKQ+WKsRGCyS7uuH6bCKgKOr/vb44H
	uBb5a4ij65GnfC2wVU8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow3ZQ-0052BT-LE; Fri, 18 Nov 2022 15:46:24 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow2Qw-004Tao-FS
	for linux-phy@lists.infradead.org; Fri, 18 Nov 2022 14:33:38 +0000
Received: by mail-wr1-x433.google.com with SMTP id l14so9577644wrw.2
        for <linux-phy@lists.infradead.org>; Fri, 18 Nov 2022 06:33:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y27Dxuej0JJOzYqREuZ7buGqEQSIRreRsNAzFXY30l0=;
        b=or9xiwYvnOBoUw+/IBUWQko0HRB0n/YeH7CUxy44N4SxiFrHZnEJKIE2DPEbYWoUXk
         ZZmCWNBh5KbAvGw90Y4UgrJcZc+UlXC2CPjxHgm0FkkqNmtWFEDa7u6qtTGVTpTnPfA9
         ubG0wkELzgV2gRQCCool5kNX4GooCiy4HVWdtyXmtdcVUeXyXNYeQxIwiSIsIhxJRk9i
         KZKoHyK25p+bVfA4TvjcWIxqNg3os2kNiaLU6I6sE27++JX5UWb7yU/HnZLEaJrP3a1w
         I22lUfa6AUCe5UEAzemXMt83a7n/HSnGusArdBOYRU5BluvmOoDBpuBG4wiU2n3oF11M
         RGFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y27Dxuej0JJOzYqREuZ7buGqEQSIRreRsNAzFXY30l0=;
        b=zw3kGljcwRtIcAgSv5rKdUhih0JCcr+05dPpjxTDbhiU+fU/3hO7GG4uYLBFFGMSmH
         vQALtKcxrRe+6y5V9RulwcmQgGIcuNDyVgAZK6+R8YlrWztLG3Im/Zgn4RfkHYJYFgjZ
         gGacw7xU3ORVgKSpAROslXjzOvfemw8OxEp/A8NKOgwZEep4s1xrG/RxbzvJ00VzY3Rx
         cqcPXmqNj1w9VL7DPyzxHLu45oMRlkdsED4HTkgHxviCkuLZm4teAQ9sInqrj7bwj3w9
         +5y0DXgQivQTBr337Z/K00Q85M/5U+0mqnZM2KsfS8aKh1ktJHw25rvSwmHR369CxIPk
         fMUA==
X-Gm-Message-State: ANoB5pl6Q2yj0QNDN+nwbweueNbcs3onM1GY8BL42RLATV3213AlslAR
	LWyYjMlHZRRV4xRiq6LmY69whg==
X-Google-Smtp-Source: AA0mqf7812T75JmU1RK3dUswEj+nSB6pF/2V/PIu/zIN4QQtJ/ZBP39Rfn1JU4+7LgOWa59FP8nB0w==
X-Received: by 2002:a5d:56c2:0:b0:241:94bc:2796 with SMTP id m2-20020a5d56c2000000b0024194bc2796mr4281152wrw.184.1668782012260;
        Fri, 18 Nov 2022 06:33:32 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id j21-20020a05600c1c1500b003cfb7c02542sm5436726wms.11.2022.11.18.06.33.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Nov 2022 06:33:31 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 18 Nov 2022 15:33:27 +0100
Subject: [PATCH 01/12] dt-bindings: firmware: convert meson_sm.txt to dt-schema
MIME-Version: 1.0
Message-Id: <20221117-b4-amlogic-bindings-convert-v1-1-3f025599b968@linaro.org>
References: <20221117-b4-amlogic-bindings-convert-v1-0-3f025599b968@linaro.org>
In-Reply-To: <20221117-b4-amlogic-bindings-convert-v1-0-3f025599b968@linaro.org>
To: Jakub Kicinski <kuba@kernel.org>, Wim Van Sebroeck <wim@linux-watchdog.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Rob Herring <robh+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 Alessandro Zummo <a.zummo@towertech.it>, Eric Dumazet <edumazet@google.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Kevin Hilman <khilman@baylibre.com>, Ulf Hansson <ulf.hansson@linaro.org>, Heiner Kallweit <hkallweit1@gmail.com>,
 Vinod Koul <vkoul@kernel.org>, Russell King <linux@armlinux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Guenter Roeck <linux@roeck-us.net>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Jerome Brunet <jbrunet@baylibre.com>, Paolo Abeni <pabeni@redhat.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Cc: linux-media@vger.kernel.org, netdev@vger.kernel.org, linux-amlogic@lists.infradead.org, linux-mmc@vger.kernel.org,
 linux-rtc@vger.kernel.org, linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-watchdog@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 Neil Armstrong <neil.armstrong@linaro.org>, devicetree@vger.kernel.org
X-Mailer: b4 0.10.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221118_063334_605342_779315D6 
X-CRM114-Status: GOOD (  12.26  )
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

Convert the Amlogic Secure Monitor bindings to dt-schema.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../bindings/firmware/amlogic,meson-gxbb-sm.yaml   | 36 ++++++++++++++++++++++
 .../bindings/firmware/meson/meson_sm.txt           | 15 ---------
 2 files changed, 36 insertions(+), 15 deletions(-)

diff --git a/Documentation/devicetree/bindings/firmware/amlogic,meson-gxbb-sm.yaml b/Documentation/devicetree/bindings/firmware/amlogic,meson-gxbb-sm.yaml
new file mode 100644
index 000000000000..33d1408610cf
--- /dev/null
+++ b/Documentation/devicetree/bindings/firmware/amlogic,meson-gxbb-sm.yaml
@@ -0,0 +1,36 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/firmware/amlogic,meson-gxbb-sm.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Amlogic Secure Monitor (SM)
+
+description:
+  In the Amlogic SoCs the Secure Monitor code is used to provide access to the
+  NVMEM, enable JTAG, set USB boot, etc...
+
+maintainers:
+  - Neil Armstrong <neil.armstrong@linaro.org>
+
+properties:
+  compatible:
+    const: amlogic,meson-gxbb-sm
+
+patternProperties:
+  "power-controller":
+    type: object
+    $ref: /schemas/power/amlogic,meson-sec-pwrc.yaml#
+
+required:
+  - compatible
+
+additionalProperties: false
+
+examples:
+  - |
+    firmware {
+        secure-monitor {
+            compatible = "amlogic,meson-gxbb-sm";
+        };
+    };
diff --git a/Documentation/devicetree/bindings/firmware/meson/meson_sm.txt b/Documentation/devicetree/bindings/firmware/meson/meson_sm.txt
deleted file mode 100644
index c248cd44f727..000000000000
--- a/Documentation/devicetree/bindings/firmware/meson/meson_sm.txt
+++ /dev/null
@@ -1,15 +0,0 @@
-* Amlogic Secure Monitor
-
-In the Amlogic SoCs the Secure Monitor code is used to provide access to the
-NVMEM, enable JTAG, set USB boot, etc...
-
-Required properties for the secure monitor node:
-- compatible: Should be "amlogic,meson-gxbb-sm"
-
-Example:
-
-	firmware {
-		sm: secure-monitor {
-			compatible = "amlogic,meson-gxbb-sm";
-		};
-	};

-- 
b4 0.10.1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
