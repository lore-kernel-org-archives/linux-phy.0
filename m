Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 749C360A2606
	for <linux-phy@archiver.kernel.org>; Mon,  2 Nov 2026 07:22:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=x1ZnEtPm;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=DMUcbWZM
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=KGnN+7wXFKyJUSCVC1GQjydBd2qVD3Eeuqxj+vLCEbE=; b=x1ZnEtPm1iIav+xXFtsFYy50/d
	JhrarzRI4lvs/qo3KGWK4npnlw7t5Ml2n1MrtA6259kbYkZASM5uu+tTLvAh0jOOfiBwn9yvLod4e
	ZOzL7xP7lV0l6d8m9AD9LApGDsU4vgsSJvqyHvqJQAe6WznGL+rbCi3w+r6RG9Y1t7ukOyrKpB/vJ
	QqV8nM9u0lgweRSya5qdq828Z8EP2aDreNSMk/wkPSnaMCf1kQk3S20ISP53cR5wwzKSXlSPXextU
	hYSf5WH+OP3RLEsYMwdwdvocGkjPIKcATGVBUyzQYf2uJ2MU/US3InXAtTvlAaROtn9DAPO0iCPeB
	fy6bXLWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNmND-0000000Fjlj-03DN;
	Mon, 02 Nov 2026 07:22:31 +0000
Received: from mail-dy1-x1332.google.com ([2607:f8b0:4864:20::1332])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNmNA-0000000Fjkw-3WAU
	for linux-phy@lists.infradead.org;
	Mon, 02 Nov 2026 07:22:29 +0000
Received: by mail-dy1-x1332.google.com with SMTP id 5a478bee46e88-36a18fc7a38so4476059eec.1
        for <linux-phy@lists.infradead.org>; Sun, 01 Nov 2026 23:22:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793604148; x=1794208948; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=JB/vt8Yqalu6xBIjfgP9QfXpUFDcSpikq6HleBSGoog=;
        b=DMUcbWZMlD3VgtMCo3/7f51t0epNSN9fPzYUiIjx4LvDLR6inF2wr3Z9WoNhZt8faE
         Pa9/W75rtEGKHudL4agVCEU40RXCBW3EUSDsCHpTIueT8B8ln02lDLGvaR31rsvKn9pe
         8G21MHFy71kVPdIU+g1KvP+6sbbNMKTLaQDh6TDFM7I6mVZTt1ngv0sXpc4spysLC2eB
         qVNtNMn1K7SYnFbZs9b68BvLSYiwlLayfqoAjRKSvA/c2XPyeoLHB+JO5Oz8a1K8lyJc
         9/ATUwq1yhbXsnylhNxTjPIK4Q1uRBaFXbjJsPN6az25hY3DKsqjnZuoYM2WZfKL17Ih
         4rFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793604148; x=1794208948;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=JB/vt8Yqalu6xBIjfgP9QfXpUFDcSpikq6HleBSGoog=;
        b=pXfCo5JI8KsIO2lEjcmkrrHkzhmLEnFEbPc5QhQJ6ETIceyMXhPjSmr3F/4ZfB8cFz
         +FzP+wTHzp7j0BI8y9al7h6F8G0TxgZUQjvTMrDtUdINwQi07y2bYj+REpgNbzFOtL2w
         v/Lulo+4PlDw7GNQIlGx0N5ErH2X9y4BBglovzaZG2Uzj6YzyB8p4d0iR/5a9C207r4y
         IfFMu2cXYTvyFcmubs7hCvSMk8Ay7QoTBPSn4ZQQs2mGf4PFSHSm1a0oyqxdXT/aA8xs
         k6v8luAwzunGbR6DGhUNjHHDmMubPe/NHPXn+aHo0YQ57N+IN3SPWYc/TVHweeXs78Ov
         knig==
X-Forwarded-Encrypted: i=1; AKwUvBwGEw2MVFqFpECQMdjLiH1ivfGpkYSqInW2mlliPT8gNOxQaArTmFI+d2OtCe/rSihJj0QdA7TeMws=@lists.infradead.org
X-Gm-Message-State: APuU4Z9hL93UME0BgfyRaJa9cS0ySwookIV4qJE2erb5bXr/DEUR+hNM
	aaZYrCxhLcupeL1jFQ3CEjXNXQEqGaamHr1boPinh75j8nhd1Qrj4AqU
X-Gm-Gg: AYBFou0bQc96n7DdfOi1KtBKX8Q0jch+rGzDnrg5sdwkQkkxvJ3NTPJfiVwRnXC1oxR
	w+Q88bbv9EvFf1tg9UcVEQByC0ly2qyMkJ49SPJkhyDsALrR2EaJScjZ8nq+38vApwA/RzxTLFz
	Z/5yjpcEDXWZScH5hVnCx0w76tgttG8dQZ9hixXK1ewgWTYdjgq3/EMxv7lD+jsUG+ML02xU8RL
	vFSe07THYCG8NTjS6cM7BtDaxQwbVBnHh0uVnV6/MKBSbI9LvorO9oGXTCodalzE8pkDBmYz2pm
	3eL0XAfcYxargGEV1mSeKAPYFIVGHZ4NEHHQIBntDLVfW+NPoXlcUQr0eikPOrkmoV+lHklWuSJ
	3c7rbvdyd2joSBE0pqH7Qen0V6C0WMkCBPLAwPOJWVgVixDTTh1JtdgbThUBHknGZBINtYufYV0
	NhrZuScZ/MedY6l0ev5fOu4dkx7jtIkkZPQyMVB+OCdzJlocFTDPHR9PcafCIcJWVS25nEPCUrh
	5hPoT0f2Vlgb8K26ol12lSZ4RaYWNwvb+bNNeosddANrsXqUh5dlrByBLmwUYre3hxGDclDJjHI
	UOh/Mph8UX1n3tM1tGeARmuppXrc8H7CF2iFbitIW67IMA9Q8T4=
X-Received: by 2002:a05:7301:4706:b0:369:eee6:ee2c with SMTP id 5a478bee46e88-36a4221bc98mr13867197eec.5.1793604147501;
        Sun, 01 Nov 2026 23:22:27 -0800 (PST)
Received: from localhost.localdomain ([103.178.205.93])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36a428af1dfsm36376021eec.7.2026.11.01.23.22.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Nov 2026 23:22:27 -0800 (PST)
From: Sreeraj S Kurup <sreekuttan2156239@gmail.com>
To: chunkuang.hu@kernel.org,
	p.zabel@pengutronix.de,
	vkoul@kernel.org,
	neil.armstrong@linaro.org,
	mani@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com
Cc: dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Sreeraj S Kurup <sreekuttan2156239@gmail.com>
Subject: [PATCH] phy: mediatek: mt8195: Check PLL driver setting return value
Date: Mon,  2 Nov 2026 07:21:39 +0000
Message-ID: <20261102072139.3588-1-sreekuttan2156239@gmail.com>
X-Mailer: git-send-email 2.55.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261101_232228_876907_9634CC7F 
X-CRM114-Status: GOOD (  11.58  )
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

The mtk_hdmi_pll_drv_setting() function can return -EINVAL when
the requested pixel clock is outside its supported range.

Currently, mtk_hdmi_pll_prepare() ignores this return value and
continues with PLL initialization even when the driver settings
fail.

Check the return value and abort PLL preparation on failure to
avoid powering up the PLL with invalid driver settings.

Signed-off-by: Sreeraj S Kurup <sreekuttan2156239@gmail.com>
---
 drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c b/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
index a4bc1268946d..9658781484f1 100644
--- a/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
+++ b/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
@@ -360,6 +360,7 @@ static int mtk_hdmi_pll_prepare(struct clk_hw *hw)
 {
 	struct mtk_hdmi_phy *hdmi_phy = to_mtk_hdmi_phy(hw);
 	void __iomem *regs = hdmi_phy->regs;
+	int ret;
 
 	mtk_phy_set_bits(regs + HDMI_1_CFG_6, RG_HDMITX21_TX_POSDIV_EN);
 
@@ -374,7 +375,9 @@ static int mtk_hdmi_pll_prepare(struct clk_hw *hw)
 	mtk_phy_clear_bits(regs + HDMI_1_CFG_6, RG_HDMITX21_FRL_D2_EN);
 	mtk_phy_clear_bits(regs + HDMI_1_CFG_6, RG_HDMITX21_FRL_CK_EN);
 
-	mtk_hdmi_pll_drv_setting(hw);
+	ret = mtk_hdmi_pll_drv_setting(hw);
+	if (ret)
+		return ret;
 
 	mtk_phy_clear_bits(regs + HDMI_1_CFG_10, RG_HDMITX21_BG_PWD);
 	mtk_phy_set_bits(regs + HDMI_1_CFG_6, RG_HDMITX21_BIAS_EN);
-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
