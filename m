Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDDF8EC1104
	for <linux-phy@archiver.kernel.org>; Mon, 23 Feb 2026 16:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KHM95PhDLgyfh0znsy2XpIzWW5A5MRhWQnj0SM6M6ss=; b=B+MAKSOnwe70aH
	o/K6V3q3i2MpbxejuuCfwVxb/2TBG8oyk4OnPyaoGDc9iEhB4DNkWbCCf+d5prJFPuQ622Abg4Snk
	m2NZhWIt+NSlTTneu9pAHZ8Iq6bsdrG+O7B3oFhmTofzM31JRfFg7GwUnIjzXwiA+pMf0VkKvzSbn
	YpuahyXNM4Bxg92n0A3l1XdNfa+rubPdkckLAjoFPFzzIW7CnIUBwUAvd8kmO5LsRzHjtH4VwCjan
	cqlKsk9vaPjLuDEi8Imj4WQNRf/C+JzXb0/9SfCrxlKvx5/HVuG6ytrQ7Riwy8EoOr03rzCgzjvzK
	PU5PR68a9kukQJ1iQovQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuYlu-00000000g45-28pN;
	Mon, 23 Feb 2026 16:26:58 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuYlm-00000000fuV-2UR9
	for linux-phy@bombadil.infradead.org;
	Mon, 23 Feb 2026 16:26:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=GsX5I8ekieUXCqSFWWV9OWjKFqWSLur0ZuBiwFVR/2E=; b=nP4IMWcchX4HeUMyfgz/CoXXbm
	ZL7vFSLCa09weF/hW6RxCouDullmBx+QvxY8pT50gFBAieSd17pSphWlI6AKUVZJ9UZ5LDQHojpK+
	HYkX5LYmn8z6M+hoD2TqhxcutVx1DGQVSXgrbKLgPzyWwwekKn/mjCSdIw/W1ISBDpz7rSbCoZFYU
	dK1cDXOUG6gMFH2JzXkSU+baVIsrpeQVAtpl202fNMEOW7n2udZLFFzp3RT+jpG7f8HR08m4JpRvM
	lFfvk8Ke+R1SlSeN5pAfN2ykUGMjHt2KiOrxWNLB0yxdRWCVnRvnEQAnSr7OPK3sQZOASTgkePp90
	jTF/DQNw==;
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuYlj-00000005TBf-22pT
	for linux-phy@lists.infradead.org;
	Mon, 23 Feb 2026 16:26:49 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-4358fb60802so3329148f8f.1
        for <linux-phy@lists.infradead.org>; Mon, 23 Feb 2026 08:26:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771864006; x=1772468806; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GsX5I8ekieUXCqSFWWV9OWjKFqWSLur0ZuBiwFVR/2E=;
        b=BTmEc/iXlUDEfZ1B5SKvRCBXHV4eyrtz7RvWVZjNa75zULWZvCQf3GphYYQvP2/HCr
         HD5ApEOeXgDuzPQGPkYSL1LjeRWaJMU90BvqEvVmeNy3o//GF0yC63uRATt7Isqtc0Nd
         cl74kWFvJoo01to0YvZghWWudOQf4LRVLiJBBOXT50xtJffOG6j14LWgVwZhxY4p3DLl
         uGcEanhVUqRqHgmGfsv32Y5THLvFY9a4xSjkAAHm31bWjLm1dS4XEJz+nzRqgdXKTsxt
         5Pw4lO7ecBcjYMIeRar1M0nUcUgeqdeZ4qZ6oiJSuHX0UxqsgAxyaL3BilBAI9JEllEy
         Zvpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771864006; x=1772468806;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GsX5I8ekieUXCqSFWWV9OWjKFqWSLur0ZuBiwFVR/2E=;
        b=CLrdUtm8yA+b5z8dCpDNsCHG8YDV8A9UweIBND8l4lVf5ZYAsHLFKFuSETUUV1Ym/V
         P7BKUocS9GCocKLaSVuYhUFsD0DhnD3DqZn6b+qRN/KXU7Bw3b3qXcZSHzczlatzrL8w
         HrlZ/1Igl0tbUZejnQ6i7gm11mGPLcif59LrRC/lCWMWaTf9UfxsNTYGlTpGWcHP+Joq
         IBcsr92HA/vfM4/2/V15LBawLudWTpllXtzBhCKjAqk51Gg8rLryf7aoS+4ckL5mggR4
         CfjVg8W0HuwjlItdVMbJiAPKRf7aN9R7k3Z39OEzRjP95yNwV1F621o9z7bibUeouEFU
         y3Ug==
X-Forwarded-Encrypted: i=1; AJvYcCWjeQKZR0JazibWGGYlQVSbqEVP7kJ9Uo80pr+SHGjyjUJ/L7r4R3+w36CWScxbhixy9qW42bUilSc=@lists.infradead.org
X-Gm-Message-State: AOJu0YxpZdwrHTlvAjbdoGBSAnelPPfKMsAQpTexTb+0lzMgCbx99E0Z
	++sITirMvepfg/xGSmtnCGXvqk0t6ltfvWuX4bBDOG3xU8Bipymqm9Xf
X-Gm-Gg: ATEYQzxK2YUiTWapBNdnUvbQtTJp+0mhstSJz9xzJ0cLYbBjCRPneX/AREwjOMdvF4+
	Vt82PXz2Ugz/xH+rvuFV49IRQ7A6wx+YR0zsimqISa4Afgm0oVnN/GC2gFlf8TWlnmuk8gilj1Y
	PV049SDgO734aUR/pyMQuHamom+ImI+0Ns3d0U5upWeDZXtvAXfMzvkYWQL8HuRMEgbgcmTJcXr
	chlEhxVRS3BuZaQNOhT4E5HFlNtziozWF+6QIpGs2V8mVG0umuB/FvyclObpmYLllzU3HYF/rot
	hS/kwYLRJxvutfpa1l25HJRVWLcnTVvCOKfAJmLTkTXhuD6KRS1eHwjcjnKCHIYNVcoOyOeihpd
	p0e2Nnc2JYF+KainiuQNFYCdqCIaG/MNg2I9K0KI+K638K7myoC8TI0HN0xG0B7908TOHhHfbe7
	EImliuKqDOwxem5ytzGkg=
X-Received: by 2002:a5d:5886:0:b0:435:92c6:d556 with SMTP id ffacd0b85a97d-4396ffc46bfmr17665504f8f.16.1771864005236;
        Mon, 23 Feb 2026 08:26:45 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d5463dsm19120357f8f.34.2026.02.23.08.26.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 08:26:44 -0800 (PST)
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
Subject: [PATCH v3 5/6] drm/mediatek: dsi: Add compatible for mt8167-dsi
Date: Mon, 23 Feb 2026 16:22:49 +0000
Message-ID: <2fbf179c03c61f527e2583f9df4f97f6aaf3297a.1771863641.git.l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1771863641.git.l.scorcia@gmail.com>
References: <cover.1771863641.git.l.scorcia@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_162647_718963_6F5959A6 
X-CRM114-Status: UNSURE (   9.98  )
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

The mt8167 DSI controller is fully compatible with the one found in
mt2701. Device tree documentation is already present upstream.

Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
---
 drivers/gpu/drm/mediatek/mtk_dsi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index af4871de9e4c..ad10e86b161d 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -1301,6 +1301,7 @@ static const struct mtk_dsi_driver_data mt8188_dsi_driver_data = {
 
 static const struct of_device_id mtk_dsi_of_match[] = {
 	{ .compatible = "mediatek,mt2701-dsi", .data = &mt2701_dsi_driver_data },
+	{ .compatible = "mediatek,mt8167-dsi", .data = &mt2701_dsi_driver_data },
 	{ .compatible = "mediatek,mt8173-dsi", .data = &mt8173_dsi_driver_data },
 	{ .compatible = "mediatek,mt8183-dsi", .data = &mt8183_dsi_driver_data },
 	{ .compatible = "mediatek,mt8186-dsi", .data = &mt8186_dsi_driver_data },
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
