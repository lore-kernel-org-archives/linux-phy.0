Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 785BEC561E6
	for <linux-phy@archiver.kernel.org>; Tue,  4 Aug 2026 18:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q+zwNm+a72ebC86SfIFnT4YbthYq7AmzmQnvo+M0duA=; b=Ilt0sIkheQlGSQ
	Y53Rvx1dj1/rXkmkAv/cJLarSM18ljenMJWakfazrstfDFAVbIocTJnktaC3uJTh68mBmUxkEklbZ
	4Ax2ZSOtb6FWgj7Cypn1lv7kQcpESKsPtIbGNaMf+KKV9LphoiObdZLSYLq3v8y9oYTbxGBxZZn18
	akT+iUmzxNek6KPHtv1EVLzWUBcMpb/6sKkv0KBupJ9hTrZ21T3umAE8Jpn1vLY4xANUy5GFMkrEz
	UC/LPamSir1ZVPtgSCBWC5U7Mh5Ot9A9077hSY30+dSHfubeVNpZLt7N9ZeE16Dd5+BnhzBbLAhrL
	XQfnOemG4/e7pNwNoNsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrJXP-00000002ZX8-3MYr;
	Tue, 04 Aug 2026 18:06:51 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrJXO-00000002ZWS-308p
	for linux-phy@lists.infradead.org;
	Tue, 04 Aug 2026 18:06:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 9936060AB4;
	Tue,  4 Aug 2026 18:06:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4DC50C2BCF4;
	Tue,  4 Aug 2026 18:06:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785866809;
	bh=LljTN1JbQ/o4dwsCoWTAYx5FSatb5Nu41U6AEBfGLV0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=W+eWgWL8NmKFqHop0knQXRJ5M+GQHK+wklDIbLS2j7f0TIYVd4uLyKFSOyyhZMcZ3
	 DnVj6yz1nL7PQJ19k3g/L0b9wp+gWUOxbWITtQQzAsiT3uvTXzCF1tGpjUFAdDLelJ
	 3RGH2Ab8p5xTKB9n1lYL2wPlnryAC/TyLitUp9KmE8Uc07Rdffz4gwb9sYo5ze8MI5
	 qOuOQ7897eGwuSCP83of+kvpOVPurbfD0rgR2XIjV96Q1rGHzY/9xSAKl/a0WvGKgI
	 iEhXE+7vt4GMAiYVVL8GuYprW3xXihLqyGf3w5LCTBzhAQnm6OWN209+J7RbyLsevx
	 ZfvSJK/jUELdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2568BC55184;
	Tue,  4 Aug 2026 18:06:49 +0000 (UTC)
From: Esteban Urrutia via B4 Relay <devnull+esteuwu.proton.me@kernel.org>
Date: Tue, 04 Aug 2026 14:06:19 -0400
Subject: [PATCH RESEND v3 1/2] dt-bindings: phy:
 qcom,sc8280xp-qmp-usb43dp-phy: Add SM8475 QMP PHY
MIME-Version: 1.0
Message-Id: <20260804-sm8475-bup-usbss-v3-1-9a5b9ebf62de@proton.me>
References: <20260804-sm8475-bup-usbss-v3-0-9a5b9ebf62de@proton.me>
In-Reply-To: <20260804-sm8475-bup-usbss-v3-0-9a5b9ebf62de@proton.me>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 phone-devel@vger.kernel.org, Esteban Urrutia <esteuwu@proton.me>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1785866807; l=1082;
 i=esteuwu@proton.me; s=20260622; h=from:subject:message-id;
 bh=QrONa8UfuM7KhLs1br+f3olNhvY+ormmP5vIHk1Ddjo=;
 b=NzowIrBJ87nSt21s9qYNPtdfF2wh5kLf3ODag8iF5ubD63ooOIncYo1vPnzSXTxajZG1zIGWL
 tSMN9bsFU9vB7O/vkO5Nh4/XXtbQYE6bnBP6h+NL79qimIlfT2dLmVi
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
