Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D26CC4345F
	for <linux-phy@archiver.kernel.org>; Tue, 23 Apr 2024 20:50:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sYAV7oM17ufb/tEWgsxINKy80UDEb0GVrk7LNTaZD44=; b=SA7vFP1LBPiSA5
	au6h/vhoSODb/fu+5sNXOJ0BWJeUcAzFt+s5X9N2wqELbPMFngpcBDf5Z17Wfr4O5Zn9ul/dB2pQw
	NMyGN+p10Mx5+Gsnk3lHY5lqa8oRvxpylcffpYRMMOwjdk9U+qUAWuXY0gwYhJSee8h+1nLZrY/ce
	WdNXEyeQzCf0hqRo7o7B2XVoMKmD+348m40cLlWl8czTQ8N7ZookIxvsiIrQynZA2ppnZjrU6WwXH
	ufP9Iy/y038+abW/UDZSDrl0jQv+IZGmo6/EXFoGzCNW5NdgeeuhHg3UMmvtiHYwW5AGci1iRuFx7
	28ShhJYM4ecngVWocnfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzN65-00000001Ss0-2AnM;
	Tue, 23 Apr 2024 20:50:37 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzN5n-00000001Sf2-1wgd
	for linux-phy@lists.infradead.org;
	Tue, 23 Apr 2024 20:50:20 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-4196c62bb4eso34083145e9.2
        for <linux-phy@lists.infradead.org>; Tue, 23 Apr 2024 13:50:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713905417; x=1714510217; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7YDoEtxb3WAccXiFYU++BdYy9LiGKO7VakM6fMKLsd0=;
        b=fNEzyS8jvmHaTs88DZ4ZSfoPEeiM5sBBQN6grGi3uLvrj6lfS+i3ai8ddMkOCIuZfp
         CeMwPxsSfs0xoDeUSpyvPKf/c55mVPeOjd3njZzarEb/h6kiA4lnrrqZKe9vhBFlQJpf
         RTIECH3gtE7sHqWBExWVMXcB8ctcNnGwrStkodWQiKlVE3aqGfYwBic5l9TdqpqFaaBv
         oK7h33hcYCc0EuWZUYj56JZcqnVIJwdFOKFxHKy0tkeyOcu4+GoyL2mNxQ/7HPwiCBsA
         k8OVgspqARK0NWZQL/dwP5/owrK/PnOfgjCyFEPScbYCaNXPS2CRSyCUtDMGzm7SIVdA
         2wXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713905417; x=1714510217;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7YDoEtxb3WAccXiFYU++BdYy9LiGKO7VakM6fMKLsd0=;
        b=UKasdwMGI0clofQXaa9rldBfJe8tzPnqVRyOrKTaZl10hPEEEpAHjZIYAfZlo+mO6x
         4OYlq8ziOaMuHlT1xA/nFbcTp2/aKnstxSn9t/U9vUADo8tTYaKViyiWkjbY8dE9SgWJ
         aRuIf0CPAZcj3NC3GupwmlevOAJ2rkC/DfVvCducnXiAmVU5pSGihEOturz1L3PxIFx3
         sVEU4cloPXf+8saiE81H+onVCVq3jKLsfqAdQ29zgbjwUSFZyFrZuSGwP+37Q1s0b9cM
         STC5N8IFDScihi5xWeoXo9sa1eC97Aqh1C2f4eJk8cDX9hiljSPLd4XMYyE+uN6/12Uu
         ArSg==
X-Forwarded-Encrypted: i=1; AJvYcCW9ZY56JwH3Y4Op+aNolgK5kb6MOV0OaoqX6/qu1uLeE77bLubACgncPW6EWNcmkzMCFtTr7oM4D8zLRSfRyxUZOKJWb3dtv9eLLzc8eg==
X-Gm-Message-State: AOJu0Yx9cOvD5Y3J9+0MU7XemTFP1kEHA7j9yuoonEyuSrZpZWVEYtOb
	lofIjSvZgFO5Svvg6up1ebMR/LnrLZI/qy53uAFZ6D4whmCFDXMI8JDz3O4fhFY=
X-Google-Smtp-Source: AGHT+IG67KylFXiAI0/BsAFLR1B8wx1LOJwe93ySSY8NQpxdP8gGTGPG7VdGHrq1rWe4qptsIIR9aA==
X-Received: by 2002:a05:600c:310a:b0:418:5e80:a6fa with SMTP id g10-20020a05600c310a00b004185e80a6famr337401wmo.14.1713905417453;
        Tue, 23 Apr 2024 13:50:17 -0700 (PDT)
Received: from gpeter-l.lan ([2a0d:3344:2e8:8510:4269:2542:5a09:9ca1])
        by smtp.gmail.com with ESMTPSA id bg5-20020a05600c3c8500b00419f419236fsm13065443wmb.41.2024.04.23.13.50.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 13:50:17 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	alim.akhtar@samsung.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	s.nawrocki@samsung.com,
	cw00.choi@samsung.com,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com,
	James.Bottomley@HansenPartnership.com,
	ebiggers@kernel.org
Cc: linux-scsi@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH v2 03/14] dt-bindings: ufs: exynos-ufs: Add gs101 compatible
Date: Tue, 23 Apr 2024 21:49:55 +0100
Message-ID: <20240423205006.1785138-4-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.44.0.769.g3c40516874-goog
In-Reply-To: <20240423205006.1785138-1-peter.griffin@linaro.org>
References: <20240423205006.1785138-1-peter.griffin@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_135019_550131_72732F69 
X-CRM114-Status: UNSURE (   8.26  )
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

Add dedicated google,gs101-ufs compatible for Google Tensor gs101
SoC.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 .../bindings/ufs/samsung,exynos-ufs.yaml      | 38 +++++++++++++++++--
 1 file changed, 35 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml b/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
index b2b509b3944d..1179527d29d1 100644
--- a/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
+++ b/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
@@ -12,12 +12,10 @@ maintainers:
 description: |
   Each Samsung UFS host controller instance should have its own node.
 
-allOf:
-  - $ref: ufs-common.yaml
-
 properties:
   compatible:
     enum:
+      - google,gs101-ufs
       - samsung,exynos7-ufs
       - samsung,exynosautov9-ufs
       - samsung,exynosautov9-ufs-vh
@@ -38,14 +36,24 @@ properties:
       - const: ufsp
 
   clocks:
+    minItems: 2
     items:
       - description: ufs link core clock
       - description: unipro main clock
+      - description: fmp clock
+      - description: ufs aclk clock
+      - description: ufs pclk clock
+      - description: sysreg clock
 
   clock-names:
+    minItems: 2
     items:
       - const: core_clk
       - const: sclk_unipro_main
+      - const: fmp
+      - const: ufs_aclk
+      - const: ufs_pclk
+      - const: sysreg
 
   phys:
     maxItems: 1
@@ -72,6 +80,30 @@ required:
   - clocks
   - clock-names
 
+allOf:
+  - $ref: ufs-common.yaml
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: google,gs101-ufs
+
+    then:
+      properties:
+        clocks:
+          minItems: 6
+
+        clock-names:
+          minItems: 6
+
+    else:
+      properties:
+        clocks:
+          maxItems: 2
+
+        clock-names:
+          maxItems: 2
+
 unevaluatedProperties: false
 
 examples:
-- 
2.44.0.769.g3c40516874-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
