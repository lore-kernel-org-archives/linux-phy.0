Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2787FC433EF
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 12:47:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v3SRaeyuvw2Fto+3DW5Wuxyi9f2khp0Z5gOjg4hvnTU=; b=IuL73K1Ik1frFn
	iFe9XbeZXqoNcC2vIhneMlKZdmCM1VtDiWTfEyZv6AOqH5NxU492Vk3xjsusYVwHf9Y/EpQGqKcKf
	KuRNHTpyi1cF1dhxzJGlrYpLZDR45nygCSh9xY9lnPFoDYp4FwIxRCqKS7KdcPK8CxtO3LuuRcaMD
	Lic6t1JKz3MQ2EYNAPDPDG5aEs8r6lp17Elb+xePgiBKWjmOH0R0JZ4ChCL6zIO9oVJsYeT5Ps3F2
	qx9DJHO6XZ+0W1o41rCxNKkcwR8x8tUAntzb4Z1uRhlwOYoQ3LyHLyaB48sILH5M5ZwblQcZ8Jjd7
	vVs47WuCY9WsLZUaDUwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oByFC-00ENBT-63; Thu, 14 Jul 2022 12:47:02 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oByCL-00EL30-EE
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 12:44:06 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2E89D61F5F;
	Thu, 14 Jul 2022 12:44:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0771C34114;
	Thu, 14 Jul 2022 12:44:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657802643;
	bh=fKVr3WJRK6SB+gf5jHzlEttOvOrKnUmjQ0oAbp4dEdM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=TC0yw4uGCcA5bRWe+xeenppxDMZv/EEu1Gjx74lu3ISJwr/7L/1LXW3s/tcLUWP+y
	 4VHCu71kjhq9/hNFG3FP2VIOX4+AVm4e5uZSrpq+VZH9980OL8fa+bQY043J8UNVNk
	 wesCVS+5rk6rL8M9WyOcs2JcQZ0l046TFfIIvFeCXvepIg0K6ok8JpKDMqXtKQqnJj
	 PkWG88oqUx2l5Xlu10AZj3cNg2QAZaqjm3SHr0E1QA3IeLKf/8X/oN3vLrdZGGYR9w
	 TV1mVRcU1QY3iIkL+7BjxXmnC4cujVe+0r7g9maCMBr9VAMx1DoGKmdfIvws0LkwSG
	 FgNmQ2Z0dfT0w==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oByCP-0007DD-2v; Thu, 14 Jul 2022 14:44:09 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 04/30] dt-bindings: phy: qcom,qmp: fix child node description
Date: Thu, 14 Jul 2022 14:43:07 +0200
Message-Id: <20220714124333.27643-5-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220714124333.27643-1-johan+linaro@kernel.org>
References: <20220714124333.27643-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_054405_565793_52A528D1 
X-CRM114-Status: GOOD (  10.28  )
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

Fix the incorrect description of the child nodes which claimed that one
node is required per lane rather than per PHY.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index 0359f06bc37d..ad52bc1c2e1b 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -101,9 +101,7 @@ properties:
 patternProperties:
   "^phy@[0-9a-f]+$":
     type: object
-    description:
-      Each device node of QMP phy is required to have as many child nodes as
-      the number of lanes the PHY has.
+    description: one child node per PHY provided by this block
 
 required:
   - compatible
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
