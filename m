Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25841C71136
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jun 2025 08:05:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+8S/465SW812I/Ma6k6siHDg5SCWNXeASJAPQhAJta0=; b=GdGH1aXzD9Pot2
	Xe/GG3OJ2IwoExj/PHejW6Rf0RPM9o5geR10GmJWzz7RHbRqguY5B8dJFdVMYbUnpVYmAFadMHSvC
	/lISJIxAOQftMPl4bchF5lUwhJzIrO2RK2VdPTsPXfSWou1B/WGOWGlgK+0upd0v66lihkUOyaitq
	1SBc6l0S6Vb3UIABAmzeU3hZRrCCZD9J4WZXn4IwKf8u8zn4RfFJam2uVQW7uoBcULnJRUotzinQx
	X9cJzh6k6IWn9vdV8tEwoxj97zDpMuEUmhAPPQnPc3X81NhqL8g+NioR3Qily7TGeJz9nkG9puidk
	5O1b7h21RERlr1dTHkrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRRJj-00000006XXV-3kgA;
	Tue, 17 Jun 2025 08:05:15 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRRJh-00000006XWN-2wp3
	for linux-phy@lists.infradead.org;
	Tue, 17 Jun 2025 08:05:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 6CB1D44804;
	Tue, 17 Jun 2025 08:05:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48CB0C4CEE3;
	Tue, 17 Jun 2025 08:05:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750147513;
	bh=aKBDRiikGnavUf2+YErN039Xh/ThzPCTFBbeiq99QQ0=;
	h=From:To:Cc:Subject:Date:From;
	b=cwevWtVMPv9KViLIdf0QNBfl4JBAy6rAqr7H7KV7qgCZ7j/XeVU6m7R28CGAAWFEV
	 wYlCpDGLXdbgS++oCDHcxE0pvycQ0PXQG9l3x9BnQB+pXsvNHN9N1NgSiWWnhorJVJ
	 KxY/XTgTxkAimsHIrOvup0kOUSSVzkHbQBTTe9vkncVEj+zqFHvmWQDB6t+pkyFv0L
	 ZL6FTLoanXOHL9Sfsz8PtrWXO3KRZawR/Bqa4q/o2Jug3d+J7ZPq7haTrbraPQqh+Q
	 OUZPCvWDhuVyKfOTK9f1Jnc+7Lbr0oJCpNQFS37xn5eg3yzECs5bEXsaCr+aBajxKA
	 dz4huunp4Q+Dw==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan+linaro@kernel.org>)
	id 1uRRJe-000000002vv-2mDN;
	Tue, 17 Jun 2025 10:05:10 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Melody Olvera <melody.olvera@oss.qualcomm.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH] phy: qcom: m31-eusb2: fix match data santity check
Date: Tue, 17 Jun 2025 10:05:03 +0200
Message-ID: <20250617080503.11262-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_010513_759781_7BBEC2A6 
X-CRM114-Status: GOOD (  10.04  )
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

The device_get_match_data() helper returns NULL if a new entry is ever
added without corresponding match data.

Fixes: 9c8504861cc4 ("phy: qcom: Add M31 based eUSB2 PHY driver")
Cc: Wesley Cheng <quic_wcheng@quicinc.com>
Cc: Melody Olvera <melody.olvera@oss.qualcomm.com>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
index 9b987911fcdb..9ad7af503baa 100644
--- a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
@@ -252,7 +252,7 @@ static int m31eusb2_phy_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	data = device_get_match_data(dev);
-	if (IS_ERR(data))
+	if (!data)
 		return -EINVAL;
 	phy->data = data;
 
-- 
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
