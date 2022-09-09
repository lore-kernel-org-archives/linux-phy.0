Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34382C6FA8D
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 13:20:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W6lOcg6YZ5bl4+Af+9NLVU9T4i7RQgAYcyGWYIjtKJ4=; b=bAO6Kaa4TYtH+U
	q+teyi0ErSno+QgBbNN1UOQhJ9cTR/6QvhKRHaWMAGPRbnLSn3tzvlXiozAXgJ6dq0omeu7ggxheG
	g6Sx4WTP8DztJKSAxps7Bb1ydP0Jn6dPo7Cd8Ub7pk3HYJ/irI1v56E+bCG3VdszHUStJr+x6r26R
	htuZCtKlRSqk5IxjtkGJKrhmQ24dix9mBbBVI2S4ojuhhEGPBlx4nrx6QpUuy4yIQw/FxbKbosceg
	YCLETu3cHl14z0wnMOlNjX6QHa0SIPw9X8AMNK3QihG5pr4RM0vdDC71PYJOTsqTm2dd0c7kaqGB9
	2ypl/BnXuItvUnyRkB+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWdve-00GI9n-Jr; Fri, 09 Sep 2022 13:20:18 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWdva-00GI6c-KY
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 13:20:15 +0000
Received: by mail-lj1-x22d.google.com with SMTP id z23so1818159ljk.1
        for <linux-phy@lists.infradead.org>; Fri, 09 Sep 2022 06:20:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=URKPpDds5enTnYg0WS+nZGk6NjU5/c00VgWLv5nmEVA=;
        b=HKkJ9rW5PnwQiM3dw7mtrpORHJYImFXaBICEiLN1LfiYVGpvQHelBgCNHQQurngZsu
         WnciOru/rhuM56JpATb0poxpENrdTEbEQA+SSpaqhXPKcfEtYzNXq9EHREOwznOySbNe
         2Apjht30smLogewy+m8BaoRirYJEdGRom/lhBuXtYcmVWGormIAYp1dcHdcCxEnBhVxS
         QeHiJM2yQr6sDVyNVKkMqsXpgfUHJ88MEOSxhxRScbWwMeyYTBoKks1J0MJ3dC0YcAy7
         TtmeDcmSWOOIJQDYV/QtFN1E7Labm6gb0jTNpUTQ8+4Af9IhAlufO7v+F8qrJZGyv2RX
         C2sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=URKPpDds5enTnYg0WS+nZGk6NjU5/c00VgWLv5nmEVA=;
        b=hR6wMUm3tjesIbiIZ2wpv4ZRqndqibkYwbKQdzD7pvw0ncOwONZ7DMUoH7j7SF/d+b
         RG2Fp3EPAtOp8OJ2E2XwuY+QGdLEkXTVWfVPBDsIABy3DUh9VPA67zYyz6XIEB2UXGsv
         UMsNIfZJ3QJqzzblE/gbvp8OIxQqWCTQuihosFMSxq+zpttYhfWWHulPdMtEKEtxEYLw
         nd9VJWcmkQszbJArlZwgLocMTYNG5MWPPAnVoim9cw3YiFFK9HIaROWOlvXheASAN93R
         Mu3AYGkiHS2Qi9BW+fEYXdjn+dQl0zaiFFFjKm+awaVHEbZQwrdovCx78ktrr/DJvqhP
         Gb8A==
X-Gm-Message-State: ACgBeo1YSjxYRlfAx0KDQfPTNd/IOTzQy9b0bLztMOl677Jnzqn1/QeB
	+g9t+pqTaK70b94bAQ9BZr9tjw==
X-Google-Smtp-Source: AA6agR5tgqajbgGaVDceogKS9M6kNnje2qJMidQw7ZzXcD03CMIRiFC2fcF9PpWncaMH5QNL/BLwWQ==
X-Received: by 2002:a2e:b8d5:0:b0:25f:e94d:10a2 with SMTP id s21-20020a2eb8d5000000b0025fe94d10a2mr4231981ljp.274.1662729612376;
        Fri, 09 Sep 2022 06:20:12 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id v10-20020a056512348a00b00498ff4ae746sm71729lfr.294.2022.09.09.06.20.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Sep 2022 06:20:11 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Vinod Koul <vkoul@kernel.org>,
	linux-phy@lists.infradead.org,
	Kishon Vijay Abraham I <kishon@ti.com>
Subject: [PATCH 1/6] dt-bindings: phy: qcom,hdmi-phy-other: use pxo clock
Date: Fri,  9 Sep 2022 16:20:05 +0300
Message-Id: <20220909132010.3814817-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220909132010.3814817-1-dmitry.baryshkov@linaro.org>
References: <20220909132010.3814817-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_062014_695290_B0845A2D 
X-CRM114-Status: UNSURE (   8.40  )
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

Add pxo clock to the 8960 bindings (used by the HDMI PLL)

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../bindings/phy/qcom,hdmi-phy-other.yaml     | 23 ++++++++++++++++---
 1 file changed, 20 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-other.yaml b/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-other.yaml
index fdb277edebeb..2c21e120ff8d 100644
--- a/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-other.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-other.yaml
@@ -53,7 +53,6 @@ allOf:
           contains:
             enum:
               - qcom,hdmi-phy-8660
-              - qcom,hdmi-phy-8960
     then:
       properties:
         clocks:
@@ -63,6 +62,24 @@ allOf:
             - const: slave_iface
         vddio-supply: false
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,hdmi-phy-8960
+    then:
+      properties:
+        clocks:
+          minItems: 1
+          maxItems: 2
+        clock-names:
+          minItems: 1
+          items:
+            - const: slave_iface
+            - const: pxo
+        vddio-supply: false
+
   - if:
       properties:
         compatible:
@@ -98,7 +115,7 @@ examples:
             <0x4a00500 0x100>;
       #phy-cells = <0>;
       power-domains = <&mmcc 1>;
-      clock-names = "slave_iface";
-      clocks = <&clk 21>;
+      clock-names = "slave_iface", "pxo";
+      clocks = <&clk 21>, <&pxo_board>;
       core-vdda-supply = <&pm8921_hdmi_mvs>;
     };
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
