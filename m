Return-Path: <SRS0=WDaa=JD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D78CC433B4
	for <linux-phy@archiver.kernel.org>; Tue,  6 Apr 2021 15:10:02 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3979E61363
	for <linux-phy@archiver.kernel.org>; Tue,  6 Apr 2021 15:10:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3979E61363
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uLpGxPrPr3sanEsjbRyM++bGP4UkJZ18GsKuZXeD0NM=; b=b5sd4ssDSe8WCK40m/fstHajM
	mcJjcjQgYE7DUzn/wLOqb5ndlg2Xdudz6Q+UQFwB1VWIvcCZn/Ee5qAL8f8F98Rl9OyxntnOhkMo8
	Ro9SH9ozdTSNNxK3mjTpMeVAl1q33+HtpM6EMDYRV+YFu+dqX4kZHccFB43OTjskkLvVRGcQgAvoJ
	Ufv9ElEFRDyuNUQmum+okIikNaTupnmi3dwBkQDGbjLZGizZwc0AND/JZwW6awgdpeHUAU+kdSOm6
	p5V02Mr5WysyT2kezlwCAbasHhfccsSkRr3jUT7G8BqCxofzXVJNOK3SWRak06cmJc0exQ7Jm2XwO
	NpSLr9C8Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lTnL4-002ttQ-LC; Tue, 06 Apr 2021 15:09:58 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lTnKy-002tsZ-Ve
 for linux-phy@lists.infradead.org; Tue, 06 Apr 2021 15:09:57 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 136F9kdK051468;
 Tue, 6 Apr 2021 10:09:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1617721786;
 bh=zhcXVfELo5elywfqEq3FrE6jD2OsBz641NuCWtfMcZg=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=woKrHduGuYc8SVo0jICjQufJfoBZ4zd7Cem8OelhzyS5NoyKwT4zbEl2GRD43mfR+
 i7vr9o+HjpKpYGW3ng5t/1h27+msDPCkHkE88st6SfQ6pat2Fn2QmP/81ZyKpAdCuW
 9cuZbNJ8ZcAWrAr7Z/AE22x7ylHM2BeMo2ghJf6A=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 136F9kJP083293
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 6 Apr 2021 10:09:46 -0500
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Tue, 6 Apr
 2021 10:09:45 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Tue, 6 Apr 2021 10:09:45 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 136F9jlK119537;
 Tue, 6 Apr 2021 10:09:45 -0500
Date: Tue, 6 Apr 2021 20:39:44 +0530
From: Pratyush Yadav <p.yadav@ti.com>
To: =?iso-8859-1?Q?P=E9ter?= Ujfalusi <peter.ujfalusi@gmail.com>
CC: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul
 <vkoul@kernel.org>, Maxime Ripard <mripard@kernel.org>, Benoit Parrot
 <bparrot@ti.com>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Alexandre Courbot <acourbot@chromium.org>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>, Stanimir Varbanov
 <stanimir.varbanov@linaro.org>, Helen Koike <helen.koike@collabora.com>,
 Michael Tretter <m.tretter@pengutronix.de>,
 Peter Chen <peter.chen@nxp.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 <linux-media@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <dmaengine@vger.kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Subject: Re: [PATCH 11/16] dmaengine: ti: k3-psil-j721e: Add entry for CSI2RX
Message-ID: <20210406150942.4kyjh2ehsvklupjr@ti.com>
References: <20210330173348.30135-1-p.yadav@ti.com>
 <20210330173348.30135-12-p.yadav@ti.com>
 <78a5983c-04c8-4a4c-04fe-bb1f31e87375@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <78a5983c-04c8-4a4c-04fe-bb1f31e87375@gmail.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210406_160953_607298_405FF9AB 
X-CRM114-Status: GOOD (  28.89  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 04/04/21 04:24PM, P=E9ter Ujfalusi wrote:
> Hi Pratyush,
> =

> On 3/30/21 8:33 PM, Pratyush Yadav wrote:
> > The CSI2RX subsystem uses PSI-L DMA to transfer frames to memory. It can
> > have up to 32 threads but the current driver only supports using one. So
> > add an entry for that one thread.
> =

> If you are absolutely sure that the other threads are not going to be
> used, then:

The opposite in fact. I do expect other threads to be used in the =

future. But the current driver can only use one so I figured it is =

better to add just the thread that is currently needed and then I can =

always add the rest later.

Why does this have to be a one-and-done deal? Is there anything wrong =

with adding the other threads when the driver can actually use them?

> Acked-by: Peter Ujfalusi <peter.ujfalusi@gmail.com>
> =

> but I would consider adding the other threads if there is a chance that
> the cs2rx will need to support it in the future.
> =

> > Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> > ---
> >  drivers/dma/ti/k3-psil-j721e.c | 10 ++++++++++
> >  1 file changed, 10 insertions(+)
> > =

> > diff --git a/drivers/dma/ti/k3-psil-j721e.c b/drivers/dma/ti/k3-psil-j7=
21e.c
> > index 7580870ed746..19ffa31e6dc6 100644
> > --- a/drivers/dma/ti/k3-psil-j721e.c
> > +++ b/drivers/dma/ti/k3-psil-j721e.c
> > @@ -58,6 +58,14 @@
> >  		},					\
> >  	}
> >  =

> > +#define PSIL_CSI2RX(x)					\
> > +	{						\
> > +		.thread_id =3D x,				\
> > +		.ep_config =3D {				\
> > +			.ep_type =3D PSIL_EP_NATIVE,	\
> > +		},					\
> > +	}
> > +
> >  /* PSI-L source thread IDs, used for RX (DMA_DEV_TO_MEM) */
> >  static struct psil_ep j721e_src_ep_map[] =3D {
> >  	/* SA2UL */
> > @@ -138,6 +146,8 @@ static struct psil_ep j721e_src_ep_map[] =3D {
> >  	PSIL_PDMA_XY_PKT(0x4707),
> >  	PSIL_PDMA_XY_PKT(0x4708),
> >  	PSIL_PDMA_XY_PKT(0x4709),
> > +	/* CSI2RX */
> > +	PSIL_CSI2RX(0x4940),
> >  	/* CPSW9 */
> >  	PSIL_ETHERNET(0x4a00),
> >  	/* CPSW0 */
> > =

> =

> -- =

> P=E9ter

-- =

Regards,
Pratyush Yadav
Texas Instruments Inc.

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
