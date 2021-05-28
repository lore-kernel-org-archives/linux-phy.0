Return-Path: <SRS0=Ugb/=KX=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 43E78C4708E
	for <linux-phy@archiver.kernel.org>; Fri, 28 May 2021 07:17:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EC9C7611C9
	for <linux-phy@archiver.kernel.org>; Fri, 28 May 2021 07:17:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EC9C7611C9
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Wlz4xfVGaVonlJ/V1Z1tf10gI8uN+YcCT3Mn6kGXNnY=; b=00A1TKOnr71yaktOIkPvMJ0JZB
	SJk7AAjW8WcweVsb6Ss2z8V2lLjHtEs3uKqHZkFyRa6UiSXH/JvQgRr19iLaBpzbINZFRL4gMD+JU
	tpl9E67gAP5pxKoatUkvGAvc0sW5O7rvy+FqijKXHqB+s0PWp+l7HPv14bl3S5DKKKlyYZ5Ynw8ZR
	I+wDhq9YWDudppq/ePDkJCMBbbRQS9sffAar0On4RnnAVrSEEXR6sfE64OjS3E6opwCMWpJOswLBe
	lwfgE2SfIghotxwpGheB+PZkO4sH8V0DnbaHkIBuOo7nYXCuXeHy/TruwBPo4RbzOtYN0QGHKHCYy
	0LG+Bp6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmWjy-00CuhR-GJ; Fri, 28 May 2021 07:17:06 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmWjw-00CufD-7U
 for linux-phy@lists.infradead.org; Fri, 28 May 2021 07:17:05 +0000
Received: from [192.168.1.111] (91-157-208-71.elisa-laajakaista.fi
 [91.157.208.71])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id D034D8C7;
 Fri, 28 May 2021 09:16:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1622186220;
 bh=CrcGIprNiWYjyNBEAjRVKsmiWp0B7Zru8OKtl8SwMMk=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=A0eMB83vn68dWs7oY99yf0EZalzsYf95dAS70wN57DUz9ssEnwPExUddDg/5/qlvg
 1qDRHuQcYJ5YkG9lvGraoXFdT2OEEHmRnlYp3OTJVoCvSa6weUV8pl+eL36HnVc4f4
 c21rik+TaQd1LNBve6I7psWrPHyNnHuZvSrfQ9kw=
Subject: Re: [PATCH v2 10/18] media: cadence: csi2rx: Populate subdev devnode
To: Pratyush Yadav <p.yadav@ti.com>, Maxime Ripard <mripard@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Peter Ujfalusi <peter.ujfalusi@gmail.com>,
 Steve Longerbeam <slongerbeam@gmail.com>, Benoit Parrot <bparrot@ti.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 dmaengine@vger.kernel.org
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <20210526152308.16525-1-p.yadav@ti.com>
 <20210526152308.16525-11-p.yadav@ti.com>
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Message-ID: <9c38a72c-18e8-1e54-b3b4-85ff5d47857a@ideasonboard.com>
Date: Fri, 28 May 2021 10:16:58 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210526152308.16525-11-p.yadav@ti.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210528_001704_469410_08F3DDAB 
X-CRM114-Status: GOOD (  16.22  )
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

On 26/05/2021 18:23, Pratyush Yadav wrote:
> The devnode can be used by media-ctl and other userspace tools to
> perform configurations on the subdev. Without it, media-ctl returns
> ENOENT when setting format on the sensor subdev.
> 
> Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> ---
> 
> (no changes since v1)
> 
>   drivers/media/platform/cadence/cdns-csi2rx.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/media/platform/cadence/cdns-csi2rx.c b/drivers/media/platform/cadence/cdns-csi2rx.c
> index 1df21f462f3c..49bed63d5faa 100644
> --- a/drivers/media/platform/cadence/cdns-csi2rx.c
> +++ b/drivers/media/platform/cadence/cdns-csi2rx.c
> @@ -613,6 +613,7 @@ static int csi2rx_probe(struct platform_device *pdev)
>   	csi2rx->pads[CSI2RX_PAD_SINK].flags = MEDIA_PAD_FL_SINK;
>   	for (i = CSI2RX_PAD_SOURCE_STREAM0; i < CSI2RX_PAD_MAX; i++)
>   		csi2rx->pads[i].flags = MEDIA_PAD_FL_SOURCE;
> +	csi2rx->subdev.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
>   
>   	ret = media_entity_pads_init(&csi2rx->subdev.entity, CSI2RX_PAD_MAX,
>   				     csi2rx->pads);
> 

I don't understand this one. There's nothing to configure in cdns-csi2rx 
from userspace, as far as I can see, so why is the dev node needed? And 
why would the lack of csi2rx dev node cause sensor subdev config to fail?

  Tomi

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
