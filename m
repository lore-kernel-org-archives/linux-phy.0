Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1ECC4C54E49
	for <linux-phy@archiver.kernel.org>; Tue,  5 Mar 2024 13:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O93Fq0zULCP3+hRhSDuTsUXf08Tz2hCjJjAvA0iOsPI=; b=U6mLvCqcvV65Of
	+yJq8EgPh28a1ChGtSBAIGqa6HOLmYWb3pTBcfOsKGXP2S0HA8FxbJs99EjKn4QNXpqkOqxC+2Iqf
	ST7mmRzu6k7s7lXfaSBsp1APutbjRl3cBDootyWlaJwDX7k/iUbKgWJw2c1HczeKS95UemfaC7utS
	d5cdqMDQ0jSL2H865XZesRP0fZUd1exl2UC703894KsKd0kjIjxoJnXMU6SuLeViZwc4xiCFpzcYi
	w0QpoKoYsaGxSEg39copgCMDpP/mNDGUx0fbx6N/wwI5Be8rHghL2ckCpO6EnBEjp974N6GIwrdw/
	TuiCVkBGiu4lwSAW1Bzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhUu6-0000000DldC-0i1Q;
	Tue, 05 Mar 2024 13:32:22 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhUu2-0000000Dlap-47OL
	for linux-phy@lists.infradead.org;
	Tue, 05 Mar 2024 13:32:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 2C253CE1B1B;
	Tue,  5 Mar 2024 13:32:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A35C433B2;
	Tue,  5 Mar 2024 13:32:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709645535;
	bh=j2QxGDEhq99RHC8PPIr7+4POEgFQFJ0Y8qdfPyL6lA4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=EaehtikRo2RXGapAhCRTcyCb1PfQIuJNUcsejMGXdO8zS6aq7+ZRVInuo2vrbSWBd
	 ahd2Lt3oGM2A+AsUshzrMWZgyvObBfqrTFp6jeVUQ0G4heWXf1QFh3cK77ZSQl2h+P
	 kIHs19WPnXexq8aXvxVbHdyhWC82qWM7dR0Umfy3pJhVysGpnkNJ2IzZ2U6/zlV9tQ
	 L+FLcXjClaMIxIVkdfLtpzSSvl5NfPKBGrr1YM5qCx4STHdDL6QixVf/oiRmpYgiPM
	 kaullGnT4nLKHYivhE2qFsKjWPD6vutekgt3putW1fq2LDAMOtaKPL+UdJLwiMKhx9
	 Nc24YaD/m2Bkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5918C54E5C;
	Tue,  5 Mar 2024 13:32:15 +0000 (UTC)
From: Yang Xiwen via B4 Relay <devnull+forbidden405.outlook.com@kernel.org>
Date: Tue, 05 Mar 2024 21:32:14 +0800
Subject: [PATCH v5 3/5] dt-bindings: phy: hisilicon,inno-usb2-phy: add
 support for Hi3798MV100 INNO PHY
MIME-Version: 1.0
Message-Id: <20240305-inno-phy-v5-3-dc1cb130ea08@outlook.com>
References: <20240305-inno-phy-v5-0-dc1cb130ea08@outlook.com>
In-Reply-To: <20240305-inno-phy-v5-0-dc1cb130ea08@outlook.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Jiancheng Xue <xuejiancheng@hisilicon.com>, 
 Shawn Guo <shawn.guo@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>, 
 David Yang <mmyangfl@gmail.com>, Yang Xiwen <forbidden405@outlook.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=ed25519-sha256; t=1709645533; l=829;
 i=forbidden405@outlook.com; s=20230724; h=from:subject:message-id;
 bh=6dFyqSF2W3Rgkd9gq9kKKbV4XaRy0uRiH6eHrHgNDio=;
 b=+egDR1/Qmctv6w54Lz4Mc/tEJnd4aFHGjswWikeghXVIeMPQUH9OvB7sx50pFyY3OJOW1l2j1
 KBmBd29EgVRDveojk1lNQ383uT5vmXi1CgMIRh2a28RWPYldEE0DW4M
X-Developer-Key: i=forbidden405@outlook.com; a=ed25519;
 pk=qOD5jhp891/Xzc+H/PZ8LWVSWE3O/XCQnAg+5vdU2IU=
X-Endpoint-Received: by B4 Relay for forbidden405@outlook.com/20230724 with auth_id=67
X-Original-From: Yang Xiwen <forbidden405@outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240305_053219_204129_D76E9062 
X-CRM114-Status: UNSURE (   7.44  )
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
Reply-To: forbidden405@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Yang Xiwen <forbidden405@outlook.com>

Hi3798MV100 also has a similar INNO USB2 PHY with slightly different
register fields offsets. Document it in the binding.

Signed-off-by: Yang Xiwen <forbidden405@outlook.com>
---
 Documentation/devicetree/bindings/phy/hisilicon,inno-usb2-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/hisilicon,inno-usb2-phy.yaml b/Documentation/devicetree/bindings/phy/hisilicon,inno-usb2-phy.yaml
index ba82405ddf51..7f0811a2dc2b 100644
--- a/Documentation/devicetree/bindings/phy/hisilicon,inno-usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/hisilicon,inno-usb2-phy.yaml
@@ -14,6 +14,7 @@ properties:
     items:
       - enum:
           - hisilicon,hi3798cv200-usb2-phy
+          - hisilicon,hi3798mv100-usb2-phy
 
   reg:
     maxItems: 1

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
