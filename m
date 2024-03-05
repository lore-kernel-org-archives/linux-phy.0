Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EF18C48BF6
	for <linux-phy@archiver.kernel.org>; Tue,  5 Mar 2024 02:20:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O93Fq0zULCP3+hRhSDuTsUXf08Tz2hCjJjAvA0iOsPI=; b=TAFTD8hjR9kTQU
	O+NyhbT5tgZCl/ryqDeVZ6aR+wXIldR5k7kl2z0EDiJfe3fD9I5EKm0lnM0jl3BcIFZfkNJ8y5f6D
	Y2KmKaTaF3EORa6ubczplS9qDnXv1KQhpcVppSoKv3BBN2PmAMyaU0Zk9njBTHvnAoB9koQ7nYz+s
	uupoBrBaJ0z5FruVQGmhDL+8waMH0oC08sT9jdk9kX9kEx3U2eYhmcyKkMhNlo+UZq2h+UbnB4Ow8
	oTgE8+K1ftnmCrQln+FeNUMNGbkaqOcXr5KlhhPiEpxNXtRkcJcqsjs9ihcXYpTKsHEIc7SAgOlj9
	5CH/hnKuFMpMFTK6+RTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhKPZ-0000000BXXF-3gsm;
	Tue, 05 Mar 2024 02:20:09 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhKPO-0000000BXRM-42gw
	for linux-phy@lists.infradead.org;
	Tue, 05 Mar 2024 02:20:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C70136123D;
	Tue,  5 Mar 2024 02:19:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90637C43394;
	Tue,  5 Mar 2024 02:19:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709605196;
	bh=j2QxGDEhq99RHC8PPIr7+4POEgFQFJ0Y8qdfPyL6lA4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=vAwCX0T5XC55C8KD+4b8Yd+cjS3vfJRmE/JSXBEK+Y579w6DsWnsEQ+SeLG7tyv0c
	 ummb7qt3utjLsbclCSpfdrK1ZMYCtxKHLH6J1W039wkMEIGkuNCbJb11tp+O6X6IEc
	 5TBmZGQadJPD7Ds1AG+dalB+FVJ+lWCeZ1uoj4S45emW9qSxpISoInobKnIXd1H9Y6
	 ySeWju+DOMvhNZ5okrxP1h1Mii2VarkHM2DSpzF3P57Om6kIJdNtLQ994RFv/osKcl
	 QfWvtxvSMeDb3ErGe1RQJrxnq6tUmNHU51YYOrkzm1suZ4lprkL4nz2ke4ZR/BClTD
	 PdakwTHcD0J2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78CDAC54E4A;
	Tue,  5 Mar 2024 02:19:56 +0000 (UTC)
From: Yang Xiwen via B4 Relay <devnull+forbidden405.outlook.com@kernel.org>
Date: Tue, 05 Mar 2024 10:19:48 +0800
Subject: [PATCH v4 3/5] dt-bindings: phy: hisilicon,inno-usb2-phy: add
 support for Hi3798MV100 INNO PHY
MIME-Version: 1.0
Message-Id: <20240305-inno-phy-v4-3-a03204c9cf1c@outlook.com>
References: <20240305-inno-phy-v4-0-a03204c9cf1c@outlook.com>
In-Reply-To: <20240305-inno-phy-v4-0-a03204c9cf1c@outlook.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1709605195; l=829;
 i=forbidden405@outlook.com; s=20230724; h=from:subject:message-id;
 bh=6dFyqSF2W3Rgkd9gq9kKKbV4XaRy0uRiH6eHrHgNDio=;
 b=rkQ0Luc5fivUDIuQxsUqDT1LMOA7aZ5/z3xiXyMpkOfiv2nAPIafLjZGeKrFJSTSJv06mOnDs
 dgIdv7UUNJ8A9eG0uKnq4B1shlgOHRQLUBJsDd5hc2Dg4YKUiqjTVmB
X-Developer-Key: i=forbidden405@outlook.com; a=ed25519;
 pk=qOD5jhp891/Xzc+H/PZ8LWVSWE3O/XCQnAg+5vdU2IU=
X-Endpoint-Received: by B4 Relay for forbidden405@outlook.com/20230724 with auth_id=67
X-Original-From: Yang Xiwen <forbidden405@outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_181959_110549_93BAB40D 
X-CRM114-Status: UNSURE (   7.54  )
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
