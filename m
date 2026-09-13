Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 055DDC88E5C
	for <linux-phy@archiver.kernel.org>; Sun, 13 Sep 2026 19:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q8oJQLox7Sc1z4i8QNX6KqvYB+FM+miWcOUKJhOVBvQ=; b=sjYdL9bPnDr4US
	sE/lX4jQXsaIDzIZGmaCl+BJdmCFC5BkuVVmPGu8F3hWpJ4Hn7rulkK1THjaCGasVaqzqFPo9i+SY
	4Otqudz0kYAA/ZmPUHRmQiYW/MEeVxrqaKZLpiLIlcebAXVbi8Pb5TC2r/oL6wWhveHAq9rHGJXoH
	NJqP8xIoLXsFKbhAlFpLI/gS0ASk36VJmPx0YvR8eR8kjFE0zRiJgYrKHzCZAlmtFQpamUBKsTBgW
	i1FtvIwCRnHL4eX+/GgNYId8IZjkb7dayvjZv1hp+AgtxA+3tvvX4xhkYPcRX4LoZMSFM0sOYYw41
	Bef8GWtYUNXWHOMBqc2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5pRh-00000001xhd-2jtZ;
	Sun, 13 Sep 2026 19:00:57 +0000
Received: from mail-pj2-x03.google.com ([2607:f8b0:4864:39::3])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5pRd-00000001xbn-1qbI
	for linux-phy@lists.infradead.org;
	Sun, 13 Sep 2026 19:00:56 +0000
Received: by mail-pj2-x03.google.com with SMTP id d9443c01a7336-2db39df9c51so9594365ad.1
        for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 12:00:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789326053; x=1789930853; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=TJZ0PecvDJzl0BEu7eLa+JMyHq2Op9t0/swrRCuqxn8=;
        b=iNaCGrcCmh/O60TbvEcUmhW5IlNcxomNzos7RtGteVEDrrgScUsaVq2whTyFM9lxix
         5OcXWuOfbs13wt4lWLOIv6uSIxOlHnRjF/DwD4CPyD2rGBrU64VryktdYbIcuKajVGcU
         ce226bUrnJ6HM9pFZOQBI27vdXjqIkKYDDb8b7Aj0jkQL6/u39nrV09jYeciDHQXI+KF
         ClWJnR8lH2uoTqRxC1W8vPZe00++QIjLuawU9agf0NKMnE7IvUvO7vRvuoUoUh/BfqH7
         D6W32JvXM9ZcQNCLNnUOIYuK/Zd/UpnRMo2Vc+iuQYtroL7WQzKrVul9funtehv8QXT3
         2uoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789326053; x=1789930853;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=TJZ0PecvDJzl0BEu7eLa+JMyHq2Op9t0/swrRCuqxn8=;
        b=rFtlEQEpOkf5YIaN0rJ4PZR4RmPgX5XUia9Vg+vS5MgFY4Vb48e3xHnttW0HbrmkkN
         8g1Cr0rkqoMe/SbeBWAs72b6/dKaAhf2VvgBPibjSfRjIoPj75g4hJK9UpYMhIhGVry/
         YhjTp8hhGTQKUiiq/hx5ogbyN2kI4XwaQLX/uF3Dyx9DeZ8jUIozrJFLJjdSW/vy7zan
         2A3pDvo/7OpC4Xe55Q8s8sLIQOU5hvWw4s4ZOIFLoQvxQRiG0vPNA6q7u7eExSAmjlPb
         vb0bIF7/nApCecfVlDC/SkyZrnKZ9DWebXIwbyjmmRUmZQXj5oq5Vgt4mknAoawvgSbG
         PtjQ==
X-Forwarded-Encrypted: i=1; AKwUvBzhgiL9dCb3cmCKwIyN+3HH5Ual1UZKheXOzB6teQSEigdKTP8MMWZc9eqnUjr8jSbC4Hq9QTMoV4Q=@lists.infradead.org
X-Gm-Message-State: AFuF++mQnSiHtehebGWfwzMvyw1KqCB/uvtu67f6Ag1nWkl5t0vuFBpd
	R08hJFDRYWh8rmATH00+iI+HcBFmprSPYJMT11/JFlIp9xGD2PlhDI8/
X-Gm-Gg: AYBFou0vhBaAoCKw2BXCiltwVyvjR6LNRkKZxM1kaqnKWfjOjir4rDb+cIqXNWM0wCL
	SUAMCoEDTHwCfxkUvalHdtUStAdYIyrrOA2Lk9L39RwbixQPN7QMPPdVqfBJmQUcaurHaeNX1Hg
	PBnOla42OH2XqiSNG9reSMK+psj9lJQBvaK0KLomhEbPP418WBl8s8E8377bi5XqHnSL6ePBPUv
	GKt5GgBWFRqeVcDTJuplkvzk73ZVHOUEvrgwByXxcRAEx+Ojzsv3a1AmOWtDMuK4IM6ZUCpG29+
	K6lE+8b0pwj4rN/W6/ZhRlwmXRXXmbniGoBjO6zEssfRqqPX0DBUL1WZCIq7P8XENZdlN/ZrsLv
	Pclv/BBkhAXGD2Kpf6fPRrrLNsKH/u14SkYpQ72JCE5EnpAFdzAMDuj4KRnZyZIDhvVlhzamTrJ
	hHmUquqRAafkXrDOuAsWveQHbdQdSr63Zaq/5h+tTPKv+XogxIi8NRE4pZvTPBMJ0LAa24BA==
X-Received: by 2002:a17:902:ea0f:b0:2dd:319:c9ef with SMTP id d9443c01a7336-2dd2a1c41camr232853065ad.3.1789326052648;
        Sun, 13 Sep 2026 12:00:52 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2dd2cca6b7bsm36808655ad.3.2026.09.13.12.00.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Sep 2026 12:00:52 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Romain Gantois <romain.gantois@bootlin.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Coia Prant <coiaprant@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Russell King <linux@armlinux.org.uk>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	David Heidelberg <david@ixit.cz>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH net-next v5 08/11] dt-bindings: net: rockchip-dwmac: document pcs-handle
Date: Mon, 14 Sep 2026 02:58:43 +0800
Message-ID: <20260913185849.907479-9-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260913185849.907479-1-coiaprant@gmail.com>
References: <20260913185849.907479-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_120053_534483_1B0E3F45 
X-CRM114-Status: UNSURE (   8.50  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

The Rockchip dwmac glue driver now supports SGMII on RK3568 and
requires a PCS, referenced through the "pcs-handle" property.  The
property is parsed by rk_pcs_init() and a missing phandle fails the
probe, so describe it in the binding and require it when phy-mode
is "sgmii".

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 .../devicetree/bindings/net/rockchip-dwmac.yaml   | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
index 80c252845349c..67b21ea77ec96 100644
--- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
@@ -120,6 +120,12 @@ properties:
     maximum: 0x7F
     default: 0x10
 
+  pcs-handle:
+    description:
+      Specifies a reference to a node representing the PCS device
+      connected to this GMAC. Required when phy-mode is "sgmii".
+    maxItems: 1
+
   phy-supply:
     description: PHY regulator
 
@@ -159,6 +165,15 @@ allOf:
         clocks:
           minItems: 5
 
+  - if:
+      properties:
+        phy-mode:
+          contains:
+            const: sgmii
+    then:
+      required:
+        - pcs-handle
+
 unevaluatedProperties: false
 
 examples:
-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
