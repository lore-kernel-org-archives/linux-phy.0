Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E74C6C3A59D
	for <linux-phy@archiver.kernel.org>; Fri, 21 Oct 2022 11:10:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vCJtTwUt4INQtwUWKHIJletl+MXmhCeGpGKPNUFp9+U=; b=15NZ0IvUraJ+6V
	x9HYm+V5Fvk8aoTv2KbsP/ofnivTzYRkg0CYAyFnbSg47ZlHjJTdQMFMRak5af4Ry+qIYQArppOlG
	8CqDcz2dPQ+My2ebaShprDifEdq2mbIBHGgAEeS90E5g9jEDoTbbsUJNLIxFgkm7fHBfHai6CMKsx
	bR6PO4mV+rsHIu5uCKRF5Ce7RRukqbqw4XsXz6SEESLpszsCQm5cPQ2IbjZMju5/MwdzvtOUdMzh+
	KngnqM9zGqrHTgxNZ7DPlPOnStWplL7YT89IKQIAJfy+Ft6Xt6G12et9H6Ij27BkmVIbUnFTm08TT
	VXjBkytxxFknvGPqIPww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olpvV-007IoJ-3J; Fri, 21 Oct 2022 11:10:57 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olpvM-007Iga-Ix
	for linux-phy@lists.infradead.org; Fri, 21 Oct 2022 11:10:52 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 527FC61E6E;
	Fri, 21 Oct 2022 11:10:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC033C43160;
	Fri, 21 Oct 2022 11:10:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666350643;
	bh=GiJmZNg8T5O5/fCxOI/o4taQRIeOyB6kSPSO4qZDxu8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ULbti9C8khDe3z5QVY4XUM/G5LialusIpDFY5cmCwjbRZ7+LqFuzHB7x4NaoaOhYH
	 usz0jSwk9M/mrIGLu0+UISyptFJtHjfTNcI0Rne6Nhr8ucMISXrTluuLNIb73Xexb2
	 1+t+VGplpeZ1tN8UrgDsrovOUI8eu+VqiEA5TTMHmv3Qm2siI+2oxre2Deb4PTTqD1
	 wLbzaeZbI1ftOC0dUMbAiWccuV1kVrZYY3mW3zNUAg+YCasR59wv0xOBPQb24q4X42
	 2VOQgqvEvveM5+LdH7xCeRQw9ezHPM7MBF+t1HkcnVbWMT+4C4aB2+j4TJ4K8A2v1p
	 l/mAv9/QpdEFw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1olpv5-0007Kp-3H; Fri, 21 Oct 2022 13:10:31 +0200
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
Subject: [PATCH v3 09/15] dt-bindings: phy: qcom,qmp-pcie: rename current bindings
Date: Fri, 21 Oct 2022 13:09:41 +0200
Message-Id: <20221021110947.28103-10-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221021110947.28103-1-johan+linaro@kernel.org>
References: <20221021110947.28103-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221021_041048_745279_0E5B408A 
X-CRM114-Status: GOOD (  13.28  )
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

The current QMP PCIe PHY bindings are based on the original MSM8996
binding which provided multiple PHYs per IP block and these in turn were
described by child nodes.

Later QMP PCIe PHY blocks only provide a single PHY and the remnant
child node does not really reflect the hardware.

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
bindings can be based on, rename the current schema file after IPQ8074,
which was the first SoC added to the bindings after MSM8996 (which has
already been split out), and add a reference to the SC8280XP bindings.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 ...om,qmp-pcie-phy.yaml => qcom,ipq8074-qmp-pcie-phy.yaml} | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)
 rename Documentation/devicetree/bindings/phy/{qcom,qmp-pcie-phy.yaml => qcom,ipq8074-qmp-pcie-phy.yaml} (96%)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
similarity index 96%
rename from Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
rename to Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
index 324ad7d03a38..62045dcfb20c 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
@@ -1,10 +1,10 @@
 # SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/phy/qcom,qmp-pcie-phy.yaml#
+$id: http://devicetree.org/schemas/phy/qcom,ipq8074-qmp-pcie-phy.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Qualcomm QMP PHY controller (PCIe)
+title: Qualcomm QMP PHY controller (PCIe, IPQ8074)
 
 maintainers:
   - Vinod Koul <vkoul@kernel.org>
@@ -13,6 +13,9 @@ description:
   QMP PHY controller supports physical layer functionality for a number of
   controllers on Qualcomm chipsets, such as, PCIe, UFS, and USB.
 
+  Note that these bindings are for SoCs up to SC8180X. For newer SoCs, see
+  qcom,sc8280xp-qmp-pcie-phy.yaml.
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
