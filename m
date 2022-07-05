Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A840DCCA47B
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 09:51:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IGA21mL8i3Z1Uqx+jdecYAnMxkel0B0fc6R0QOOVkgU=; b=uPLZHSkzZDBpUs
	eFeH9QGP7zCLaIErX9WfWzE1Bry4sqZb7UPXmV2uHZsRGDONbF/OrenI9r3zN20FPs6Z+R+C/uRKn
	nW3wNeJlNN9CzxCSgnSa9Sv/QzItAiHqI6RtbFCnyP7Lf03LJuaobmepNFDjJsyRM7ndKuarjW18l
	20ZC98v/DiW9A4+GYQfj4k29J+Qge5Sk6eYEQC3IHdz6x/3aDAsHGb01k+CAYuGn3oAs9hDtgXB01
	GfMYzfQb8gSgv5McZV/TkhED53yxJKfDfMzZFk8eZBYUJRZVZ/hrT8x/lX91miEsXL/TTsGoLHgdR
	ItH5XpzU2HHK0yqv25tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fDi-00Gwbb-K4; Tue, 05 Jul 2022 09:51:50 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fBB-00Guag-M3
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:49:19 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 08FC56195A;
	Tue,  5 Jul 2022 09:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA357C53FCF;
	Tue,  5 Jul 2022 09:49:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657014543;
	bh=9GXGSYtsWSG+8jc9OQeAMpIATOnmAAaERp119+1qcAE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=VSBDruXmW8fAtKjDDHoHGbMlaTrHI5h9tOT9ef+h0/9nQGK+Xm/6urZK1k/ToG8Pz
	 NlYC7K7h0Uvsdorl/ZrgCm6ASUJn49AvJnYAE93d4p0hkh8GUiqI+MzXDUqhh/O6Ac
	 B+IEPw0z9MSQ4IYNeofy5GZDzE+ISl1B4/IeNH3ndrpZ8xb2deFzzd/Y9EEZe+fCuB
	 vin+5+UX8NMQgTPJDBuB+Fi2cPi0T+uVMc7zxyZlDMoT32uWibqgncRkYEghNgi6+J
	 vi0za58i06BL2E3XAUqDWIjTb9l+Qn5DGg9A2NfQhDlpNRM1pDVbrryq5LHmHlVtdZ
	 GFsahs9k++41g==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o8fB2-0004Y2-Oy; Tue, 05 Jul 2022 11:49:04 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 25/43] dt-bindings: phy: qcom,qmp-ufs: add missing SM8450 clock
Date: Tue,  5 Jul 2022 11:42:21 +0200
Message-Id: <20220705094239.17174-26-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094239.17174-1-johan+linaro@kernel.org>
References: <20220705094239.17174-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_024913_869315_3B467F86 
X-CRM114-Status: GOOD (  10.21  )
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
 .../bindings/phy/qcom,qmp-ufs-phy.yaml        | 23 +++++++++++++++++--
 1 file changed, 21 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
index af3ed5601d21..d04cdb85f005 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
@@ -43,11 +43,11 @@ properties:
 
   clocks:
     minItems: 1
-    maxItems: 2
+    maxItems: 3
 
   clock-names:
     minItems: 1
-    maxItems: 2
+    maxItems: 3
 
   resets:
     items:
@@ -129,3 +129,22 @@ allOf:
           items:
             - const: ref
             - const: ref_aux
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sm8450-qmp-ufs-phy
+    then:
+      properties:
+        clocks:
+          items:
+            - description: 19.2 MHz ref clock.
+            - description: PHY reference aux clock.
+            - description: qref clock.
+        clock-names:
+          items:
+            - const: ref
+            - const: ref_aux
+            - const: qref
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
