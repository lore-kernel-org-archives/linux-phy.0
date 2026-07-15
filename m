Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 442F8C4450C
	for <linux-phy@archiver.kernel.org>; Wed, 15 Jul 2026 07:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BG57Coh/5F3g7Mt2xmqjQePliON4Np1hYtCcNEszG8g=; b=TVbBYLcrRvtPv5
	WoMhlVDO+jNRJweJAI9MFY5aRT31ZD+utqfpqd7Uin5FcnO165agPkm30nKXu2qDEvprncykRgsAW
	3usDQbIkZGESeR6tJn22KJ+ILluXEKpuGCtp9AIacIdg8Q7JghHlRzrVciFSrCG0WLMzeVZqBSLJZ
	CMA3ZgSemjElEgOm8h82a0Iyh+A5yXW+343snMNkEHT7Nj30DbGjfkA+oNQRLBi9gCI0tin+DvIP4
	FtiNZ99wCQmWkbDcWzNCQT3Y+v0NdqTUY9LFKNQktW/BPi5UTz6R/1L6Y6zLXzRcjYvoWs9AiPNck
	4AfE6yYNFNpAIjLVvzBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjtiP-0000000DyM3-3VUO;
	Wed, 15 Jul 2026 07:07:33 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjtiO-0000000DyLG-4AEj
	for linux-phy@lists.infradead.org;
	Wed, 15 Jul 2026 07:07:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 636726132C;
	Wed, 15 Jul 2026 07:07:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 173B2C2BCB7;
	Wed, 15 Jul 2026 07:07:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784099252;
	bh=kwSTb1nva9AqjRKglnBgdgDIqGsu9278QfIcqtMqZWQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=YC5etZrhi2xD4mYXYs6XuaVFPf/YnSXIMu22KfR3BoSn8/Ur9jOdZGZR29FDjrYz6
	 AT2xCwzI2/MpcYbyw9Y2XRM7dTSxFsaMKptr8VUd9+EKsoqpbYe1qwGILkI6H2Uwxb
	 ngd1cYwAFqe/OMZ6YPYP2cprn8fQurkfZj9Cm5JyJQAMeoisf649155TnCeh69LOkb
	 3BHelL0Rm1w+xaRzU1hASZitz0IikZMxoktXaheG0u0YHb2uAN9a1UhaMD+EIabW7y
	 XCyXpvr0XRzSQiWTHwRQjlNyA/tpheVb5NcIju50uvgmTzf0w6CBQgd73svtHqsxsa
	 it5Yj4l3UxI6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB6EFC44501;
	Wed, 15 Jul 2026 07:07:31 +0000 (UTC)
From: Esteban Urrutia via B4 Relay <devnull+esteuwu.proton.me@kernel.org>
Date: Wed, 15 Jul 2026 03:06:54 -0400
Subject: [PATCH v2 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Add SM8475 QMP PHY
MIME-Version: 1.0
Message-Id: <20260715-sm8475-bup-usbss-v2-1-2d8def39b190@proton.me>
References: <20260715-sm8475-bup-usbss-v2-0-2d8def39b190@proton.me>
In-Reply-To: <20260715-sm8475-bup-usbss-v2-0-2d8def39b190@proton.me>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 phone-devel@vger.kernel.org, Esteban Urrutia <esteuwu@proton.me>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784099250; l=1009;
 i=esteuwu@proton.me; s=20260622; h=from:subject:message-id;
 bh=QlalgE8PWhdVYi02z66OWZNjDEJrjwh3NQS1V1WaGAA=;
 b=haiZVjCw4UMBIhhGef/d6rYQcIN7xtQNJYyQBDGCMzWTSkX0t+Pfa2AFhaa88DHjjmcO8/7LP
 bpF+CLIGhzkBP0diV2HaR7/ft6UFUW9fACwNa5qUw/A3xAvC5Dtu7z5
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
