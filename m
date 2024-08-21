Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A306C52D7C
	for <linux-phy@archiver.kernel.org>; Wed, 21 Aug 2024 07:40:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WWpU3uDZakq9b4Ypb58uIrMSbHbox8qNTUJo25a6nTw=; b=OZQLRdvZxna007
	bR+gNMrm+XSmbIeYvmo+P4zJmti3lvT154kXnbKlSNdLk46wLZcRdCh6Ia078+BpicgsqvCISefQc
	W2j4DKmui+1UDZIVxSlTZ2duwGMKIg/HTI7qkrAlkSPC8WW5b8IZw4UPG7Sw+Kwd5BzuBWM24BkMs
	+Z8yv7D5Ru/ApkkDYGJplleva0vJHXohemEhfGr1kWx2jrFeHmRgXYrzPChs4xAtxSG4X30Rw+3bW
	qK6ByCIts+C2PX2kh7je8o26qGJgan6mlTf5XjiG7nOUcS8iWrK+Pf+ourhSgN26aLBHWu8e/Lrk2
	c++va93fORk/jcqsXaCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgfxg-00000007wwg-0WbJ;
	Wed, 21 Aug 2024 07:40:56 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgfuw-00000007wRC-3BTP;
	Wed, 21 Aug 2024 07:38:09 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1724225883;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=if9diTT6JYwENr+1sloMXQnDz1UcYLmsRE38kgYhmSI=;
	b=MTU/bCDaX3eIb5UE16lyGI6Md+9RwHmHaLnnA2RCQ5wEnQJOBuF6SUe+Cx/ScOenksCtGj
	SAeOJhftHM72vvoad1dr9PqALtaIBR26OFC/hO8M31c01usSEbumaYF4mag8XY2FRUmpJC
	8hcuKRB4zp+hfjVsrwwgz+8kU7tFl4X3mFlmpT9/Y82e9oAznQeLkvywrfCJICqFEzoV0M
	sl/zdDOw+vcGqWIHjwUZs2cT5nlIFdjg3lM+ReTexELq0clsI5/GJ/HNAZ2jkiCs5zb+fT
	6WJAARLzuo5dkTYVtZxCWizOPw1y7W/VOiP039Ou334RBK8TppvXPKxR+PI3xA==
To: linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org
Cc: vkoul@kernel.org,
	kishon@kernel.org,
	heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/3] phy: phy-rockchip-inno-usb2: Handle failed extcon allocation better
Date: Wed, 21 Aug 2024 09:37:54 +0200
Message-Id: <96200baf794a0c451f3bbc3f5530b8cf0e359dfc.1724225528.git.dsimic@manjaro.org>
In-Reply-To: <cover.1724225528.git.dsimic@manjaro.org>
References: <cover.1724225528.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240821_003806_963321_1597167D 
X-CRM114-Status: UNSURE (   9.25  )
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

Return the actual error code upon failure to allocate extcon device, instead
of hardcoding -ENOMEM.  Use dev_err_probe() to also log appropriate messages,
which is fine because the containing function is used in the probe path.

Helped-by: Heiko Stubner <heiko@sntech.de>
Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 113bfc717ff0..05af46dda11d 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -435,7 +435,8 @@ static int rockchip_usb2phy_extcon_register(struct rockchip_usb2phy *rphy)
 						rockchip_usb2phy_extcon_cable);
 
 		if (IS_ERR(edev))
-			return -ENOMEM;
+			return dev_err_probe(rphy->dev, PTR_ERR(edev),
+					     "failed to allocate extcon device\n");
 
 		ret = devm_extcon_dev_register(rphy->dev, edev);
 		if (ret) {

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
