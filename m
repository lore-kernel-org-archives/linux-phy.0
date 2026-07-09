Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DD73C43458
	for <linux-phy@archiver.kernel.org>; Thu,  9 Jul 2026 08:31:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5xosDYrmGoUsRMHbtOFmozNnZWdysF5tnOxIxb2rpTw=; b=cpCmb0+/pKKyNv
	PYOC9BFPL9ZD2uftO7R9QzyYwaf4uZxS18UTIn391Cuf7l9tLF6OMhBBne1g6yMYDuDuCgb2C+JGQ
	g3OnLJ2XU0FVcp3Wuk9q2r+Ot6aA8K2ENASw1OOhrLEyU6rpVMWy/m1WuM0HEPCzdWAzvIr5lUWpT
	XUUIBL4stheRb+e5Qzj8ppZKtU4KiwED6q/eGvGnNRC/0o+rdJtm37ZBgcsIJ4n3Cd4+LHyA5Siey
	d03Eti2Abt5iTOeWxyCNHQ7xi44X2Exm8yThyC2GhAISrV3MCxgPmTrm+jqi2LC3EJxckCpYRSROS
	CQ/+a9H1JTwk7fin70Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkAC-00000001QhZ-0Ac9;
	Thu, 09 Jul 2026 08:31:20 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkA8-00000001Qfn-34XT
	for linux-phy@lists.infradead.org;
	Thu, 09 Jul 2026 08:31:19 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-471eeac43bfso1494424f8f.3
        for <linux-phy@lists.infradead.org>; Thu, 09 Jul 2026 01:31:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783585875; x=1784190675; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=nyNRV7QcFyGnKa8fwRiCznyRGL3L2G6gLSo6b8sYAT4=;
        b=arkt1bSM7lH2IHdlj7E13E/AMACptMkOuBh7ujc0NO4Z2cbJsihmXCzBw9q5JeUlG8
         YgT5XBihBgDn9zysR8SHL9GTIyvl/hsJGvWmUlCGwO6bQ/lMLqt74vzXs0UgOS6HnbtJ
         +YqCHTrQb/RYmOidm8pSZ3024zzPkrJuTtgDDgJgDN8jCcHlMZteejjF+GwRwHclCLM3
         D+qNxOVyaXHMfnWntovgsmJpDgYG8OkBIEFXQYgzoz+lroNdlRcx5EiMHbHQgx5Y+VX0
         Yk61WsokUHotxYM2xItPVucU0r4sC2cynaFfdVWg8rmEASOdSUbJQvyXAydbO/k3ZakL
         +c4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783585875; x=1784190675;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=nyNRV7QcFyGnKa8fwRiCznyRGL3L2G6gLSo6b8sYAT4=;
        b=CrlH9nYpmfQk3MBFSRe4e4zai1zAca1mPoGB4G8XzxtLbKVRQhJTfdnImPseOiUktd
         YOFLBtj+giChJBLxlDed7szvKtrttS9oGUpNhcGgqc5poQrWWBDsAxZoFRCyCenOD0Fr
         EyUWnSbquxAfED0Os7ZZchNrpaigbYl3ACbLk9zPrldChpsz9GbNWSW+zJCeqFTt6d3n
         ogadJtOJoHn9VyYGH3Rqwf3ELF0U1Cdi9tFhv2jL52OSqEz0lzhqcj7mRl000xHUhrIL
         OhnvGhJZ8wV+cEPNUr+FzpYlI6bXRlNA4BuEEt9/prMUL389DmGSEujThlQDfIuQLf4M
         WA1Q==
X-Forwarded-Encrypted: i=1; AHgh+Rq+w/TF5S09Lw01plYC8T30h+wPhA6PighcCsiR+1T3DhFQgwwqOLXPXn9dqG90wesP7Zw8DOKGnsA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx34/BNnbUExVdPIvxAPa+8rWZm2YOrKDi1CyAu+AOOzYFtXMeh
	o4E+PCHGhWxZO9YvQPClZdrKVXZANm+hKqVjwYM9ZuMtY4/7VRd+GgpG
X-Gm-Gg: AfdE7ckrFpjjnA51jImpiecQSZAEdVZEZXcaEerocuAEgEt2uXpUvZkXnLlll9s/3Vt
	B5ZYgyW8XN+gJ0DiISBd/rB+iYOQwi/Wv8gcf6PNuqEPjyaryTIvC3hRPOW5TZi9VPxKjCNmJEO
	ghSjE+kXV3FJRMZ3qwUZul+6r+RBS5OXJX9F3kPcVdBpRxU5MM2A8f9xqpPqxxOUEC+PF++L9Gw
	jHJoOdwUNkoW/baNlcxuhllA5axfCL2JYzpnzePprMWcm+X5MaVQnoxaGpTZUav5dCAMWLepFGB
	7pwvNjXjwf7DEx8uTDX6QBCcJz47YyYjs4QmAv2CFipDjT7FU0HpjVn1FZWtYviT2vjV2QNjXI5
	7FHVbbIje6MsvMp3XbmQLZTKUel3zKRxN9MeB6hwmnc62u7wB/ISIlaYsH+GdohC1LSgZcTvzZF
	wcwOFgRpDBNF2ngALC5rmc
X-Received: by 2002:a5d:64e8:0:b0:46d:d6e0:9cc8 with SMTP id ffacd0b85a97d-47df07979abmr6089508f8f.46.1783585874856;
        Thu, 09 Jul 2026 01:31:14 -0700 (PDT)
Received: from biju.lan ([2a00:23c4:a702:d301:8fb6:1d85:3dc1:42ab])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47a9e4d780csm50316543f8f.11.2026.07.09.01.31.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jul 2026 01:31:14 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Vinod Koul <vkoul@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-renesas-soc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v4 6/9] phy: renesas: phy-rcar-gen3-usb2: Add RZ/G3L support
Date: Thu,  9 Jul 2026 09:30:59 +0100
Message-ID: <20260709083108.108370-7-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260709083108.108370-1-biju.das.jz@bp.renesas.com>
References: <20260709083108.108370-1-biju.das.jz@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260709_013116_806432_517E5823 
X-CRM114-Status: GOOD (  11.20  )
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

From: Biju Das <biju.das.jz@bp.renesas.com>

Add renesas,usb2-phy-r9a08g046 to the OF match table, reusing
rz_g3s_phy_usb2_data as the PHY configuration is shared with RZ/G3S.

While the PHY data is shared, RZ/G3L differs from RZ/G3S in that it has
two OTG controllers, OTG interrupts on port 2, and a controllable
OTG_PERI bit in COMMCTRL for host/device switching on the port 2 USB
controller, which is fixed to host-only on RZ/G3S.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v3->v4:
 * No change.
v2->v3:
 * No change.
v1->v2:
 * Updated commit description.
---
 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index 9a45d840efeb..d06fb52ed5f1 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -721,6 +721,10 @@ static const struct of_device_id rcar_gen3_phy_usb2_match_table[] = {
 		.compatible = "renesas,usb2-phy-r9a08g045",
 		.data = &rz_g3s_phy_usb2_data,
 	},
+	{
+		.compatible = "renesas,usb2-phy-r9a08g046",
+		.data = &rz_g3s_phy_usb2_data,
+	},
 	{
 		.compatible = "renesas,usb2-phy-r9a09g057",
 		.data = &rz_v2h_phy_usb2_data,
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
