Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9338C61DA4
	for <linux-phy@archiver.kernel.org>; Thu,  2 Feb 2023 17:00:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=irNNI+OFFWVShfuTYYy4jWQL+nZn0H5BQXKb+C1Qj3I=; b=yJ+PGiHoRbVoDj
	Ohzwz7XfgaLqcuq0hY2pePyBjoRj/HXiD1AR3N0vgvI2dR8eCbnZ65r0mqlzoRxjzKUrm2pDMHp+3
	o2ZdL7Encbma9TSLBkhbOzhDZjeNfQkE+mFkknalXszwREdJVk388O3X5povxx4w9dk4OgVidtZAo
	9w6z3bvA6pJRcKH+EGs1T9CKBCYCON0PTGwU0V4kd8GZm1wZyeD0wjZlF4MCZ10fPP01qMG6U0lxb
	nr56YgsaW2WKEpwJ2AE9zSQF8pc2wx9GM7P3cUfvPgwC+WJKm88N7QEk4yexauCeI0aLCk9MbmwLW
	A8I7469l9Tp33lTGBOYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNcwY-00Gk4h-5P; Thu, 02 Feb 2023 17:00:14 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNcwR-00Gk0T-C5
	for linux-phy@lists.infradead.org; Thu, 02 Feb 2023 17:00:08 +0000
Received: by mail-wm1-x332.google.com with SMTP id f47-20020a05600c492f00b003dc584a7b7eso4191702wmp.3
        for <linux-phy@lists.infradead.org>; Thu, 02 Feb 2023 09:00:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RhWcv5ExWaP3//OnTLElwVyp8DmK2Pshcf2EZSENjBg=;
        b=S59BU50BWaDwXZXUjhHPMPQGa7RFaMvglYDORCeXz5DaTmSlUJ2pEeHpVpvG1odNcn
         2/pJ/ApUNg8czmIkCXmqq94V4vHr0lpDUY1HXzt63FSvGvTx/543eX5t3veDdyCnIfAk
         5/6DMQ9TqnW/4suGIJVNiXNXj1ypi5g3KnXflobuo6jM3mSUP69IEQxmPX0K0dZF7Bec
         5UJUrww+pMs2a7TzET06rDEcgb+YhC+41FHr1MlwZAeobNe7ABaVjgqsFEAoLElR58SP
         TtJ7XRHL8jHflHSjoptLYiEFMOf6TltMRO3uKW653hr0XZv25puj4uxx0hS0nXvs17vg
         idFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RhWcv5ExWaP3//OnTLElwVyp8DmK2Pshcf2EZSENjBg=;
        b=T7vxuybuymmwcZ/4mTIbTKbZkP1wAtnxySXnTdCseE3akmBnzI9DMnghhejwi4NXqL
         asGt4joiCjaLSb9GdC0m8V/UjpGxLUTo93NbdHOnha9lKbbbILTS0QA3c7XOMKAXKI/l
         eTHha+yd91Emd+H/RvxtvT9jxFml+4TC1H60jExQNgAIfpcDG6h1HMxjxGCZiiA5ekVj
         TU2RxAFj8hGy/rE9rRNe1dVT2usF2JuwUU5rGu8g9WefksNTJBitmjMDjK68j4jxIUBz
         tpCmBA3Hyx9BygF+F9ARega5CDRbyGdqxsQkM0Xf+s4/0qvbqIS1SzaVHTHISgNo2TDa
         ziew==
X-Gm-Message-State: AO0yUKXWo2V4j33939AO4JIyWTikmYNZRKXUr0hY6aCrkSKeIBILwRgB
	6t+l57d7h5k2He8v+ekd5+SDtA==
X-Google-Smtp-Source: AK7set8Mz6f9IAFqisS/S6MhfAxrzntIV6lhfSiMTdk8c1G+CNehf5jH9DotPDB/8tObaNdLMHytCw==
X-Received: by 2002:a05:600c:1e13:b0:3d9:f836:3728 with SMTP id ay19-20020a05600c1e1300b003d9f8363728mr6856891wmb.11.1675357202092;
        Thu, 02 Feb 2023 09:00:02 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id he7-20020a05600c540700b003df5be8987esm3632611wmb.20.2023.02.02.09.00.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Feb 2023 09:00:01 -0800 (PST)
Message-ID: <9bc34d9a-e4f3-272e-1ebd-c717509b709b@linaro.org>
Date: Thu, 2 Feb 2023 18:00:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [RFC v3 1/7] dt-bindings: mfd: qcom,spmi-pmic: Add pattern
 property for phy
Content-Language: en-US
To: Abel Vesa <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Lee Jones <lee@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-phy@lists.infradead.org
References: <20230202133816.4026990-1-abel.vesa@linaro.org>
 <20230202133816.4026990-2-abel.vesa@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230202133816.4026990-2-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_090007_513412_4FBF3551 
X-CRM114-Status: UNSURE (   9.24  )
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

On 02/02/2023 14:38, Abel Vesa wrote:
> The phy pattern property will be used for providing eUSB2 repeater
> functionality. This will be modelled as a Qualcomm PHY driver.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 4 ++++

You need to re-order your patches to keep everything bisectable.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
