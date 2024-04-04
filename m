Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37815CD129A
	for <linux-phy@archiver.kernel.org>; Thu,  4 Apr 2024 12:26:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8sWOa/QAq625XVlgKpums6K5HiDqVIcxv3yLASUt//c=; b=vBJbUFQV2zo6p5
	QS1pJ6YFmR+IEJKW4IlPLSJDjm9XY8lT/RaS/Av0yHVshEi3R7Hz895vvnVRuBs2q51upmTwKSUg0
	eVvy1DuStfaRnvsyc1yesiuMN/wyFq5tp8GRF9uZ5cSfHFbcetIG3y7IiKanARd7zqp1kpj2aWthP
	i1Bqs/FImkwl1wdIv25HwxxCwlkSpZsn1mKms+BX2ZVSvJxSop9Fmj8i/9f4zRMtew3xO/O4sPwRn
	KGSFh/7G80gGTyCTCyoMPu5q+0w2weXF0s/M+MW47cZACVs0/RjrOC518/suNvDGyWEV8zkYr3SW7
	yfwILZOGbpHb0gxEzR6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsMAg-00000002aca-2N1A;
	Thu, 04 Apr 2024 12:26:22 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsMAd-00000002aa6-3wZE
	for linux-phy@lists.infradead.org;
	Thu, 04 Apr 2024 12:26:21 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-516c97ddcd1so745239e87.2
        for <linux-phy@lists.infradead.org>; Thu, 04 Apr 2024 05:26:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712233577; x=1712838377; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d249q8OLaMbSIVMmFzjKWfEr9wukeZUtFSKBwYI0cD4=;
        b=xIcdE5iz9XnEQI2j2sK3oocHsYxspobfJk3mQo9k9Ok18hB7K0pHLvccGVN5akXWF7
         r2ipTXOL0OmTK1WFZtqEAW6HPVA9R3N6bwo9LHsm6uwwUcBCMPUla/VZaE/jiuIx+1qZ
         Pk355H711dbgRldbdPAkmNf1jj9JcyiYzRmITk8su0+erosX6hxiG0mJf/FD7Kzyk8RV
         FSbydcicrqSquZvnvPgwnUHanagLN6fAvws944sX1EZnDm/Qab0Ca4zGg3yV2uubWwkv
         fOWziSObJH8Pos00vrIV0M0s6JBSnX/idzNWG7oVYCkMzWdLOI/Cy3CYCBAX/6nKysFV
         DHcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712233577; x=1712838377;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d249q8OLaMbSIVMmFzjKWfEr9wukeZUtFSKBwYI0cD4=;
        b=kpzEIlZevjow6MwTxvPs8CKFzfhIrSA6okLPMNhJTGWmMlejrewgSp00cJY1G3g1Rh
         0Gxxt2lChyM4h7aclj6scJGvHQF1dNMrAJXi27mhcAw5Cq+bfMiTf/e5UdqhkxwVIwiA
         HMk5PNmtMoPkUwq4E0T0RpeTFrio1ak2yHFK6620et203gwmX7IchZ1Z74m7awh121/e
         NClKBdkJQdjW58FcsG6Tm23pC1So5gzejPq6U0DhEUbm1Nz+K5qYbFZnpvJJMYnJ8XO2
         voWxBY7CpLxy2b7KaQGEijlNe1O8gNTYxCcM0rJwMTvCMeV9Wvh6ytXqaroJCy6FbtcP
         WGlA==
X-Forwarded-Encrypted: i=1; AJvYcCUNGKMC+RbK+LDK1I/+O54wugX3EHy8HXCnlDUnFU5vGj3CsWA7oSD0+vU54pg4xGTgeXvZEuEfIzgiYU9r89hhDpewP2QEZeoCtHuUBg==
X-Gm-Message-State: AOJu0YypHrcSIvW9kBKh3b/RxWZrXoSdh+CYeaUGoZWawKG2NbFUiYBb
	GcwhQcf28JWElIzYQlWkaEpuJr8zdgLc0Th8aaRKX8kQ95UHfQZ4l2hkyY43MU4=
X-Google-Smtp-Source: AGHT+IHKUb9uxI3dVCBnRZqZdhwAN2Y0OAl2yQXHesVhm5X+TGFWVXPaqh+/KMFU4TwWx7ODQVorYA==
X-Received: by 2002:a05:6512:3a91:b0:515:8564:28c8 with SMTP id q17-20020a0565123a9100b00515856428c8mr1952674lfu.67.1712233577227;
        Thu, 04 Apr 2024 05:26:17 -0700 (PDT)
Received: from gpeter-l.roam.corp.google.com ([148.252.128.204])
        by smtp.gmail.com with ESMTPSA id bu14-20020a056000078e00b003434b41c83fsm12106303wrb.81.2024.04.04.05.26.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Apr 2024 05:26:14 -0700 (PDT)
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
	chanho61.park@samsung.com,
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
Subject: [PATCH 01/17] dt-bindings: clock: google,gs101-clock:  add HSI2 clock management unit
Date: Thu,  4 Apr 2024 13:25:43 +0100
Message-ID: <20240404122559.898930-2-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.44.0.478.gd926399ef9-goog
In-Reply-To: <20240404122559.898930-1-peter.griffin@linaro.org>
References: <20240404122559.898930-1-peter.griffin@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_052620_070740_D1F1C3D7 
X-CRM114-Status: UNSURE (   8.19  )
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

Add dt schema documentation and clock IDs for the High Speed Interface
2 (HSI2) clock management unit. This CMU feeds high speed interfaces
such as PCIe and UFS.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 .../bindings/clock/google,gs101-clock.yaml    | 30 +++++++++++++++++--
 1 file changed, 28 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml b/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
index 1d2bcea41c85..a202fd5d1ead 100644
--- a/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
+++ b/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
@@ -32,14 +32,15 @@ properties:
       - google,gs101-cmu-misc
       - google,gs101-cmu-peric0
       - google,gs101-cmu-peric1
+      - google,gs101-cmu-hsi2
 
   clocks:
     minItems: 1
-    maxItems: 3
+    maxItems: 5
 
   clock-names:
     minItems: 1
-    maxItems: 3
+    maxItems: 5
 
   "#clock-cells":
     const: 1
@@ -112,6 +113,31 @@ allOf:
             - const: bus
             - const: ip
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - google,gs101-cmu-hsi2
+
+    then:
+      properties:
+        clocks:
+          items:
+            - description: External reference clock (24.576 MHz)
+            - description: High Speed Interface bus clock (from CMU_TOP)
+            - description: High Speed Interface pcie clock (from CMU_TOP)
+            - description: High Speed Interface ufs clock (from CMU_TOP)
+            - description: High Speed Interface mmc clock (from CMU_TOP)
+
+        clock-names:
+          items:
+            - const: oscclk
+            - const: bus
+            - const: pcie
+            - const: ufs_embd
+            - const: mmc_card
+
 additionalProperties: false
 
 examples:
-- 
2.44.0.478.gd926399ef9-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
