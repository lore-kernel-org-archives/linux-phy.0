Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7E5BC54ED1
	for <linux-phy@archiver.kernel.org>; Tue, 27 May 2025 20:40:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vDKW4BYq/reIDu0sNO7gdR/SBIGn+8OeniIKaKkq7J8=; b=Na2HVpSiRlyxw/
	qCDrxJBPQNMx65uP/ufvSgiWSvDmpXMoNxPKmvl8xlJsO2bb7YYWPAnASHE6R1NJClYZOuRpf8Hzt
	UaB2IVWntv9zMkSdfO/xvZgWaPkJ6gUfB1IwAWcoBAogGfcEl2U/1QDsfu1l+EjbKR8H7IOxLVZ/g
	6M92PO/t9TX3mgyrOi+d1MFC26g+5FtZgV2l9uGl6yBkHnbeWCM17ru3M/9iZScGjCvMJL7lh8Xn3
	ngJgELZfckByIzH03kNMiMsIcvFQepJPV2ODUxbCUJM+rBldkXgfJg6GwBq6JWlDEbEXpTSYNUWLe
	D17UBguuxX/5e94kJcAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK164-0000000BWWL-28hE;
	Tue, 27 May 2025 20:40:28 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK162-0000000BWVT-2w1V
	for linux-phy@lists.infradead.org;
	Tue, 27 May 2025 20:40:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E08C644CD1;
	Tue, 27 May 2025 20:40:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DCA04C4CEF1;
	Tue, 27 May 2025 20:40:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748378425;
	bh=OZGSFzDt9WhrXPK5JCxiNfHA9Ym5WHvuiEgfK7Q0v1Q=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=De3iS55AV1K33Z7Cg96RhvIjCBqBDiYJIWcyCg2URtg1A1i2rQGnd07mwMDSIyMFI
	 VLlZ9AdMCQnIdGurR8wVvU4p+xLSuS0+rdSKMJEf+EyCYzTVeEWhSf+bURIiIKz3Sr
	 5DswnYcOT+R8RCg13Gm65DrKULk4qrhd3m4jX8lib7Fi932Z3nadldn6B/knqCbLvk
	 DaNdsnSXyzfdtFBBM406pPFeLQUNbPorhAcIpduQvWAobfbNtO/NN/0c3yx0M96OFx
	 By6eseQ8QBe3Xcu3kUq0A20PvlMGSLYdZhyn1RsHmZXOXKZmwzyRDE64gE8tmOy2xh
	 6CVkEaPgv/7/g==
From: Konrad Dybcio <konradybcio@kernel.org>
Date: Tue, 27 May 2025 22:40:03 +0200
Subject: [PATCH v3 1/6] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp:
 Reference usb-switch.yaml to allow mode-switch
MIME-Version: 1.0
Message-Id: <20250527-topic-4ln_dp_respin-v3-1-f9a0763ec289@oss.qualcomm.com>
References: <20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com>
In-Reply-To: <20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748378414; l=1691;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=PXkLGrcv3UJAZq8C/WK6VHbmWRh0H5KeqDACbLWooeY=;
 b=WcBiUfrusp5lQZsLehD4Bqyr+NkQempWA6f8W3GrAfmt9OhZOR6dvOeVMhOyG+80r3r2BVFyU
 lyxE3t6IvnHBfqNRqTT4TgbcPQJWKQq9XmfMkLWRH7iKt5bNr3a31I/
X-Developer-Key: i=konrad.dybcio@oss.qualcomm.com; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_134026_807228_95A8DB0B 
X-CRM114-Status: UNSURE (   8.36  )
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

From: Neil Armstrong <neil.armstrong@linaro.org>

The QMP USB3/DP Combo PHY can work in 3 modes:
- DisplayPort Only
- USB3 Only
- USB3 + DisplayPort Combo mode

In order to switch between those modes, the PHY needs to receive
Type-C events, allow marking to the phy with the mode-switch
property in order to allow the PHY to Type-C events.

Reference usb-switch.yaml as a simpler way to allow the mode-switch
property instead of duplicating the property definition.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml     | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 358a6736a951ca5db7cff7385b3657976a667358..692dbfe26e84778fcabae45ac9fa87195f796adb 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -72,10 +72,8 @@ properties:
     description:
       See include/dt-bindings/phy/phy-qcom-qmp.h
 
-  orientation-switch:
-    description:
-      Flag the PHY as possible handler of USB Type-C orientation switching
-    type: boolean
+  mode-switch: true
+  orientation-switch: true
 
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
@@ -105,6 +103,7 @@ required:
   - "#phy-cells"
 
 allOf:
+  - $ref: /schemas/usb/usb-switch.yaml#
   - if:
       properties:
         compatible:

-- 
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
