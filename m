Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8406BCD98DA
	for <linux-phy@archiver.kernel.org>; Tue, 16 Jun 2026 10:45:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oy1YT0SiLMycjG3VUWbKA8PXol17f1CQvI8wfie/l4A=; b=wRrh+EO3ZuyxmO
	/9NwMspF6EC4FZgjJVJrrsWMIwqnrTUVPK6oDDJuwFa8u/NrH8NdtKShI52g5Ss0zrGM44hWbE/PM
	SjA3pWYaFUnjxLJjqCXgTIBK4f6/GBWXqYTdV4DpRObncTH/oZonTnSo1d9FCNusLhb32g7J3D4Li
	vzS9pBEMw1Uc6Mg5Tsx2PvY0ReQ75LxnRKPzKSDr+WFPoX25oObMXxKB5Lu3fFQ7rJYoX5/D8gGfm
	b4uaG+F8e6Gi+fG1unYDqM44seNnewlrwmFNqnnChKW0rYCx9iS+Q3iaBZberJKTimZ3ZiXrMpYX+
	exdkAFHqtIYc+cwnsvHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZRIA-0000000Fcag-15E4;
	Tue, 16 Jun 2026 10:45:14 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZRI7-0000000FcZP-3AT5
	for linux-phy@lists.infradead.org;
	Tue, 16 Jun 2026 10:45:12 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-490ace40f4bso41543445e9.3
        for <linux-phy@lists.infradead.org>; Tue, 16 Jun 2026 03:45:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781606710; x=1782211510; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PsFjgSS/FX2x/zJjPC7g84js6C+0Fg+tEgzYfiVoIkA=;
        b=Sa0aGXhNgNvWPvWMiWD4kUBEckahs/cZAUmwDTVLpj2a57kHVNobnCIcf6E9wcCJqm
         JBSNvTf9IPsIqWbn/r/Sn4TtkttD606NamACzm2YIcwXIXeU33WS8feW7mQ8uJ/cOk9I
         /4ar/gMTnw+3bBu4GuKjlcd2huI3ZTPzmyG+gIpajnSZCRBgE0P/N58Nq/+/0Hta3qlL
         cfB8cL357EPFGw04Qq9IlNUj8o/8DucoNRG3r/TlrtgZfs0o3fAVESUKRyUrfTpsBJc3
         oNVQR9rN/VHwFozOTYdZ0JJmMkY/W3RhYV/U2MJWNIqNV4uWQFnWUDEG8BVWQh7rx18R
         h2rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781606710; x=1782211510;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PsFjgSS/FX2x/zJjPC7g84js6C+0Fg+tEgzYfiVoIkA=;
        b=kIos7l+aT6/2G2uuApjQkLR6dVyxLKTc/5mnT1SDWt4LKvQBM6XPbGptC9wJobkOzQ
         scnHGdKRY9iX3r7LzC78ju5uo0wD0Z5GEFBEvrl0Voay9JDRFXNzIh3fLOplV1pV6b0u
         ckRKkwWAH4TsUvUzA5xQ1dg3Wx9GB88WbEVjbtvwwUHGdDdxnKVLBaYsV+yrObm3mnzc
         NwHAXxrERO7DAtVgfyu6SbLbKb91LJhPHP6QgITPoD9PB0He0HvFwWIOQwx/2B6NC08L
         /DAiHHS+zQa2zMbaTMEQVn+mRPSgAYb9bjMsOLyswg0dR4R+OwCInnKNs8yjZqorPcUR
         BSeQ==
X-Forwarded-Encrypted: i=1; AFNElJ8NYgbaggDBhmqj2y+mIgUIQPOiVfSnBD0ZKQ62Jbhpv742b8ztaAdGrkatlPzX2fPdd7QpPkcjvUg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy/n8uAVkkdzeVi06T94eBtVIjeB/H3SCCU5VFvHJzuw6KGOa+5
	BnarKpGJIYfMYXyQRrvlfQ8HHiwqsuPdh6WgRWHMs2n4rfij7pWfL+WmCnRzQw==
X-Gm-Gg: Acq92OHuNGmKUckAMbh4zvJPdAn6hZua351Y1QslT0OiMyyEFoqU+1/jE7ou0Maucah
	dH1IQRs6Nesnou8mI89WxktczWP+EwA8jbox96fOdYNMjeGbPTQIX+VHTsghJt7l1S5we1/2YRr
	OaO+9yrTPYeVbh3ITi45eSv2p+QRG655iZ0VTrkuOKLNAvDeBnnQoTXE+Q0Bc35uMqVxeervvbb
	KJ+7HR4bggu/5jn0BD63Cq0sxELeks7A0mxA0wAAeL0Q1t3MIV1r+5WNNEOQhgJbOpWp1NRxDLO
	s2CW3IX6Yx0ZNygk9+Pi/a4DOuhpbKwur0hcrRWlUqvo3IJ6/MIsxeWaDntO+sgwWEuI843+m9Q
	4jhafV0fYgVtTjxkNUZ58eYl+c66fWZNut3N48KizDCxpDwVkLunbbh4TFms+fikuK0wCqOaNgl
	KEoXNtvfpcsAXjcz5EZZQzxqnxJoyhSlVai2Tzffjbb+bM3JYR
X-Received: by 2002:a05:600c:1383:b0:48f:d1b8:9ab1 with SMTP id 5b1f17b1804b1-49220074737mr210663065e9.9.1781606709211;
        Tue, 16 Jun 2026 03:45:09 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a700:7301:7499:34c3:598b:e20c])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4922fa47da9sm82458485e9.5.2026.06.16.03.45.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jun 2026 03:45:08 -0700 (PDT)
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
Subject: [PATCH v2 07/10] phy: renesas: phy-rcar-gen3-usb2: Add RZ/G3L support
Date: Tue, 16 Jun 2026 11:44:49 +0100
Message-ID: <20260616104459.410743-8-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260616104459.410743-1-biju.das.jz@bp.renesas.com>
References: <20260616104459.410743-1-biju.das.jz@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260616_034511_814872_DA7EE8EC 
X-CRM114-Status: GOOD (  11.83  )
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
