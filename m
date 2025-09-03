Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC9FACA0FF2
	for <linux-phy@archiver.kernel.org>; Wed,  3 Sep 2025 14:48:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5dSkNx9GrSgNkEaYLjXok5aFyVGUZumTatSWklh1PKA=; b=i5VdV7afp+cBw5
	DQ/Xtob9gLSj74cfX2DgMOxWJ5yEBSq+Ov0P46zt0TYRHmb2O0WP0aJnOtXrxaeSRjsM3UfoZ2RJJ
	+rKGbkEsJV8zsV6qqawWFNaqnCVw3Avqv16XJ/CTpXB4VkGUE6W8jfkQ5wSve47knp4DHvwYphHmm
	95eASDG65jKG5W9b291hfxw3uTxGn/e3fwsEn/yaxkMagfPVeDrZN3O6f59xyrzUqNBnxojFI6Oey
	HuazcBHB/SI0+MmF96jJWx0ReLPX4MewMHxy5+wB4GPwBjNflnDca+J3096v4KmGKk5B3Frt1xnyN
	l5tGJpY9SoOs+S74+PFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utomV-00000006lPg-2SHq;
	Wed, 03 Sep 2025 14:48:15 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utmkR-00000006Pfs-26Bx
	for linux-phy@lists.infradead.org;
	Wed, 03 Sep 2025 12:38:00 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-3d1bf79d758so3466731f8f.1
        for <linux-phy@lists.infradead.org>; Wed, 03 Sep 2025 05:37:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756903078; x=1757507878; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OxEjNld7tkDsnxguU4Fy7yBizLDnFCqErAh87yjOcjM=;
        b=VxODXOYLgtr1A2Wy2Hoj7Zt5bPgWavYsDQi0A7zilqfqWJIT5+Ll5sL9KxERpE3RI0
         pXl3HHm5jTgrNgnWBV3OuLOSqrVt49Fc6bitzy1a6F78RzDuKKQ2eB/gV30Fpdw77qJy
         FgY8DbGay6eY9M/JP/nu4x7zjlW4Q0MS866UMQkBaDUyKEIzp6AY1z9ySjX/KLJPN8cM
         VWL4OCJAsjyaCgWtd3tVdHqQT851dP/c7+cxYeOd+CZXxxZWM4dtiz+p/zrSfZq37ePl
         miLxvAkCDNNZ0yXqRFbdHglVaOuGItjqDPc7kbV4lCG4IZIYh8zNaJUvBvsAZTlLAm5n
         sCwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756903078; x=1757507878;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OxEjNld7tkDsnxguU4Fy7yBizLDnFCqErAh87yjOcjM=;
        b=T5V04+Mp92BAtn6DXHeBr8cEzp9xv9YINiCQcJWkZwlNT/ZImowu3CfTh46nIWJDU6
         N2UueoKkn2QewLBgJVpnkWhtPPZvlSbZpI+zjcRFPKsYXO+FX9yOOqEzSU406emEERkZ
         LkTqkMrW921OEFwbfC1A/Trr6O1ZU+wFg3kZFkDKS4Yy/YTV0w3eDUpUXS8lfmv3TqBN
         EKwb9cwcI5A3lBMz7wyVO3LxS36jHzkgcAQiHamnAumkrVu8Uebo53PPY1lsR0jTXJPN
         INSHN875CJ6PYNICaMJCf1Sv7Q0BkniTuYlr+G++HGYxZG520ASMWWX/jjQ3matWFGwz
         CBxg==
X-Forwarded-Encrypted: i=1; AJvYcCULX62l/xUMelu05sQQExcXGX9meJoQowPOl49lWMRt3LvxVB4/cBeB6UrRwIBfF8AQ90DR4/scxnM=@lists.infradead.org
X-Gm-Message-State: AOJu0YwVf9yY81MHNtrB946PhkRDZFzW/CaCevSIyLsQ+mqPhDJJXX0J
	2ey5NyFSnhLFbsJa512+P1C5EEBRmhBJDtMJVjtuTfWGLU5ryvw6SSuHK+pnn/kzdDM=
X-Gm-Gg: ASbGncuUotPDL7Gtpv5tufoCmmjKgYlAfIVp3cvObpHt7Q7cRzRYWUwsXZP9oD/BuO5
	2HhKmCbQWW7EaDTWMp31D9Y0s6fxUUa4EphL7bJnKfdhhyUa7/7boP0skTMS2PvGzoc8b7XQyVq
	/m0hNvwWkDkqleKYXaecv/0XY9VPZwEIzwVasOYdy+JRrawUmU5e8zTFXX/z9afiJVeoPPGvxtN
	f7G+Lhi7oLeGOqSV1o+luQ63DU36Gbu1M/kfJMBN81PNL48wn5QlCYlOd8X9qTlTL0vTSBa120z
	8DTRMeITjiRa4lPKpewQ6ptImc+VjHR95tTS033DUaWvz8+ioe9AgdTuofzVZrtvhf4geTK9qRZ
	bZO/DQ77O6VxdF0YdXRnbDmEmXKlbYvYdIA==
X-Google-Smtp-Source: AGHT+IF3VBrAT1QQg52sUF1h09vHpYlVLhbGCZZAZG21uGR/y3qWcWfDyr0s1pG9A79U7fkwU65rXg==
X-Received: by 2002:a05:6000:2889:b0:3d1:61f0:d256 with SMTP id ffacd0b85a97d-3d1e01d549cmr12571537f8f.42.1756903077904;
        Wed, 03 Sep 2025 05:37:57 -0700 (PDT)
Received: from hackbox.lan ([86.121.170.194])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3d0a7691340sm22526782f8f.39.2025.09.03.05.37.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 05:37:57 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Wed, 03 Sep 2025 15:37:42 +0300
Subject: [PATCH v2 1/3] dt-bindings: phy: qcom-edp: Add missing clock for X
 Elite
MIME-Version: 1.0
Message-Id: <20250903-phy-qcom-edp-add-missing-refclk-v2-1-d88c1b0cdc1b@linaro.org>
References: <20250903-phy-qcom-edp-add-missing-refclk-v2-0-d88c1b0cdc1b@linaro.org>
In-Reply-To: <20250903-phy-qcom-edp-add-missing-refclk-v2-0-d88c1b0cdc1b@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Sibi Sankar <quic_sibis@quicinc.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: Johan Hovold <johan@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>, stable@vger.kernel.org
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1643; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=W/NXOLTDQ5i+LA/X1CrjKyPkGzseqK8+KPCSGaDzeUc=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBouDae5lOFoFOFiQfJZUcJEqKJNj2HU9ow6hrgF
 douBegDLuqJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaLg2ngAKCRAbX0TJAJUV
 VsJTEAC8Pe8fW4MBjz20c3J0FL9zup4B3QFocDrzqg/QDAiASeErbVTOjFqgAFKbfQ1mZDXZNA6
 12KUjSvOiLzIwGJ4t1OTjz8YRvi+9Cwri3ovF7cDnt34w7iv/sfPhjcOpfPSJXzU/bZwkjThsEU
 3SPhenbhSCheqt/SGPPgJ6dlHu8j7Q5LWfM8clV1POJqS3p6DxSDH3yGgHjhO1dONLG+a+W6VUt
 PKiezLPflo11YL1/E7ZTWMToS31LmUIbuFVczDdHKXozk8f3j+kweW5+Rfz/1HwnkE9gWX7Q6Cs
 lCg1AzpGQdXOFjCi7QdY3GMatXv8Hl6uUCTbP1g0Zda3pV96AXgj/gpETAywDqa69N++ij9z5wI
 Pu/bcIFXqHc5wO02oWdEANIZ8PTHzQFB3krv+2w5kH/EMsOymQlDD7KfaaPGSUsrGPd8yDYBKpO
 HrgUUrpk4PRXtzma8hUKsFHp2uI1tyRbjw9R3JpdVhKiJA12cwdfZ8ktd5ftnK3AI1Qz//Jf+hm
 rcH0dD94vvKXi9KK2GHhkVnsxT4WAcCdG617QzbzMJeEmUZ2h1q5ACQrWJhaNK3A6OwtpEJlVyr
 3HY7DXO/M/+xVZEmD4v4ANMr9qBlcPaeJRf4gtk0dDESDhTHMqEpp80zEwJ2x/Dg8Eb5OIDhkdM
 0MZFA0VxE0u+KQQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_053759_543286_96F493FC 
X-CRM114-Status: UNSURE (   8.96  )
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

On X Elite platform, the eDP PHY uses one more clock called
refclk. Add it to the schema.

Cc: stable@vger.kernel.org # v6.10
Fixes: 5d5607861350 ("dt-bindings: phy: qcom-edp: Add X1E80100 PHY compatibles")
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../devicetree/bindings/phy/qcom,edp-phy.yaml      | 28 +++++++++++++++++++++-
 1 file changed, 27 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
index eb97181cbb9579893b4ee26a39c3559ad87b2fba..a8ba0aa9ff9d83f317bd897a7d564f7e13f6a1e2 100644
--- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
@@ -37,12 +37,15 @@ properties:
       - description: PLL register block
 
   clocks:
-    maxItems: 2
+    minItems: 2
+    maxItems: 3
 
   clock-names:
+    minItems: 2
     items:
       - const: aux
       - const: cfg_ahb
+      - const: refclk
 
   "#clock-cells":
     const: 1
@@ -64,6 +67,29 @@ required:
   - "#clock-cells"
   - "#phy-cells"
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,x1e80100-dp-phy
+    then:
+      properties:
+        clocks:
+          minItems: 3
+          maxItems: 3
+        clock-names:
+          minItems: 3
+          maxItems: 3
+    else:
+      properties:
+        clocks:
+          minItems: 2
+          maxItems: 2
+        clock-names:
+          minItems: 2
+          maxItems: 2
+
 additionalProperties: false
 
 examples:

-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
