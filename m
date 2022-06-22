Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F369ACCA473
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jun 2022 00:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VsmwH6Iz2scLKJqTXBS4ROF+CPFuNhdWAX5p0eaDD4k=; b=zbnxOTjA5Yf5FM
	aP7Gm6FO8dooY5SLzivJlmAfGblaRROOFbm4htHbjR8RqO+1vLrO3GQESVdUa4PHDT4ZGqIzmlSd/
	NIaYHlMPRDU3pI7KFM25Z1WMfG+5szGD6V69WbbGDDy5/G9dThUKXbOa8ywiATGY593IX3/AuNKHb
	41HROx7Dg3GrE/aarm8L5dN7cRlBGvxbOYX9AtihrK/bycMoRw9J7aToqiwsr99Tsst1BtOy4hiaB
	qZWylytyCC8BqrycPv88f1Xa+hxKhUhO7jdyS8qp1gvnEVmvlUIxZuFCvysKMSgZjYdDzch4UgmA6
	YiBAbOAydW1pQxh2N/WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3oHh-007pgq-CA; Wed, 22 Jun 2022 00:31:53 +0000
Received: from mail-qv1-xf32.google.com ([2607:f8b0:4864:20::f32])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3oHe-007pfm-HQ; Wed, 22 Jun 2022 00:31:51 +0000
Received: by mail-qv1-xf32.google.com with SMTP id cs6so18473895qvb.6;
        Tue, 21 Jun 2022 17:31:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=X0QEIToI/CFI0cgM+A/tlMGHfHXlQisMEaSeYjXmHHA=;
        b=mcheo+5zMZDnjR6yyVGONRNMiaAHvA2/guCw8onol6soGX3VbyfFTK6rQVCNsXmGam
         Cm/poHlz4TL9ELqEcUp6ys6TOGDmjhgwma9ywr01ijnH0TFaTjwiGGYDbfEMjdO8/+sa
         xmUoSbN7ffpWwOru8LeRV/YwF5vGOQzlNQ+YejH9HZdESi1teiYLv9ELSjWKfx3RFn9J
         36/hGmieXG6lC/CKbgMB98xoZMKyz0JvmxDMuLfC5uG7BxUJjBWj0+Xl6acSxKtfXfLv
         m/CswqG5/PeTF4TOpMb1+eZ+dqxcxr4EBbPhBv2+vs3fWwDkMm7QlUUoji7IngrxSIaZ
         vitg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=X0QEIToI/CFI0cgM+A/tlMGHfHXlQisMEaSeYjXmHHA=;
        b=xc2terd4Jxy1hkDKvV/T4Mu+qjKOrk6JVpL+yiB+LOvnbLNGp3gkJJ1TQJw4VotT5/
         pV96tDClm80BVzwCGggfXMt/3kc98Vnr86myKO7ySBjoGO0u+efdKomAYX9TWMs8Fd9Q
         qe73RVjjh0/ZabsgvvKYMjEGsQm9xTyK6BfAEjYxw5ZowYdYjHA8hvCddj+qJbOzVxB1
         mbQhgRfp32XpKRsiw8qgbz2BkLhh0NCXTCwAqZbsV52NeWZKlyOphoWsz+31IuRhpN+E
         2afBai6Ssz9ca+Hj+ElF7gja1A3JNh4Rrowr+FUyvvm1FaRLKcM0I2OO9hNdWa8ZY8HC
         6weg==
X-Gm-Message-State: AJIora8pmD6rL7FW2/vSRi124Be40qbxuQ8WmGljrf/7fnTfzvs8tD7w
	qi2shHLc4snqpIHzfG44MEA=
X-Google-Smtp-Source: AGRyM1s6iU9poE7Ijqhj7rTba2yRmxwLcqau0ytkVnEFTWbNOaSpLsfzAFR6VZ05/rfC8yBTvB6fxQ==
X-Received: by 2002:a05:6214:cc4:b0:470:2c94:4fdf with SMTP id 4-20020a0562140cc400b004702c944fdfmr18133964qvx.2.1655857908195;
        Tue, 21 Jun 2022 17:31:48 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
        by smtp.gmail.com with ESMTPSA id b19-20020ac87553000000b00304ef50af9fsm13496995qtr.2.2022.06.21.17.31.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jun 2022 17:31:47 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Samuel Holland <samuel@sholland.org>
Cc: Peter Geis <pgwipeout@gmail.com>,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] phy: rockchip-inno-usb2: Sync initial otg state
Date: Tue, 21 Jun 2022 20:31:40 -0400
Message-Id: <20220622003140.30365-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220621_173150_632826_A94CFBD7 
X-CRM114-Status: UNSURE (   8.56  )
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

The initial otg state for the phy defaults to device mode. The actual
state isn't detected until an ID IRQ fires. Fix this by syncing the ID
state during initialization.

Fixes: 51a9b2c03dd3 ("phy: rockchip-inno-usb2: Handle ID IRQ")
Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 6711659f727c..6e44069617df 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -1162,6 +1162,12 @@ static int rockchip_usb2phy_otg_port_init(struct rockchip_usb2phy *rphy,
 					EXTCON_USB_HOST, &rport->event_nb);
 		if (ret)
 			dev_err(rphy->dev, "register USB HOST notifier failed\n");
+
+		if (!of_property_read_bool(rphy->dev->of_node, "extcon")) {
+			/* do initial sync of usb state */
+			ret = property_enabled(rphy->grf, &rport->port_cfg->utmi_id);
+			extcon_set_state_sync(rphy->edev, EXTCON_USB_HOST, !ret);
+		}
 	}
 
 out:
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
