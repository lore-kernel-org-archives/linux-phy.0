Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFA69C56208
	for <linux-phy@archiver.kernel.org>; Thu,  6 Aug 2026 10:22:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tc6F78iMr3G4Vu27dJgJzXBfEZUYzuSBqdk11bbpdAk=; b=kPyynENtoLTY9w
	w3Op4FScqq5RsGvFoUA272CuL9ZwhZlRc+FH+BaxCxEPLCCF5GVSIYNZ69Uu59AI3NTFgZBU7pfPZ
	Xdgj1YMOUlnD10oqWzTDeM7QceWDKdhL1q6cLF8/kddHV5al+HmjY2KHSQwTiwJowpP4mU+e1cJVA
	zQdpUl5/kJEoHmESR/xIOnl1Yr2+L9CYEespT1odqQQ7XeYQqBy12bvRPMbckfbQ6FBFfW0zWcNzK
	IxD0PRl1ZY1ny11hzgEL5o4sm4Hm+YL/U0OKrAK1VVDGw+B/SLKr9L/DMUyobaGYpfxZUuWzwCt7d
	+jUBQZbekaF8WelNjXrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrvFR-00000005XTs-22Ak;
	Thu, 06 Aug 2026 10:22:49 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrvFP-00000005XSI-0xd6
	for linux-phy@lists.infradead.org;
	Thu, 06 Aug 2026 10:22:48 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-47f96c5b722so1223552f8f.0
        for <linux-phy@lists.infradead.org>; Thu, 06 Aug 2026 03:22:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786011765; x=1786616565; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=oK9LWHF1p6qfBGmnjDoGNT+oihBS0Hqu0q6BfX3ivmY=;
        b=FWU+b/m2j059l7/a4B6bKYrUJg0r637EGD0moGuXoRkB8BwAOoDQLnx23+nZnRjZZS
         J6Jnwcrpmo9Ter+JfrO0vMxQzZtCugzi/crsqng02MO1Wy7J8iclZZI0CB55ptJYHGfM
         q+bCtGY3BP3eJQBNV34R/jQYYQRdv7lCCpkelw3/nLQ25Zpk3nt6X+gIXA4uAN2txi0s
         zWzHDZz3CP7RBLdgKZcH46RuEz1SHP8iu1CHIABoeBFM4nzsT/kHrvxPODfuhATyWEvW
         WyACw5bXQqIGZu7k+qkkdVsu6NiigN+VLnIBKak0w/xD7MSZdBohUV48MvZQNqdfgqXV
         XSVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786011765; x=1786616565;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=oK9LWHF1p6qfBGmnjDoGNT+oihBS0Hqu0q6BfX3ivmY=;
        b=hrbgvGSTp+td3Csb3/GViGdL6IhA9ghmpvEO0Er8zQZA9JJ/jEIHMveLDWoYD8bnc3
         u62NQk2gZ0WA9uwWCq2+OTVGkCdJx2hLxrKvsEI8EKUUD2hBp0dlzCKSR0QBFnSjDK3M
         zQPCkAVsxSRQ9F+O0yjJ2rK11AQ/JDXzQy0hINT0HrlrX7/788EUOexNZxFkZpoLQ0V+
         OQ4TDSx0ey05O/516veqpG8vCfXYhLA41lCAtE+SqFr4B3ZDf/gp21jS7M1/75yYV/vr
         GQJL4ntwvZpKeFTt2sZ3/xcUDpwofDSSw0osYBI1IgwTIsJnEo6kcZ6U0Pumru0dJvwy
         xmZQ==
X-Forwarded-Encrypted: i=1; AHgh+RoIKaLCw6/8d7/gQvbrfj1gy8wSTL/AdHV0kXdpPxcISyy0L4IpIoptHm+At1hnN4/9t/jYsPcrZEA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz08bribukh7pqv3De7VzD7oGEY1SJvohi+o062k/nBFuASrAPL
	6UjKt4Q3Jka90x4O2mSSVUB4iRL9uGrOzMyM0eXlnlPVb/ZTMXFTXPc+
X-Gm-Gg: AR+sD13mhqnlqlwQOTxhnNFocYytQ/tAee4JSTpYHSXa5ZOALUg5e57kbf5cid0hAgh
	rj3EMg41FChKrmedX/VjXsHR+QK8a/z2rIKvwijnNN3W+PYaqNE2tjl5ACtXbtFDF+8zXJNvAXU
	+AZiCMsry4s1hDDwP7n74JcVi4ZRT4WXNaFVFpzw3yydkcqK4oztSI1LOZAmIkW450Fie6ugbaw
	SU7zezQiIVYfnz5hr8CGiMksXz+WLqMJwTLnkVO+ACQFMoCtiVZAdenjGbdE2gRS922j5yd+yTr
	lERSdlAcdeDq++kN/4wdrficMnQCUfHAaGisdtjTwdnatRRFUSSD5dyyjWtihP9gzVCkeW95/Kp
	iTNqdoAuUzBkC0+WvR5o1hOXmSJS61sVuWNjkU3v0B7gejmHZgmIa1S5QUScbCRWZJ20kLGCQqP
	6l7aIj9m6Xh2ZRXCLMmBzUtUR4gAfJa5/532cmVtUdZBRHzzAB2tG3fvri6qkDOv9Iktjg1IQvT
	BVg5qO6mMvJ
X-Received: by 2002:a05:6000:1844:b0:47f:9c6f:8844 with SMTP id ffacd0b85a97d-47fec4f8017mr19647350f8f.9.1786011765177;
        Thu, 06 Aug 2026 03:22:45 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a702:d301:a173:17cc:14ec:8d1])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47ff7b183b2sm5634553f8f.24.2026.08.06.03.22.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Aug 2026 03:22:44 -0700 (PDT)
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
Subject: [PATCH v6 07/10] phy: renesas: phy-rcar-gen3-usb2: Add RZ/G3L support
Date: Thu,  6 Aug 2026 11:22:26 +0100
Message-ID: <20260806102236.149159-8-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260806102236.149159-1-biju.das.jz@bp.renesas.com>
References: <20260806102236.149159-1-biju.das.jz@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260806_032247_303685_5B61B75A 
X-CRM114-Status: GOOD (  11.73  )
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
v5->v6:
 * No change.
v4->v5:
 * No change.
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
