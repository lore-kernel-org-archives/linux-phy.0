Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2103FA3745
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 16:05:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UoaAvrqNhLfrQcpMCa1JigCOCPfpWTFSotDxQ+PXrxs=; b=UxKGu9uT0Qh6l1
	0b8Nkn/xkOBXZ+Ki5Ljr0s1XIEBjbITFd88cFY0dg9PuHC5pnYnZnalzjWRWdTcZCSChPAQBVGswt
	oaBL+Qy2STaxsTDeI99SQb+qVMMKJ+S60F8/klsKldF9vlybGyMGZ6SnebwcrwyBEQ4BXtKp7ZNXh
	TSqVycsff/79AaixFqA+fAh7IB5TPPp0ehWjzx8EhG4DsUkM0iAJiYFucaEDNJQ9xU1z3Gw7oOmu3
	WlETzSYgMF/NQhj2SxdjSCnavOzSe34XARE2PABZ5vg7OMjc92LWc4g6hHMxuVqpOk0T8ZnmmGWoh
	VUQDEfPnWSMxiwGf2LTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooRrE-000lhX-0a; Fri, 28 Oct 2022 16:05:20 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooRr7-000lcZ-VC
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 16:05:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 93AB36295C;
	Fri, 28 Oct 2022 16:05:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 12E81C4167F;
	Fri, 28 Oct 2022 16:05:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666973110;
	bh=e0nD5zuucDDrhhjUBAUr5MO2zIKxZY/BitCu5l0GrMg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=OXx3o4w8BF07LDoERwLrq0guW5XTfIAxtFybLrl+48POsA4pQ7fsXE0g3oKFmuaNA
	 /yTq830SJXLKen/beJC+iQB3uY3i+OvoD9zmNIhObtaYgDnsFZTOiewRx1uvp1dX8S
	 um5Cq/+a1saRhyjIyVb+rRHprKVNXG6RLUPfncnPBwybA0l84piw0MBKe56rtmQEGB
	 34m1x6DhJtwlgDyw8opelHEcCcbJpdZwjuBBXV6InQR+E8IZuL30muKHznAF/U4rS4
	 K8EaW/EsoPhaQLyL2tjGWGP5k5+Ybrs0v+lRNWH0BW95vR0Y+bTibg4oDx4dEzsWVL
	 Ng5UnJTJHSBhg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ooRqq-00071t-Jr; Fri, 28 Oct 2022 18:04:56 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH RESEND v2 10/13] dt-bindings: phy: qcom,qmp-usb: rename current bindings
Date: Fri, 28 Oct 2022 18:04:32 +0200
Message-Id: <20221028160435.26948-11-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221028160435.26948-1-johan+linaro@kernel.org>
References: <20221028160435.26948-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_090514_139854_E0C14AAD 
X-CRM114-Status: GOOD (  12.33  )
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

The current QMP USB PHY bindings are based on the original MSM8996
binding which provided multiple PHYs per IP block and these in turn were
described by child nodes.

Later QMP USB PHY blocks only provide a single PHY and the remnant child
node does not really reflect the hardware.

The original MSM8996 binding also ended up describing the individual
register blocks as belonging to either the wrapper node or the PHY child
nodes.

This is an unnecessary level of detail which has lead to problems when
later IP blocks using different register layouts have been forced to fit
the original mould rather than updating the binding. The bindings are
arguable also incomplete as they only the describe register blocks used
by the current Linux drivers (e.g. does not include the per lane PCS
registers).

In preparation for adding new bindings for SC8280XP which further
bindings can be based on, rename the current bindings after MSM8996 and
add a reference to the SC8280XP bindings.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 ...com,qmp-usb-phy.yaml => qcom,msm8996-qmp-usb3-phy.yaml} | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)
 rename Documentation/devicetree/bindings/phy/{qcom,qmp-usb-phy.yaml => qcom,msm8996-qmp-usb3-phy.yaml} (97%)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
similarity index 97%
rename from Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml
rename to Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
index 7acb4b7de7f9..58ac84de8eee 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
@@ -1,10 +1,10 @@
 # SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/phy/qcom,qmp-usb-phy.yaml#
+$id: http://devicetree.org/schemas/phy/qcom,msm8996-qmp-usb3-phy.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Qualcomm QMP PHY controller (USB)
+title: Qualcomm QMP PHY controller (USB, MSM8996)
 
 maintainers:
   - Vinod Koul <vkoul@kernel.org>
@@ -13,6 +13,9 @@ description:
   QMP PHY controller supports physical layer functionality for a number of
   controllers on Qualcomm chipsets, such as, PCIe, UFS, and USB.
 
+  Note that these bindings are for SoCs up to SC8180X. For newer SoCs, see
+  qcom,sc8280xp-qmp-usb3-uni-phy.yaml.
+
 properties:
   compatible:
     enum:
-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
