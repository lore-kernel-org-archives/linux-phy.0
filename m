Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8164FCD4F3C
	for <linux-phy@archiver.kernel.org>; Mon, 18 May 2026 10:32:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TZtSp9f9ufWBKgDnsK034pdOYQPChf1r3HtCW4KNnSE=; b=Dqm8N5ltmP6+8e
	z6FdX1kRP4/hHRZ/0BLuZQCjHglLZzbL/iINyaWtGTRvw87RY7/Tn68ZhBPJ5rW+Yv+EzljehrfBV
	Ofo8ZgpN7vFgFnn8CL1FonzJHsVkYlM4bPj2NmZR0ai7ME4s2BucyGiz0l+K73OCXydMbjUrkbrxP
	9SGmrB7aZlve7ED8vbQSQiCnQ0PFhnx81QT9zu3pEPd7Mk0RIojARZ/+aQcgIKKURp00ZNxwSwB1Q
	X5fsHIB1WJeV4wTNfqlgu4gslteUO+WH+4lkv6ZLyaG1dDehEJknKeCIetBW4h93js5rXYtkou3NC
	LBnxWc11s40ouNjO2SVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOvHN-0000000FFpS-1686;
	Mon, 18 May 2026 10:32:57 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOvHL-0000000FFoC-3keV
	for linux-phy@lists.infradead.org;
	Mon, 18 May 2026 10:32:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 5BC15601E7;
	Mon, 18 May 2026 10:32:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2DBEC2BCB8;
	Mon, 18 May 2026 10:32:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779100375;
	bh=Bx+uK0De2e8QKsDbMgINkrI+kBC4yYhtPUn60fv3ne0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=hpjC0vNGT49oMapbw3QF4sY1siLZmwzxAKWYJZZAbbqd9tK4YVApCi5160gwA51B1
	 rlTXJsCRxTZqS34ni3XF+w8RofJ0tP4GQpyLQ0rPwotL3difYOXs7QPvYTXtnVd7w3
	 0BRjHT5dEzA1kZ+nJ4qqQm/Ru7JLKjGnrHAZHXzaYJbPU/zTwIXJh0n2v5lEo5LSOs
	 OQBq+4tkHTRyEmeBzGDh+/NrnoyjXMgW9y9AKYOxbFrPlQy5aP2M5wonS4KdK/d9GF
	 b0SsLF1MIDtut0K7NdHDmesq/4SjoTptSkoaSj/hyLgzmn9IusmX3091rywq0zv7N4
	 9BQEAd+PX1hvA==
From: Konrad Dybcio <konradybcio@kernel.org>
Date: Mon, 18 May 2026 12:29:48 +0200
Subject: [PATCH 1/5] dt-bindings: phy: qcom,qmp-usb3-dp: Extend X1E
 description for USB4
MIME-Version: 1.0
Message-Id: <20260518-topic-usb4phy-v1-1-71d827c49dca@oss.qualcomm.com>
References: <20260518-topic-usb4phy-v1-0-71d827c49dca@oss.qualcomm.com>
In-Reply-To: <20260518-topic-usb4phy-v1-0-71d827c49dca@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 usb4-upstream@oss.qualcomm.com, 
 Raghavendra Thoorpu <rthoorpu@qti.qualcomm.com>, 
 Mika Westerberg <westeri@kernel.org>, Sven Peter <sven@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779100365; l=1927;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=pSMLt5sTaDAUG12dp7QckV1kipkrWLzLV1rYLCisTNU=;
 b=RhurK+mAgHAvX0Ecu9GE8VFqhRDtVVBt+tphD/OVy7nmVSYy3fz4Qn/qL6Z2RB/dmk8ubTDtl
 IBDNDYMUm3DDrSzq1NtOmWtfRNYOEzhplY34C1qxGn6oa6s9GNPhVAV
X-Developer-Key: i=konrad.dybcio@oss.qualcomm.com; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
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

From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Some instances of the QMP combo PHY (called USB43DP) feature a third
functional sub-block, responsible for USB4/Thunderbolt 3 communication.

Compared to the today's state of the binding, one more clock (P2RR2P -
PHY-to-Router, Router-to-PHY) needs to be enabled for the PHY to be
able to switch to USB4 mode. Allow that for X1E.

Also, add a bindings define to let consumers access it.

Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 3 ++-
 include/dt-bindings/phy/phy-qcom-qmp.h                                 | 1 +
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 3d537b7f9985..eba4bee474fb 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -52,7 +52,7 @@ properties:
       - const: ref
       - const: com_aux
       - const: usb3_pipe
-      - const: cfg_ahb
+      - enum: [ p2rr2p_pipe, cfg_ahb ]
 
   power-domains:
     maxItems: 1
@@ -186,6 +186,7 @@ allOf:
           enum:
             - qcom,sc7180-qmp-usb3-dp-phy
             - qcom,sdm845-qmp-usb3-dp-phy
+            - qcom,x1e80100-qmp-usb3-dp-phy
     then:
       properties:
         clocks:
diff --git a/include/dt-bindings/phy/phy-qcom-qmp.h b/include/dt-bindings/phy/phy-qcom-qmp.h
index 6b43ea9e0051..1c3ce0c02b0c 100644
--- a/include/dt-bindings/phy/phy-qcom-qmp.h
+++ b/include/dt-bindings/phy/phy-qcom-qmp.h
@@ -16,6 +16,7 @@
 /* QMP USB4-USB3-DP PHYs */
 #define QMP_USB43DP_USB3_PHY		0
 #define QMP_USB43DP_DP_PHY		1
+#define QMP_USB43DP_USB4_PHY		2
 
 /* QMP PCIE PHYs */
 #define QMP_PCIE_PIPE_CLK		0

-- 
2.54.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
