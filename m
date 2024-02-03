Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22C6AC4828D
	for <linux-phy@archiver.kernel.org>; Sat,  3 Feb 2024 16:53:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PWhTbUI7m1V8B50o4WtjFzq1p1l68PeeRXO2h5NalbQ=; b=ecDi1hfIesSpFA
	emGYKW412QSc+u8WqImYtQytJzE6Q4La8gFQJ+FF15SMJuFMsPMGQSpByxzZH3CX58e0NlkFy7crQ
	WW9FJnuckZ4aBjyAXLjKVx/CvUgduYpxQNAMIKP7jmWjnWEvB8bbK1AhG3ffAqWzgHlIZ6nVBWFK6
	7vYZqSz80BEvSOQe/NinGxPMoGV89wph1aYZ5D5snJQMXfuKgH+JP7Sz4gOeIIY8ozZtH9EySuImS
	d21/BBxJoIhs2Z+Yb1zcXu9YaLu6fN/LvAK0jRYeS6/JfZaPCzZgKWcuu41D1pR8JyUvst6kbTS00
	6xZYVa/nH7bB1gyX6qIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWJGu-0000000Gq6P-3KQc;
	Sat, 03 Feb 2024 16:53:40 +0000
Received: from mail-io1-xd36.google.com ([2607:f8b0:4864:20::d36])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWJGr-0000000Gq4s-3zmp;
	Sat, 03 Feb 2024 16:53:39 +0000
Received: by mail-io1-xd36.google.com with SMTP id ca18e2360f4ac-7c009016d5bso120318439f.1;
        Sat, 03 Feb 2024 08:53:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706979216; x=1707584016; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DkvYfuuKpH2RXM+gZl2DrO4caEYcPakC9a9yPqGZtlw=;
        b=LsTxyoiT+YYBioOdOm2mIGbMabOY+C63XIGuJz0QdrS3SkkwdteitENgTiGY8rFUdB
         qF5siiPUptdy2cePsN5oiabHZ1D3FE2hlAscWSx4oUp/plUiARgacDGqLqSCH2Syi8Fo
         ttQXIqCeRj9b3WSYhKNn3Kbo67lmI+MxEyeopOjkrkqk18Az7J7URqUKUmqggYaz0hHF
         KaXcJiPD+kWmoOBQ+2isH4szHhnI2bCm5LMHImJGdb5F9glVGZv5CvjoC83Ezr9/l4g6
         VdyV0BsgOLQoMPhvzJvbkvB0gNAlPZ+drX8cPhpcxJHsal1x5kJWhs9gKkd5evq8Pm4B
         MiRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706979216; x=1707584016;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DkvYfuuKpH2RXM+gZl2DrO4caEYcPakC9a9yPqGZtlw=;
        b=DwnI673WK0yd7pq2+NDVNbfI/n6IQ7/firvWBw/5SX1jnVm5ylh5UNs+HrPzLzAmKF
         K3o6sXXebgK4VUc/5eJg8swtyH7Jgd6l7ANe+MndeXDZDlL+QaGQVJiLKO8gIq1AH1XJ
         ry4dCZvXFeH10HtEGjjQEsVIzprWMzsDf6oVM5toLShmpNvMC9lYU0T1ycsrXve2CLgN
         NkKFnVDT/CUAL63b9+Rpu5udaXh4fBRLwwEWnrEnKIGpNhENbjFB1rlY9b0boxhegOo5
         cUQFe0dzkZIqOt+IuKMAlPfJYYiv+3H3zOOjINesPiEUjBgCLWtbcdR2XLZKn5s3QtbC
         3WTw==
X-Gm-Message-State: AOJu0YwOccoQEey7myQsJPgz0PN0Fvt98uVVwqdPIEU9unvAsYiStRpk
	gUO/ewa4yofadytDphLZl67fXlj0ngvltmgBLMErTDZzeBtqrH5sRKz1xh02xss=
X-Google-Smtp-Source: AGHT+IEnlehfxC3EzWtYjfCC3lg1i9dFNOJn0VmenuEK/v0vuI8ECXoRZdHOVhb90XAj8e9K5eLOTA==
X-Received: by 2002:a05:6602:122e:b0:7c2:c868:d864 with SMTP id z14-20020a056602122e00b007c2c868d864mr3311227iot.10.1706979215630;
        Sat, 03 Feb 2024 08:53:35 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCVjSq9uyvcTPIb1quTtFSupfo+AL7NwJHi6Gu9nFWWPsmK3n0IEtNuMcvPWgzs9ROEuzmDK7+Wupt2U4qGGShNuzx2ikrWYvZJ/eLQgqMNjsPAmbBFMoOlIfiUgvt9rDcSf90uM05CbsK7HmPlbjA4HdOvDHgzozVjMJ4nYwd3PIt7kwXGtQX+NC0ehIFWD/Iqc3ihmxr3qjqO0ux70S7eSaXSAudI43x6cWqJTIpY9O7Z0EJAQBAerJvvb63N4nuYp0CDntCNnt9jv5xL8UiE2YnKrLFgPQWmetCSi3NNhyIXe3NjiYKKKQjVdr/L6ApH0/1upjtGlWPICCQGcbX+MsVUVWD+10W428nzxIH+5dSaEUNKgA2UXG5O+3x8BPM42Lk1nw6769jHifqDAbmh8oYgREXJt43SEtWs0Q2Kw+8fa29c5MY4eUANjOM2LEd29krLgsvnzynjeAcWOgT2StD4fdgMHOHikKBm0upJuFRx6E24nV2rMqvEYYXlvVptT1CRz0FQaq3BXGZ2/+tYak8y962zSr0Z97YrKXI65juREBPHm/SogAU7MW2Vmz8Bug/jcPZt1ycppSiD3Y3CyVrF9zGlf3Ym+b7QEVGQVh43eY119Xx42CFZZjbRmMfdnRHG7LBZF0uGpH3ekeVHTbnVURFewtaY8GnQvpu/5v7C7deIBXMNhFN4aYbmBMWPdE7xaGuzpxOx85u4690rcnBzSOP37lsU/rU26nkQFukAKLzdkSNZCuiNoN55jijF5Q0zBbV6q5CMc2GY8g3jy0gMHsI2IHqeG+o/JM3vWdqh2gpJDd7rE7ckT5vg27ALY/Y2rER5Tbsanb4jlygSWOkMuURwUEdv0oecCQ2UxmAtpFh68Dr5hso0K9/yy7hag2o9VcCLmnHXBC2VVS4vSWHddjoSYUei0RdcQJO7eNCotvGJXUrv9rha08zAHKY94An
 d4r+OPZZMUhxaoi6lIu2Mv8TVSA6zWR4R7R+d4rA+c/RakQwPr38lbHRVnrC3W7wuFaXfGqiZswJWCs9+HeFccxOyl7VxYNRbbmce3Dyn+5gm+OpGoD+yu7xaaUBGZSoE2L3R/KWDDKIRnq98KiwcqGM1DcpLSTdJq1lC7Ni01p+sRk70WhetbCqzNgP6N/NWFDqhP2I0RhVgFQAw47O++snhkvHAL9d1il3HDdBnzucrXNqTLTuqp8gBJKqbZXj7hqlNYjBjc
Received: from aford-System-Version.lan ([2601:447:d002:5be:d9b2:bb4f:5531:6aa9])
        by smtp.gmail.com with ESMTPSA id t30-20020a05663836de00b00470b29b82b1sm1086256jau.154.2024.02.03.08.53.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Feb 2024 08:53:32 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Cc: marex@denx.de,
	alexander.stein@ew.tq-group.com,
	frieder.schrempf@kontron.de,
	Lucas Stach <l.stach@pengutronix.de>,
	Adam Ford <aford173@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
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
Subject: [PATCH V8 01/12] dt-bindings: phy: add binding for the i.MX8MP HDMI PHY
Date: Sat,  3 Feb 2024 10:52:41 -0600
Message-ID: <20240203165307.7806-2-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240203165307.7806-1-aford173@gmail.com>
References: <20240203165307.7806-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240203_085338_064969_2F340FB9 
X-CRM114-Status: GOOD (  15.98  )
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

Add a DT binding for the HDMI PHY found on the i.MX8MP SoC.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Signed-off-by: Adam Ford <aford173@gmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
V3:  Removed mintems at the request of Krzysztof and add his
     reviewed-by

V2:  I tried to help move this along, so I took Lucas' patch and
     attempted to apply fixes based on feedback.  I don't have
     all the history, so apologies for that.

     Added phy-cells to the required list and fixed an error due
     to the word 'binding' being in the title.
---
 .../bindings/phy/fsl,imx8mp-hdmi-phy.yaml     | 62 +++++++++++++++++++
 1 file changed, 62 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml b/Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml
new file mode 100644
index 000000000000..c43e86a8c2e0
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml
@@ -0,0 +1,62 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/fsl,imx8mp-hdmi-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale i.MX8MP HDMI PHY
+
+maintainers:
+  - Lucas Stach <l.stach@pengutronix.de>
+
+properties:
+  compatible:
+    enum:
+      - fsl,imx8mp-hdmi-phy
+
+  reg:
+    maxItems: 1
+
+  "#clock-cells":
+    const: 0
+
+  clocks:
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: apb
+      - const: ref
+
+  "#phy-cells":
+    const: 0
+
+  power-domains:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - "#clock-cells"
+  - clocks
+  - clock-names
+  - "#phy-cells"
+  - power-domains
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx8mp-clock.h>
+    #include <dt-bindings/power/imx8mp-power.h>
+
+    phy@32fdff00 {
+        compatible = "fsl,imx8mp-hdmi-phy";
+        reg = <0x32fdff00 0x100>;
+        clocks = <&clk IMX8MP_CLK_HDMI_APB>,
+                 <&clk IMX8MP_CLK_HDMI_24M>;
+        clock-names = "apb", "ref";
+        power-domains = <&hdmi_blk_ctrl IMX8MP_HDMIBLK_PD_HDMI_TX_PHY>;
+        #clock-cells = <0>;
+        #phy-cells = <0>;
+    };
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
