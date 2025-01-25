Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FD15C0218C
	for <linux-phy@archiver.kernel.org>; Sat, 25 Jan 2025 03:31:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bV9e6dSxZw9e2LCIacK6/7L+Hh32KGFd17OtIkTPaAY=; b=y60tGcYruZPPFU
	CIECLGQBYBgjDM9jNwJjiVnPVZe1jgtxL1Hi+1v3ZWvCIPQ6j/gb2cJr4JTRTlvNcE0UczVVLwbNs
	dBARLhf/3jnViB23P436O72o4s1/HXiSPSXoYpUq+Zyqpjb5/appLdMjsZ38JQmxW9VjtfsAPDgPl
	z+SqrXUVe2k2tA+hASqCvWfmz9Xea0I30AGFy15ikQMjge4eSWt56Fx8Sw8CIErzUcuMIaveDhxmb
	P6WFcD6YsgW/3fHc5UvAWhNIJ2Bo6jKip9Fpz15ZCIg+d0BnH7THRQkvqgPzgqeSw5pgn+y7I3koJ
	V9EY2Ly6aIxB/5kLk3nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tbWtS-0000000Fxl3-0mSy;
	Sat, 25 Jan 2025 03:31:34 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tbWtQ-0000000FxkN-0ZwJ
	for linux-phy@lists.infradead.org;
	Sat, 25 Jan 2025 03:31:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 3DA36A41ADA;
	Sat, 25 Jan 2025 03:29:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A8A2C4CEE1;
	Sat, 25 Jan 2025 03:31:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737775891;
	bh=14JNtwzaggko4px4AFo91MrUKHtzGL+tdB0lfg7xYR0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=RDzc58GLcn57z7WBTgDycEYErYO0dy7MkZyZW5V2Ef5pYdxhRPhEVqgo/UPjohoj7
	 JGG9LvlNyQveFOjq0/gHzTLT5QYrMb17rmMS7Osf2ookvQNrruNciQyRoLDDkglZkB
	 fgplGfCFEXxEAQjiy9gDoIzsFXUTGFFVlz6WuhMIBYnm8J96S65bQ7SfCjONBDsE10
	 F5ugwpumpJszp+XICHIW9uLJdobqUju2IHS+lRNIfzrfv31GD8iKp5HCYBvqJDhaFo
	 SXultECkYkWN1RT6z0wyrkCzqaGW644SxMHXrFMJw7HRks6vJtpm0TAECbZTDxV0P0
	 AgBBGDgfHeFDQ==
From: Konrad Dybcio <konradybcio@kernel.org>
Date: Sat, 25 Jan 2025 04:31:17 +0100
Subject: [PATCH 1/6] dt-bindings: phy: qcom,qmp-pcie: Add X1P42100 PCIe
 Gen4x4 PHY
MIME-Version: 1.0
Message-Id: <20250125-topic-x1p4_dts-v1-1-02659a08b044@oss.qualcomm.com>
References: <20250125-topic-x1p4_dts-v1-0-02659a08b044@oss.qualcomm.com>
In-Reply-To: <20250125-topic-x1p4_dts-v1-0-02659a08b044@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1737775883; l=1914;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=FYdx44lQWbzJYhduHK5Q+z5D4BL0BELlO06f6qXTvOg=;
 b=VCpNB5nnYTaxeOVLRWolLA/p3Ry3SlxgqlIUULYP+91T72hwooVFVDu6p4/UvYrMCzo5xg7Ms
 dFkff5bLYRNBkQO//tfeJ92l9Ix8PwIMF3Pdj6DeyXgBY8EdCJX3PhD
X-Developer-Key: i=konrad.dybcio@oss.qualcomm.com; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250124_193132_319941_21BEC0C0 
X-CRM114-Status: UNSURE (   7.87  )
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

Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 89391649e0b5cb7e778b51fe61fb445d1f17eaf5..f1ffc3d5cae44b8a9c96cdcd749a6e54533c94f6 100644
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
@@ -211,6 +214,7 @@ allOf:
               - qcom,x1e80100-qmp-gen4x2-pcie-phy
               - qcom,x1e80100-qmp-gen4x4-pcie-phy
               - qcom,x1e80100-qmp-gen4x8-pcie-phy
+              - qcom,x1p42100-qmp-gen4x4-pcie-phy
     then:
       properties:
         resets:

-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
