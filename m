Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192DA606A32D
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 07:48:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=aLqmiL8h;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=sMXkCW9Z
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=S06c4Y2jC6ivw8HSuvxtpMVfKprfPIPZoHZNbz2k/as=; b=aLqmiL8heEoyXDJCI3Cx0NdbCK
	GJFHq10YPIiLvBUp7irh48/Tk4P/4Z5Kd58xX89Uc/rA4Lxt758LZWLFP5+R9JSqQCSAvRRUU82NR
	E4xwM2cpmcn6DFUTYWd8RJu5peZYbqOKI2lo41X8/JhuqN/M9e8AHJWw8oaBpWRCwvMwzD6eaNBW4
	0GGIOeOWDDZZHThalKuuLulSQht4tgPk+HfRPfigfSr3nllryRkegmZinxV5Ce6KmLmaFjL/HEv1J
	3td9osKnM0JxKT2i3xZ6l+gM6tBxWyEZIq2aSxCEYJ7W9hQOPUSx3dDMIiR1p8a9SBXf689j4lps4
	GRde7P0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWqgi-0000000FBlv-3GyI;
	Fri, 27 Nov 2026 07:48:08 +0000
Received: from mail-dy1-x1331.google.com ([2607:f8b0:4864:20::1331])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWqgb-0000000FBcN-1iFS
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 07:48:05 +0000
Received: by mail-dy1-x1331.google.com with SMTP id 5a478bee46e88-386d36ac055so367239eec.3
        for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 23:48:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795765681; x=1796370481; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=QV7/azGZskXYhWhh8bvjrBkzYwv/Uf2HoCpYkbr0EGk=;
        b=sMXkCW9ZpstcESMAi+TTfTiVaR9SILrShdayEINPHI0kAOEU8m5wjsR789ZOhmok75
         Vy+gyI+K0Xs+MN1j3cVjHtI1mn7efqjBoD8NLLmnOJBn7hSdIiZjJjDuzgF1sYDUq7ks
         mUV5WEynK4cufL1grCqF0dlpoMVFX7pf26JKV2Uvh7Zaz9rYDSsSOoQUPAb4uF/xIjZU
         4dLxErBUotEwYtVjSxJDzPhn8FZuB/RO+nF5MIJyMDJtL1vqzKUop0xtt4c4qeFyBWP/
         P9jI+kgDK6N6swH2gqCo8cPmWYeE0ylQ1Y9hGff6L/WRfkIg/3cI+532b5km0c/9Qxtz
         L2qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795765681; x=1796370481;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=QV7/azGZskXYhWhh8bvjrBkzYwv/Uf2HoCpYkbr0EGk=;
        b=LvkSxaVZT3Z7/M+Gc22o/8XXEQhq9fl1chkBgJbkJIuKVbmzGkZdu4GJnutMfWdnUd
         GX59/tJ5oqxCtg7V7lsLtYaFqwF8ZVjeFqVn+i4EaOqqu0UxqC5KZy04/5cZ37VIydnX
         670tUYdPd7wsh5Z3qDttGleqUh0Q4qRDFs0iCfEEKahQu3+jyQZCPUrh+0eRNqucZaj1
         ZYDZgMSfkRQmviGpzgifIOYk3yfad/rpAHXCARKHbISayMXjJV2hibeLYdSLNFv4WV+T
         sgP1qOesJwPxQYs83TIgY8q0hKXgpEprNhDmXEdKFxoGaJaIQhpomqZqKfhgDnR5PSVR
         4abQ==
X-Forwarded-Encrypted: i=1; AL+hErHc1VG40LPlGDUH48YcY2/rWhRqBz/1qHW0ZORRftdON7OoCxzxoeNDTcuUrJrAD/+bfdUE/0OgVA4=@lists.infradead.org
X-Gm-Message-State: APuU4Z8pUECpU0X1wcGqMfq/b/uJouknvRFAvm2UOSXa+WGuaZqyWbNp
	rtjK4/acpyKx7Uy+eo1JSuKWtVHRhpi6DLhHFzI1OlLyDfVSzGMJ6Gi6
X-Gm-Gg: AZFdTZe7Atnu46oQq5KjlFqlpU0QyWCoS6y1XCwOsb47bDsktdc4DMU+j+2DOkIkdxr
	liNdoZ0llyRSnk4QwIq+L8juyrZ8O5yRzshbq2JpsfkwIAY5w9br9p1TjxwqterUX/wmzNuq5kY
	gPD+Z0TDP5QAEnoQaMKFyQup24J6I89HzQPfqMfjGGTChKHD0xtD1DV0mLMM4uMs3QHIw+S2LR4
	pm/W+052FUxnIjUhXAhQewDkKEJd0H9W/L6fLEuQ/w+tKOoPwBfJX2MB7f++ZdgyP/kdp3ulC6l
	4Pnqgw8Q4pOzdnb39a9rTkvXD1C3On3cHbxfCzqtDLVCvIKcnqjHN9uWLQMiU34SFuyMb0VGxfA
	Bjd7YS6KgMxbWxIrskaoycPDnsRTID96z/+Ismaf2B2UbnCJUWXJfgfsx/GIvN4f/OEYk4eEXGe
	9i7Iy2QUwbEX2uWktjn122w9XiN8E2ds3vQqyosrVlGK6HOcRUBK1AqC61JbQT10WaQl/g8F9KL
	rZBVKmOVUsXyUkgUi7Ky3cA5Kg+bVMRWVKTUKJl3qR19kTND/WqCw2GIc5LmMLjScKteR1xyimt
	N9TnOWhLs80SGn5EA156Wf2FfrL7uGO/MKYUaxfDc7OkXL0Dlpp3QoRs7CZET2YpokYCVy0rp8x
	27yNckLh5FJham6nUAUbL
X-Received: by 2002:a05:7301:2624:b0:385:1a45:47b3 with SMTP id 5a478bee46e88-3856e24682amr38261091eec.1.1795765680315;
        Thu, 26 Nov 2026 23:48:00 -0800 (PST)
Received: from [127.0.1.1] (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-385672c6f31sm68098252eec.15.2026.11.26.23.47.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Nov 2026 23:47:59 -0800 (PST)
From: Jason Yang <jason98166@gmail.com>
Date: Fri, 27 Nov 2026 15:47:39 +0800
Subject: [PATCH v8 3/9] phy: rockchip-samsung-dcphy: Unwind power-on on PLL
 lock failure
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261127-dcphy-rx-v1-v8-3-9ddfef99221d@gmail.com>
References: <20261127-dcphy-rx-v1-v8-0-9ddfef99221d@gmail.com>
In-Reply-To: <20261127-dcphy-rx-v1-v8-0-9ddfef99221d@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Guochun Huang <hero.huang@rock-chips.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: Michael Riesch <michael.riesch@collabora.com>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Quentin Schulz <quentin.schulz@cherry.de>, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Sashiko <sashiko-bot@kernel.org>, Jason Yang <jason98166@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795765664; l=1650;
 i=jason98166@gmail.com; s=20260721; h=from:subject:message-id;
 bh=W4uqFjWfli07BWEGnXyu4qteuMVlaJHZHz3TMUadK50=;
 b=Gu0eVRuDgeu70F7RSPjzHKcztPH+YfJNOX2TmitsSMipP6dmk3XLTBw0qxoOQ7E27z/ZVeIVL
 49W0elPOCvABZVdIcpA/1gyuWqHTOki4wOqlFDrQr9OYlLDzFUx3Z14
X-Developer-Key: i=jason98166@gmail.com; a=ed25519;
 pk=xQmD001Q/ooHl39PxyQtusbUQmgbOsSfpFryRVWZ/k4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_234801_558005_B58B0CA3 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

samsung_mipi_dphy_power_on() returns on a PLL lock timeout with PLL_EN
set and m_phy_rst still asserted, and the PHY core does not call
power_off after a failed power_on.

Today the APB reset at the start of the next power_on cleans this up.

A later change moves that reset to runtime resume, so the leftover
PLL_EN would stay set, and regmap_update_bits() would not even write
it again.

Unwind the power-on before returning the error.

Reported-by: Sashiko <sashiko-bot@kernel.org>
Closes: https://lore.kernel.org/linux-phy/sashiko-outbox-174059@kernel.org/
Signed-off-by: Jason Yang <jason98166@gmail.com>
Reviewed-by: Michael Riesch <michael.riesch@collabora.com>
Tested-by: Quentin Schulz <quentin.schulz@cherry.de> # RK3588 Tiger CSI1 2-lane IMX219, CSI0 2-lane OV5675+DSI
---
 drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c b/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
index 7382043e1f31..ce1bc62497c5 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
@@ -1343,8 +1343,11 @@ static int samsung_mipi_dphy_power_on(struct samsung_mipi_dcphy *samsung)
 	samsung_mipi_dphy_clk_lane_timing_init(samsung);
 	samsung_mipi_dphy_data_lane_timing_init(samsung);
 	ret = samsung_mipi_dcphy_pll_enable(samsung);
-	if (ret < 0)
+	if (ret < 0) {
+		samsung_mipi_dcphy_pll_disable(samsung);
+		reset_control_deassert(samsung->m_phy_rst);
 		return ret;
+	}
 
 	samsung_mipi_dphy_lane_enable(samsung);
 

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
