Return-Path: <SRS0=IoTu=KW=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C63BC4707F
	for <linux-phy@archiver.kernel.org>; Thu, 27 May 2021 13:41:53 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E7C4D6124B
	for <linux-phy@archiver.kernel.org>; Thu, 27 May 2021 13:41:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E7C4D6124B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ci0h3eAUuKUk4oR8JxEW8OPqxmt1nvDYGMx00A1gx40=; b=yBY/XST+hiYXpjfUtKl2sEmi7J
	q+xvJSg0i6689Uy/9RQ1kf84xuGS9SREt5HzLR0jruqpgLyNQjDC2MlgtwSriTRW6PQJcuP5QnUpr
	Z1x2U1CWewqsJeZVCXsww/AP6A64pzaAvu1HsxdEx6Yra+FJg3fxR5ZsriqpXw+o/hr8H3MPnRZnq
	nLa2gruoyCbv2HYm6FnMmxvFMlfxVORsU2wLr20XvzduocSNM9FYFVGs6P6OQAniIE2bian8qYA+l
	UcBhjsQm369IuU4+9grU5jjjB2pkszoG3SbJ8l7PTUr8w+NvOpHQRfSDeTk3QX3DNDX4+UTcaisox
	fftBXuvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmGGl-006N0d-VR; Thu, 27 May 2021 13:41:51 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmG5I-006HUV-Q7
 for linux-phy@lists.infradead.org; Thu, 27 May 2021 13:30:02 +0000
Received: from [192.168.1.111] (91-157-208-71.elisa-laajakaista.fi
 [91.157.208.71])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 09864ED;
 Thu, 27 May 2021 15:29:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1622122199;
 bh=yR/grf3p5cSL4FQsJoHO8ZzmX5PWtfRjN/6uJPBLG88=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=NlhgSUinbel7MPx12HO9bd/P/4jf+w5eh2bVQ2Qb/bOL81/PiYqcuqnwoUWC8xBpV
 lLY0TaW80I6r5gwLIfhe0pfI6QQ5cfsg/luV8Nzpi+mjmKKM04fjvVV4bPTGG21R/4
 6wDQ9T5TnA0Vabmq1aCNx5XPkyw83FShlhn7doi4=
Subject: Re: [PATCH v2 13/18] media: ti: Add CSI2RX support for J721E
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
 <20210526152308.16525-14-p.yadav@ti.com>
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Message-ID: <5e00444a-683f-b4fa-9156-4450ca4edaf6@ideasonboard.com>
Date: Thu, 27 May 2021 16:29:57 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210526152308.16525-14-p.yadav@ti.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210527_063001_042664_A3A9E01C 
X-CRM114-Status: GOOD (  16.90  )
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

Hi Pratyush,

On 26/05/2021 18:23, Pratyush Yadav wrote:
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

I noticed that my test app didn't work at all with this, and I also 
wasn't able to use v4l2-ctl to set the format.

At least for my test app the problem was that this driver doesn't 
initialize the format at all. My app first calls VIDIOC_G_FMT with 
v4l2_format.type == V4L2_BUF_TYPE_VIDEO_CAPTURE, then after the call 
modifies the fields it wants to change and calls VIDIOC_S_FMT. This 
failed, as G_FMT returned uninitialized fmt, i.e. type was 0, which my 
app didn't set again.

I believe the driver should have an initial format, something that it 
will accept if an app calls G_FMT and then S_FMT.

  Tomi

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
