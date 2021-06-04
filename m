Return-Path: <SRS0=hNs7=K6=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 007C7C07E94
	for <linux-phy@archiver.kernel.org>; Fri,  4 Jun 2021 07:54:24 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C583E61405
	for <linux-phy@archiver.kernel.org>; Fri,  4 Jun 2021 07:54:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C583E61405
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zCWa5ph1R8BM9NRaNa3howGt/DVaq7swKkVyGbPS82c=; b=U9g/U+0fAO1mTl7ba/83XW6K3j
	BPAXjSx5WBnbEJgkjimNV7zhEq5M1uSbaBDw+QTwNLfL7MYTmVWJxg2v1W1fw0BOC/Vy5f9oUAjp4
	MlR8JIw2T3i8wHdKNMFZRY3FMfv/RV5Uzy/ZfCRsmILDqPNtnnT2Imxt26prFQRNGgpibyhiHrMcY
	O6jQSkvSls9dyIsn+ttQK6C3qN1Zh89STzt/XdHNVK+ImdlLr2ZPSVP8LFhUv3xPaHIF8SEzYbWo6
	qYhrGJsIB9YsQq4RYqIdFw8mk+xdygZLL7pVldbrYj/VZ3u/5MOOqec22uwDBdaRdQWco4rQzYtOl
	X2ggTbVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lp4et-00CB4G-Cf; Fri, 04 Jun 2021 07:54:23 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lp4en-00CB0J-7n
 for linux-phy@lists.infradead.org; Fri, 04 Jun 2021 07:54:21 +0000
Received: from [192.168.1.111] (91-157-208-71.elisa-laajakaista.fi
 [91.157.208.71])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id C29CDA52;
 Fri,  4 Jun 2021 09:54:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1622793250;
 bh=ID6cE11tXic6xVbni7ARCJyiry3HhzMUrxQrto7JjFY=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=ZgV/h2AydYDNQILNmqxagvf+go0bZ9gvQFYXka1bTME7wwrFP02SaahMt6qaIBcPT
 MSaD+4eMtDy4/IBWzNm7hA2tUGTRVO52j19HARsjxG8jy37yNX7fs0IhG+SVW1TikK
 5t7fyV5TLYUMnzmgNSrelPW1q9dvHcubb1KYxw0w=
Subject: Re: [PATCH v2 00/18] CSI2RX support on J721E
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
 <83bcd60a-2a45-59b2-8ebe-26ad5d828965@ideasonboard.com>
 <20210603125251.nmzibyvfzkkxfbtj@ti.com>
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Message-ID: <5f837a2d-69ba-ff43-1a8d-f7b975eeacdb@ideasonboard.com>
Date: Fri, 4 Jun 2021 10:54:08 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210603125251.nmzibyvfzkkxfbtj@ti.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210604_005417_437466_44D95375 
X-CRM114-Status: GOOD (  13.71  )
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

On 03/06/2021 15:52, Pratyush Yadav wrote:
> On 27/05/21 04:23PM, Tomi Valkeinen wrote:
>> Hi Pratyush,
>>
>> On 26/05/2021 18:22, Pratyush Yadav wrote:
>>> Hi,
>>>
>>> This series adds support for CSI2 capture on J721E. It includes some
>>> fixes to the Cadence CSI2RX driver, adds Rx support to Cadence DPHY
>>> driver, and finally adds the TI CSI2RX wrapper driver.
>>>
>>> Tested on TI's J721E with OV5640 sensor.
>>
>> I also see this after a few captures:
> 
> Can you share the application/command you are using to test? I used
> yavta to test and didn't see any problems after leaving the stream on
> for around 10 minutes.

You need to have CONFIG_DMA_API_DEBUG enabled. I think that's not 
enabled by default on TI configs.

  Tomi

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
