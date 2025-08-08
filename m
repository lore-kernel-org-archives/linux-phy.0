Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1131CC87FDA
	for <linux-phy@archiver.kernel.org>; Fri,  8 Aug 2025 21:52:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OMUnHCSygzosQfiHKnxvgm4LXMT/UYH8dbVTPI8IQhw=; b=vQVl2Z+5CRbUZR
	3SViL15ZsczCuy027Hck3iY00YmImT5BpIq31t39oYDFqK8L03d5jlZNCi6JNnD5FlQL+Eyu0q0mf
	dGoJnhI+S+6fDkL9GSbDPxa+qNl30cf51LXNM1N1iwAmZBgpy5YFwgll3rrwK9jJfnWIfrfhzzqM5
	IL7IUvUfC6YfAZBuuT9IDqXAWE110fEa/47NIn/bDfqOPKvetOyMIdczSmosvVqYQuR/wYbUSwf1b
	kOrFWJvHLKOCt5HzgOgBrffLwy5zyMzH5Hn7DmXqtdypNLw6EakBO9vJUz20yuGhdeUrwoH6XPvVT
	XTXi6suXxc5sEBJRiHpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukV0i-00000003kgK-30nl;
	Fri, 08 Aug 2025 21:52:24 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukV0g-00000003keb-1hU7
	for linux-phy@lists.infradead.org;
	Fri, 08 Aug 2025 21:52:23 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-3b7825e2775so2321601f8f.2
        for <linux-phy@lists.infradead.org>; Fri, 08 Aug 2025 14:52:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754689941; x=1755294741; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cmSdf/9CQUvl70IdXMlZn/po6qGixtnt6qlryVPh128=;
        b=RgetmfY6AOJoEIu/R08AwEwL54JiMj1IFbZ3XCrFWFY1Ak13xPpSi6AYgfBy1LWcrx
         22PeMG4dWQz6yg2CGsudLHn1WEZmdHgjlAXNt7Mqmz+aQTZlFvDYGnmnCJrXD0CnZNoK
         Qin/zGfAR3CFnGo3jAijYBLHqUpQnWOZYrP1U0sFinBqND9umQr95mbJyJEmwB0iMWUG
         gOOz/aSU/u+F4IXCXHOJ7HA3LbaTzjscV/ywZE0bNr2K5Qu8JLioHyWjTrGxuE1EgP/y
         n/IcctdFz6Jvqpmil490aMpMyJarr94tIgDXj2zCRLjj9NDRCc6JlXayyXsQXg+9yYUu
         u1dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754689941; x=1755294741;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cmSdf/9CQUvl70IdXMlZn/po6qGixtnt6qlryVPh128=;
        b=kqLM+krzvMFPpYEsMg55JSD7y0kSgEBSxUki6BJ8JVF9RESzfPvXZRABvNnPwxErmW
         ts7U3bB56WsrXyFFxgmLhN8SAhVOM951HeW7lsjJPnegKvIXZL6suE0YOPlvka6hhfHZ
         40QtuK3fjCrod/J6XuSOPYxfvVSC/duqNJLj6FSwLUe/Tbcs6EU2FbT/9RDIHoVlXiEn
         ZkOUB3GxMeeVU5POhSjT05d/3ocsspx47LB0Mg0fIhssG+lI22J5Md2MxtKTCc28ZxWo
         ZSJpuXZHd+hQlmKds1hyUAhZcBHfqplHKMd2kN65O1coUWbneoLFfneKfXQnlTaC8KcM
         gkvw==
X-Gm-Message-State: AOJu0YytY9oHgE7oPa+crWi9PmXpSJxze1TkB9dH9XD9iPLo9+ht2Bqk
	/3y05u/yUNlJF2u8Lw6G+m4/Y9xAECYltVdxSj8vG5f+8uUJe78GbLVpJXjSwfkk
X-Gm-Gg: ASbGncuz5RDVEy1Qxd5NrO39/+LgPP4rR3yGNIUlhgOjvw3LCOf47DJisg2VyY7CYIh
	K33JFF6ys/BpbrpyD9ysWyGVJ29+6WNPPORP/nqBeNcj68Qw8KShC/kJKre0IU+SiqhAX573Fzw
	8mzsc4V36I6O3SAzfUII/5S7XNSAo9HQFr0+musOgQ5hHv2XvUvhxLb3ZQRsH8nlmGLUG+r5mX4
	Xx20whk1UANBPMHYTEJL4IlfDI45T9qkTiRp+0y6z2UP2NpqgBB/kKiqX4OOAiyMtRLA8jFMSBy
	MLw1uA1FpH75ufLEoCBAd7Qpa0RBRQ8odGepqtDEvoBLkuk8nPQwzUkd8R9+k7OkDxK4QNVs+M9
	BI9B7Hul0aDhwxkYLCm8lQUE3Nj3IcPiQjFuXDk/fXhMiYUZKtQjnfItj23h6Yo4MoipMmbquAz
	X7kuW7P7U=
X-Google-Smtp-Source: AGHT+IF/05lCcQEipOrmBWnaTpk2Y7mleC1kcTd4heh6tjbXJbUyTuT7e3mrMhTJPNdy+G7l0l5YmQ==
X-Received: by 2002:a05:6000:4283:b0:3b7:8af8:b91d with SMTP id ffacd0b85a97d-3b900b72e05mr4400030f8f.35.1754689940999;
        Fri, 08 Aug 2025 14:52:20 -0700 (PDT)
Received: from iku.example.org (97e54365.skybroadband.com. [151.229.67.101])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b8ff860acbsm5326759f8f.51.2025.08.08.14.52.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Aug 2025 14:52:20 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH v2 5/5] phy: renesas: rcar-gen3-usb2: Move debug print after register value is updated
Date: Fri,  8 Aug 2025 22:52:09 +0100
Message-ID: <20250808215209.3692744-6-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250808215209.3692744-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20250808215209.3692744-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250808_145222_447054_99C2D9FA 
X-CRM114-Status: GOOD (  11.57  )
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

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Relocate the debug print in rcar_gen3_enable_vbus_ctrl() to appear after
the `val` variable is assigned and updated based on the VBUS state. This
ensures that the debug log reflects the actual register value being
written, improving debugging accuracy.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
---
v1->v2:
- Added Reviewed-by from Neil.
---
 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index 8caef9cb228c..7b4a6e8b7508 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -211,7 +211,6 @@ static void rcar_gen3_enable_vbus_ctrl(struct rcar_gen3_chan *ch, int vbus)
 	u32 vbus_ctrl_val = USB2_ADPCTRL_DRVVBUS;
 	u32 val;
 
-	dev_vdbg(ch->dev, "%s: %08x, %d\n", __func__, val, vbus);
 	if (ch->phy_data->no_adp_ctrl || ch->phy_data->vblvl_ctrl) {
 		if (ch->vbus)
 			regulator_hardware_enable(ch->vbus, vbus);
@@ -225,6 +224,7 @@ static void rcar_gen3_enable_vbus_ctrl(struct rcar_gen3_chan *ch, int vbus)
 		val |= vbus_ctrl_val;
 	else
 		val &= ~vbus_ctrl_val;
+	dev_vdbg(ch->dev, "%s: %08x, %d\n", __func__, val, vbus);
 	writel(val, usb2_base + vbus_ctrl_reg);
 }
 
-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
