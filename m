Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83066C6FA8E
	for <linux-phy@archiver.kernel.org>; Wed, 14 Sep 2022 13:27:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jVhBRvq1+ZjowrQSkl1bKERFSL0eEOUrWj/pmm/KQbw=; b=Z099YTi0zKvFnj
	BEmRaFQtJZ0wY5E4OX2T567y0VsaNiWopomKprO1a6oG956fipr1WD+hmnk2iDldZ0jsV6NjUR+TY
	Ze5MWJ6uxzrpYy8iudg++I4YCX9yiKfc97HoooRp7Iq2zp8xxJQ4pTRKjqtz2OEOtWJbD6ODMYfTa
	oPpD3fyCQd2An0wx+c/mWRDRYmBpcAssm6MmklSiI87zga8VJNNCE6xFaaHjmi9H3VoUtWrpspYvm
	EMIt27rXDRUYOuINeD0Mo8XBxpsxjZj1ellDe4Rij+svm+p8KusK5FU7rvOIRLhZ9OxpEhSspVg0P
	da3RDWub8DRAftDKVQJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYSQK-000pQt-G6; Wed, 14 Sep 2022 13:27:28 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYSQG-000pJ1-Rg
	for linux-phy@lists.infradead.org; Wed, 14 Sep 2022 13:27:26 +0000
Received: by mail-wr1-x42b.google.com with SMTP id bj14so25669182wrb.12
        for <linux-phy@lists.infradead.org>; Wed, 14 Sep 2022 06:27:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=8KUXcLjtkVihtg11T3oMt0vYyGo5xNo18xehwjt6aQM=;
        b=d0YJHn4cl28LBNrFF2Jacudh0DH+lp8gvP4kqahW8yoym8X30qfMq9xOV1VrDFMtLL
         +Qp5qIAsAYCUzQDPvkkNOBJrG3yiouopMdMBUZAYieEoHCSdl4k0DjgkcKYf8pCqg/69
         OFnkAafaqoXnKOXKpwfSJDJE3HXsAZC5CYh5j8AzL3TwM/WksIx65zOSFThNRAXC57jO
         qOeZnadSPmxZ3bhrA68xOCUcERLU+r9NvOqlY6Mf61VUvqmTyoqL8b31yQRP7JLoGe0X
         fk9NM5uN8BY4HiK2qqyj1tLYHLhlwBtFunBY3cSzJRlZfq2vroy/vrIO7I6l1Ccc0Fy7
         onFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=8KUXcLjtkVihtg11T3oMt0vYyGo5xNo18xehwjt6aQM=;
        b=ySqD3VyMDCn2jX72rHz1XP5LisUPlbrLV5YBI/e9BPi7go9Bq+O3CnY5EnqSnxrWjs
         Phd+KdICiY9dBsPQrpWfAOuatrkcQUpT36ZwjOTv/xWauu+NuIRvCRWZAbrojpuH29JX
         y7ye1OycoP43kcDPok2PiUMPEsrPW5aBtYiYbGerm4Oad/C4Sb9UsjREu6Su2hDpnJ7x
         h2whmEULO+LuDELAnP57aDboexY4m6XpxIh7les4ixfDc2684JlEpqcy6sppeVRsYd4c
         AWYhMjdGk5oIkKNhAXPHIzI44OZAOOpYIBgrHl1c1nswo/cmmCVtDy/lpn5VhO4SdEAo
         HxQQ==
X-Gm-Message-State: ACgBeo3yhjcnib3Etu/rZdhyxQqe2vtSprJaYy2wjITMwSpT2MQD8YEJ
	3kZVzLQ4/RcNX1RIA4ZCxyjW/A==
X-Google-Smtp-Source: AA6agR6TPMPPsLlhAtiQsyA/yLJqtqEhq4K5gfSRuANSt5F79zP1ztVc47OyVeBgOoCioZNHWtccbw==
X-Received: by 2002:a5d:6986:0:b0:228:60f9:b013 with SMTP id g6-20020a5d6986000000b0022860f9b013mr20518582wru.102.1663162041670;
        Wed, 14 Sep 2022 06:27:21 -0700 (PDT)
Received: from [192.168.0.20] (210.145.15.109.rev.sfr.net. [109.15.145.210])
        by smtp.gmail.com with ESMTPSA id v8-20020a05600c12c800b003a844885f88sm16243456wmd.22.2022.09.14.06.27.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Sep 2022 06:27:21 -0700 (PDT)
Message-ID: <bfce8af1-8826-be59-437f-0982c14f6d24@baylibre.com>
Date: Wed, 14 Sep 2022 15:27:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 16/17] arm64: dts: mediatek: add mt8365 device-tree
Content-Language: en-US
From: Amjad Ouled-Ameur <aouledameur@baylibre.com>
To: fparent@baylibre.com
Cc: broonie@kernel.org, chaotian.jing@mediatek.com,
 chunfeng.yun@mediatek.com, devicetree@vger.kernel.org,
 dmaengine@vger.kernel.org, jic23@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-mmc@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-serial@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-watchdog@vger.kernel.org,
 linux@roeck-us.net, matthias.bgg@gmail.com, qii.wang@mediatek.com,
 robh+dt@kernel.org, srinivas.kandagatla@linaro.org, ulf.hansson@linaro.org,
 vkoul@kernel.org, wim@linux-watchdog.org
References: <20220531135026.238475-17-fparent@baylibre.com>
 <20220720131257.530168-1-aouledameur@baylibre.com>
In-Reply-To: <20220720131257.530168-1-aouledameur@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220914_062724_960342_06D5C542 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
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

Hi Fabien,

On 7/20/22 15:12, Amjad Ouled-Ameur wrote:
> Hi Fabien,
>
>> +		tzts4: tzts4-thermal {
>> +			polling-delay-passive = <0>;
>> +			polling-delay = <0>;
>> +			thermal-sensors = <&thermal 4>;
>> +			trips {};
>> +			cooling-maps {};
>> +		};
> AFAIK mt8365 has only 3 thermal sensors, therefore tzts4 should not be
> added.

I discussed this further with MediaTek. tzts1, tzts2, tzts3 and tzts4 
are used

for test-purpose only. Since they do not have trip points, thermal core 
wouldn't

register them anyway. Thus, I think we should remove them altogether. Only

cpu_thermal zone is relevant and should remain.


Regards,

Amjad

> Regards,
> Amjad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
