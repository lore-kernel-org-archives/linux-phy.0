Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CCD5C88E77
	for <linux-phy@archiver.kernel.org>; Tue, 15 Sep 2026 10:43:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pmtOdNf61Vy/no2MhbMwBkXHgqafIs6par0jTcysMKA=; b=Gx4qFR4Rd6TP9a
	ErIpHPi5BOa2CgrsPz9FwAkX+vHQJ3Fh4SUD0Ku9+AvECnMX6le+GdeWaXV2ZiXrYaliIu1z7D2WM
	1OgcdJz4ztMei00a4if4BXK6P7ykYBHoNU78oDFT4/4vJjk8Uu6wxKeqMWwFGUYIbWNfPdFMAEgIp
	GC3iyMWYdhXHGtoLkqxVV3rYt3ikW5a9oRa7ZzJAznrPZdSYtpQBxuOwHI0u608+FVx9st2eijxEZ
	KJKgi3VnaNyqqndXt5RQSSu18nfueXb7DzkLIxQCQmv4ouPNbLMx0T5TWpFRvXRHOs63GanT4AdKb
	Vgt39rLhoDffeC5RoLiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6Qda-00000005xaZ-38dA;
	Tue, 15 Sep 2026 10:43:43 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6QdU-00000005xUC-21OL
	for linux-phy@bombadil.infradead.org;
	Tue, 15 Sep 2026 10:43:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=+CV6Egn+bDTw43XKQWvuzHo2bqHGWcQG7Sgy8YDAY5U=; b=coNuxEOhEG5WlWR54ID+FB2yG6
	vOqiH/ai/h1Z0s8S6Gjhnn0H8KsjWEQV9QKmLSBLYI6JRiNnYASbi8X++yRV8DrIywWXFZH2Z//RZ
	Cbg08CigJg7leovf8eMnTsERExxuXtlFQLyVxjPR15sStERCYCtoLgvHKMwL0jNq37jZQseIXs2Mx
	EUOnyXw7VszkcsMklPeiBoXWaaTd7fPLzYt2viu/6+Sw/Vsn6F+zzIebst29/cZSG0yrbm86z7Jy0
	eB2ezxnrlrCJ8zpq3JQ8vCA7dsNQ00vegAltT8E5cmH4ZQvVwRc3wSMayQSMJRK1iIVUUltkkEVNE
	4Y2t/jyQ==;
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x6QdP-00000006ZhG-44GN
	for linux-phy@lists.infradead.org;
	Tue, 15 Sep 2026 10:43:35 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-49b912d391aso921515e9.2
        for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 03:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789469011; x=1790073811; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=+CV6Egn+bDTw43XKQWvuzHo2bqHGWcQG7Sgy8YDAY5U=;
        b=h8Zi4RixYEw38nyHmWUJFZKa4GaSCP6SMLV7Fnr1NxTbNbDQFiJBx0BkEdDDArk/wx
         SzgVEfh4Dt61P4yjXpA9darHSdF5v8G0t7B/Z6oDUS4wM/9NZM6ie+eWhsfKN2O3SfPb
         m5TGk1HOTwacDdfO7Ov/vb+GBQFrp3jaCQM7hPlNnRCauDLULeRhHDUDxCs1rESUd40r
         WW2nJogRAhTUgHGx5NIitkXbIlvv+Z4JwKNS573Ak7DunuVgfulkhyCF0+Rw5nZF6G3x
         zaE9dglf/BpeCWXAWpjh663zUBwQ6gMPjblUDNF6foDtg/tgInSQUttS6almGNHJFAs+
         +Z6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789469011; x=1790073811;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=+CV6Egn+bDTw43XKQWvuzHo2bqHGWcQG7Sgy8YDAY5U=;
        b=tWSc0mEls1T0EA8p0o+dhBW2UQwljMDcv8QhTJ24Zpi7ZI7NZO7N8vjwfRG1FU1GcT
         Feqh+W6IiKa7Owz5zS9uK4cLgmXZYIqRe0yrIHavl5bMdzZoRhfbdxX05AYNtp4bwrbX
         QnDHZ5sSexjfqBb8bw/UcW4jJsd74AIUB6cPyJ18Oz84QNu9u2QLl01HlTy91c5o4qAP
         rp+e6EvREw/QGmv3KwOlm+t2iuy+64oFWTFueQEhqEYFuGVhNt48BIRfndJdZJ8j/oti
         IUfkj4CrVobDgAMrMZJUA7tXFTuc0MM02zM3/pLU50VA5DXAjJFg6zXcFdvRVzAA50qr
         uGng==
X-Forwarded-Encrypted: i=1; AKwUvBxlcjoLmWfKHtPxUD5ojE0QT/nqWFVxPX1tlFQ4BKcYqpRZK9C7zxSIFaKAXKeQVdxOKdndkdT/o8s=@lists.infradead.org
X-Gm-Message-State: AFuF++mXOc4S2V5sLxH5hI5Jto5ehdSiIekQtjAhRucvS50Pn6gkcvb4
	mVE7Wuc8KpUW31gfDMpCALL4cLY1LBS3e0ebJNpjP5Dvq2PDW9G+PM9Y
X-Gm-Gg: AYBFou0dKVUBBukMPaRTYGqxr4DPO5Hh6WzdDbMcRM2xz/0F8gvS4EBQIxL6/A+q+w6
	QjS2hgsclT74vcXG34al83l95C6f3guClAXE5VuH74Ylm7pCvWC4dzRk9J7PoJYT2W0bfRINRy8
	VbqHXWirKKoJfsMCFkk/FQNHaNMKL/94F2QfRCs04AbOM+gsayrkCuuc8s1ibZm/KMzhFrEnP/5
	zQqVvPn1T24CtQf8rwxXHT0tC9qKThj/+QRVIUbDKzOf0H26ShmIgk3I2eYHv3ZGAJDXM+DFahL
	Ivhb+k0FeMLFFFq4UEgc3ICNTijUu1IsXDV/f12dgcameoWFZUs+iLvJdtfEp4PA0L+HRy4DfHP
	ofa7MHwV51t/xETdmNv+csZc4Y1m5IecAQYCfpWUuNrfAH6mutNpQUdLZYEwMowPzn0FsSRwCSK
	ruI/KCZbJPMfEu0YJggF1ndV/L2gpKUfWijh1qWjUMoSnyxVAlGZuyMdF+R3ubMVfdgO0XQbSxD
	JoxVPm/f7IZSPr2w/DG5kd+FVy5xh8o4c2oR+gvOAc266+w5hd0nTC8oMGJ5Eppr8S/5/Ltavt/
	Hw==
X-Received: by 2002:a05:600c:3516:b0:49b:d45:703e with SMTP id 5b1f17b1804b1-49e82210b64mr9351345e9.8.1789469010714;
        Tue, 15 Sep 2026 03:43:30 -0700 (PDT)
Received: from [127.0.1.1] (2a01cb0007c59900d73f8285c1e647ab.ipv6.abo.wanadoo.fr. [2a01:cb00:7c5:9900:d73f:8285:c1e6:47ab])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49e7d2a94b9sm58001325e9.3.2026.09.15.03.43.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2026 03:43:30 -0700 (PDT)
From: Amin Gattout <amin.gattout@gmail.com>
Date: Tue, 15 Sep 2026 12:42:48 +0200
Subject: [PATCH v2 3/4] phy: rockchip: phy-rockchip-inno-csidphy: add
 support for rk3576 variant
MIME-Version: 1.0
Message-Id: <20260915-rk3576-dphy-v2-3-b56e68b54b8c@gmail.com>
References: <20260915-rk3576-dphy-v2-0-b56e68b54b8c@gmail.com>
In-Reply-To: <20260915-rk3576-dphy-v2-0-b56e68b54b8c@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: Michael Riesch <michael.riesch@collabora.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Amin Gattout <amin.gattout@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789469006; l=1842;
 i=amin.gattout@gmail.com; s=20260818; h=from:subject:message-id;
 bh=T7svtQCEZR4NbRSxQOr575LmZrX+L5qTFSBrf8JfOqc=;
 b=eQvDxheF72tsvAJS32ZkaFvXX6NNWm28Bsw7F/w1Zy5QmGsgwEi4egtVnZZRjBKNhf4WjFbAW
 h0O3gsraYFIAa6PT+HoD2V4W8Tz+gYMZVjRPi9SOtZsJl8Lzfm0kax8
X-Developer-Key: i=amin.gattout@gmail.com; a=ed25519;
 pk=MSIqDPkCOkwtyP8Fns1m+KFU9SgqoDl2mpLe18vL+hQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_114332_198010_C83A0AFB 
X-CRM114-Status: GOOD (  10.37  )
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

The two RK3576 MIPI CSI-2 DPHYs can be supported using the existing
phy-rockchip-inno-csidphy driver, but they need their own driver data:
as on RK3588 the GRF control bits live in a dedicated CSI-DPHY GRF at
offset 0x0, while each PHY instance only has an APB reset line, as on
RK3568.

Signed-off-by: Amin Gattout <amin.gattout@gmail.com>
---
 drivers/phy/rockchip/phy-rockchip-inno-csidphy.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-csidphy.c b/drivers/phy/rockchip/phy-rockchip-inno-csidphy.c
index c79fb53d8ee5..177beb685f70 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-csidphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-csidphy.c
@@ -403,6 +403,17 @@ static const struct dphy_drv_data rk3568_mipidphy_drv_data = {
 	.resets_num = ARRAY_SIZE(rk3368_reset_names),
 };
 
+static const struct dphy_drv_data rk3576_mipidphy_drv_data = {
+	.pwrctl_offset = -1,
+	.ths_settle_offset = RK3568_CSIDPHY_CLK_WR_THS_SETTLE,
+	.calib_offset = RK3568_CSIDPHY_CLK_CALIB_EN,
+	.hsfreq_ranges = rk1808_mipidphy_hsfreq_ranges,
+	.num_hsfreq_ranges = ARRAY_SIZE(rk1808_mipidphy_hsfreq_ranges),
+	.grf_regs = rk3588_grf_dphy_regs,
+	.resets = rk3368_reset_names,
+	.resets_num = ARRAY_SIZE(rk3368_reset_names),
+};
+
 static const struct dphy_drv_data rk3588_mipidphy_drv_data = {
 	.pwrctl_offset = -1,
 	.ths_settle_offset = RK3568_CSIDPHY_CLK_WR_THS_SETTLE,
@@ -435,6 +446,10 @@ static const struct of_device_id rockchip_inno_csidphy_match_id[] = {
 		.compatible = "rockchip,rk3568-csi-dphy",
 		.data = &rk3568_mipidphy_drv_data,
 	},
+	{
+		.compatible = "rockchip,rk3576-csi-dphy",
+		.data = &rk3576_mipidphy_drv_data,
+	},
 	{
 		.compatible = "rockchip,rk3588-csi-dphy",
 		.data = &rk3588_mipidphy_drv_data,

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
