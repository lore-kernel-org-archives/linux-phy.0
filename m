Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E26D5C83005
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jun 2023 09:24:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SlTkk1P+m0pxXfdp5Yw+ubrH7iDRSRC79TNvnOAxdvE=; b=Bhpf/Vr1kD5BaO
	w9mjTPiNPDOgvlJ2B4e51e+ydMSFqh4uZeTtybAAMvabQvQ4FbuSB76rHeXFVhOBR+kwFotofb5T3
	g126zWJgwX9OYFiQt4ejAAMtOdPkIErmXEColyIWM1GHO4j8FfjdE7HMwlelg1KIGP7ZAeTsG2Zh6
	2IJ0DOtOUco0+Q73tVCTvfhSSn/O4GDguUQw6UMWhz63vIiBH89ZtKba2dzBzGxJuUfmFfirI9MCv
	8+ImjcPaLQVu0V0Yh7moNwKvIpT5n9HtEFQy8xf7GGKKUxjhuxZGzw/Vg28QBswbAaoyEYNDOq/Qe
	F+dROwAwLOWyYn4Co10Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8dmx-003Gxk-1K;
	Mon, 12 Jun 2023 09:24:39 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8dmr-003GqY-2e
	for linux-phy@lists.infradead.org;
	Mon, 12 Jun 2023 09:24:36 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-4f62b552751so4636428e87.3
        for <linux-phy@lists.infradead.org>; Mon, 12 Jun 2023 02:24:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686561868; x=1689153868;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8Mia4wdvtEWv/Mc70nqXVtPO13y7zNqSpwQ13vNSfLE=;
        b=W7uLoIKXS7PAmiTERywWDbaMLHABZeojjIbT0BpPdVw/szDoWSLAhsDjiDhXxl4o0B
         N+mM9elzSP3JqtAq5iBMalhVzDLZAT3pgGrA4YH0qnHkzC5chXAFtZOuI8iB8RtRWpUk
         qOX25KL/ZPJsjCHVNrK5xFzMKBouPr39wPrNCJ/B1IYO0a5h4wx7RMpAIK3l/E/UnFKe
         dz6B6SoSKkxozrS8aYGNXN9zhyKDjdGgp5mZXmbuaHnXa5w2D/IMPaqTthkKHu/a1eea
         vPl6cgK054K85I0UCom0Hd9nIDiLDaTWrOXGQNcrNBsVHaU55BET5lMHbubFFmbZ6tzN
         s+SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686561868; x=1689153868;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8Mia4wdvtEWv/Mc70nqXVtPO13y7zNqSpwQ13vNSfLE=;
        b=h0kJX+BOkmejWI5nM0b9jQOY0oyyqbHemH9V4AQwBVU7Ui0OyPAlEh89yLAT4tbiTw
         9gfyCrWGpgl05EvkXFy/kgvwtDcL+g2jJ+mQWdPMe9TOGRNkbz1E70HoxE9cLsECkPy5
         Q8ci5rIcMjPowAt6drw81P9Tw1kj3xt93t055eMHgFyJ4A2HJYJvXRyca2AWETzFyYFo
         BOblUcbocjtSmGfOaK34FSo3PvL4vkSJmsL+d0R0Tatc//GFSX/EMcHVJ9x7tSn+WreW
         gef6UFaZZ9bkMfO332PwMuw7AcT1jEzwjNwEUwT44yNlETNs+Kbwvhq53XXCMMcxPh3D
         8hhA==
X-Gm-Message-State: AC+VfDwlEgQybh81G6upUaLdBDu/ZePpHkxyHjZZxfY3nFZIgdCb6o+j
	LnQAzglnChzJcDYfE2Gq9oUfjg==
X-Google-Smtp-Source: ACHHUZ7sNkFi76jykx6ZssCKdKti/71IHMljosCZWSu5MIy1k9ySFhWKg0cfjewEgtofPNt8VsdKgQ==
X-Received: by 2002:ac2:464d:0:b0:4f4:c972:981f with SMTP id s13-20020ac2464d000000b004f4c972981fmr4212236lfo.54.1686561868039;
        Mon, 12 Jun 2023 02:24:28 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:a222:bbe9:c688:33ae])
        by smtp.gmail.com with ESMTPSA id p14-20020a7bcc8e000000b003f727764b10sm10892044wma.4.2023.06.12.02.24.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 02:24:27 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Vinod Koul <vkoul@kernel.org>,
	Bhupesh Sharma <bhupesh.sharma@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Jose Abreu <joabreu@synopsys.com>
Cc: netdev@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH 02/26] dt-bindings: phy: describe the Qualcomm SGMII PHY
Date: Mon, 12 Jun 2023 11:23:31 +0200
Message-Id: <20230612092355.87937-3-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612092355.87937-1-brgl@bgdev.pl>
References: <20230612092355.87937-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_022433_861858_3DBEDCBE 
X-CRM114-Status: GOOD (  11.24  )
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

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Describe the SGMII/SerDes PHY present on the sa8775p platforms.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 .../phy/qcom,sa8775p-dwmac-sgmii-phy.yaml     | 52 +++++++++++++++++++
 1 file changed, 52 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml
new file mode 100644
index 000000000000..ba8d2bee1563
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml
@@ -0,0 +1,52 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm SerDes/SGMII ethernet PHY controller
+
+maintainers:
+  - Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
+
+description:
+  The SerDes PHY sits between the MAC and the external PHY and provides
+  separate Rx Tx lines.
+
+properties:
+  compatible:
+    const: qcom,sa8775p-dwmac-sgmii-phy
+
+  reg:
+    items:
+      - description: serdes
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: sgmi_ref
+
+  "#phy-cells":
+    const: 0
+
+additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - "#phy-cells"
+  - clocks
+  - clock-names
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,sa8775p-gcc.h>
+    serdes_phy: phy@8901000 {
+        compatible = "qcom,sa8775p-dwmac-sgmii-phy";
+        reg = <0x08901000 0xe10>;
+        clocks = <&gcc GCC_SGMI_CLKREF_EN>;
+        clock-names = "sgmi_ref";
+        #phy-cells = <0>;
+        status = "disabled";
+    };
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
