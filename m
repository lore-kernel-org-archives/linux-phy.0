Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9859AC4167D
	for <linux-phy@archiver.kernel.org>; Fri, 11 Nov 2022 09:26:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=je+GkJy/CYTvxpK+UzgOeDSFtbQl4k3abZO8VdKIsek=; b=t54cbSfPKyzq4t
	vrU0bewJoWTSS43ORhacxRMi4zvj67tR9y+VDwAxgTm491R4qtLfju9VHnXbsKa9zPhhUTd7emWS1
	bSe5LjpUA+se/xgiwWfJDOVobytEITv8xcgz3RfRsd6sVkWgz+BjjUvhf+Fx66OgWosoV2Ld/hzIj
	3MMy78oea5kFljbdGVmWy5+qIRzJUsgYv/LLhVTtgphBqkGwpbmHhbejgG+wZIx+j1XBf3+gGNU/M
	wXrGI/ZjOjZKoda73SRlO7RdA2s35SETCcJ6l/DQ8af1PKxaZuu10aajpJu5k3Vo7gh13ZamD5bn6
	VouYPsYu+zz0g9+G7Fog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otQIj-00EaO5-VO; Fri, 11 Nov 2022 09:26:18 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otQIZ-00EaGg-Vs
	for linux-phy@lists.infradead.org; Fri, 11 Nov 2022 09:26:14 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id B1234B824B0;
	Fri, 11 Nov 2022 09:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8E44C43470;
	Fri, 11 Nov 2022 09:26:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668158764;
	bh=UrFSXtJ3txbQP4cpdXwmp++PX9fOWMGWIAQXlwK8rWU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Ori2nCdeD5KLmQwtIrkUmbS+G1dB4qspOENLhoH3FQeXUT9fwtqwH56XFpWzbIcWg
	 LWyi0bKpGuJyltDxN4oxX4bJe8KxKVBkWCYpoFFPoWy2NkZ95oPBgPlS3nYkIm+bLq
	 KYiXz3RIc1TDCL2s/NmEgblOuBpa83QypxZrF24UipVSlqXO6q/XDX8/rmmXVpFZRf
	 kJ6qS+F1rnWtjPbSZP8u3d9UtbLz3Ul7qA1awHpK2NasuG/pEgZJefl4zgqbIMvRn+
	 l6iMmJj1qpeBBSlT2nDqnw4sfjFmsSeSTj5qNlTMlguoePcZ6zfoUysbXqny0BVsN6
	 pfN40Hcbf3wAw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1otQI4-0002kp-IQ; Fri, 11 Nov 2022 10:25:36 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 01/14] dt-bindings: phy: qcom,qmp-usb3-dp: rename current bindings
Date: Fri, 11 Nov 2022 10:24:44 +0100
Message-Id: <20221111092457.10546-2-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221111092457.10546-1-johan+linaro@kernel.org>
References: <20221111092457.10546-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_012608_366543_E6A2B2D7 
X-CRM114-Status: GOOD (  13.57  )
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

The current QMP USB3-DP PHY bindings are based on the original MSM8996
binding which provided multiple PHYs per IP block and these in turn were
described by child nodes.

The QMP USB3-DP PHY block provides a single multi-protocol PHY and
even if some resources are only used by either the USB or DP part of the
device there is no real benefit in describing these resources in child
nodes.

The original MSM8996 binding also ended up describing the individual
register blocks as belonging to either the wrapper node or the PHY child
nodes.

This is an unnecessary level of detail which has lead to problems when
later IP blocks using different register layouts have been forced to fit
the original mould rather than updating the binding. The bindings are
arguable also incomplete as they only the describe register blocks used
by the current Linux drivers (e.g. does not include the PCS_LANE
registers).

In preparation for adding new bindings for SC8280XP which further
bindings can be based on, rename the current schema file after SC7180,
which was the first supported platform, and add a reference to the
SC8280XP bindings.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 ...3-dp-phy.yaml => qcom,sc7180-qmp-usb3-dp-phy.yaml} | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)
 rename Documentation/devicetree/bindings/phy/{qcom,qmp-usb3-dp-phy.yaml => qcom,sc7180-qmp-usb3-dp-phy.yaml} (92%)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml
similarity index 92%
rename from Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
rename to Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml
index 97a7ecafbf85..50b1fce530d5 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml
@@ -2,10 +2,17 @@
 
 %YAML 1.2
 ---
-$id: "http://devicetree.org/schemas/phy/qcom,qmp-usb3-dp-phy.yaml#"
+$id: "http://devicetree.org/schemas/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml#"
 $schema: "http://devicetree.org/meta-schemas/core.yaml#"
 
-title: Qualcomm QMP USB3 DP PHY controller
+title: Qualcomm QMP USB3 DP PHY controller (SC7180)
+
+description:
+  The QMP PHY controller supports physical layer functionality for a number of
+  controllers on Qualcomm chipsets, such as, PCIe, UFS and USB.
+
+  Note that these bindings are for SoCs up to SC8180X. For newer SoCs, see
+  qcom,sc8280xp-qmp-usb43dp-phy.yaml.
 
 maintainers:
   - Wesley Cheng <quic_wcheng@quicinc.com>
-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
