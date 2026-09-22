Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA549C98304
	for <linux-phy@archiver.kernel.org>; Tue, 22 Sep 2026 20:05:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q2jiZMogwjNQmC4X/dWl3qk0eVKtoth5ApT+xAZK/kg=; b=s0Do2isz7rb0Au
	B9R6+mFfV3anpXxi3mUxWHB3vyy2l/tK25/yXrTXxe+NP/HreT8PB3lJsrTT5w1A/ROhbb89DfBAA
	lxukVLYdl0WIDL9ua6gWebng74afXRT/edCTvgBE5nQJ/K3uDJNbX5ZkL/9GP/n0pyTg2pJxv9KDl
	8uZ44hkMM0F7J0T19C7Sm9vUXf1QBEan5J53owdjKKYKaBw+i40b1O3Ah+yFvN/hvXcZPqN3tWqOz
	PfeVDwi2tEi83JTxECihSLV5BI0jAYpMO1qwfq2xQMjDMUJn6UiObqdXvx0DUKUS2NYG3mmIxIzIX
	FFmK/74bXTcnFi7Q23Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x96jc-00000006Ug4-3oIv;
	Tue, 22 Sep 2026 20:05:01 +0000
Received: from mail-pj2-x05.google.com ([2607:f8b0:4864:39::5])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x96jR-00000006USn-3EUx
	for linux-phy@lists.infradead.org;
	Tue, 22 Sep 2026 20:04:53 +0000
Received: by mail-pj2-x05.google.com with SMTP id d9443c01a7336-2d942de6574so990845ad.0
        for <linux-phy@lists.infradead.org>; Tue, 22 Sep 2026 13:04:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790107489; x=1790712289; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=HWO0yYxZDPAwCYSgicIL5MDEtp9MsL193ldKBirIieA=;
        b=EpDN2c+je7eu3mz3KQZLevvbX0Dn2XWQg5LweOxpIB0l7TrPNbukU+kprRIPI3ug0o
         zeBBeSOFfe3DoAGGYUErYTuartDRjLcJXfTBLh4tQrfRVEkf9hlcOUqhWj9hW0ZvfWYn
         GdJeYDDh78wGr/iM2CEKohN3CyJ3QoRjdO0hcTpCNkdhzwH/Jg8anx7AGcW2rZktx1Sr
         hPYI8OhG2mjFs0EUBSi5XfMdxGXr9NRDFkBjMblv6RYXlRD0cgSmz+Gb/KDIljaScS0z
         8yndYZXLyQWhAtVcxDktV0TXqQq1HeIIcDdtVJlmz41EMH6NJSkijsP8zp0bmQYxfn3I
         06QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790107489; x=1790712289;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=HWO0yYxZDPAwCYSgicIL5MDEtp9MsL193ldKBirIieA=;
        b=v2qk3QoU7lG69x23J8YB9IB4sAEIgA7DJV/rveQlSQMP+G5E4MyXdQUm0n41MaHdJY
         a2UbWvGpv/1Iwcvy8ihFqEnEMQg9CJ20HHCtdwrUZOerFC5HFt/glVXPqBvP12+QAuME
         yeEqKYbMnzVCIF0QbEaz3vYKUaM11wt/MqsgL/XC4Sh0fGf9GyvVm7WUP33qMzdkHqq5
         DHY8Y4CE88GPhbEmpvWB/VgfUHY4ZzrdEOO18+58mGCvGnubAV4txRsHc8QsHTMGNGKy
         bj7SGNgjDoAGYFvkG89hr+sJZlgX5DJoRPxNPOBdI5+1/ixUeS66xsloOj4DmAw3Ijqm
         28Yw==
X-Forwarded-Encrypted: i=1; AKwUvBwL6FJRpEieVWtNYvG6UmXAXr4a+Yy0QtZ/6+Dpj2/vdYYgNY4SSWZj8qBpFX40MXc6RWqBd8Q2pIA=@lists.infradead.org
X-Gm-Message-State: AFuF++kPDSE+bakr+l0hhJcI88ga8NqCwnntB9Zouspp3VimStAwjpaC
	1yRwJJco4TLREHzF10n7LskJ2uU2UrBZHxBtjlvuvmw2lapiNGNpj9ky
X-Gm-Gg: AYBFou1dy9Qq2l/ysyNd90aaxi0ybF876kuRrGl03E4WmGeENwzxiiIZ37o3O8WbT4x
	lpWMpOsrQhmpUtJs24o6Fq49oesRL2jfoTzKkI0yaJAIEu20p6va6cswOZFia33utTsKVxtaIBN
	SuA0o5nURxWCAbzT0WVAg/aBW/7E3n/IRKg0OFEQ9phbaQoWtUNEG2MS7w8FafXLfyZjK6awPuL
	wvqg9JA4m/E+Mhi9n8bzN1qn4E0796vYSx7e0B02/QFdj9p9qVURoBM/lt2/SHCHVuyf8E11SMb
	AObqzGKpiTcWEAZlmOtEpy5scLaYoWF7Yp2AKnbFX3AbojJmGUaozIBkhQDDRh5fTf0TcDhvtSj
	VmFhcXWWgsQW8N/OaOGc8qXUQnaWnuGWhuHBOsNUOkY3C2XzYYJGsY/jgYmu8EXUMWwMoY7J78B
	KGirjVkXT3SzzO7GwAMQgetGu8Vxmr0q6NywW1R6RYbHa4RCtNtm0ipQLcIrCcXpKyL3XB
X-Received: by 2002:a17:903:1a86:b0:2d9:520c:38e7 with SMTP id d9443c01a7336-2df69d1b106mr4415425ad.1.1790107488984;
        Tue, 22 Sep 2026 13:04:48 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2df6a5eea15sm654515ad.64.2026.09.22.13.04.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Sep 2026 13:04:48 -0700 (PDT)
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
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH net-next v10 08/11] dt-bindings: net: rockchip-dwmac: document pcs-handle
Date: Wed, 23 Sep 2026 04:03:32 +0800
Message-ID: <20260922200336.2201212-9-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260922200336.2201212-1-coiaprant@gmail.com>
References: <20260922200336.2201212-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_130449_842556_45C03952 
X-CRM114-Status: GOOD (  10.26  )
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

The Rockchip GMAC binding needs to describe the PCS reference used by
the SGMII support added later in this series. The property will be
parsed by rk_pcs_init(), and a missing phandle fails the probe. Add it
and require it when phy-mode is "sgmii" on rockchip,rk3568-gmac, the
only SoC in this binding that has SGMII support.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 .../bindings/net/rockchip-dwmac.yaml           | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
index 80c252845349c..bb7540e838033 100644
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
 
@@ -159,6 +165,18 @@ allOf:
         clocks:
           minItems: 5
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3568-gmac
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
