Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04615C5AC67
	for <linux-phy@archiver.kernel.org>; Tue, 11 Aug 2026 04:09:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MVVaY88NQ5+fQGoQ7pD1DZh+E6YmWEWZ5KxScwZcyIc=; b=xxa/75rUcPAaD+
	wamBD4LtoPlhsWAuIpqysxxOiDClPwHHUQrhCAawFDO7FSuGy56MH52TqAYda9+w5nxc6xWwCh8mZ
	d/zzCuxdnHRszBLkwaj+NwBlY6S/DY6sY3KzU3zrVhAyTrTXJHdoTtpWFYqi0Ap+hmER3Rl0oA0tR
	eTjckj4Myu0tDl6Q3Lo7vnWfFFB5etz3e0avIAFza0EaH1rsXvWEszfktEbLRmLia3m70Vv8kmvwx
	DwwFejXEVfK4rsrPBdjA0nfLzRN/DwXC7ukKe5+siDtbSLHQ04MLBXP34V5mqDrS1I/6vPZZoqNcQ
	6nHwmIHMwDm68xqxGWWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtdnj-0000000DEqA-1PPF;
	Tue, 11 Aug 2026 04:09:19 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtdng-0000000DEoy-3iqm
	for linux-phy@lists.infradead.org;
	Tue, 11 Aug 2026 04:09:18 +0000
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-2cace91f112so29845655ad.0
        for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 21:09:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786421356; x=1787026156; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=DJlEafp6iccF9h9o6L+laBWKHv5r162wbzlbDYkDTLA=;
        b=JRbOyMMsiT2BD98w7H4QiT8J3KppJJQdIT2JM7plIDF6vymQnyNtQqb8AK9Kc91/kB
         owVcVO3J7wBQYjxjcfVd3La8KT1ZGlOaODnYyAKrMdgqMbEtdp35UHGzmc6VeBLYCxk1
         EHenAQWxb5MUnX2HVD3Vohhh7xWbHlV25dC9GSO14FBKSw97XplJz/Hn6Hj+DLJtPf7O
         nfTL8mYbjbJPR/iOkeuRTqUrrpP+QhZmMx99gmXmEhD1p2YYI8wEtyFJvTqyfvkXZBQ/
         OKKAAhrdQrWqXM7Ocm7sQQT6ZSnSXZbnbUTEk8kJdvo6Nl1Qs18zGjZipjHB62s3NNoJ
         Lj+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786421356; x=1787026156;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=DJlEafp6iccF9h9o6L+laBWKHv5r162wbzlbDYkDTLA=;
        b=tUGfypGP1UCK+5F7gH9j5UMzGNIsN8M6N2NnPPkmvlFnYSR6Gh4PBqsYuzeaAnTVqj
         8BH543KrPCShgaO6vVbaG9HreGbhyik4MUL8C6bjbRfeuua13Rf/HD1iPVrtV7Wwxapt
         ZKbo9SipfXeqOVw5RoI51fv0g3WI5HE/83SbPd3BJltdf3+RjurxyONpE7tqjEQ+lpU/
         Fq9W4cPTo+rNnAI0CcC0fCr3LWrH87UcNPJ0Zi957a8YyTA8kk3mtmd4CSdBebhwk5O5
         axvBMH230Du9mdvy12fgG1/hhXYULuwLDs6SIVgaXqSoolbynvVsDk2DgH5ArsDmTaGD
         8HQQ==
X-Forwarded-Encrypted: i=1; AHgh+Ro0YUdYyoSl8rMulu49mE14ivEIZoFIkgubHMds1Ch/VehL8KU3PjayAcScu4ZeuBfBs5npVZmtsmw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx9W0jjx3AUv4jZm92Q1adjQ0n0w8UOXBqYaWFQiTsV0Ssk47aQ
	3q2LBwCP+GpDXOGoHWeX3tWpGcNpG67v2NVxhMVT8FbVnUGlk4U/bGXW
X-Gm-Gg: AR+sD13CtY4Sciqs4mtlo0D6wdxJTxE7Zvm1w3Lc7TRnJ7v/WN/EfdrGc0OHVQXokAD
	uuGR6lwnqlk3ESQOHf2W/jRWE66eJ2e2WqpFVrdsbQC1QvkckydQXuwZc27Qrll4jOTp7tddoIz
	NB2ws50BrLn+eiJn9BpVtTRP2+tTunmU99W3Swu/OkYi8Fegk48Ndt4cbP2liR7Bdat7Q+vGBJc
	QtySgdG0aBQ/CEl6MAhT9iv94HcColT+6y+N5WCxhHc6F8npZTYjsJsz6b0jYU8VaEcs59Vpb4P
	Vp+feIrNJdTdBLDln1WqiIq0rW9tkCuDX620lKhpsq3daL76oCg+g7fcV3Z1641jA/grPoSskGS
	BAq1JWkWGksKweGaG7lJtx1hz4HZPerSbMogJp3loLkeQwjCxm2O2rT4ftSqVwiHtI/OpkP0Liu
	45ZRIkrapS6HgqfUU0ruxayAJfYVQJPCGoVH9QtuI8UQ/YGL15uAa464IoYkFQJGtU6gY4A9Gi+
	44oEGzORB5rxwBiE2pT/5J3W3teHhvN7TofUUODOu6XBMsEpAW6VyH1gsESTLd1E7BIgEacNSdb
	62sntPEdICQXsqg=
X-Received: by 2002:a05:6a20:bea6:b0:3c3:66c5:68cc with SMTP id adf61e73a8af0-3cc2bafad57mr930131637.21.1786421355638;
        Mon, 10 Aug 2026 21:09:15 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cbed8e74420sm153602a12.15.2026.08.10.21.09.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Aug 2026 21:09:15 -0700 (PDT)
From: phucduc.bui@gmail.com
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	bui duc phuc <phucduc.bui@gmail.com>
Subject: [PATCH] phy: rockchip: inno-usb2: Handle errors from optional IRQ lookup
Date: Tue, 11 Aug 2026 11:09:00 +0700
Message-ID: <20260811040900.7151-1-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_210916_931850_7570C5A6 
X-CRM114-Status: GOOD (  11.56  )
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

From: bui duc phuc <phucduc.bui@gmail.com>

platform_get_irq_optional() can return errors such as -EPROBE_DEFER,
but the driver currently stores the return value directly in rphy->irq
and continues probing.

Propagate negative errors other than -ENXIO using dev_err_probe(), and
only assign the IRQ to rphy->irq when a valid IRQ number is returned.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 7d8a533f24ae..6079e776b4bb 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -1390,7 +1390,12 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
 	phy_cfgs = device_get_match_data(dev);
 	rphy->chg_state = USB_CHG_STATE_UNDEFINED;
 	rphy->chg_type = POWER_SUPPLY_TYPE_UNKNOWN;
-	rphy->irq = platform_get_irq_optional(pdev, 0);
+	ret = platform_get_irq_optional(pdev, 0);
+	if (ret < 0 && ret != -ENXIO)
+		return dev_err_probe(dev, ret, "failed to get IRQ resource\n");
+	if (ret > 0)
+		rphy->irq = ret;
+
 	platform_set_drvdata(pdev, rphy);
 
 	if (!phy_cfgs)
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
