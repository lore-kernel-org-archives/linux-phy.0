Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EC3BC43334
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 09:51:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4essh5qZ16vz39UoluKqBaVNitVRbxt2eh346J2Zd7g=; b=ZcLYbO+gwxomb4
	Gd02CvnPf6S0QfQkSlHASltHe3QdcNftQ3JTCV5ONcGPBZ4yAK7ThlLuzB5l2LhpVuYiIIsp/Nm6n
	qFZFcqL2uKBKwQ5ecg5uWQYz4tLX+ZJkzv3gMffIg3zO1yMaNxAwkMaOwYHb7yq7IfSPonccNNtTg
	uoX/WhPL/ZAfhmFzwvQ+CsRpGX7NWbqkeZ6r+rQN0ZN9IzIGdtGBwCWggs/LF4k1v5oo9d+2GdU0Z
	L4nc6WwU1KIiCilCO05eIyThwjiNg/6Oa0DmVh+EX7vIdjnGDWaFjn1esdwFADuha+W8FegucRHLC
	cN8u/lWNty43L8bPaEJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fDb-00GwUS-CM; Tue, 05 Jul 2022 09:51:43 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fB7-00GuXE-VU
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:49:15 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id BF9E861934;
	Tue,  5 Jul 2022 09:49:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D763C341EE;
	Tue,  5 Jul 2022 09:49:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657014543;
	bh=2mTzUOp7tdPQMM7Xc9YC7rFHgcOOSo/32RHu2yNuMEU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=QmLRZ09r97aAxUAe7aAEHwhG0MQCHv9ZOlPsm8H1h1xuhgV/uYUCKD9M7aXBjWpFh
	 sv+vQlMjzxJhy+Oy8JDoueLwU3L4/zvgiINNjNGMINSk/4CDYTEiMzrqfM50yySZ7e
	 vE2pu2WbUNduriouHKna7F50M7f0Oc1/IAjNi15BpR26Swl8FdoZooGJkYdy++yjrj
	 a6h4F5EAgv+rfXcW8NBs6UEf9/vR69E6iAlo1qX8JeX2inBCQk0Sox+M7eFl6I1lqs
	 OjT0DYgSBNlyR0k8ZMNukr2L5woRMoSoOznptW5XeubJqzOBTiz6iiCzu8pSavahVI
	 RS1i1k9z9NvHw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o8fB2-0004Xs-Fb; Tue, 05 Jul 2022 11:49:04 +0200
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
Subject: [PATCH 22/43] dt-bindings: phy: qcom,qmp-ufs: clean up reset providers
Date: Tue,  5 Jul 2022 11:42:18 +0200
Message-Id: <20220705094239.17174-23-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094239.17174-1-johan+linaro@kernel.org>
References: <20220705094239.17174-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_024910_204242_5E0F6D50 
X-CRM114-Status: UNSURE (   9.76  )
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

The UFS binding requires a single PHY reset.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../bindings/phy/qcom,qmp-ufs-phy.yaml        | 20 ++++---------------
 1 file changed, 4 insertions(+), 16 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
index c4458d90d8b7..b84511f02221 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
@@ -52,12 +52,12 @@ properties:
     maxItems: 4
 
   resets:
-    minItems: 1
-    maxItems: 3
+    items:
+      - description: PHY reset in the UFS controller.
 
   reset-names:
-    minItems: 1
-    maxItems: 3
+    items:
+      - const: ufsphy
 
   vdda-phy-supply:
     description:
@@ -108,12 +108,6 @@ allOf:
         clock-names:
           items:
             - const: ref
-        resets:
-          items:
-            - description: PHY reset in the UFS controller.
-        reset-names:
-          items:
-            - const: ufsphy
 
   - if:
       properties:
@@ -137,9 +131,3 @@ allOf:
           items:
             - const: ref
             - const: ref_aux
-        resets:
-          items:
-            - description: PHY reset in the UFS controller.
-        reset-names:
-          items:
-            - const: ufsphy
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
