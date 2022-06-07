Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDF12C43334
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jun 2022 06:21:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:CC:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iSuobUV6BLvZPOcZKRm+2HDV5ffyPgNHd0rYur7V6Zg=; b=uuK09tOMJ0MCw+
	uIaSlVT87zdOoGRAjqnStpM3ItFSa7JdB8V+VtFuGk8DIfSK6fyeCCfGLfFguvYUwlz3gryp4CTYX
	n70KCmglxN4pcxZ21hy0ARiRCHW8uhHdaLGqgA+GKpgQTb2ZhCEayXYdgiuDl86/lu7XayRbGWEw6
	lKR4yVd7e2U0vHmGHx/w8IATHvcpYffTe+Mq9QBnG7PEAPnkgYlkc/o5NaKGgs6S2oplcxHcAzl2r
	3OKJl6gbKPjHLetMHNoLpzHYfCxxYZF8Vokkh3wQClDwtijwpWCHqkf+aY6ac7Rf/4jaTk+Qyi9h5
	gnUJsHrk0mDR+hPM0eRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nySb8-004zZP-8H; Tue, 07 Jun 2022 06:21:50 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nySaw-004zUo-4Q; Tue, 07 Jun 2022 06:21:39 +0000
X-UUID: e96d9b3026d74811b336021b3ec5d524-20220606
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.5,REQID:b5e1c9c7-ceef-4abc-8c2b-5cf48d1b61c0,OB:0,LO
	B:0,IP:0,URL:5,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,RULE:Release_Ham,ACTI
	ON:release,TS:5
X-CID-META: VersionHash:2a19b09,CLOUDID:395f6f7e-c8dc-403a-96e8-6237210dceee,C
	OID:IGNORED,Recheck:0,SF:nil,TC:nil,Content:0,EDM:-3,IP:nil,URL:1,File:nil
	,QS:0,BEC:nil
X-UUID: e96d9b3026d74811b336021b3ec5d524-20220606
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
	(envelope-from <ck.hu@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
	with ESMTP id 1846272803; Mon, 06 Jun 2022 23:21:28 -0700
Received: from mtkmbs11n1.mediatek.inc (172.21.101.185) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 6 Jun 2022 23:21:27 -0700
Received: from mtkmbs11n1.mediatek.inc (172.21.101.185) by
 mtkmbs11n1.mediatek.inc (172.21.101.185) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.792.3;
 Tue, 7 Jun 2022 14:21:25 +0800
Received: from mtksdccf07 (172.21.84.99) by mtkmbs11n1.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.2.792.3 via Frontend
 Transport; Tue, 7 Jun 2022 14:21:24 +0800
Message-ID: <0bd8b0c66b9e2a1b63280e7eab63048bee7fe786.camel@mediatek.com>
Subject: Re: [PATCH v10 18/21] drm/mediatek: Add mt8195 Embedded DisplayPort
 driver
From: CK Hu <ck.hu@mediatek.com>
To: Rex-BC Chen <rex-bc.chen@mediatek.com>, Guillaume Ranquet
	<granquet@baylibre.com>, Chun-Kuang Hu <chunkuang.hu@kernel.org>, "Philipp
 Zabel" <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>, "Daniel
 Vetter" <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, "Krzysztof
 Kozlowski" <krzysztof.kozlowski+dt@linaro.org>, Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>, Matthias Brugger
	<matthias.bgg@gmail.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>, "Kishon
 Vijay Abraham I" <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, "Helge
 Deller" <deller@gmx.de>, Jitao shi <jitao.shi@mediatek.com>
CC: Markus Schneider-Pargmann <msp@baylibre.com>,
	<dri-devel@lists.freedesktop.org>, <linux-mediatek@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-phy@lists.infradead.org>,
	<linux-fbdev@vger.kernel.org>
Date: Tue, 7 Jun 2022 14:21:24 +0800
In-Reply-To: <20220523104758.29531-19-granquet@baylibre.com>
References: <20220523104758.29531-1-granquet@baylibre.com>
	 <20220523104758.29531-19-granquet@baylibre.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220606_232138_205840_0D89847F 
X-CRM114-Status: GOOD (  27.49  )
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

Hi, Rex:

On Mon, 2022-05-23 at 12:47 +0200, Guillaume Ranquet wrote:
> From: Markus Schneider-Pargmann <msp@baylibre.com>
> 
> This patch adds a DisplayPort driver for the Mediatek mt8195 SoC.
> 
> It supports the mt8195, the embedded DisplayPort units. It offers
> DisplayPort 1.4 with up to 4 lanes.
> 
> The driver creates a child device for the phy. The child device will
> never exist without the parent being active. As they are sharing a
> register range, the parent passes a regmap pointer to the child so
> that
> both can work with the same register range. The phy driver sets
> device
> data that is read by the parent to get the phy device that can be
> used
> to control the phy properties.
> 
> This driver is based on an initial version by
> Jason-JH.Lin <jason-jh.lin@mediatek.com>.
> 
> Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
> ---

[snip]

> +
> +static irqreturn_t mtk_dp_hpd_event_thread(int hpd, void *dev)
> +{
> +	struct mtk_dp *mtk_dp = dev;
> +	int event;
> +	u8 buf[DP_RECEIVER_CAP_SIZE] = {};
> +
> +	event = mtk_dp_plug_state(mtk_dp) ? connector_status_connected
> :
> +						  connector_status_disc
> onnected;
> +
> +	if (event < 0)

event is always > 0, isn't it?

> +		return IRQ_HANDLED;
> +
> +	if (mtk_dp->drm_dev) {
> +		dev_info(mtk_dp->dev, "drm_helper_hpd_irq_event\n");
> +		drm_helper_hpd_irq_event(mtk_dp->bridge.dev);

I think this ISR would come once. If bridge has not attached, the drm
core would lost this event. Maybe you should enable eDP hardware after
bridge attached or send this event when attached.

> +	}
> +
> +	if (mtk_dp->train_info.cable_state_change) {

Executing this thread imply cable_state_change = true, so drop
cable_state_change.

> +		mtk_dp->train_info.cable_state_change = false;
> +
> +		mtk_dp->train_state = MTK_DP_TRAIN_STATE_STARTUP;
> +
> +		if (!mtk_dp->train_info.cable_plugged_in ||
> +		    !mtk_dp_plug_state(mtk_dp)) {

I do not like two variable to present one thing. If

mtk_dp->train_info.cable_plugged_in = false
and
mtk_dp_plug_state(mtk_dp) = ture

What does this mean? I think this mean 'now' is connected because
cable_plugged_in is old information and mtk_dp_plug_state() is current
information.

But I would like to keep cable_plugged_in and drop mtk_dp_plug_state()
because cable_plugged_in would be changed in isr and it would be the
same as mtk_dp_plug_state().

Regards,
CK

> +			mtk_dp_video_mute(mtk_dp, true);
> +
> +			mtk_dp_initialize_priv_data(mtk_dp);
> +			mtk_dp_set_idle_pattern(mtk_dp, true);
> +			if (mtk_dp->has_fec)
> +				mtk_dp_fec_enable(mtk_dp, false);
> +
> +			mtk_dp_update_bits(mtk_dp,
> MTK_DP_TOP_PWR_STATE,
> +					   DP_PWR_STATE_BANDGAP_TPLL,
> +					   DP_PWR_STATE_MASK);
> +		} else {
> +			mtk_dp_update_bits(mtk_dp,
> MTK_DP_TOP_PWR_STATE,
> +					   DP_PWR_STATE_BANDGAP_TPLL_LA
> NE,
> +					   DP_PWR_STATE_MASK);
> +			drm_dp_read_dpcd_caps(&mtk_dp->aux, buf);
> +			mtk_dp->train_info.link_rate =
> +				min_t(int, mtk_dp->max_linkrate,
> +				      buf[mtk_dp->max_linkrate]);
> +			mtk_dp->train_info.lane_count =
> +				min_t(int, mtk_dp->max_lanes,
> +				      drm_dp_max_lane_count(buf));
> +		}
> +	}
> +
> +	if (mtk_dp->train_info.irq_status & MTK_DP_HPD_INTERRUPT) {
> +		dev_dbg(mtk_dp->dev, "MTK_DP_HPD_INTERRUPT\n");
> +		mtk_dp->train_info.irq_status &= ~MTK_DP_HPD_INTERRUPT;
> +		mtk_dp_hpd_sink_event(mtk_dp);
> +	}
> +
> +	return IRQ_HANDLED;
> +}
> +


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
