Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F8B5CD37AC
	for <linux-phy@archiver.kernel.org>; Mon, 11 May 2026 13:57:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cQWbhV6fHvtbc326Sv5l5qpiBG5rcMpLmQEuK3VWsA4=; b=QBO9oIZQhjPKB4
	w0+3gxznM495YHquCcQMH2MVlwWfvlH78+MpO2gpTksPDL83Fd9c6v1m1/O/4/eS3queLTEFpiZ38
	hIYjgB8XPMyVecVVrpdB5K5d+o76i5WXB/0TAc8ThdDvyQoB2foKuDPbVNwPp7v6kLUMm5q1KntLZ
	1QcDQGyZcInoWIocGcLa2DCKMPhuQceNCdvs1BdyQrYtVHvSCpIc/3TgIV16KTR7LY6FnfEEHligR
	E6pocTH3J3SsJjOP5WVdYNkrAr4YK4/0xNiio/9M2/+p53CeBwYKUEfQYn8Jvtpl9TZKQ58Hk/2Q8
	zTF+fd2hlYrA7JgTTriA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMR8e-0000000Dpx5-0x1N;
	Mon, 11 May 2026 13:57:40 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMR8b-0000000DpvA-0M1y
	for linux-phy@lists.infradead.org;
	Mon, 11 May 2026 13:57:38 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-67b6a6bd7b8so8987264a12.0
        for <linux-phy@lists.infradead.org>; Mon, 11 May 2026 06:57:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778507855; x=1779112655; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BnjnB0/XPfthXcOXqkhM1htDcff/BGb30MwU7TWoKRg=;
        b=CY89k0NeZlm09hh1XW7MeuoAIXY2L3UsezIrgglH67bpFeNvTs0w0EgRNli2rXIomJ
         zBlFasdolkc6ymCTqBCKvbPPgNPI6ksqocDicnD4hWreSxcADhoFPud8itl4hOB1OOM6
         CGu8OjiE92GnyAcxUFEc1cHIm0Ct6VNlivo+S2w97iRRg0lHL/aiLkJB5LkjVuhnVfbL
         mvrrgjFg/ke4w00L3CI6taYfARfByNDtDi4WgBgMrYpx7A7GogJWh6XPZRj7L/9wecPS
         TfwDuxXlT+3p1xbQea6ut87tJfGAu6TeHRCnadDaHACvbHPVtOgaPBjlUWk5qF9F5BXv
         trRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778507855; x=1779112655;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BnjnB0/XPfthXcOXqkhM1htDcff/BGb30MwU7TWoKRg=;
        b=VKJoiklbRMd8ro2w6fQknR7EEW/o/P4k8OgnH4aDwhbzJ1Ormp+0BoomlpVq1FfWZn
         BokbG4sGVHV6/FUUf7a+AF7wnUcpiFujYyIJo/+2wb8sLgp3Mk+oD2sjuZxUunX2q1Yj
         c9p6QMWWs7JLkJECbdQlV1Wk4M4QrqRXuZqel7qzRlaE8LSDPiJrYONV5TXQwQP6tohg
         Ggiqu6nkYsbon6sVT5VJMkKXMtkz90MCNN12JcZUDSLloP/hQRgvjjFCJmrkp1gi5q5L
         VRBtCEfpNWb9KpwFiy7JC9zUAt9t18C/DYYUGSoUaoZeB2nUHGod32igkQi1d8hwVgeH
         tiOw==
X-Forwarded-Encrypted: i=1; AFNElJ+yzRDz1/91sY//lq7eVDYoatP7v8Z2bRvcMg4Fkyzv1bLFP+ppmBu9NUd9TjnJ6wyqZpdpdDXZ1nQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YxjHb98hSx2LMjCJ96iXa3GltonaQCD2gIoY+ZKM1lEqNF6P7Qq
	GwsiEG3CvttyFYz7PEC2J5tAmbLrEj/ahMV/pWBQ4/1w2VKY0ilQJ2BX
X-Gm-Gg: Acq92OEM2tpAGbfygwOncFT+MEBk+HyBueP14IB9BcDX+10Gssa7Nzm3yE8ncT6yVkU
	eggDAYHrBL2q1+BGnvT4bbc5rd+76n04HlsAa/eTJiT85AzxzqnDQm3h8FyZ1Osl3hmYkoDqZHy
	NkiyjUJFRf9UpnRXjjZK/D54z7NdMx8gH2dMyUyJBwQsDjI8FShs3khWL2NlLph5ADcwnZgfeM6
	7AaFQWHdHTK2qKGYNxjEKo8lzhPXt/EGrAdVYE80plmkd52p3waRRpX8T9z3dfqFXa/SkEdyzhf
	MLD0BpfSt1tROx8bsf3fQ+WSdV331ZGGuFFNHEKxF4HCrFgt8VJDjfAaN5KJyfMpb2CSk83VyEo
	hMEmb8/sc7tFHeSOBBnx7/CGUlJ/W9tEJzTt037fvsxSIh1aKgfNKM5+L2z73CYY59FHRS2nW8K
	u8Na+KfqLYLOY1
X-Received: by 2002:a05:6402:b8a:b0:671:9dec:ba3 with SMTP id 4fb4d7f45d1cf-67e0ee9abb2mr5590673a12.13.1778507854968;
        Mon, 11 May 2026 06:57:34 -0700 (PDT)
Received: from xeon ([188.163.112.56])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-67ef0b3b904sm3685357a12.1.2026.05.11.06.57.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 May 2026 06:57:33 -0700 (PDT)
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
Subject: [PATCH v1 5/6] dt-bindings: phy: tegra: Document Nvidia Tegra XMM6260 PHY
Date: Mon, 11 May 2026 16:57:00 +0300
Message-ID: <20260511135703.62470-6-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260511135703.62470-1-clamor95@gmail.com>
References: <20260511135703.62470-1-clamor95@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_065737_172385_3B82D907 
X-CRM114-Status: GOOD (  13.56  )
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

Document the XMM6260 PHY used by various devices based on the Nvidia Tegra
SoC, describing its usage

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 .../bindings/phy/nvidia,tegra-xmm6260.yaml    | 58 +++++++++++++++++++
 1 file changed, 58 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/nvidia,tegra-xmm6260.yaml

diff --git a/Documentation/devicetree/bindings/phy/nvidia,tegra-xmm6260.yaml b/Documentation/devicetree/bindings/phy/nvidia,tegra-xmm6260.yaml
new file mode 100644
index 000000000000..0346433c9772
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/nvidia,tegra-xmm6260.yaml
@@ -0,0 +1,58 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/nvidia,tegra-xmm6260.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Nvidia Tegra PHY for XMM6260 modem
+
+description:
+  A hardware configuration used in Tegra SoCs to provide proper interaction
+  between the application processor and the modem, as well as control over
+  one of the SoC's USB lines for the modem.
+
+maintainers:
+  - Svyatoslav Ryhel <clamor95@gmail.com>
+
+properties:
+  compatible:
+    const: nvidia,tegra-xmm6260
+
+  enable-gpios:
+    description: GPIO connected to the EINT1 pin
+    maxItems: 1
+
+  nvidia,usb-bus:
+    description:
+      Contains two phandles; the first is pointing to the Host's USB controller
+      and the second linking to the controller's PHY.
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    minItems: 2
+    maxItems: 2
+
+  phy-supply:
+    description: Supply powering the PHY.
+
+  "#phy-cells":
+    const: 0
+
+required:
+  - compatible
+  - nvidia,usb-bus
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    phy {
+        compatible = "nvidia,tegra-xmm6260";
+
+        enable-gpios = <&gpio 165 GPIO_ACTIVE_HIGH>;
+        phy-supply = <&vdd_3v3_vbat>;
+
+        nvidia,usb-bus = <&hsic_usb>, <&phy2>;
+        #phy-cells = <0>;
+    };
-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
