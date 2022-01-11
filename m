Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52778C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 11 Jan 2022 09:53:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KYhztcKy+EIYayzYuEkAAHI4E8Mu0qsFZI3CfFnmN8s=; b=Y8AU4ZgJnRslxy
	licIZxWzyH1pGHGXnVr1ERZ4EwOJatxkV9fCZLhA3uJcCU0vzmrgHgZXgDoiIVIW++wZmWQpIuAFE
	DtIHUK3ROZXrmriXQK4RHg+6Hmq7z/Z1FfIx28sqZaAbmNFnDohDbdLVEfdqy/pemijWnWfyR5nd5
	9FkoKQKJztrfyOEvtAHjpnZWI/r5LbReSObEeywn+34wSLDGMxsiMu6ShSxG9WnavwbD6dO8u5H6J
	qg5ysLcsURndBH4t+ZivzZ4oiBoAAF/38OF7RgMwZVk6dpCIp72SPDRl9HetT4xTszrNd7c14LBCF
	uFAoxCFLOLF6pQuR0F7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n7DqJ-00FfaH-QK; Tue, 11 Jan 2022 09:53:27 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n7DqF-00FfW1-BD
 for linux-phy@lists.infradead.org; Tue, 11 Jan 2022 09:53:24 +0000
Received: by mail-wr1-x432.google.com with SMTP id a5so27903639wrh.5
 for <linux-phy@lists.infradead.org>; Tue, 11 Jan 2022 01:53:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Z6Yer5+RWHiyObPhotCHoiFwGst2nUMplE/Hr1jBYzE=;
 b=MtHy2/o5zHgO8+sJV/wnvVbtlrq1TJ91C7S2Svaj8kMIvVs/fN8SgftynhA8fdVzLM
 GuscKOjixI81rAfR4+bdBfTJVpp8eccZWs7tsA9l7NUUQDWrbY0WbRlYg/lOeeVet4oR
 QfAywxQOQ7Xzo6FVTOrZS0vguVruguSqgJI7mzxloZt6qozPyPJ+4q5LZlP4FZTvwpL8
 aqzPDd97RJPgMG3lGiOYYe5wm1YwumO7NSXgW7q3oXdvPJTCRu4OY48k1jQgyD5fePnD
 lDhFEHApicdmD8oN3Yb+nDk2xxWK4WMFMbzuMDyqXz5lSLSYxCfEfo597HgtFYFVBv/i
 v/0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Z6Yer5+RWHiyObPhotCHoiFwGst2nUMplE/Hr1jBYzE=;
 b=WqXnByMeYgNSMis0n2Ik5WQI5gDyM8expFKRmkKeBQr0d4gN1EucGiD6jGNUUltvXV
 Ie+Yo2e3cQLl9VS3w/xMijfLp3xODsopnNaW/r5kwOC7S5w9cqtpeVS4Bw3D0Mdwzuf4
 GIavxXSTTquspF/AIKQZ9C7NFKv9feYlcdV1F6KrA7HwiLUFp6S3t4yc3gcXTIDdQK+v
 gD6tdsfVWiL6IS0etcyohD0w8VPYSgfopJIYT0+NAjPzYiv5Lslx2T1bH74JCIKTddsi
 wOu6OqZq+2xmE86Bdev1apwLWGDeiqod+XPyDXILkMSzYgGgbpYTM3ew85kRGZqCHZUk
 E1IQ==
X-Gm-Message-State: AOAM531kHs3JCAGJoukc/+aws2szXAXPbs/zyQ6FFl6IL86QYp67pTXm
 jv7cjyE6yN1QHT6LNppw7JBwC1cykUed7A==
X-Google-Smtp-Source: ABdhPJxc5sOJVxSZJOZnTg+H3RQ07fBd5zkYR0tA00iUMUXkJkJDgdj9028tmtOW7O5yrH5JXHg8RQ==
X-Received: by 2002:a5d:6b8e:: with SMTP id n14mr3122306wrx.537.1641894801554; 
 Tue, 11 Jan 2022 01:53:21 -0800 (PST)
Received: from localhost.localdomain (203.247.120.78.rev.sfr.net.
 [78.120.247.203])
 by smtp.googlemail.com with ESMTPSA id l18sm1248916wms.24.2022.01.11.01.53.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Jan 2022 01:53:21 -0800 (PST)
From: Amjad Ouled-Ameur <aouledameur@baylibre.com>
To: kishon@ti.com
Cc: Amjad Ouled-Ameur <aouledameur@baylibre.com>, p.zabel@pengutronix.de,
 balbi@kernel.org, jbrunet@baylibre.com, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 khilman@baylibre.com, vkoul@kernel.org, linux-phy@lists.infradead.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH v6 1/3] phy: amlogic: phy-meson-gxl-usb2: fix shared reset
 controller use
Date: Tue, 11 Jan 2022 10:52:53 +0100
Message-Id: <20220111095255.176141-2-aouledameur@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220111095255.176141-1-aouledameur@baylibre.com>
References: <20220111095255.176141-1-aouledameur@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220111_015323_415284_923F72A5 
X-CRM114-Status: GOOD (  12.21  )
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

Use reset_control_rearm() call if an error occurs in case
phy_meson_gxl_usb2_init() fails after reset() has been called ; or in case
phy_meson_gxl_usb2_exit() is called i.e the resource is no longer used
and the reset line may be triggered again by other devices.

reset_control_rearm() keeps use of triggered_count sane in the reset
framework. Therefore, use of reset_control_reset() on shared reset line
should be balanced with reset_control_rearm().

Signed-off-by: Amjad Ouled-Ameur <aouledameur@baylibre.com>
Reported-by: Jerome Brunet <jbrunet@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
Acked-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/phy/amlogic/phy-meson-gxl-usb2.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/amlogic/phy-meson-gxl-usb2.c b/drivers/phy/amlogic/phy-meson-gxl-usb2.c
index 2b3c0d730f20..db17c3448bfe 100644
--- a/drivers/phy/amlogic/phy-meson-gxl-usb2.c
+++ b/drivers/phy/amlogic/phy-meson-gxl-usb2.c
@@ -114,8 +114,10 @@ static int phy_meson_gxl_usb2_init(struct phy *phy)
 		return ret;
 
 	ret = clk_prepare_enable(priv->clk);
-	if (ret)
+	if (ret) {
+		reset_control_rearm(priv->reset);
 		return ret;
+	}
 
 	return 0;
 }
@@ -125,6 +127,7 @@ static int phy_meson_gxl_usb2_exit(struct phy *phy)
 	struct phy_meson_gxl_usb2_priv *priv = phy_get_drvdata(phy);
 
 	clk_disable_unprepare(priv->clk);
+	reset_control_rearm(priv->reset);
 
 	return 0;
 }
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
