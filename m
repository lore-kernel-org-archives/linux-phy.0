Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0388BC25B7C
	for <linux-phy@archiver.kernel.org>; Mon, 27 May 2024 08:42:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ubQRgU/yYzfnOjV3JhVFTUraFaeLh3ZCjM7PDSjT+fY=; b=HoNj2UHY2nwrz0
	W/QBd4QF7ovwBIg0FQK85D5v1pekiEj2VT8jdg4tiI9MBQGgdy0Rr5UGHXO06eRBjpYNMCpu4XCXL
	jW57rAVIhv0SYXQdZphKjEOFbVqBG43lIGexlnqGaVdP7NVpNzZTeepUJwyFeKDvR5H5dGgEoAvKw
	oC0jLlA7zVKVvfONUMYvFyMKveRNZjKxEhpQ40i+06vMV/+lLFKfzXju2N/D3nfZET5ESlkpmERiT
	8x03WqM3G+KEagC8dBNtq8YFfJimLhZG8+ZLoaUhwNKsv7OV4MKM4a/tft4jZopAS0HlgEQdd6h9z
	nYt1vQw775+QzU75vlfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBVwR-0000000EHJb-23lv;
	Mon, 27 May 2024 08:42:51 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBVwO-0000000EHGb-2sWF
	for linux-phy@lists.infradead.org;
	Mon, 27 May 2024 08:42:50 +0000
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2e724bc466fso96581851fa.3
        for <linux-phy@lists.infradead.org>; Mon, 27 May 2024 01:42:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716799365; x=1717404165; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wYVqqrufrlU4tP6uYGCro4lra2OX39FvNlNmisAjzCU=;
        b=d2QHS9BJrKTgu14ymMithvYsBPjpq/3vvLGqwvZbQQvYGvzKzws0Rrps1z4alOWZfK
         vaWD5Jp/5VWRLiWesmN+OrEr+AL2ZpvJ14B3oe92pC67+VrVJM/e0/HHp2x9ZiXo2Ibt
         8mUE1SKcTG9HZ7cDgfklN74s4ysg90EK5l8VBwLQJV2L3u0ljMFcOZeewHuZ9s+QGErC
         ax4cMhnxnUQKxndcaAUJ0QS0NtJ8wlPvPKMpEo9l26oJrGosEtFQtFcH7XJkWzTTtDkU
         H0CguCcJvXtkvuom75MBkpfME+Lll+LrroEC0cXDaEhQe3XFU6mBdIUj1R3HSCCa0DuC
         YHlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716799365; x=1717404165;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wYVqqrufrlU4tP6uYGCro4lra2OX39FvNlNmisAjzCU=;
        b=UbtCpqeCh9VULf3sqJUJugDZTRj6CHUkBnXIQKNWIwje3hG3TcrfUOPSv7zpwB4DSC
         u08uMETwuFEOsUvPjYdV1kSch+/3eI0D4zQ2Z1P8wSQ7r/C3HKnfmm4kcm+mGFO0sxA0
         QfZJviPFq2KXS4ToINNO9CzimxOmnpepfE4AqYUYsFfxvie439S/X2avV6b8RLC0ZgI9
         ZCAcc8luotP9e+HN+XDs8ooIAbKQqr7o4PU/Oam95dG/OirGYTyimD9NIsdRnVNs2zdi
         KD+yT9Jc1f7pBW5EjHxFfu4GEVPDfnXsqvAxVB+HR2DqvSgBioLP2sjBGUqndhMa9IrN
         PMxA==
X-Forwarded-Encrypted: i=1; AJvYcCU7mQ3cHNf0fAU6Z3CB2vwSerGroLqDOVbr+OdO9xixYBl9NOFQG3xjhGydRfg8JmF7JCUmckGi1Lkl/erdYJcmS+pctF8RMlzTxl3tkQ==
X-Gm-Message-State: AOJu0YwSDh2HqLT7AbPkfCzGy8ktYtHAPn4D5iRe+FpWAXvOudO/cqCq
	sKhPknw42nuqu2QX7VUKMnR4Z6bNmZq3b4dGBmSqi9ddDZ66DtYKCRfwHPR3kqQ=
X-Google-Smtp-Source: AGHT+IGqVjhmpV6P5dYKIK4bQm7p4J/a/8bHzzCxS0JX9QjuVHpgXeL4JdCcI+kWd/pi8uJ22Nc/vQ==
X-Received: by 2002:a05:651c:1992:b0:2e7:1e4a:31d3 with SMTP id 38308e7fff4ca-2e95b097761mr98346481fa.16.1716799362952;
        Mon, 27 May 2024 01:42:42 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3558889fb57sm8447292f8f.114.2024.05.27.01.42.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 01:42:42 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 27 May 2024 10:42:33 +0200
Subject: [PATCH v2 1/7] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp:
 Reference usb-switch.yaml to allow mode-switch
MIME-Version: 1.0
Message-Id: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-1-a03e68d7b8fc@linaro.org>
References: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-0-a03e68d7b8fc@linaro.org>
In-Reply-To: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-0-a03e68d7b8fc@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1520;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=FSjR/z57MPpK+sFVQN3f9Y5HY3fXrry6aEHjLvU6BMI=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmVEd8GmfhAqkq4Fqoj88/8nK66iClT54YKRfYfb0P
 0PAPK7+JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZlRHfAAKCRB33NvayMhJ0Q0nD/
 kBMcULAeJSxBGlLBsUcLneHOfYhQd3mHi+3AO40RXHfYiJ/HadsPEmSIK6u5QxD+p9eKXY6IBqfE+L
 IP1psTwbYV59r9PQclAq+evAa0bpzxtlHXIt9tH/hncy6Lj5fSYImp5GvMFdLZy3hgPcZtNfxmgDc+
 obFtz6z9+9R/5OaKbFf/gofv+/Djfw1H0V1zX8r1gzws1fTQGUnPqXQcuV704oKNT8k3Lcbbhnm72A
 SJgbW/jT7H98OM42FjJQn26g6MOdrL4bvCVj9htpoNZIEgv1l6U5wEWx9VhnfTnJjJKUO85mOXqGeo
 GT55odHIc+yy6nyZtlk8sCEVWb5Tc2hY9akaeF1HL6iYkT8OUGOETN4YqEs5F6B1h8xEUZf11F0lNI
 +KbxRgq9nb27IapqLzD2RGKRl6E4JJGG+63A2jxZ7mhp1HHddOTTGXnCqsvRQuY+jyhCLIx/XqpNz4
 MsA6SocfppaHs2Vse1Om19Xsbvl/yXqmw5PlOPcp7UO0IxWywKVhZp/9EgJVI8WdwRpps4fkDgDBtu
 MJ/leX8S5QAiwCCJxz/sekNnBmYC07ILgdMkmMLhgrHoZAwmoAbo/HaA65JV6Dk2LHyMtk4aYbfOJX
 jO3weNYZlRKf/xhplQ5j13g5oi/kTsfRzIpOO3HztKCljQIj2ssFvsNPWRzA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_014248_813699_DE0E989B 
X-CRM114-Status: UNSURE (   8.84  )
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

The QMP USB3/DP Combo PHY can work in 3 modes:
- DisplayPort Only
- USB3 Only
- USB3 + DisplayPort Combo mode

In order to switch between those modes, the PHY needs to receive
Type-C events, allow marking to the phy with the mode-switch
property in order to allow the PHY to Type-C events.

Reference usb-switch.yaml as a simpler way to allow the mode-switch
property instead of duplicating the property definition.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml     | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 2d0d7e9e6431..5358d3a6fde3 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -71,10 +71,8 @@ properties:
     description:
       See include/dt-bindings/phy/phy-qcom-qmp.h
 
-  orientation-switch:
-    description:
-      Flag the PHY as possible handler of USB Type-C orientation switching
-    type: boolean
+  mode-switch: true
+  orientation-switch: true
 
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
@@ -104,6 +102,7 @@ required:
   - "#phy-cells"
 
 allOf:
+  - $ref: /schemas/usb/usb-switch.yaml#
   - if:
       properties:
         compatible:

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
