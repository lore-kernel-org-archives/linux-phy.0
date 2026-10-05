Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 869C7CA5FF5
	for <linux-phy@archiver.kernel.org>; Mon,  5 Oct 2026 22:13:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EkekRenuAsJhpFU2uDvgM2TvfpEigWEYeY3rP/EPu8I=; b=djPBbYfXfdUpJo
	d1ovj8f/IGYFJkL2dqrgL8G0PePZB4nV/m5xbs2xHxNEzBnVhuM9CSuJ9zjQ3L8h7jIwrorSlKP6O
	UQG3Bri4cDeioR19arAzYSFfADom8n1YXNkTHwEHvIRqq+gkpSu5Q9Z8CdPfhAoXdxogOw7UeCdMc
	5pvayQpx7W+Qq4Evrl/emRpF1X/btolVS/koIxXQw+t5GJNvao2KltuZCGyl3AMAgnH58h97is4+s
	xk0HlcGsK4kVNZ8x08sepq2gLsdTIG/kz0278X5lU/oh+N7CFOJFPMjnvXW4wsOsFb+T9cZfHm7qy
	k14lXg+F1qE8aicdHl6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDqvf-0000000HEmo-0yWH;
	Mon, 05 Oct 2026 22:13:03 +0000
Received: from mail-pj2-x00.google.com ([2607:f8b0:4864:39::])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDqvc-0000000HEl4-1eWq
	for linux-phy@lists.infradead.org;
	Mon, 05 Oct 2026 22:13:02 +0000
Received: by mail-pj2-x00.google.com with SMTP id 98e67ed59e1d1-39e501442e2so790697a91.0
        for <linux-phy@lists.infradead.org>; Mon, 05 Oct 2026 15:13:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791238379; x=1791843179; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=v2tJApUzC1LEzp8M/eTL2SHChylQhCDDbwAQQxkGsv0=;
        b=eje9N0samQoieiDRU1lAn9D0M6E8SVOhWF6Brg8MZtt0XSUVm67sT9kOIeC3ZWP1UL
         vHVYP3anM2rfZ/est0v+RtFeIrBEhEzbCahOB0lSp74RublHO+3sVI0P0MIDcq5+UkiN
         EYCW6/rnGyTIdCr1XPDxgdwOR5PgZRaBC9mh3ovKAiNIJJugJc0BUMVZKeBXvYIcPoST
         RQNhTlSbQ9xyKgQ2glA1tF5coPxZMMcocblaWfG78q7/vH+4S3uljnegzNqWSTyNQY4J
         HAVUeZ1/I7ovYrIvu0f9RwGS05B9qv5ldtp9LBWEfJy/N0c4rqw/5IzQgkbSzvPKDEZ0
         oMaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791238379; x=1791843179;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=v2tJApUzC1LEzp8M/eTL2SHChylQhCDDbwAQQxkGsv0=;
        b=otiWYHKF3H+5Ps2L3YJF84+J+rXpcOTjcf5PWekCWqahT8tfXhbvWL3mEg2qVGfkmD
         NqZvdLnEBLo3S8j7Y7veh2QvbJemCGy9YjtTdsBrBejL4IsRFbSLJmW7psgXGHG63SE5
         E6ZBviHhxES4/56H/L1iE6ZB9qY8UHHvQBjjMmdFVNbpSB/hjCYhqb/whFAJrVoWMB9i
         i4M2LL0AImQZ3lxh++B0Saa6U9IPIn+SVaUH9UZIX2C3rVHSCCqPjdqolj50sF3sYcAl
         xNvTdp0LXJE+Y/zWkbQTw06nNee3IHHkdILGV/6kx+kL+tIqYptgG/b3wKrXLB4e0Jif
         JXWg==
X-Forwarded-Encrypted: i=1; AKwUvBwCFp1TWg1HT4G2iJ7VMPzX7QKTFD7tqnwbnLN/3J5Gn0VbIcIBjvHTHmimiGttiBphKnsvuWb373g=@lists.infradead.org
X-Gm-Message-State: AFq9FYIMQDUvprmKTxU2f2KTzC6mQHpTBXOxNUW45Inyqb1iqUkZeIZ7
	9qwM60dk5gSQNmGG2QuYyLgvOVMtAgfSxV4RT7i6zv1ud209xt+GRt3S
X-Gm-Gg: AYBFou0GNlb0uDksqoeg5soHMorlp6miLzaw7GjaBFq+1K2Se0EushFJWK1fvV03geh
	ei3Vp0XYni3uAE2EnOZ7GtmmenwzW3GOHCTn/KTrpfVGnWlBawLKOZ3BAgPg5/q2pJDJ6VrBYNS
	Qp0SoHCbfIYrMuVnvC3BiAg8t0zXDdkI2RErtWHb8TZDcbWcgtJplPlJuWV2JSEuWCtaevFqUVt
	HrXjHYbYnDFVCnsXjj810INX1JoepCuA0an0+4pQRTP3zb/Vm2V+b67zYrDxnL0shkhHGB9qpGE
	ptNyt6f3X+DOP/+elR6U4iHBShKjF103SPxJ1TZEZF5Y7GlMPQ+x9ClS6KFIfgCakT+EwGH3gEW
	22Q4z91vN/i4XIcy3EWNKZqVXPI6V1Gt2JGZT8a2p813qmsv22DIosGC4dsFySiP19qbeEVyRpo
	tkoVjxn81uHjhRs7KaaslcRRLH6LAE8nRoCM9IN6fEZ4lVRLw0OiYk+HnkUdO16C/5Ordv
X-Received: by 2002:a17:90b:518d:b0:3a4:b418:94cf with SMTP id 98e67ed59e1d1-3a6cec143d7mr10688007a91.14.1791238379236;
        Mon, 05 Oct 2026 15:12:59 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a8533aba95sm1719425a91.2.2026.10.05.15.12.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2026 15:12:58 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH v10 1/2] dt-bindings: phy: rockchip: naneng-combphy: add rockchip,sgmii-mac-sel property
Date: Tue,  6 Oct 2026 06:12:28 +0800
Message-ID: <20261005221229.1095843-2-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261005221229.1095843-1-coiaprant@gmail.com>
References: <20261005221229.1095843-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_151301_077058_9A9C7BF3 
X-CRM114-Status: GOOD (  12.05  )
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

On RK3568, the SGMII interface can be routed to either GMAC0 or
GMAC1 via the pipe_sgmii_mac_sel bit in the pipe GRF registers.

Add the optional "rockchip,sgmii-mac-sel" property to allow the
device tree to select which GMAC controller is used for SGMII.

The property takes a value of 0 (GMAC0) or 1 (GMAC1). The hardware
reset value is 1 (GMAC1), but this can be overridden by setting the
property to 0 for boards where SGMII is connected to GMAC0.

This is necessary for boards such as the Ariaboard Photonicat, where
the SGMII interface is connected to GMAC0 and needs to be explicitly
configured.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 .../bindings/phy/phy-rockchip-naneng-combphy.yaml   | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
index 379b08bd9e97a..8e898bce9af73 100644
--- a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
@@ -80,6 +80,15 @@ properties:
     description:
       Some additional pipe settings are accessed through GRF regs.
 
+  rockchip,sgmii-mac-sel:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1]
+    default: 1
+    description:
+      Select gmac0 or gmac1 to be used as SGMII controller.
+      The hardware reset value is GMAC1 (1). Set this to 0 to route
+      SGMII to GMAC0.
+
   "#phy-cells":
     const: 1
 
@@ -105,6 +114,10 @@ allOf:
           maxItems: 1
         reset-names:
           maxItems: 1
+        rockchip,sgmii-mac-sel: true
+    else:
+      properties:
+        rockchip,sgmii-mac-sel: false
   - if:
       properties:
         compatible:
-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
