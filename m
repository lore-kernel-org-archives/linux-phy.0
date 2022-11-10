Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A2CBC4332F
	for <linux-phy@archiver.kernel.org>; Thu, 10 Nov 2022 15:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YuaNPjT2Fk9kevCYa1SnIIJhnb9YHdQL3O2XdqLUuMs=; b=gajxRuzomBfVzN
	yPQYS5ZXsALmxF8t6uFXk76S6d4GRcdvW32etSpBmIvm06ZFSRHHbUCHPzGWkY+hHioP93sKijliF
	d/e/joWS5BLDrXuBjUdCWAhywEY2Ld3bO+G7fdnbQtyv8ngzE/5ytCAppWAf3fytMR7NosXbJBapz
	Yu96/x52arFLo3fbtQnF0DKz61Ini4ZDIgyGY3uXFDuLxFpQE54xnaVB+hHH+NCGSiKgX+J4qZjx+
	ZCPz6BPmskIZkjMjuW1BTSg50tiHtifYwIeutd7GxsTCgpssecpwu+209doMYY+hNg3bgh77L8w88
	4vTl8UvsV9UPLkj4qR5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot9KO-006gfu-IF; Thu, 10 Nov 2022 15:18:52 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot9KL-006gcg-P7
	for linux-phy@lists.infradead.org; Thu, 10 Nov 2022 15:18:51 +0000
Received: by mail-lf1-x12c.google.com with SMTP id r12so3903740lfp.1
        for <linux-phy@lists.infradead.org>; Thu, 10 Nov 2022 07:18:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eFEEXIDHwjKXLyd70zU5amZbOu4MtludkFNwK7zJs6U=;
        b=fCHogmjHGZ4P12zTb5as/N2A23La+5BnkszxGG7bKiC7+bVY9AZaqZKrk6CnxNLmkQ
         g3XAeSodGULHj9+l3i0lTU1MjKe1O4AD0Rt6LTdLmV5EEZLLmvay7xvAdiGY75fGCmPp
         JEY38zDxhtixPsVzq6IvVSqUenxJe68I7xMkRXhbz0PhfxyMIC9sWbMcDta/lfSBN16v
         my56dh0egNalVt3LfeaWKeXUg+qpsYP6PUYaJicdCl5Za3tdEmvENBU/E4M82lUVHbbw
         8+p6MpfDPn6d8i9SApQcW+IoPA7DquRl5FBcVeJOGq0s/VRxA5snRuz+vpgBlCdRWPPn
         78Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eFEEXIDHwjKXLyd70zU5amZbOu4MtludkFNwK7zJs6U=;
        b=iq0YnGIveyxx1VBM3/giOZsJA4fBZrPMml3jm9K8U24j8ATR4+CiQr3yFKWzxPd4et
         KoQ/zTQ8r/V1zDLri8vW7FMqPSJlwzewmaPAzmH5+P8/izMLw9dIrBcW22Pu8HNownzl
         kkbU4nrqP/WtiUmNy95+5s4CRml1PcvvSlTjlBOx08h6EfeO/IPQUxDTA5DFY/O6/QWn
         9dGgUDhHvEpZ2qBQ/d7CrgnVje7ZTdl4uYZCqHpKzzEaPE5kJVGh/uhegtYFX1TUrqRi
         X74q8d7q4ltkdUjoTkbFUGWUeuwnXOEDYBcaO1ka0CjJEDvz4K/7+qPdw10Ev1fgV0nV
         5Zhg==
X-Gm-Message-State: ANoB5pkPamcak4Ez3DlCRT4AU9visuBpCz0zsAWH/zWp814nyk+NmRPa
	wxuOSvnUgcnbrHkXd+GfajBS+w==
X-Google-Smtp-Source: AA0mqf5s3CZi9HZimurexystHtK8Dfa0q3xU/K9pQ5fgCBYdq6uFLSqudJosKqKUqLfGPJ6b5Dz5kg==
X-Received: by 2002:a19:8c1e:0:b0:4aa:c23e:dcb with SMTP id o30-20020a198c1e000000b004aac23e0dcbmr6031010lfd.410.1668093526421;
        Thu, 10 Nov 2022 07:18:46 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id p9-20020a056512234900b004a46f92a15bsm2790589lfu.41.2022.11.10.07.18.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Nov 2022 07:18:44 -0800 (PST)
Message-ID: <bfa39bcc-ac81-e47b-11f3-5b600a8a5ac3@linaro.org>
Date: Thu, 10 Nov 2022 16:18:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v7 1/4] dt-bindings: phy: qcom,*-qmp-ufs-phy: add
 clock-cells property
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
References: <20221110151748.795767-1-dmitry.baryshkov@linaro.org>
 <20221110151748.795767-2-dmitry.baryshkov@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221110151748.795767-2-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221110_071849_851683_73F82B02 
X-CRM114-Status: UNSURE (   7.98  )
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

On 10/11/2022 16:17, Dmitry Baryshkov wrote:
> Add #clock-cells property to the QMP UFS PHYs to describe them as clock
> providers. The QMP PHY provides rx and tx symbol clocks for the GCC.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  .../devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml      | 3 +++
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml     | 3 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
