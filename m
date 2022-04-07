Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53592C433F5
	for <linux-phy@archiver.kernel.org>; Thu,  7 Apr 2022 09:12:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b8S9syn0O0UwFB3QNJlm8u2Cuoz/pOTaxjTn7sy2vVI=; b=ADK3VG8flRHCKf
	zDmoTqFyQZPaqFkW3Ich3jbhU0BvEKy78jWPFkH7pMLLFH2qHucAklQ8aRE0i69Ne8mQKGEOkLsoH
	4Iq6TpNY2yraBu6KmGIpVIwhA1/1jwjQWTY77S5uES2Fw3qMMucFmZL/HW0KNjNxsBhVRM/NvfKde
	9iIcr6cOM9R+FZKI5+5q/GRHFUIDj1y4orryO8L5a4+AuV/PARHiG/F7Nht6V1IgmcgoOe70IEHvM
	zPtNnCPT9u2PdK7WVTw7jEcTa7+THBdZ7bMsGKkI6uwAT8u5T0keQwZ9zdGSSfmBHkSGQ59DygmDu
	tYqTQkw0QRNn8CERYqCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncOBe-00AjXX-8C; Thu, 07 Apr 2022 09:12:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncNrG-00AaCw-5V
 for linux-phy@lists.infradead.org; Thu, 07 Apr 2022 08:51:16 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1ncNqz-0004iY-2X; Thu, 07 Apr 2022 10:50:57 +0200
Message-ID: <245623b25bfc6de8ef76bcbbbce5a2d8fbad7b74.camel@pengutronix.de>
Subject: Re: [PATCH v0 01/10] drm/bridge: dw-hdmi: add low-active PHY reset
From: Lucas Stach <l.stach@pengutronix.de>
To: Neil Armstrong <narmstrong@baylibre.com>, Philipp Zabel
 <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, NXP Linux
 Team <linux-imx@nxp.com>
Cc: Fabio Estevam <festevam@gmail.com>, Pengutronix Kernel Team
 <kernel@pengutronix.de>, Robert Foss <robert.foss@linaro.org>, Andrzej
 Hajda <andrzej.hajda@intel.com>, Vinod Koul <vkoul@kernel.org>, Kishon
 Vijay Abraham I <kishon@ti.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org,  linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org,  patchwork-lst@pengutronix.de
Date: Thu, 07 Apr 2022 10:50:55 +0200
In-Reply-To: <b3abd199-0acb-a2d3-bd53-aa26182aa0c9@baylibre.com>
References: <20220406160123.1272911-1-l.stach@pengutronix.de>
 <20220406160123.1272911-2-l.stach@pengutronix.de>
 <b3abd199-0acb-a2d3-bd53-aa26182aa0c9@baylibre.com>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220407_015114_284077_8AA6A412 
X-CRM114-Status: GOOD (  14.35  )
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

Hi Neil,

Am Donnerstag, dem 07.04.2022 um 10:30 +0200 schrieb Neil Armstrong:
> Hi Lucas,
> 
> On 06/04/2022 18:01, Lucas Stach wrote:
> > Allow vendor PHY implementations to reset PHYs with different polarity
> > than the current Gen2 reset.
> > 
> > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > ---
> >   drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 7 +++++++
> >   include/drm/bridge/dw_hdmi.h              | 1 +
> >   2 files changed, 8 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> > index 4befc104d220..7600f26aab27 100644
> > --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> > +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> > @@ -1365,6 +1365,13 @@ void dw_hdmi_phy_reset(struct dw_hdmi *hdmi)
> >   }
> >   EXPORT_SYMBOL_GPL(dw_hdmi_phy_reset);
> >   
> > +void dw_hdmi_phy_reset_active_low(struct dw_hdmi *hdmi)
> > +{
> > +	hdmi_writeb(hdmi, 0, HDMI_MC_PHYRSTZ);
> > +	hdmi_writeb(hdmi, HDMI_MC_PHYRSTZ_PHYRSTZ, HDMI_MC_PHYRSTZ);
> > +}
> > +EXPORT_SYMBOL_GPL(dw_hdmi_phy_reset_active_low);
> > +
> >   void dw_hdmi_phy_i2c_set_addr(struct dw_hdmi *hdmi, u8 address)
> >   {
> >   	hdmi_phy_test_clear(hdmi, 1);
> > diff --git a/include/drm/bridge/dw_hdmi.h b/include/drm/bridge/dw_hdmi.h
> > index 2a1f85f9a8a3..9b3d52a1e62a 100644
> > --- a/include/drm/bridge/dw_hdmi.h
> > +++ b/include/drm/bridge/dw_hdmi.h
> > @@ -190,6 +190,7 @@ void dw_hdmi_phy_i2c_write(struct dw_hdmi *hdmi, unsigned short data,
> >   void dw_hdmi_phy_gen2_pddq(struct dw_hdmi *hdmi, u8 enable);
> >   void dw_hdmi_phy_gen2_txpwron(struct dw_hdmi *hdmi, u8 enable);
> >   void dw_hdmi_phy_reset(struct dw_hdmi *hdmi);
> > +void dw_hdmi_phy_reset_active_low(struct dw_hdmi *hdmi);
> >   
> >   enum drm_connector_status dw_hdmi_phy_read_hpd(struct dw_hdmi *hdmi,
> >   					       void *data);
> 
> This has already been submitted at https://lore.kernel.org/r/800262112191a720639ba321be18f0926d4e1d2a.1649230434.git.Sandor.yu@nxp.com

Thanks for the pointer, seems I missed this series. I'll switch to this
function instead.

Regards,
Lucas



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
