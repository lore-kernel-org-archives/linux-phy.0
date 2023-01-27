Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A549C61D97
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jan 2023 16:49:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uRgrPvKC2NyMShVSe2/445ga67bkjgrgDk8x3u2KYRY=; b=lFHnUlubnDgbKb
	suiRA9paJ6NCMQd5B8l90iZAqzLRXlv7tarnfafjm5eVLK47kC/VG26FKqmrKXCO0u0p6Kr8vtLNO
	4RCqCGmGBU8u+uhkYJl05k4qtarINLD3aLQrq8yRILUow6N8SNsymXEiXs83dSDthh63O819Sfab0
	hzF/Uqp2HKIMrgRQ2ryeK6aMDtG8UtbHjOnsrfUpm+6srJVPxHXxUX3Ja1MYb4REbJgSsfhUDbxdn
	tQVD5Af9gQ/BRHFK6ZnxZpTASrWg1bRe42z+OEe6ndbMfPIoH/yiiXsLl9ZUAK2PcyGDIHa9FD5Ap
	gYxQqpL/473EupEmAS9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLRul-00FoAV-4H; Fri, 27 Jan 2023 16:49:23 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLRug-00Fo8R-IU
	for linux-phy@lists.infradead.org; Fri, 27 Jan 2023 16:49:20 +0000
Received: by mail-wm1-x332.google.com with SMTP id q10-20020a1cf30a000000b003db0edfdb74so5746029wmq.1
        for <linux-phy@lists.infradead.org>; Fri, 27 Jan 2023 08:49:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MwxIin163802ACvSCq0jg4HlDZfjOU+b7ag/1i6mXEE=;
        b=p0bN2yAu28MNGvTlRbQWr0+f8dRrN7+Tn627u0K/x42EmNDLphayIf9NlMev0wqj8h
         /EmzHfmLQqKOVu8ZgIciDK/fUJr6PvWPKCTqRsZtsPxIDrQvOH3aJeQUvnun7rNkTSUQ
         6/KZMhpjpBCdTsrlPk0Pq1AqbefuhemfseqENDs+CCppSNm6HT2vKHwFAalheOqTayxm
         dtjoNuM92e8Dp5V+KrvfMQYfpqoVE/fUi7G9DPER5YIOirUmedqSV5KeWbBKvr23C7Je
         C0hL4yNzr1apQ8T4Xaqa5bA4xfUJep3aF5qWXf5H1dWiQl4NI8yI1oLJqFFQ+XguiBLe
         Z84Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MwxIin163802ACvSCq0jg4HlDZfjOU+b7ag/1i6mXEE=;
        b=dCMD6VCzpDv1rDZAIRJrG3kmoQ9nvkKKsnYB5XXlMhoWY4A5UskyzM6sxjB6m2VKon
         n29u0OxJ7snIkosqUfmg7pUaDtfWRLUVMTeZ41WbO434Aled/aU6PCIcH5PvRHdoo4fi
         bSzCeKnX0pa6i+oN3y5PAmAkh5xfIvNSCUXtfAL2oZTLz9N0/m6LQBOJ3bLsG+EHFZhg
         +5UGfUhkQ3ZaSnwO8Vi1zPAvT5D4aY6+DWbtdJTieDz0An7HU/LIKzpZP5zoZ1Z4+o5S
         q/NQ7i2nretaf9DLyjoEWqN74uotuocpQJO+C+BGmuqvAiVES+plBj8ntN5Y78ndL9cf
         2xiQ==
X-Gm-Message-State: AO0yUKVfW/Srwc5KKfaPoNs2m7YHBrWzeyPaWlqmPAYHEFvwMzYd+4tL
	lrGK9iA3rjM/FB1h/Vk929nYtA==
X-Google-Smtp-Source: AK7set91BwRn6DZssbXKyvbz30nnUQMYADbkS+Drm/RA9jZHFwp9Oe0M3rmb1c4Tgb8gUCp8+I209g==
X-Received: by 2002:a05:600c:3151:b0:3dc:443e:420e with SMTP id h17-20020a05600c315100b003dc443e420emr40585wmo.2.1674838156833;
        Fri, 27 Jan 2023 08:49:16 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id p24-20020a05600c1d9800b003dafadd2f77sm8990779wms.1.2023.01.27.08.49.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jan 2023 08:49:16 -0800 (PST)
Message-ID: <1e498b93-d3bd-bd12-e991-e3f4bedf632d@linaro.org>
Date: Fri, 27 Jan 2023 17:49:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v3 1/6] dt-bindings: Document common device controller
 bindings
Content-Language: en-US
To: Gatien Chevallier <gatien.chevallier@foss.st.com>,
 Oleksii_Moisieiev@epam.com, gregkh@linuxfoundation.org,
 herbert@gondor.apana.org.au, davem@davemloft.net, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, alexandre.torgue@foss.st.com,
 vkoul@kernel.org, jic23@kernel.org, olivier.moysan@foss.st.com,
 arnaud.pouliquen@foss.st.com, mchehab@kernel.org,
 fabrice.gasnier@foss.st.com, ulf.hansson@linaro.org, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com
Cc: linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 dmaengine@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-iio@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-media@vger.kernel.org, linux-mmc@vger.kernel.org,
 netdev@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-serial@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-usb@vger.kernel.org
References: <20230127164040.1047583-1-gatien.chevallier@foss.st.com>
 <20230127164040.1047583-2-gatien.chevallier@foss.st.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230127164040.1047583-2-gatien.chevallier@foss.st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230127_084918_685016_E0EE60DB 
X-CRM114-Status: GOOD (  11.50  )
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

On 27/01/2023 17:40, Gatien Chevallier wrote:
> From: Oleksii Moisieiev <Oleksii_Moisieiev@epam.com>
> 
> Introducing of the common device controller bindings for the controller
> provider and consumer devices. Those bindings are intended to allow
> divided system on chip into muliple domains, that can be used to
> configure hardware permissions.
> 
> Signed-off-by: Oleksii Moisieiev <oleksii_moisieiev@epam.com>
> ---
> 
> No change since V1. I'm letting this patch for dependency with bindings to
> avoid noise with dt/bindings checks. Therefore, it should be reviewed on the
> appropriate thread.

There was a v6 already, this is v3 and I don't understand this comment.
What do you let? Whom? If it is not for review and not for merging,
please annotate it in the title ([IGNORE PATCH] or something).

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
