Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7ECFC433EF
	for <linux-phy@archiver.kernel.org>; Tue, 31 May 2022 10:09:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sLrZINxg9lzITb4nMCqNoJlqxyxv0AoSm9G/hfpjFhI=; b=kh+6jQVGcGbTec
	sgwnmcGaQ7TRzUhsQzWsrzUf6ZDICtBElJB7np6kEC60o2ViznHXoJ329dtk4MhdLWXFJ9RLUWM99
	SQgvlUB9dWYG8UljD2LLv07F2goqthfcg3UCdHCQyNv63ubR78y4uEAlU5KOxDtdGsQpC+iUH2uQT
	OgS1Q6Um51iJU5SHwLgZQgtskLOAn+63tRj3UZkZDYVli4ain+gqg7FjCodcFRVC+yaFLly2hZdLU
	2f/uABDXHDBI1FqY6kYrIDay8oCd8OOqg/YgcxsWg6LCnKq4j6NV+pQpSnhj+vd/4srSab8WxeT8b
	/NPInnSCBaOm7tRR2ApA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvyoj-00A9Nq-9P; Tue, 31 May 2022 10:09:37 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvyof-00A9M7-CK
	for linux-phy@lists.infradead.org; Tue, 31 May 2022 10:09:34 +0000
Received: by mail-ej1-x62a.google.com with SMTP id n10so25628001ejk.5
        for <linux-phy@lists.infradead.org>; Tue, 31 May 2022 03:09:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=S1vJ4EQxgb8CxF/TZMOJh3j8ysKIcc1uWIaMM56tARY=;
        b=MQ2r0968DRUUCPed8gMd5wzr3YkRRz4uHeMhTZbIGhCzNoB1A3RdIWdryLlNxvt3a+
         l7ff7EW9HeZhPzAN2XuL/bKpsUEOokmmHHhpwrFtX1U9Bjnaudvoj1xClG84cAZA8etJ
         1nEE7kHTxK8VU8u18lAP3Z09SH57smrqDwDzAA65jhjfK0R/UjRTepeFCtv0IcW6gbOB
         loRlFL3oxNG/VOvaI+EoBfWcIJLZ7TMN0m68G3+6ik03oogf9RH5jBf3jd0RMewj4eRa
         aIZSz3RUxXQbw2uDaB5MNMCmdVw79mbyma57bGWQIsPSe+eH+mTYSjUwlooAKgEPF45l
         /HXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=S1vJ4EQxgb8CxF/TZMOJh3j8ysKIcc1uWIaMM56tARY=;
        b=klatoqpH7jRxcC5NyDTbFLt8ZQbBdMMeCe0F31giPe2DS4ISQ1CupaFfUTJ9iqAFil
         hklqptiJ+EDeD1uiSr8m9ZPjJtqGLS1LHTfebsWvtS5XzxI7KZfCtFsyoq/d8MYMn7gx
         eF10nGL+NjRrxLmRPo/OZFdPKLKTet3ZqOCzalmSIeSyscndCtp5IWGH0ECH2h0e8Zm8
         tAd+7x7/XLoOzgYzjgLJbG/opKGTNoSuoeGHUqOvBZu31NPWWWlML4RsEXTHBoN95IP7
         UCn9H1e+W0ltc1f5HiwqpznIbsE01pCw5nHMFfR0axkHw01xaAL0vv4hYRrknwdRz4pv
         zKtA==
X-Gm-Message-State: AOAM532VyTEi1/J5UTjVi4C+Vds0OrZmJeEK6i7C2xn/ae26w1oYk/yL
	fHYg7kPp7R8XcP6M0pMXCjQZ1w==
X-Google-Smtp-Source: ABdhPJx/50IRMlU00F/rYnkUzkndEh0B417cmSpGcaeV7ZCsrUR5344iDQbFh1kQrAGl+EU160hB1g==
X-Received: by 2002:a17:906:a105:b0:6fe:9a27:85c7 with SMTP id t5-20020a170906a10500b006fe9a2785c7mr49413448ejy.315.1653991771939;
        Tue, 31 May 2022 03:09:31 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id u5-20020a50a405000000b0042d6d8ec1d5sm6212220edb.60.2022.05.31.03.09.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 May 2022 03:09:31 -0700 (PDT)
Message-ID: <2a251708-b76c-17a9-4681-3c2c3c31beb0@linaro.org>
Date: Tue, 31 May 2022 12:09:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 2/6] phy: samsung-ufs: move cdr offset to drvdata
Content-Language: en-US
To: Alim Akhtar <alim.akhtar@samsung.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org, avri.altman@wdc.com,
 bvanassche@acm.org, martin.petersen@oracle.com, chanho61.park@samsung.com,
 pankaj.dubey@samsung.com, linux-fsd@tesla.com,
 Bharat Uppal <bharat.uppal@samsung.com>
References: <20220531012220.80563-1-alim.akhtar@samsung.com>
 <CGME20220531012341epcas5p19b15b4916b210687ab6b46d6da0b2273@epcas5p1.samsung.com>
 <20220531012220.80563-3-alim.akhtar@samsung.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220531012220.80563-3-alim.akhtar@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_030933_483916_55C5BDE6 
X-CRM114-Status: UNSURE (   6.69  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 31/05/2022 03:22, Alim Akhtar wrote:
> Move CDR lock offset to drv data so that it can
> be extended for other SoCs which are having CDR
> lock at different register offset.

Line wrapping is too early
https://elixir.bootlin.com/linux/v5.18-rc4/source/Documentation/process/submitting-patches.rst#L586


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
