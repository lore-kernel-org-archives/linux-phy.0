Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C163C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jun 2022 13:04:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:CC:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NOcEJ2u9rruMc5VId7TIUWF89vBDr3bteeIItBq8hzc=; b=3ohKcxeTHeJQpz
	445C8GMQ8tp2H4HkyOLt3tU9GjQcnYcJOEHgcsErIFs7atJljuu2EwKnCEfclyXkFYY1bNB6Nb4Fe
	pfGpBbnSoCGtS7OKBDUwUMMM4XLpODs9Nictc0V4Qyzkp+H5lpdM0+OvJwvXZem76/DF+3A/oaaIi
	3j3BJGYjdhbrtjnBmfSJrgpVUlx/n7VV8PeBtOKSqhycv1/qukam2aGO6mIgPbKeQKTeYrESX0cC3
	HlIZj7Fo26tkl4sDfGJqRLO3MGI0UgUGis7mRKW7AZcdMrY4JCw9Im1056KOQrWfPrAYkAw328CgP
	53TN4pgW1P4EeOYc5DVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyvMT-00D8Gr-M6; Wed, 08 Jun 2022 13:04:37 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyvMI-00D8Fv-59; Wed, 08 Jun 2022 13:04:27 +0000
X-UUID: 47c37155e2cf49d6b7aff95caa64f948-20220608
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.5,REQID:e6033d57-210a-4946-8e76-6ecbd7ee2afa,OB:0,LO
	B:0,IP:0,URL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,RULE:Release_Ham,ACTI
	ON:release,TS:0
X-CID-META: VersionHash:2a19b09,CLOUDID:a69c1de5-2ba2-4dc1-b6c5-11feb6c769e0,C
	OID:IGNORED,Recheck:0,SF:nil,TC:nil,Content:0,EDM:-3,IP:nil,URL:0,File:nil
	,QS:0,BEC:nil
X-UUID: 47c37155e2cf49d6b7aff95caa64f948-20220608
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
	(envelope-from <rex-bc.chen@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
	with ESMTP id 1881958074; Wed, 08 Jun 2022 06:04:17 -0700
Received: from mtkmbs11n1.mediatek.inc (172.21.101.185) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 8 Jun 2022 05:54:15 -0700
Received: from mtkmbs11n1.mediatek.inc (172.21.101.185) by
 mtkmbs11n1.mediatek.inc (172.21.101.185) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.792.3;
 Wed, 8 Jun 2022 20:54:14 +0800
Received: from mtksdccf07 (172.21.84.99) by mtkmbs11n1.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.2.792.3 via Frontend
 Transport; Wed, 8 Jun 2022 20:54:14 +0800
Message-ID: <61ed067bc117a67ccdf64420401605c2fadfe43a.camel@mediatek.com>
Subject: Re: [PATCH v10 18/21] drm/mediatek: Add mt8195 Embedded DisplayPort
 driver
From: Rex-BC Chen <rex-bc.chen@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>, Guillaume Ranquet <granquet@baylibre.com>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel
	<p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>, Daniel Vetter
	<daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>, Matthias Brugger
	<matthias.bgg@gmail.com>, Chunfeng Yun
 =?UTF-8?Q?=28=E4=BA=91=E6=98=A5=E5=B3=B0=29?= <Chunfeng.Yun@mediatek.com>,
	Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, "Helge
 Deller" <deller@gmx.de>, Jitao Shi
 =?UTF-8?Q?=28=E7=9F=B3=E8=AE=B0=E6=B6=9B=29?= <jitao.shi@mediatek.com>
CC: Markus Schneider-Pargmann <msp@baylibre.com>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "linux-fbdev@vger.kernel.org"
	<linux-fbdev@vger.kernel.org>
Date: Wed, 8 Jun 2022 20:54:14 +0800
In-Reply-To: <79bea587e20de842d48dcb2e1da19e276f9d635b.camel@mediatek.com>
References: <20220523104758.29531-1-granquet@baylibre.com>
	 <20220523104758.29531-19-granquet@baylibre.com>
	 <b8aef76cef2fa434401b6a016de291eb24198faa.camel@mediatek.com>
	 <4329859ca11c13e7f6a9951b01a779fc391f029b.camel@mediatek.com>
	 <79bea587e20de842d48dcb2e1da19e276f9d635b.camel@mediatek.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_060426_239055_8B3EFCEC 
X-CRM114-Status: GOOD (  45.50  )
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

On Wed, 2022-06-08 at 10:44 +0800, CK Hu wrote:
> Hi, Rex:
> 
> On Tue, 2022-06-07 at 20:44 +0800, Rex-BC Chen wrote:
> > On Tue, 2022-06-07 at 14:44 +0800, CK Hu wrote:
> > > Hi, Rex:
> > > 
> > > On Mon, 2022-05-23 at 12:47 +0200, Guillaume Ranquet wrote:
> > > > From: Markus Schneider-Pargmann <msp@baylibre.com>
> > > > 
> > > > This patch adds a DisplayPort driver for the Mediatek mt8195
> > > > SoC.
> > > > 
> > > > It supports the mt8195, the embedded DisplayPort units. It
> > > > offers
> > > > DisplayPort 1.4 with up to 4 lanes.
> > > > 
> > > > The driver creates a child device for the phy. The child device
> > > > will
> > > > never exist without the parent being active. As they are
> > > > sharing
> > > > a
> > > > register range, the parent passes a regmap pointer to the child
> > > > so
> > > > that
> > > > both can work with the same register range. The phy driver sets
> > > > device
> > > > data that is read by the parent to get the phy device that can
> > > > be
> > > > used
> > > > to control the phy properties.
> > > > 
> > > > This driver is based on an initial version by
> > > > Jason-JH.Lin <jason-jh.lin@mediatek.com>.
> > > > 
> > > > Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> > > > Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
> > > > ---
> > > 
> > > [snip]
> > > 
> > > > +
> > > > +static int mtk_dp_train_handler(struct mtk_dp *mtk_dp)
> > > > +{
> > > > +	bool training_done = false;
> > > > +	short max_retry = 50;
> > > > +	int ret = 0;
> > > > +
> > > > +	do {
> > > > +		switch (mtk_dp->train_state) {
> > > > +		case MTK_DP_TRAIN_STATE_STARTUP:
> > > 
> > > mtk_dp->train_state is initialized as MTK_DP_TRAIN_STATE_STARTUP
> > > even
> > > though HPD ISR does not exist. Does this mean HPD ISR is
> > > redundant?
> > > If
> > > HPD ISR is not redundant, create a new state
> > > MTK_DP_TRAIN_STATE_NONE
> > > for init state.
> > > 
> > 
> > Hello CK,
> > 
> > I think we don't need MTK_DP_TRAIN_STATE_NONE.
> > Because it's "DP_TRAIN_STATE" not "DP_STATE", I think it's ok if we
> > start this state machine with "MTK_DP_TRAIN_STATE_STARTUP".
> 
> The initial state is MTK_DP_TRAIN_STATE_STARTUP, and HPD thread would
> change state from MTK_DP_TRAIN_STATE_STARTUP to
> MTK_DP_TRAIN_STATE_STARTUP, this is redundant. So drop the state
> change
> in HPD thread.
> 

ok, in edp it's redundant in mtk_dp_hpd_event_thread(), but I will add
it back in dp patch.

> > 
> > > > +			mtk_dp_state_handler(mtk_dp);
> > > > +			mtk_dp->train_state =
> > > > MTK_DP_TRAIN_STATE_CHECKCAP;
> > > > +			break;
> > > > +
> > > > +		case MTK_DP_TRAIN_STATE_CHECKCAP:
> > > > +			if (mtk_dp_parse_capabilities(mtk_dp))
> > > > {
> > > > +				mtk_dp-
> > > > >train_info.check_cap_count = 0;
> > > > +				mtk_dp->train_state =
> > > > MTK_DP_TRAIN_STATE_CHECKEDID;
> > > > +			} else {
> > > > +				mtk_dp-
> > > > >train_info.check_cap_count++;
> > > > +
> > > > +				if (mtk_dp-
> > > > >train_info.check_cap_count
> > > > > 
> > > > 
> > > > +				    MTK_DP_CHECK_SINK_CAP_TIMEO
> > > > UT_COUNT
> > > > ) {
> > > > +					mtk_dp-
> > > > > train_info.check_cap_count = 0;
> > > > 
> > > > +					mtk_dp->train_state =
> > > > MTK_DP_TRAIN_STATE_DPIDLE;
> > > > +					ret = -ETIMEDOUT;
> > > > +				}
> > > > +			}
> > > > +			break;
> > > > +
> > > > +		case MTK_DP_TRAIN_STATE_CHECKEDID:
> > > > +			mtk_dp->train_state =
> > > > MTK_DP_TRAIN_STATE_TRAINING_PRE;
> > > 
> > > MTK_DP_TRAIN_STATE_CHECKEDID is a redundant state, drop it.
> > > 
> > > > +			break;
> > > > +
> > > > +		case MTK_DP_TRAIN_STATE_TRAINING_PRE:
> > > > +			mtk_dp_state_handler(mtk_dp);
> > > > +			mtk_dp->train_state =
> > > > MTK_DP_TRAIN_STATE_TRAINING;
> > > > +			break;
> > > > +
> > > > +		case MTK_DP_TRAIN_STATE_TRAINING:
> > > > +			ret = mtk_dp_train_start(mtk_dp);
> > > > +			if (ret == 0) {
> > > > +				mtk_dp_video_mute(mtk_dp,
> > > > true);
> > > > +				mtk_dp->train_state =
> > > > MTK_DP_TRAIN_STATE_NORMAL;
> > > > +				mtk_dp_fec_enable(mtk_dp,
> > > > mtk_dp-
> > > > > has_fec);
> > > > 
> > > > +			} else if (ret != -EAGAIN) {
> > > > +				mtk_dp->train_state =
> > > > MTK_DP_TRAIN_STATE_DPIDLE;
> > > > +			}
> > > > +			break;
> > > > +		case MTK_DP_TRAIN_STATE_NORMAL:
> > > > +			mtk_dp_state_handler(mtk_dp);
> > > > +			training_done = true;
> > > > +			break;
> > > > +		case MTK_DP_TRAIN_STATE_DPIDLE:
> > > 
> > > When would this case happen?
> > > 
> > > Regards,
> > > CK
> > 
> > Yes, if it's disconnected if we are still training for dp.
> > or failed to training min spec RBR.
> 
> I mean, every time state change to MTK_DP_TRAIN_STATE_DPIDLE, it
> would
> jump out of this loop and would not get into this loop, so this case
> would never get in. This is redundant, so remove this.
> 
> Regards,
> CK
> 

ok, I will remove it

BRs,
Bo-Chen

> > 
> > BRs,
> > Rex
> > > 
> > > > +			break;
> > > > +		default:
> > > > +			break;
> > > > +		}
> > > > +
> > > > +		if (ret) {
> > > > +			if (ret == -EAGAIN)
> > > > +				continue;
> > > > +			/*
> > > > +			 * If we get any other error number, it
> > > > doesn't
> > > > +			 * make any sense to keep iterating.
> > > > +			 */
> > > > +			break;
> > > > +		}
> > > > +	} while (!training_done || --max_retry);
> > > > +
> > > > +	return ret;
> > > > +}
> > > 
> > > 
> > 
> > 
> 
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
