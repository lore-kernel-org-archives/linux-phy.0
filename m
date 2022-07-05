Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA000C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 10:10:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V29PoNFTeUem61FGAUnI7PGmyBP2KAsjuwSyRMuABLY=; b=Wtn4lfOFBaw+c+
	vAU6uLfUmPjgmxVHlIjNqMa+j4wU9dS3TssDYxHC6uFcwOsm5hdAZOdiD3GiTZeZHZI7SpSQlMH/9
	LdSbMdXhAZi9XaYFAhUAiGFMIP5c7eD285vOpv5Wd3pDQg3kNg78eaiNiDN3Fqn1AuipxaxkugGJ6
	modi+ek7qRs9lVgLWbWER67WXsLQEyjfsvgedLVK9sTZZkisn3JItR1FsB3lv5DqIE5W5pTob6xno
	BGu3sbvip702V28kt+cPjhj4P0YM53WfMeJhQkFEBBj3W1nsXdpgt6Z134rr4HLSNRTZECs52nT1K
	dnO3vMBkPmLXATD04gWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fVS-00H5Fr-2P; Tue, 05 Jul 2022 10:10:10 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fVP-00H5D8-RI
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 10:10:09 +0000
Received: by mail-lj1-x234.google.com with SMTP id i17so9120930ljj.12
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 03:10:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=LwklaHXJqGy4wlgXwDIhCrndZKL+YTgeKYcd/TD3PiQ=;
        b=aOh9dSMXrNAXc0z/pI4Hry0cqbB44nx6nC5EhhDM+WOL57j1b7ci3SZm6fPiCghQp3
         cORKCB/lEX3S/qbdm3ZHkkIYILmXf1XGEJxwvvj0fyBOvSxALZOFpxj/lc0uQaMG7WqL
         kftoB4UP31UAzGQkFeGQizw0vglQsSncyz6OrLNn6YuNjIvX7VFEe28dHfn6VTyvz1Rv
         5bXohRHKKVHVaVS4/mpen/jc0NPCDgGysIvJREQ3oOzHybhU6nGKDzhh8LS/rQYEYiw6
         uY1UYmGyPUXYX04hwYkUSC/dE+TDFdLWN72oZmGu6CL3/eg886lUB3csJvJvFvx0H9TA
         6nWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=LwklaHXJqGy4wlgXwDIhCrndZKL+YTgeKYcd/TD3PiQ=;
        b=zfwh2qECbRTEE06zSJ/x8N0i0Lj7RmxJ8HVGMY/yMJFGAh2uWq3lLPrx9B3r4diwII
         eY3SMQGVaw4WeCVqIY73l4YwaiCTQgxpA6WsVfrWNAUG//aNE5akTbo+1X/vrbM+TvI2
         NOrRysNA/iYrdsnj+6Q2lwXFaADgevEgE+bC9U1EO3rT8LzN6Ab3tKKd4B4tuKdPtZLZ
         LipFmwN6RO1PPW/bjtA0lvobXQsTubDqKa5GywB5mm5j7ML21c4q3aC/Gni0VC8XRrCX
         SjPkcS3DOl9JREgRdYrqdB75GiNFFwOVAQIJRKl/MGS9740XjLDpvGTo9c0aFmOORYLa
         um+g==
X-Gm-Message-State: AJIora9BhDDtoBgUR3Pz6EqJ5j2QlUHa4udFptysdeVuE81sa5PCghGV
	QVzLJcTW8GQlesjJa/jtMT91qg==
X-Google-Smtp-Source: AGRyM1s0hx6q+PGgs8vObtL5mNO4dyrsFKrnrsb6ldgX/UGAi/GroCR7ru61pNCfVXQ91wfq0KJy5Q==
X-Received: by 2002:a05:651c:a0f:b0:25b:c834:4604 with SMTP id k15-20020a05651c0a0f00b0025bc8344604mr19291694ljq.252.1657015802410;
        Tue, 05 Jul 2022 03:10:02 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id s11-20020a05651c200b00b0025d33ef2623sm220507ljo.61.2022.07.05.03.10.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 03:10:01 -0700 (PDT)
Message-ID: <d3ff8663-b72b-2616-656c-2b3b5eafdbeb@linaro.org>
Date: Tue, 5 Jul 2022 12:10:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 08/43] dt-bindings: phy: qcom,msm8996-qmp-pcie: add
 missing child node schema
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20220705094239.17174-1-johan+linaro@kernel.org>
 <20220705094239.17174-9-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220705094239.17174-9-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_031007_939014_5C65984A 
X-CRM114-Status: UNSURE (   8.05  )
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

On 05/07/2022 11:42, Johan Hovold wrote:
> Add the missing the description of the PHY-provider child nodes which
> were ignored when converting to DT schema.
> 
> Also fix up the description that claimed that one child node per lane
> (rather than PHY) was required.
> 
> Fixes: ccf51c1cedfd ("dt-bindings: phy: qcom,qmp: Convert QMP PHY bindings to yaml")
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
