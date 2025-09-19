Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9AE02CAC592
	for <linux-phy@archiver.kernel.org>; Fri, 19 Sep 2025 15:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QQNLdXv8KujeDiorRumvIMCvICcm2vDieCt8P7Ohoo0=; b=i6NMHLd66swfmu
	wOyx9/k9bXsUdvTtx01TtsX1Mx/W5zMcqoAvf+ObmWwwPc9xqqe/0zUOL42JJEQqwm0LTGNQ1JBA9
	0JE/rp9/RbKzE+6fMCjO4THpb6S/9L/KHl8gL/JsHn1EwzLg6FOVqvRGBJsW2nSYI8ygOCuTPX/vk
	WJGW8UP7WZEpoqxrndY74JLHIo28lEcbdkTNGnwXqikTxZan2ZLlGWn77IZd1WaU3KeiloueIBpJz
	iYJuE9NAG+ssyPC/iMsUob/Wsb86gh8nU8ltUoSw0woPK2glmCDiEQ2BTyChwrOYj5pwn+lXPgPoO
	sehHXgpcw968vMXLkWag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzcg2-00000003GSB-1gKZ;
	Fri, 19 Sep 2025 15:05:34 +0000
Received: from mail-ot1-x32b.google.com ([2607:f8b0:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzcfz-00000003GRG-1oO8
	for linux-phy@lists.infradead.org;
	Fri, 19 Sep 2025 15:05:33 +0000
Received: by mail-ot1-x32b.google.com with SMTP id 46e09a7af769-74c7d98935eso1181527a34.1
        for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 08:05:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1758294330; x=1758899130; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Di+7QfVxJlM5N75ul507uuevWczBYUSs/W+lEnzOwXU=;
        b=WqX4wOdeIE+iNdprGyg3hcd2oJ6SXW6a2SO8GWWYVq5wo9yvjywUom0mxTb4ynIj9o
         EStfBZtrlGRmXuGgvo23XZbEkv4DfBX0VzDotbeDbcB5XZujtg+nowdWCuGPNCW4dE0V
         Tq2XIue14iAm10JCamziBmjIVGOhepdWpieZLqPYZdv51Wx2HDEKuYpVI9b4R+ChJqqo
         dHd+R/Jys0qtlm911uv7yoh9vVnCtZSXs1L/8K4Ic/obvjInyJZwphwOa974Ff5HTJg/
         9MnarNVXGmWcEGqWib3cxDocJkqkyb5wBo3uZ0EdIC+iKkJ03bJYF2lm/hUpln2sOv2a
         Kyig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758294330; x=1758899130;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Di+7QfVxJlM5N75ul507uuevWczBYUSs/W+lEnzOwXU=;
        b=M/T6YuGaga/VgkQwRxHsUAyFYZzmiVT/at4HZLUwkeYoQPsnNrF/g33yPnHh/bVs8A
         AY5W3Ye3jE3BNVrHTSmFk4bdYTW+ASa/SXJ6Ifhu+Ia5HZq9WIo7bhNl3vL2r58PEc10
         /DKnZ8K1aLteSiw2RB4jS3UbzF61R+TIKrEPlLv/2Gha27wPoU01DpB/amCenuNABPYz
         NdJ9yK3hClmltQHGZlNKA3+rkQO0r5mmS63bt/48aMHPUAkIh4PEbo4G3NwxLEI2LJVq
         9Pmv2/EpUgcfiAg7ng/a44/yxiwAoJZTztrMhhOaS6uT9nQg1rHdAeNJ1rznuaKBWk23
         0N4w==
X-Forwarded-Encrypted: i=1; AJvYcCV8zMgnx/YrWtX1BWIYJ/wrqLOCRq9RfN2iMZss8VDySAEjKyFjj1MylMk8ugSwf3QF73WMNFohb/s=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz8/XhdWmxdQ9+SXKebwjeLgevDoe1MUDSCOZ2zhBQ+RAPfeEep
	kT/pO4b/g6Xwz1xZobUIgLwNR1nqo7R658HmY0u5VGFSINTdgEbNgxB9aph1gY6fx3w=
X-Gm-Gg: ASbGnct8LiLFQybIDqsW6TKSjecjcMRv6vu275bXX6nyYwAzFCnbpcmHYxfJn6+DgXZ
	6pd3uYLig+vRaiJ/DuFScWyVmoizQTL96pDO8kbKGdCmQntTGxh9XQXaVf4dak8/d267y+kzukL
	l/vTlV+U0J/JtIHbKjAdRjZTdJB0EsxF7N7Vzha9d7oBs4Z1xtbhex2HaX6vzcaUEmA5Z25St7R
	h4iL9tZ0rMc3lHyL1yyFZ3Cgx3By9aTEg9qrAPvJVQ41pDNTXSp0bM55ajx8TDXoFsdY4goC3ry
	UqftNfm6Vh2kXCk2rKeTIP9Ms7WKYXtSjAqVhbrR14mr3Q1qQ1r4JygQ7accCo3rL1mlPvI+W5n
	bihpISIiGFZOUH2iUYG2bW6gal+e12DRa5OpNRppEyJ9a3sM0ZP7LInRQpyDtUyI39Bo/r+Sr3S
	4=
X-Google-Smtp-Source: AGHT+IG08d5Vz/pDeKppQVqd3yfcz+3VBkwoo1u5Ijv/qxwiGp1N6zahOZ2QY1NxeZ4IhBE5UjoRGQ==
X-Received: by 2002:a05:6830:4902:b0:74b:7c40:357a with SMTP id 46e09a7af769-76f77d489e4mr1731055a34.18.1758294329709;
        Fri, 19 Sep 2025 08:05:29 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:3838:157c:c9f9:2e3f? ([2600:8803:e7e4:1d00:3838:157c:c9f9:2e3f])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-625d8eec45csm1692036eaf.10.2025.09.19.08.05.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Sep 2025 08:05:29 -0700 (PDT)
Message-ID: <f16ea5eb-cbda-4788-956b-d41c2af51745@baylibre.com>
Date: Fri, 19 Sep 2025 10:05:28 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/7] nvmem: qcom-spmi-sdam: Migrate to
 devm_spmi_subdevice_alloc_and_add()
To: Greg KH <gregkh@linuxfoundation.org>,
 Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
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
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <2025091925-thirsting-underuse-14ab@gregkh>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_080531_700988_FA068DA2 
X-CRM114-Status: GOOD (  17.18  )
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

On 9/19/25 8:59 AM, Greg KH wrote:
> On Thu, Sep 18, 2025 at 10:00:29PM +0300, Andy Shevchenko wrote:
>> I,o.w. I principally disagree on putting MODULE_IMPORT_NS() into the header
>> file.
> 
> Yes, please never do that, it defeats the purpose of module namespaces
> completly.  If you don't want to have module namespaces, don't use them
> for your subsytem.  Don't use them and then make them moot by putting
> MODULE_IMPORT_NS() in the .h file for the symbols as that's pointless.
> 
> thanks,
> 
> greg k-h


Could someone suggest some additional explanation to add to
Documentation/core-api/symbol-namespaces.rst to explain the
reasoning behind this?

Right now, the only part of that document that say _why_ we have
module namespces says:

	That is useful for documentation purposes (think of the
	SUBSYSTEM_DEBUG namespace) as well as for limiting the
	availability of a set of symbols for use in other parts
	of the kernel.

So I don't see the connection between this explanation and and:

	[Putting MODULE_IMPORT_NS() into the header] defeats
	the purpose of module namespaces completely.

I am guilty of putting it in a header, so if I need to fix that
I would like to actually understand why first. Andy has mentioned
something about potential abuses, but without any example, I haven't
been able to understand what this would actually actually look like.
Or maybe there is some other reason that Greg is thinking of that
hasn't been mentioned yet?

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
