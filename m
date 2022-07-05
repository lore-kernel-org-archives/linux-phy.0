Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA53CC43334
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 10:09:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TO+U5SaQRAVUmrUoQ3kgNLsLhbbSjS//JjuU1WnDsBA=; b=dlGV/qBaxICVFf
	3grmzSv08zy4/kTKZCug+oB7gMV+MHCQYx/bV0E0tsIC1d1ZWDMk0w6Tgclr3tpCF8+OOGXw6RKa0
	53hTAfvZnTOYReRIbJKitvjF6W2Qwk7649TfVihza6VMwb9JpbDDLWQgGxzDEh7IdrEyjYv+PwqFo
	2cwWg4Pbo+oa4JxMlr6R0u1eSGim4QLAC2F5KxKfn0QzL/mNG+XAkME1eQHif7RCEoaA05nYb0TY9
	Ngm5lsCm8TotrXNf09iFNGhSGpIP2Kg0iTH3s+D6P/PhEW8Uhewyi0xTnHHQILILabHDNphgAsurx
	9hjKQoFESkgu6TxGEJeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fUk-00H4wh-8v; Tue, 05 Jul 2022 10:09:26 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fUg-00H4uy-QN
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 10:09:24 +0000
Received: by mail-lf1-x136.google.com with SMTP id e12so19706902lfr.6
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 03:09:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=++vjGe8mpLqU2xGwDgEAFEe55gCpwSIaeI5LQH/HV8I=;
        b=ziJUkeOVTjztBNbWsNcVKJ2DD64yNNIKqNTeaO79n3Nffa+SqEqRkNBXEHA01dKRyc
         emKzAQ+s3mdQ/xo1myOwQlvXoEGVVnZS8bIC5yCQTokr+5hHy2xSGH73ryEE+j0IEP+W
         ZMObpuVOPx2Mq/BNyEDogqsSlW+P6xrCt9Y6jGFDwp4aVSS+nvOj5hw930OhJ2ewhL7S
         ixbjcj/EKAZRqeAOuRRVD+1fKje0IDde2tFpj8+mliaB3WY28dSRwz/OAwF0MAjVUQbu
         VKdVMZgEzuGC5nT/VnqsHNfZwkjr8RaVhZZN4yOXYlUdK0/8vzb2iAwtqIIxGw4b70mM
         KVTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=++vjGe8mpLqU2xGwDgEAFEe55gCpwSIaeI5LQH/HV8I=;
        b=Vag0QbfZY2t/lX5E1Vij9aNPjzhg+j2hU2A2R/ZPI7/t/G+KE2e+uTE3Hs2GdWF6RZ
         CHTPA5dxO2wvwnsM+dyaIE9iboLSvWjA7SertOw98rb39NOCysCpED1KlAH1CBTDiyta
         nvO2ZK/VSe0qYoueXRyvU43q19wRj3Nyv/ER4/Ur0i0gfaCR1t45LSf3/7cV9YuLL3Fq
         6KIsygXkvnRYrVORpHG9RkM42YDHUpxBDAKYZuiakInxLiIYWXovOIpaYpizpiWIraae
         tfmQuOjjfo1AeVTyQodAKSNfDu2jl6j3e2B8JHiFZZdg1DOIt5MG+grULAcMpMx4is3p
         4JRA==
X-Gm-Message-State: AJIora/KMMDUjnITiLvS1d6IdlDUYXKCmbVSokK3kq0NvrBbx/VAgFNi
	rKvqWs2EWGIFycMDwKeICDhpGw==
X-Google-Smtp-Source: AGRyM1sf0BMQF+WZOaMxWUNwUosUm1hFqfRScRMsbYZ0KIwSuavi36s+5xyuEdlSgXOUwwHi060tJg==
X-Received: by 2002:a05:6512:90f:b0:47f:5a23:c62a with SMTP id e15-20020a056512090f00b0047f5a23c62amr22370316lft.598.1657015761269;
        Tue, 05 Jul 2022 03:09:21 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id e4-20020a2e8ec4000000b0025bf4eddbb6sm3221175ljl.133.2022.07.05.03.09.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 03:09:20 -0700 (PDT)
Message-ID: <4b1a9ded-24b1-faf1-e105-f18afef57682@linaro.org>
Date: Tue, 5 Jul 2022 12:09:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 07/43] dt-bindings: phy: qcom,msm8996-qmp-pcie: clean up
 constraints
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
 <20220705094239.17174-8-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220705094239.17174-8-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_030922_901800_0EBAB5DB 
X-CRM114-Status: UNSURE (   7.28  )
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
> Drop the compatible conditional and tighten the property constraints.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Squash it with previous patch. Does not make sense to add new file and a
patch later change it.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
