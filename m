Return-Path: <SRS0=hNs7=K6=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5503C07E94
	for <linux-phy@archiver.kernel.org>; Fri,  4 Jun 2021 08:04:42 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 69DDB6141D
	for <linux-phy@archiver.kernel.org>; Fri,  4 Jun 2021 08:04:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 69DDB6141D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:Subject:
	From:References:Cc:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QwYYeMDCilA4oqK8jYry9zyfCLI/85bNcStNcPdrXAg=; b=3s5NCUw2oHLJ7THCnWZOz8ikDV
	rmpQvATBbzMtmbdPDzdlSWl+l8M0Wd0HfkhsERPONu9iDZjq+ZqgHHHbFzyQqe4MM/CyiuUUHB5BA
	7SFRnJ+nIj0NyjEdBSwQ7oc45BG0JKLa7Qdn0hffg1llfRCMIS6IPBra9BjjEsPeXIGIW48Fz/qLm
	10d8Ov0XfyNvgSP5fJRRsqcxNIVTmOU8hYo2m8pEmfRgy11n0OLr8kWFM9zDQElF1xVQcjMxHsjlH
	gD0TsCEVaN5LVJ6yAHcfzOxQXHe7BZ7gVOIfPsqezlr34JWXuqWhzyS4t/grK7Pt9jTS8O3YCL+t7
	S2GsBuOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lp4or-00CC0S-W7; Fri, 04 Jun 2021 08:04:41 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lp4ok-00CByd-9G
 for linux-phy@lists.infradead.org; Fri, 04 Jun 2021 08:04:40 +0000
Received: from [192.168.1.111] (91-157-208-71.elisa-laajakaista.fi
 [91.157.208.71])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 20039A52;
 Fri,  4 Jun 2021 10:04:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1622793871;
 bh=j1SXMbUoe/8w0rZ6UdZfNhuo9qc6ocoxoJrTdQSBoU0=;
 h=To:Cc:References:From:Subject:Date:In-Reply-To:From;
 b=NNsF2Qc6TuwHZ1QwuxlAt3dWSJMADIbpLyeKjMAaTOQxq2XiyGUBVurqN218ePdZK
 2YJwDUslifIOVMLazpGhUZn5VwmWXmkrVmS8vgqO88+NV3Y11jWrC+k1i37UV8oBif
 2DlZlXlr9W6tCyT5C30McrP1EHCXS0awnpACQbEQ=
To: Pratyush Yadav <p.yadav@ti.com>
Cc: Maxime Ripard <mripard@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Peter Ujfalusi <peter.ujfalusi@gmail.com>,
 Steve Longerbeam <slongerbeam@gmail.com>, Benoit Parrot <bparrot@ti.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 dmaengine@vger.kernel.org, Vignesh Raghavendra <vigneshr@ti.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <20210526152308.16525-1-p.yadav@ti.com>
 <20210526152308.16525-14-p.yadav@ti.com>
 <5e00444a-683f-b4fa-9156-4450ca4edaf6@ideasonboard.com>
 <20210603124920.5o34klhlhjg5phlj@ti.com>
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Subject: Re: [PATCH v2 13/18] media: ti: Add CSI2RX support for J721E
Message-ID: <b930c6e5-1210-5b13-2e29-25ffaa99519d@ideasonboard.com>
Date: Fri, 4 Jun 2021 11:04:29 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210603124920.5o34klhlhjg5phlj@ti.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210604_010434_481960_B19962C5 
X-CRM114-Status: GOOD (  26.53  )
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

On 03/06/2021 15:49, Pratyush Yadav wrote:
> On 27/05/21 04:29PM, Tomi Valkeinen wrote:
>> Hi Pratyush,
>>
>> On 26/05/2021 18:23, Pratyush Yadav wrote:
>>> TI's J721E uses the Cadence CSI2RX and DPHY peripherals to facilitate
>>> capture over a CSI-2 bus.
>>>
>>> The Cadence CSI2RX IP acts as a bridge between the TI specific parts and
>>> the CSI-2 protocol parts. TI then has a wrapper on top of this bridge
>>> called the SHIM layer. It takes in data from stream 0, repacks it, and
>>> sends it to memory over PSI-L DMA.
>>>
>>> This driver acts as the "front end" to V4L2 client applications. It
>>> implements the required ioctls and buffer operations, passes the
>>> necessary calls on to the bridge, programs the SHIM layer, and performs
>>> DMA via the dmaengine API to finally return the data to a buffer
>>> supplied by the application.
>>>
>>> Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
>>
>> I noticed that my test app didn't work at all with this, and I also wasn't
>> able to use v4l2-ctl to set the format.
> 
> I have not used v4l2-ctl, but I can see yavta works fine. What command
> did you use for setting format via v4l2-ctl?
> 
>>
>> At least for my test app the problem was that this driver doesn't initialize
>> the format at all. My app first calls VIDIOC_G_FMT with v4l2_format.type ==
>> V4L2_BUF_TYPE_VIDEO_CAPTURE, then after the call modifies the fields it
>> wants to change and calls VIDIOC_S_FMT. This failed, as G_FMT returned
>> uninitialized fmt, i.e. type was 0, which my app didn't set again.
>>
>> I believe the driver should have an initial format, something that it will
>> accept if an app calls G_FMT and then S_FMT.
> 
> Right. This is a bug. The question is what should the initial format be?
> It is more or less arbitrary since there is no configuration made yet
> and we don't know what the camera can or will send. So for example, what
> if I use UYVY 640x480? The camera might not support it at all. Is it
> still OK to have it as the default?

I think it doesn't really matter what the initial format is, as long as 
it's valid for the subdev itself. There are two separate things:

1) Subdev config, where the subdev is considered independently from the 
other subdevs. E.g. the formats in the input pads and output pads should 
be valid, taking into account the capabilities of the subdev. The subdev 
driver has to take care of these, i.e. if the user sets a format on a 
pad, the driver must adjust the other pads (if needed) to keep the 
subdev config valid.

2) pipeline validation, where all the subdevs in the pipeline are looked 
at and validated that the settings are compatible.

We're talking about 1) here, and it doesn't matter if the camera 
supports the csirx initial format or not.

  Tomi

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
