Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98486CCA497
	for <linux-phy@archiver.kernel.org>; Thu,  7 Jul 2022 13:48:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g+EW546JF1HqUXfBFrdRSQPYqadlrMd6S7TKqHX4kBE=; b=pH/QkNnCUyHDFu
	ct866PLtMv61H/aVJd4l901BKMqNsYvMQcznEX2HpRWWUMyz7K5YtTq1vyqc6TQDY8z4631ijTMDE
	TkQbTXG1hZCwW4/Axre9+Qb5OBvhMG+iOOpg4dQMT5g+rW93Dy6eysUZg5g7z6XLTkZbKht2NDj8A
	/GJPLCb1G5exp1+/sv+Dl7tPCj7P5kDa/czTUj2NB7krL2M19rZJjJeJM/R6osdCcX5F5o/JLmWSN
	6Q8obeedS9GaEWFYoTeE8oEnz18QFNRcF637VmBw/zrU8UTCLJPc1hYwxaLqq5I0UYiKswiOQe/ul
	Tj/gL6UZUjvAy/xXVf4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9RrS-00GL3a-Ow; Thu, 07 Jul 2022 13:48:06 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9RrJ-00GKsW-Sf
	for linux-phy@bombadil.infradead.org; Thu, 07 Jul 2022 13:47:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=pvB1P+xZ5x+QFg4fLByOGkM5nP+aNmCtjY3cEeKH3XE=; b=rhsd70GtdiFOPONpmgcMI46dnq
	J1u91MnqdGVqniQGd5GXDpeWnHINVYIouFzsQHGv1cjhETviO+9ZuWXBcpd0dXLoOze5nU6iJOuT/
	nJbbkOQ6KUy6kGnYmDsXGlOkmZTd7bI/Sa+XvSV/kTohK4/MwzqaVGnYg4kKCbJaXFgyEQFbqksrg
	bthwY+2f0VwZokYFaZeXsSaZFb96S6XxVBv2kPlBnjeIztmszuAeVTVlZrSexp/x5QgJEnE/lIrfE
	vRA7KbwuHwaBhMd1wUWGiHojA9inu8vOAv0TV/sRZ6nAnwkj25ekea3SQUtUwhURTbtbKqE3PXU82
	qbJ8H2FA==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9RrD-001IQE-K2
	for linux-phy@lists.infradead.org; Thu, 07 Jul 2022 13:47:55 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id CDBE4621D3;
	Thu,  7 Jul 2022 13:47:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A661C341FA;
	Thu,  7 Jul 2022 13:47:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657201660;
	bh=Y+J7Plv+oHOVcHXQp7HO15QDcgjd2W96yFr9wmzsNjI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=jqKoKRNETCw8VvrS7CbL/LS2UraJauzpiKvDXgEfFi25I9n653jl6jW1jh0OEr+Tx
	 +P+kdsHhgv4l0pqJyP2E97Wjje9CLihdqoW0oU0y/89YDTpmZGiA6Pwm6WSTUZEkNn
	 uqu3QM9YeS7WK8UTyGn+pPDRP4vlSjl/gWdoME7qYJyxxjn0u67oYGVUpCo9FGTTtd
	 tvYKYLCEypoDtgagxnnyUvgw/lohWnzovnzUGE6NxaHjgtBlSoeNM8YRMyHZR71EZo
	 DnBoH4TgvnHXCQNOuqNKQQxf3HCz5gFJHgR/yK3R1JpaQgKu9MnQTXT8afU5aBSh+N
	 ADJglmaBRYeUA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o9Rr4-0000wp-WB; Thu, 07 Jul 2022 15:47:43 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v2 16/30] dt-bindings: phy: qcom,qmp-ufs: add missing SM8450 clock
Date: Thu,  7 Jul 2022 15:47:11 +0200
Message-Id: <20220707134725.3512-17-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220707134725.3512-1-johan+linaro@kernel.org>
References: <20220707134725.3512-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_144752_518229_5E81F22C 
X-CRM114-Status: GOOD (  10.36  )
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

Add the missing "qref" clock used by the SM8450 UFS QMP PHY to the
binding.

Fixes: e04121ba1b08 ("dt-bindings: phy: qcom,qmp: Add SM8450 UFS phy compatible")
Fixes: 07fa917a335e ("arm64: dts: qcom: sm8450: add ufs nodes")
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../bindings/phy/qcom,qmp-ufs-phy.yaml        | 20 +++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
index e9dfed29e996..7a1f80e2cf23 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
@@ -42,11 +42,11 @@ properties:
 
   clocks:
     minItems: 1
-    maxItems: 2
+    maxItems: 3
 
   clock-names:
     minItems: 1
-    maxItems: 2
+    maxItems: 3
 
   resets:
     maxItems: 1
@@ -117,6 +117,22 @@ allOf:
             - const: ref
             - const: ref_aux
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sm8450-qmp-ufs-phy
+    then:
+      properties:
+        clocks:
+          maxItems: 3
+        clock-names:
+          items:
+            - const: ref
+            - const: ref_aux
+            - const: qref
+
 examples:
   - |
     #include <dt-bindings/clock/qcom,gcc-sc8280xp.h>
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
