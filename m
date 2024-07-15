Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7923DC3DA60
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jul 2024 12:22:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3k5yK5wzI8QgwkpTLoUwdb6VrnBJF+iDAintzD/4eM8=; b=HhDO5s+4oSMK+p
	qRzexWeN/e6aDHlLUDZFUrXGgTJ3/xMSsdF+iVGKLDcD97K9rxhVrKsrqpQAw+3Ft/rIpGS9zqqln
	ooIA8N14808JCeTl8Vp08CkrCHXnj1Y7PWsMJfwxDaGLTT2GOZwJIVFI9J1VZgLyZRdBWRWEU6gMx
	lwAYMYx5uLXmxhWaYxRgk85DAi0TQRU2vpgucDjRZ20nxFTAH1Nj91Jx4CnxVI+RAmAwTEwIFWa6g
	UqR4kNfei8/T49GZRzMh8Iv/NDEfvgl/wpdmK+VE0wFGU0CwLOY+a2usjm5bkIbkqq+nBWXhO70cO
	MDS6MEA3X0pyT1zQDxAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTKj2-000000070lP-0mxl;
	Mon, 15 Jul 2024 12:22:40 +0000
Received: from ns.iliad.fr ([212.27.33.1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTKih-000000070aO-3ODJ
	for linux-phy@lists.infradead.org;
	Mon, 15 Jul 2024 12:22:23 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
	by ns.iliad.fr (Postfix) with ESMTP id 1BF6F2021F;
	Mon, 15 Jul 2024 14:22:14 +0200 (CEST)
Received: from [127.0.1.1] (freebox.vlq16.iliad.fr [213.36.7.13])
	by ns.iliad.fr (Postfix) with ESMTP id 0519620BC3;
	Mon, 15 Jul 2024 14:22:14 +0200 (CEST)
From: Marc Gonzalez <mgonzalez@freebox.fr>
Date: Mon, 15 Jul 2024 14:21:15 +0200
Subject: [PATCH v6 2/6] dt-bindings: display/msm: hdmi: add
 qcom,hdmi-tx-8998
MIME-Version: 1.0
Message-Id: <20240715-hdmi-tx-v6-2-d27f029627ad@freebox.fr>
References: <20240715-hdmi-tx-v6-0-d27f029627ad@freebox.fr>
In-Reply-To: <20240715-hdmi-tx-v6-0-d27f029627ad@freebox.fr>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, Arnaud Vrac <avrac@freebox.fr>, 
 Pierre-Hugues Husson <phhusson@freebox.fr>, 
 Jeffrey Hugo <quic_jhugo@quicinc.com>, 
 Conor Dooley <conor.dooley@microchip.com>, 
 Marc Gonzalez <mgonzalez@freebox.fr>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240715_052220_111689_B17B872F 
X-CRM114-Status: UNSURE (   7.18  )
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

HDMI TX block embedded in the APQ8098.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
---
 .../devicetree/bindings/display/msm/hdmi.yaml      | 28 ++++++++++++++++++++--
 1 file changed, 26 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/hdmi.yaml b/Documentation/devicetree/bindings/display/msm/hdmi.yaml
index 47e97669821c3..d4a2033afea8d 100644
--- a/Documentation/devicetree/bindings/display/msm/hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/msm/hdmi.yaml
@@ -19,14 +19,15 @@ properties:
       - qcom,hdmi-tx-8974
       - qcom,hdmi-tx-8994
       - qcom,hdmi-tx-8996
+      - qcom,hdmi-tx-8998
 
   clocks:
     minItems: 1
-    maxItems: 5
+    maxItems: 8
 
   clock-names:
     minItems: 1
-    maxItems: 5
+    maxItems: 8
 
   reg:
     minItems: 1
@@ -142,6 +143,7 @@ allOf:
       properties:
         clocks:
           minItems: 5
+          maxItems: 5
         clock-names:
           items:
             - const: mdp_core
@@ -151,6 +153,28 @@ allOf:
             - const: extp
         hdmi-mux-supplies: false
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,hdmi-tx-8998
+    then:
+      properties:
+        clocks:
+          minItems: 8
+          maxItems: 8
+        clock-names:
+          items:
+            - const: mdp_core
+            - const: iface
+            - const: core
+            - const: alt_iface
+            - const: extp
+            - const: bus
+            - const: mnoc
+            - const: iface_mmss
+
 additionalProperties: false
 
 examples:

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
