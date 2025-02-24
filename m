Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60E8DC021A4
	for <linux-phy@archiver.kernel.org>; Mon, 24 Feb 2025 22:05:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0Ziu0holKRRtEPZs/z8Up3f06+ayx+1cj8NOJnd0sEA=; b=4UKgq3ygYQlzp1
	DkX0bJAbYvwnhVnN2/KFfKvvPYHqJRBk+xN+MeayurIj13nAwJCb7SL4f8jWtxxmq20Pyoy36An2E
	VRtHte8Epdii8eFKriDZBOCMvFiKSsABFDcKFiyDxlLpRoiMHrVcWFfurV1co8OBAKwOUkFdbyfhW
	ODdt+L/Wm4GmFeTs4TRIr/lylYydWbiGlbXtae7q5nvjwNIuY/1AfNKNRVi5XXpi6v3A64xwGyk1s
	PEbBsQT1KVKv4/ozvAGFx6OdJDmTwbD4GjvzAPyF5CJ2Mclf8bED6etjwWy1C+k5sH7cBd4IUHTDQ
	FRL064AFdUnpK88zxDXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmgaH-0000000FJq9-3g6l;
	Mon, 24 Feb 2025 22:05:53 +0000
Received: from out-170.mta1.migadu.com ([95.215.58.170])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmgYs-0000000FJdn-42SF
	for linux-phy@lists.infradead.org;
	Mon, 24 Feb 2025 22:04:28 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1740434654;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=KzttHuqwbO250SJZmkXY5X6iacccx0fS7kQMrYMCK/A=;
	b=HDsum1tiv3YaUTzCuEGY0f0iNnWNF3YkCKRoJsvAvPLZOXaHhRZ/Q1Wf0aZYIv8t/+uDev
	2+gzfBDjGTbPOg4bVCwJYvqPBX32P7zl0yq1HU/VZP1275Es9oEddZh7YPpVl9O7wFxBQy
	ewk2ywTaBya3+MtyMk43i8WPUEsLuhU=
From: Thorsten Blum <thorsten.blum@linux.dev>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Thorsten Blum <thorsten.blum@linux.dev>,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] phy: rockchip: usbdp: Remove unnecessary bool conversion
Date: Mon, 24 Feb 2025 23:03:39 +0100
Message-ID: <20250224220339.199180-2-thorsten.blum@linux.dev>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250224_140427_151065_773D15AF 
X-CRM114-Status: UNSURE (   7.64  )
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

Remove the unnecessary bool conversion and simplify the code.

Signed-off-by: Thorsten Blum <thorsten.blum@linux.dev>
---
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index 5b1e8a3806ed..f7a36ed59ef7 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -978,7 +978,7 @@ static int rk_udphy_parse_dt(struct rk_udphy *udphy)
 
 	if (device_property_present(dev, "maximum-speed")) {
 		maximum_speed = usb_get_maximum_speed(dev);
-		udphy->hs = maximum_speed <= USB_SPEED_HIGH ? true : false;
+		udphy->hs = maximum_speed <= USB_SPEED_HIGH;
 	}
 
 	ret = rk_udphy_clk_init(udphy, dev);
-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
