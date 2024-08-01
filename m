Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53CCBC3DA4A
	for <linux-phy@archiver.kernel.org>; Thu,  1 Aug 2024 05:38:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pknjFCQ9EUTbVPIcLx5/GOPT5Zw65fYRoJq1H4fIm5U=; b=VLwwwmo4nfaWov
	DKziuRoBKHD7uRPW39uO1GlBl71Kxf1Dbs2YCh3xsJHK4Yzv33cicRznwrWPutXHMokL4J+IrH0XU
	mntLeuT8Fa8itcGiRgV8drvyleKuTyz8NDSGLhe+fTJuzFLOCqgTfoowkZPCHBx/ZHUOeBPmXOR0B
	fpPzktVmHX7zjL3A5aQdZfbHF5Sgmn9WaI9J6XYuQttBZ4UOxwH952Y9aEGllxPSYw+is7OFp86Kk
	FscfMlRxSV6TqQOLevuVA1/SBzGB5hvrKjbPWKGr2MnD2vH2wflNdJQoKlWa3o39dbz1Jlx3n+sIY
	zjZpH6Wj22sgE+DWLS7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZOWV-00000003nKf-43Qm;
	Thu, 01 Aug 2024 05:38:47 +0000
Received: from mail-ot1-x32b.google.com ([2607:f8b0:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZOVc-00000003n6O-3z3s;
	Thu, 01 Aug 2024 05:37:54 +0000
Received: by mail-ot1-x32b.google.com with SMTP id 46e09a7af769-7093efbade6so4352249a34.2;
        Wed, 31 Jul 2024 22:37:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722490672; x=1723095472; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3MNgSOYTjr0yotm20dGZhPscWJIs6USm/mz1o5vZIGA=;
        b=J/2V9wN/bW2mHnt2WDgUnJWPe0hnCjd2mmb9v0rn+d7SgMixmgZd78Jhi2n189ESxW
         B1ncdnA5KLE2BpOPMLEr6ai4pIJhy35YIxBYKSoXejblkKJ2ghE+6HlGF3AA/YmInpMH
         I6Y8iAFxeDwLP109CErYQYJ4VyX41nLuUMpX/b0tSW4YnMynqrAnbKD/Sm5OUZPKsP1l
         u5EiPKUQKfP5J5V43HqGZkLgEQlra9RDMCZ41JuVzE3Uh2rWesy0oXC+dq6yfQZPl2S4
         UnChVXS8BV5QsBdILrA2cIvT/Wgxh5h86vaepiWE2D+4aXqgF2QW08JQlQ09UpwPf0k6
         bEBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722490672; x=1723095472;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3MNgSOYTjr0yotm20dGZhPscWJIs6USm/mz1o5vZIGA=;
        b=RvAvN8e6Yn3Csls3Qw2+GE7FrBJJBd38Eb6Km3trzUzBIX4S6waM2F9A9bF+7dFbL+
         9gFybL/mT8tsXTZ0k4WQjG3EQsxyphqaSf1dNau+EDi1+HzIuFnYuWLNH3bdZ753O9UU
         FbdBwKfhLWEjuXmOPhzygjDF7WsGCiqBQMPyt/ieCcp/AhYWKtUcJxy6vUmuOC/yDsVb
         jQZPCIVfmxdS90ijOW1othdZKQoRnovYbWg7XfKo+/sX+cFO3hNjtXOdvmcWYmk/Ow9l
         5E01mYeDZVO2pFzJK5P/6ZsCajdtdfJs5CvS8+YKpGIvD1foohRFPddB6imWrgf+vGF7
         4OJA==
X-Forwarded-Encrypted: i=1; AJvYcCWiDdCnM+mmUlC40njtOsK1ON4dOsvJwqctZ5ATKx6H/cFNE1yeHLMejYu9+N3ONAhtkkVbGbCpO9SeLF7EcIBhauveCY1psLEEPOjM/A==
X-Gm-Message-State: AOJu0YyayNVpVu21OYqDhoqtE/vDWdpPFrdFRljC99c6OZdz0Qr8arW0
	q8EP6V9wD4MbGW7Pt+RbGB9rP1XCnJuZbJ0sr0TAiWQbrlPZq1ef
X-Google-Smtp-Source: AGHT+IFHj5gZE5I/GE+V4PctpDOeXJbUvmybA0nK1W+z6o1ml7knwia+MEFR3nWUNKILeEaXSFbfWQ==
X-Received: by 2002:a05:6830:681a:b0:709:472d:f35a with SMTP id 46e09a7af769-7096b838521mr1315004a34.2.1722490671798;
        Wed, 31 Jul 2024 22:37:51 -0700 (PDT)
Received: from localhost.localdomain (60-250-192-107.hinet-ip.hinet.net. [60.250.192.107])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70ead72b89csm11106876b3a.94.2024.07.31.22.37.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jul 2024 22:37:51 -0700 (PDT)
From: Hui-Ping Chen <hpchen0nvt@gmail.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Hui-Ping Chen <hpchen0nvt@gmail.com>
Subject: [PATCH v3 1/2] dt-bindings: phy: nuvoton,ma35-usb2-phy: add new bindings
Date: Thu,  1 Aug 2024 05:37:43 +0000
Message-Id: <20240801053744.807884-2-hpchen0nvt@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240801053744.807884-1-hpchen0nvt@gmail.com>
References: <20240801053744.807884-1-hpchen0nvt@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_223753_009358_C4F47F26 
X-CRM114-Status: GOOD (  12.67  )
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

Signed-off-by: Hui-Ping Chen <hpchen0nvt@gmail.com>
---
 .../bindings/phy/nuvoton,ma35d1-usb2-phy.yaml | 45 +++++++++++++++++++
 1 file changed, 45 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/nuvoton,ma35d1-usb2-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/nuvoton,ma35d1-usb2-phy.yaml b/Documentation/devicetree/bindings/phy/nuvoton,ma35d1-usb2-phy.yaml
new file mode 100644
index 000000000000..fff858c909a0
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/nuvoton,ma35d1-usb2-phy.yaml
@@ -0,0 +1,45 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/nuvoton,ma35d1-usb2-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Nuvoton MA35D1 USB2 phy
+
+maintainers:
+  - Hui-Ping Chen <hpchen0nvt@gmail.com>
+
+properties:
+  compatible:
+    enum:
+      - nuvoton,ma35d1-usb2-phy
+
+  "#phy-cells":
+    const: 0
+
+  clocks:
+    maxItems: 1
+
+  nuvoton,sys:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      phandle to syscon for checking the PHY clock status.
+
+required:
+  - compatible
+  - "#phy-cells"
+  - clocks
+  - nuvoton,sys
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/nuvoton,ma35d1-clk.h>
+
+    usb_phy: usb-phy {
+        compatible = "nuvoton,ma35d1-usb2-phy";
+        clocks = <&clk USBD_GATE>;
+        nuvoton,sys = <&sys>;
+        #phy-cells = <0>;
+    };
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
