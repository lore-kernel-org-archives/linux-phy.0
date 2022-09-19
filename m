Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CEAE1ECAAD3
	for <linux-phy@archiver.kernel.org>; Mon, 19 Sep 2022 18:05:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=caXWyYvfRC2OFWDeYx5cRMeR3LfFu2fVTLYDajH/lz8=; b=yMNN4rfvevsAYh
	3z4M5IVasnDWq7XF3uKe8XxIw6EJTEVXHfkWGwQeAmB2kqUJGTlxxltdmPvqikSRVhLcXuNbliX87
	kk+yoQYwke1My42/9mtIqbJS/2tJF7utmCsyh9BKi62S0Rnqszf4o/hnKfYZ7IrhZW9cjvtREq0Qb
	oYhwFhGcx6/HpCDvduPQQ8wbFYtczwvBpcI5n8qJZ2WdBuZjjKgqpLXC8VtVOnOkbXfdXojTX05Pd
	22Apnj0SBBlf8ZcAWQMtwJkcl1kmDhFNQvm4fTEkEq/gsr0VgBT4urDbHUig/9f6pAE3Bm6tq2bNd
	ltRrxvLy/tj9ZgBWr0Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaL8h-00DXdN-2N; Mon, 19 Sep 2022 18:05:03 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaL7J-00DW7g-VH
	for linux-phy@bombadil.infradead.org; Mon, 19 Sep 2022 18:03:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=g8hZh96h7kcVe0FwyV/2fd9otBYm0/NItAoi3rrV5Yw=; b=OC3CNM3EtJjYBw9/raIL8SP1Jc
	vDZG+lyRoR1DdZDVLbpkwKgrqDeaD4IMrD2p5UdMBuZ4AAPv8eYvRxC+qrzFvhdoN5u9ATtTViS5w
	maVcbz14mqOmbYmpu8BJLFDsU6g5uCNPnNm/4CggDKca2Wg9bTC01saKyP391rtfkK7cUmZOVEcTp
	itzJ9LzcvXJc55uz7yjN9Mta9+il20qM1Q4WnleYpDnO71Jkt6U9DlnwurZdey2eoIBPlYMLceFBU
	sXKmANfwyboz/NvS7Z4SvTyKVLQz6+c6cEA00AybAEheuQEt/mPc+8+5YVYVgiEw0HQqvz6Lx4y5i
	7aGALKFw==;
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaK7m-00E8DN-Rx
	for linux-phy@lists.infradead.org; Mon, 19 Sep 2022 17:00:06 +0000
Received: by mail-ej1-x634.google.com with SMTP id kr11so91940ejc.8
        for <linux-phy@lists.infradead.org>; Mon, 19 Sep 2022 10:00:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date;
        bh=g8hZh96h7kcVe0FwyV/2fd9otBYm0/NItAoi3rrV5Yw=;
        b=xLxEGxkLE9ts8PrWjFZFQCdOiglt2QkS+aUCn873bVHln5LsU0bvqAVn5LFP05/Yyr
         Q3qRpEst57E9SGRzI8qpwLl2n81lnV7mXZ8ciDQ4f+3wWKaYsFb2M2yp0JVu14Rkzx4t
         imIkYqSNoVVEaxFbAdujyag9f5p4E4p5mOkIQP3u5LxjGS3mUDhFyoxzELq+k/uubc9L
         MZrTbOobCprscw8nBrp+kaWxRcV20dNkKLyny7J28BijqGfXNFdD0jNIoHenj01MLEvJ
         CyJJL8ZP5n7MOZGHu2N9lqRQedIinPzfrVndKqNhcJdYpXLaOzgQFoR/WoFNLT2htXpU
         HC6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=g8hZh96h7kcVe0FwyV/2fd9otBYm0/NItAoi3rrV5Yw=;
        b=xtmlDaJobUVPd8H9s+zaEMySCazfUAIdGYOFfvKGtlZYShLI3Cdh3NarUIbJvzjy5M
         TSNZ+ZhbTovySkcXCGgcP/asd7Df3WaArPQBmY3QKYrRPprO1pwWueoKK+WAMBuGa2D7
         JumSz1FoY/fpYMxnDZvoxw5tGWz1RaGLwXRMq9hm7pYIRBk8tJ+Ae2yp7BQO+sgMJMBY
         pKYBqx8gNivMXvjM2ME4k6KhCo4Djqmk8nfIJgC/A/JFe7YlGQkyphh6IGmo700DrAbn
         luaqZGjl4VoO0TD846YMaxrFe1jjxVDCNO9KFbBlsqdvrFVwKH0yQ4UT8Eh9ZKzqR/GC
         t5wQ==
X-Gm-Message-State: ACrzQf1EPleAoCP+p7MW3yQ10H3CV+X1GiO4p9npT1n5h0xVmRneCuis
	UdJNeRRn7OomTapKelQQwbK4QQ==
X-Google-Smtp-Source: AMsMyM4DJI7JfhQLtMN2LYTOhc8B3W1+i58GmxhTOF/MVrCsnqMqyiepx3Iq5rhTvArkC9ga2QF9Xg==
X-Received: by 2002:a17:907:1ded:b0:76f:af8f:942e with SMTP id og45-20020a1709071ded00b0076faf8f942emr13451537ejc.120.1663606802567;
        Mon, 19 Sep 2022 10:00:02 -0700 (PDT)
Received: from [127.0.0.1] (2a02-8440-6340-f287-3074-96af-9642-0003.rev.sfr.net. [2a02:8440:6340:f287:3074:96af:9642:3])
        by smtp.gmail.com with ESMTPSA id cf16-20020a0564020b9000b0044fc3c0930csm20424246edb.16.2022.09.19.09.59.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Sep 2022 10:00:01 -0700 (PDT)
From: Guillaume Ranquet <granquet@baylibre.com>
Date: Mon, 19 Sep 2022 18:56:07 +0200
Subject: [PATCH v1 09/17] drm/mediatek: hdmi: add connector flag
MIME-Version: 1.0
Message-Id: <20220919-v1-9-4844816c9808@baylibre.com>
References: <20220919-v1-0-4844816c9808@baylibre.com>
In-Reply-To: <20220919-v1-0-4844816c9808@baylibre.com>
To: Vinod Koul <vkoul@kernel.org>, Stephen Boyd <sboyd@kernel.org>, David Airlie <airlied@linux.ie>,
 Rob Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Daniel Vetter <daniel@ffwll.ch>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, CK Hu <ck.hu@mediatek.com>, Jitao shi <jitao.shi@mediatek.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Matthias Brugger <matthias.bgg@gmail.com>
Cc: linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org, Pablo Sun <pablo.sun@mediatek.com>,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, Mattijs Korpershoek <mkorpershoek@baylibre.com>,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, Guillaume Ranquet <granquet@baylibre.com>,
 devicetree@vger.kernel.org
X-Mailer: b4 0.10.0-dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_180004_765654_3EB6A2A5 
X-CRM114-Status: GOOD (  11.28  )
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

Add a flag to indicate support for an external connector

Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>

diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi_common.c b/drivers/gpu/drm/mediatek/mtk_hdmi_common.c
index 86653ebaacfd..30407603d693 100644
--- a/drivers/gpu/drm/mediatek/mtk_hdmi_common.c
+++ b/drivers/gpu/drm/mediatek/mtk_hdmi_common.c
@@ -199,20 +199,22 @@ int mtk_hdmi_dt_parse_pdata(struct mtk_hdmi *hdmi, struct platform_device *pdev,
 		goto put_device;
 	}
 
-	remote = of_graph_get_remote_node(np, 1, 0);
-	if (!remote) {
-		ret = -EINVAL;
-		goto put_device;
-	}
-
-	if (!of_device_is_compatible(remote, "hdmi-connector")) {
-		hdmi->next_bridge = of_drm_find_bridge(remote);
-		if (!hdmi->next_bridge) {
-			dev_err(dev, "Waiting for external bridge\n");
-			of_node_put(remote);
-			ret = -EPROBE_DEFER;
+	if (hdmi->conf->has_connector) {
+		remote = of_graph_get_remote_node(np, 1, 0);
+		if (!remote) {
+			ret = -EINVAL;
 			goto put_device;
 		}
+
+		if (!of_device_is_compatible(remote, "hdmi-connector")) {
+			hdmi->next_bridge = of_drm_find_bridge(remote);
+			if (!hdmi->next_bridge) {
+				dev_err(dev, "Waiting for external bridge\n");
+				of_node_put(remote);
+				ret = -EPROBE_DEFER;
+				goto put_device;
+			}
+		}
 	}
 
 	i2c_np = of_parse_phandle(remote, "ddc-i2c-bus", 0);
@@ -325,6 +327,7 @@ int mtk_drm_hdmi_remove(struct platform_device *pdev)
 static const struct mtk_hdmi_conf mtk_hdmi_conf_mt2701 = {
 	.tz_disabled = true,
 	.has_cec = true,
+	.has_connector = true,
 	.bridge_funcs = &mtk_mt8183_hdmi_bridge_funcs,
 	.mtk_hdmi_output_init = mtk_hdmi_output_init_mt8183,
 	.mtk_hdmi_clk_disable = mtk_hdmi_clk_disable_audio_mt8183,
@@ -338,6 +341,7 @@ static const struct mtk_hdmi_conf mtk_hdmi_conf_mt8167 = {
 	.max_mode_clock = 148500,
 	.cea_modes_only = true,
 	.has_cec = true,
+	.has_connector = true,
 	.bridge_funcs = &mtk_mt8183_hdmi_bridge_funcs,
 	.mtk_hdmi_output_init = mtk_hdmi_output_init_mt8183,
 	.mtk_hdmi_clk_disable = mtk_hdmi_clk_disable_audio_mt8183,
diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi_common.h b/drivers/gpu/drm/mediatek/mtk_hdmi_common.h
index 921bde150e11..62a14435be69 100644
--- a/drivers/gpu/drm/mediatek/mtk_hdmi_common.h
+++ b/drivers/gpu/drm/mediatek/mtk_hdmi_common.h
@@ -32,6 +32,7 @@ struct mtk_hdmi_conf {
 	bool tz_disabled;
 	bool cea_modes_only;
 	bool has_cec;
+	bool has_connector;
 	unsigned long max_mode_clock;
 	const struct drm_bridge_funcs *bridge_funcs;
 	void (*mtk_hdmi_output_init)(struct mtk_hdmi *hdmi);

-- 
b4 0.10.0-dev

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
