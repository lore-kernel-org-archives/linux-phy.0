Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE104C0015E
	for <linux-phy@archiver.kernel.org>; Thu, 15 Jun 2023 12:15:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a5wc8e4gAN7F42QdtJkEr6FwJylh34IPZr1s6AaS4TM=; b=DexVIlSF7yTqIi
	mLQTk5W4vz0DNec4jKHagkpPDeXAyeV14W/dUCU9MCWbo/Tuz3T/FDpwzbZjRqHfASvptzwg+BGNK
	pfxok03YTk28qIoP03CeX9j0kDelaTH9GXkxR7N+gv9y43THCw1P7ZkqAeNUYlUxmjVUeHvGeQTA0
	+HV6ZNvGrV36UtyTpB6hiYWyXpkDn4BjG8LqpULXTy0Q6AwXD9U9gLby3FmtQQZzH3vE7FsqPrykK
	ri2t5Dv9b58IRhHXdH5UU7PYNEeKD3ghRZq2kFxfkYtonscA7LWIX5KlIdIBkEuT/DqzlPlxyws0+
	nz/6nLGYbxUWQhJiF/8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9lt3-00Epkq-2Z;
	Thu, 15 Jun 2023 12:15:37 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9lsR-00EpDL-2A
	for linux-phy@lists.infradead.org;
	Thu, 15 Jun 2023 12:15:01 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-307d58b3efbso5703877f8f.0
        for <linux-phy@lists.infradead.org>; Thu, 15 Jun 2023 05:14:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686831296; x=1689423296;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JIUq/KnB1aQBhfWdwO+hMtLBQidCfb77pkBdwoOfDrM=;
        b=XOrvB+DkaJ2BmTSr0lSZshMWKEw4mtpIGHKuQkQLKmbbQZ2V0UGWLokoeyBMI9OsUA
         Li6Z0+afyrwXPQ6GMG/x+8VZHd4S94XrVpbU3KmL7xG+49aIg+dTSQ+AqkxeIldSxo2f
         ArZEzfD6Wq+JU+1zQR0mKJDQi/RwnuM2w+p9n/3ZATGN0YPctre1++IjhzfneT8a20Xc
         SXWpm8ojguW7SgcXqrppvk7dgzvvA+Q3I/CBuKMd5r4gO3xu1A2gNtL9Z5gTGnm5i/Pe
         CAkLlSlhp1B31VtLf7NBMsM1PT4/310Yl68zkeuIhFFoHUhezQ9O5rbU0Avw8JjyNHcI
         xCNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686831296; x=1689423296;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JIUq/KnB1aQBhfWdwO+hMtLBQidCfb77pkBdwoOfDrM=;
        b=bd/ejnpMM7Gx5ovIfyL1/cU6BPVt6feQnN9Ua8xFX0oB7nVhagOjpNNXpn1NmEgaEX
         H6SCxvwTDUZMCOwlFwkpXkdggGJyk030lngdw3NSozFyRei+sBgnL2JSWOnMWbzVXRoo
         RD1TlMWdnBVSHmGNeTat2kwDsub56OxLdG6KhMrOxFJwU5fRsWiyGvVUvs0PjHH0TdqL
         OFOda9F1WwCoDGNa/b3wFcBhufCMjOJKYcxLaeeAVX25jYSiurbNSZlSEw699V+2xF9u
         FBhXViocGsycva32sUDHRQyhOjHeYRw4VwqyJieBBY/X+/UpSTPo77SN71SSs/yDXjq3
         ERJg==
X-Gm-Message-State: AC+VfDz3N4kanvrvwi2kIMIHG5qs+DQv7SzB5ljjJ6dAbQ9Zrz/9cJeL
	/O/PvO2OZFMwYuymcVEgnZlvxQ==
X-Google-Smtp-Source: ACHHUZ7cz1Lnuv+ZrNRPmXV/iE7QsI36JSR2liUOV4G8cw9WyScWMOZo4GGx6TjHbludU78fUMbGoA==
X-Received: by 2002:a05:6000:1ccf:b0:306:3731:f73b with SMTP id bf15-20020a0560001ccf00b003063731f73bmr9828545wrb.43.1686831295908;
        Thu, 15 Jun 2023 05:14:55 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:2ad4:65a7:d9f3:a64e])
        by smtp.gmail.com with ESMTPSA id k17-20020a5d4291000000b003047ea78b42sm20918012wrq.43.2023.06.15.05.14.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jun 2023 05:14:55 -0700 (PDT)
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
Subject: [PATCH v2 17/23] dt-bindings: net: qcom,ethqos: add description for sa8775p
Date: Thu, 15 Jun 2023 14:14:13 +0200
Message-Id: <20230615121419.175862-18-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230615121419.175862-1-brgl@bgdev.pl>
References: <20230615121419.175862-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_051459_711130_BE278C56 
X-CRM114-Status: GOOD (  11.95  )
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
PHY properties. Add the relevant compatibles to the binding document for
snps,dwmac as well.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 .../devicetree/bindings/net/qcom,ethqos.yaml         | 12 +++++++++++-
 .../devicetree/bindings/net/snps,dwmac.yaml          |  3 +++
 2 files changed, 14 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/net/qcom,ethqos.yaml b/Documentation/devicetree/bindings/net/qcom,ethqos.yaml
index 60a38044fb19..7bdb412a0185 100644
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
@@ -49,11 +52,18 @@ properties:
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
+  phy-names:
+    const: serdes
+
 required:
   - compatible
   - clocks
diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
index 363b3e3ea3a6..ddf9522a5dc2 100644
--- a/Documentation/devicetree/bindings/net/snps,dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
@@ -67,6 +67,7 @@ properties:
         - loongson,ls2k-dwmac
         - loongson,ls7a-dwmac
         - qcom,qcs404-ethqos
+        - qcom,sa8775p-ethqos
         - qcom,sc8280xp-ethqos
         - qcom,sm8150-ethqos
         - renesas,r9a06g032-gmac
@@ -582,6 +583,7 @@ allOf:
               - ingenic,x1600-mac
               - ingenic,x1830-mac
               - ingenic,x2000-mac
+              - qcom,sa8775p-ethqos
               - qcom,sc8280xp-ethqos
               - snps,dwmac-3.50a
               - snps,dwmac-4.10a
@@ -638,6 +640,7 @@ allOf:
               - ingenic,x1830-mac
               - ingenic,x2000-mac
               - qcom,qcs404-ethqos
+              - qcom,sa8775p-ethqos
               - qcom,sc8280xp-ethqos
               - qcom,sm8150-ethqos
               - snps,dwmac-4.00
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
