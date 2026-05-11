Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AD96CD37BE
	for <linux-phy@archiver.kernel.org>; Mon, 11 May 2026 13:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6OqzYWnKEACU+I+0K6bWzWQjyB61jg39G06zzdgmAyo=; b=mTB/QudBFqvDJ5
	DG6NsmlWCRsH1Vojqtkngo8z3TyqXM3jAhshpsOdGjUberoseyfAixeKMefs49vkLhnekkI9FqhRv
	JXi8mOIhnHNZFaNohhEEDKndqIi4Rq61vz16hP/PmlmMvHP7TLmfiV53XI6O0PeyRJRhfEw1HpPR2
	Defm/8eLOStKufryzemhn6CnN3bMw2p/vUsBWdhY++6SVeI83LHMQjwU9zKmeeVnthVXEmvlVtSzm
	Zh+D2o6SwTxIYwtumlb/Xza6IS9MUE18UaDm5R8oVl7XxjNAg4UQn+mZgzDlz5Myr7uFW4uTZVDb0
	ScVpKq92QZnSzMB6d6Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMR8X-0000000DpuD-3z4g;
	Mon, 11 May 2026 13:57:33 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMR8V-0000000Dpt8-1mln
	for linux-phy@lists.infradead.org;
	Mon, 11 May 2026 13:57:32 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-67b32c695efso8663359a12.1
        for <linux-phy@lists.infradead.org>; Mon, 11 May 2026 06:57:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778507849; x=1779112649; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WdX1Hn1whpHFxpnqtCP4cLwf/y3NxkK7GqmkakB9h2s=;
        b=lIusm9QCGZxkCXxfL4JmXG+39TwyX0E2/JATlqR+ASwyAgApyxbGZcrVybMLBFkCAF
         vuZQPUgEujRBQIB7XuN+DyI/Eb+5FL49jY/EhDv5/YFpHEngN4c4WfENI3mbJhpwz2b6
         e4TIs5IAqarzp0CHIbIuBiQn+BC9wr89QAPScshn+EbQRG3bGR+wvr/qZAHwVFPGj9uP
         1VEX9osxBb6qcbnjBnzw6zfbINKPwfcfVJLFJDYh4VmITHTCi5VTm6J4VD4qXmRwrrt+
         4Wv7jjkElZZ+2zwV57FaH6PEEdHSasxcE3RQ1xgr4+pMZitcffTnFMxNLh5BKjzeQnSM
         Jo+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778507849; x=1779112649;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WdX1Hn1whpHFxpnqtCP4cLwf/y3NxkK7GqmkakB9h2s=;
        b=hm7MOrDFwhV7Ncwh0eODkVU1zqVnCtuGgVAms4W7Rn0LnyPjRbrwmmmQnhPjmxn957
         Qqn+OUEn6xjd2LXwHBFeWGYfv8y52x8W/AVz5nDGQJbvC6ZgTtgfnW9G3HJOG7TN56iO
         CFrKWPSwF9XSVmPH3ERw3tXpzsxtPYyveSmFxDd+7l9dPD9/tQ1SZpnqkssYHQtHztXF
         Gk0Cq5ayrcu6ST1gOrW7ay7SlZyKIXP8GdFw+ZqACmAvf4lkHwoGCa9mXWWIKY/gZ+AG
         S7yzYpif1Wp99bx7rfCfRzB33YfSY6YRBcKlhIiDt2u2f42ocwg7mJoOny9EklRteUMm
         ULCw==
X-Forwarded-Encrypted: i=1; AFNElJ/YczBo3Z81OOiokjI6VVP2UZXaZePhXlXGPTZKuGZwRBJwCjQSbqOd4//QuS4Vz0PA89gebQJP0rQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YxjP5+ml1nVmvB9/VJKjSs3J/9BJFCU7cc9JQz1lnubvebndni7
	dErJkDVjjYGZifDWLvE9mN1/tcLSG+kQTksZs2knydF2RUW2oIoC1o1H
X-Gm-Gg: Acq92OFPMUcBGQasLomw1HiqAAYF1JSoyIn1EI48JJqhBCnUd+QU3nLKBlTrTiYxtDi
	PZfzTaOkI08KCBj25j26ECe97Ndhzevr1ojJOji5uRIoGtNHkFTqaT3L6Hw6nxuRjv6ZtvuvR5g
	HjVvqafHHCXQx4ZeKWmiaTchy9+NHgaMZGNuobbHPSmZ3wIZPG9mGjxXG2CCMz77E1JFEAdoDJG
	2xRWRUPs4ukfiB5AA6IiarV37cSBhUj0wFoLt/urpgFFh+KvmEQ1as+KmWVqYT2PmYioyLxun3N
	JYHhCe5cNHfIJHxQxjAGQ2TlskpTVCJpeYbHwmMhVHYTxKfygOj7vCX/Dv8tE3A+n35YgNDBOwy
	FhBlXBP1c+LIctvkUq1L3kL4qWqzA3DjnkH1U5YwsHeUCrArob7YrrM3n1LSenwhzOaGEtA4znC
	SwX8HjMv5N7tLzfAYRHSLV0AE=
X-Received: by 2002:a05:6402:4506:b0:670:d548:62a1 with SMTP id 4fb4d7f45d1cf-67e0ddef87amr8352750a12.3.1778507849153;
        Mon, 11 May 2026 06:57:29 -0700 (PDT)
Received: from xeon ([188.163.112.56])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-67ef0b3b904sm3685357a12.1.2026.05.11.06.57.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 May 2026 06:57:27 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Thierry Reding <thierry.reding@kernel.org>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Peter Chen <peter.chen@kernel.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-tegra@vger.kernel.org,
	linux-usb@vger.kernel.org
Subject: [PATCH v1 3/6] dt-bindings: net: Document Infineon/Intel XMM6260 modem
Date: Mon, 11 May 2026 16:56:58 +0300
Message-ID: <20260511135703.62470-4-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260511135703.62470-1-clamor95@gmail.com>
References: <20260511135703.62470-1-clamor95@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_065731_547958_384DE91E 
X-CRM114-Status: GOOD (  11.75  )
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

Describe the Infineon/Intel XMM6260, a 3G-focused, slim modem platform
designed for smartphones, data cards, and Machine-to-Machine (M2M)
applications.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 .../bindings/net/infineon,xmm6260.yaml        | 72 +++++++++++++++++++
 1 file changed, 72 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/infineon,xmm6260.yaml

diff --git a/Documentation/devicetree/bindings/net/infineon,xmm6260.yaml b/Documentation/devicetree/bindings/net/infineon,xmm6260.yaml
new file mode 100644
index 000000000000..d34d7125274f
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/infineon,xmm6260.yaml
@@ -0,0 +1,72 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/infineon,xmm6260.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Infineon/Intel XMM6260 embedded USB modem
+
+description:
+  The Infineon/Intel XMM6260 is a 3G-focused, slim modem platform designed
+  for smartphones, data cards, and Machine-to-Machine (M2M) applications.
+  The modem is usually connected via the application processor's USB line
+  in HSIC mode; however, to work properly, the modem must control this line
+
+maintainers:
+  - Svyatoslav Ryhel <clamor95@gmail.com>
+
+properties:
+  compatible:
+    const: infineon,xmm6260
+
+  interrupts:
+    maxItems: 1
+
+  enable-gpios:
+    description: GPIO connected to the ON1 pin
+    maxItems: 1
+
+  reset-gpios:
+    description: GPIO connected to the RESET_PWRDWN_N pin
+    maxItems: 1
+
+  ap-wake-gpios:
+    description: GPIO connected to the EINT3 pin
+    maxItems: 1
+
+  cp-wake-gpios:
+    description: GPIO connected to the EINT2 pin
+    maxItems: 1
+
+  phys:
+    maxItems: 1
+
+  vbat-supply:
+    description: Supply connected to the VBAT lines.
+
+required:
+  - compatible
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    modem {
+        compatible = "infineon,xmm6260";
+
+        interrupt-parent = <&gpio>;
+        interrupts = <168 IRQ_TYPE_EDGE_BOTH>;
+
+        enable-gpios = <&gpio 112 GPIO_ACTIVE_HIGH>;
+        reset-gpios = <&gpio 169 GPIO_ACTIVE_LOW>;
+
+        cp-wake-gpios = <&gpio 151 GPIO_ACTIVE_HIGH>;
+        ap-wake-gpios = <&gpio 168 GPIO_ACTIVE_HIGH>;
+
+        phys = <&xmm6260_phy>;
+        vbat-supply = <&vdd_3v3_vbat>;
+    };
-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
