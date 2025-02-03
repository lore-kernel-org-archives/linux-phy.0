Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F230C02192
	for <linux-phy@archiver.kernel.org>; Mon,  3 Feb 2025 14:43:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l1HMs1WZR9DlnPg9+pMl/esCOEOTvQKvbVE28F2E1vE=; b=0cdpMs0hxJfEoV
	21C9T0xO8dRpYxZIculqd+k9skG9kjrz9R2hRC674KBHWbud20CfVNn1njge2FjFaq2cu9AYZAIHy
	98nO6Gnk6BYbVJIeNp//5bOkT4EJbFJY/7kLxQV/hIOsthGrDLc8bOhDF7qXKhCUjb5wcDrY5OEvs
	DrVMsGptVa0kBeqlD8j67EQQ/S16w4RX9aSiENNbfmrK8x6tHcg9AqrwHVr2qTAtvk63JB6JPkpHe
	OuzAFgI99hAsgzm9jWuDGMIst+vH4bzLSoeN8g7T/673JiXx042qtFl+mFeoZn3XzrUpDt04UuO1L
	YsBrXch24qIY80P7c5pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1texfm-0000000Fj6o-3znS;
	Mon, 03 Feb 2025 14:43:38 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1texfj-0000000Fj6B-41Nz
	for linux-phy@lists.infradead.org;
	Mon, 03 Feb 2025 14:43:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 0546DA40BA5;
	Mon,  3 Feb 2025 14:41:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E474C4CEE0;
	Mon,  3 Feb 2025 14:43:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738593815;
	bh=zD7Pq+WFbaHHBaS2R8kR9JYaHuI7hD9DburLNSUKAVI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=idN3qLUGd0hhZOxWPP49Lw28CqynEiRiulvMNbLNcBi357mDCC30ow7oj5c77famd
	 Vze2Twuv7ue16mu3a9Up8lFRRiMz1ngeEgY2IiyMst4RGXwi4rwsDwj06LfLPWQ6EZ
	 TI2PAClLB4zdPSJkp8apFUyGUZCYk5l3ecBGgn0KxkOi8yuPBIXme17wsxbov6r3dq
	 lnZJ+8IB2fXMs+K5lVaMMAtQ0VkOF7vh3v1VijRTjsGEyZU/rXqpmdRi6ZOkBxJEE5
	 NMxpYYYKopYmCnv1FdOjaOeXtKOWaC702PcDYUrOpV1TeT/62z6A/7XMYFwqR+unWs
	 8Od6hI1G3o1pQ==
From: Konrad Dybcio <konradybcio@kernel.org>
Date: Mon, 03 Feb 2025 15:43:20 +0100
Subject: [PATCH v2 1/6] dt-bindings: phy: qcom,qmp-pcie: Add X1P42100 PCIe
 Gen4x4 PHY
MIME-Version: 1.0
Message-Id: <20250203-topic-x1p4_dts-v2-1-72cd4cdc767b@oss.qualcomm.com>
References: <20250203-topic-x1p4_dts-v2-0-72cd4cdc767b@oss.qualcomm.com>
In-Reply-To: <20250203-topic-x1p4_dts-v2-0-72cd4cdc767b@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1738593805; l=1694;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=42PZ3rbeoTMdj0E7PXO8CTKf4NJAQ55+Zvhnaeo61ps=;
 b=6XhwaHS612yGZQtBXD5K7jXAbLxI/7wUek8qLJ6Z4P3wcTHtcG3v+uJ1Pz5w8RN/jF1qIB7+H
 RkFz2yojXtECkeMuSder0AkiY1TaGKst+4tx2LyJrfy78Xh6YgXZ20R
X-Developer-Key: i=konrad.dybcio@oss.qualcomm.com; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250203_064336_135272_AEA6CC67 
X-CRM114-Status: UNSURE (   7.62  )
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

From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

X1P42100 has two Gen4x4 PHYs instead of one Gen4x4 and one Gen4x8.

They are mostly identical to X1E80100's Gen4x4 PHY, but there are some
minor details in the programming sequences.

Introduce a new compatible for this flavor of the PHY.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 89391649e0b5cb7e778b51fe61fb445d1f17eaf5..51eaffa45c18df15f93f7a3c7382415a59982793 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -45,6 +45,7 @@ properties:
       - qcom,x1e80100-qmp-gen4x2-pcie-phy
       - qcom,x1e80100-qmp-gen4x4-pcie-phy
       - qcom,x1e80100-qmp-gen4x8-pcie-phy
+      - qcom,x1p42100-qmp-gen4x4-pcie-phy
 
   reg:
     minItems: 1
@@ -124,6 +125,7 @@ allOf:
             enum:
               - qcom,sc8280xp-qmp-gen3x4-pcie-phy
               - qcom,x1e80100-qmp-gen4x4-pcie-phy
+              - qcom,x1p42100-qmp-gen4x4-pcie-phy
     then:
       properties:
         reg:
@@ -180,6 +182,7 @@ allOf:
               - qcom,x1e80100-qmp-gen4x2-pcie-phy
               - qcom,x1e80100-qmp-gen4x4-pcie-phy
               - qcom,x1e80100-qmp-gen4x8-pcie-phy
+              - qcom,x1p42100-qmp-gen4x4-pcie-phy
     then:
       properties:
         clocks:

-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
