Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62177C531D0
	for <linux-phy@archiver.kernel.org>; Sat, 25 Jul 2026 03:19:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MSfP7Ct5Kxpr4IwyvnbwdCF0/PdppeSAgIIDvP6untI=; b=vdq5+1sPX62Xmw
	esNHy7xCReyHvDOr/dOfjYv67HjBYOW5wVkG7pQYdH/jmRs/R+ee1Z4Mi0GpBnm03ZNbDzf0OcbQP
	FjQIensgnQPgwmhNTTL+DQg/w21vPR2WpAEnCx6rkatfTIouOn2XYgXUF/qwe1dkgt3IhoWyFulY7
	dteX9edKhzN57bR8DemqHSBTMBGstdjRGkX8RbatNSwspq43vQ5diUBp1Y1XJAyb3wCt8mN++pbyr
	/JEEEWlsYK5T0pttArhVyw2jUvCw4UzlNKHDSpoQlNPIJK8Lp6jqdX2tE/SMatzTYFIBf3HlgGuRA
	1UR52tYad35xSNxD2UFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnSvU-0000000HYAL-06bP;
	Sat, 25 Jul 2026 03:19:48 +0000
Received: from mail-pz2-x01.google.com ([2607:f8b0:4864:3b::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnSvR-0000000HY7Q-0uop
	for linux-phy@lists.infradead.org;
	Sat, 25 Jul 2026 03:19:46 +0000
Received: by mail-pz2-x01.google.com with SMTP id 41be03b00d2f7-c8c1ebd68a1so683542a12.0
        for <linux-phy@lists.infradead.org>; Fri, 24 Jul 2026 20:19:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784949584; x=1785554384; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=DPm4vAPFuqHX+tZvYjtk0Fs8fzHRPkuRBc0bjXwe1GI=;
        b=UKICH2nOe+vNF04M2Tjat6YmUVPeh0CeQ9mk64FbKG921YThot9vkXOkB3b8ZInegj
         ziEdildnx4rq2GH0QDo37mEgTJ/VtU0nV3n8md3ckhKXpIYLLqcsC+qTkunatMfHtwWS
         Dqlg6O7JTbKXApYtqMTHi6nibavTZirdcemHrVDcbe/4Lwyqn4NDZ3rQjgYLbEavBF06
         GigOCuimWZUCx1/U4T0YRaFqMXGrj89OnPePkkAzIwh7mtJW50CkSyirYcyf+YN5wo/1
         3CasEnHULbsHGVUnzGNhR2xZbFnr5wPh615K6S5ojc4hAFejp26dFnBgO5kfQn2Oz32d
         Q5Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784949584; x=1785554384;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=DPm4vAPFuqHX+tZvYjtk0Fs8fzHRPkuRBc0bjXwe1GI=;
        b=b9C/aOsd8AscxETArNRj1qv0RCkEwtR3I+M9Yb28Q4ky0V5XeQB2Ylq8+K8frBjcqQ
         yLFqhdfy4mFabziI0J0RmgiF9jHh0aLkWHbxpR1vXWou5K8H6u/GbqmtKv3dKN77qhts
         exxoSmMLZqj5mB76mAQNXT2q07UvnasZpuZe6sWUqp/ox0bC8RA3QgDrKB7ur4Pwf4sS
         t3+SYsJ/qtean1exl3Ty7P4Wqlrz2miGW7QmWvwnht62O4dR8LjSGgZUR6TOmYw39zQ6
         izPIG2rTdCAXKJnL0URym0MMgUw9B5rfAqPC9ofM5mpQvnDchEGxqxVcnnL0BRBn/3W6
         CaDw==
X-Forwarded-Encrypted: i=1; AHgh+Ro4gd+1CSzwZxVpqOUL/rn+xxGsZO9YUhHqi+hjSaHE3PpRUvLOMCV+Y7iRrMHke7vRFu4lkLQpO04=@lists.infradead.org
X-Gm-Message-State: AOJu0YyWlD1NhFzgZcvlAR+HCQDbmJHOfpNw5S70sFag1xj5RcGVVTPi
	frbpL9QLyf3kX8hTzbRU1lWNbGPAB60POuw3nhsmPNJ1rI7xdIoJ0AQL
X-Gm-Gg: AR+sD123rcsnjxLDqcYuQcls0AHqzxUHLdBdY6A+jieRZhJk6119wwX+LGJAqIvdeut
	i5uy5BL2t2FQ2If31Q/62ihBuzK5uB/i1E/oQ9TB0/YxnYRzJ070Go/VIxphAbakun0VS7AxcxI
	JLee0YYvvyqODNcQ+1Lxvc1UbtUl+u3Vp88NAyyN1bWZryjFZujuUR2BOk9fP7BJ6XG+NEB982y
	8uB11f+fbwGK8sDxACGwab5m3Ijg1baVraE29E39co3KvWFt3o/kNJ0MQe7QuwfUN8jUJxvZ9dw
	nofs0sVua4vpjSqiLPuoj4eVBay+jSDf+HPNWGfWew4n+0OOVzKZh+hsv4HRcaHyMi/iXg+seVU
	BEWjB5C4NfMmLj3feL8oWV46otkC06aySne8DJ0f0IFcfx8X+ZSRa3Wc=
X-Received: by 2002:a05:6a00:4c11:b0:847:8b0f:2508 with SMTP id d2e1a72fcca58-84e5942eaecmr647092b3a.13.1784949584567;
        Fri, 24 Jul 2026 20:19:44 -0700 (PDT)
Received: from [127.0.1.1] ([2a12:a305:4::403c])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84e53432834sm640542b3a.50.2026.07.24.20.19.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jul 2026 20:19:43 -0700 (PDT)
From: Cody Kang <codykang.hk@gmail.com>
Date: Fri, 24 Jul 2026 23:16:49 -0400
Subject: [PATCH 17/17] riscv: defconfig: spacemit: k3: enable display
 driver
MIME-Version: 1.0
Message-Id: <20260724-k3-display-v1-17-f22a10a52867@gmail.com>
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
X-CRM114-CacheID: sfid-20260724_201945_273670_2B9AD292 
X-CRM114-Status: UNSURE (   7.36  )
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

Enable the Saturn DPU and the DP/eDP controller as modules, matching the
other DRM drivers in this defconfig; the DP PHY follows through the
controller's imply.

Signed-off-by: Cody Kang <codykang.hk@gmail.com>
---
 arch/riscv/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
index 74ba5acc12a4..c38853d69d55 100644
--- a/arch/riscv/configs/defconfig
+++ b/arch/riscv/configs/defconfig
@@ -191,6 +191,8 @@ CONFIG_VIDEO_CADENCE_CSI2RX=m
 CONFIG_DRM=m
 CONFIG_DRM_RADEON=m
 CONFIG_DRM_NOUVEAU=m
+CONFIG_DRM_SPACEMIT=m
+CONFIG_SPACEMIT_INNO_DP=m
 CONFIG_DRM_SUN4I=m
 CONFIG_DRM_VIRTIO_GPU=m
 CONFIG_FB=y

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
