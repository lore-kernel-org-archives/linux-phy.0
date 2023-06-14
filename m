Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EBCBEB64D9
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jun 2023 07:24:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J8yWpMeNh53jmWPZSl24ih26Oth41J9ae04w8AxUrfI=; b=HoA8L6ywKtpIl+
	WgmuQAKwkYDChS2Rzbjy5ZCRyU2MScdLXo1+nY9ButEMzwnWKHx8N6A+IbSrRdCKeOnqQq5ClqztI
	6PxVCz4Nbu2pbpXI62dNtpTQ56+xK/N6vNCxSrgreZmJXbBxdFh1be+VNIw+A2blpX2JwifuVD39p
	wryfZA/3mQNB97vVA+zh+8tvcyl0wM5GWBHOeUSNBpqsNMMkFSpH8V1+P9KzarhfVEpe6IbVaaZ7S
	exq3rwNpBQShph28+kimg5eeeRIKQVX/Hh7zUX+LnbznZG7xuxGYhOZeJmdcG9Hyzkl1tNNQj9zRa
	qmDauoRB0lewTnRfnt/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9KrL-00AeTX-2i;
	Wed, 14 Jun 2023 07:24:03 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9KrH-00AeRz-3C
	for linux-phy@lists.infradead.org;
	Wed, 14 Jun 2023 07:24:01 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-9741caaf9d4so59893066b.0
        for <linux-phy@lists.infradead.org>; Wed, 14 Jun 2023 00:23:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686727437; x=1689319437;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=X48c7AoEOD3TxiGjzZ730W7QuuocGN40Ji4sYGrasgI=;
        b=AtHampU+XnfOFRa3UiWqVTavPvWwSBDwj08vushK74etxW/+TzPgltr6/zw/btuhFE
         HzLAnfpiZuJqMPGBNjXFL1l+linJmw/NYyucs8WLnrQr2cYmFkO1+3WzazC+i7blSpBk
         jkYn3pmPeNGEhPaOntF/JU2Fe75Jw6cI1XmkL1gvZ6LZKhjlFRP7d2oQXwKyuPFVaiWD
         uGdfIbDACla6yu6/RIttUUMDBNBLoF9L7naUE6zMDq1imfFT1kwowe7iCF5X+YV5neGV
         MY0dSU0/H/nJLVNelsqd6dhVZKpxTbbmZZoevFNWK0EQbl4Loe+N8K5jUi975+y3mfLl
         tIdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686727437; x=1689319437;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=X48c7AoEOD3TxiGjzZ730W7QuuocGN40Ji4sYGrasgI=;
        b=KJzSFK9UyGGTcnrmOOQgtzkMMOH2x89VfJ1bT/K8UfCCd7VJeEWFux3z54Ax/wL0aa
         fQ07+1mRCZypBvweVAj6rCBuqRsB6IUzHyHdIsvEFMbc3z0iE8tYM9WG4/CG6TjGqpI+
         rztDRcgnk1bgPyjfz/ibk64nQQNJ7uSsop5LJQAcT/Wyq/+lREBLLeIRjhg4DOTg6tUp
         JT2d/QIVUKurIH8gY1aUOfJqfQhpX3di90r9/L9PKWwPcUQL71nsFlWEqQ14P0F5mCT0
         QXNryvo+6dsb8NMPMjAuj/lEvjLk2cbVj/6K5U8++J4ihofx6c4edrhuJMSvdXJs7xcW
         V2mw==
X-Gm-Message-State: AC+VfDxiHQo5F/SEaTvQNvIE+uvedWtmn8eJa94VjqiZt3MmmNVwvmcG
	Y5E5PHwQ1Yl5TMZZZW0x1urZQA==
X-Google-Smtp-Source: ACHHUZ7HprcUbY4Np2NnM2SRFCO1cDvQEs1A8ynQEvGZx3Dh5Jm8HUXXavnivFzBkFvto59qd1FDyw==
X-Received: by 2002:a17:907:2da4:b0:981:a949:2807 with SMTP id gt36-20020a1709072da400b00981a9492807mr9406993ejc.1.1686727436730;
        Wed, 14 Jun 2023 00:23:56 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id ce14-20020a170906b24e00b00977cc3d37a2sm7598052ejb.133.2023.06.14.00.23.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jun 2023 00:23:56 -0700 (PDT)
Message-ID: <30d50e3d-b501-273a-66b8-6d38d63842b4@linaro.org>
Date: Wed, 14 Jun 2023 09:23:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 19/26] dt-bindings: net: snps,dwmac: add compatible for
 sa8775p ethqos
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
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
References: <20230612092355.87937-1-brgl@bgdev.pl>
 <20230612092355.87937-20-brgl@bgdev.pl>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230612092355.87937-20-brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_002400_058629_96EEBF37 
X-CRM114-Status: UNSURE (   7.14  )
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
> Add the compatible string for the MAC controller on sa8775p platforms.
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
