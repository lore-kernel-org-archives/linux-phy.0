Return-Path: <SRS0=WDaa=JD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1A3DC433ED
	for <linux-phy@archiver.kernel.org>; Tue,  6 Apr 2021 18:48:45 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 75363613C0
	for <linux-phy@archiver.kernel.org>; Tue,  6 Apr 2021 18:48:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 75363613C0
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=412pKCiO2rtbWQ0bGSjJP/fnix+1BD7fVjTigMkRUB0=; b=Y+uUJzvFSa13IeMOsddFEbCWb
	jwgcYqbkqxiEIp27B3z3k3xy1KfYJWu07qR0Hs6+XfRJY8trj9+pPq42QM5z80pf3/0zlHELM7ST5
	M0F8F+xlNP1G8eC7Jk8U/LdDHKGmKD4NS9vbz//2m7DMTSsj4L3XHmm+IO3Wh6IvtcdEOnkLkdWSR
	+UhpEnnoMGAoCUbn3Qbh1ue6ayEpEF1z4st2dmcerp3PsGdnjXNEsw7rVJHrSyxD42cNnKJzTiFz6
	LaIKEy5vT0+fTZhZo7dZ/vlXVnbLcoZYXtFHCaYl5yy98374RBX9SLztm472NFZRi8rfTBa+SaHkI
	synQiTmDA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lTqkl-003IHm-Qe; Tue, 06 Apr 2021 18:48:44 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lTqkh-003IHL-59
 for linux-phy@lists.infradead.org; Tue, 06 Apr 2021 18:48:41 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 136ImVOO093015;
 Tue, 6 Apr 2021 13:48:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1617734911;
 bh=Q/jz6vulWvnwCL1uFn+Cr3yxMcztB0HWPUk2BbmlXmo=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=lAxTY7RFfAR0NVtCLSY3XQLd1V0imGpedADxjGR/G91DG3p2fFZyeTLhaPSbtP9P3
 3jITUgQURv3VcGougfG7sBrBYj4rH2nN1r67LXnTy6TzwoLp+bwqXReqnwJ3aJ8NYi
 54jVyqyiUo7quqOhK/uQWKZOQrJB3Ist+YYugTcg=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 136ImVUW071802
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 6 Apr 2021 13:48:31 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Tue, 6 Apr
 2021 13:48:31 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Tue, 6 Apr 2021 13:48:31 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 136ImUd1076720;
 Tue, 6 Apr 2021 13:48:31 -0500
Date: Wed, 7 Apr 2021 00:18:30 +0530
From: Pratyush Yadav <p.yadav@ti.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
CC: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul
 <vkoul@kernel.org>, Peter Ujfalusi <peter.ujfalusi@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, Benoit Parrot <bparrot@ti.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Alexandre Courbot <acourbot@chromium.org>,
 Stanimir Varbanov <stanimir.varbanov@linaro.org>, Helen Koike
 <helen.koike@collabora.com>, Michael Tretter <m.tretter@pengutronix.de>,
 Peter Chen <peter.chen@nxp.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 <linux-media@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <dmaengine@vger.kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>, Tomi
 Valkeinen <tomi.valkeinen@ideasonboard.com>
Subject: Re: [PATCH 15/16] dt-bindings: phy: cdns,dphy: make clocks optional
Message-ID: <20210406184828.ftxrrnrrvbprrlom@ti.com>
References: <20210330173348.30135-1-p.yadav@ti.com>
 <20210330173348.30135-16-p.yadav@ti.com>
 <YGbyfg4hs/yLsqw0@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YGbyfg4hs/yLsqw0@pendragon.ideasonboard.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210406_194839_666944_8CBDF3BF 
X-CRM114-Status: GOOD (  27.06  )
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

On 02/04/21 01:31PM, Laurent Pinchart wrote:
> Hi Pratyush,
> 
> Thank you for the patch.
> 
> On Tue, Mar 30, 2021 at 11:03:47PM +0530, Pratyush Yadav wrote:
> > The clocks are not used by the DPHY when used in Rx mode so make them
> > optional.
> 
> Isn't there a main functional clock (DPHY_RX_MAIN_CLK in the J721E TRM)
> that is needed in RX mode ?

That clock is different from the clocks being used in this binding. The 
"psm" clock is for the PMA state machine (the internal state machine for 
the DPHY). The divider for this clock should be set such that the 
resultant clock is as close to 1 MHz as possible. This can be done 
either by programming the register value or by setting the correct value 
on the psm_clock_freq pin. On J721E the pin already has the correct 
value so there is no need for setting it via the register.

The other clock is "pll_ref" which is used to set the input clock 
divider. Setting this divider is part of the DPHY TX programming 
sequence but is not part of the RX programming sequence. I'm not sure 
what exactly the divider does but I think it is supposed to divide the 
clock from the input stream to the TX DPHY to make sure the internal 
state machine is running at the correct speed. Anyway, it is not needed 
on the RX side because for that there is another register used (see 
cdns_dphy_rx_get_band_ctrl() in patch 4).

The DPHY_RX_MAIN_CLK does eventually get divided into the PSM clock but 
it is not used directly.

> 
> > Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> > ---
> >  Documentation/devicetree/bindings/phy/cdns,dphy.yaml | 2 --
> >  1 file changed, 2 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/cdns,dphy.yaml b/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
> > index d1bbf96a8250..0807ba68284d 100644
> > --- a/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
> > @@ -33,8 +33,6 @@ properties:
> >  required:
> >    - compatible
> >    - reg
> > -  - clocks
> > -  - clock-names
> >    - "#phy-cells"
> >  
> >  additionalProperties: false
> 
> -- 
> Regards,
> 
> Laurent Pinchart

-- 
Regards,
Pratyush Yadav
Texas Instruments Inc.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
