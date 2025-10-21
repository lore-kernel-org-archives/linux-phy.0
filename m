Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E5A1CCD184
	for <linux-phy@archiver.kernel.org>; Tue, 21 Oct 2025 08:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pomfZfgqLwc3MVoV6TI5PEOgeMyeHTAI37xJQuYvikA=; b=mhWFSxNF8mrcj7
	RUIjImlqsbvyNejvVD0H/JUBs1YUqMGtehAYTX4uV5yAAqZeaDgBT9wTq7ROOuv5OI7oTyuXos2qh
	NsdvAvLVwSt7RafB4icNyWi8ioMnrf/8rPDsXYTzvN+b6shpBi3zC2FtPM3/mRei4VVgIuuvwVvpe
	AyNstgRmAyJkuR8u0f4vuGR3x6CIq5PLPIUGQ04WprdbbShYAJnm0/tc9ZT+JE7be/Qel4vL+Be1b
	6hK8XLvDW82W+XvpQW0x1yfii3bDlbASOX5ziNQLeyYdESPWrlHxyxCZCVsykYhQdcVkHaYYPJavn
	tiFaojikgnuK7tcTUrZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB7Od-0000000GDq1-3X2U;
	Tue, 21 Oct 2025 08:07:07 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB7Ob-0000000GDpX-3mOD
	for linux-phy@lists.infradead.org;
	Tue, 21 Oct 2025 08:07:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1761034023;
	bh=Rehk/1A9fRtUYg+F9et0A0RhHwPHQZv605r7G7w8Cx8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=QA2jFApgIehSOhr+h6MU72RM5sk8wy+gDqp4D4uIO82/Yr/3kBj51T+4Oha1Cc0p9
	 kjxb7ouJev91hZ81J4yCDLPdur+TjgIiDT1Pq4PjfomHCYmmQ+elrkVe/7KzjK4sH+
	 XPmyDcRL2w7eU5MFAdG2GmD9bqqEeBZEDEUa5X0m/IGmnMwlPtnxLBEWfeYDyxo0Eh
	 VpgR0Dl1vcoOHNLU0xJNFAWm1lm+71bOIdhQnfKYA5klxWxhZDiNxVUKeJAsTyda8/
	 T1FPwtnAJ/YQabb+3XUSL29xzHoz8TAQMyES7vlDWJjT96rA9wQFUzAa8kWByhQ513
	 cRY+m5/uwPLmw==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id AE38E17E0CA3;
	Tue, 21 Oct 2025 10:07:02 +0200 (CEST)
Message-ID: <1a5f4081-191f-49a5-b3a0-419656b04bf4@collabora.com>
Date: Tue, 21 Oct 2025 10:07:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/8] spmi: Print error status with %pe format
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: sboyd@kernel.org, jic23@kernel.org, dlechner@baylibre.com,
 nuno.sa@analog.com, andy@kernel.org, arnd@arndb.de,
 gregkh@linuxfoundation.org, srini@kernel.org, vkoul@kernel.org,
 kishon@kernel.org, sre@kernel.org, krzysztof.kozlowski@linaro.org,
 u.kleine-koenig@baylibre.com, linux-arm-msm@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-pm@vger.kernel.org,
 kernel@collabora.com, wenst@chromium.org, casey.connolly@linaro.org,
 AngeloGioacchino Del Regno <angleogioacchino.delregno@collabora.com>
References: <20251016104402.338246-1-angelogioacchino.delregno@collabora.com>
 <20251016104402.338246-2-angelogioacchino.delregno@collabora.com>
 <aPPmsBHnmKQ1sa3O@ashevche-desk.local>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <aPPmsBHnmKQ1sa3O@ashevche-desk.local>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_010706_129113_11EB48CF 
X-CRM114-Status: GOOD (  12.82  )
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

Il 18/10/25 21:12, Andy Shevchenko ha scritto:
> On Thu, Oct 16, 2025 at 12:43:55PM +0200, AngeloGioacchino Del Regno wrote:
>> Instead of printing just a number, use the %pe format for error
>> status, increasing readability of error prints.
> 
> ...
> 
>>   	err = device_add(&sdev->dev);
>>   	if (err < 0) {
>> -		dev_err(&sdev->dev, "Can't add %s, status %d\n",
>> -			dev_name(&sdev->dev), err);
>> +		dev_err(&sdev->dev, "Can't add %s, status %pe\n",
>> +			dev_name(&sdev->dev), ERR_PTR(err));
> 
> LOL, I only now noticed that the parameter to dev_err() and dev_name() is the
> same. For christ's sake, why do we need dev_name()?
> 

Just only for consistency and having the exact same message as function
spmi_device_add() and nothing else.

I agree that it's not really needed; if you want I can just change the
error message in both spmi_device_add() and in the new function that I
am introducing here.

Cheers,
Angelo

>>   		goto err_device_add;
>>   	}
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
