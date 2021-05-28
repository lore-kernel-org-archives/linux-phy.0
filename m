Return-Path: <SRS0=Ugb/=KX=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1822EC47087
	for <linux-phy@archiver.kernel.org>; Fri, 28 May 2021 07:35:19 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8658061378
	for <linux-phy@archiver.kernel.org>; Fri, 28 May 2021 07:35:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8658061378
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vigPzBdMpLNTl7OK1P5pDtUag+FI2URannFgzn5e3j4=; b=UckmaJ1l9U2xXX2F1On1MYkQ7z
	0+ZpxVGmBCdhKkgvbdQcgmjG+JB6yZn9nFgJ3s2gqcS0AAGe93oAbJpSuVgtEWbITWxIxdB5ZgS4m
	9Dckhw0DMQnqVhNV62595BkPKnGNAbkwI2686NVu2WpwIaH4VyJXiErLiC4PhigQOHNHdYjiKEgMz
	tsF0bapG3eSuikiBXwgyOZcz1ufcZ2hpBLm5O9EXWfNDotKp9NdGCaKTzvv6euRFV+gyqXrgUr8Od
	fxge1VeRvjBVv8x8fo6qjinX2eM0d2W1a6vYFK79DZnbp7qF5dgjU6i2Fc29AamlpE0fHDZiQFcEv
	G9kCOTTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmX1a-00D3sa-1s; Fri, 28 May 2021 07:35:18 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmX1W-00D3qd-Lf
 for linux-phy@lists.infradead.org; Fri, 28 May 2021 07:35:16 +0000
Received: from [192.168.1.111] (91-157-208-71.elisa-laajakaista.fi
 [91.157.208.71])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 225F58C7;
 Fri, 28 May 2021 09:35:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1622187313;
 bh=v59I+aspDAoguV3+zhGsiwb5BmCSVCIir5aArBl3q8A=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=uK7HMacL1qIMoVO4F8224jwEhBdmXzpVqgmoUuTF1ul/7nr9bNUf/jP9PkCSsuNHP
 Yy5pgtd7DZ6ndlF0gppvq6d6+mUW5Sm9nhfi4Z1R4tTQuSiIWzTb5bDpsbXfgq+3ZS
 dD/BI6WOtL1f/Qk2sKSs2HrBkiyRN5I2uFW0NHro=
Subject: Re: [PATCH v2 10/18] media: cadence: csi2rx: Populate subdev devnode
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
 <20210526152308.16525-11-p.yadav@ti.com>
 <9c38a72c-18e8-1e54-b3b4-85ff5d47857a@ideasonboard.com>
 <20210528072401.2vdrtjdiepnr72vv@ti.com>
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Message-ID: <e36baf77-6de8-595d-b440-92bcfcdd8467@ideasonboard.com>
Date: Fri, 28 May 2021 10:35:11 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210528072401.2vdrtjdiepnr72vv@ti.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210528_003514_919765_8C12AC0F 
X-CRM114-Status: GOOD (  19.80  )
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

On 28/05/2021 10:24, Pratyush Yadav wrote:
> On 28/05/21 10:16AM, Tomi Valkeinen wrote:
>> On 26/05/2021 18:23, Pratyush Yadav wrote:
>>> The devnode can be used by media-ctl and other userspace tools to
>>> perform configurations on the subdev. Without it, media-ctl returns
>>> ENOENT when setting format on the sensor subdev.
>>>
>>> Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
>>> ---
>>>
>>> (no changes since v1)
>>>
>>>    drivers/media/platform/cadence/cdns-csi2rx.c | 1 +
>>>    1 file changed, 1 insertion(+)
>>>
>>> diff --git a/drivers/media/platform/cadence/cdns-csi2rx.c b/drivers/media/platform/cadence/cdns-csi2rx.c
>>> index 1df21f462f3c..49bed63d5faa 100644
>>> --- a/drivers/media/platform/cadence/cdns-csi2rx.c
>>> +++ b/drivers/media/platform/cadence/cdns-csi2rx.c
>>> @@ -613,6 +613,7 @@ static int csi2rx_probe(struct platform_device *pdev)
>>>    	csi2rx->pads[CSI2RX_PAD_SINK].flags = MEDIA_PAD_FL_SINK;
>>>    	for (i = CSI2RX_PAD_SOURCE_STREAM0; i < CSI2RX_PAD_MAX; i++)
>>>    		csi2rx->pads[i].flags = MEDIA_PAD_FL_SOURCE;
>>> +	csi2rx->subdev.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
>>>    	ret = media_entity_pads_init(&csi2rx->subdev.entity, CSI2RX_PAD_MAX,
>>>    				     csi2rx->pads);
>>>
>>
>> I don't understand this one. There's nothing to configure in cdns-csi2rx
>> from userspace, as far as I can see, so why is the dev node needed? And why
>> would the lack of csi2rx dev node cause sensor subdev config to fail?
> 
> Sensor config does not fail. But when I run media-ctl to set the format
> on /dev/media0, I get an error message that comes because the devnode
> for the bridge does not exist. I was not 100% sure about this patch but
> I figured if media-ctl expects it then it should be exposed.
> 
> I don't mind dropping this patch. Just want to make sure what the right
> thing to do here is. Should every element of the pipeline have a devnode
> or not?

Tbh, I don't know. But I don't see why they should have. Also, my test 
works fine if I remove the devnode here.

What media-ctl parameters did you use which fails?

  Tomi

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
