Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A76EC531D0
	for <linux-phy@archiver.kernel.org>; Sat, 25 Jul 2026 03:19:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SZ6bkLcJzBU/0++YweaCF/dSevkVPI30Ki3R7nO9ZrQ=; b=SumE3IOd1U30Up
	E5Tg4JjbyzsftVQNfKOzlHGu1k+NjwIYMTv8InX/G+ueSQYzViSZ7XHFD7sxijpqvI3hkQwYw7h1H
	73cAfJXVWLC4K0arPAp58DtZ1LYxAi1aNC6HHMrffBbsnhKbgxC2JOOHH+eiGJKJE26NUZbUjUwKW
	l3wiE5r7ZSV2d52sHbR74l6ynbNJ6lvOjeVHQzIvCnEUPMqLXPnJOmZw2zHMPiB+wT9tzkB1BcesN
	gseDHuUp1JwZ/546WhRIyDAtgu6b3tU01CmBN9/CeQVLnpBub3wcU97/fCKV1kuk/gEaaOKkaXf69
	TfNAuaHP2kDEnuDHPg3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnSus-0000000HXoL-34Go;
	Sat, 25 Jul 2026 03:19:10 +0000
Received: from mail-pz2-x01.google.com ([2607:f8b0:4864:3b::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnSuq-0000000HXn2-0mSx
	for linux-phy@lists.infradead.org;
	Sat, 25 Jul 2026 03:19:09 +0000
Received: by mail-pz2-x01.google.com with SMTP id 41be03b00d2f7-c96a1a43f5bso45966a12.0
        for <linux-phy@lists.infradead.org>; Fri, 24 Jul 2026 20:19:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784949547; x=1785554347; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=R27OrBVO4c+ZRT7KJNQVX6sAFfpZUPUtgxebharHHoU=;
        b=HG8Op+e7J8APO3ZwWZdaxcAQqQTyxJxw0SsN/2n0NvM447JvDw6twVIxXW8t9eDni/
         k4fF5lblIWfBw6NegPI2txoWYEU0oU0IKFT4RnFAo1Q4PHnf0GIIzMWcIeG6ypBrZMDh
         /j1zsnesiYzlaScdRYwAuHd9OGGvWiRiJsJF9783ugKJYNA9vmfwsInQ4rnlqvt2A8gN
         IXjwHqgkkjrAFoziLwIR+6LiHF3NUOhmH6EqIXI34+pm/xYOT2BSxWlBLtpiN0fKaoX3
         73yqh4hlikyr1odR8ZPNm3I5ciUuUMwzn0KAJ/5IudhxQ4GvZ3hy1DO6d7t2aVF+d/pG
         co/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784949547; x=1785554347;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=R27OrBVO4c+ZRT7KJNQVX6sAFfpZUPUtgxebharHHoU=;
        b=cIlmwwK0/5emI+Jph/vaEVzCzvlxU8DxwOc8+qRzqQq/S7oFXjIEjKnwT7OSfQCmn+
         bys/FApxG/Tm8MCrBzntpKc4F2jBfblDn4fqUrlMJf0Ylyp/9jzILXaP28xmRr7d/Mg4
         7jrz7vNhTESqnArylADfNslBmpTsrEgqqBQHACy8ErSFJ/fBRrTooAN8u6oaGKYSe/qj
         vmZeIbzA0rM/DgOskPMzcWf7DKhJy2jnNmuJV1jUxbVqIh2eWq65QGoMBJJLx9tEgeBB
         aCSNK4qgqAm1Jc8MS5yRu3+OQwhobPeRezNWT3N7Wl6CYNCYytemasUfichLFgl4/U7f
         sjmg==
X-Forwarded-Encrypted: i=1; AHgh+Rq4YWTiU1ZXhIRK57TS90TLtaLnixPRtujH45IzSWLQUhXHbA+Kr2KSQcM+i03vU+fSE02wquLOXCU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw7x7cDWY1QOg37tuyTChPM1iwxwl71+fgPzHr1YE8erN/0zylT
	2rGhtyLFFdZrvek/YFfxm8IyXnyfTlQqy0NeEhzsMTeA8or/6SPslI9y
X-Gm-Gg: AR+sD10zDw9km3Pq1fu10O25U76unhzrsTeLpaPuWe1yqSLmn1aW1NDM0AdKuUvCsrh
	3LmZui3gGHg9shsBMhxGOplc3zRIf8X2JEx6K7KIfeb8jcgddWrQv1iQedWAm3v4xPKKBdIJbUT
	yrq75bJe9VkbpHrIZStvajhOSj9PQnghom38oX3kaUJmnzm6wRjdokvHFhgdFWbT6mXzv/Q7yKx
	/yYa8oTknNqX3OEYAdqFwEB/diukmzxpvVxuM1OUrm5KktdqnbI8L1nonNiQuYXEvN5eRNOBlyp
	l6IlLkMcv62nP8zUZEo8iklR9yTRAZNkKJty9bVTHBZxBc5fHfFF2H8b6FyiC6cfWaDmCH/PT3M
	JuhIJqdln8TBbesoKTUb9Kk4ouDNk9Umnt1fMrYd+kMxbCEOronU8UvE=
X-Received: by 2002:a05:6a00:852:b0:847:9919:e772 with SMTP id d2e1a72fcca58-84e595426f1mr573194b3a.21.1784949547576;
        Fri, 24 Jul 2026 20:19:07 -0700 (PDT)
Received: from [127.0.1.1] ([2a12:a305:4::403c])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84e53432834sm640542b3a.50.2026.07.24.20.19.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jul 2026 20:19:07 -0700 (PDT)
From: Cody Kang <codykang.hk@gmail.com>
Date: Fri, 24 Jul 2026 23:16:45 -0400
Subject: [PATCH 13/17] MAINTAINERS: add SpacemiT K3 display driver entry
MIME-Version: 1.0
Message-Id: <20260724-k3-display-v1-13-f22a10a52867@gmail.com>
References: <20260724-k3-display-v1-0-f22a10a52867@gmail.com>
In-Reply-To: <20260724-k3-display-v1-0-f22a10a52867@gmail.com>
To: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@kernel.org>, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
 Haylen Chu <heylenay@4d2.org>, Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>
Cc: dri-devel@lists.freedesktop.org, linux-riscv@lists.infradead.org, 
 devicetree@vger.kernel.org, spacemit@lists.linux.dev, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-clk@vger.kernel.org, Cody Kang <codykang.hk@gmail.com>
X-Mailer: b4 0.15.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260724_201908_229076_BA8AF0E7 
X-CRM114-Status: UNSURE (   8.19  )
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

Cover the Saturn DPU, the Innosilicon DP/eDP controller, the DP PHY and
their bindings.

Signed-off-by: Cody Kang <codykang.hk@gmail.com>
---
 MAINTAINERS | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 6dea93a41962..9f2910a17c38 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -25436,6 +25436,16 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/i2c/spacemit,k1-i2c.yaml
 F:	drivers/i2c/busses/i2c-k1.c
 
+SPACEMIT K3 DISPLAY DRIVER
+M:	Cody Kang <codykang.hk@gmail.com>
+L:	dri-devel@lists.freedesktop.org
+L:	linux-riscv@lists.infradead.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/display/spacemit/
+F:	Documentation/devicetree/bindings/phy/spacemit,k3-inno-dp-phy.yaml
+F:	drivers/gpu/drm/spacemit/
+F:	drivers/phy/spacemit/phy-k3-inno-dp.c
+
 SPANISH DOCUMENTATION
 M:	Carlos Bilbao <carlos.bilbao@kernel.org>
 R:	Avadhut Naik <avadhut.naik@amd.com>

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
