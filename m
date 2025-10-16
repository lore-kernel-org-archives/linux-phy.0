Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF014CCD199
	for <linux-phy@archiver.kernel.org>; Thu, 16 Oct 2025 13:07:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gvD4qCVHxIOJ34XjBAo1SFP6CVWx+iNIb/b0tTPkHZU=; b=lSYMeIGhH1hSh3
	aUrhGzLVBgtFhwwb6Q59mE+9WlxEXPo24xKwaQNkVYb6p4v1XlHrg8EorMrwMpDbdxCSgBxBJCy8/
	+8W5djO965FDKKfvg/+4HOnMLb0fT/7hA41jo1OXzuMpAgy5dwFdf2EEEgr8c1ZwZFuAN0hLLqkuA
	2nJZp8cinCOw8LuVuTEBxUlMZh1sCJ7BhHfbedXBZmBG6obz2yRJ0A8wrFbbtmDtuSaZF44+d3zE1
	vIzYllO81OklBP8x1uyXvYlWFi0ZJN1ShYerKu1TcznEanlCv9+dGeo5a24ogC72r0l7pn9IrLEA3
	Ehnbl2J8A6LGe3Bz5sqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9NhY-00000004pee-1P7w;
	Thu, 16 Oct 2025 13:07:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9NhV-00000004pcf-3hmr
	for linux-phy@lists.infradead.org;
	Thu, 16 Oct 2025 13:07:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1v9Nge-0006uW-N8; Thu, 16 Oct 2025 15:06:32 +0200
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1v9Ngb-003tYQ-0H;
	Thu, 16 Oct 2025 15:06:29 +0200
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1v9Nga-000000009Lu-47nD;
	Thu, 16 Oct 2025 15:06:28 +0200
Message-ID: <410ea7ea7980b751289bd603ffab5bf3ee114084.camel@pengutronix.de>
Subject: Re: [PATCH v2 5/5] scsi: ufs: mediatek: Rework resets
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, Alim Akhtar	
 <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, Bart Van
 Assche	 <bvanassche@acm.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Matthias Brugger	 <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno	
 <angelogioacchino.delregno@collabora.com>, Chunfeng Yun	
 <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay
 Abraham I <kishon@kernel.org>, Peter Wang <peter.wang@mediatek.com>,
 Stanley Jhu <chu.stanley@gmail.com>,  "James E.J. Bottomley"
 <James.Bottomley@HansenPartnership.com>, "Martin K. Petersen"
 <martin.petersen@oracle.com>
Cc: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>, 
	kernel@collabora.com, linux-scsi@vger.kernel.org,
 devicetree@vger.kernel.org, 	linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, 	linux-mediatek@lists.infradead.org,
 linux-phy@lists.infradead.org
Date: Thu, 16 Oct 2025 15:06:28 +0200
In-Reply-To: <20251016-mt8196-ufs-v2-5-c373834c4e7a@collabora.com>
References: <20251016-mt8196-ufs-v2-0-c373834c4e7a@collabora.com>
	 <20251016-mt8196-ufs-v2-5-c373834c4e7a@collabora.com>
User-Agent: Evolution 3.56.1-1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251016_060725_913272_7439CC3E 
X-CRM114-Status: UNSURE (   8.48  )
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

On Do, 2025-10-16 at 14:06 +0200, Nicolas Frattaroli wrote:
> Rework the reset control getting in the driver's probe function to use
> the bulk reset APIs. Use the optional variant instead of defaulting to
> NULL if the resets fail, so that absent resets can be distinguished from
> erroneous resets.
> 
> Also move all remnants of the MPHY reset ever having lived in this
> driver.
> 
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
