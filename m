Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6D58C3DA64
	for <linux-phy@archiver.kernel.org>; Mon,  5 Aug 2024 03:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kQ7w15qWOyasGwL0xKCCG17rghbzM7zgQysKx3F0DA4=; b=kSO5OiRST9uH4J
	/08ZV0i5zCxs9ljZx6QRFYK3syLxb7/iuxYUANQXSQ3ihxkt7XuFYpr420rO1JAXKZH+WRCna4ES2
	0gADzjZgvw/DA298zK4vYVI+UI3xeIif9dMrQu/PnW8YghVfnK7qFTqeXSZ/79fk2QzkfGbQ/LpFP
	nwq3jIlNYlH44r2IZAeh/ecMFd9jCEfw0Q10C8TYRYGi4OJQdhuH29sIxF8qMFp997QUJFVq1SnRh
	tkyb4ZCUocy7f8ZyUu1in2sdmkHnNpmL3uaOpRaYlkLDESQIRoF/yBDmxcbKBBN+wgA1hci03Y+Jv
	8T8IjILZZJV6wOw1JX8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sao2o-0000000ESVq-2M5V;
	Mon, 05 Aug 2024 03:05:58 +0000
Received: from mail-oa1-x2d.google.com ([2001:4860:4864:20::2d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sao0z-0000000ERtE-2ICC;
	Mon, 05 Aug 2024 03:04:07 +0000
Received: by mail-oa1-x2d.google.com with SMTP id 586e51a60fabf-2689e7a941fso1837346fac.3;
        Sun, 04 Aug 2024 20:04:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722827043; x=1723431843; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OeLEqRbJ5ogQTiwcu7e5krCu6dlyH8p4Ktqs+pgoy6k=;
        b=fxJjwyiVCNHs12OQEMm9QpzG2wJYrz0T1R99fB45S8JijD5aEvF244NWWeHBeBhuLi
         WPB7jXd2rCi2o5WQC1gNVXdW5TNFdRPYVEI2g90cmaJDkrR0oBmcL9SKTYXuPJwOkDjI
         6hdzqYPHURIHQM0zJVxal2aVpupF3sWfbXPtGcoPzbyZp/IiGgzHGiLFFzkDPZdpTQYa
         XgecyADcoMp5takM30u809EymFeNFotwd0NeyIar1ZugXBiQ7qxh3vHlFn2QPjI/wneS
         1nj84xBhb8sSMyqTv+TFdwp9BYnBe1E5GW0QF5LDRqvOJmsuU0bAcKpRx7n6oayAAIzi
         lp4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722827043; x=1723431843;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OeLEqRbJ5ogQTiwcu7e5krCu6dlyH8p4Ktqs+pgoy6k=;
        b=TWrZpOX9YWLeBoBuPErTDOJjBWcmVgivK9RbGSznATqDGxmXv36eKAkrbbDFFVaWnu
         aZgnjxOhPJdT0L7sxbDmGyjJZeWABbMZPP4B3oLg5FK1jrTOVHVsq9J7vdoCGZmeN4kq
         WmjbRC18wDNVPPD+2RXGOSedW80zpEvfIDRq/doDRDMcLJG0k8yMUzx0gqbvqJK++LW6
         Dzv0GgRhoTHjSTXAt0VEd6G91lEhZMzLCNGMe4YDj572DUbEtbT1DSec2RHmwT6kaVPj
         OCDLqpEhpuN3WLuDP61OEeQWNXqCGSBFIx/IHAwjkjq4ChLrLBdLeL311J8lZiCD68NY
         cPzA==
X-Forwarded-Encrypted: i=1; AJvYcCUXvarorvB4437DqQTMNOHZwCJRMt5JfpzYgMy+aaulkOImDRgH4OjgH3/N5mUrbF06UxmPusqvQZ/r2HPgW+Gk/MkV+jHjI50cpYaWQQ==
X-Gm-Message-State: AOJu0YzWYEnuunKOtshneu0Fw63d5W3Sh29OnSU35AaKGWK+Bi4YJt3Q
	5cfLkMHe9/m88NCL88n3blNI6EXiCUC0wEkcxWFtG7a/Bh+D016ntsztlQ==
X-Google-Smtp-Source: AGHT+IEoLhMpn3V+sb+8eAmZ8YOqmSu50oKdiZnOvuQLOFWlOncRH7/2EYKSO3vHKrgCJ5TKFQXKDg==
X-Received: by 2002:a05:6870:7187:b0:260:e611:c09 with SMTP id 586e51a60fabf-26891f27131mr12971163fac.47.1722827043648;
        Sun, 04 Aug 2024 20:04:03 -0700 (PDT)
Received: from localhost.localdomain (60-250-192-107.hinet-ip.hinet.net. [60.250.192.107])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7b762e9c2dasm3823210a12.8.2024.08.04.20.04.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Aug 2024 20:04:03 -0700 (PDT)
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
	Hui-Ping Chen <hpchen0nvt@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 1/2] dt-bindings: phy: nuvoton,ma35-usb2-phy: add new bindings
Date: Mon,  5 Aug 2024 03:03:55 +0000
Message-Id: <20240805030356.14565-2-hpchen0nvt@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240805030356.14565-1-hpchen0nvt@gmail.com>
References: <20240805030356.14565-1-hpchen0nvt@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240804_200405_607603_F7527CA2 
X-CRM114-Status: GOOD (  11.94  )
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
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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
