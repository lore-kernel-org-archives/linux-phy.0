Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4E70CCA464
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 08:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E4TUIOfzj2a4cwhuW/11E1wpHnMLWwupEr8JlyCfwxk=; b=G2/Os8lTuHK7yl
	w+3XNm4QnYON1imlScOlwHjMqKxSZmnZpGRIdMCzONoLwbiy2ViKcA3zp0zReHuLlKoUCokP3xIi0
	uqETuDbmPMcIQNb4tv/n3aBGluggNr/lxZI60QEz4D1v+Nw/FZraWxmCMgWMgI9DGUxGi+DWYpNZI
	ewOXASTgLhWTUuSVbklCdjLX4udpps9JbQejNJVCOYhpJ1bPdbQL/+LSpTrnozdlr/agLRNS3fYtb
	QS4aN39gnQR5IDR3i+xBQVrcK6Fa++oj44ilXq03POHDLUjRpw3IHH6Q8C4e0XtScRjFjhKRsh1eh
	Bt18F3969YvsAL5+vUwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHdkJ-00000002OAH-1g5f;
	Fri, 16 Oct 2026 08:56:59 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHdkG-00000002O6z-18CJ
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 08:56:58 +0000
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-2df8e3c664cso5255815ad.3
        for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 01:56:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792141015; x=1792745815; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=VtLGyN+PdzUpUTcE98Aumqo/hwiyHlck/gS/TT4kqGo=;
        b=kesv9qN8nrGzZVbX54cBziZiJOOAdgVVNlzTkbG5JQ4tiMhUS5FYakMAX364ETAr9I
         iFvZq16ES6f5FPXmuw7WIsoIi/wpkOeCzY1YVZ9xo7iLONw3K1BSEsfQga6HQKfCAC5I
         6NQ1VBtGbb4SR36Msy3lh6leTYLFREuFoWLg+GdnP+jHduYvEtun27EzlXZ4n3MnPunh
         T193nFAlW0yPYLREdSDpp6qOlQJwM7SzSBvr1DPoT2neBk4W3iDAMh/w7piVJtECZC6b
         +4Dmp3TwXNIeQc+SHJJ6iGe922nG+IHUHFr5l8L3LVk53fxyd+p6ATcb8DZ4TJVFFzWe
         0peA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792141015; x=1792745815;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=VtLGyN+PdzUpUTcE98Aumqo/hwiyHlck/gS/TT4kqGo=;
        b=sOnxi4aIXDcGU48ueXqM7UjJHB9/9qqG3YnKBTeGZo0ZOCR1trZ4aaub0QK17MNMQj
         v6MT1EBdeNPKNpoyH0Z81G7PwwNVpLI/wognaaNN7nWP/90rNUxs3qR2jgRP6AJbGh90
         mEpZ16Gz3QBhU5nPizSg7vrbvECMaU/bPFwpo7CJvD4KLHr7wxIlD0j+0yOa/3rFJKtq
         TjIkVQWThPZtpX311p6+6RJTNgL1TPHW86Hl6LvPBt034FY9Qin9cT9GKS074UN+Y9uP
         +YMt9ZwiujPpDX/T8Vf2fPsbccL+1whZAsnB7kz3WBeaiTeHyS+Wi5/ATftZBqEgXr1c
         j7nQ==
X-Forwarded-Encrypted: i=1; AKwUvBxZDcxwxOW9qY6UWXHmeu8MA6BdTxv7aMReHN3oDU+lAdAoKHSc5lB+bzWCsdWDUWZwHg87cE9em7Q=@lists.infradead.org
X-Gm-Message-State: AFq9FYKprGYwOAS1bWdH0PKbxnw3kksZLIqewlnQL1SDaZHP3P/U4RFd
	aKpSzT3yfvhYrNeYMPDgA7+LkvHvtvigU3iPmG6xPHLF+HSP+dzu3wZ0
X-Gm-Gg: AYBFou3qNGsrOvBd6S32dTc81kOM6MOzBXVp/p29KOAoxErlATxElbHOtfywXnY23fJ
	sK0BL5KduFPw7/C1wtvvcz26Hs7m5GFR3tmlxWjzAUy7ephejgW0kWi107qnfhqLEgsep/4saxW
	7c4UXl2Cu5mGoaazgtDAjVACmQBUQddvU2M6qF3lAsmqqIA0p4z5Bi0eAUF+/BqfJrs422mao5d
	wttyqU5t68gf2fr+cKzNVrIh90myi7IWJWkpIpCouvRLlaDSGA6AXmv92BfY5GAgjoDNKdcEJ4R
	N0Snhi1g4uMq7nAZeDtcOer6AAv/8UNEq7cLD6x+baA0eGGy2KjGJrhjLLYWFfczWPX0cJw9rls
	YJvuORqbZY6J14TRnSpg4ry171RcUfImrrEhYhFLNv1dSap42paRycSEfAFWY+FFqQ809dxcake
	lZmrnGAr+++W7FHbgw8NbjT7BPz6ichYHwjNgUmC/HhyUfCn296eF7gfSW/WJD0wRxhjlH7/3t4
	1rZCBk7ulRB+UGmbReph1Jup94v3p0=
X-Received: by 2002:a17:902:cf0b:b0:2e9:6788:937d with SMTP id d9443c01a7336-2e967889666mr61137945ad.4.1792141014917;
        Fri, 16 Oct 2026 01:56:54 -0700 (PDT)
Received: from [127.0.1.1] (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e97e882a20sm6971025ad.62.2026.10.16.01.56.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2026 01:56:54 -0700 (PDT)
From: Jason Yang <jason98166@gmail.com>
Date: Fri, 16 Oct 2026 16:56:36 +0800
Subject: [PATCH v5 2/8] dt-bindings: phy: rockchip,rk3588-mipi-dcphy: Add a
 cell to select TX or RX
MIME-Version: 1.0
Message-Id: <20261016-dcphy-rx-v1-v5-2-e63b49eabe2d@gmail.com>
References: <20261016-dcphy-rx-v1-v5-0-e63b49eabe2d@gmail.com>
In-Reply-To: <20261016-dcphy-rx-v1-v5-0-e63b49eabe2d@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Guochun Huang <hero.huang@rock-chips.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: Michael Riesch <michael.riesch@collabora.com>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Jason Yang <jason98166@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792141002; l=2767;
 i=jason98166@gmail.com; s=20260721; h=from:subject:message-id;
 bh=ce8JdNOJs5zvcQeCguszU9j59LCLfLXe7OkJrHqM/YE=;
 b=xGmXf0uJmuCFnGX4LXl2EMMZ1WvsxT2sntwv+hZwzx8NB5XgYmF4wB3TO71KHkIhWamdIBqA9
 3a8QSp0sv7LDJnLqs4+VROT8Z2H8vmMinUmvM0gz379mPKwncWtik5A
X-Developer-Key: i=jason98166@gmail.com; a=ed25519;
 pk=xQmD001Q/ooHl39PxyQtusbUQmgbOsSfpFryRVWZ/k4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_015656_332610_CA620FF1 
X-CRM114-Status: GOOD (  12.78  )
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

The Samsung MIPI D-/C-PHY block on RK3588 and RK3576 has a transmitter
for DSI and a receiver for CSI-2, and two consumers can use them at the
same time. The single cell of this binding selects the mode and refers
to the transmitter, so the receiver cannot be described.

Allow a second cell that selects the transmitter or the receiver. With
D-PHY:

	/* the MIPI DSI host, driving the transmitter */
	phys = <&mipidcphy0 PHY_TYPE_DPHY PHY_DIRECTION_TX>;

	/* the MIPI CSI-2 host, driving the receiver */
	phys = <&mipidcphy0 PHY_TYPE_DPHY PHY_DIRECTION_RX>;

and with C-PHY:

	phys = <&mipidcphy0 PHY_TYPE_CPHY PHY_DIRECTION_TX>;
	phys = <&mipidcphy0 PHY_TYPE_CPHY PHY_DIRECTION_RX>;

The transmitter and the receiver cannot operate in different modes [1],
so the first cell must match in both consumers.

Two cells describe the receiver as well. A single cell keeps referring
to the transmitter, so existing device trees are unaffected.

[1] RK3588 TRM: section 22.1 (overview): "The TX and RX only support
    operate in the same PHY mode."

Signed-off-by: Jason Yang <jason98166@gmail.com>
---
 .../bindings/phy/rockchip,rk3588-mipi-dcphy.yaml     | 20 +++++++++++++++++---
 1 file changed, 17 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/rockchip,rk3588-mipi-dcphy.yaml b/Documentation/devicetree/bindings/phy/rockchip,rk3588-mipi-dcphy.yaml
index c8ff5ba22a86..6e8cc56e4986 100644
--- a/Documentation/devicetree/bindings/phy/rockchip,rk3588-mipi-dcphy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip,rk3588-mipi-dcphy.yaml
@@ -20,11 +20,25 @@ properties:
     maxItems: 1
 
   "#phy-cells":
-    const: 1
+    enum: [1, 2]
     description: |
-      Argument is mode to operate in. Supported modes are:
+      The first cell selects the mode to operate in:
         - PHY_TYPE_DPHY
         - PHY_TYPE_CPHY
+
+      A single cell refers to the transmitter and is kept for existing
+      device trees.
+
+      The second cell selects the transmitter or the receiver, so that a
+      MIPI DSI host and a MIPI CSI-2 host can be described as independent
+      consumers of the same PHY node:
+        - PHY_DIRECTION_TX
+        - PHY_DIRECTION_RX
+
+      The transmitter and the receiver cannot operate in different modes,
+      so when both are described, the first cell must match in both
+      consumers.
+
       See include/dt-bindings/phy/phy.h for constants.
 
   clocks:
@@ -82,6 +96,6 @@ examples:
                  <&cru SRST_S_MIPI_DCPHY0>;
         reset-names = "m_phy", "apb", "grf", "s_phy";
         rockchip,grf = <&mipidcphy0_grf>;
-        #phy-cells = <1>;
+        #phy-cells = <2>;
       };
     };

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
