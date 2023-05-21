Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9ACDCC77B7C
	for <linux-phy@archiver.kernel.org>; Sun, 21 May 2023 19:52:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Rnx6po+d05zBytFdbwfDIjxMfBDu5i0w240c0S7u88s=; b=hdWiX3n82sM2ON
	YlHZ39m3u0z4AEyn9ykWJI++wkPu5JDwXPQHmudK3Ygftc36AcXRt5DQAyvCGwponkvHf9WRGzTQZ
	3AxurfP0BmOulJVZnKCPVDkLfIyEa718TddViIhEBakx8l/bE86MOVbstkDZ/mbZRdnSiMzPJDreD
	XgLeNmHszpPkMl7I7hqiH2AI1WPKDg0R3Z9pDHOMp4j6RN6G1xqf1dFKbcHCpY6cdG25XCfHjGIB8
	ubNKijaIEg7sDsGutkCK1vmkVa2dq+mdb08V4etcPSnlmZiXS/ic1dvZh4CJ0UUB7JgsmIlCM7Zyr
	wm5n6ze4b/UjA8JFIz5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0p6B-004Y6z-0v;
	Sun, 21 May 2023 19:52:11 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0p68-004Y63-3C
	for linux-phy@lists.infradead.org;
	Sun, 21 May 2023 19:52:10 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-4f3bb61f860so1067206e87.3
        for <linux-phy@lists.infradead.org>; Sun, 21 May 2023 12:52:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684698722; x=1687290722;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gf5i76Fimoq5YKoDfPb3rMrH6QNnLwlkbdruP9SSt5Y=;
        b=ThdvYDCDAdjHiLl/yLo9UQkdplinxigU1NA0qxquQBYNnqCR2QyBfL1yCiP8v1RSIN
         MXIcqBjJJmKZBV23XOvKxhRTr12+NSYb9peggD6BXY/Fea/2wT0XMYZtbxwspdW6B6Cg
         yRLNQdMupSam7cF/YlRz50pkLovZQlAfqh9b5K8nqxMpFjK8Hx+n3v5OPxz7tAZBEIvX
         mB3Ji6kdOsHhvYo3iobYMunDWLB4+BBYqpmJJKojdvuYXTz4l9Yu1IRzce9EHMbdQnd2
         8LSxBM+aAh4bKlMQ3YGY9toiL6DMB/fGMhQFVbe5U5WdlwPEmKT86DsKrP6uUQvvMDFx
         i/CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684698722; x=1687290722;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gf5i76Fimoq5YKoDfPb3rMrH6QNnLwlkbdruP9SSt5Y=;
        b=bkdBJaNqI1lPnK86vWavL7cuTudK7Y6bRIWXrVEl7dzAyxa1fadaPFm3HIIEgsgKgE
         GNyHcIPP+kUZoNZP1xKdEaBq2QVwhFRzP5/M6tXQTCXRyb/OjqNHxtkZ5KDe6QCi5WSS
         jQCiDxjQWltf/y9H0rB2OmtPfS0JgiJidviOccRtS9OE3aK3fyzBWW60kN/P+Xrp5/dD
         5Ws1tAjjbvb8l4tGBVWO07NKSrVvqp5b8m7cj+OQd4y9/aBUBsJftkNpQ0HgTth+XQeo
         +rLMMMPn/JlthuLyEiZRGmtPilVSAG6ut2pCAcdIsEqiGd8IAoyEI+frH70wVoJzXAla
         BTfw==
X-Gm-Message-State: AC+VfDzcgRQyEJ68IL8+XpoV2RDwVGUZn6dx0pyayICC/0uYxthiEmlq
	Im/EvtDrcCq3hB9lE4nV4VmhQQ==
X-Google-Smtp-Source: ACHHUZ5M/2izSORC8u2EJNQD6GwQmFNrSUGCtL3QvvEKFvA7na48OSROhx12vi7o71pIBgkmrhE3HA==
X-Received: by 2002:ac2:5225:0:b0:4f2:455d:18bd with SMTP id i5-20020ac25225000000b004f2455d18bdmr2470689lfl.16.1684698721815;
        Sun, 21 May 2023 12:52:01 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id m11-20020a19520b000000b004f13f4ec267sm699430lfb.186.2023.05.21.12.52.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 May 2023 12:52:01 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Bhupesh Sharma <bhupesh.sharma@linaro.org>
Subject: [PATCH] dt-bindings: phy: qcom,qmp-usb: fix bindings error
Date: Sun, 21 May 2023 22:52:00 +0300
Message-Id: <20230521195200.11967-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_125209_032183_6B99C14D 
X-CRM114-Status: UNSURE (   6.56  )
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

Merge two allOf clauses, which sneaked in in two different patches.

/home/lumag/Projects/Qcomm/kernel/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml:109:1: found duplicate key "allOf" with value "[]" (original value: "[]")
/home/lumag/Projects/Qcomm/kernel/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml:109:1: [error] duplication of key "allOf" in mapping (key-duplicates)
/home/lumag/Projects/Qcomm/kernel/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml:109:1: found duplicate key "allOf" with value "[]" (original value: "[]")
/home/lumag/Projects/Qcomm/kernel/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml: ignoring, error parsing file

Fixes: 2daece5eb51e ("dt-bindings: phy: qcom,qmp-usb: Drop legacy bindings and move to newer one (SM6115 & QCM2290)")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   | 28 ++++---------------
 1 file changed, 5 insertions(+), 23 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
index 2c3e2ede6671..f99fbbcd68fb 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
@@ -84,29 +84,6 @@ allOf:
             - const: cfg_ahb
             - const: pipe
 
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,sa8775p-qmp-usb3-uni-phy
-              - qcom,sc8280xp-qmp-usb3-uni-phy
-    then:
-      properties:
-        clocks:
-          maxItems: 4
-        clock-names:
-          items:
-            - const: aux
-            - const: ref
-            - const: com_aux
-            - const: pipe
-      required:
-        - power-domains
-
-additionalProperties: false
-
-allOf:
   - if:
       properties:
         compatible:
@@ -130,6 +107,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,sa8775p-qmp-usb3-uni-phy
               - qcom,sc8280xp-qmp-usb3-uni-phy
     then:
       properties:
@@ -141,6 +119,10 @@ allOf:
             - const: ref
             - const: com_aux
             - const: pipe
+      required:
+        - power-domains
+
+additionalProperties: false
 
 examples:
   - |
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
