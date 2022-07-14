Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DA78C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 09:09:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/pYFKHOBxUlRkxyGKgpmeD6AExt0Umwrn6GRZRrAzRY=; b=1sJHghcucZa/Bm
	mk7+Wl06ucnZZ/qduELW086QsG9hSPU16Cn66HJYmkZDZuLfmVBPd/CllVNJ7XxW7VwQWUZo6tpd0
	jetFkHR6HIUp0U3HGgAIzuBtp+IOj/cWbMPnc8XDtF3bLjdG0R4RRxQAmqeVIrCm9efdSFqYHgL4/
	cxgujdo5tbAL3qVAeNJg+3LYcYGswcETyT3e0+SAHxiUzxun8RHABmFxZ0YrIDQgPyrfEGoC95Bxl
	0Dkqhwnwhvu5HcQavc/PAIM9FAvf75z0fd+iqwakbBlO7QWNbdCxeThZqcMXEunOQRVBkR9BfKX80
	2F0YuuCe1kqKEvblVqVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBuqh-00CelP-0E; Thu, 14 Jul 2022 09:09:31 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBuqe-00CejA-Iw
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 09:09:29 +0000
Received: by mail-lf1-x136.google.com with SMTP id t25so1752761lfg.7
        for <linux-phy@lists.infradead.org>; Thu, 14 Jul 2022 02:09:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=WjFu8FA+ZvYFQ0mgdR9rWCbv3lmDuucCfUc6RkI5UJs=;
        b=qBNocUs02EVbJuP8Ba8s5HIVQNyruoTkkviJ5knKOYgGVytay7miBfDOfakCsDfCAq
         75khIHwQ1btc/LYw5xHvkKqcOoFrUcQL7dU18abHutvURoh4jkg+IB3v8zHvSOVFsW/x
         LBz++bCj8Ywd8csfwxDLgleDpPxj3uu7BKo+vBFW/wQsR4ptlEVmW5rLppMHT6SiOTAw
         E83VfjikXFNGxgHTV0PjA98CWDYtReEajCVJVnQKawjFNU+/gMiEO94bQfzCiGHi9EXT
         PtAxTl7GxCuRjDQQX1QKEHnREOikhShQxB5Mgmsd1tl8HYhrWnH+SGUs0ylSzZR2scqx
         eTHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=WjFu8FA+ZvYFQ0mgdR9rWCbv3lmDuucCfUc6RkI5UJs=;
        b=itY4sKgVzxG9V6vVOMojQgaHyZBEwFkkbsMCIGsKocS2gWS0p4wOsxoeNrXdOymvzn
         NB6rqjip2T6KsWpzR5IIvwBHKa4FVkjy52IX/etBUWb5VmhlR38WsB+2PUhMjemFXNQS
         HmS74no1y4hIHPugSOS9yuO0okHGjNU6XNvRD7z608Uyr/tXn/w1xAhNE2c2BQp5ilIY
         o4Igx+XMwXpQCBAEBmhWckRE+ubNZICjTnmSSN45aEDuuuKXFAzF7P7K7xHX7reV6yD3
         VfUi/P9souV2VVSrveapDPTle+M0y3sVwRdh2gDEDGNndkcz6k5oJJUuEnmbTVc4HVcD
         AbXw==
X-Gm-Message-State: AJIora8DmpBOqngNnqJIjY/Wx7H+be7wL/+WwQOkPuoeksXecxC8NzDi
	ig3w2AZTuJXQ8RiLwk8S46ri3A==
X-Google-Smtp-Source: AGRyM1sr9QbMsD/PF6xIHUn8ZPFH4qsXTIMJn7Um6tZIIiNZroL3GezNb416WIrC8BhAjfhfcr6dpw==
X-Received: by 2002:a19:8c12:0:b0:489:c75b:3bfc with SMTP id o18-20020a198c12000000b00489c75b3bfcmr4623003lfd.222.1657789766876;
        Thu, 14 Jul 2022 02:09:26 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id x19-20020a056512079300b004794a78bfe7sm254619lfr.6.2022.07.14.02.09.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 02:09:26 -0700 (PDT)
Message-ID: <a9001806-b189-02bf-6fb8-ccea145a2027@linaro.org>
Date: Thu, 14 Jul 2022 11:09:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 08/30] dt-bindings: phy: add qcom,msm8996-qmp-pcie-phy
 schema
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
 <20220707134725.3512-9-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220707134725.3512-9-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_020928_683905_C7F91550 
X-CRM114-Status: GOOD (  10.02  )
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
> The QMP PHY DT schema is getting unwieldy. Break out the odd-bird
> msm8996-qmp-pcie-phy which is the only QMP PHY that uses separate
> "per-lane" nodes.
> 
> Add an example node based on a cleaned up version of msm8996.dtsi.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  .../phy/qcom,msm8996-qmp-pcie-phy.yaml        | 146 ++++++++++++++++++
>  .../devicetree/bindings/phy/qcom,qmp-phy.yaml |  26 ----
>  2 files changed, 146 insertions(+), 26 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
