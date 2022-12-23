Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5397C46467
	for <linux-phy@archiver.kernel.org>; Fri, 23 Dec 2022 16:18:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N2a/3zMla7TI/Traa4UGV/DfYnhJV3Y61zuSro8WRek=; b=iatQs0emA/wLjs
	FlBLJ8oI+he8Pv4/rbGc963QUBmniizUZWlJYSp6XpbZ8ubzuP947yOJtOC+0G+1PY52yS9FIVmNq
	UcUC0Dw1sZN81j3VB70Upp4yCg0XiaEd5QfWDnCoFC1NqXQ5U6RbZy5Wtkgxr40PDNJJlk1qzZZ2u
	GTESeTkTDmapFuNZFQIgJYhKJlVgrx7YTVmBK61IG3oultf1BcDCZLoMT7I44qq4O8IBbhwSoJzT7
	kYasV0HruAKc3Lwrj8y654GFTO/hao89GE6NSctokREFLTwRenSahCNjU3sregdJK9dF4I2nQ1fPe
	LXFLlvwNk9RnJFmktYzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8kky-009tyT-T7; Fri, 23 Dec 2022 16:18:49 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8kkv-009tt5-BU
	for linux-phy@lists.infradead.org; Fri, 23 Dec 2022 16:18:47 +0000
Received: by mail-lf1-x12c.google.com with SMTP id p36so7592807lfa.12
        for <linux-phy@lists.infradead.org>; Fri, 23 Dec 2022 08:18:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ssdvzhuee2XQDm50/3Dh08z9mzFiguEgbpNiLUtPtQk=;
        b=UYjsne41U/8//XGrEZ6dq42DkOf4pl/H4mBwv95l7LC/HPOBxZBwIOHP512CSawS/V
         ZXRxPXvOBUKILtZWA6ZCHDGiTWcfnPi5EujmFDoS/QYeXBeVfd9qGhjN0xdyqARDD2h9
         WV4xJo5w7mJN3fK5yuHO7DCiAZh1cBTovHrXChNvE3TCggPvirfwVf/stzpztbef/jDR
         ox7SMWCthNCXopIH0fL+A93HX0+5N2zKKbKGXHEEwh3wS/HFJB7V/lfin8nsd2xAAK2p
         ZqNj2j1L4PYBVZYbqF1Y3cQ7ARbhV53zt3b2HXhYSrm+70WsNa9pUsC1Yux6sObo/tEQ
         tPyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ssdvzhuee2XQDm50/3Dh08z9mzFiguEgbpNiLUtPtQk=;
        b=7cnBMujin8WareydbDl4roy+4qTyRsDTLvZzjebWDvu7yQEKUM9LwhEfu3HPPE2f+0
         tYwa1WtBRmSIezHZnFK4UtEzBPvtJbeMUkM/DDJFY/UZl52t7Spe1TKhf+TaES2xjHif
         MoFjBYCgS/Zdx3mwzvC3F/KzZg2EyJcMtZJf9dgcBM2LTsijU72y6czF3a3J7N3h5Cjy
         1arejuewCkNMtO8RrV1g6fnJvUWHRlxedmfExNlrN5dyUwTm/6V/iqVjTqB7btHcuDCo
         vI3zGOa0HfqncTRItYVIvy5/gACwkM3/A5Xnk/QYLFLk+BcFZOfVpuZzv/hc6J4KNfBu
         y39w==
X-Gm-Message-State: AFqh2ko90RHUAkzD/uejNTw/j8RtXbmRvMkgDtmJQbM2A8o92uS+y6PD
	ge4vlSVjqQBU8fEKFyQi4MecZg==
X-Google-Smtp-Source: AMrXdXsWw512KHluUBDJzRaXuHifwQ7aus50gdJRaT8b2kbKkEG6+slseJlplBRP71EZhfMrDmokPQ==
X-Received: by 2002:a19:f80c:0:b0:4b5:853c:ed30 with SMTP id a12-20020a19f80c000000b004b5853ced30mr2676054lff.23.1671812321141;
        Fri, 23 Dec 2022 08:18:41 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id n18-20020a05651203f200b004b4f2a30e6csm581360lfq.0.2022.12.23.08.18.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Dec 2022 08:18:40 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/4] dt-bindings: phy: qcom,usb-snps-femto-v2: use fallback compatibles
Date: Fri, 23 Dec 2022 17:18:32 +0100
Message-Id: <20221223161835.112079-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221223_081845_452977_3D06CB82 
X-CRM114-Status: UNSURE (   8.33  )
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

Document SoC-specific compatibles with generic fallback (e.g.
qcom,usb-snps-hs-7nm-phy) already used in DTSI.  Add SoC-specific
compatibles for PHY on SDX55 and SDX65.

This disallows usage of the qcom,usb-snps-hs-5nm-phy and
qcom,usb-snps-hs-7nm-phy generic compatibles alone.  Do not touch
remaining two compatibles - qcom,usb-snps-femto-v2-phy and
qcom,sc8180x-usb-hs-phy - because there are no upstream users, so not
sure what was the intention for them.

This fixes warnings like:

  sa8295p-adp.dtb: phy@88e5000: compatible: 'oneOf' conditional failed, one must be fixed:
    ['qcom,sc8280xp-usb-hs-phy', 'qcom,usb-snps-hs-5nm-phy'] is too long
    'qcom,sc8280xp-usb-hs-phy' is not one of ['qcom,sm8150-usb-hs-phy', 'qcom,sm8250-usb-hs-phy', 'qcom,sm8350-usb-hs-phy', 'qcom,sm8450-usb-hs-phy']
    'qcom,usb-snps-hs-7nm-phy' was expected

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/phy/qcom,usb-snps-femto-v2.yaml  | 33 +++++++++++--------
 1 file changed, 20 insertions(+), 13 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
index 68e70961beb2..85d405e028b9 100644
--- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
@@ -14,18 +14,25 @@ description: |
 
 properties:
   compatible:
-    enum:
-      - qcom,usb-snps-hs-5nm-phy
-      - qcom,usb-snps-hs-7nm-phy
-      - qcom,sc7280-usb-hs-phy
-      - qcom,sc8180x-usb-hs-phy
-      - qcom,sc8280xp-usb-hs-phy
-      - qcom,sm6375-usb-hs-phy
-      - qcom,sm8150-usb-hs-phy
-      - qcom,sm8250-usb-hs-phy
-      - qcom,sm8350-usb-hs-phy
-      - qcom,sm8450-usb-hs-phy
-      - qcom,usb-snps-femto-v2-phy
+    oneOf:
+      - enum:
+          - qcom,sc8180x-usb-hs-phy
+          - qcom,usb-snps-femto-v2-phy
+      - items:
+          - enum:
+              - qcom,sc8280xp-usb-hs-phy
+          - const: qcom,usb-snps-hs-5nm-phy
+      - items:
+          - enum:
+              - qcom,sc7280-usb-hs-phy
+              - qcom,sdx55-usb-hs-phy
+              - qcom,sdx65-usb-hs-phy
+              - qcom,sm6375-usb-hs-phy
+              - qcom,sm8150-usb-hs-phy
+              - qcom,sm8250-usb-hs-phy
+              - qcom,sm8350-usb-hs-phy
+              - qcom,sm8450-usb-hs-phy
+          - const: qcom,usb-snps-hs-7nm-phy
 
   reg:
     maxItems: 1
@@ -160,7 +167,7 @@ examples:
     #include <dt-bindings/clock/qcom,rpmh.h>
     #include <dt-bindings/clock/qcom,gcc-sm8150.h>
     phy@88e2000 {
-        compatible = "qcom,sm8150-usb-hs-phy";
+        compatible = "qcom,sm8150-usb-hs-phy", "qcom,usb-snps-hs-7nm-phy";
         reg = <0x088e2000 0x400>;
         #phy-cells = <0>;
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
