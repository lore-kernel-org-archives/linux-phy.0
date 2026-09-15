Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F107CC88E7B
	for <linux-phy@archiver.kernel.org>; Tue, 15 Sep 2026 12:39:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q8oJQLox7Sc1z4i8QNX6KqvYB+FM+miWcOUKJhOVBvQ=; b=DGKPPdKbuMw+jN
	h/UaGdkZEekosalDkLKIW7TpgVKZ2ioaTBp++9PrWtEvRn77u7YMWm517AbwK8Id6WQdVUA+EljyU
	izCeIHY7mQHKBFypcgUESmWLSXqlv3hFQ5zGO7JZEfP9Nl40Ew16OvPwH98G8QD6rNECPJ+8sc86M
	0wkIreLWnrw4kam3YGyA9sk1Wh0w22IBNM9raPFNrRug/4321r3vFdevUymjj/aHjVUOYWQ7TFi6N
	LWAP+oAK2mLwG3/maP0rpVZOI++2rKy/vDcKq9fE01dToYo2kFByJFgfcw1QcfMv6ybEutP7UT4mh
	CO8b9RC1LI+9up2hxMGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6SRr-00000006YTM-0zZ1;
	Tue, 15 Sep 2026 12:39:43 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6SRp-00000006YMZ-1WRr
	for linux-phy@bombadil.infradead.org;
	Tue, 15 Sep 2026 12:39:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=TJZ0PecvDJzl0BEu7eLa+JMyHq2Op9t0/swrRCuqxn8=; b=po3Lt+SVHobwbhcbJBr3IG3TVI
	JgUYEExVB4RgZBjqHUrbfZ/A/SA2ul19XwabgEszMPdrR98D3V5dq7zFybF3uTQRDPqB9L9W1rG3U
	XzXcPOoVSAyagOzQ1TQLHykdk4+zzE0y4WGSQ8HkfcTbUI2dguJnTBTM4oljz+GnigvH5GCz2K62C
	y44npsR22eFN/3/7WwmlonBTrp/x9bTlZ9OMCn2BfzEWyoA0QfrEPrX0h0Pm4dj5PMyvQxrAtXhpB
	uPra9sqaO2y6lSa5+mJFlJxMjGKXYIjrE5AuogtCpn3p0k0ZwyHlAobxtZvzkxvILlRrD5yUgrxa6
	YdAiK2dQ==;
Received: from mail-pj2-x0a.google.com ([2607:f8b0:4864:39::a])
	by casper.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6SRk-0000000G3wu-1kr6
	for linux-phy@lists.infradead.org;
	Tue, 15 Sep 2026 12:39:40 +0000
Received: by mail-pj2-x0a.google.com with SMTP id 98e67ed59e1d1-39ded0d7f52so1312329a91.0
        for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 05:39:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789475973; x=1790080773; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=TJZ0PecvDJzl0BEu7eLa+JMyHq2Op9t0/swrRCuqxn8=;
        b=UwKnVIZeq896dMeM/z1UpV2y1xSzeqX7B9eRYk9+UXUgjP7HdNcchJ3FJ/5WNS0kYk
         /FVDf653vcPq3fEja4M2xYZ7mR0RX3lQbmg9eTXYFj9IdRgsrKyhu8/NEKIEIrjZ019U
         8vAvS//AM4q/0u/nVNbY325ICRWvP1TP7/QJz0r/KjfebaFCHiyU3/QxrZxXL1U5Zvuo
         zMY4LBTJNxJhU/zESoRDnrhaxRJkvQnn0dNtbFSneE5RoUxdc96kl3hia7qx5m119l1e
         scXNpTL+1igU1HhLSTTFj3Z7tXyap4rG2ksOqr2jun7hZkPkrHu2GHxsNKk0J8kjalMH
         PMiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789475973; x=1790080773;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=TJZ0PecvDJzl0BEu7eLa+JMyHq2Op9t0/swrRCuqxn8=;
        b=aF9q1Cyt+Tdes/NqUC9smKaom3bjg8WNPPLygU3lim/2m5OXxrxW2XwajYlCJfoo0Z
         ts7KjkipqI6wjuXDsmDrQ5V3H+b24Oo/4PyV3B8Wi++6mZJMR43Ry/BfesWLF/+NXJg7
         KMA55zTSVHoassaTioXo2PMmk8OYegTIFGEQyANSgObe7HvmsmufIo5+pWZpXt4H+GkR
         2KeQMxpujeEDV12ActrpLyjgwbY/k4Kh2acHYVdy+TOLdPG8L2dw8pNBtYxgT2mnYznc
         GyemEG/79R8R1ErA+v/6E06pp6Vu15Sury8xkipYASIVf+eem8q+wSOundllSc24gGB+
         c3tw==
X-Forwarded-Encrypted: i=1; AKwUvBw7mfTcG0gN8UBDix4okNOPbrLiCS9tz8xOCjNegpSdKAyhHMiJbixyWeajoAVB0vrI92Ba/a2W03s=@lists.infradead.org
X-Gm-Message-State: AFuF++nTKNCMm7AOtOnoSFHlMbpK0WlZqjlSPgrvUwgHWKHwrhNBiGCa
	Xb3gSutR50KJjGutGctAcfV4MAvob1eIyAfvtOiXvU3w0yAU7vC6exQi
X-Gm-Gg: AYBFou2jxdRZJAVVGMCoWw0TalXnkd0l8MtqAs4Ni7T2z4UzZlcL66EJ3FCc84DMOqz
	g4F7nntMTfsBl0Gxi1aAqR1B/dZclHnEJMlqxr7aBU4OM64qNZFtKaKw1lLKyJ4g2RbfeKTd6c9
	9mgYIwBiIwm8BBOVv5AyPLaQLEqCWf67KIZuLjYwGGmgZy+7N1otOIiJPk1ZGgp7tIxAeZgnCtA
	2cAdRgFp2xqHrCZ6K8k07C4q3MM9vOOpO+e4CsHopyJ3p0UDqPvHctBuzhXwKuReKfcAqZc5vWi
	end9ZPp2GJMayu+eU/PF4IjqP54bZJ19Kc1x5nGxr4DRzCVMM7yZSdJka5yRgCbW+J3AF3knQZc
	n7KWBMhKX/n8nNf/E61u9lCjAD48f80DLCRheru0NYAjZL0dqfYhiBt32/cBpVklbxN9eVkGvX2
	64dmO7pxECtZVV96CvD1hJHv2n7ClG0MbSxWTYJwQnuAaUw0NY1lCxulz21MiID9q3kieVve4=
X-Received: by 2002:a17:90b:1e41:b0:398:b1eb:136c with SMTP id 98e67ed59e1d1-39e10e2e451mr1383583a91.9.1789475973476;
        Tue, 15 Sep 2026 05:39:33 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39dfdd28acbsm5307259a91.10.2026.09.15.05.39.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2026 05:39:32 -0700 (PDT)
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
Subject: [PATCH net-next v6 08/11] dt-bindings: net: rockchip-dwmac: document pcs-handle
Date: Tue, 15 Sep 2026 20:37:57 +0800
Message-ID: <20260915123802.1561724-9-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260915123802.1561724-1-coiaprant@gmail.com>
References: <20260915123802.1561724-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_133936_559873_4EBC2784 
X-CRM114-Status: UNSURE (   8.76  )
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
