Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6C66C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 09:27:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gTZfKYcGCmCeEf7yN66mAqYjhlP908V6McV+Jo6qn1w=; b=chr3BjjbX8FhYz
	t8taO6QsPjIT/qiC8E06lFr5PjcbGb02uqyXa4JnhJkJ7f0UsixyrMkElcv3QUnrr6PfBvmJYi2/4
	J1uOy1ldYahWQf8VRpKOGAgs+4twSCYDduV0WNLQKrSrtUzAeedjFHAVKXozrbWr5PwRv9BSoGwjc
	5oFf+LwZVktEVo3a7pTX/ZEuE+XJu7jXi9G+v2PxaIz09RDnlbemSGgiRaQHbT5PHUxk0HGKtrIqE
	bhvWYSSX1YGrkfK3PAenAfIhDuUmhGbh1kljIV7Jnsh5cq99Q7FQrH9dJkT9U5bxYv44FAKKF3N3R
	40V6D6gKeX/K0izGKoow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBv88-00CpWv-7I; Thu, 14 Jul 2022 09:27:32 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBv84-00CpTP-Kr
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 09:27:30 +0000
Received: by mail-lj1-x234.google.com with SMTP id 19so1472104ljz.4
        for <linux-phy@lists.infradead.org>; Thu, 14 Jul 2022 02:27:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=5PPm9mfokY2Sd8yxvJ0i2p7X69Tuy9DnoDdMoGMHDzM=;
        b=shV2ztajRAlsLHi6MmtqBz85kKuJDzs5clN5R3pzpYV0ka4lvpOLzZgL4WjdLte2Yg
         emJpshiLiXBcocMVyzrU3wjzKboFXRee2hXU8fNPjYaLLXhq6DU6aaBFhaYI5eGYUem8
         JPWdaWsMCeR6P3AS2sIjwjYLSu96IAYMVR2sEAzGfaky9O2vtGLtX0UO+lYSmLvi2bX0
         2RBzVlrYy+bJ2ywjIW7HwldqjMw+UpRY4pzyf636JzRDZoQHeOtKF0LR/v0CvR7WSaRS
         AdujqgTqlSlqMmpRcIol2jR6yT0MaoikZkQz2hVqA7QFtsZL7cf9Omwdr9Elp9ekzSDn
         Z4Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=5PPm9mfokY2Sd8yxvJ0i2p7X69Tuy9DnoDdMoGMHDzM=;
        b=Ym3gkjE95nX3NNlMYxhm4gEhk8XKypzMzCX6z8KpDgHRjdHjMbbXKj2G/vFD1xwIBl
         perdLjG1ZNLM+rcWrXFieM1N4AzDcTkCHaPBWvS5ZeaRF09LFxyC+kXJvwa69pBga/L9
         q3Ggz6vKnxr9U56okMLn7v/+Ej8LsFui+hpmDyBfqkRq/j/vp6Q4BdNXV29SrYRvoEr5
         gm3cDxeDpauF8KOJmUlKJFCVIIBZbfuDfpJaJjjeRjM8z2EjVKm9RYFrLOkmVO/NtBaz
         O1DOyHRrXgrHDz3dEWgf+3KBr4erntI/wtOHv2NordLxAodun3QvTuAmtd6U5oH1KLwt
         L5pQ==
X-Gm-Message-State: AJIora+1eVRwpfPE3hkgxpetiJe3gdbVPMulprXm8iDOjsosw9nBcZcp
	Cr5p1pPQyFdWWRyML1sIIeIocQ==
X-Google-Smtp-Source: AGRyM1snJzZ09XV9EaTXILi0szS/hA8la1MsQ0GDeBlqN6lUjYgRS7bgjt8lJJFveJUDdypMhYmsmQ==
X-Received: by 2002:a2e:a9a6:0:b0:25d:6062:91af with SMTP id x38-20020a2ea9a6000000b0025d606291afmr3925528ljq.144.1657790844982;
        Thu, 14 Jul 2022 02:27:24 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id z29-20020a195e5d000000b0047fac1feb6fsm259206lfi.210.2022.07.14.02.27.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 02:27:23 -0700 (PDT)
Message-ID: <ade6d39c-7b99-1396-33c6-f55410353bbb@linaro.org>
Date: Thu, 14 Jul 2022 11:27:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 23/30] dt-bindings: phy: qcom,qmp-usb3-dp: fix bogus
 clock-cells property
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
 <20220707134725.3512-24-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220707134725.3512-24-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_022728_922793_5D7F9A15 
X-CRM114-Status: UNSURE (   8.08  )
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
> The QMP PHY wrapper node is not a clock provider so drop the bogus
> '#clock-cells' property that was added when converting to DT schema.
> 
> Fixes: 59351049ad15 ("dt-bindings: phy: qcom,qmp-usb3-dp: Add dt bindings for USB3 DP PHY")
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  .../devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml        | 5 -----


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
