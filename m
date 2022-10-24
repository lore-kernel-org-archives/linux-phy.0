Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CE5FFA3744
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 10:07:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F2AJJ7ZsYgUCLv9aaODlR5GPZb8dxGLIfk9WiMHbWME=; b=jjx6RmQCmgOGTV
	20TtHvhgvMDm+cRIZ6k/3D158FRumj3ah6cm+j8imo5AbRKm4G5gA6hRq5ybBWmMG8iGfWwqn6IzI
	MbpH3Gf02VSqfcy5obEHUJXN7u7PlnIclDzLVzYpg38wcX80MDaoMf3JPsNHIiqGX9Kr8o5Bkh4UW
	0UXbbFzvguEPZ7p2yNwIucdmdRvxv1nj4WJFOlGS97HnVUj/OqFewaBvfTqOHoC/uAEx6PedFwjmo
	vUis2QnbKUlOXrbN3bTwSBRfm/tQyvPO6hpudOvxywPJUIUW3HTtfYL1ov6Ogz7Dw0T6zsTmEn94t
	5QCYbBKHqBkmY5UCrv+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omuMR-000cC1-Mm; Mon, 24 Oct 2022 10:07:11 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omuMM-000c6J-6l
	for linux-phy@lists.infradead.org; Mon, 24 Oct 2022 10:07:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id C8C8F611C6;
	Mon, 24 Oct 2022 10:07:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC24FC43160;
	Mon, 24 Oct 2022 10:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666606023;
	bh=oXPXYrr8xsw0e6647Mk5oRSxMADSBNVRiAcUXclN6lc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=jULMA8FGdLv7B22fUsU+M5jm6Fvcbi+Ft5Bwi0jKtGM0XSrzvckT8lwwhX6NQVWch
	 ZhJZF8UywKd7zdm+DtFRkUWWx7VNt6NBQY+Mpkko00JMgDl0nEZncCsF8ts1ItrXzM
	 DCU7kEvoa5ghCYJSLiRW6KvQCbtEt5LHwb1vDoPmR4VtvnvtZpH7suUU6E0vphBL5O
	 AuALfv+Oay3i4ug6m4LsQW6EgIskAbfzBW59vYsrX9wrtjIitCAOpAs6VM0YzvCfaU
	 g+n2bh12FcyQ7C0rbFFbwRDnWts86v9s2g3635O5S+ojlmZTpZs6EQRhFxUNNFxzTn
	 IPWRck1LwyTBg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1omuM3-0005Md-HG; Mon, 24 Oct 2022 12:06:47 +0200
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
Subject: [PATCH 10/13] dt-bindings: phy: qcom,qmp-usb: rename current bindings
Date: Mon, 24 Oct 2022 12:06:29 +0200
Message-Id: <20221024100632.20549-11-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221024100632.20549-1-johan+linaro@kernel.org>
References: <20221024100632.20549-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_030706_357489_312935A4 
X-CRM114-Status: GOOD (  12.49  )
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

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 ...qcom,qmp-usb-phy.yaml => qcom,msm8996-qmp-usb-phy.yaml} | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)
 rename Documentation/devicetree/bindings/phy/{qcom,qmp-usb-phy.yaml => qcom,msm8996-qmp-usb-phy.yaml} (97%)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb-phy.yaml
similarity index 97%
rename from Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml
rename to Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb-phy.yaml
index 7acb4b7de7f9..a72e96f241d1 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb-phy.yaml
@@ -1,10 +1,10 @@
 # SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/phy/qcom,qmp-usb-phy.yaml#
+$id: http://devicetree.org/schemas/phy/qcom,msm8996-qmp-usb-phy.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Qualcomm QMP PHY controller (USB)
+title: Qualcomm QMP PHY controller (USB, MSM8996)
 
 maintainers:
   - Vinod Koul <vkoul@kernel.org>
@@ -13,6 +13,9 @@ description:
   QMP PHY controller supports physical layer functionality for a number of
   controllers on Qualcomm chipsets, such as, PCIe, UFS, and USB.
 
+  Note that these bindings are for SoCs up to SC8180X. For newer SoCs, see
+  qcom,sc8280xp-qmp-usb-phy.yaml.
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
