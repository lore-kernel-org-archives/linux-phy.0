Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36DF8C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 09:07:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WTIHSxU7ROEefTvl1HLcNDTfFm2SQhuT9cJpnNaZgJY=; b=cVZR10dc10YUCu
	HKXCyw2RL97yQmhpNweYv0sPblC93edIAWi3yeTJwkrXy8R6VbJL1bD0GHyZ3+Fw6BEaIP7WPLWSJ
	oZLPXsQCk57+6oaWARsjqj0lxskcy8nBlGifCEUMMho3MOoYvkmFPLNm75Ds3HS05FfZhUNVlyFih
	C+J5gCIpnfFSj7l5JtJCGEAoLC1w+4MZNl0iu4pCMEqZab/z5Ho3PAIFWEllGW2hdOfuXL/F/QlTK
	Wu0dXhdJa7CjsxsYEAE4C55K6HhOFSp2/IvOzPIXFUSfXcTNEpIcTYME9Kfaf9+dpQLj/YuuIze7V
	82Tjy8o7mj+Ew0fWiCLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBuow-00CdaD-KC; Thu, 14 Jul 2022 09:07:42 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBuou-00CdXg-A0
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 09:07:41 +0000
Received: by mail-lf1-x135.google.com with SMTP id e28so1764260lfj.4
        for <linux-phy@lists.infradead.org>; Thu, 14 Jul 2022 02:07:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=O1fNejxW8S6H3wv5VBDx0d1TMHYJMe9L7no5jLI+Oyg=;
        b=FIWHDEbpdoMv9foYW/B/ZPtig8wu4pEhkSnJzoI/DZjVzJm5Uk9JRPlHQyfSJ2FnJA
         jninjZNbhOXQGhuMabXHpPHWKh5WR9VGTUzQsCXD217MLSYM8KOp7AzJrWAtjPvMBaJv
         avXKmhbuigxPKdiIk4Tb1PpAOm6WUX6kh9qL7QgTiyWMGcD99QWRxcagakI6e2hcMPqg
         YAb0ne9PlQ6egBsDjGsQtTWy+c8CNQR4Sa07dV4VxFBcEMu53wKzCNKLK3xJOzVqX2uc
         s+aFlE5Ek/avWAy47EsyUg114ufEFE9i0BADRMpZ1jvB0iu69NxoNNIPnrYytfdW4yRz
         7WDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=O1fNejxW8S6H3wv5VBDx0d1TMHYJMe9L7no5jLI+Oyg=;
        b=ZPMNqqQo1vzcDQja0Hgmt3DPqy/K8z2g+nqYXJwG7f9V2NrSbHkEvbmuKzUFkK+d3l
         LZbsTI1JJDuxfUaTJ+gxdYGnTLOBkFtDZ0wqBMEvB54Mqmr0mcF5y4OhZQjO0QRgRMcb
         dwMRGobdy1pmokKkBJH4Pv7x0PTT1qnvjQeOOVXXig04zIqcXwzcHoVBcsmXI3FEzlHu
         7Y5AAn3V7J6bryZ7UqBQcgsTAMAO7TC8j+qES04KijMmhY/oGs/nS2Cg5Q4ZKF1M3u9D
         Z/YvefuQHx6pX4AN9hO2UCeADFvL4Y1gsnuQw8q1ULjzTxJUMk/mqbHc6ulrJQ+9a5/J
         URDw==
X-Gm-Message-State: AJIora95oqsuBWJDsu7Mp5WhI6EYspxzLkxDtQ9HO7brldvF+nrLzUId
	YPBDgN33vR/itpx0gR2LZbgCSw==
X-Google-Smtp-Source: AGRyM1vtx0KI4Lf85fLv2hVsyciC0HjRj8ejjNeCKGSnn+E/6D2Cog8AfiXPRY1s3r32AKC7+faa2g==
X-Received: by 2002:a05:6512:3b29:b0:489:f0ad:1d18 with SMTP id f41-20020a0565123b2900b00489f0ad1d18mr4710485lfv.3.1657789658590;
        Thu, 14 Jul 2022 02:07:38 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id a27-20020a2eb55b000000b0025d5b505df1sm173151ljn.136.2022.07.14.02.07.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 02:07:37 -0700 (PDT)
Message-ID: <b1d14a58-5f7e-f013-4f80-c63d3f1951f2@linaro.org>
Date: Thu, 14 Jul 2022 11:07:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 04/30] dt-bindings: phy: qcom,qmp: fix child node
 description
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
 <20220707134725.3512-5-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220707134725.3512-5-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_020740_397777_D4F5BFAC 
X-CRM114-Status: UNSURE (   7.45  )
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

On 07/07/2022 15:46, Johan Hovold wrote:
> Fix the incorrect description of the child nodes which claimed that one
> node is required per lane rather than per PHY.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 4 +---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
