Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01071C4828F
	for <linux-phy@archiver.kernel.org>; Sat,  3 Feb 2024 16:54:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c7IXBdCqFcBfseKYqqkEQnO1xAT+gts9sGpJSKEP0s0=; b=kNwdE3Hsak8b9g
	MXsT9ONjF+/Nk0gvyx/XHjzsBAu8b69Uwx02f2ox4gBJ3/0F73KOLx90HAEoyAId+TmX++rVm3yxY
	d0GjudbjuHWYagO/CrpQDvFs8bL65bH6st8q9gO4+9lYfxlqeM4tkipb3df6a3tE2f00dOhIK2wwc
	UWRrUhLVu9SNqCDMbA3SqorPjURRWh+udHwejDcp7Mz1eYtNAXTHl4aOCucl6/9Z/xdyhegFFGZNT
	PvQ255tTk35lTWtjK6ppxcZ/ToA1gptuF6mPQTHci90Vvm3wT323u3NkR6cpn7i3B2MsUo8MxeVhv
	QBHtq0hta6wWgXC/o+lA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWJHs-0000000Gqon-1rJn;
	Sat, 03 Feb 2024 16:54:40 +0000
Received: from mail-io1-f43.google.com ([209.85.166.43])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWJHZ-0000000GqaF-3ywm;
	Sat, 03 Feb 2024 16:54:33 +0000
Received: by mail-io1-f43.google.com with SMTP id ca18e2360f4ac-7bed9fb159fso131438639f.1;
        Sat, 03 Feb 2024 08:54:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706979259; x=1707584059; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iHK4uYY3PEuLbfB443xySfJh6mTWFIfLyC9ZOn+YSEA=;
        b=FBnocbcfVIy1HQsuYYPOLCtSdOSKBnl/yybetzHOXb0bA/wOq2Y1oMc/nYU+0fR6WM
         ykGiCRFlA8vhfN0FbZyvf52LZ8cN2BZvVrnZV2tSi3eRcGx92IT8ZxiqkxMm5ExX4URM
         qq3irINbZFObzgycmqSNYgEUPI1/bvTPyMtfJNW5vdCmCFDP/2jl6/gN3cVRHgCkLaGZ
         YnLKyfl/ADD2IRJgqtlCG0IMUXDOom8oZm0b2Pb6WmuUh0fpMB4RXCrOT08tDX00nwBl
         g94lWay2c+O4jZsLCgSb81P3+X1kqi17qmlE0RmUvfKLIDgvqCT8yFCPsH+3wYwcvBNa
         TE7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706979259; x=1707584059;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iHK4uYY3PEuLbfB443xySfJh6mTWFIfLyC9ZOn+YSEA=;
        b=QGkNHh7BzZMf7zD6OzIK08JVabfWzqlxIQ3ynspF21fuD0VyOI8Dv3r5WL9epCY7vm
         DOwmS8QmWzM79c7lBhRFMyEz+CZeUp+iOhBOC2LCdkEGj/zHJiyVRzMDMIIJCUXMRJLA
         0vUD6z6oIZY+3l4dANMZT2H3T1FyJBcl2fzpVEA4nUT49j1WxCVorl5XQ/Z+RnC8ckQS
         nDLSQLs4eBL79Nc9bap4zBVEXMpw4d+KaB0wpAffmRNnNbq83oQdy1odTBJQGDPxcgsU
         SL7wMD1u5vNk1czSZO9f/a/aRA4tJxU9+UHCey4s6xUiXsL3PlOLzBuSXfM+Tb/E0GEx
         XFGw==
X-Gm-Message-State: AOJu0YwaxYth3TEQFENIm3yJcZhvKybEeSgx3ftsmKSC82SzosfTfoU4
	TVZhWy0RYI9oAHVKgb3osR1GJMa62XnH4CRqCIuhUDrpW/tLbyKjLUqMgxrasJg=
X-Google-Smtp-Source: AGHT+IH5DzrelkZeUzQOrbkI+GctzSKGfiIH9RZE+YFrVkDU00cTd2CRzJq//djvwBf6b1rrDqsQQQ==
X-Received: by 2002:a6b:5819:0:b0:7c0:409e:e3c5 with SMTP id m25-20020a6b5819000000b007c0409ee3c5mr5574885iob.19.1706979259164;
        Sat, 03 Feb 2024 08:54:19 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCXyOusTxAlEpAGlVDzNppwPsOqKckjm7lzwaCDbk6BJXWppLX7luv3fv5T0RSa5IzcdTQ7VwdHiKJ+0mT3b+ebzMbtut5OfmBMbUET5BV5ADOvN8uuvTTA5Zpn1ViPvRYwd5UUil8Z3a8lHC7Je0LPNbREzDR7R2vYu5SnvQ0qChXh7IaU8w/1fBVNQvschkCOvUnidyCQi0TMWC+RXvO7Ebcsi9fmLs+1CxyljaOLzlGRfYlsvPL5peem3JM0/HJkIEKuOnO9nDYKPlvD21irh+rwl2ze/t9idOn6BT2hqU5KEsryzAa1k4tgXK/GjW45TPqymEA/GquwctU4VldBwtDY4bDgdx5hEFeZsl6MHjEl2ZfOMazVnqAwiiT+DRVRsO4Zf09i28gfbWNK8P+Guka9VZM6iEYmMnpHpWjpWByNVY3FkuHO16LAfKay0uZUXHZteofRXFMLY2wT1s6xGVjXHGcmg9N7D6T8x2T5DBPYkrLc6sFH+2E1nzEFEFsPsLwkQRL+h87diA7AuIDqFeq4hQzGCAVigzRi5mAAknvFOiNVkOjx2uaVQwurSHvB9d5dT4poievAH/jkGiNaQVRCk152bP4QLPJHLeqzzCu/jr0kFPc25ZbApxcToIHcHzjM1Pmn5DMF2mxDpc8IUXuVwNWgT7ZE7mpovYvyq7jGeaB2Z0mcIjMcXpcIZoqWaOx8VagivoUmpGMNMGa21eG8+Vdv+aVlwN0l8LmzkkNamRwKTM4g7B6dwMlMC9MNnIrRDVF8rb0ja5kx43Ifwy8lCIi7AONLkciGw1dVR9+UEpO4KuKNm67CEzvCrxykvmAI6d8BB0efxYQ6e1Pl29sXmpXT/z/+Dse0auIzT4H0FQfEkO//4htSCy6oliv6omAsMZMMRr9Wj9gwrH/m+0w1QjRghCkiySHtI6eeBdwEw7rM58x1bBZCnKJSgfsQXw0
 sfJvvq0jKffalZMFTlDiHXwfsmaWZZguesYFTHSgC6j4BAOBu0KcNqADA3m2HqTp9nv/g7kGB1gY7aNY6cYj1YLFrcTePHBl8NLNtrtgczP2D8Y2E7mlOCEJJI4ebctHmnH1pZjWQU95luF1YCMOHFedMkYepuL5oIUOTukmoCI3x5cMy40sPwXlNqk2aF22Fodwztf824P6ccxmWCriu5UxydYuzgSw==
Received: from aford-System-Version.lan ([2601:447:d002:5be:d9b2:bb4f:5531:6aa9])
        by smtp.gmail.com with ESMTPSA id t30-20020a05663836de00b00470b29b82b1sm1086256jau.154.2024.02.03.08.54.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Feb 2024 08:54:15 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Cc: marex@denx.de,
	alexander.stein@ew.tq-group.com,
	frieder.schrempf@kontron.de,
	Lucas Stach <l.stach@pengutronix.de>,
	Adam Ford <aford173@gmail.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Liu Ying <victor.liu@nxp.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-pm@vger.kernel.org
Subject: [PATCH V8 09/12] dt-bindings: display: imx: add binding for i.MX8MP HDMI TX
Date: Sat,  3 Feb 2024 10:52:49 -0600
Message-ID: <20240203165307.7806-10-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240203165307.7806-1-aford173@gmail.com>
References: <20240203165307.7806-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240203_085422_390747_8899769A 
X-CRM114-Status: GOOD (  13.25  )
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

From: Lucas Stach <l.stach@pengutronix.de>

The HDMI TX controller on the i.MX8MP SoC is a Synopsys designware IP
core with a little bit of SoC integration around it.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Signed-off-by: Adam Ford <aford173@gmail.com>

---
V3:  Change name and location to better idenfity as a bridge and
     HDMI 2.0a transmitter

     Fix typos and feedback from Rob and added ports.
---
 .../display/bridge/fsl,imx8mp-hdmi-tx.yaml    | 102 ++++++++++++++++++
 1 file changed, 102 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/fsl,imx8mp-hdmi-tx.yaml

diff --git a/Documentation/devicetree/bindings/display/bridge/fsl,imx8mp-hdmi-tx.yaml b/Documentation/devicetree/bindings/display/bridge/fsl,imx8mp-hdmi-tx.yaml
new file mode 100644
index 000000000000..3791c9f4ebab
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/fsl,imx8mp-hdmi-tx.yaml
@@ -0,0 +1,102 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/bridge/fsl,imx8mp-hdmi-tx.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale i.MX8MP DWC HDMI TX Encoder
+
+maintainers:
+  - Lucas Stach <l.stach@pengutronix.de>
+
+description:
+  The i.MX8MP HDMI transmitter is a Synopsys DesignWare
+  HDMI 2.0a TX controller IP.
+
+allOf:
+  - $ref: /schemas/display/bridge/synopsys,dw-hdmi.yaml#
+
+properties:
+  compatible:
+    enum:
+      - fsl,imx8mp-hdmi-tx
+
+  reg-io-width:
+    const: 1
+
+  clocks:
+    maxItems: 4
+
+  clock-names:
+    items:
+      - const: iahb
+      - const: isfr
+      - const: cec
+      - const: pix
+
+  power-domains:
+    maxItems: 1
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Parallel RGB input port
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: HDMI output port
+
+    required:
+      - port@0
+      - port@1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - interrupts
+  - power-domains
+  - ports
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx8mp-clock.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/power/imx8mp-power.h>
+
+    hdmi@32fd8000 {
+        compatible = "fsl,imx8mp-hdmi-tx";
+        reg = <0x32fd8000 0x7eff>;
+        interrupts = <0 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&clk IMX8MP_CLK_HDMI_APB>,
+                 <&clk IMX8MP_CLK_HDMI_REF_266M>,
+                 <&clk IMX8MP_CLK_32K>,
+                 <&hdmi_tx_phy>;
+        clock-names = "iahb", "isfr", "cec", "pix";
+        power-domains = <&hdmi_blk_ctrl IMX8MP_HDMIBLK_PD_HDMI_TX>;
+        reg-io-width = <1>;
+        ports {
+           #address-cells = <1>;
+           #size-cells = <0>;
+           port@0 {
+             reg = <0>;
+
+             hdmi_tx_from_pvi: endpoint {
+               remote-endpoint = <&pvi_to_hdmi_tx>;
+             };
+          };
+
+          port@1 {
+            reg = <1>;
+              hdmi_tx_out: endpoint {
+                remote-endpoint = <&hdmi0_con>;
+              };
+          };
+        };
+    };
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
