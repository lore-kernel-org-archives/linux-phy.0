Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6CE3C3ABBC
	for <linux-phy@archiver.kernel.org>; Tue,  6 May 2025 22:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LUMMPt5YlymMvC1pITZG/uwChNAiHq0EV6eF+UzAWYg=; b=siyKxtKJm13PuD
	mrcqAkHlPiw6ltinEPL0UVfJgupdSEkpSoFqlfbeLEaIOY3WCkl2bNpfAuQ4ysovNMbDuVbvLx1AL
	j89Aeu+gu2vxrG5N7aHUuKHnaiayGpZknpYc0V7s+pkaosPhL47zCSgkCQSdhKmfMA0ElTMZRMKKf
	UMu7EeUg8OR8KvGG8gGE6bucwfCYzFzVuWxLrVu3mtJKv1zRyNI++SUvKCFsFQIRRjKfCkt3OADzM
	ssVDNl8Kg6LaqRnaYAY/dwBh9mJrvDqWgMajwYHhH4JRunr0GRtojUeY8W0JzvxZ2p0U5cIjIVV8b
	0xAaI9eQtopUousyeC9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCQip-0000000DaBZ-2gVz;
	Tue, 06 May 2025 22:25:07 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCLnT-0000000CnwP-2q6S
	for linux-phy@lists.infradead.org;
	Tue, 06 May 2025 17:09:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id AA940A4D744;
	Tue,  6 May 2025 17:09:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4B814C4CEE4;
	Tue,  6 May 2025 17:09:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746551374;
	bh=pwtLzPif3UxjTFKs4y8IgdJ7SvrBTPG4ooY9nRPu9+k=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=Cd1jEIrNH1fw0sN+2+GlMNYkOvpFtrAY3fqw5Xo8at07tAyBQZVeWPYdyq8Dz6S3T
	 1/8rzORY+vcApvzVLW1nvA1VgtzwWKIiRHIS1mK8qDYEoCzR7oDxLu3UzDhqxJAuXv
	 9XxUpSwbac1zAj0xQKK419sMsD0WEA/dd7LQC3Ld5A5o5D0fq1CC7qfFN0lTCeZiqx
	 kG9u8DnpK+vaL1C4mjA44JEqoVCufjf7vs7/5VicrCtSyQotaPcWkoAQjqrGo/Bv4H
	 OyGImq7sYuxJygk1TlehM+iiOZ2XUgOhsEy94qC27Ii+OhaO8tpe6yQY6BC1z1kZdt
	 xerSJVtB5Gz8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3BD31C3ABBC;
	Tue,  6 May 2025 17:09:34 +0000 (UTC)
From: Aaron Kling via B4 Relay <devnull+webgeek1234.gmail.com@kernel.org>
Date: Tue, 06 May 2025 12:09:17 -0500
Subject: [PATCH v2 1/2] dt-bindings: phy: tegra-xusb: Document
 role-switch-default-mode
MIME-Version: 1.0
Message-Id: <20250506-xusb-peripheral-v2-1-bfbe00671389@gmail.com>
References: <20250506-xusb-peripheral-v2-0-bfbe00671389@gmail.com>
In-Reply-To: <20250506-xusb-peripheral-v2-0-bfbe00671389@gmail.com>
To: JC Kuo <jckuo@nvidia.com>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Aaron Kling <webgeek1234@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1746551373; l=12515;
 i=webgeek1234@gmail.com; s=20250217; h=from:subject:message-id;
 bh=bXDz9V7ijjOjEJDjbseeUMoc4cMqeqy8K+grZCx+HLw=;
 b=GK4I3KpBd+lxijxREOMj3v4HHSzQOPDNux/+SXpHMeMi8uzDS6uEDdGuyu5bXQw2ENsgPvtPL
 L19irEOUYKfDSAsiMpZ9XZxUubnrs+Hepayj3lgnO6WCO/Hi5ly24XI
X-Developer-Key: i=webgeek1234@gmail.com; a=ed25519;
 pk=TQwd6q26txw7bkK7B8qtI/kcAohZc7bHHGSD7domdrU=
X-Endpoint-Received: by B4 Relay for webgeek1234@gmail.com/20250217 with
 auth_id=342
X-Original-From: Aaron Kling <webgeek1234@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250506_100935_860066_497FB0F4 
X-CRM114-Status: UNSURE (   8.27  )
X-CRM114-Notice: Please train this message.
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
Reply-To: webgeek1234@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Aaron Kling <webgeek1234@gmail.com>

This property is used to default an otg port to host or peripheral.

Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
---
 .../bindings/phy/nvidia,tegra124-xusb-padctl.yaml  | 33 ++++++++++++++++++++
 .../bindings/phy/nvidia,tegra186-xusb-padctl.yaml  | 27 ++++++++++++++++
 .../bindings/phy/nvidia,tegra194-xusb-padctl.yaml  | 36 ++++++++++++++++++++++
 .../bindings/phy/nvidia,tegra210-xusb-padctl.yaml  | 36 ++++++++++++++++++++++
 4 files changed, 132 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/nvidia,tegra124-xusb-padctl.yaml b/Documentation/devicetree/bindings/phy/nvidia,tegra124-xusb-padctl.yaml
index 33b41b6b2fd539450f9ce72db8bba204e9c08eba..f383f25d932071bb4e4c86cb9f87f51e6a59aaac 100644
--- a/Documentation/devicetree/bindings/phy/nvidia,tegra124-xusb-padctl.yaml
+++ b/Documentation/devicetree/bindings/phy/nvidia,tegra124-xusb-padctl.yaml
@@ -357,10 +357,21 @@ properties:
 
               See ../connector/usb-connector.yaml.
 
+          role-switch-default-mode:
+            description:
+              Indicates if usb-role-switch is enabled, the device default operation
+              mode of controller while usb role is USB_ROLE_NONE.
+            $ref: /schemas/types.yaml#/definitions/string
+            enum: [host, peripheral]
+            default: peripheral
+
           vbus-supply:
             description: A phandle to the regulator supplying the VBUS
               voltage.
 
+        dependencies:
+          role-switch-default-mode: [ usb-role-switch ]
+
       usb2-1:
         type: object
         additionalProperties: false
@@ -392,10 +403,21 @@ properties:
 
               See ../connector/usb-connector.yaml.
 
+          role-switch-default-mode:
+            description:
+              Indicates if usb-role-switch is enabled, the device default operation
+              mode of controller while usb role is USB_ROLE_NONE.
+            $ref: /schemas/types.yaml#/definitions/string
+            enum: [host, peripheral]
+            default: peripheral
+
           vbus-supply:
             description: A phandle to the regulator supplying the VBUS
               voltage.
 
+        dependencies:
+          role-switch-default-mode: [ usb-role-switch ]
+
       usb2-2:
         type: object
         additionalProperties: false
@@ -427,10 +449,21 @@ properties:
 
               See ../connector/usb-connector.yaml.
 
+          role-switch-default-mode:
+            description:
+              Indicates if usb-role-switch is enabled, the device default operation
+              mode of controller while usb role is USB_ROLE_NONE.
+            $ref: /schemas/types.yaml#/definitions/string
+            enum: [host, peripheral]
+            default: peripheral
+
           vbus-supply:
             description: A phandle to the regulator supplying the VBUS
               voltage.
 
+        dependencies:
+          role-switch-default-mode: [ usb-role-switch ]
+
       ulpi-0:
         type: object
         additionalProperties: false
diff --git a/Documentation/devicetree/bindings/phy/nvidia,tegra186-xusb-padctl.yaml b/Documentation/devicetree/bindings/phy/nvidia,tegra186-xusb-padctl.yaml
index 8b1d5a8529e38a1956a60e402c40ebec089ff2e9..f38ed6d339f125df136bcf0e954efb9f5b46466a 100644
--- a/Documentation/devicetree/bindings/phy/nvidia,tegra186-xusb-padctl.yaml
+++ b/Documentation/devicetree/bindings/phy/nvidia,tegra186-xusb-padctl.yaml
@@ -260,12 +260,21 @@ properties:
 
               See ../connector/usb-connector.yaml.
 
+          role-switch-default-mode:
+            description:
+              Indicates if usb-role-switch is enabled, the device default operation
+              mode of controller while usb role is USB_ROLE_NONE.
+            $ref: /schemas/types.yaml#/definitions/string
+            enum: [host, peripheral]
+            default: peripheral
+
           vbus-supply:
             description: A phandle to the regulator supplying the VBUS
               voltage.
 
         dependencies:
           usb-role-switch: [ connector ]
+          role-switch-default-mode: [ usb-role-switch ]
 
       usb2-1:
         type: object
@@ -298,12 +307,21 @@ properties:
 
               See ../connector/usb-connector.yaml.
 
+          role-switch-default-mode:
+            description:
+              Indicates if usb-role-switch is enabled, the device default operation
+              mode of controller while usb role is USB_ROLE_NONE.
+            $ref: /schemas/types.yaml#/definitions/string
+            enum: [host, peripheral]
+            default: peripheral
+
           vbus-supply:
             description: A phandle to the regulator supplying the VBUS
               voltage.
 
         dependencies:
           usb-role-switch: [ connector ]
+          role-switch-default-mode: [ usb-role-switch ]
 
       usb2-2:
         type: object
@@ -336,12 +354,21 @@ properties:
 
               See ../connector/usb-connector.yaml.
 
+          role-switch-default-mode:
+            description:
+              Indicates if usb-role-switch is enabled, the device default operation
+              mode of controller while usb role is USB_ROLE_NONE.
+            $ref: /schemas/types.yaml#/definitions/string
+            enum: [host, peripheral]
+            default: peripheral
+
           vbus-supply:
             description: A phandle to the regulator supplying the VBUS
               voltage.
 
         dependencies:
           usb-role-switch: [ connector ]
+          role-switch-default-mode: [ usb-role-switch ]
 
       hsic-0:
         type: object
diff --git a/Documentation/devicetree/bindings/phy/nvidia,tegra194-xusb-padctl.yaml b/Documentation/devicetree/bindings/phy/nvidia,tegra194-xusb-padctl.yaml
index 6e3398399628766e820ff2a5da0ee644dcdee956..8253ff3ac5e8cffba16ddca3fbbc0fa32b58384f 100644
--- a/Documentation/devicetree/bindings/phy/nvidia,tegra194-xusb-padctl.yaml
+++ b/Documentation/devicetree/bindings/phy/nvidia,tegra194-xusb-padctl.yaml
@@ -251,12 +251,21 @@ properties:
 
               See ../connector/usb-connector.yaml.
 
+          role-switch-default-mode:
+            description:
+              Indicates if usb-role-switch is enabled, the device default operation
+              mode of controller while usb role is USB_ROLE_NONE.
+            $ref: /schemas/types.yaml#/definitions/string
+            enum: [host, peripheral]
+            default: peripheral
+
           vbus-supply:
             description: A phandle to the regulator supplying the VBUS
               voltage.
 
         dependencies:
           usb-role-switch: [ connector ]
+          role-switch-default-mode: [ usb-role-switch ]
 
       usb2-1:
         type: object
@@ -289,12 +298,21 @@ properties:
 
               See ../connector/usb-connector.yaml.
 
+          role-switch-default-mode:
+            description:
+              Indicates if usb-role-switch is enabled, the device default operation
+              mode of controller while usb role is USB_ROLE_NONE.
+            $ref: /schemas/types.yaml#/definitions/string
+            enum: [host, peripheral]
+            default: peripheral
+
           vbus-supply:
             description: A phandle to the regulator supplying the VBUS
               voltage.
 
         dependencies:
           usb-role-switch: [ connector ]
+          role-switch-default-mode: [ usb-role-switch ]
 
       usb2-2:
         type: object
@@ -327,12 +345,21 @@ properties:
 
               See ../connector/usb-connector.yaml.
 
+          role-switch-default-mode:
+            description:
+              Indicates if usb-role-switch is enabled, the device default operation
+              mode of controller while usb role is USB_ROLE_NONE.
+            $ref: /schemas/types.yaml#/definitions/string
+            enum: [host, peripheral]
+            default: peripheral
+
           vbus-supply:
             description: A phandle to the regulator supplying the VBUS
               voltage.
 
         dependencies:
           usb-role-switch: [ connector ]
+          role-switch-default-mode: [ usb-role-switch ]
 
       usb2-3:
         type: object
@@ -365,12 +392,21 @@ properties:
 
               See ../connector/usb-connector.yaml.
 
+          role-switch-default-mode:
+            description:
+              Indicates if usb-role-switch is enabled, the device default operation
+              mode of controller while usb role is USB_ROLE_NONE.
+            $ref: /schemas/types.yaml#/definitions/string
+            enum: [host, peripheral]
+            default: peripheral
+
           vbus-supply:
             description: A phandle to the regulator supplying the VBUS
               voltage.
 
         dependencies:
           usb-role-switch: [ connector ]
+          role-switch-default-mode: [ usb-role-switch ]
 
       usb3-0:
         type: object
diff --git a/Documentation/devicetree/bindings/phy/nvidia,tegra210-xusb-padctl.yaml b/Documentation/devicetree/bindings/phy/nvidia,tegra210-xusb-padctl.yaml
index e9237c58ce45df7fa25cac861891b3fe76efe83d..c14bb947d306912fb732ff219511c6d6fda80f7c 100644
--- a/Documentation/devicetree/bindings/phy/nvidia,tegra210-xusb-padctl.yaml
+++ b/Documentation/devicetree/bindings/phy/nvidia,tegra210-xusb-padctl.yaml
@@ -379,12 +379,21 @@ properties:
 
               See ../connector/usb-connector.yaml.
 
+          role-switch-default-mode:
+            description:
+              Indicates if usb-role-switch is enabled, the device default operation
+              mode of controller while usb role is USB_ROLE_NONE.
+            $ref: /schemas/types.yaml#/definitions/string
+            enum: [host, peripheral]
+            default: peripheral
+
           vbus-supply:
             description: A phandle to the regulator supplying the VBUS
               voltage.
 
         dependencies:
           usb-role-switch: [ connector ]
+          role-switch-default-mode: [ usb-role-switch ]
 
       usb2-1:
         type: object
@@ -417,12 +426,21 @@ properties:
 
               See ../connector/usb-connector.yaml.
 
+          role-switch-default-mode:
+            description:
+              Indicates if usb-role-switch is enabled, the device default operation
+              mode of controller while usb role is USB_ROLE_NONE.
+            $ref: /schemas/types.yaml#/definitions/string
+            enum: [host, peripheral]
+            default: peripheral
+
           vbus-supply:
             description: A phandle to the regulator supplying the VBUS
               voltage.
 
         dependencies:
           usb-role-switch: [ connector ]
+          role-switch-default-mode: [ usb-role-switch ]
 
       usb2-2:
         type: object
@@ -455,12 +473,21 @@ properties:
 
               See ../connector/usb-connector.yaml.
 
+          role-switch-default-mode:
+            description:
+              Indicates if usb-role-switch is enabled, the device default operation
+              mode of controller while usb role is USB_ROLE_NONE.
+            $ref: /schemas/types.yaml#/definitions/string
+            enum: [host, peripheral]
+            default: peripheral
+
           vbus-supply:
             description: A phandle to the regulator supplying the VBUS
               voltage.
 
         dependencies:
           usb-role-switch: [ connector ]
+          role-switch-default-mode: [ usb-role-switch ]
 
       usb2-3:
         type: object
@@ -493,12 +520,21 @@ properties:
 
               See ../connector/usb-connector.yaml.
 
+          role-switch-default-mode:
+            description:
+              Indicates if usb-role-switch is enabled, the device default operation
+              mode of controller while usb role is USB_ROLE_NONE.
+            $ref: /schemas/types.yaml#/definitions/string
+            enum: [host, peripheral]
+            default: peripheral
+
           vbus-supply:
             description: A phandle to the regulator supplying the VBUS
               voltage.
 
         dependencies:
           usb-role-switch: [ connector ]
+          role-switch-default-mode: [ usb-role-switch ]
 
       hsic-0:
         type: object

-- 
2.48.1



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
