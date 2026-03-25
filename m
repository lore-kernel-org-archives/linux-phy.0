Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3045B109E521
	for <linux-phy@archiver.kernel.org>; Wed, 25 Mar 2026 21:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=21zP1HmuU3heItJwkt3TW5wu8ncgEvPdGSTOnq0jg4U=; b=HZMZrMG3icsD7g
	4hqa95G8Af7W7FEzRP23ALBNnqkHidq4sd+KrwdlwYuthkD1yC11nwvW78IGehTpWYfQdgG+ivefN
	qdrPYZdvKXfViddXEWsmqavYHbWTqAHvUydiBLMojNU1r0EfkQ2lGPeqQH4sNNRlrGFh7CXMZiIAv
	DaDs2W8VEOqYBvfYE33fvZY8m9Txe5cGoM8zlIAMiRIe8u0UaK8cqN/SGNb8waPEhsX5mDX39Ga0+
	m3JiE7LhCN8AyOOpgwsLj92EpyAjMUuTYTPsrpiOr13Z/5seDAqxaqPa7O+Rrpuij4WW/bOCUxcei
	xV1zhHCAZaxC2ELIEXFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5W4i-00000004ITN-3vFi;
	Wed, 25 Mar 2026 21:47:40 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5W4g-00000004IQt-0NHP
	for linux-phy@lists.infradead.org;
	Wed, 25 Mar 2026 21:47:39 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-43b4f48c47cso214873f8f.0
        for <linux-phy@lists.infradead.org>; Wed, 25 Mar 2026 14:47:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1774475256; x=1775080056; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WUBXFKDaZyLGYlqi8hUZX2+5TXZsLiKYfOUNWNPdJOw=;
        b=jsVVvYqNKz3OQdP8DQMwEZI5OO5nwj4zzvUpVxkkeqMLf1QtcX64KUIr0WRZ3ZaQE5
         x0E4u8FoG6MK0L9X/hXFR4kza0FbLSdqYKhWURzMrFFF6dgxmrgYTd1FCXomWks+xxKc
         0QA3JdYkC/fkYvLQKib1XNwLgs2E7SsreBQWRg6v2EOE41T6rbZLzIn8ACeD9uEK84vV
         mVDqVpQiAWxGbvyf5bfus3afv1p2QMpj0TqpchDBEasecdFYi8xOHcz2Lc46uzK37J5M
         VCxBC3StNKak80aiSqNCZ488rUbZGTVftpys2rHVPbi1UI9GaulZx0dKK9hNio15dPPU
         e4YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774475256; x=1775080056;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WUBXFKDaZyLGYlqi8hUZX2+5TXZsLiKYfOUNWNPdJOw=;
        b=JClVvBcmCfyRtOoStC5zRml9hCYKPeyZIgS38qOAuLIM6El9ikZOBup41hAPzYtgkz
         gGASEzJSwq0+q1lEAEdmNZ61+CXh+7G2wfd+yGZwTsDZu7SfE8O59DVLX0MupZQ1NF1A
         9Zxf7jYSOGgkjpWu93MSO7N6D3D6wjErGHIsH2rLP1DcmNNwRHosEdNdA2ohTFbQ+OgD
         Uh2k6Sgrbi6AGJjdoND1GNBdHj8rg0j+mH5RBj7YpI2/4l9X1duBLXmDV06DtZZj506m
         44AEYsfEhrgBJuFa5/WZH2CnIiMgCwZlWcrJ548YkQp8JzQw0Qqr/6kR0H4HvSADPAsf
         iFeg==
X-Gm-Message-State: AOJu0YxzIdQSWVPtM+kUNa4PrLhcXmRtrfWo2ZIexWec7MhjvIEkH3sZ
	WKLAHpIAyoyBp2sRSCerGaTnj9NDIM6eTFnz4h5yfFOwQcTBVxVw9V+Jer3Tg8B5KiUgcre09rs
	5mbFB
X-Gm-Gg: ATEYQzzfuMYnKmfphtrElXb8v4PI4dDooKnn24jm79yKjyV/lyG6QmeHiHX0cCHzr8W
	2PwSIwkxjXC2hMBjJMaiaIO+NuhFi/RLs3hyUPgdB6V1HbbvL2EOJjU60E8/JlNZ3UtJ2potOKg
	RKVYCfQ5DDr2FOVh2GXVlf2vKyh9ETAFBA53FWO4I3BoJoBU284fkYK6ZV0VSb5LLUGV2ZqQ86s
	oE+NA4b/swDdqzgcJZWsgFWy9luFqDVRiSRx7zNMkuKlhvmKM/nntMzq5KzxYP3TDHvnAjeX2i9
	2cqpkZE3RfetBJHYFQopRDctKrd2vMw6tuMZkkE1wSv6DtVgSxRedAbIAhFLxt3u3d0NZm8ayy1
	RCEywG2aDPJtf6QrFcqGLcz40Mk+fzooq1X6GqZhl68mOAW1q29gqqV4o8x59nIy1DE09jAev+m
	JkfrOu6iOGR5TUsarQzDIQZyzQXRyIapB8Ww8=
X-Received: by 2002:a05:6000:4212:b0:439:b811:11de with SMTP id ffacd0b85a97d-43b8898d479mr7396162f8f.7.1774475255712;
        Wed, 25 Mar 2026 14:47:35 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.163.154])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b919df85csm3440402f8f.28.2026.03.25.14.47.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2026 14:47:35 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Wed, 25 Mar 2026 21:48:00 +0000
Subject: [PATCH 4/4] phy: dphy: Add clock_lane_polarity to DPHY config
 struct
MIME-Version: 1.0
Message-Id: <20260325-dphy-params-extension-v1-4-c6df5599284a@linaro.org>
References: <20260325-dphy-params-extension-v1-0-c6df5599284a@linaro.org>
In-Reply-To: <20260325-dphy-params-extension-v1-0-c6df5599284a@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Marco Felsch <m.felsch@pengutronix.de>, Maxime Ripard <mripard@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=845;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=YM6Hu6Ba65LkPUQmoOkAoPuSEtvmcDz79ozy/idSlp8=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBpxFgPOT3Jumk5CtNRbgX1l3Yl6Dk1KfldHzx6U
 0oWrKEL4MeJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCacRYDwAKCRAicTuzoY3I
 OsoVEAC4/9JWPiJYj8c0anUyyHcZRe6vHZhz9O57oDPp8HW9lROoAcYAgEIoY6jZHuoCsYjWS9W
 1NIHIlzX5Mq1yh10r0M8ytXjPffl64MH+IXwyI2CNqj6+sWuzVu0YXulNkmsUiVwyb2uRxqTQQ5
 hOaMEg4JaPqqJHPieYlqyroZiQg+If8d21Jk1eI3JAspibiLiGOX6gq6OFlO7wxS4gOZU5mK2d8
 3m22/qSr4jf85qiklww/mjVKS0YVuOpMuxy37PP26//yCfPRpSIr4gm6L8w3qBLxQCIBTcpgTTH
 f4Pa/QFHYjF9koAVUBrKtEFnaQ5iAEgbaeRy637dmosCn/8UzF6IcFMFV28qSQjfqpBY9LRHyO8
 vdj03eC3aBb07e4w4rYMP44DtW03Pq5V0oTpHKq/w6QjSobexjmkDloPImTbHkVWBhFq3ZadNeQ
 ibiLg3kTMosl0VNC619oY0fJxbVdsU/jSec2csfiPLCFReYRsb55FKckc9QO04Lk96mauca00za
 wKNL6LDt/9wK6Vv2sj8axYV4BUK6aZCUgUmpNpHYS7XSDNg9bCna3Z2uaQqncwW/7RIYowP8yJy
 sePwoH+nCDqjU0aoiXT22ztT/qAkHFWg0qxjWSoeDuVIRAp8xFinkXDV6kqxghP8GNULa3ci7q6
 n3hI5/PWcxLEuPQ==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260325_144738_144250_874925B0 
X-CRM114-Status: UNSURE (   8.81  )
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

Specify the polarity of the clock lane in DPHY mode. When true this bool
means the polarity is inverted.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 include/linux/phy/phy-mipi-dphy.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/include/linux/phy/phy-mipi-dphy.h b/include/linux/phy/phy-mipi-dphy.h
index 76d41580e225a..f7b4ad29e6f83 100644
--- a/include/linux/phy/phy-mipi-dphy.h
+++ b/include/linux/phy/phy-mipi-dphy.h
@@ -299,6 +299,13 @@ struct phy_configure_opts_mipi_dphy {
 	 * Physical lane number used as the clock lane.
 	 */
 	unsigned char		clock_lane_position;
+
+	/**
+	 * @clock_lane_polarity:
+	 *
+	 * Clock lane polarity. True means inverted.
+	 */
+	bool			clock_lane_polarity;
 };
 
 int phy_mipi_dphy_get_default_config(unsigned long pixel_clock,

-- 
2.52.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
