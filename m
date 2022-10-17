Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5707C41535
	for <linux-phy@archiver.kernel.org>; Mon, 17 Oct 2022 14:54:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+aOGA07Kch4GSwDOPs13tKity/kYgyMtY5rFgU95Z2I=; b=orkgcNqVqDlz4k
	syKYOUUnazW16z76DdVgDUaUMTDnJzxrz7OBTh4BFMDB2D919m1mCaehBSgc48Lfp1+jw9d3WCDwY
	BawhRLW1q8RwKkuLW04KvuAaT5dDKt/QMpV15XTCmKdosuyO9VBfP/ef9QwgOaFWFtpSoiCNe/9hG
	nuexs5b9/v0IghUz4MrHAYfL8sxO8AutYsXWVNh5qTjbiX20GSn3wGCAzoFB4nqvERPbzf3vjOJ6U
	t42EMUmflBrv2rtEw1N6prXFEmxHT9FQesz9SxeapSNvpdeE5Vlva8liodShobnC7QXaj+9E/aoYF
	bvRmwb3GgilxOyC/oaLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okRVw-00D00q-1f; Mon, 17 Oct 2022 14:54:48 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okRVq-00CztP-3J
	for linux-phy@lists.infradead.org; Mon, 17 Oct 2022 14:54:45 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 52E60611D9;
	Mon, 17 Oct 2022 14:54:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 12F91C4FF14;
	Mon, 17 Oct 2022 14:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666018479;
	bh=b6g3IRC2VLW8pGIqTKc6QbcYPDAMiTd4VIfKnkmOhF4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=HsYjrlBYKvKthcfMQ67HXz4YWIbGrayzNQLCavxUdKyrI8tTAqRhYzow0SJdnQU+t
	 J8gUyMZqCkG4XGjIj73LPuZ0BHW5JwE/0xT1ICdzYDUtR5lnSGzh7TvzoZntU43tp7
	 vecdn1g+i1+JpIolVQ+N3QWjrU/aiq5M8rp9/LmzevP1+NlwyrKMJN0W3B3A8w1e3w
	 dIo/dq2cpsDH/f+Zse+LrOv+7JsGg+ErF17RFOIEdV4Rs65vWAaVTCNqaOnBOTeyii
	 AQQ7LZwN90+5yezf21s4n1MNUoXbrCVL/Kg9Cfu2bLnZcsaXlRDLt7Y87uVagpUKQb
	 iBKZoNMH/g/CQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1okRVd-0005mK-8D; Mon, 17 Oct 2022 16:54:29 +0200
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
Subject: [PATCH 09/15] dt-bindings: phy: qcom,qmp-pcie: mark current bindings as legacy
Date: Mon, 17 Oct 2022 16:53:22 +0200
Message-Id: <20221017145328.22090-10-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221017145328.22090-1-johan+linaro@kernel.org>
References: <20221017145328.22090-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_075442_284227_C7D5E3BA 
X-CRM114-Status: GOOD (  12.32  )
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
bindings can be based on, mark the current bindings as "legacy".

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../{qcom,qmp-pcie-phy.yaml => qcom,qmp-pcie-phy-legacy.yaml} | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename Documentation/devicetree/bindings/phy/{qcom,qmp-pcie-phy.yaml => qcom,qmp-pcie-phy-legacy.yaml} (98%)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy-legacy.yaml
similarity index 98%
rename from Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
rename to Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy-legacy.yaml
index 324ad7d03a38..2ea880f8c099 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy-legacy.yaml
@@ -1,10 +1,10 @@
 # SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/phy/qcom,qmp-pcie-phy.yaml#
+$id: http://devicetree.org/schemas/phy/qcom,qmp-pcie-phy-legacy.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Qualcomm QMP PHY controller (PCIe)
+title: Qualcomm QMP PHY controller (PCIe legacy bindings)
 
 maintainers:
   - Vinod Koul <vkoul@kernel.org>
-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
