Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36E85C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 09:25:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=su/D+08dZxebijlFPhle3Ij0A9dmqRoZLW001wK30us=; b=CYmXy7dB2wLgtx
	bWn0QK94ZzAf1f5o8r8zEXYGq2kD656RPAiEekkIYeMUGryUsnXLniaIABeStQsWS4+gPyJjlFzKb
	z1fH7yDIqKaKbHBJGusfNPvZcNdlVuCHNcYgTI/gwRktWVuyvQFmHojJMlm2vcVc+vknvr8FmkfnL
	GbPkUSQy2Qzg1ljLTSreMsBZVLFxOqUgyx1uvZUuWTQuc0PGsrViB5ba65cmZHf6ozQxVIi8hxMpK
	IppeIaSFJm4CQoVGMzS+ErkbGlnU9Cf1nBhmTca1xPcY0zBS+FJUy/kPiaRN1R+zQNUWMCcx5l2z3
	nM2zgECFQhmasMdYcDYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBv5o-00CoI0-Kz; Thu, 14 Jul 2022 09:25:08 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBv5l-00CoDx-Vp
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 09:25:07 +0000
Received: by mail-lf1-x12c.google.com with SMTP id n18so1843720lfq.1
        for <linux-phy@lists.infradead.org>; Thu, 14 Jul 2022 02:25:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=NNwnWPeD5mRbFNqIkyD+pTqqMFhALyWUWBLa+q1m/vk=;
        b=w/U2Ib08cu6VWEhiJkRblQLMSvBTtDz7j4qlNQtZxMc+Mi3OrHuTc+Mskpl49Se6eY
         p9yzf8xWYTkF5SayKsMSxNjdC1SWIsyyby9Vp2g3+hvBp/GQFAoEaE0J3fB2BlJD2Zta
         A/f2gxZrhGA5QFhQqi7X+H0h6tSYAefV4CFxdVNSqf1eXD7UFuUGGeYaRkoAQtbBEZ1x
         1uWnWnBWnvuZSpzeTDS6tVbbvHMGqOLVKoQlE8SYdEyqWWQHvu6S8rzd2o4EDA82PvDM
         CS/UQznDA6APOivjdgs4xO+nW5gSpON9MthZc5U1ev+Me+yPtvAj980LUsDyGZ/bp4Hz
         2KSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=NNwnWPeD5mRbFNqIkyD+pTqqMFhALyWUWBLa+q1m/vk=;
        b=AHADNcRzBv/hL6hvVNuHzY3RplJR6YXiC23J1Rlnb7D0pZ3H+MqstDHUhxnvFTN586
         y9lYIWLzOqkOtqqNJKD7BrgMysLSZSaZul2+hF1bplzrZQa/XHHPF25k77XgKO5oGZMs
         ixooDf298FBc+Whd46sj+y2fIyxmbhvma9xogdvsR/XYyjOlC4BCaUD6jtEh5ICwqusj
         dU3jJhxVt/5ulHjJmw7OkpnX/KxF25HVtERpVwEp2J1kfEvRozo+mkuMaACQymJNPfwp
         0dK1De4Z8jeBt+u0pKahWzQMncK+c+2Z3bnxc2eAoj5w4OdCwHk8d9UrWMZWyDrNDY5m
         Vozw==
X-Gm-Message-State: AJIora/dvaL7hko3FwbtfU3SJT5N2gNiqMdBB2/1kZ7MZR3O4nXj+vjB
	HhTB0P9eqH1A3CkktMShMegW4w==
X-Google-Smtp-Source: AGRyM1uWrgChUqWYOMuYeJaQIptSFkQDwvmHHhgzJG6FWsn+s+0B3XZyI9ve6trSThI6ZgQIVZmfAg==
X-Received: by 2002:a05:6512:224a:b0:489:db85:53c6 with SMTP id i10-20020a056512224a00b00489db8553c6mr4476143lfu.383.1657790702471;
        Thu, 14 Jul 2022 02:25:02 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id u14-20020a19790e000000b0047fab4c3651sm259673lfc.85.2022.07.14.02.24.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 02:25:01 -0700 (PDT)
Message-ID: <9f226d8b-f5b9-2978-991b-69a37907ab2f@linaro.org>
Date: Thu, 14 Jul 2022 11:24:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 21/30] dt-bindings: phy: qcom,qmp-usb: deprecate PIPE
 clock name
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
 <20220707134725.3512-22-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220707134725.3512-22-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_022506_065264_7EB4C948 
X-CRM114-Status: UNSURE (   7.47  )
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
> Deprecate the PHY node 'clock-names' property which specified that the
> PIPE clock name should have a bogus "lane" suffix.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml | 3 +--


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
