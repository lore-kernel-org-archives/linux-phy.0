Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFE4FC43217
	for <linux-phy@archiver.kernel.org>; Wed, 19 Oct 2022 11:36:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hGUaOpPAMGWsqH2mjHohXQkb71FAlta2XYUrApe1h/I=; b=IGRkvGhW3ksflz
	1v+KwgmOgh0yfVjWJtXf+r7vWZnYiBU9HbVbli+DHJmo8YGV2+jKcWXr0xhIMF+70pRf1qh++Hgls
	jk47NgNtLydqqpmwUF/bKTGW76Aan+HaLZqJxDg1Ci6Vso+GmD4gdTSE6nfl/sOmgfYxolxQglpR7
	G1MNBb8KKZA6A0BLcUB9wY+Wfwa5SiR843jaddZJJOMTm7wp09ktVke5JehMqI695jgNo6cRvImIR
	zbDtowaUGD2wOWm6edentAVHC9L5Px1ylANLd0ZuMunytTziNqnFJcpnpH5QIuYxf++GwiZmelPkR
	EDhPBBWx/b9/Zd7dgA7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol7N4-000vBC-Va; Wed, 19 Oct 2022 11:36:26 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol7N0-000v6Q-Ll
	for linux-phy@lists.infradead.org; Wed, 19 Oct 2022 11:36:24 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 87BD861799;
	Wed, 19 Oct 2022 11:36:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63E7CC4FEBF;
	Wed, 19 Oct 2022 11:36:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666179379;
	bh=7bElN7jWzc7ST44Vh0KRkRoEA8fJ7KJeEsFLot/gNc8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ooC4+mk1rne4l06pxtYmcLGxiaUS3z4ZWFTVbLvQw/ejzONwX0xt0Oo8VZnzKExpQ
	 EtS7rwNFMseCU4sss23ZYP5qi9ToaIZL8vFsGzkBP4k30FiA2xC5Fg6Cc9QJOeXeNb
	 /YdLude/STXF9+iYJBFiQqoMK+dXIjvZOMWCLLIuxYJCvO9XKfAM3UFGgrdtJ7qfvl
	 vJVLqVLsPqedfbeA7abgwSW41+0IYNOoVoCJzFmdDM0kiUdImfNq4C5bqUb5RurBeP
	 /d4kPop8B0uQVARK7f7sx7JS9vkfb2XBY5hYNNBwVwX+nj8ZJIyGtOxbTnjXgz2cPt
	 xe1HmuoxncMDQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ol7Mm-0005pc-0V; Wed, 19 Oct 2022 13:36:08 +0200
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
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v2 09/15] dt-bindings: phy: qcom,qmp-pcie: rename current bindings
Date: Wed, 19 Oct 2022 13:35:46 +0200
Message-Id: <20221019113552.22353-10-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221019113552.22353-1-johan+linaro@kernel.org>
References: <20221019113552.22353-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221019_043622_807352_C8220C69 
X-CRM114-Status: GOOD (  13.87  )
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
