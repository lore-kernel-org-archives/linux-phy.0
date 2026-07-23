Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7D2DC531C8
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jul 2026 02:03:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q+zwNm+a72ebC86SfIFnT4YbthYq7AmzmQnvo+M0duA=; b=j5wUt343XaIT8e
	oLy3QMRKHFt+tmXG2/g515LB7XjDmNtrUfFjAeLUV+crTL6Zy26GSaUUjLQfaBZxHxmhqq78DaUIF
	ZLA9vdWGWqfqjulHk95eOU7uWHIstLNAXrD+fLHCd4hWCX5NI23yv89II98trin720n5SGIujx38W
	gap5Mf7sgQ1cyphpUSEB3DUzr9YkHGOpSO63uIi4WuUbbyOlhBmJrLmEd/3y3T2OcnOWw1r+1a8SE
	UjeKuojNN6+VopHptvWnucE5TiW8WH91xmj4ucimUySM+Qckm5lw3ghU/vwRp9ojuqTSn7JkjF9v9
	nX1mQv3tWuKlwTzMFHHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmimB-0000000DBXV-1Wkk;
	Thu, 23 Jul 2026 02:03:07 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmim7-0000000DBWd-2KuV
	for linux-phy@lists.infradead.org;
	Thu, 23 Jul 2026 02:03:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id C418F600DA;
	Thu, 23 Jul 2026 02:03:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70675C2BCC6;
	Thu, 23 Jul 2026 02:03:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784772182;
	bh=LljTN1JbQ/o4dwsCoWTAYx5FSatb5Nu41U6AEBfGLV0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=iDWoQetdMeA1ir5Q4XR6XCQDPVqXp7uBTgtbyGlpaA48lbj0Dw4REudiCIQ3w4Ig8
	 qkmcSmZxrs24QunOYRdFsr4aoaaS/VutFmoIsU/3XE99tI91zhXNC4seiqF/zx4/G9
	 lEbtAI3ZRVzAkoIwWRGKQyACGZDn1o3Qzec4kR+w45lfkdQaKq8lufXZtn30XefoZi
	 52cOTfXHDzBamprfVcStRB+7fgNdjlbgZKopCpSsO8eDX0qJt9r2tdxqjjJDwUpwu/
	 FDMA47En+U7aMja2CJRD+2iEf64rsIlAzrqNeQJozHqQU4oFmrricYVXo9gdnsSUDX
	 vey+CZBTYUbsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 48FF3C4453D;
	Thu, 23 Jul 2026 02:03:02 +0000 (UTC)
From: Esteban Urrutia via B4 Relay <devnull+esteuwu.proton.me@kernel.org>
Date: Wed, 22 Jul 2026 22:00:01 -0400
Subject: [PATCH v3 1/2] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Add SM8475 QMP PHY
MIME-Version: 1.0
Message-Id: <20260722-sm8475-bup-usbss-v3-1-0dd5da218ab2@proton.me>
References: <20260722-sm8475-bup-usbss-v3-0-0dd5da218ab2@proton.me>
In-Reply-To: <20260722-sm8475-bup-usbss-v3-0-0dd5da218ab2@proton.me>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 phone-devel@vger.kernel.org, Esteban Urrutia <esteuwu@proton.me>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784772180; l=1082;
 i=esteuwu@proton.me; s=20260622; h=from:subject:message-id;
 bh=QrONa8UfuM7KhLs1br+f3olNhvY+ormmP5vIHk1Ddjo=;
 b=WUB+DblyoqVWwq+5auyteefmtxPX4XalUUFX+BULQK9wT+A4WphzbvQRd6qxxb7YGMcCKA0lZ
 e8y/3w34TXfATb+9GcbD7vYmBa97GCAN1VRNRWzATBwmMiAOEW7KP7O
X-Developer-Key: i=esteuwu@proton.me; a=ed25519;
 pk=wToFt4mOAWkzbqb15Ye1hrhevI13vK9BcMUFiQ/me1M=
X-Endpoint-Received: by B4 Relay for esteuwu@proton.me/20260622 with
 auth_id=835
X-Original-From: Esteban Urrutia <esteuwu@proton.me>
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
Reply-To: esteuwu@proton.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Esteban Urrutia <esteuwu@proton.me>

SM8450 init sequence for this PHY varies significantly and can't be used in
SM8475.
Add bindings for the PHY found in this SoC.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Esteban Urrutia <esteuwu@proton.me>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 4eff92343ce4..b9d0de25f43c 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -37,6 +37,7 @@ properties:
           - qcom,sm8250-qmp-usb3-dp-phy
           - qcom,sm8350-qmp-usb3-dp-phy
           - qcom,sm8450-qmp-usb3-dp-phy
+          - qcom,sm8475-qmp-usb3-dp-phy
           - qcom,sm8550-qmp-usb3-dp-phy
           - qcom,sm8650-qmp-usb3-dp-phy
           - qcom,sm8750-qmp-usb3-dp-phy

-- 
2.55.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
