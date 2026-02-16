Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFC15E81A47
	for <linux-phy@archiver.kernel.org>; Mon, 16 Feb 2026 16:25:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gh38Ti/Mfr/fhevv12HXa8ev3z6HzcBWu7XtyEwEQ1w=; b=I2QFKrcFAwCjIl
	DM50Nu9C3pqpKCz/FD9npxHZtHVhdr3xR2uyhHF44NIGkgTJs0WyEDeR00WIy9pIPlRf9jXDekyGs
	FVs6FPEfA5tB2eCiXZE3p6t0qHhzqtyMcc9g+y4pYWH4PRgVj29nCiJNuUEVav2h22cPyNXotq0QK
	Cmjs1sT46yE4wO/izn1rg/UIAHy8fGHKaaatipa6XJ3K/YZgNF9rSQZvLgooVstArXBrAbfPrg/PL
	TmyYcUZabODYc65k/Hf8cOp+gwS8ks5mubmPZYgN2r4U7UWTnj05olPPzaLyxhk74QJbfRZ3zogRt
	NldUymeGeQTT65N10k2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vs1PG-00000007118-0ncO;
	Mon, 16 Feb 2026 16:25:06 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vs1PB-000000070sX-0KPe
	for linux-phy@lists.infradead.org;
	Mon, 16 Feb 2026 16:25:02 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-43767807cf3so2506564f8f.1
        for <linux-phy@lists.infradead.org>; Mon, 16 Feb 2026 08:25:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771259099; x=1771863899; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EP/NkuwHIXZWXD+wl8EaORZCaWZmz1qMdyG8O5pYtJ0=;
        b=OhIJGbCwnwz9AvhqZ01DESKOHI7Htwznf+TlHs1UNrlK+sK3/Af72t78olcpQ9jiT6
         P6byLHms66PxHCxwLHNAZzGfSOuskSBTY+sn4aj7ACDc6089AOpiBRjryYKwXkAOfvSH
         AhPD5qnEWIJKIkAd88EuYwzF+d+Dh0LdG7O6g51horushPDVo3rWeAcgVsRu/LGKexw9
         gwuguR4sg19GsSamg8CQG/cQz9A71U85IulXrOmLM0Znu9bbiZnDnpEIWhpvr8j5EMWv
         pXMC6GG6+2Yv4BUO0KRXDXlvozTX75VGAN1Jupo5u6eX/oxKSEy0bU3SXv9njh6/E1Hr
         WEOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771259099; x=1771863899;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=EP/NkuwHIXZWXD+wl8EaORZCaWZmz1qMdyG8O5pYtJ0=;
        b=km7Ps/9jJvL9rAkTvgW9khcfm396+SNXQ6u6qMP9v70JBbAn1X/V0hgFB4qBlhOV42
         35eTCn4iREG7ud7bvuzcq2KDXS/olzy4DZLVbfymCPzC1OZpwV0FNwEmvlhDq5s45S6M
         UDtKQyyrJqGqt8BxKXVWLq9tJvDNHW6kytCUuQ2wzFHgQYTIaApvTba1psefFZhuWnK5
         9zcJNkDfYdbXKV/kJjFZKH1laBSgpUgGc+Erp0UKYbJKYbNTa6LR3DNlNoEZB5G/lWr3
         X+IyWPU5Eh15jYHUHK8ffjzfOJkmTza7Ky0iz2pEd4ER+/3yU8aV0aQS3Etzdx3XU02G
         QzVw==
X-Forwarded-Encrypted: i=1; AJvYcCWhISCGcWQjcY1j9dCVxP9fD4t4IOcYN8U2Ezk1adEraPsFYMcppqfeXOGYLAtynOkA1wsCe825dmk=@lists.infradead.org
X-Gm-Message-State: AOJu0YwGlaos1hR2p8qMMdh+AHa/nSFtaMs7CZi9RU27UamKjxcq9y7N
	S2c4ibJbO9WvODcSajNF7NUZC6qAdHvml6dtrW0IKTFXYoGTzID4qYMi
X-Gm-Gg: AZuq6aJG68Rdj7qq3PvH2yrA7hmd7k1mc/6jxRcafi8xlwElCLqbk9/5S+rl1OsaI6E
	QDw3daiK0drJvFMvgEFxz5oixzascIoeyy1sxMwEx+CpUa0HQgxdzmWWFxaMqSjLNeFGjWMkFG6
	zpuSX2eg5yPBUxQzABBfwjVEU5UP2kK5//DQ+rn1CNHTFSZu1zLYvnvgbTmSdy7HwsCq/1pzKyN
	cvEbjsSZ/x6tvHvmehoGIOu2DBgiNom0z9Vh3OereZj+q7wXiPleVFeXcY4VhKdZ0Wn1hhUMchh
	0+MXtPVkGl+WgdGT4IcI0kYKLLxUuvKbWD31eFb2GUfqyK6EqS+qVdi+hjjsmRBKhY3NRhk03a2
	JGLy0ik05AqHnXsdzvcmIJbR7KDaaNm0ZSQzdp5oPc9HvL0AlFbiLYnBZShZrBUGqTAlmKJy5Jh
	+o8rkThprXUq1iih1VknLxlM4Wi2PRmQ==
X-Received: by 2002:a05:6000:4010:b0:436:1b1:6cbd with SMTP id ffacd0b85a97d-4379db25b60mr13014530f8f.6.1771259099036;
        Mon, 16 Feb 2026 08:24:59 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796a6a6desm28775962f8f.10.2026.02.16.08.24.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 08:24:58 -0800 (PST)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: linux-mediatek@lists.infradead.org
Cc: Luca Leonardo Scorcia <l.scorcia@gmail.com>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Jitao Shi <jitao.shi@mediatek.com>,
	Fabien Parent <fparent@baylibre.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v2 4/6] dt-bindings: phy: mediatek,dsi-phy: Add support for mt8167
Date: Mon, 16 Feb 2026 16:22:15 +0000
Message-ID: <66fbd5dd3604ffc4fda45022c1db68e4e0be6714.1771258407.git.l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1771258407.git.l.scorcia@gmail.com>
References: <cover.1771258407.git.l.scorcia@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_082501_155490_DA04FC9C 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
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

Add support for the MediaTek mt8167 SoC: the DSI PHY found
in this chip is fully compatible with the one found in the mt2701 SoC.

Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
---
 Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml b/Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml
index acdbce937b0a..c6d0bbdbe0e2 100644
--- a/Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml
@@ -23,6 +23,7 @@ properties:
       - items:
           - enum:
               - mediatek,mt7623-mipi-tx
+              - mediatek,mt8167-mipi-tx
           - const: mediatek,mt2701-mipi-tx
       - items:
           - enum:
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
