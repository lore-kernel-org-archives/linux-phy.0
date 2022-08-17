Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11414C32792
	for <linux-phy@archiver.kernel.org>; Wed, 17 Aug 2022 14:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pz98U6Te72V104ZFkyC1lScuVaOUa4cjqOkrTWtc5nY=; b=O+qpzfzKJgdlAV
	h1QsFw/YX+7OnseWpMt7M/x09yURbtAuc9NARP8/Txf29646wQtTLnIGCK3ODtovP8FHLClZg98fq
	Xj036mkUpDFDUwfJR1pbZjbqZYMe8HgQqN71oQsBBbQERQFTu1Wk7Tgke6+vKnilZWjq0txRjGZec
	bN+PSxUrBLYUEB8kKtCKxT4r876tv1WSfXWF96EhZH++RPNkGXRhjLvb2RqTdHEr3Q9TFG8xk54r/
	hL2SKy6LH8FboM9OL6l1Z+9bUUf/KLWMTDPeupIL8OXJhP5XEPVj3XQkI/ACb00We89jrHp+759M5
	1/5x1YO7pg8d1rdIF9lA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOJwi-002nZA-7Z; Wed, 17 Aug 2022 14:23:00 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOJwf-002nT8-Bq
	for linux-phy@lists.infradead.org; Wed, 17 Aug 2022 14:22:59 +0000
Received: by mail-lf1-x135.google.com with SMTP id s7so602118lfp.8
        for <linux-phy@lists.infradead.org>; Wed, 17 Aug 2022 07:22:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=Ts76PcyKw0jM6XarGajWHwsIAiV4DTWPpPPo0AWZtJA=;
        b=JOJbWVLtHO6s9Pc8HcJChhshshhY2T/4/MCUDhf62a1FLjYupcZU4YieZWuff3QUQe
         Bmo0/osTc77ZNgs2QpSJ/S1IZwE0FFgGMork/YRXtt0HXbvNAc2oKtrarCpQcTHhRbBN
         D8qpKos+7Rlv+L1SnE5uF1nlfkG27KdJLiPgyDruh48s8nP7qfekstOKH4inFZUl4VnL
         fjNdITKaE2d8NE6egykSQK+x6FklOvlT/bKuSrN43tASRXm7eJwdrFK13Ut38I9Z8cBo
         MfL2onHGHoYx8kkYpPIA552aF+WAulZML5pi8jS7IuhYExm0MSnI1zqu2cX1RTLBa4Jp
         KPJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=Ts76PcyKw0jM6XarGajWHwsIAiV4DTWPpPPo0AWZtJA=;
        b=wcxZ6w1a4NDoqIkilwRcrEEfDPuThUOlKraBdUseYptSKPCNsq3rcOPyek3uZPDECL
         3GhR/hykyMtvgpodfOqCOW1J6wZsR0gmw14jmJnLXbd0hBXrc+FfaEBSRsem5u+IV2gn
         50FoSrLn+9rE3woTF3D2cuMFSO2uzGlOxmHqeeYe3feepYb6uAhcxTU3nkDf0pQu+kgJ
         DGr+6SQ/uZgOsryQZO6C6/wy6YkFwN7qmlRQ+RaZduUUnxgc2neqllgXKkJ6jdSWFQm8
         1MlYqsDxG38Q3/9qbmOa3Lv0OnMlU9xuWASDxMBCoBM9oL2GVqzYfiAuPW+CGd3IotaL
         HVew==
X-Gm-Message-State: ACgBeo3leO9T1OsTKQ9QmyCEcxjfCJzWdtRjliRZydzM7F1mKq996ntO
	GWWhINkLp73ixJOXfjY69emapw==
X-Google-Smtp-Source: AA6agR4qGhm3oKo5ILBcJJjEibUlASlIQgN2sJ66ZGB2EpL2gJQJVh0eh9J0qhasVYm0uW5uTG0XAA==
X-Received: by 2002:a05:6512:ba4:b0:48a:f185:db17 with SMTP id b36-20020a0565120ba400b0048af185db17mr8107080lfv.107.1660746173606;
        Wed, 17 Aug 2022 07:22:53 -0700 (PDT)
Received: from krzk-bin.. (d15l54h48cw7vbh-qr4-4.rev.dnainternet.fi. [2001:14bb:ae:539c:1b1c:14b7:109b:ed76])
        by smtp.gmail.com with ESMTPSA id u1-20020ac258c1000000b0047f7722b73csm1704647lfo.142.2022.08.17.07.22.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Aug 2022 07:22:53 -0700 (PDT)
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
Subject: [PATCH 2/4] dt-bindings: phy: hisilicon,hi3670-usb3: simplify example
Date: Wed, 17 Aug 2022 17:22:44 +0300
Message-Id: <20220817142246.828762-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220817142246.828762-1-krzysztof.kozlowski@linaro.org>
References: <20220817142246.828762-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220817_072257_429791_20C2934E 
X-CRM114-Status: UNSURE (   9.47  )
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
 .../bindings/phy/hisilicon,hi3670-usb3.yaml   | 26 ++++++-------------
 1 file changed, 8 insertions(+), 18 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/hisilicon,hi3670-usb3.yaml b/Documentation/devicetree/bindings/phy/hisilicon,hi3670-usb3.yaml
index ebd78acfe2de..1cb00dbcd4c5 100644
--- a/Documentation/devicetree/bindings/phy/hisilicon,hi3670-usb3.yaml
+++ b/Documentation/devicetree/bindings/phy/hisilicon,hi3670-usb3.yaml
@@ -52,22 +52,12 @@ additionalProperties: false
 
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
-        usb_phy {
-          compatible = "hisilicon,hi3670-usb-phy";
-          #phy-cells = <0>;
-          hisilicon,pericrg-syscon = <&crg_ctrl>;
-          hisilicon,pctrl-syscon = <&pctrl>;
-          hisilicon,sctrl-syscon = <&sctrl>;
-          hisilicon,eye-diagram-param = <0xfdfee4>;
-          hisilicon,tx-vboost-lvl = <0x5>;
-        };
-      };
+    usb-phy {
+        compatible = "hisilicon,hi3670-usb-phy";
+        #phy-cells = <0>;
+        hisilicon,pericrg-syscon = <&crg_ctrl>;
+        hisilicon,pctrl-syscon = <&pctrl>;
+        hisilicon,sctrl-syscon = <&sctrl>;
+        hisilicon,eye-diagram-param = <0xfdfee4>;
+        hisilicon,tx-vboost-lvl = <0x5>;
     };
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
