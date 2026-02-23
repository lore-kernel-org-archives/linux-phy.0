Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6418AEC1107
	for <linux-phy@archiver.kernel.org>; Mon, 23 Feb 2026 16:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RzKdan/BNPVHi8AwoeRICgNsWngnhmcA6sJZLMPuqO0=; b=Xs6dXONQqWMAsu
	ft9W6p1krE4DFC28i5fsdBTXTj5354Ex6Dck32wY7oRy+1iRW7YAJdOaYr2IMdKh/uG9riVvbKn7b
	twaS8PVAJsqAv1mxXfzA6EYjMbM9GOQENUEZWNuZAp6KntkDNTmIIah8aUe5Ar5o6x+iAbgSxjeTs
	aAIbC2bPaGuVLzULiseoLtVQUfyt3DC6KbIRZkT7HQaSeehfkj2zh3upsyijF/p5my6oSAF4YUx5R
	YHGpd5lEjlRu/taY3RfjtlIrBPGem943VqCzSBpNqwogo5tT2K/nZiMHn5NQHR/ZmA7tyD/XgLqb6
	0vewSuMKbbNCg+niNJoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuYlv-00000000g53-0OpZ;
	Mon, 23 Feb 2026 16:26:59 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuYlo-00000000fwU-0PoX
	for linux-phy@bombadil.infradead.org;
	Mon, 23 Feb 2026 16:26:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=87mY3bGihT8b8D/6Pcxz8+DKkw+N82+sh9Y6maoLJGk=; b=oRjVijdcpHdlwz/CTJyVkb7QRC
	2qjYdD4Rh/LpkVvkA5edXIplNsa8jqipv69bbHhiVXxDS4KATafn1pN9qKy5cZxYGT6g2KtCVh8Yg
	YqQ9m3gpBBrE37QsCC7oHcWsL1gMPBIOuVyqqlOykEI64M+fZt6tyaNF6OUtynltopZSkYEISHujr
	krFb7agB+/9Z1xsZHteU0lmxbucsLrzyu+uAPaJRNT+3VCrnCNTXLM/OO7L46GFPcm++wNO70q1Cb
	ZklJfhmXVMLH1Fa5MNYSpWcUemlMqblB7MyiQSJlFZynneRnaj1ZlA36MZ42IlTPNhZdZY4cl/op5
	XZwXhweQ==;
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuYll-00000005TDZ-00GS
	for linux-phy@lists.infradead.org;
	Mon, 23 Feb 2026 16:26:50 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-4375d4fb4d4so2907487f8f.0
        for <linux-phy@lists.infradead.org>; Mon, 23 Feb 2026 08:26:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771864007; x=1772468807; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=87mY3bGihT8b8D/6Pcxz8+DKkw+N82+sh9Y6maoLJGk=;
        b=U+O793/viVyHlABQJeorWNfURwfVdWwLb3Nev9Xuzbj97tt1EwyPGBBhoPBSLsYqGP
         QXOIhdJSRa6MxtvHtxbXbcl4bkdcLLRjuM6rCCk/T2zW/npsD8n/AYLGJ2agYOG/qlWT
         I9vnriOykLfoZw8Y8YGZ2Yzb8isUVE7EHhmqYOQxthcC7x/TBrLvIgpGd/DCFATJoljV
         vppTdnwGj97teo0DfpL0hEsUGGbgQ3uS7gu4iTcu1sa87QBXn5rRUozp9Npw3CM4MHaK
         OUAbd+7jnKDI1PC2+3tSPNIyK/zdp9QHb06178ov1FX44Qv1rcYVIvjiiQydSi/ThA2K
         0SQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771864007; x=1772468807;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=87mY3bGihT8b8D/6Pcxz8+DKkw+N82+sh9Y6maoLJGk=;
        b=oEXXq2ogsezqJQ0yJu0jDXYiiFwmXN+WVEotaNi1CGG113b27Q/C2mh+FGpQ6gCzUy
         0mxLyNbO9eDpYQRT+dHOH76uKKptDGWBBcMOhADqktFUqtkzr/9Lg/mE/CxkXKh7dK+F
         kYqigeGpshJuFtJ6xgWFGnUOomOZbpFYF0DrDKSDJ5LgKVZtO1m97k9OJC54lG4lmOgu
         QnJxmQPp5RR7HkRha88IjAwPdCyTqxziFVlaf/vrMhRsTxZagDP7X3RuymQwewzaa7C2
         qYtZm1W8o5Of0digGLXSXSdQrlvjY94dzNoLZ+dB91SVUl0v3R5XLw4ir1MvPBAqBWru
         J06g==
X-Forwarded-Encrypted: i=1; AJvYcCU8Gfr6lExO7N71SpNzH393GpfESEIyQnEk2aWNQ9mJbjWkv4wYbb/xJGRSvxCMO2ZoH8d5cNmdpbY=@lists.infradead.org
X-Gm-Message-State: AOJu0YzzGS5FF7Q/ljhSTy7IvKs/pIXYObgSdj8RNti4i21wmoAr7Ogq
	598Ph2+nw7HVE4/QQBVXpBjSO2mQIlM2LC76OX2NgGAhM+dwHfzhlkwU
X-Gm-Gg: ATEYQzw9HVVWbLQgM2qcqry3awfre1dWEyqRBy7K13r3r5uRob7DyhIKf2FkBSnX8my
	XmpZOhJ8Tx7V3k4k0zR5e1HSJWq/Tme6qmondLYXMOS8vf3AyyB09MNYugavGkKr+m47/urHYy2
	qUnd4ZQLl2D+0wJAlH0FiOBdMDkVpxScbr8m7mykDIXNN2QT39qseGDS6GZqJX4LW0GhQmaCflo
	/75zxVc0rWHN/TAAUhYD1ccDra1Ny480sFeL5oOSTI1jFYP2Rr+CPMkuCZi43H9qLhlm79qRNp4
	WuUmPFoa8mzO64eAjyNZbsygVaRgK3pwNNd6fy9X0zk1/fvj67pztkGdX4cRyfYD2cGwGBYhfpz
	PmyeSl9BKRn6DTg9nP6gjb+bKA1W3QAKhLL1aCdgBooidQAG+zrhE8wufJYOzvreDz7Rciv9W+i
	Ph1v9ruc8JxGiGom7QWPw=
X-Received: by 2002:a05:6000:2dc7:b0:436:1a24:df81 with SMTP id ffacd0b85a97d-4396f15416cmr16926092f8f.2.1771864007344;
        Mon, 23 Feb 2026 08:26:47 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d5463dsm19120357f8f.34.2026.02.23.08.26.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 08:26:46 -0800 (PST)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: linux-mediatek@lists.infradead.org
Cc: Val Packett <val@packett.cool>,
	Luca Leonardo Scorcia <l.scorcia@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
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
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v3 6/6] gpu: drm: mediatek: ovl: add specific entry for mt8167
Date: Mon, 23 Feb 2026 16:22:50 +0000
Message-ID: <5f880f1334aa93184afee3e36132ca42628821fb.1771863641.git.l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1771863641.git.l.scorcia@gmail.com>
References: <cover.1771863641.git.l.scorcia@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_162649_157097_132D14FF 
X-CRM114-Status: UNSURE (   9.37  )
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

From: Val Packett <val@packett.cool>

While this configuration is otherwise identical to mt8173, according
to Android kernel sources, this SoC does need smi_id_en.

Signed-off-by: Val Packett <val@packett.cool>
Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/gpu/drm/mediatek/mtk_disp_ovl.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
index e0236353d499..97a899e4bd99 100644
--- a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
+++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
@@ -671,6 +671,16 @@ static const struct mtk_disp_ovl_data mt2701_ovl_driver_data = {
 	.num_formats = ARRAY_SIZE(mt8173_formats),
 };
 
+static const struct mtk_disp_ovl_data mt8167_ovl_driver_data = {
+	.addr = DISP_REG_OVL_ADDR_MT8173,
+	.gmc_bits = 8,
+	.layer_nr = 4,
+	.fmt_rgb565_is_0 = true,
+	.smi_id_en = true,
+	.formats = mt8173_formats,
+	.num_formats = ARRAY_SIZE(mt8173_formats),
+};
+
 static const struct mtk_disp_ovl_data mt8173_ovl_driver_data = {
 	.addr = DISP_REG_OVL_ADDR_MT8173,
 	.gmc_bits = 8,
@@ -742,6 +752,8 @@ static const struct mtk_disp_ovl_data mt8195_ovl_driver_data = {
 static const struct of_device_id mtk_disp_ovl_driver_dt_match[] = {
 	{ .compatible = "mediatek,mt2701-disp-ovl",
 	  .data = &mt2701_ovl_driver_data},
+	{ .compatible = "mediatek,mt8167-disp-ovl",
+	  .data = &mt8167_ovl_driver_data},
 	{ .compatible = "mediatek,mt8173-disp-ovl",
 	  .data = &mt8173_ovl_driver_data},
 	{ .compatible = "mediatek,mt8183-disp-ovl",
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
