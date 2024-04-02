Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47A3AC6FD1F
	for <linux-phy@archiver.kernel.org>; Tue,  2 Apr 2024 19:26:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fQiy+vJPPCJ/ivfOmIPGi/oAyb5u6ZCLbVfOxYULk0g=; b=JXWgaGazMSMz5e
	YEd7UK9Js7jrJY4pFAiumG9+AqqENe08wlEFyMkozPCPtx8pTJ9WidRznTZFq2sHUjQDMcZNDbavg
	I2RkFLRrejDdZsQ+x8gm5qENCArqWdPXZb4CV0odddSsj/LBjasYRYxWyfGDF++M0jAL+TWUPUa+e
	RmvTTXW2GpAh7DzD/RbxPVC7VsBf9GnF9I85D75GE4zxfRW3Z+uC2zg0pbaLW89/UAVndBiRkkPp0
	ytXSQIyeeH280lDEnq6hPsUDIZayzjlW0WsbGLL9Y5JmacmNbDS8Hc+Dtbkb63svPs5+uAk+evAwM
	PJ+ZtLmqT9+mR1uV6jmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrjlt-0000000CV1Y-30xo;
	Tue, 02 Apr 2024 19:26:13 +0000
Received: from mail-oa1-x2d.google.com ([2001:4860:4864:20::2d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrjlo-0000000CUys-0wx3
	for linux-phy@lists.infradead.org;
	Tue, 02 Apr 2024 19:26:11 +0000
Received: by mail-oa1-x2d.google.com with SMTP id 586e51a60fabf-22200c78d4fso3236396fac.1
        for <linux-phy@lists.infradead.org>; Tue, 02 Apr 2024 12:26:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712085966; x=1712690766; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ksI6IPEsjFKiejyXpxCVyS77n8b3/e3zALrEpFbnmzw=;
        b=GMA9IS80L1rpTuSSqDoctAiafGX6ipuWlV9jqdAkOgmSSi+ZujoggSrwoS2ZF8gWa7
         kNR1PWomufSvNVJ6LE+0/qHr/rZxWBACjaqXgUZEHHuo0ttdEM/Ll52Jcf7jMh2OYb39
         +V+RcjxKOJelU4W9VY16LDJmOJcPD2c1tbOQV9BpF8ROGU226I7InH8wlggyAlpS1LPK
         KK5G7FJccXfcFNLjg6YdXrlWIQgNWAbQH9J4Or89bTYThHNlVukNNTn295dU7Hd03KZN
         Voh0iTPg75HXK1rGX8trA24pu5ufnY6cgIzMsV5zgpCD2kzXsLv9tDWlvWE0fBTpprIA
         WCGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712085966; x=1712690766;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ksI6IPEsjFKiejyXpxCVyS77n8b3/e3zALrEpFbnmzw=;
        b=tB9FvIoCOthfKxuSLSgw7S6LSXcS6atqxdSHrqtPGoF01kYlKtOKYis4KLlmvOyvUm
         4o/O6XvVgQb8KoK7YjTE2zls9v5+TmOEgkqt1KCg8sT5EcIZ8M/nfLVpdkkN3WdB7+et
         Nds1rlGyboO9aKVKYb5uRi6akYrHenPgirmMtjpXs1YyWMLmuohCPEMXLDk+rg9znAYQ
         8T4MKb2R/KFanzo4jk0ymUnPYht/W57+rRzXjB//hxWm82I02wUKqtQ93A5wSY2bXyRj
         +XgmGEVyrf+HNV1WI2rEefi6DwY1q26Z1ACp7nG0PG1G1eMP2Tpso6fVxY85maCrdS68
         Tw3Q==
X-Forwarded-Encrypted: i=1; AJvYcCU/myot4nlO7BDR/2SC36y1Gi+BoFGAIwHu3JtZes0GOoZZn51SQQdT/uPV/0sqyrJJYxcvO5eCFTif0wEyevWjXJPe5vZ3/97404Linw==
X-Gm-Message-State: AOJu0Yxuk5lG9Ae3iaOwC7qG2n4eNlP4r46GYWPX7gDmWSAlHMMO1tDA
	R1f6JLoq/7nr3V22xAhmNK/yYEtIh4PwKEZ2gxhsTXU/Mta4XMjfDEPCLNOz7FCKGA==
X-Google-Smtp-Source: AGHT+IHrnf/GQi55EqJXprDYr6y2oDDZ5H+PyWbIk86tp5RFeDkWom5A/9nkQ0o1HZf4XwVgi/HBcg==
X-Received: by 2002:a05:6871:5813:b0:22e:15fd:e247 with SMTP id oj19-20020a056871581300b0022e15fde247mr840978oac.5.1712085965864;
        Tue, 02 Apr 2024 12:26:05 -0700 (PDT)
Received: from nukework.lan (c-98-197-58-203.hsd1.tx.comcast.net. [98.197.58.203])
        by smtp.gmail.com with ESMTPSA id ld22-20020a0568702b1600b0022e8f9fa89bsm75622oab.57.2024.04.02.12.26.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Apr 2024 12:26:05 -0700 (PDT)
From: Alexandru Gagniuc <mr.nuke.me@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: ansuelsmth@gmail.com,
	robimarko@gmail.com,
	Alexandru Gagniuc <mr.nuke.me@gmail.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 5/7] dt-bindings: phy: qcom,ipq8074-qmp-pcie: add ipq9574 gen3x2 PHY
Date: Tue,  2 Apr 2024 14:25:53 -0500
Message-Id: <20240402192555.1955204-5-mr.nuke.me@gmail.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240402192555.1955204-1-mr.nuke.me@gmail.com>
References: <20240402192555.1955204-1-mr.nuke.me@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240402_122608_605246_C9762FA4 
X-CRM114-Status: UNSURE (   8.56  )
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

The IPQ9574 gen3x2 PHY is very similar to IPQ6018. It requires two
extra clocks named "anoc" and "snoc". Document this, and add a
new compatible string for this PHY.

Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
---
 .../phy/qcom,ipq8074-qmp-pcie-phy.yaml        | 47 +++++++++++++++++--
 1 file changed, 42 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
index 634cec5d57ea..b0dbd2726acd 100644
--- a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
@@ -19,19 +19,19 @@ properties:
       - qcom,ipq6018-qmp-pcie-phy
       - qcom,ipq8074-qmp-gen3-pcie-phy
       - qcom,ipq8074-qmp-pcie-phy
+      - qcom,ipq9574-qmp-gen3x2-pcie-phy
 
   reg:
     items:
       - description: serdes
 
   clocks:
-    maxItems: 3
+    minItems: 3
+    maxItems: 5
 
   clock-names:
-    items:
-      - const: aux
-      - const: cfg_ahb
-      - const: pipe
+    minItems: 3
+    maxItems: 5
 
   resets:
     maxItems: 2
@@ -61,6 +61,43 @@ required:
   - clock-output-names
   - "#phy-cells"
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,ipq6018-qmp-pcie-phy
+              - qcom,ipq8074-qmp-gen3-pcie-phy
+              - qcom,ipq8074-qmp-pcie-phy
+    then:
+      properties:
+        clocks:
+          maxItems: 3
+        clock-names:
+          items:
+            - const: aux
+            - const: cfg_ahb
+            - const: pipe
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,ipq9574-qmp-gen3x2-pcie-phy
+    then:
+      properties:
+        clocks:
+          maxItems: 5
+        clock-names:
+          items:
+            - const: aux
+            - const: cfg_ahb
+            - const: pipe
+            - const: anoc
+            - const: snoc
+
 additionalProperties: false
 
 examples:
-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
