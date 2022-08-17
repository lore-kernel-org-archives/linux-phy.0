Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E9F0C32793
	for <linux-phy@archiver.kernel.org>; Wed, 17 Aug 2022 14:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gVKsntoSt9BlQYwSZlMk+zlYbUCYSxOYayr5bGKWvjs=; b=kfX33UBb9EisKz
	jMGnNC882nWVPrYgHiEdTt+J6ECS6sk7ZRCdRnkzTLr6WRd4s57vRuw94/ubPLEehQllApxdJmwZL
	5DjB5ohINXWw5nfaXuXJjleOtyyIFtfl78A/5go3hGnvceowFZflYKPJtLlGLcsv3Lq+LwIKNXHyn
	cS4yObFRkTGg7UyvgRDnzlplrLNUTdxPiFGw6FNXUDbQr/TSUAFVMWzdD2KOdcxHVYU+cEZBC4CvC
	p3CBXL9GXOmaUtf24OjoJ+jn5oPf8ydViJwYhFPMPYDMpkyl7DKvQebM3z8O+UQDDBNOXf5MZuwXQ
	d/9u2E3GeMobj9ebLj7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOJwg-002nWy-Ks; Wed, 17 Aug 2022 14:22:58 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOJwd-002nSZ-JH
	for linux-phy@lists.infradead.org; Wed, 17 Aug 2022 14:22:57 +0000
Received: by mail-lf1-x12e.google.com with SMTP id s7so602008lfp.8
        for <linux-phy@lists.infradead.org>; Wed, 17 Aug 2022 07:22:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=9GC5bJ+m1U21wFCtiN8Hm7wauILLxWrJ9sFq+9fk+k0=;
        b=o8C3QM3Wu2kpOjLMF8uXobDHbQB4PKvFqLSry295hn20lPNVHWLgajWCgojrARkC5g
         BIIWNiFn4Xn9zHRsChY8osAeReyp7yCUDhjn8ahzlgy9LdImCgC1piAELmqnynX8qpG+
         aguWks3BSQGJQWjVlESm9WpIlGYpXFgA2OW3XG7jKfYckz9TFxd6RC6qAylzC59zR3PW
         tadzknNyfsWjM4aVfqZcNKQk7J7sR5rSrjM3bzg0o7Foo3SLOpePtX9KNiTcB0/fE1ZM
         bUncQNm049DKkKoeeGL5L/jrEMK87k3L4c0u5PA6Hcf4zK8YY+oILzmGrEexxttqUXwm
         1q2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=9GC5bJ+m1U21wFCtiN8Hm7wauILLxWrJ9sFq+9fk+k0=;
        b=k1PtwyOB/SDxEqbocoFeOSluUM2RYB2rc+VYtV0AyVqhuRPqsVbnIG90zjzeboPiLi
         f1Zb5M0R6+vvoZWOb9Z+nsTnFmHK7IWl7XrKsIlMcg8E5Z2oJZm/fCDb0L950Go0+apV
         ziLD45XiYnyw9oIbtw1MlLEKEAJjo+PX9IbS3O8Xd98JX8sq2LxFOKpny2HyjLoe11u5
         NBPG61/sNBIyLAEc330xVNfuQcqnQuWL9gwHmjBK4k/jqstrIwoFJ+YDaERRDbUFZmKo
         myL14LozZy1BDCXzQBXK6g0yzjgiC3cvCTRM5iDVuzR8e9RwbPjGnH/b4vun9TCIshNt
         5xNQ==
X-Gm-Message-State: ACgBeo3EEj8q4kglvJSbS1hBZbL6oDCwKxKr95c1LOO0vu0EenW4FHBl
	JuNaOjhIi1VAVqtHIrPAzlAU2w==
X-Google-Smtp-Source: AA6agR5cywzI8moCKPQfkI/f7EQoEdiKTJvRfYGYEKNF0cQLrCqZdnncv8cDcoXap/UvaZ10NS79Jg==
X-Received: by 2002:a05:6512:1584:b0:481:31e4:1489 with SMTP id bp4-20020a056512158400b0048131e41489mr8455124lfb.509.1660746171888;
        Wed, 17 Aug 2022 07:22:51 -0700 (PDT)
Received: from krzk-bin.. (d15l54h48cw7vbh-qr4-4.rev.dnainternet.fi. [2001:14bb:ae:539c:1b1c:14b7:109b:ed76])
        by smtp.gmail.com with ESMTPSA id u1-20020ac258c1000000b0047f7722b73csm1704647lfo.142.2022.08.17.07.22.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Aug 2022 07:22:51 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Yu Chen <chenyu56@huawei.com>,
	Binghui Wang <wangbinghui@hisilicon.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	Carvalho Chehab <mchehab+huawei@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	linux-remoteproc@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/4] dt-bindings: phy: hisilicon,hi3660-usb3: simplify example
Date: Wed, 17 Aug 2022 17:22:43 +0300
Message-Id: <20220817142246.828762-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220817142246.828762-1-krzysztof.kozlowski@linaro.org>
References: <20220817142246.828762-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220817_072255_662704_E507C558 
X-CRM114-Status: UNSURE (   9.71  )
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

syscon and simple-mfd cannot be used without device specific compatible,
so simplify the example to fix this.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/phy/hisilicon,hi3660-usb3.yaml   | 22 +++++--------------
 1 file changed, 6 insertions(+), 16 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/hisilicon,hi3660-usb3.yaml b/Documentation/devicetree/bindings/phy/hisilicon,hi3660-usb3.yaml
index c2e073e26190..20b79e2e8b82 100644
--- a/Documentation/devicetree/bindings/phy/hisilicon,hi3660-usb3.yaml
+++ b/Documentation/devicetree/bindings/phy/hisilicon,hi3660-usb3.yaml
@@ -41,20 +41,10 @@ additionalProperties: false
 
 examples:
   - |
-    bus {
-      #address-cells = <2>;
-      #size-cells = <2>;
-
-      usb3_otg_bc: usb3_otg_bc@ff200000 {
-        compatible = "syscon", "simple-mfd";
-        reg = <0x0 0xff200000 0x0 0x1000>;
-
-        usb-phy {
-          compatible = "hisilicon,hi3660-usb-phy";
-          #phy-cells = <0>;
-          hisilicon,pericrg-syscon = <&crg_ctrl>;
-          hisilicon,pctrl-syscon = <&pctrl>;
-          hisilicon,eye-diagram-param = <0x22466e4>;
-        };
-      };
+    usb-phy {
+        compatible = "hisilicon,hi3660-usb-phy";
+        #phy-cells = <0>;
+        hisilicon,pericrg-syscon = <&crg_ctrl>;
+        hisilicon,pctrl-syscon = <&pctrl>;
+        hisilicon,eye-diagram-param = <0x22466e4>;
     };
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
