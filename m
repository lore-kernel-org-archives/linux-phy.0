Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6705EC44501
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jul 2026 15:41:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LF+hGcNv41xHq6EDYkfNf7J48oOLDQt+P9cB3HFAI+Y=; b=NGCq0zAV0+3oMB
	28SvCpG6z/Z6UuM2WCVvCGNeg+FVyEKErL9sHrnWSsguXhqUcggGiZPFoNxpMgdbAKcH24QYqeEgs
	tN7GkiLKEqoTeVzGIrjRjgvjU16/Atr64Z6lW4fpD+irQzgQflJ1VAeBAfn1eEIaSHRTrY3zJwoN7
	J+445iUXRgn9kWmqyIABYsS5+Y73m5snUNuUlxLoN8+JDUH20cXb1YLNYGVXNk5bwfI2CCBEUC7zD
	Ivtd+zfyRjW/EIcmRgksT5DmBR/DhUwKC6zYt57Qn3Peeoybm5R7g0tqv1tvHxg+GakJpCyd2ZNtC
	VNMtehvTlvhqanxtl8WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjfGL-0000000CZ5J-3Kom;
	Tue, 14 Jul 2026 15:41:37 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjfGJ-0000000CZ4X-1xS3
	for linux-phy@bombadil.infradead.org;
	Tue, 14 Jul 2026 15:41:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:In-Reply-To:References;
	bh=7GNTtKuo/BgF6mYC1Y9daW/AtQJUyZsBrVhnEirUr/Y=; b=b48nfEvIOIHmeJsv1P0ZnD+5ZN
	RrFYyHltr+IxirE60ByE0isJvKrFeaEHOWdwq5SrDAotrzVqUbBb6CeZW28bFC9NShkio+F6BY31C
	IL8UryH1cuAAw8doZt0m3H8hOiRTn3KDOwzlIPV3Y1503GHLzwToq7OHCsLeSbfuSwyDwKkNglvet
	xXiHcH3vS6w0n48iFOdp2LUQkVhf8PTnIrcURyrpuOhLFBaBNx/vnzdR0oQ3NNq234s3GQC4ZPB3V
	iV67BNJ808taZGMFX0X/feNrc7++6A4mvLbNSO4rm5GIR008PlGZiiDNOlnP6HjMppRLlsXJ5AQhS
	rT+LzI3g==;
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wjfGG-0000000CedW-1bd0
	for linux-phy@lists.infradead.org;
	Tue, 14 Jul 2026 15:41:34 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-47640541585so2145514f8f.1
        for <linux-phy@lists.infradead.org>; Tue, 14 Jul 2026 08:41:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1784043690; x=1784648490; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=7GNTtKuo/BgF6mYC1Y9daW/AtQJUyZsBrVhnEirUr/Y=;
        b=HBvk+ixjMzE4orYy9HO/H3ch4RLti4yMGMX32GBLJ8F8b5iDxGuyJQxSIweF67y+CM
         IVFgNOtzCiPIKzF35Fgwrr55A4kutXk8A7bsx4vaWrm3c4omgdJxeE0fAG4069TIS/NU
         B4Yp1ximF98MnfSm5xc0/MuxShXFKgV+ElM49Pu3P45dWzK/fFTuVaWPh6zqfaA5yt8t
         W4W3vcRG9x3i4Jm8dTCa3H7HQIBBHnUCL0DbeCOxdr8sm+9+oqExgmgIIh535FCUUFsp
         PPN0rVQRzS3hou4zkHWeo06uuDROgugN12IG2k9OVAYDvp+k6tSvjtgDa52R4ZJuQWsK
         QAeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784043690; x=1784648490;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=7GNTtKuo/BgF6mYC1Y9daW/AtQJUyZsBrVhnEirUr/Y=;
        b=UpZd/hktS3DhX4daCa40nt/k+nVvEcj5siGiQNsgswn5FajUu/z4px6Z8Qztd9y9xg
         LLGi/nng6ka1girSYP7gbYrCN8n2DtwgM45uyPHKzngOKP4E36/hObNzogM7O7dd0gFI
         zoKQXGRq8mqTkUvcIGx0+tDqeBN3sOfpxktueXvLUnn51vY23+PY0HCS5EcHJvYW24T5
         BSROWfALqO5VQCFuY7A+BnjHnK5SpcSyImIPDJuFOoBgAqQKpEzG0SNHdquWQczFRDcF
         07kQhsY2lrlGfRwRU+5F3qskt9tDwNTmGKv2EupEBc1nauifoOYxggXgLTdpAVkrlxSp
         Dw1A==
X-Gm-Message-State: AOJu0Yzx/QUCDOBriin9I91BeKa6wjP4CG6R7Dh/u69rt/XCIaHAuNle
	vFgpaNbcoJos62YNZXXUImVcSnQHoCTN/aq9aGhQgFVoBIDVIv0YYGXu4GXBKev0xTP5TP5iEoy
	r25vijs4=
X-Gm-Gg: AfdE7cndeuZG7RlqVHFweno2NC0x8MOvfYCqSoqpp7jza4K25wVnshtIYgS5xqmoxNd
	Qq4pZpm6diF3NhsUHDPPJCKrBkYNCZpuy3kxQBowgSgY54OVGn/HeXzS2PDV+9B2TE8L0MQp8u2
	hoASS9rtliS5K4aC7Oy53LR4U4BC//uNlhjyWTWjxMr9hOVg1vurTdWmgWpjmloi5ifE6TH8QI9
	SDkk1muTAH0bY4A+q7/JMs86Nb/Bs2HZBMxGq0Kf5Kzzy2+G/fjFVji9rTDUZfojyVNRqR1E/ox
	L7/IwANpgE9L6Iv4TplJBwsjABQt1C/wyD5uhu1HPUxbpnJ7ODq8o32UtsmsaXQPoPWgUb9O6UX
	w8Y6l/QqWeeh8nsi5pEdPzOZ56qHCjz59oAi356h1LTFDrXuUUeaxTRwZfGXnPAoBKXsjI3Fb+D
	UeeQ6W6VxU9eBmxMLiFzM66WQtdNvdr+vKzvAjpq32kpspzeYFvUmixuqjr8S/6BPABoQiKnr8Q
	5c=
X-Received: by 2002:a05:6000:71a:b0:465:81cb:bb20 with SMTP id ffacd0b85a97d-47f2dcadd2amr15226174f8f.9.1784043690339;
        Tue, 14 Jul 2026 08:41:30 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-92-99-174-41.alshamil.net.ae. [92.99.174.41])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47f4635aa34sm8423240f8f.15.2026.07.14.08.41.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2026 08:41:30 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Tue, 14 Jul 2026 19:41:20 +0400
Subject: [PATCH] phy: rockchip: naneng-combphy: Always configure SSC spread
 direction
MIME-Version: 1.0
Message-Id: <20260714-naneng-ssc-fix-v1-1-1c40a58061ae@flipper.net>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDc0MT3bzEvNS8dN3i4mTdtMwK3RQjSwtjA5NUCxMzSyWgpoKiVKAw2MD
 oWAi/uDQpKzW5BGSKUm0tACiDjh1yAAAA
X-Change-ID: 20260714-naneng-ssc-fix-d298304e8469
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 stable@vger.kernel.org, Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2604; i=alchark@flipper.net;
 h=from:subject:message-id; bh=qevuPbC3ipAlHnx/CLyUvELDYmFet0ftlCCOj1w52vw=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWSFRaxYI1zXUFp7/tEFLfUjJytz+9Y3OxVs9w5hb3Zdn
 LTDmel9x0QWBjEuBksxRZa535bYTjXim7XLw+MrzBxWJpAh0iINDEDAwsCXm5hXaqRjpGeqbahn
 aKRjrGPEwMUpAFOt8ILhn3aXaFhPz/bVMU8Sly72e5w51a8sv+OI37nVl/MvnT3yZxIjw9+o30K
 3T7cvC9U526nROT/Gcd2ej+JfDLdb/j2kINCwigUA
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260714_164132_561626_18B42D17 
X-CRM114-Status: GOOD (  13.38  )
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

Commit 0b31f297557f ("phy: rockchip: naneng-combphy: Consolidate SSC
configuration") moved the SSC spread spectrum direction setup into the
new rk_combphy_common_cfg_ssc() helper. That helper returns early when
the 'rockchip,enable-ssc' property is absent, whereas the equivalent
RK3568_PHYREG32 direction writes previously ran unconditionally in the
per-type switch statements, independent of whether SSC modulation was
actually enabled.

As no in-tree board sets 'rockchip,enable-ssc', this changed the behavior
at least for USB3 on RK3576, which now fails to bring up the link.
USB 2.0 still enumerates, but USB 3.0 does not, and the SuperSpeed root
port floods the log every second with:

  usb usb2-port1: Cannot enable. Maybe the USB cable is bad?

This was observed on two different RK3576 devices with a CoreChips SL6341
USB 2.0/3.0 hub connected to the USB DRD controller running in host mode.

Perform the SSC direction writes for PCIe/USB3 (and SATA) before the
enable_ssc check so that they always run, as they did before the
consolidation.

Cc: stable@vger.kernel.org
Closes: https://lore.kernel.org/all/CAKTNdwH_ZMQa-97h+tqdsWqXKtorkFF9wHAMn60-8ZGKuze_Mg@mail.gmail.com/
Fixes: 0b31f297557f ("phy: rockchip: naneng-combphy: Consolidate SSC configuration")
Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 drivers/phy/rockchip/phy-rockchip-naneng-combphy.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
index 2b0f152f5470..7843356a4dd4 100644
--- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
@@ -452,9 +452,6 @@ static void rk_combphy_common_cfg_ssc(struct rockchip_combphy_priv *priv, unsign
 	struct device_node *np = priv->dev->of_node;
 	u32 val;
 
-	if (!priv->enable_ssc)
-		return;
-
 	/* Set SSC downward spread spectrum for PCIe and USB3 */
 	if (priv->type == PHY_TYPE_PCIE || priv->type == PHY_TYPE_USB3) {
 		val = FIELD_PREP(RK3568_PHYREG32_SSC_MASK, RK3568_PHYREG32_SSC_DOWNWARD);
@@ -471,6 +468,9 @@ static void rk_combphy_common_cfg_ssc(struct rockchip_combphy_priv *priv, unsign
 					 RK3568_PHYREG32);
 	}
 
+	if (!priv->enable_ssc)
+		return;
+
 	/* Enable SSC */
 	val = readl(priv->mmio + RK3568_PHYREG8);
 	val |= RK3568_PHYREG8_SSC_EN;

---
base-commit: cc2b5f627e8ccbae1188ef2d8be3e451d7f933a5
change-id: 20260714-naneng-ssc-fix-d298304e8469

Best regards,
--  
Alexey Charkov <alchark@flipper.net>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
