Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1C2960A260A
	for <linux-phy@archiver.kernel.org>; Tue, 10 Nov 2026 08:18:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=nDvm2ZR/;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=xicc4Bbx
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=LxVrOKg/kkEExiAhOIJ0LQUPdHul43RuJ4BqcfWVOC0=; b=nDvm2ZR/bLtnSAQxGrHOs+w2Vk
	rnNsXoFx0ckiyrKhF3XX1SBd6oGyXXWBrxNeuuRMNtjrEjbRWrUFg29uq8it7WuBtlzlmOXuPGcqR
	fGfdM3nkc/maQQhkvxwIjOBUIYEIb/TGtaZX8XIyze102Yn1bX+z8u5Wp63g7gOYLgIWr6eOgRzMZ
	upgI74OaVUNBlCjTUOEEB+yyy/9kgKPK/opumjcviEeIYPTnHpRhhJCrCL8uFev8eryHRpo39M2Xj
	csVDycAnzhbR70uS/UDrtVAmIS6eIIlsN7agBS99NVcp/uw0ROPOmWF0Tp7BgYDo9iItwb4+rdpAD
	GdXFBd7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQh3s-000000034cB-2RYt;
	Tue, 10 Nov 2026 08:18:36 +0000
Received: from mail-dy1-x132a.google.com ([2607:f8b0:4864:20::132a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQh3n-000000034WP-456Q
	for linux-phy@lists.infradead.org;
	Tue, 10 Nov 2026 08:18:33 +0000
Received: by mail-dy1-x132a.google.com with SMTP id 5a478bee46e88-36e2b1db9bfso204180eec.0
        for <linux-phy@lists.infradead.org>; Tue, 10 Nov 2026 00:18:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794298710; x=1794903510; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=/CKr1kEi8VZLmxn0omdbiYtt+CDZQCwiRpNUGKV8mro=;
        b=xicc4BbxP0LukJtHzlqA5llz0WThXhNek4H3utiby8jMWIqTW5TIhXMoO2q46+D5TP
         WRYoz/vnnD7q17uWw9wGZc5fJ1BFCQguSPClmpneBU2VI1WxFD117JuwIFeB+cigYk5y
         gLqGHU0WO8BTIdW1SBVM2n7WIvlQ5tbo2PELda/o3Ioq122d92JimmCEK1IeZ8L6aIoW
         kRYogwS6EGdQVYy5P61jMR/jV7AHpZtnQ2biuL4q1+kx79keOA5bFh3jQ2Aev8qMjvkS
         p7v1qXw2Y8S9N5J8HgCXHvTi3ywKKW+UuTXqrQCsnY0sjVnfY4ynFMVP9fuL+e6qLZwR
         jKWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794298710; x=1794903510;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=/CKr1kEi8VZLmxn0omdbiYtt+CDZQCwiRpNUGKV8mro=;
        b=BRHxN0+yHNhu5VhgYKF1/5MvL/SJcMJAHQB4XPcuOyRLlcBGGGhfnEyEr+in1ic1VD
         uKzlLdHVVwTHYKSTYiv7o/iFxfXszgCpp6LBBd1ge/2abOg8AgFzAdcftqfMfVXZsdSU
         9IluCfrA0/r6H3W6lzqWBEWcPRf0/gyjLSFddPDhhS1fX9HE40SzUruXnW2Qnun1bFBN
         RXvqPUlkqbSbYJChroJzQO31iETGAjjbWT35RCiW9QN5IrpSm6FwHCicJQsWuiKK26T6
         YuQm6NxdOpjUv+5bit/eQtYAFhaxpRpKORyv44T6bv4ZQvN2zXxpb05zZEwoHxAhkcKu
         HL3Q==
X-Forwarded-Encrypted: i=1; AL+hErGD23mJP6feQm3lhg1WkhTz6I8DrumImNXoiSQBqPLsPOTUb6dh2D/cGvMyXk57AwrHXfuDcyGUDbA=@lists.infradead.org
X-Gm-Message-State: APuU4Z8uTikiPzNn02cax8yvNkBR3VFvow1ZBBSvkrMPdHAKZhDyt3aE
	x70rCG4NhDXovr/Ax8fbpE3ArC5sSrmh+eqAzh3hKLdlwyVuRUbZAiTl
X-Gm-Gg: AYBFou0wW8Pcq70tsPvIJ/z8mAU6QCIJUEIWjZM7kZRMZA9WxMsfO1xnUpXsePVKvtD
	Ndgbeq9ONbWfYgk5i506FIzuj7D149y2cgnBxFQyneOpIbuAbvRNTvCmgJQbuZIj0LS5RKq6dwS
	5OhexgrLgAEd3zgx3uai5pqqPpfknJTOAc49paPFO0uhRBvNzw4y6epYyjbUDRf2EzbduFp9XCO
	vmFwthG1fEsl7nvvdZHzqQooKwYkzm3n6wbZSn+WoeWrTI6xmqcvV96ms8qnyro9//MtlfJmI0w
	gxAFfas+bLr93BxQezbh1AGT7Yr91sgWzI7TNj2UZTwzWRt5nxOKjLJLhES16KVG0FmOD76R4K5
	Ac+7aGxaKnyd4+5KPsD9AQzfuov3EsWWRZn36xdzeo8p2qqoWmQtxlkGb+SeD2+gs2/vNQtyanB
	sNTocIv3diBiFIHsk4qq6gmTWVF21JfRCZBR6cRjasYvlqEP9f0OayetjkY7ysRvDYaC87/mA5T
	d83WcLLe+1XM2yMzggPab2RnKumZjQ47LWg4G2jJ4ny4f4brkRrgag3zLEqmal84TdxCoeQSpbN
	wnUHrZnNwO8882+AeOmoy9DtHiscsl1yuPGTz3NZcnIYjqJVtKTxbZ0gBOCkEg==
X-Received: by 2002:a05:7022:f502:b0:17f:641e:7f6b with SMTP id a92af1059eb24-1b3b5fbb37bmr3713432c88.1.1794298709534;
        Tue, 10 Nov 2026 00:18:29 -0800 (PST)
Received: from [127.0.1.1] (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b3b5b2fc14sm5236759c88.12.2026.11.10.00.18.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Nov 2026 00:18:28 -0800 (PST)
From: Jason Yang <jason98166@gmail.com>
Date: Tue, 10 Nov 2026 16:18:06 +0800
Subject: [PATCH v6 3/9] phy: rockchip-samsung-dcphy: Unwind power-on on PLL
 lock failure
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261110-dcphy-rx-v1-v6-3-d681ba20b36a@gmail.com>
References: <20261110-dcphy-rx-v1-v6-0-d681ba20b36a@gmail.com>
In-Reply-To: <20261110-dcphy-rx-v1-v6-0-d681ba20b36a@gmail.com>
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
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Sashiko <sashiko-bot@kernel.org>, 
 Jason Yang <jason98166@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794298691; l=1478;
 i=jason98166@gmail.com; s=20260721; h=from:subject:message-id;
 bh=NxS9d/s7pydolKNqGjxDl7brlQxmJp2mA7Qr0lzmsSc=;
 b=hK5LSp5p1KXM3oD1W4e88Z83BYsDKcZyvMoCmAJHxlugKKCpNWqKdoE8suj99bc1BLXvTOoUG
 0d0VgAU4krZB9H71TVakaDDs4idjmzjDPoUED7Z6C9RnSeNLvWX8nph
X-Developer-Key: i=jason98166@gmail.com; a=ed25519;
 pk=xQmD001Q/ooHl39PxyQtusbUQmgbOsSfpFryRVWZ/k4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_001832_022438_3C0E2284 
X-CRM114-Status: GOOD (  13.59  )
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
