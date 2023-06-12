Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C833C7EE2E
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jun 2023 09:25:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d+IMjjAvW3r1QEu31IPcffmvf1Kjjz316Qvkt0Anhts=; b=my5TfPNz7e4u9E
	0+6Fe77cGbIZZeyed5L5rsf8kJ5ZGHLMCvq29vmEKL72aXaLy8DdAMFveZH5690yvlPG/FAPKq65o
	KiCJj3jilNsbBeEMgNhXBOOiOJvRQ5B8nqezO6RhH2Yx0fZ07b+Ah2xwHz6QjIhRBn4WMHwGiJzUW
	/LW5+b9fDUdXykvu92PScZLVrwyH4bcotv7TFhr39gRyBPvfx+m/68zbmLYQdgx2WCwAuFfuk6hqz
	15XiheaQhABHk7fdWYLvupvNGTQ089R78+C7UnpBBkIjdXJxs0uNxcReDk8ZtOqe/NmUEBVDn+77x
	fyrVSPhzKj8flw7JI+ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8dnk-003HVT-2n;
	Mon, 12 Jun 2023 09:25:28 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8dnD-003GqC-2D
	for linux-phy@lists.infradead.org;
	Mon, 12 Jun 2023 09:24:57 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-3f738f579ceso29735125e9.3
        for <linux-phy@lists.infradead.org>; Mon, 12 Jun 2023 02:24:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686561895; x=1689153895;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SXzZMEQkDaBAvE+ZbovBT4hal5Pn3NRrTeiS658EjW4=;
        b=DcuBFu7i8zRSQw8hKkh2pX678LFY4uXhQRa0m1zoChLoD/0S5zPhOg/N/5fCRqhJYj
         Z/zKl/ZA0YUpKlj3nfmm8WK7dbqp8Lz1GnBwSjRkWnCXmulByIqXZmyk9SecLTKdlKEp
         7XqAqh8l0T6g6hWUOB56/w+7mdIuq30uxJryTPArpeMbN91hdnLaykpbwvvQbF3VlWr5
         jvy48WfJVMGchgt+8J6Gp6hkKaiYTL3TgU2oDk+hfhvv+QDEuUdfV1axYsnXyQAb2/ox
         iKo4fug4hayVecTmLj6RFSmpadhjLeynFjSieMx2ZlRUmPe9LmSJZ1bM+o0ZfZ4+FOxq
         cyUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686561895; x=1689153895;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SXzZMEQkDaBAvE+ZbovBT4hal5Pn3NRrTeiS658EjW4=;
        b=kv5s7Dk9ip3IihsK59gf4rPnOnRlV5lSA20eXaTij8osfSx2Su9ur1AhJJXKXLbgLK
         hnerfRipV04FWHtabaGNP34pgGbh4PA0mObvLnRXmBHbv0grrTxLWApopnvlyel1wWfR
         hwAm7pZ/VTN6rvjJZIFEIIHuop2mf5MbbcDTqGOhnaGfGv9Lg8brRbYTBJwSF7VinATk
         CTIINAhROlDAH1HnaII6Hne2P1klMOuxo07Nim+L7RTpTw2hKUyqcgIf9NalDk9824dS
         DQCvlLo/rV8f8IxqPrvd4tN/wsNlDVop10SqkvHBjxzGd6MAN5zCv3DejBDV6t1RHOa6
         XYLw==
X-Gm-Message-State: AC+VfDzk/lCPLr231a0HkVTc4hrIHRq4XVlOLNuMB0d/r/Q7N8JhvxT6
	i7Cot0Z1iB+4GfvibNeHGXOCFw==
X-Google-Smtp-Source: ACHHUZ5UO/S8nDahmNKq8Vygdbss9quzKdAcp5DFednq7JQ+xTXMbpCVJCWEy9AyLcubMF3PwjgMDw==
X-Received: by 2002:a1c:7713:0:b0:3f6:784:9617 with SMTP id t19-20020a1c7713000000b003f607849617mr5402370wmi.11.1686561895166;
        Mon, 12 Jun 2023 02:24:55 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:a222:bbe9:c688:33ae])
        by smtp.gmail.com with ESMTPSA id p14-20020a7bcc8e000000b003f727764b10sm10892044wma.4.2023.06.12.02.24.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 02:24:54 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Vinod Koul <vkoul@kernel.org>,
	Bhupesh Sharma <bhupesh.sharma@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Jose Abreu <joabreu@synopsys.com>
Cc: netdev@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH 20/26] dt-bindings: net: qcom,ethqos: add description for sa8775p
Date: Mon, 12 Jun 2023 11:23:49 +0200
Message-Id: <20230612092355.87937-21-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612092355.87937-1-brgl@bgdev.pl>
References: <20230612092355.87937-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_022455_730284_E7FB425D 
X-CRM114-Status: UNSURE (   9.97  )
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

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Add the compatible for the MAC controller on sa8775p platforms. This MAC
works with a single interrupt so add minItems to the interrupts property.
The fourth clock's name is different here so change it. Enable relevant
PHY properties.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 .../devicetree/bindings/net/qcom,ethqos.yaml       | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/net/qcom,ethqos.yaml b/Documentation/devicetree/bindings/net/qcom,ethqos.yaml
index 60a38044fb19..b20847c275ce 100644
--- a/Documentation/devicetree/bindings/net/qcom,ethqos.yaml
+++ b/Documentation/devicetree/bindings/net/qcom,ethqos.yaml
@@ -20,6 +20,7 @@ properties:
   compatible:
     enum:
       - qcom,qcs404-ethqos
+      - qcom,sa8775p-ethqos
       - qcom,sc8280xp-ethqos
       - qcom,sm8150-ethqos
 
@@ -32,11 +33,13 @@ properties:
       - const: rgmii
 
   interrupts:
+    minItems: 1
     items:
       - description: Combined signal for various interrupt events
       - description: The interrupt that occurs when Rx exits the LPI state
 
   interrupt-names:
+    minItems: 1
     items:
       - const: macirq
       - const: eth_lpi
@@ -49,11 +52,20 @@ properties:
       - const: stmmaceth
       - const: pclk
       - const: ptp_ref
-      - const: rgmii
+      - enum:
+          - rgmii
+          - phyaux
 
   iommus:
     maxItems: 1
 
+  phys: true
+
+  phy-supply: true
+
+  phy-names:
+    const: serdes
+
 required:
   - compatible
   - clocks
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
