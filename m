Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6471C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 09:24:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xVdJQf4NE2ig4oPpZVk/QWvoyZLG5S1OpIHONO/WUTA=; b=QMfPM17XarnK8B
	321ITS4vCBm7pMNXaqHvkyawQiiMJMbrimRsfk1ERu4sZJeyeb7ujd5W+Rdk6wZk7JKLXPK+8iwae
	9cILscxvOTBCRIn23GTMoYfTNLcTBz0tTEOKdAOVRER4DR1OwdmxXxaRlBw7w51o5TRIEjW0t3qKI
	8O2EVI24xWjRLv/Y2+E5pRwPSG5mrbRn/rwO7mowwJouPNKNtZZMJA1OikP30NhbldjL29Nu7iu54
	ghKRpXDFi1NG5VYeCzj4DNwBmQRY+uHwhjRLvU1zlcwo/GIrBFCUYUxtubMrNK1+3L2CNV4Mg54Ys
	duro5as9XTn7y8iyqYaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBv5c-00Co8s-4Y; Thu, 14 Jul 2022 09:24:56 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBv5a-00Co6u-6H
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 09:24:55 +0000
Received: by mail-lf1-x132.google.com with SMTP id r9so1796122lfp.10
        for <linux-phy@lists.infradead.org>; Thu, 14 Jul 2022 02:24:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=yubhiqrPQElezyYpGNTpbSnd7pGxHNBvmiiE7QcQT+M=;
        b=eDf9NKMnm4+mrPZuV51N+ftUZw5oNP8KCjsDn/YGI0Amg+W3ifMA61sLrJodQdJNs4
         rHlCkw3SzEkZisVFzU84gep+Ugc8ur1JLbT3/ZLqmJ0XnF92HK8197PpmdjDc+MA2xn+
         A8xb+KuLAAOhutsU4NuV4sqmJ2n7+wm8NY+7xiAGX+NDdNK5jkJmZsEtiYSt2F1GPqBP
         QSj1YUTj4nFPA7piRi7PK0yaeMqzvTfklZfQysan7sVc/4CaT53cTjeRZMPukRQytDKb
         jCB5Rep/9vERo98pau0nTsZa3nP010wCgPIGij7RNGGM7qihVxVfrFOW1extB1wBRUTo
         XMxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=yubhiqrPQElezyYpGNTpbSnd7pGxHNBvmiiE7QcQT+M=;
        b=ZfyLMl8T7DxZcIk/6+x3aVO4wJyFo77H9NiFNyz99JCb/J/F+ryHyw4rngbCEVtwoX
         VhhI3hwbTZVsP4vErwYnBDbXMFiItHIH9WLHyZy48lHw6OpIn5UKQqObpn9hSJbLUdxr
         s/7snKJqS5lL8cXpRxW6XLTnX5gsvDPWdxsklGYY4ZU3BPn7fHWiCcrjD33hYBOC9t0Q
         59hKLI/KEBSbg49IsQSnMtst90WAs9UhJsfjhkjAQQlMCPvjs0kntqk2KapznDXUCw3V
         5jy9jNsHjNPmhoRBURFeff8ZP00ggMYdCcCLwP3bpZw0QGj5T8vvhUOqV4SZGNsRNsrB
         C+dg==
X-Gm-Message-State: AJIora8Mm39blz4MkyUs0nq7qh06b6O3R5PtgUXIL9tCeGyXsOd07bIH
	x816EZ8QWz5KiY9HAjEV9zJhxg==
X-Google-Smtp-Source: AGRyM1sFb52gQlDNDFiz0Q5stdfKzyZ/u012oRIIGRHTAOOSPEWkYgd1hbvaQ7xWAKh1si5XxdgrBA==
X-Received: by 2002:a05:6512:c02:b0:48a:80f:b92d with SMTP id z2-20020a0565120c0200b0048a080fb92dmr4724868lfu.675.1657790692582;
        Thu, 14 Jul 2022 02:24:52 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id a5-20020a05651c030500b00253c8dfc4e4sm175589ljp.101.2022.07.14.02.24.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 02:24:51 -0700 (PDT)
Message-ID: <3c454669-9317-28fd-ac57-dfab6fd75598@linaro.org>
Date: Thu, 14 Jul 2022 11:24:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 20/30] dt-bindings: phy: qcom,qmp-usb: add missing
 child node schema
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220707134725.3512-1-johan+linaro@kernel.org>
 <20220707134725.3512-21-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220707134725.3512-21-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_022454_253714_8E84C06B 
X-CRM114-Status: UNSURE (   7.10  )
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

On 07/07/2022 15:47, Johan Hovold wrote:
> Add the missing the description of the PHY-provider child node which was
> ignored when converting to DT schema.
> 
> Fixes: ccf51c1cedfd ("dt-bindings: phy: qcom,qmp: Convert QMP PHY bindings to yaml")
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
