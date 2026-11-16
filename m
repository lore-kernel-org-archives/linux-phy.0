Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65A66606A31C
	for <linux-phy@archiver.kernel.org>; Mon, 16 Nov 2026 10:56:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=tPCl2RFV;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=QqAV7S4c
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=FP1FzOhwr3iUDBldsfja34eDHOoSpoRc5hmQ3XRM498=; b=tPCl2RFVNS08l39BvX9LBa/4Gp
	OcF1Ctbp4imzdxnGhmZfrzQtTRZnm6XkRUVCH6NX7KVklZOCSRX79nZ2n2x3AEBLartXNvQoBad2y
	PGAzwTwI3AZd8lRiYHexFnhzCtEIzA3BuTMI/4gtKcsWgtfppMcdOz/tR8HxfGdXvAT5EOTE9hyGG
	QLh3Nd3sT7WMtEjwLajV9SIX9U9uVzQbTlYkvdQTNjsCZgzagvs0RSKTrX8ZIwdqIrNH4VrxP41jK
	wGRn9bykbaT6rEKlrbojK41/dLfGwZL9044SIKAQERHBfbSgPDsiMsD6hJITigD6ZSGFuSMAXWY56
	tpGFVxiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSuNu-000000022cZ-0WJr;
	Mon, 16 Nov 2026 10:56:26 +0000
Received: from mail-yw1-f173.google.com ([209.85.128.173])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSuNm-000000022UV-3RO0
	for linux-phy@lists.infradead.org;
	Mon, 16 Nov 2026 10:56:25 +0000
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-8b360828905so29713627b3.2
        for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 02:56:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794826577; x=1795431377; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=mXHs4M+7tfkoIg4sYbiMPquQrDZ3R0cBJAsjaurMG7I=;
        b=QqAV7S4cFwkpP8uPlNiKM13EwFqxElFPqqxN1iq25+RBpC61POAWK3SeUhsHIh54UF
         EK/ngzya8bqkUaIhfdvZoP6R+IDYg0OImyEl+ByMkPqNwltn1961q7Ppi6kVnpmz2yJC
         zVjB6jXPnzA+jAyakqCYs+1RYC3WotRx70z5jiCMTGK5oW7RlRHzHgfGLr4tBSF7j/Sd
         mBIuSieEMKcXSRiZ3Dfo18R4kzJfGYCxyonwmtpuzCGAtRvUhP2r0k8R9+Q6yAFye8o6
         OBn5wo9C0ydts8aOHOuh6mfsLpgwZ4druzOBFbFXBKaHhjxJ6JKbdVKYkTzmbZpDxCVV
         6MKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794826577; x=1795431377;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=mXHs4M+7tfkoIg4sYbiMPquQrDZ3R0cBJAsjaurMG7I=;
        b=ULk1V87NbiE+SiNHAS7qM4GitcpXgwXtUkiu68seHvXmwvVI+YAgsftU5tbIWab8/0
         CJsCADOkuSw+5DbQALtzH0X3RV/eTe+yqD3ytvXhnlhsnPgQHfGSjTHY5fTbsc/pW0cR
         QRt0z8Q4m9DnFuzvsDrYTpwphW+kD5Z4J+IC5Bkwpd2B4Mo+uGmYzfdtfNqNva7qiZC4
         irf5bqyNo+T/lVq49ylkAV1rjW58W8Yw3J7WwF1hojosstLlqI9yVHO0ukmpFVBNYp71
         9nGZAjleXPOw2KvYJnNeQP/c6PP5/LvqQySW1vPtnVkTZQebPkix3PQip7hFU2UALvYY
         j4Ww==
X-Forwarded-Encrypted: i=1; AL+hErG5IynGUazDCX64CnmmlR4jyQ+TMjmcufA9mwOM4rMFWFT0ii7QnzzV0o0vXzVW6VFYzkg1qiCWlsI=@lists.infradead.org
X-Gm-Message-State: APuU4Z+yDvMd9/HV7AopAz5hEz1gzFWjtA1Dddx79DIfrEkZg/G0KurW
	5ejmt87HqECX+vmhy20/R9BdVYP5ORnZJitBGu6fWZIgP8r9No//rxYo
X-Gm-Gg: AZFdTZe33/KJLzuZ/ONx+9PfPKGiEI262Vtj9bo9uS/0a03Eh1uJjRwLB6b/GOOSMUj
	ous2LIwSQ6BcloblUM1Ax4jdZAseW3Tm+/HGm4cSqRUzIH3yMreSvMSpfopOfWrGsH57p1+cTIG
	LFdRAu0BuCOqPGrOwJUqH422+jBoPdlOrlsK4jibhEuTSKrYHAmYwyrpilI4iQdZSgMQlWZsGaO
	lPIQthkFauFBvMT8oVbp9yhXHH1RZKmU/8uXXU+jBs+jxwaiG3ls56NE7ZP+cE5B/wsvV3ILV/y
	nKoYf8vy+UcgUgcOlsvcAlRNjKN5XPgwLrcBA6IzZFxDG3XPfKOfHvQ7bEBJ9USN2DWPw4c+LXz
	7ImOWHIWmrzTKSB8q45Y9vQCfWaTQnM1aprgziGiLWByT+Ogu8vU7VUBSDPhfi/MsXdytZBc7kW
	wQP/2pxNZdv1ohYds2q9Mztq0Y5haEfHAfBU7NeFj9cbc6TS71jj0kUpBSKTQubr0GaowgeRnQA
	mC3sFsucMCWCQCSTmkszib+HH6Hupfj6KP89kWZWvXEnaMWPc0h75Q+8ALJ+ML+eN5Ipqry83AO
	dBe9pm7zAkZzjbXQs5essgIgrCKffO3kSZy4szRhfIRM9dZtyumuzhypWPVbQWhSnWH6E0S1uu9
	JnvSmMjgsONt78b7EU4Jm/umUM6lwMOykgeVU
X-Received: by 2002:a05:690c:fcd:b0:8b4:cc58:7901 with SMTP id 00721157ae682-8b4cc5882e4mr22480827b3.8.1794826577207;
        Mon, 16 Nov 2026 02:56:17 -0800 (PST)
Received: from MaquinaLab.. ([2804:1b2:aa41:8a69:2b8b:32cb:351d:f30d])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-8b4aa7f1a0dsm82274987b3.1.2026.11.16.02.56.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2026 02:56:16 -0800 (PST)
From: Vinicius Pedrosa <vinicius.eduardo.pedrosa@gmail.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Andre Przywara <andre.przywara@arm.com>,
	Xu Rao <raoxu@uniontech.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] phy: sun4i-usb: clear SIDDQ before the PHY reset on A733
Date: Mon, 16 Nov 2026 07:55:44 -0300
Message-ID: <20261116105544.669029-3-vinicius.eduardo.pedrosa@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261116105544.669029-1-vinicius.eduardo.pedrosa@gmail.com>
References: <20261116105544.669029-1-vinicius.eduardo.pedrosa@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_025618_974200_B33E7620 
X-CRM114-Status: GOOD (  17.86  )
X-Spam-Score: -2.1 (--)
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

sun4i_usb_phy_init() deasserts the PHY reset first and clears SIDDQ in
the PMU HCI_PHY_CTL register afterwards. The order comes from the H3
support and the reason for it isn't documented.

On a Cubie A7Z (A733), the Wi-Fi module on USB1 sometimes came up
at full speed on the OHCI companion and failed enumeration with -62.
This happened in 3 of 40 warm boots with a separate local PHY tuning
change applied.

With that tuning disabled, the current order failed once in 31 warm
boots. Clearing SIDDQ before releasing reset had no failures in 60
warm boots in the same interleaved run, or in 10 cold boots.
Why the order matters is not understood.

The vendor BSP clears SIDDQ while the PHY is still in reset, in its
common host path.

Add a config flag for the early clear and set it only for the A733,
whose config is otherwise the D1 one. The other SoCs keep the current
order: the manuals don't specify one and they weren't tested.

Signed-off-by: Vinicius Pedrosa <vinicius.eduardo.pedrosa@gmail.com>
---
 drivers/phy/allwinner/phy-sun4i-usb.c | 35 +++++++++++++++++++++++----
 1 file changed, 30 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/allwinner/phy-sun4i-usb.c b/drivers/phy/allwinner/phy-sun4i-usb.c
index e2fbf8ccf99e..c918085a9281 100644
--- a/drivers/phy/allwinner/phy-sun4i-usb.c
+++ b/drivers/phy/allwinner/phy-sun4i-usb.c
@@ -105,6 +105,7 @@ struct sun4i_usb_phy_cfg {
 	bool phy0_dual_route;
 	bool needs_phy2_siddq;
 	bool siddq_in_base;
+	bool siddq_before_reset;
 	bool poll_vbusen;
 	int missing_phys;
 };
@@ -253,6 +254,19 @@ static void sun4i_usb_phy_passby(struct sun4i_usb_phy *phy, int enable)
 	writel(reg_value, phy->pmu);
 }
 
+static void sun4i_usb_phy_clear_hci_phy_ctl(struct sun4i_usb_phy *phy)
+{
+	struct sun4i_usb_phy_data *data = to_sun4i_usb_phy_data(phy);
+	u32 val;
+
+	if (!phy->pmu || !data->cfg->hci_phy_ctl_clear)
+		return;
+
+	val = readl(phy->pmu + REG_HCI_PHY_CTL);
+	val &= ~data->cfg->hci_phy_ctl_clear;
+	writel(val, phy->pmu + REG_HCI_PHY_CTL);
+}
+
 static int sun4i_usb_phy_init(struct phy *_phy)
 {
 	struct sun4i_usb_phy *phy = phy_get_drvdata(_phy);
@@ -270,6 +284,10 @@ static int sun4i_usb_phy_init(struct phy *_phy)
 		return ret;
 	}
 
+	/* Some SoCs want SIDDQ cleared while the PHY is still in reset. */
+	if (data->cfg->siddq_before_reset)
+		sun4i_usb_phy_clear_hci_phy_ctl(phy);
+
 	ret = reset_control_deassert(phy->reset);
 	if (ret) {
 		clk_disable_unprepare(phy->clk2);
@@ -321,11 +339,8 @@ static int sun4i_usb_phy_init(struct phy *_phy)
 		clk_disable_unprepare(phy->clk2);
 	}
 
-	if (phy->pmu && data->cfg->hci_phy_ctl_clear) {
-		val = readl(phy->pmu + REG_HCI_PHY_CTL);
-		val &= ~data->cfg->hci_phy_ctl_clear;
-		writel(val, phy->pmu + REG_HCI_PHY_CTL);
-	}
+	if (!data->cfg->siddq_before_reset)
+		sun4i_usb_phy_clear_hci_phy_ctl(phy);
 
 	if (data->cfg->siddq_in_base) {
 		if (phy->index == 0) {
@@ -1013,6 +1028,15 @@ static const struct sun4i_usb_phy_cfg sun50i_h616_cfg = {
 	.siddq_in_base = true,
 };
 
+static const struct sun4i_usb_phy_cfg sun60i_a733_cfg = {
+	.phyctl_offset = REG_PHYCTL_A33,
+	.dedicated_clocks = true,
+	.hci_phy_ctl_clear = PHY_CTL_SIDDQ,
+	.phy0_dual_route = true,
+	.siddq_in_base = true,
+	.siddq_before_reset = true,
+};
+
 static const struct of_device_id sun4i_usb_phy_of_match[] = {
 	{ .compatible = "allwinner,sun4i-a10-usb-phy", .data = &sun4i_a10_cfg },
 	{ .compatible = "allwinner,sun5i-a13-usb-phy", .data = &sun5i_a13_cfg },
@@ -1029,6 +1053,7 @@ static const struct of_device_id sun4i_usb_phy_of_match[] = {
 	  .data = &sun50i_a64_cfg},
 	{ .compatible = "allwinner,sun50i-h6-usb-phy", .data = &sun50i_h6_cfg },
 	{ .compatible = "allwinner,sun50i-h616-usb-phy", .data = &sun50i_h616_cfg },
+	{ .compatible = "allwinner,sun60i-a733-usb-phy", .data = &sun60i_a733_cfg },
 	{ .compatible = "allwinner,suniv-f1c100s-usb-phy",
 	  .data = &suniv_f1c100s_cfg },
 	{ },
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
