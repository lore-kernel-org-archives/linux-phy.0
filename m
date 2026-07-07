Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 677FFC44501
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 14:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IPfVgRwFSoU+0R2lEGYNoDHgpkpyZN4OFjqpXI8XA/I=; b=i8tluuPk8IGtXc
	dPOKJODZDTiih9CZuQ4H4neMKCppayQUhYaRZo24aLuPcd8urMNKjdB3bQLSz7JDlEq/ti07TEN++
	kdxv6p2DxcD2ANqfbWZYnTIhDF9Y5d7JEPWtDx3GBKuAfrCM2Gq7BxXcDHMC99LyYfWYGBW92ekcZ
	t23bReifjVq/BeOHbAjVZHVF2UcIskOgo6Kf9Dm0gjt4IfWo18V6YdPncPON9ayhkj4KjHvhuEmpU
	I8y962W9uoqOyvC5tPWcdWMaAUO0WoBmrTcSKnYux2soZdFlGBzf+VXCRSWKTp3KDg+MkMj9NtGox
	vOUuuodS4pae4dY0BxZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh6uy-0000000FBrp-0a2g;
	Tue, 07 Jul 2026 14:37:00 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh6uu-0000000FBpV-1Rxp
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 14:36:58 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-490cf3000f0so40442415e9.1
        for <linux-phy@lists.infradead.org>; Tue, 07 Jul 2026 07:36:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783435014; x=1784039814; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cdRXTcMj4Onw1pyuyV/CzNlqHWy4qmYuUhikQS8dT2M=;
        b=lz8Q+kuMQxSnpzSKYaubEdhtHzHh8C3dZWqbyJKRgy/1CW8RtDEOOcklbPP315dwcY
         jM8kmEQ0txBOGJwCx0tsUbw+K+f+wG98VEtmRSggi0RhwwALtb4nfRjO52iAiLh4mb9G
         HS8q6Clx2AHMRFsLHlkWZm8Km22rNLtazGVHEXMpVYt+yhBTC101zQgWtAXmIxZ/E4Tn
         0iDmjt3uan949ggV+NQtuqt+xI9i/N4964FaZ0EcnbRXwFSBZWJqBRFpnR/IMOSsUw+3
         LTmwlsqNskw+r0q7UcumpikQ1YbxThzkXwwC1wxeDLKD3YzCEuxwLH+X+fsV3fcsPdH3
         Lqxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783435014; x=1784039814;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cdRXTcMj4Onw1pyuyV/CzNlqHWy4qmYuUhikQS8dT2M=;
        b=exi2LsTI0fP6nttyEJDkVNbC/5wh+cSUB1sgG+17/lu8WwFJ5aY3yzzofR1uIipqUV
         TLCVqzcPpt5BIc1sJarAMA3xGDvj6Ye+anLaPBeVfY0r//tdBOnnr3qriXCyx2inR0AQ
         R15AXFKL0+ko5Jd3YIppRNFAggOdObZQJkL/Hhx1FkGo0+lEiQlSqHGAX4ZwbBH3Lmzb
         B1MZHWZ8rp6aREnOg2jRBd4RvWN93xXesTik0tJ6+TBTFb1O9PqBtn2uPIqUAi65WIUb
         YuNK+Nr9oyDFeYxw3pvaR3ryDgDUzFLhtveNmqQIA0M7+ziawb5XQ74r9CswA8Ay9uO1
         LJMQ==
X-Forwarded-Encrypted: i=1; AHgh+Ro3t366F4tSS9UzLbAKT07w0s7wwpx3mP1pufJuFKE3/lYuCeX1nst0jKtOecsSOK25BJdh5w3VkWw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy1mgWGhX8Sog7cELzbxnY4u6OdP1/oDrG8w5eryqSTCcSzoqGM
	fHPGG4W5ZGUvq1r/S58wKnGxLPCdGnIGO8FOq5HCnWJfc8oEIEt+V0tGleNn5CS1
X-Gm-Gg: AfdE7cl2I9uFSgklClrGSDrbePDijkjHUaUlbY8goDiuwDm+I1PaxGPN4XrNhe2QGWQ
	FRFT9Gj42bOyx2GlRN1HfQcNQl6aJ5gJz4/tT7GxOnO88ImSDmPRLjn3nBOI+v4zWOysNP5R/bA
	dIHjgD8cwgCXuk1X1Z9p+qBftXHAEogXZnZrfGX1bRWw6pr2JiieUyZHbYb7Di9gUoljWs+t6fZ
	V/J7orAKVvuix7C0drVwiLmYKxwHhymUdW1+70mcOb3tjGjebnzOFqZm8w6r2wx5p6O/tQkAgXw
	RnaXCCsdQuuf8bMGvA9nv09MJh5cznmhEpPHw7KFMtqEfo1e6B5/mvc4pSCZIqG5pBmLU9pQLYm
	q6aah/3iGH4OKwgpbeiYqSxgPKSJhUdeGCcWP3vc4DGyxjNzcDb8HwVLCxLu4uENA72zwqs+lAK
	SHymZGlFyOjZUN9B5TheH1dq9zEJEcIOQ7LuPnHQ==
X-Received: by 2002:a05:600c:3b0a:b0:493:c8c6:4989 with SMTP id 5b1f17b1804b1-493df062bb4mr55744275e9.6.1783435014215;
        Tue, 07 Jul 2026 07:36:54 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a702:d301:a4ac:4e7f:194a:852e])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47aa039ae44sm33228611f8f.23.2026.07.07.07.36.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jul 2026 07:36:53 -0700 (PDT)
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
Subject: [PATCH v3 6/9] phy: renesas: phy-rcar-gen3-usb2: Add RZ/G3L support
Date: Tue,  7 Jul 2026 15:36:38 +0100
Message-ID: <20260707143646.245177-7-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260707143646.245177-1-biju.das.jz@bp.renesas.com>
References: <20260707143646.245177-1-biju.das.jz@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260707_073656_401431_7A2EE7D7 
X-CRM114-Status: GOOD (  12.08  )
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
