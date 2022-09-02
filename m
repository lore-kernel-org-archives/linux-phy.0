Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AC80C6FA87
	for <linux-phy@archiver.kernel.org>; Fri,  2 Sep 2022 08:08:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yQWPLPWRLhiZVfV6G0E0KrntPGR39gMImHB3CYnlGAI=; b=Z4UBitSfBl0GxC
	1IgJ9yoz04MVmaAE7IjBBe6Dd8aGeQ4Ne89vbxQVmFVfSwJoUfRe+FgiyIjji1jUz5WBtLRAz7lFw
	4rsUDiinfmK9Mkzb17VV5FlOjbvhMNPURBtBmTpbM2kZbICGJjcaw/yhMdZytTiPvVl6CG9MMqALj
	9ARFN59CdNu8LlNAzceVJhpq8BLKscoeDuStj0gyPR9TxNFEzCvaEfa/D+RNKmHWcaope0G5L2Bh4
	0DnV3ON8XGN0u/hLZMWmygWcYQWmLMAyjs36RmYS+iQ3oxQS0zxI7v4Qk3/Rgk6x/nD+1uoD0dEHT
	Ct6VVpzi7fHQqt9407fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oU1it-001eCq-E1; Fri, 02 Sep 2022 08:08:19 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oU1iq-001eA6-F8
	for linux-phy@lists.infradead.org; Fri, 02 Sep 2022 08:08:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 2B7D8B82A0E;
	Fri,  2 Sep 2022 08:08:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55610C433D6;
	Fri,  2 Sep 2022 08:08:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662106093;
	bh=qdo258x7GijpGgpulMeQhjQmJ4qALitRxDyhqpeG650=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=fRByYE5bClPz9d8ZexfQ4LspYAhhYm0K/WFXBQRU+rR8rXRAHkA9s653cr8gcX3wT
	 hBxBdYhGx00vQVhAdgnCjgoCGwr/Nu4x6/njXkW5nUhncgDtyItrcZGrCYeYtz/tab
	 YHFc89brQ13U750lepFLYvmDj5V1ganJNu/FIJYT9YpKTkpcEEhOvN3kNhnAQsHdM6
	 S2gIHiSMuzEN7zkuX+XQI/qqw55VXm4DwW+WCGtc491VTApS2e6z78lQJItZ7ixXIa
	 sDv7FP/zZ3dikNboO4R6e8OP1IXiH2bXGmCTg3MrApXG9/iTnn93So6P28KcUvS7QK
	 2q0X5/YQq6tAQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oU1iq-00039B-QE; Fri, 02 Sep 2022 10:08:16 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 2/2] dt-bindings: phy: qcom,qmp-usb3-dp: add missing power-domains property
Date: Fri,  2 Sep 2022 10:07:05 +0200
Message-Id: <20220902080705.12050-3-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220902080705.12050-1-johan+linaro@kernel.org>
References: <20220902080705.12050-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220902_010816_671454_9A5C8979 
X-CRM114-Status: GOOD (  10.19  )
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

At least the "qcom,sc8280xp-qmp-usb43dp-phy" binding requires a power
domain to be specified.

Fixes: aa27597e594c ("dt-bindings: phy: qcom,qmp: Add compatible for SC8280XP USB phys")
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../bindings/phy/qcom,qmp-usb3-dp-phy.yaml         | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
index abc29686dff6..97a7ecafbf85 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
@@ -53,6 +53,9 @@ properties:
       - const: ref
       - const: com_aux
 
+  power-domains:
+    maxItems: 1
+
   resets:
     items:
       - description: reset of phy block.
@@ -159,6 +162,17 @@ required:
 
 additionalProperties: false
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sc8280xp-qmp-usb43dp-phy
+    then:
+      required:
+        - power-domains
+
 examples:
   - |
     #include <dt-bindings/clock/qcom,gcc-sdm845.h>
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
