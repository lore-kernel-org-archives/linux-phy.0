Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABABCC46467
	for <linux-phy@archiver.kernel.org>; Tue, 28 Dec 2021 05:20:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kup96eRfziZLl2ZNfmZSFcg1ODB35KQdZYE0CVSGBkQ=; b=VxoKkm0BMj1J2c
	a2+rZ+hJaK4qPTlheyC+0zvRTg9ws4aq54LmiM38fdllh41kX9LAGcbtt2L0t20Tp4QU5m1XwXmRy
	9X6CNNx/s333tzs5WaXZMMJ40MaPHQUtk285MwI1//NVz1Enal1TXZ2hpbXWSB8FKTGIeRKPNEDca
	f2OSvGVh6unnYth2lUDKKJTbEbLiCocVKVxa9sdWdiIEq/O7sBUntbFo8rzcKzrVwuUSs3gLcdoBX
	JaVzhUNsfpAWO7FnlzyCGNIM9Y6nNYjcpYRTzJWQ4aZhzGg2t4Gy8cvEV/TsZfLLNNcVGbxakJtR2
	A71+C9evsK+J7GJfL9CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n24uQ-000DDj-4E; Tue, 28 Dec 2021 05:20:26 +0000
Received: from mail-ot1-x329.google.com ([2607:f8b0:4864:20::329])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n24uN-000DBZ-5g
 for linux-phy@lists.infradead.org; Tue, 28 Dec 2021 05:20:24 +0000
Received: by mail-ot1-x329.google.com with SMTP id
 45-20020a9d0a30000000b0058f1a6df088so23116534otg.4
 for <linux-phy@lists.infradead.org>; Mon, 27 Dec 2021 21:20:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5qkhvwqL5P6fKs7oNS7HaFayMVjkjbb+csTnF0IATJM=;
 b=JsVtfRz4yYFnQobdkgg4UkM6KWP8eH2fNffjEhpLmBwI5vV/8uOhRIY/NFhk9PqpiS
 WyV1JehKNxswFrIZdV3uJXZypX/FPkbd0bk+IvApqryvUpMAKsGOTya+WJoHGK9841lK
 jcjcNJGJOT7JN3qeQwlij7CskNPNbaGwGxA2JqYpEdxDP/R81RCximNVhDpBDD6Y4lDB
 y+M+49HkIFIe30v7Q/+8TPUZl0z2HgS2ML5euSKhxa1s48SUQ1EhTYGIx3hMInXIwum7
 dCEPuUbcLy37jlbVbmbCWKSDx0p5yHrTUpdIw7OlDpiPn/xKeNXKYt6sXi+ta58Tzaaa
 N9SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5qkhvwqL5P6fKs7oNS7HaFayMVjkjbb+csTnF0IATJM=;
 b=UTbNL9VRyFG3VhSm0+Voyt6pnniurXzA6AEyB/2tG0ydOgjbFzBSRlrUJY3dW8W3KO
 1S5mvHWNX1K0uUagSN5cN4iVsS6aJC5+VMHvmEVNNTbYJGQuIpXeaajfhe2WWr8UhRSN
 ErOMmwN97oPveqnmANYgmA3UxO11eODno5RJtJbtWEMzk5tgszQ5ps06JHzNY07nAgLs
 2BFAV0ezvHVe7CSUPJecHiRYcNpeVLT51kCl10eX8D/v2Hu44B6+ZQ1C878QCv4iIJ03
 TywKf2Mk8MNKdl+IqIZSCyGQH0RVcLwYtFP4YMoLQJZPMYIOkzUK+XXJfyhxjtXYLMb6
 AgdA==
X-Gm-Message-State: AOAM532hm+sZVNdk7nrWIw3MM98MeMWHOMG/rXf1YcN1gjF+LoE033Yg
 2Oj7L+UusOyadLk7k39M1205xA==
X-Google-Smtp-Source: ABdhPJyvheEoVfaHEcl5aH5u4jbH5k2Mz94IQFy7DQwqM4nXTSmC9N3ptb4xnGPpB6WvdD+GdrZrQg==
X-Received: by 2002:a05:6830:1091:: with SMTP id
 y17mr14407419oto.384.1640668822569; 
 Mon, 27 Dec 2021 21:20:22 -0800 (PST)
Received: from ripper.. (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id j5sm3002277oou.23.2021.12.27.21.20.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Dec 2021 21:20:22 -0800 (PST)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Hans de Goede <hdegoede@redhat.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
Subject: [PATCH 7/8] dt-bindings: usb: Add binding for fcs,fsa4480
Date: Mon, 27 Dec 2021 21:21:15 -0800
Message-Id: <20211228052116.1748443-8-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211228052116.1748443-1-bjorn.andersson@linaro.org>
References: <20211228052116.1748443-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211227_212023_238213_5FE8F7F3 
X-CRM114-Status: GOOD (  13.19  )
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

The Fairchild/ON Semiconductor FSA4480 Analog Audio switch is used in
USB Type-C configurations for muxing analog audio onto the USB
connector, and as such used to control the SBU signals for altmodes such
as DisplayPort.

Add a binding for this hardware block.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 .../devicetree/bindings/usb/fcs,fsa4480.yaml  | 72 +++++++++++++++++++
 1 file changed, 72 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/usb/fcs,fsa4480.yaml

diff --git a/Documentation/devicetree/bindings/usb/fcs,fsa4480.yaml b/Documentation/devicetree/bindings/usb/fcs,fsa4480.yaml
new file mode 100644
index 000000000000..9473f26b0621
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/fcs,fsa4480.yaml
@@ -0,0 +1,72 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/usb/fcs,fsa4480.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: ON Semiconductor Analog Audio Switch
+
+maintainers:
+  - Bjorn Andersson <bjorn.andersson@linaro.org>
+
+properties:
+  compatible:
+    enum:
+      - fcs,fsa4480
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  vcc-supply:
+    description: power supply (2.7V-5.5V)
+
+  mode-switch:
+    description: Flag the port as possible handle of altmode switching
+    type: boolean
+
+  orientation-switch:
+    description: Flag the port as possible handler of orientation switching
+    type: boolean
+
+  port:
+    $ref: /schemas/graph.yaml#/properties/port
+    description:
+      A port node to link the FSA4480 to a TypeC controller for the purpose of
+      handling altmode muxing and orientation switching.
+
+required:
+  - compatible
+  - reg
+  - port
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    i2c13 {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        fsa4480@42 {
+          compatible = "fcs,fsa4480";
+          reg = <0x42>;
+
+          interrupts-extended = <&tlmm 2 IRQ_TYPE_LEVEL_LOW>;
+
+          vcc-supply = <&vreg_bob>;
+
+          mode-switch;
+          orientation-switch;
+
+          port {
+            fsa4480_ept: endpoint {
+              remote-endpoint = <&typec_controller>;
+            };
+          };
+        };
+    };
+...
-- 
2.33.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
