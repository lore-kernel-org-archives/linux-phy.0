Return-Path: <SRS0=Nkk4=I5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FF80C433C1
	for <linux-phy@archiver.kernel.org>; Wed, 31 Mar 2021 06:06:51 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A630461963
	for <linux-phy@archiver.kernel.org>; Wed, 31 Mar 2021 06:06:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A630461963
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:Subject:
	From:References:Cc:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LH9qpSl2OltWiA6wOOLMWsACYxS+mv1HJ2zCGmgWT1Q=; b=pcIsmQHjxujCJBlEIIRY7not2
	RPM4TGRh4GYyXL9hFZ6eDxFV46tdNHItFQjgptMiYhOxjT9FKnfVf8qto17rhDwM8xDvA1ExAIRuG
	g617q/QyqfbPfoHQ+L9HgZyq1s5BTtiubrn5WqB6+S8LCque7/oDW2L3J/LpMI60IVY2KoGCShfBm
	a0yAeJmaPxyxmAPcQ2STzeErCFfl/MAj2ONZHqVCy9JwjCih9R7knNkIWsdpohfRU4YL4lN/RNEsS
	I5prvF+seNv0vqdSBRPQP6hdiITNSml7XnDScCaFGT40N1mx782GVZviCmDxzeGu2KwteKYx3XnaT
	SbeOBXWtA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRU08-005aZk-TG; Wed, 31 Mar 2021 06:06:49 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRU02-005aZ5-V4
 for linux-phy@lists.infradead.org; Wed, 31 Mar 2021 06:06:45 +0000
Received: from [192.168.1.111] (91-157-208-71.elisa-laajakaista.fi
 [91.157.208.71])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 801F38DA;
 Wed, 31 Mar 2021 08:06:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1617170797;
 bh=VILbDV1g0gxNqONJ/YaXNqbdVu6oy81uJAYmz2A735k=;
 h=To:Cc:References:From:Subject:Date:In-Reply-To:From;
 b=Zp00r5q6OLXWjlSuXKr+hxYs0jNggnJa6qp4kkhVrgkOaL2nBl7oG2OcAL+w03Xgd
 37Ohb1Si1LYdjkshfbgFZGdAFIhDYTLyD9z7odYtbc2DphDpHkgh0N/ABFSz4w1b7E
 OpKx+5OplgF7UtIBMfX2e8RfT7flEyA6j1aEpswQ=
To: Pratyush Yadav <p.yadav@ti.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Peter Ujfalusi <peter.ujfalusi@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, Benoit Parrot <bparrot@ti.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Alexandre Courbot <acourbot@chromium.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Stanimir Varbanov <stanimir.varbanov@linaro.org>,
 Helen Koike <helen.koike@collabora.com>,
 Michael Tretter <m.tretter@pengutronix.de>, Peter Chen <peter.chen@nxp.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, dmaengine@vger.kernel.org
Cc: Vignesh Raghavendra <vigneshr@ti.com>
References: <20210330173348.30135-1-p.yadav@ti.com>
 <20210330173348.30135-14-p.yadav@ti.com>
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Subject: Re: [PATCH 13/16] media: ti-vpe: csi2rx: Add CSI2RX support
Message-ID: <91bbf2a9-9d27-7f9b-1c17-ad6544a828f1@ideasonboard.com>
Date: Wed, 31 Mar 2021 09:06:35 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210330173348.30135-14-p.yadav@ti.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210331_070643_192451_55008A7B 
X-CRM114-Status: GOOD (  21.86  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi,

On 30/03/2021 20:33, Pratyush Yadav wrote:
> TI's J721E uses the Cadence CSI2RX and DPHY peripherals to facilitate
> capture over a CSI-2 bus.
> 
> The Cadence CSI2RX IP acts as a bridge between the TI specific parts and
> the CSI-2 protocol parts. TI then has a wrapper on top of this bridge
> called the SHIM layer. It takes in data from stream 0, repacks it, and
> sends it to memory over PSI-L DMA.
> 
> This driver acts as the "front end" to V4L2 client applications. It
> implements the required ioctls and buffer operations, passes the
> necessary calls on to the bridge, programs the SHIM layer, and performs
> DMA via the dmaengine API to finally return the data to a buffer
> supplied by the application.
> 
> Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> ---
>   MAINTAINERS                               |   7 +
>   drivers/media/platform/Kconfig            |  11 +
>   drivers/media/platform/ti-vpe/Makefile    |   1 +
>   drivers/media/platform/ti-vpe/ti-csi2rx.c | 964 ++++++++++++++++++++++
>   4 files changed, 983 insertions(+)
>   create mode 100644 drivers/media/platform/ti-vpe/ti-csi2rx.c

Some quick comments:

"ti-vpe" directory is not correct, this has nothing to do with VPE. That 
said, the directory has already been abused by having CAL driver there, 
perhaps we should rename the directory just to "ti". But if we do that, 
I think we should have subdirs for cal, vpe and this new one.

"ti-csi2rx" is rather generic name. TI has had CSI-2 RX IPs before (CAL) 
and probably will also have new ones in the future. If there's no clear 
model name for the IP, as I think is the case here, it's probably best 
to just use the SoC model in the name. E.g. the DSS on J7 is "ti,j721e-dss".

This driver implements the legacy video API. I think it would be better 
(and easier to maintain) to only implement the media-controller API, 
unless you specifically need to support the legacy API for existing 
userspace.

  Tomi

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
