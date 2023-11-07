Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D00CFC4167D
	for <linux-phy@archiver.kernel.org>; Tue,  7 Nov 2023 23:22:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BKI0phpUbKvwjcLhgV/6qidf8mSAjau+qdoOUPGoZfw=; b=PlOcA9Ar+1B47b
	aq/eDnGqRMCzXhe1gfLY6iMPIxtIXV8CBMC7xcJEqsXcYrQO3idIjYFZQIofEKYEFfY1vNejFbWgJ
	/JtYAYwPnoOJnRn54XSSNimOVtCzHhccXZVR34mXzwcy4JB8GOl22uUIHDRfI6H8yV/dvLyV3WxrQ
	g2CQIkTyMwQFwZAUeyCPH0LeB2UYsoLW26LcvjgHLcQhFIO9m9/KiW/E+yec9qMW1DAmG5w1XfoSp
	jFp/5ECRpwO6/NWPsq1c8WjVB2LAWYBr9ArpS+QmkNhD35eMhguL5ayLYD4q2/duxZIrQl12vjwRT
	Se5v8hIxE72QbhPbyjqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0VPB-002bun-1X;
	Tue, 07 Nov 2023 23:22:45 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0VP9-002btE-0Z
	for linux-phy@lists.infradead.org;
	Tue, 07 Nov 2023 23:22:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 5E126CE0FED;
	Tue,  7 Nov 2023 23:22:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1E8CC433C9;
	Tue,  7 Nov 2023 23:22:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699399360;
	bh=0QmTRPmgmn8UfXnnBetJxKx9fT3u6QCiV/IBazpqvW4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=inf+WCrdnatV+R5sI51JnfYYypM9HjsztiGaB/VbGR6fLpsv1ELFoefQ1xZA0Ueqk
	 f88yl+AEw3lK+mAD/ooYMF7aV50iA0Dpk/s5EQzr2PWhd9/JEhpqLZJF44/52V6LWY
	 o+3UnJPD0aKKfMXDufNRZvhz34HdnyYMj1zXuc00V6OJcGB4ItJYnSEe0Ku1pF1vAU
	 qXbU8HjYvplp2DmqapDVH/pCT69YMb4qEV/GN35tSgKPZQ4Su8B6dPQRl7WLDv0OzT
	 4OxwuKpatJY1UHNmBwuBznYPd/oGSTREA0IEGve8/fTCTvzrVZt9EdiV9KtnAjjzhD
	 k4TatgAdUQbhA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	agross@kernel.org,
	andersson@kernel.org,
	kishon@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	abel.vesa@linaro.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH AUTOSEL 6.6 04/18] dt-bindings: phy: qcom,snps-eusb2-repeater: Add magic tuning overrides
Date: Tue,  7 Nov 2023 18:21:58 -0500
Message-ID: <20231107232231.3775605-4-sashal@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231107232231.3775605-1-sashal@kernel.org>
References: <20231107232231.3775605-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231107_152243_389303_9B58B56E 
X-CRM114-Status: UNSURE (   7.35  )
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

From: Konrad Dybcio <konrad.dybcio@linaro.org>

[ Upstream commit c20b59b2996c89c4f072c3312e6210528a298330 ]

The EUSB2 repeater requires some alterations to its init sequence,
depending on board design.

Add support for making the necessary changes to that sequence to make USB
functional on SM8550-based Xperia 1 V.

They all have lackluster description due to lack of information.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Acked-by: Rob Herring <robh@kernel.org>
Link: https://lore.kernel.org/r/20230830-topic-eusb2_override-v2-1-7d8c893d93f6@linaro.org
Signed-off-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 .../phy/qcom,snps-eusb2-repeater.yaml         | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
index 029569d5fcf35..24c733c10e0e9 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
@@ -32,6 +32,27 @@ properties:
 
   vdd3-supply: true
 
+  qcom,tune-usb2-disc-thres:
+    $ref: /schemas/types.yaml#/definitions/uint8
+    description: High-Speed disconnect threshold
+    minimum: 0
+    maximum: 7
+    default: 0
+
+  qcom,tune-usb2-amplitude:
+    $ref: /schemas/types.yaml#/definitions/uint8
+    description: High-Speed trasmit amplitude
+    minimum: 0
+    maximum: 15
+    default: 8
+
+  qcom,tune-usb2-preem:
+    $ref: /schemas/types.yaml#/definitions/uint8
+    description: High-Speed TX pre-emphasis tuning
+    minimum: 0
+    maximum: 7
+    default: 5
+
 required:
   - compatible
   - reg
-- 
2.42.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
