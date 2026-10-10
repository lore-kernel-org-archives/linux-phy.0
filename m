Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4BCDCA9EC8
	for <linux-phy@archiver.kernel.org>; Sat, 10 Oct 2026 11:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6cm13fBfj7/Qgu8bSB2/TQPrGRwlbXXylvEl5EKRT0M=; b=fSbPp9ydfblo8K
	jZ7n080tJLNzi8hfoizRX2OTlsg95JxwzlyGQpwAzQZx1tEbpyY/BRmtyu43qDEvK9Fk+zGTG9TNQ
	nY/7kr9RLWKN9qW8F5VgreCoEQ6SukMfgrx0yOsSBnDl761FJ59oav78IeMB/yWn6r79NWk/bGFmM
	nL8RXZ92LZtZaeo8TmfoPo+b1bGoQdvg7eYyajHQ82n/mTvDuFg+m5dwOjq0EpZ6PQxXMJlKRJvT/
	dxvfbchJBGiTeWJEg5DDWdgDwlYNizKkJ2C6I5c6kwH7CNaV0ZMsdz6WilKGhXiZsgpZ/t/pS6G6n
	f5+ZSZxgy0ACaQ5TzyAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFVhE-00000007ydd-1Ehi;
	Sat, 10 Oct 2026 11:57:00 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFVgT-00000007xyq-20r1
	for linux-phy@bombadil.infradead.org;
	Sat, 10 Oct 2026 11:56:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=7cQlWEs7vG4qRpaZiwY4RuZzcs0XsJM2mV6rRYet5I8=; b=U0PGzfR9KAWNM4OdjHTXrzGaPD
	GAFrrD5XzsjyBa7fhuiUPfVn74tWsVzjq6jZugO2S5uf0XxfrAIVeZBMGy6H93sxexZtJh2Q/bqSF
	IyFKtr989iw6NcwF1gSYaZWDmL3WB48h0bIChkDsZcOqqk8WkYVXCz6lgBiGCfhQE9cOJXseklmOL
	uX74zNP2L9Xr5X8KPqGrm+H4UsuAFV4b5sdrpD/BEnVqtkjgn4namXlxqBpTdRs4pxQcHiPxJE1XK
	/sTKL2weVwADA7nbpiYrf/hIAmQQPUb2MRu60D0WQP2rrEjfM0fUU0cSi9n2Q+hD1AOVe7eD75m/O
	z2jnyrMw==;
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xFVgQ-0000000C4qp-2y7M
	for linux-phy@lists.infradead.org;
	Sat, 10 Oct 2026 11:56:12 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-4a1923f15afso1216905e9.3
        for <linux-phy@lists.infradead.org>; Sat, 10 Oct 2026 04:56:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791633369; x=1792238169; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=7cQlWEs7vG4qRpaZiwY4RuZzcs0XsJM2mV6rRYet5I8=;
        b=Z/Xvl2Z1eJS39dRPXy+8jDvjsfr/jRH4ZmNu4jn9RE//Xq8FosdHFXp0TmE+4uKYIt
         euG7jvAoIlZ9pMAeUCsZTXJBy1GT9zqaG3eiz96JacRgOtGZLfh813XoFAtWRQJ4wzG5
         trLIOn9+j4lgXLh5kxveMDQGqgXz8teO8k91aJY3xUyMluI40vPqBiQxj1mxKsxO9ahX
         8ptIbyHje7NBhoiT5FQtvVLwyonJgc1H/4fVAnznoF7obb1f4j4/EErakEXgulGzOty8
         1i3OK936fmWgxkadVF/zydPYKAix2dz1/lOUc5O8Xkw4OrEKNk9pid0XzMnngBloCUCZ
         Pl4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791633369; x=1792238169;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=7cQlWEs7vG4qRpaZiwY4RuZzcs0XsJM2mV6rRYet5I8=;
        b=v2Yy4194Rt+UyFQIp49DshIkjq/ZI8968+LLsjqrSXFQX8fYkHgZTpYLYJgdaxq4lM
         mdvolqMfbgkjxLh6Pj4AuOQBxH6TVYQupcd0p2DWfKO2L97Yu5MP5YmgFNaqB7Q0AUix
         cYa4D7mFOvPaj8Wb3XLhB7jl2tqt3BKvbyPxQIhjMB7MuUtv+GD1VnCNrbsvpNZr6RAt
         ajdYFaBnv2VDswiel3EtaLkFKYW7RvoksR0AZZI6bBFFrx5lML3zsFcZGTtL/RLz7KdG
         OcWbX4vYQYkmqrsM57+WJXMRWRC3OWbaVRD8qEdV6vMvcSUjqRsUo1AOGgLxuPDad5bA
         C91g==
X-Forwarded-Encrypted: i=1; AKwUvBzwBRK6sYodFLnReLjbFEOzwpJVa101fZ8OCld1X24t5/rwkJEFDkhx/UuJQKjreSTU0e9B4NiCB1w=@lists.infradead.org
X-Gm-Message-State: AFq9FYIAGnrTL4L+6H0rUwj+WtqV/MA8ca78fg6035Xby9ersxN1XLSA
	U0Uu9mnEE/3RCve9WwMDuJ+kHmlsKcDTa+2ksDdvr0nQSsHLlGrsiSKs
X-Gm-Gg: AYBFou1JLKQ1NALGRpVd5U2EtXhLHHVTVvrjnUQ0DMQ35K2iUSorw3SAE9T2ldoKqSt
	CojhaVQ7akew4CWE8XXEZDn+jpn35ElFu8s84QtQ8LOihp44UFWrngkhFuvmOHzHUh6K9LTcZO6
	cFP8Grjr2q8FCrQKLIENC5vNQpzeWBKfBWn7tjczfXbcO6cpG+cJmxvIAkFXSYCCKDumhAku1FO
	lMkMFtyGJWtEPAyBq6g25wmjWe2akkCbcESMIs/jHwsJh+0YhpBr3ZYBmYwyevwiO3kpE4abAxb
	gHfvL5aLEf8bv1XR62tOUsrr1jt3WlAgTtX/UZRZoJj/GnDvcKHyBze6pJ5q9S8qy+IuR3+Ikwm
	8gEPSSbeCv05kREwFV/++PL0ifSC9TcnFX5i6VtMGJY4Od5pdMsWKTOdyeyIeeEkdKje+lo+b0m
	oUje/S6SycTCCyuhZi1USXoisDB4kwcvGkwPTajGcYnhcnOfyvdjKg2B+BK2W5Jk9QqQ==
X-Received: by 2002:a5d:5d09:0:b0:48c:6a6b:69b2 with SMTP id ffacd0b85a97d-48dbaae7028mr6208118f8f.27.1791633369101;
        Sat, 10 Oct 2026 04:56:09 -0700 (PDT)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48db9aca657sm8746340f8f.43.2026.10.10.04.56.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Oct 2026 04:56:08 -0700 (PDT)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: linux-mediatek@lists.infradead.org
Cc: Luca Leonardo Scorcia <l.scorcia@gmail.com>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Brian Masney <bmasney+clk@redhat.com>,
	Jerome Brunet <jbrunet+clk@baylibre.com>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Chen-Yu Tsai <wenst@chromium.org>,
	Fabien Parent <fparent@baylibre.com>,
	CK Hu <ck.hu@mediatek.com>,
	chunhui dai <chunhui.dai@mediatek.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Subject: [PATCH 5/7] drm/mediatek: mtk_hdmi: Set tz_disabled for mt8167
Date: Sat, 10 Oct 2026 13:54:05 +0200
Message-ID: <20261010115539.9237-6-l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261010115539.9237-1-l.scorcia@gmail.com>
References: <20261010115539.9237-1-l.scorcia@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261010_125610_892534_6574E079 
X-CRM114-Status: GOOD (  10.64  )
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

Just like mt2701, MediaTek mt8167 does not require an ARM supervisor mode
call to toggle HDMI output.

Fixes: 511cf7d12331 ("drm/mediatek: hdmi: Add MT8167 configuration")
Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
---
 drivers/gpu/drm/mediatek/mtk_hdmi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi.c b/drivers/gpu/drm/mediatek/mtk_hdmi.c
index 738090a47176..9896eaf81e7e 100644
--- a/drivers/gpu/drm/mediatek/mtk_hdmi.c
+++ b/drivers/gpu/drm/mediatek/mtk_hdmi.c
@@ -1214,6 +1214,7 @@ static const struct mtk_hdmi_conf mtk_hdmi_conf_mt2701 = {
 };
 
 static const struct mtk_hdmi_conf mtk_hdmi_conf_mt8167 = {
+	.tz_disabled = true,
 	.cea_modes_only = true,
 	.max_mode_clock = 148500,
 	.ver_conf = &mtk_hdmi_v1_ver_conf
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
