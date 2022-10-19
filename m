Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42A9FC433FE
	for <linux-phy@archiver.kernel.org>; Wed, 19 Oct 2022 12:28:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y+AxuuOdx/JdgPenPzTl/pB+2H3cLtyxdTRuTODdEvc=; b=cyuJgQ3gQGBYel
	+HDrdRZ1FcVIXflB6R3ho3BvQXFjG0ISNMUxBoP2GWll7eljobXFdpr5ecSObJtKJQ2L4YyhEDEOu
	XhO7OZi+XBYunHP2fjUuFL75vKnS+33zmMpdyB90EIYzNm3dyNChm+lfnbmcEkc4edaMi30x4757K
	ol7377DritNfj0oOZReOlTJ7iucPgOUw6wq3fiYGzX8Q17RstapXX1KCLCzKtOAdVqB8v/RkQD77Q
	8OBisBei1URq9CBP1RnF/NdDs/8Es6HoqRim/BvLJVIM6y+CSzd1lZXhP+ViqYr5l8uU2XLLAKnVG
	Mn1+G5NzCDzp/3j1BlVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol8Br-001U37-IS; Wed, 19 Oct 2022 12:28:55 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol8Bo-001TxT-R2
	for linux-phy@lists.infradead.org; Wed, 19 Oct 2022 12:28:54 +0000
Received: by mail-lf1-x130.google.com with SMTP id g1so27803808lfu.12
        for <linux-phy@lists.infradead.org>; Wed, 19 Oct 2022 05:28:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PWIPtMpQ02ewOUSaXVuZNn1e8c5RAFg0cMiaOwfgDUw=;
        b=LioaiTyPzr2IVjMTKvSTS9sX8jga3+kPP/cOH70WRS9HnmHT2PVk8DAQhmYGMv2kIG
         u/1YCiZBETYyvralMXXTVoTz6LorXJaZr68izQXMs+Q62Spgb1h5pimLs2HvwcewlwD2
         1xVlrwmXYhEVDu9MCs6W1pZ5nUQ5xdyafaK0cTx7PyM+z6tkSIj6aFPi90ZtDPcADdsU
         Z9UiLbRuNzWB8qOOv/OeOmVAZD4Uec+numuby4X7wIQxo6OCI7ATVRhVA3dwyqokTBWl
         F7NZGzLEbiE9C0M9Tn2XK3iH0hvfzLs0lKh6o5DochDODqWNsT0e+XCmq3XuM3IhAeVX
         w7LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PWIPtMpQ02ewOUSaXVuZNn1e8c5RAFg0cMiaOwfgDUw=;
        b=tiKRG3p35uIrMgtsxoIUDtpzIFIuc3Cl8hY770iKa7k4isJiD+AP6jDpd+hFsJb3YH
         M6T3DLv1CYZAE8V8QI+F1okCjMM4jsQYX9hWPTAjaVe3w8LvXs7oZj/CNtXvRLaVq0Rb
         rTLtgaqwFIO2k5IlrHCBW8Eu5y5Qo+D/h9uuK7fptLKVxNIebvXwg3sJ+peUja+EANpg
         d46Hi45gfcMa0uA8gO7N+aNV0I31asuRZbXrbqAlpk4cyn+gaO1Pj1CItPEmE2Szbtk2
         oz7kuHO1BKzef1emgtCke4qSKktGVyT+9L5X7zzMNiGUm/WRUBIBMQVYZbtSxPX+ZhTD
         9zjg==
X-Gm-Message-State: ACrzQf2vKVziS6C1hJmEvLM0b0kp9Vbo6WLxRE7qQRdch0tYRlH1/whP
	HZfeOKfkZ7OeT+6+ogSsZVSHpf1Xyej18w==
X-Google-Smtp-Source: AMsMyM6nzgBsd1noq45Pitnhpm1WORKQM6+ODRZrBZDypmZIxnxg2HmI0rirG4D9BWG9C7ygKHTzqA==
X-Received: by 2002:a05:6512:2314:b0:4a2:6c4a:4fb9 with SMTP id o20-20020a056512231400b004a26c4a4fb9mr2952516lfu.482.1666182527532;
        Wed, 19 Oct 2022 05:28:47 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id b17-20020a2eb911000000b0026dd0ee72d1sm2426419ljb.72.2022.10.19.05.28.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Oct 2022 05:28:47 -0700 (PDT)
Message-ID: <9cad4f2c-7cc4-72bd-0b06-5579cd0aed2f@linaro.org>
Date: Wed, 19 Oct 2022 15:28:46 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH v2 01/15] phy: qcom-qmp-pcie: sort device-id table
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221019113552.22353-1-johan+linaro@kernel.org>
 <20221019113552.22353-2-johan+linaro@kernel.org>
Content-Language: en-GB
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221019113552.22353-2-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221019_052852_910059_BF158420 
X-CRM114-Status: UNSURE (   9.66  )
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

On 19/10/2022 14:35, Johan Hovold wrote:
> Sort the device-id table by compatible string to make it easier to find
> and add new entries.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 20 ++++++++++----------
>   1 file changed, 10 insertions(+), 10 deletions(-)
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
