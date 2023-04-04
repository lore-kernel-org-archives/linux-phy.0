Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC2BAC761A6
	for <linux-phy@archiver.kernel.org>; Tue,  4 Apr 2023 19:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g2T1mSd7PmvezQdUSd17BPzt0a+mu1tPtFrmDn9FMsI=; b=dkgw7UYM5XWxq0
	LaXB+s0IMt2yUjmFJcl7xCqJlUrIWKuCEwvQoPjSbXHV6L1E8S/9LFo7+CutFiJuCKoXUI4YbOls6
	dvxrzLelWVmqQvNs9VGBR9XJVnNITs9A0g/iwHQqxxd0JoA+McqTWFpoYYairsWJGtjDee1kY2HvU
	KS/0WEFOw2Fe6mdFGuwA1XmxWwjq+p1d5L+7TqWGYgoCUI/CnYIHFAbHxs28Z+DRHRD+HL305a6ZQ
	gDnouyroFxy3L+GAdiuEl0QYmc+BQkyZWULB7jNjuyy94cIoEGTz25qGWHKmB/FwAeoCTsGN5Hdqj
	sZ7t1Iv3QQKq2shaTyFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjluJ-002Z32-1E;
	Tue, 04 Apr 2023 19:01:27 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjluG-002YzH-1a
	for linux-phy@lists.infradead.org;
	Tue, 04 Apr 2023 19:01:25 +0000
Received: by mail-ed1-x52c.google.com with SMTP id t10so134516015edd.12
        for <linux-phy@lists.infradead.org>; Tue, 04 Apr 2023 12:01:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680634884;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MJfzhfU8C0LMQ39+xZRczmG3MwdDxjd8/cU7F3h/DO0=;
        b=jYR2XcGOEiEkZeZ07K1e/e/Qf0RznZdzsoqGXWio0xrONB7hm7CO6Tsyfpz3VNooVQ
         T8PV4pSSMnefFFRXlDbxPEkt1sCBFsyHsRKkbatLPL3K55IqxXx3pGDYwmdL/B4K0I96
         7F4XgmZOOVsugw0ci+LNfITqtOZ+SylE/x22EB59PNn43ubCun+ceSFWsNvsGMStN6cc
         GMYAMnv74zEKpvW2jQrGglVIel6pFlz/OjKMdjicd6+IwBY16R1/KXnYykHjgVDj28QW
         3nTYb6cc1QplLsxheS6Jswy3N2afIIMR/So/455tDqFBZtv9c+ZrPhNI3RFLNMLo9Y65
         P07w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680634884;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MJfzhfU8C0LMQ39+xZRczmG3MwdDxjd8/cU7F3h/DO0=;
        b=VuQKRMwM4KMnhx3iBgKVsnkKmEwtwWUlPEyrh2iixsDX5YMn2aUx/2gt5Vd5asVpQJ
         zpZj2tQea3ZFdj2dCIZCeOgfiZs5X3iCHtYCYm/x8IZ7Qb+tRKd7eNP8T2GTHcmLEedY
         EqEP8VjrvbDjLIH//yzy+vsO7ewpajvDQBlDhAAxfDdREuAvW3e0wfV5mHnpipJbtjvH
         JXS1sAM2Mby7fmGWmGIBpZu7qkPz6zcnM2ICNJMDHPX8pcZvgiQ7FpZYy7B7ojVjDb8c
         cCEMN2/8xo3yYDSepiFOO2UKOyzL69fqDFqILU6R1/z5k3KLTUY/LZSMaD2sMUPsG2f/
         a/4Q==
X-Gm-Message-State: AAQBX9e6ssvVp+n1EWGqalecYU15r8t7mWV5XE52ZdKRK3MC1slCYMng
	koJo59sLSt7uJR7tgnnrtag5Ew==
X-Google-Smtp-Source: AKy350acHNH4A4LEG3R+ql8VXDXLwRtEb9G1ykKetLMqq9tM4ME2+7+RzIaR442wiKJUZcJlfBlKcw==
X-Received: by 2002:a17:906:430a:b0:914:4277:f3e1 with SMTP id j10-20020a170906430a00b009144277f3e1mr585067ejm.53.1680634883969;
        Tue, 04 Apr 2023 12:01:23 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:7467:56f4:40b7:cba8])
        by smtp.gmail.com with ESMTPSA id dx21-20020a170906a85500b008d044ede804sm6257079ejb.163.2023.04.04.12.01.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Apr 2023 12:01:23 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Swapnil Jakhade <sjakhade@cadence.com>,
	Yuti Amonkar <yamonkar@cadence.com>,
	Abraham I <kishon@ti.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 5/5] dt-bindings: phy: ti,phy-j721e-wiz: document clock-output-names
Date: Tue,  4 Apr 2023 21:01:15 +0200
Message-Id: <20230404190115.546973-5-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230404190115.546973-1-krzysztof.kozlowski@linaro.org>
References: <20230404190115.546973-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_120124_558400_532419AC 
X-CRM114-Status: UNSURE (   8.53  )
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

Document the clock-output-names property of clock children, even though
the nodes are actually deprecated, to fix dtbs_check warnings like:

  k3-j7200-common-proc-board.dtb: wiz@5060000: refclk-dig: 'clock-output-names' does not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/phy/ti,phy-j721e-wiz.yaml        | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
index 4f3841e6a307..651f23580930 100644
--- a/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
+++ b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
@@ -89,6 +89,9 @@ properties:
       "#clock-cells":
         const: 0
 
+      clock-output-names:
+        maxItems: 1
+
       assigned-clocks:
         maxItems: 1
 
@@ -122,6 +125,9 @@ patternProperties:
       "#clock-cells":
         const: 0
 
+      clock-output-names:
+        maxItems: 1
+
       assigned-clocks:
         maxItems: 1
 
@@ -150,6 +156,9 @@ patternProperties:
       "#clock-cells":
         const: 0
 
+      clock-output-names:
+        maxItems: 1
+
     required:
       - clocks
       - "#clock-cells"
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
