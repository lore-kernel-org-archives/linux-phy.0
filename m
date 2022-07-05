Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC119C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 09:51:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EHnimD2lus3b3ah6aOZRCySJZSrSA7BViZdU4Uq1N7w=; b=3mUa86sq4GJGUL
	lbREr/6sw5b+tFj5Yz2tbs4p2gjteU51mjO1t7xBYn1Lo8JwKq9BxF94wJ8Ww2fAHBojj48IOGtiR
	IxDj+1cd4IKt+OhltlJFvgvR9nVmkC0CIBC17fTMf+PW1WvemNmQBMvVZgYm7QCfKn9CojbCXp/Pf
	RF/mLzEf90IOVCEnfKHs9ttXcVUQuMzemXVrenkCCottOzT2ZLf4uPxcz6RA/WxecoejMGzCe0q2L
	/oV88VAIBF7+30p3c++et80g57BuuOCI+jnqgOdOQftZ/F5gWqS6oijWLukMRCN5J3bCQoiV5hUOc
	bazM6X7TIlFMTcF9RUhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fDe-00GwXd-IL; Tue, 05 Jul 2022 09:51:46 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fBB-00GuVm-JP
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:49:19 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4FAE16192D;
	Tue,  5 Jul 2022 09:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1ACDEC341D3;
	Tue,  5 Jul 2022 09:49:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657014544;
	bh=CSIhE4qibW7M+quZjw+ixus1xzmNavFM5ZRwlurXMxg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=M1onH2qP5smWWkwJgCwbPePhxlqCGk4pSAfyUaeN+ivRccr2Vav3nNif7ydVjnLxG
	 98rlmhO8Czl+x6/VjxGPVFYHee6/uluFT2bmiipPGxeCRWQevwQP8aKoueti53gIdb
	 XFtja7QomX+53oVDA4qUQCqJdBccdhfMmsesMInut5r+CSliIdzCdhnWL79xWf8bfS
	 gF+bHeBz755XRHxJwjGJz4BzLSa9xCZps2DwjEqjNRL3X13fouqT1sTuL39kN96/N1
	 L5j+o2SELLkibYBjDM/aZTmNSkwKrPbu29Ys3kz9H3R335z6y+DSsCAyfyEXXYjc5L
	 Ira7Op8PPT5sg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o8fB3-0004YB-0K; Tue, 05 Jul 2022 11:49:05 +0200
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
Subject: [PATCH 28/43] dt-bindings: phy: qcom,qmp-ufs: add example node
Date: Tue,  5 Jul 2022 11:42:24 +0200
Message-Id: <20220705094239.17174-29-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094239.17174-1-johan+linaro@kernel.org>
References: <20220705094239.17174-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_024913_743168_B5A1040F 
X-CRM114-Status: UNSURE (   9.59  )
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

Add an example node based on a cleaned up version of sc8280xp.dtsi.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../bindings/phy/qcom,qmp-ufs-phy.yaml        | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
index 9124b60eb9a7..24272cdde9a1 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
@@ -217,3 +217,33 @@ allOf:
             properties:
               reg:
                 minItems: 4
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,gcc-sc8280xp.h>
+    #include <dt-bindings/clock/qcom,rpmh.h>
+    phy-wrapper@1d87000 {
+        compatible = "qcom,sc8280xp-qmp-ufs-phy";
+        reg = <0x01d87000 0xe10>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+        ranges = <0x0 0x01d87000 0x1000>;
+
+        clocks = <&rpmhcc RPMH_CXO_CLK>, <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
+        clock-names = "ref", "ref_aux";
+
+        resets = <&ufs_mem_hc 0>;
+        reset-names = "ufsphy";
+
+        vdda-phy-supply = <&vreg_l6b>;
+        vdda-pll-supply = <&vreg_l3b>;
+
+        phy@400 {
+            reg = <0x400 0x108>,
+                  <0x600 0x1e0>,
+                  <0xc00 0x1dc>,
+                  <0x800 0x108>,
+                  <0xa00 0x1e0>;
+            #phy-cells = <0>;
+        };
+    };
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
