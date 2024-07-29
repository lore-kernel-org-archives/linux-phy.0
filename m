Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86BABC3DA4A
	for <linux-phy@archiver.kernel.org>; Mon, 29 Jul 2024 06:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uHCP3wzN8tCvnUi+cK1SMtpon8P2w8K1mVGfm6w+C3U=; b=WNJY1bN5mFW4yK
	9ArEbJS+z5sJAXPl6igsgsZw5ctHpBPYo3hqiV8QlTg3LPZUlQWgmPPVWot7wF0lHM80U2JCCBySs
	+o40rZyQRnvbcfM3Kc00tKnpjvDNPeJNqVBBC6REthP2T7uFotP9Jy/CoIwZvRu8RomnRvZDeae2c
	D7/bGzLn/T3nTpux2Bg5M3Np50iBuLnA4eqnDO1oZFO/P6EHY/fKTu02A/HC9poKpeGZqXgkDjrQW
	N8bYKLE8iYHdrBEC55p6QtNbpeK67sPOPBhtMySP1yRZlkZTX7+ZFYOcsUByyoh53cC2n+X40vpJM
	fK9RG0f4mYj/+z+BnRIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYJg0-0000000A7nk-0zZE;
	Mon, 29 Jul 2024 06:16:08 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYJfC-0000000A7Yd-2mMN;
	Mon, 29 Jul 2024 06:15:20 +0000
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-1fc491f9b55so18029815ad.3;
        Sun, 28 Jul 2024 23:15:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722233717; x=1722838517; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kBK81cAG8HB/pM3iLFLgQMMBcwgxSE22Xy44PytBqCY=;
        b=fmBzooXzbdQLNpNHyGN6oRIUy2E+Yi75uZcIU82h9qPKN0IAyGwA8gnjz6ySEaMdmi
         Ft8OxvNnudbJ7fQiMs6SUDtvm7UOstn9rU1F4UkOOQ944jmaMGe75J4RSWvRBhkByVd+
         Xj+0dYP7z8bN4+qvOnk5F0cLnXD5BYB7ZPKJXSM9tfIAMe7okLBzLtmyBAf7HUXB4P7a
         lzUOndV4e2Ry5j1hHuA7w03Pp7f6q4Pf5O+m5CSnVXTrPiq9rJsZs0pLoKJQ2E2myrhi
         eYpbCvKkoDqxLbZsK5pfLypGbHF42/wJ67nPpL/YK3ej9Sqq/IBHf+eEYgiOitREPwxI
         lupg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722233717; x=1722838517;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kBK81cAG8HB/pM3iLFLgQMMBcwgxSE22Xy44PytBqCY=;
        b=XHivcYxXNe7j1HwLQjTxUvCEpnyqRnoEQrzk5NiUFUVb9YsSAAba2DCTIGimcaQDbN
         bZI3D9wgYkIOAnvngS4m3q7Xp6M95ywqcpIt2ZZNAdnrsq5PHOkA9HdJc6yP3YVxyIMp
         9vy6shJdCR633ZewTy9ftAhffjXnbngcobCpUARnpbrJ8OEXfQbFpIEjq4FCB+nG/uXM
         5YMMR43bLeHL0HE/wR08EcHjJEh6BgGdLq3jrCx9rKZyEto5oL4Wrw0cEcz2gXjZxARP
         noBjjRY2TgBtFYQ4gLXgaPFU6xl8S2ZU9eFk+YcZFqRuCa+fBfOUdOoG1aHFEnTJRJD4
         RARQ==
X-Forwarded-Encrypted: i=1; AJvYcCUzTacReiI6XbXllzsPaNWC8iz2TXxcwy/+ERYVyLex0rXOrq4dYmf/YUb2eZB4mmRpLu2rQxmrptYG+MM1UGG08FhZx3S4043+yJqezQ==
X-Gm-Message-State: AOJu0Ywu1eLX9twTOFmQAJPk2L3q7a6FNnODH3ymEWiABXUnnWvG4BMK
	1tyQIibdHwH7pSOPk/66PS4wiwqAcFw52TikixJnl8RRX/L+r7ulTkRxiw==
X-Google-Smtp-Source: AGHT+IHQx/WyBPpe7O2QgyvTuWBNKJNHQWKMLEwREipsDVakaSEfYGnMsLlFDug3m9CyKyidNmYAxw==
X-Received: by 2002:a17:90a:db82:b0:2c2:d813:bffa with SMTP id 98e67ed59e1d1-2cf7e71e504mr3955738a91.43.1722233717110;
        Sun, 28 Jul 2024 23:15:17 -0700 (PDT)
Received: from localhost.localdomain (60-250-192-107.hinet-ip.hinet.net. [60.250.192.107])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2cd8cd2013fsm7951282a91.0.2024.07.28.23.15.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jul 2024 23:15:16 -0700 (PDT)
From: hpchen0 <hpchen0nvt@gmail.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	hpchen0 <hpchen0nvt@gmail.com>
Subject: [PATCH 1/2] dt-bindings: phy: nuvoton,ma35-usb2-phy: add new bindings
Date: Mon, 29 Jul 2024 06:15:08 +0000
Message-Id: <20240729061509.83828-2-hpchen0nvt@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240729061509.83828-1-hpchen0nvt@gmail.com>
References: <20240729061509.83828-1-hpchen0nvt@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240728_231518_722527_F7342A3A 
X-CRM114-Status: GOOD (  11.83  )
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

Add dt-bindings for USB2 PHY found on the Nuvoton MA35 SoC.

Signed-off-by: hpchen0 <hpchen0nvt@gmail.com>
---
 .../bindings/phy/nuvoton,ma35-usb2-phy.yaml   | 51 +++++++++++++++++++
 1 file changed, 51 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/nuvoton,ma35-usb2-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/nuvoton,ma35-usb2-phy.yaml b/Documentation/devicetree/bindings/phy/nuvoton,ma35-usb2-phy.yaml
new file mode 100644
index 000000000000..415ea2c45975
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/nuvoton,ma35-usb2-phy.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/nuvoton,ma35-usb2-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Nuvoton MA35 USB2 phy
+
+maintainers:
+  - hpchen0 <hpchen0nvt@gmail.com>
+
+properties:
+  compatible:
+    enum:
+      - nuvoton,ma35-usb2-phy
+
+  "#phy-cells":
+    const: 0
+
+  clocks:
+    maxItems: 1
+    description: USB PHY clock
+
+  clock-names:
+    const: usbd_gate
+
+  nuvoton,sys:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      phandle of the system-management node.
+
+required:
+  - compatible
+  - clocks
+  - nuvoton,sys
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/nuvoton,ma35d1-clk.h>
+
+    usb_phy: usb-phy {
+        compatible = "nuvoton,ma35-usb2-phy";
+        clocks = <&clk USBD_GATE>;
+        clock-names = "usbd_gate";
+        nuvoton,sys = <&sys>;
+        #phy-cells = <0>;
+    };
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
