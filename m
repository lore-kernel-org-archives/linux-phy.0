Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F68CCD8C9D
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 06:02:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vF3l8LOFgDfN+7Ql/IX55jVQbVAHBBmzjX+fckCG9Lw=; b=jCKDMDqmDG7J78
	Yh7s6LPVyYBtBVRRljJVM4SBmooucsBKHgc7LZ3BUUjMf+m+kKillFlg4w5k2VTw5sOSo3o75/dro
	F1UQgg5hifQtYKjmLR+8CYol0zcP43fRcS6YXZ1XlGqPWy6XY5PI9F0mhkvTUGt6YsP0il36oMYhJ
	Q1VHhkn6pqnp8j5/Hu0ihfbGxbRJGEFxLqxDeah98suUVPqKjHMqleSu8YBaNkLv8yXOhNE6zSQEc
	8UYWZe3C5Ccsxafm/1xfB2TpOiXFEjqU9+vY+7JWVDyCLcTJAWXdGRsqCsdRih7d0D5zMMJrFy6Kg
	2uJL16vajk6IuLEjBFSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWT3z-00000002s18-2INS;
	Mon, 08 Jun 2026 06:02:19 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWT3w-00000002s0i-3Sy3
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 06:02:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1780898531;
	bh=+dcXv4zWRWzCmRcsErz8MQZtU9CNwLr2zjetIe+6/mU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=cC6g03sHSs7sp0X5XtqVYnhJz00Uw3zFpcwqUhkUucc6F0kHJCHwMQNJxLBtV4ddH
	 CAOXalB+zZrHkCubP+10Ybf8fcDusR7qJNzEoSHS+mi1S2hjID+glOPxE9hcKwlgyQ
	 wL4qXWKoA66eKfBt5qmagENkIzxnE01oQcxp6z47lc/OTeUHUXzeYqo/nhAJOxUIku
	 B5dZfirRuaT5Spp780ySds1KFEkboyCM0lRaxl+oPRZXE8TTr9LMMmJqgrjdIGtuDD
	 6wtnI9i3hVY0sPv/twP6cDGJzieUteCMN6mTL4CzOi5fGQdyzLQOS9vPWLxAdJ6v6T
	 BOm6jWb0VfGMA==
Received: from [100.64.1.21] (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 66B0217E0416;
	Mon,  8 Jun 2026 08:02:10 +0200 (CEST)
Message-ID: <4947ceab-e60e-4f11-9553-5341cdd12a47@collabora.com>
Date: Mon, 8 Jun 2026 08:02:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND v8 00/10] SPMI: Implement sub-devices and migrate
 drivers
To: Stephen Boyd <sboyd@kernel.org>, Jonathan Cameron <jic23@kernel.org>
Cc: dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org,
 arnd@arndb.de, gregkh@linuxfoundation.org, srini@kernel.org,
 vkoul@kernel.org, neil.armstrong@linaro.org, sre@kernel.org,
 krzk@kernel.org, dmitry.baryshkov@oss.qualcomm.com, quic_wcheng@quicinc.com,
 melody.olvera@oss.qualcomm.com, quic_nsekar@quicinc.com,
 ivo.ivanov.ivanov1@gmail.com, abelvesa@kernel.org, luca.weiss@fairphone.com,
 konrad.dybcio@oss.qualcomm.com, mitltlatltl@gmail.com,
 krishna.kurapati@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-pm@vger.kernel.org, kernel@collabora.com
References: <20260511100805.121432-1-angelogioacchino.delregno@collabora.com>
 <20260511141743.251a47e4@jic23-huawei>
 <07739437-4720-4a15-87cc-40f6f92f3759@kernel.org>
 <178001901320.7182.15120759905441640016@lazor>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <178001901320.7182.15120759905441640016@lazor>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260607_230217_060347_2EC97331 
X-CRM114-Status: GOOD (  12.22  )
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

On 5/29/26 03:43, Stephen Boyd wrote:
> Quoting AngeloGioacchino Del Regno (2026-05-20 04:51:26)
>> On 5/11/26 15:17, Jonathan Cameron wrote:
>>> On Mon, 11 May 2026 12:07:55 +0200
>>> AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com> wrote:
>>>
>>> Hi Angelo,
>>>
>>> Why the resend?  If marking a series with that I expect to see it
>>> called out as first thing in the cover letter.
>>>
>>
>> Right, forgot to mention why.
>>
>> The v8 was sent on January 2026, I pinged maintainers to pick it on
>> March 2026, even if this was fully reviewed by multiple people nobody
>> picked anything here.
>>
>> ....and I've resent it because pinging multiple times didn't work, and
>> because the series got old all that much. :-)
>>
> 
> I take it you want me to apply these patches to the spmi tree?

Yeah, sounds like the easiest option.

> Can you
> respond to the Sashiko bot comments about why it's wrong or fix issues
> it found?

I will do that asap; sorry about being late but I just came back from a work trip
and might be a bit too late now, but still, I'll make sure to get this done between
today and tomorrow.

Thanks,
Angelo

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
