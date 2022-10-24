Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5B7CFA373E
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 09:01:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BteHRDPBswFdwo1DBos15at9Yo1RDyQMCzyt5sgrqWU=; b=eyNytEnsWpY6NU
	/XS42lAy6gVZ2hkltOxcjXshF/LGYaPohDI4bsN1FBZY+4xMsJyzHw1WODEYL6bxekbOADd4O8zba
	dZP/wvHyLkUgS0utgFzZCOAGVU4hjoSe6rlwjaPTJt2e2izFVBFbyYj34yiy6BFpt59pMPuBSrR/v
	XapOlxgC4njGhpuRhfT1rHE71I6PuipXG+VZRqg7o/fNj+p4mSJgVNRWrn5fcydIVFQuOJepMYa9M
	PskZTwUFCUC1pzkuVq2VMFVFxYTTUrub3F8r7NzwezcOWZ6uj6XKNgw49oCVAb1oSh1IIpZOa96TT
	3emwiCmYNbp9eg8ybb1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omtL7-000Gh6-3E; Mon, 24 Oct 2022 09:01:45 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omtL1-000GcX-Pm
	for linux-phy@lists.infradead.org; Mon, 24 Oct 2022 09:01:42 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 3A8C16108F;
	Mon, 24 Oct 2022 09:01:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6AF2C433D6;
	Mon, 24 Oct 2022 09:01:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666602097;
	bh=1R8yc2SvpelM4g9C9noqmpA7ytRQEi/9AxHWjzgCCh4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=FJWz98zG/8SirD1vmMVimK6hokJbTYRDN0VAclAod/ETzOtagNFh2VhHILda7QLMs
	 oPWmQYuqk8m9PRnQmJSeEZ7bCmSWYxpDgmCBVgCSVNYzJZHBUxB/nUNqhmy/aQmBfQ
	 jmieLmOuebof374xYSluHKKyyr2QBVY1Dp9swfhilk+ApCTp53HOt0dbtkDgRTqSii
	 0I2zmSi9zXwR7zsPCcjMnWFETweIUlH8FMkzg3kXoOx0P8G5TagNHPnRqUEDuC00lv
	 LFUSaBrCGTF0ID/9gxTzsKk1Gcg2kytW1Wja1v2frAxPCGmafRntWunDKzbJZIX/5+
	 sEvm4ASJddQWg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1omtKj-00056c-JS; Mon, 24 Oct 2022 11:01:21 +0200
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
Subject: [PATCH 07/10] dt-bindings: phy: qcom,qmp-ufs: rename current bindings
Date: Mon, 24 Oct 2022 11:00:38 +0200
Message-Id: <20221024090041.19574-8-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221024090041.19574-1-johan+linaro@kernel.org>
References: <20221024090041.19574-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_020139_931887_352EE3D4 
X-CRM114-Status: GOOD (  12.24  )
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

The current QMP UFS PHY bindings are based on the original MSM8996 PCIe
PHY binding which provided multiple PHYs per IP block and these in turn
were described by child nodes.

The QMP UFS PHY block only provide a single PHY and the remnant child
node does not really reflect the hardware.

The original MSM8996 binding also ended up describing the individual
register blocks as belonging to either the wrapper node or the PHY child
nodes.

This is an unnecessary level of detail which has lead to problems when
later IP blocks using different register layouts have been forced to fit
the original mould rather than updating the binding. The bindings are
arguable also incomplete as they only the describe register blocks used
by the current Linux drivers.

In preparation for adding new bindings for SC8280XP which further
bindings can be based on, rename the current bindings after MSM8996 and
add a reference to the SC8280XP bindings.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 ...qcom,qmp-ufs-phy.yaml => qcom,msm8996-qmp-ufs-phy.yaml} | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)
 rename Documentation/devicetree/bindings/phy/{qcom,qmp-ufs-phy.yaml => qcom,msm8996-qmp-ufs-phy.yaml} (95%)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml
similarity index 95%
rename from Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
rename to Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml
index 815c375d0f7b..438f9606414a 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml
@@ -1,10 +1,10 @@
 # SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/phy/qcom,qmp-ufs-phy.yaml#
+$id: http://devicetree.org/schemas/phy/qcom,msm8996-qmp-ufs-phy.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Qualcomm QMP PHY controller (UFS)
+title: Qualcomm QMP PHY controller (UFS, MSM8996)
 
 maintainers:
   - Vinod Koul <vkoul@kernel.org>
@@ -13,6 +13,9 @@ description:
   QMP PHY controller supports physical layer functionality for a number of
   controllers on Qualcomm chipsets, such as, PCIe, UFS, and USB.
 
+  Note that these bindings are for SoCs up to SC8180X. For newer SoCs, see
+  qcom,sc8280xp-qmp-ufs-phy.yaml.
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
