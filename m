Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C58B0C4167D
	for <linux-phy@archiver.kernel.org>; Tue,  7 Nov 2023 23:23:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wbYfnCxTAlnn7F8WM1XFxtV7eLWPyNidJRjF9KzWSG4=; b=vBiXCMdnzF4IZp
	Kn4yY+0WfJ4YgUTwwD0eYNTnCa1gknuTgKsneRg7nQnI2NbMtzoTr94Nrei6sZrfA1yHiiiFNAfTj
	pLO0UY/+OKIaetFN/FdiCobUcXuaBpxI+n0LxOb4h2b5NxRNu6Aqeg8UiOMn7EKPXcG9ActSstGPd
	OO6dp6jxV4eBCF1IkxidoEZi2JF80QhzkL8DPEoDv2WdmLO6qkUDK+jvnXctAfvdD9ZUicNusZvvc
	HYHmmWdPuPx19v4aYYMfofdiiHwAYKNfs9XkQLnAIN0M+jHlp4PbeXvDQlsyAFPfG7CK2TkGYKrG1
	1BZPBoqrUfgSvh8ljfEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0VQ8-002cAW-1L;
	Tue, 07 Nov 2023 23:23:44 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0VQ5-002c8W-27
	for linux-phy@lists.infradead.org;
	Tue, 07 Nov 2023 23:23:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 0255DCE0FE8;
	Tue,  7 Nov 2023 23:23:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 681BDC433C8;
	Tue,  7 Nov 2023 23:23:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699399419;
	bh=iHy+GyJ9NrsW/tearCxVFHDU40FeYw6GBtWc/Y5XfUU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=cmUfYLsfzr6xtgSYobCf1VTXJeBB5718clHDdFmRbOrbve022s/yeMwwBjELMgijk
	 Xg1HlfT5sSwmX3DkZEVkNOm5Ee4SmlT3gZqvBn+/CfNyioRMrD8MdSJbxrc3SPBvlb
	 iLnOr9iNYW5Ub3L//tIV66xBIQg4tS0dyKUmzVnl/cikiulk9x8BVrMP3v1TWg5QR7
	 WFG1vkMbF44NVWmTw09SvbGf88881WFgs11bE1x+N0aQvLsZIeu29mqNy3j+I7Zf6O
	 6EqLBErTrp8alQucDlbHGSX/IiWVKFmt0utBDYlqBlGHHVi7QJLL5PDvbNezaAFBua
	 2wQ/FLwKkdZbw==
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
Subject: [PATCH AUTOSEL 6.5 04/18] dt-bindings: phy: qcom,snps-eusb2-repeater: Add magic tuning overrides
Date: Tue,  7 Nov 2023 18:22:59 -0500
Message-ID: <20231107232330.3776001-4-sashal@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231107232330.3776001-1-sashal@kernel.org>
References: <20231107232330.3776001-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.5.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231107_152341_868654_07B92C07 
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
index 083fda530b484..828650d4c4b09 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
@@ -27,6 +27,27 @@ properties:
 
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
