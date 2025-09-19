Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0DDACAC592
	for <linux-phy@archiver.kernel.org>; Fri, 19 Sep 2025 15:20:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YtED90lbQPxO1+5EuC/RnYYdQC7RSqHRwFusrdjapnw=; b=WqyT0lqaQ5I7Pu
	YtiaBA4hlikzYh/L1qNB6JEjJmNVvzLCPyYqk8UZ/0i6g2qDtAQq0JmwnF4fl97+ChLrgd4NpC7zx
	ChL+LpVt704ugCBcpK7O/lIiNocD/uGUu64wIXLtZGeQchZHxPfps2IrdU9MarG5lZ8cZ5+m/hdaH
	NnOSuLPABxCN6pclHHNiR6IwdTbqig96AnES1wv+V/78tuH1z6TDu6hJO7q5SK6An3RoG9LqmvZ17
	aXkYrZGM66gaBzisSPsmyPL3NVqGttv7ovSIcRQQEivOGGQ1zOd87S+LKcOilMVzwigvUsayESNdV
	qpnJ5UU0Cmgk9TBDUZqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzcub-00000003JHX-1UjU;
	Fri, 19 Sep 2025 15:20:37 +0000
Received: from mail-oa1-x2f.google.com ([2001:4860:4864:20::2f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzcuX-00000003JGx-3Arw
	for linux-phy@lists.infradead.org;
	Fri, 19 Sep 2025 15:20:35 +0000
Received: by mail-oa1-x2f.google.com with SMTP id 586e51a60fabf-31d6b8be249so1922874fac.0
        for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 08:20:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1758295232; x=1758900032; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=58QddYy9doQYGj9OGULI81m9rz5X5nvBb+nMrO6L4+k=;
        b=l6CkymiGzFJGkgHTXPTKVuOCdmT7PsECNdk0Fb17zUsxAr/GQIxMxZFKZ2sEMXcqhX
         GlilM7PfVtIcS9HPAKlabqRr7HEBPuCHjwqBPgID8CSUpwBDp82n4qyKV4yltyFSfsQO
         ZPJ0TeHo913hRxYH2aRnj7stk94gGCx5JkQosR07Y9B8G/u1rQuVAJLmySJtxsZXUSYf
         xw6RBVojqSNQ7C+ulK+4gdFV+z96wjojG3RYXMfYAy6To3z/aC/SlsX+g+yADMmuA3I7
         ODJgEXXmKwVP3yifi0qjxB8ib6JqIZtKO5QTt0Tk/eiuXA7HM0ljbIhiepLlQlgsBs7o
         ev/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758295232; x=1758900032;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=58QddYy9doQYGj9OGULI81m9rz5X5nvBb+nMrO6L4+k=;
        b=lVeAUXr3FxJ78r3HIMkwVImUOrx+Xjr0J0QoREdmnal+3MNEXVR13CnzobeHjwdN1G
         Eq1Yos31F8Dv1q3Yxri3tYZBsy5tPERKj/hWMcGRxPL+iK6FHGp//N/3er/PnW6Ux1bQ
         iqLwAbWYWyeIdsEL/Y9+jjqPJrSF9GlhrayAaR0toDH7qZXtZ9kxCD8d7JOepeN0QC0h
         WjhqrDFHnLHcNt5USxH004cUvr8fjTFslxj2hYN0aLEVbnRmod3QFJpYURbgE0wg1upd
         iGnJRTq/THAVkCcTM5TJPUM0tbepSrHOBrTW7hWdME6rrlNvIcFHQMuvBSuNqb3XZbys
         E2Qg==
X-Forwarded-Encrypted: i=1; AJvYcCWMjMNhsYCXQQ7z6PXB4SDo7cdqCW8AD8rGe3hC/7ZZQIu8RZOEAKZm3libxwy4HyWS3Cq636hVOa4=@lists.infradead.org
X-Gm-Message-State: AOJu0YzkptMO93XC2m6wOtcputC8cKwvLCrgoF9DBSlEzQFJRTFqVc68
	QnoXjnOae+B0Rg8XtoXcTiwQVmEJvVhSlSLLptvMXjsVhGUad+b/pBWKsjQtQAmrjQg=
X-Gm-Gg: ASbGnctgeax9Ai/mF3l8a+24uw2zlmTu0E8sKzwf8I7argXBs1NdIMOcR8yh2vrzk9W
	pZUxsGxUSwfzk+EssXpfbKTuteZiBv7nhHEOQhDT6HjUqR2EVRqWKJXcNnnx0mtl76Wcab/wStY
	5SWEVDDAdNKO3cz84SbdHr6Rpcbnkpwn+RQcHJRSrmzaGioi/DPUnHtd6jTLyTmsEv84MSUjCC5
	2zDBXcxUuwUZMb5MHiORNoYmnSB2OkG/knbCepHcAnRTcTpWPz1wVZ/E+lZtr4vFlSU5GCZYsi+
	Z3633drFM1SO7eVPbUXSUwmm8x3o/FSZML6K2BFro1Xl0DnJysZIUxvqH0X1oRojL3kKS5yUzKe
	7ocXc1t3yK8Z2U7lL3zx4Bla4cWBxJQnXomsQNCF08lTTQHhfnVJ/MZaa0u4ftnMYdLueZ4wLCe
	s=
X-Google-Smtp-Source: AGHT+IEJT0izziTZ06yN6CmHd6vD3fLc3H/jpNESoHp4Nt7QllNscgV8/EofsSLRMMmL3uPtY7Wo0w==
X-Received: by 2002:a05:6808:5094:b0:439:b674:d9a3 with SMTP id 5614622812f47-43d6c26736fmr1642625b6e.35.1758295232364;
        Fri, 19 Sep 2025 08:20:32 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:3838:157c:c9f9:2e3f? ([2600:8803:e7e4:1d00:3838:157c:c9f9:2e3f])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-43d5c6bf8adsm2068096b6e.9.2025.09.19.08.20.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Sep 2025 08:20:30 -0700 (PDT)
Message-ID: <8702fd35-945a-4d20-bc37-410c74c70da6@baylibre.com>
Date: Fri, 19 Sep 2025 10:20:29 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/7] nvmem: qcom-spmi-sdam: Migrate to
 devm_spmi_subdevice_alloc_and_add()
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Andy Shevchenko <andriy.shevchenko@intel.com>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 sboyd@kernel.org, jic23@kernel.org, nuno.sa@analog.com, andy@kernel.org,
 arnd@arndb.de, srini@kernel.org, vkoul@kernel.org, kishon@kernel.org,
 sre@kernel.org, krzysztof.kozlowski@linaro.org,
 linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-pm@vger.kernel.org, kernel@collabora.com, wenst@chromium.org,
 casey.connolly@linaro.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Neil Armstrong <neil.armstrong@linaro.org>
References: <20250916084445.96621-1-angelogioacchino.delregno@collabora.com>
 <20250916084445.96621-3-angelogioacchino.delregno@collabora.com>
 <t3uk3k4h3l53yajoe3xog2njmdn3jhkmdphv3c4wnpvcqniz4n@opgigzazycot>
 <aMlnp4x-1MUoModr@smile.fi.intel.com>
 <mknxgesog6aghc6cjzm63g63zqbqvysxf6ktmnbrbtafervveg@uoiohk3yclso>
 <CAHp75Vf7KrsN7Ec9zOvJoRuKvkbrJ5sMv7pVv6+88tPX-j_9ZA@mail.gmail.com>
 <er7dkmzutsu3ooegeihjzngi6l3hol5iaohecr3n5bolfse3tj@xeedlx2utwym>
 <aMxWzTxvMLsVWbDB@smile.fi.intel.com>
 <2025091925-thirsting-underuse-14ab@gregkh>
 <f16ea5eb-cbda-4788-956b-d41c2af51745@baylibre.com>
 <2025091918-glancing-uptown-7d63@gregkh>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <2025091918-glancing-uptown-7d63@gregkh>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_082033_805556_2258771D 
X-CRM114-Status: GOOD (  24.26  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 9/19/25 10:13 AM, Greg KH wrote:
> On Fri, Sep 19, 2025 at 10:05:28AM -0500, David Lechner wrote:
>> On 9/19/25 8:59 AM, Greg KH wrote:
>>> On Thu, Sep 18, 2025 at 10:00:29PM +0300, Andy Shevchenko wrote:
>>>> I,o.w. I principally disagree on putting MODULE_IMPORT_NS() into the header
>>>> file.
>>>
>>> Yes, please never do that, it defeats the purpose of module namespaces
>>> completly.  If you don't want to have module namespaces, don't use them
>>> for your subsytem.  Don't use them and then make them moot by putting
>>> MODULE_IMPORT_NS() in the .h file for the symbols as that's pointless.
>>>
>>> thanks,
>>>
>>> greg k-h
>>
>>
>> Could someone suggest some additional explanation to add to
>> Documentation/core-api/symbol-namespaces.rst to explain the
>> reasoning behind this?
>>
>> Right now, the only part of that document that say _why_ we have
>> module namespces says:
>>
>> 	That is useful for documentation purposes (think of the
>> 	SUBSYSTEM_DEBUG namespace) as well as for limiting the
>> 	availability of a set of symbols for use in other parts
>> 	of the kernel.
>>
>> So I don't see the connection between this explanation and and:
>>
>> 	[Putting MODULE_IMPORT_NS() into the header] defeats
>> 	the purpose of module namespaces completely.
>>
>> I am guilty of putting it in a header, so if I need to fix that
>> I would like to actually understand why first. Andy has mentioned
>> something about potential abuses, but without any example, I haven't
>> been able to understand what this would actually actually look like.
>> Or maybe there is some other reason that Greg is thinking of that
>> hasn't been mentioned yet?
> 
> Let me turn it around, _why_ would you want your exports in a namespace
> at all if you just are putting a MODULE_IMPORT_NS() in the .h file at
> the same time?  What is this giving you at all compared to just a normal
> MODULE_EXPORT() marking for your exports?
> 
> I know what it gives me when I don't put it in a .h file, but I think
> that might be different from what you are thinking here :)
> 
> thanks,
> 
> greg k-h

Up to now, my (naive) understanding was that the point module namespaces
is to reduce the number of symbols in the global namespace because having
too many symbols there was starting to cause problems. So moving symbols
to another namespace was a "good thing".



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
