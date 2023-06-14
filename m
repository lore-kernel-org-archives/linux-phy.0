Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33B9AEB64DB
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jun 2023 07:14:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DRHSgHrNMsIvjMgj0ZZGCzyJtEQMKi+nf0p7IXm7nLw=; b=FPlRD7zM5TesVr
	6kBO+cq4xewX7mRzaF68YJYziNL3eFY/6gi1HL7ufFfQeR9QomMhytvOAFawkFm4sc0sR9NHpbG/h
	ZQ3BTDpyCpe90OoOrBHNKLi6MC7IjHeBckjbyCYCswYnO3OmXsAAsQLsXzAdKTcmdngqqmZvZyyCw
	WVzDUzRUbKBCBF8IRwsFLNCpURphfDYLb4OHg6DA9LHIbywdUM9HLY1SoQhwz7OJt5xV+puoo1Zgx
	MRY3kyg91+M8yKuOGm6AFiLill3DqduOotEV7TO7WQ1iFuQIB3DT6BspI2IIp90VkqbweTzAMEJi5
	Wh3KKvc8s9xYlsUPgAQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9Khk-00AcJk-2j;
	Wed, 14 Jun 2023 07:14:08 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9Khi-00AcHX-0U
	for linux-phy@lists.infradead.org;
	Wed, 14 Jun 2023 07:14:07 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-4f642a24568so8048944e87.2
        for <linux-phy@lists.infradead.org>; Wed, 14 Jun 2023 00:14:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686726841; x=1689318841;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wXKHed6+j3YBrrxp8AhQhFGlVOHvFUCBH9GPXEoaEzo=;
        b=ZGmuxDkhsAalBig4v1AtxqfenTa9oHltsyUnycHLWUoEv/eCk7scpXtexHXjYEPFTB
         I5kXHlSPrqYz+33urIOC+twEm1kzgyg8jbonYStoPSjf4qCu6uca4RfIxCGTnH7cDpKA
         DAbGrnDmtaFUuMZYZErjWVDcBikPAFJM+kUso3aFafgqCt6bwxcV5MeuibqNO0+Jq8BW
         4GjtwvDpW2Xol7UI/lL71HZyR+tqFhHC8Y7ZdfAp4cyHeoYeLdXDCTNX3YLFrpfIeqb1
         K+a6tbjLw3ZZPR1fwAHNk4OGupAWnjHpACivT8IFDkz7V7MieEvPvnLw1aUCPfbRQLPE
         EcVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686726841; x=1689318841;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wXKHed6+j3YBrrxp8AhQhFGlVOHvFUCBH9GPXEoaEzo=;
        b=OkTJHZPeaTd2FaE1dgqy8sAJsk80OWVJ73JhTN7RFQzXzyV751xNJdDRkJOFKYW4dW
         0H0yR97fMDLXn0FQFaDwa7JTDr/nCN3Da5sGV5YbF0cZklEUn6ZCZ4oko9qdGnlMuFWK
         3dLvs6CDTgvj/HfN8Q20vAwu1PmNYPot8v6YR8mGruD2cosfu6NLhFmJqTckUvPexzrX
         QU9d5YSpNX7P+b+5isHbyzqj43yzWMQbcem+gkyUtFbHSQp+JBavmOg7DnPEQtrUjY6M
         GSTbGzO+xqHGHyf43GCrdDcP7e812mu/0gbsmsyJAkdqhCa97CKouwybnK6o8YiHMXGU
         gTDw==
X-Gm-Message-State: AC+VfDzapPdoziJl9BUUTzlD2EoeKNaFDdzSX5at2ZwjcnvU2SiJ86Cp
	BNCTbFRnVAMppfGb/9ZtXlwKSA==
X-Google-Smtp-Source: ACHHUZ6UUVEg8GBaPlHMq9L3Im2SMaz+Jvnddpr22VGirb893Y/RtH/cprjUAq6IjFSaN5o14+X86g==
X-Received: by 2002:a19:6611:0:b0:4f4:b783:8556 with SMTP id a17-20020a196611000000b004f4b7838556mr6082949lfc.66.1686726840952;
        Wed, 14 Jun 2023 00:14:00 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id v4-20020a056402184400b00515c8024cb9sm7510329edy.55.2023.06.14.00.13.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jun 2023 00:14:00 -0700 (PDT)
Message-ID: <03b672b5-46f6-5df5-e0c6-050886cea311@linaro.org>
Date: Wed, 14 Jun 2023 09:13:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 04/26] arm64: defconfig: enable the SerDes PHY for
 Qualcomm DWMAC
Content-Language: en-US
To: Bartosz Golaszewski <brgl@bgdev.pl>, Vinod Koul <vkoul@kernel.org>,
 Bhupesh Sharma <bhupesh.sharma@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jose Abreu <joabreu@synopsys.com>
Cc: netdev@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
 Arnd Bergmann <arnd@arndb.de>, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
References: <20230612092355.87937-1-brgl@bgdev.pl>
 <20230612092355.87937-5-brgl@bgdev.pl>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230612092355.87937-5-brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_001406_186753_716D14E0 
X-CRM114-Status: UNSURE (   7.90  )
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

On 12/06/2023 11:23, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> Enable the SGMII/SerDes PHY driver. This module is required to enable
> ethernet on sa8775p platforms.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
