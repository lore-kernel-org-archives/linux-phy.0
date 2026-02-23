Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C137EEC1105
	for <linux-phy@archiver.kernel.org>; Mon, 23 Feb 2026 16:26:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UPpOOPF2g3FpnI5ovaxCxYLn2c1hYHrMUT9Z8odSqhs=; b=jYyjwDMGsfOHJR
	RtqWBhmmNWbIct9jTI3wkUw1eTv6plxg/8cSe68KeZEvj40cq9eK4AyUvNQ4yIyoHSgw+AfZNcmnE
	vImlqsvJwgJm94a/urMVzGOTWcWjXrT8MjKVAi+RKnfAU5921Z37Kjni68pcZ8Bom7QrvdSK3+WYa
	Ba8sDXA01D49jsHo2BnOSGQnUSH9G/l0S0hkuMsKEDH03Y6auOR4yGYgKRK/fYkzIWtNdghABnAvE
	p3/tZ4Qg44Xod+O27nRn+vUHdwMGJ76fmoRq8MhdIf6F6dvuTYaj0++c5eST50UOQW/gigrVhYD0d
	ig3Zv4SQgR8NTGGKFAnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuYlb-00000000flB-29Hf;
	Mon, 23 Feb 2026 16:26:39 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuYla-00000000fkP-0jib
	for linux-phy@bombadil.infradead.org;
	Mon, 23 Feb 2026 16:26:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=GPabK+sR6tt9Q+NXwIlbFeumv2ta8pwtwfHRnJheAtg=; b=k6NL9F36mLeYfEqBlNPH0Q70oK
	u6XTqK9rSUZGV8In5s24GfnTdC/A1FcreBzT9ZIi+mnpu99yVMGH8M/IHG53jb8ofJ5UyI96OhATr
	X6GKkHBcfIGGjHOudVn6IQQTLAGNrwvsBC4kfDiskcf20nkXns4jYS5RThLpCe7/uTIVtSD5v05Q8
	1xVrePnYVxbqINJO4bzC8EGMA3jqr/lehlIAVNTuGAi8uloj1Umiy56gj0KDr2CaremR7QOXz2Xk1
	j3M16K3UyIKXtWtaSNx8WNaYBPAxLMIhF20lzsBddvQuGYJCuVwQXWldd1CeIBbiHORl7SVQmjyT5
	h9qcSjGw==;
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuYlW-00000005T3u-2XN1
	for linux-phy@lists.infradead.org;
	Mon, 23 Feb 2026 16:26:37 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-4376de3f128so3244666f8f.0
        for <linux-phy@lists.infradead.org>; Mon, 23 Feb 2026 08:26:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771863992; x=1772468792; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GPabK+sR6tt9Q+NXwIlbFeumv2ta8pwtwfHRnJheAtg=;
        b=eCR4GKJD3ly9qIlIlTPoy2FOuo5CG1vebz0qG9ANKDraeAiN8oJNaGtPGIAw5X+MRJ
         2BjJOcF7hCoDzQvzSpKtSZYxx1ydpm3wq4u0CoKd614AAkfqQm1pO+m+u2skcsA/j4JE
         kjzxha7O2BQDlT93np951OEBtM9Q3/024gBEJMgMOohO+2oENYRO8eoTWKENzA96d5LU
         LM1Otv9Khy+Ydu822rRJUU74zfTrl1SWXF68rKeR+AH5/dwPeevQ1yjL1npGsmz2g1rr
         QMJBsEXbb3qYBc+J8PbBBeAZU0GKVegzpDVPHtI8QnglGH8QxoUZ4C3m9dCHbDF87/oP
         reEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771863992; x=1772468792;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GPabK+sR6tt9Q+NXwIlbFeumv2ta8pwtwfHRnJheAtg=;
        b=ay+dfXY2ZhLAh/WgU57PAYB3vDGkjXXia6BxrRMR2mnm4QbICp4PO3LmjKpzpMFalj
         vzjaqQHLiS+FCKm8bMeNiBp+ucvQmdxhLNptL76CTKv1fM8EZxPpLX0ltCasYR+zlbyu
         72s4hy2MG4cPzJokLd4aVftRDmIVJjGebKWz7g3RfwUt6oeKkJF0BoJ8UDqdeTdxbZPB
         RaZy+bcZuQcUVYNmiFOLSvuHD1x9MD7H8p1986kj2PKf74jyvMnfmcSv9Q4yaMVUQNpy
         f18giu6z3j4kHd1/npyytxMy/6578gswGGR3fKh2t2uqeG5YpTKxYARSF4ViEjuwILLe
         QaZw==
X-Forwarded-Encrypted: i=1; AJvYcCUc17UjSPa2JqtxjtmM76vbpFaYQlE80js9eg2jlWJU2J4zqptKf0I9FCzi00XYdyfIlHMrJFSYKXg=@lists.infradead.org
X-Gm-Message-State: AOJu0YyWLa1c/U2UHWe44mVQ0x3B+LXwx3/dTqoCjFBlD1QWyLikpTSC
	v/IFmWmrneTIqgdXZ/jeQdN9Uvl8heVsXiSglA8Mdzvht5bBPstEykqb
X-Gm-Gg: ATEYQzx+bT2/fpcIviRA5jbQJ0trQF7XVgT/LhJeexxbDzU8hsgo1of4ovUwcifYKUX
	GO7E8/seKoHSgVPdZEzkc//Nk4WbDn+QHui2srXEwkUqOnIWIWyC+ti5VJEP65xxpQ4t0S1ce+E
	IRygJuZQxyqjpnTFHrXi1gQebzICA2GxxaMoi9qOJb4g04pJYG+auEmbv49oDjCJ+kjE6O3SCuS
	sZ7VOs1j0UcZTWFLIkw0rjtYblLmDMuLOjh5OOcDC00e28Zsaz1fvrk5f638I4a/rslva0yT7qE
	SF2txd4Fo2n8RCMJMkVOeO2nilGIZMliLYUtiingHFOZms9QMzh8l8C9qzV1tdlyGlqmvT7YXBv
	FT5AbOd6ryABV4v8SuIx6akIDNOf0M1drSxXRORE8DqP4Ijgwq8vFoqWrrO5JDr3ogx2fENmkgT
	eEiLtYqKDT6RilVf7bo/4=
X-Received: by 2002:a05:6000:40cd:b0:437:719d:a753 with SMTP id ffacd0b85a97d-4396f156a40mr16159891f8f.11.1771863992210;
        Mon, 23 Feb 2026 08:26:32 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d5463dsm19120357f8f.34.2026.02.23.08.26.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 08:26:31 -0800 (PST)
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
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v3 0/6] Add support for mt8167 display blocks
Date: Mon, 23 Feb 2026 16:22:44 +0000
Message-ID: <cover.1771863641.git.l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_162634_720407_544C686F 
X-CRM114-Status: GOOD (  10.68  )
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

This series adds support for the display blocks on MediaTek mt8167.
Tested on Xiaomi Mi Smart Clock x04g.

The first patch just does some reordering of dts nodes with no other
changes as this makes later patches cleaner and easier to follow.

v3:
 - Added mt8167-dsi compatible to driver instead of changing the binding;
 - Resolved patch formatting issues.

v2:
 - Separate patch for mediatek,dsi-phy binding;
 - Separate patch for mt8167-dsi binding;
 - Simplified OF graph endpoints in mt8167.dtsi.

Luca Leonardo Scorcia (5):
  arm64: dts: mt8167: Reorder nodes according to mmio address
  dt-bindings: display: mediatek: Add compatibles for MediaTek mt8167
  dt-bindings: phy: mediatek,dsi-phy: Add support for mt8167
  arm64: dts: mediatek: mt8167: Add DRM nodes
  drm/mediatek: dsi: Add compatible for mt8167-dsi

Val Packett (1):
  gpu: drm: mediatek: ovl: add specific entry for mt8167

 .../display/mediatek/mediatek,aal.yaml        |   1 +
 .../display/mediatek/mediatek,ccorr.yaml      |   4 +-
 .../display/mediatek/mediatek,dither.yaml     |   1 +
 .../display/mediatek/mediatek,gamma.yaml      |   1 +
 .../display/mediatek/mediatek,ovl.yaml        |   1 +
 .../display/mediatek/mediatek,rdma.yaml       |   1 +
 .../display/mediatek/mediatek,wdma.yaml       |   4 +-
 .../bindings/phy/mediatek,dsi-phy.yaml        |   1 +
 arch/arm64/boot/dts/mediatek/mt8167.dtsi      | 381 ++++++++++++++++--
 drivers/gpu/drm/mediatek/mtk_disp_ovl.c       |  12 +
 drivers/gpu/drm/mediatek/mtk_dsi.c            |   1 +
 11 files changed, 374 insertions(+), 34 deletions(-)

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
