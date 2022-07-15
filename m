Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48065CCA47F
	for <linux-phy@archiver.kernel.org>; Fri, 15 Jul 2022 11:00:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KLa3DDSqclWSfOnB6Vg8+TzjFfj7Rt+1SnRtnyB0/QU=; b=4/oTCIun49AUgn
	O/eSK73m81wDAjad2A8BJmRG6BDpFGZriQeFm2H6xrcXOubhaQN5j2cKUHYubkBQhug5ttYLTcSK/
	w2pHteizMFrCGl8+Zri1RTp2Ve85SSrVFhZ67sSP9dKcaaR5G5JaPztcNRG8YFRWRbwpkEpu/coAl
	MZG/sXDs8ywevJaYsxlxVHyFDOXjX2pVVbXdUq3JNZvrnOLxRYbh3Qev1ALxszNy6QyNmWJgOf2+g
	hKWpXtyyIL/yLICRyuCa3rt7kU9gRU0ODLIPbUAtOYP1bTQRR2eWF5pbfN3HwyEf4WxgUAIlFeXYa
	e0aKI1kz3n0TPxjribMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCJ3G-006TCm-Ny; Fri, 15 Jul 2022 11:00:06 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCJ3E-006TAU-C6
	for linux-phy@lists.infradead.org; Fri, 15 Jul 2022 11:00:05 +0000
Received: by mail-lj1-x234.google.com with SMTP id o12so5315016ljc.3
        for <linux-phy@lists.infradead.org>; Fri, 15 Jul 2022 04:00:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=U5txt9x8smZ4IgvZ38RCN+7duAG7WAB4MIMi6JGkO7E=;
        b=Zxa8hnVdjM3b2P7SQfbBDFiyWJhbsVXr0oL+nJ3+VODTbw+EbOci/mjLObJo7GzRLd
         n8jfDHo7gFC8r9sod5rQu08aKXCl0O8mmQeLKEJNWYGARGCZOmrkaMaUiny8D7i2VhcQ
         /F3o4AoQB1iFHXazdTMDAJsgEpnRBFwdDxhCWXhy0urHoyi9WMEjmXoCBkItGkDCRgQ1
         8oBunZQvO0Ln/v1I1v0kx5o8J4U64imlkrCDIgzJDqEcsRgMl+si7Kkt5hz/ppVUEj6A
         JCphB1gdf3jNbtqNU5z+49ROdWu34YLjigyoeM9YHXz+HICZOFM/We/UxQlBu4eJL3ay
         GJMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=U5txt9x8smZ4IgvZ38RCN+7duAG7WAB4MIMi6JGkO7E=;
        b=T5G/ps+d3U1TDskrXWjWaKbw807l9UgXuAKtgl00PLR9lNmNBlgoxZXMvSASRVrYP4
         Zb7Nv3trJmqRwn1de07U409RPANeqgH4JT0UsiUMjF6ctXK/70TuBHLVI3OuGyuYo1+Q
         yZj7clolx+XQH2lnmiNGkggrPkhEUm+d1jW40p5sSuNQ1uSVrk+2oh4EsIkj0IVkg7Gb
         MKIghK5dkmHye1aFxDvc4vCuwdEfyvykvubfVP6NEY9zkfp+fCpAWXZqUw2a+CIoAapu
         kXeNtqfSo8aA5xs9Z6UV2/3HH//M8kTYjRelVDjUITx0mWCHkvZ1b/OrLi8aa/Vh5As8
         L38g==
X-Gm-Message-State: AJIora/11SMERgZ9EoEK2uSNYj0R+egEg5BoOMWkTysNlVcTMsBKdGdN
	tCeEl2v/ebB3hajTXROOIDaTnQ==
X-Google-Smtp-Source: AGRyM1v/7yZGnzFbovHNbDm2E9e1PbOnLXdS6g8Wg4xHL8k5cLWS6ABI6D4WdmUBNys4yKRH90m2ag==
X-Received: by 2002:a05:651c:4c9:b0:25d:8599:5637 with SMTP id e9-20020a05651c04c900b0025d85995637mr6796910lji.163.1657882800496;
        Fri, 15 Jul 2022 04:00:00 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id a12-20020a056512200c00b00489e38c4fc4sm847270lfb.276.2022.07.15.03.59.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jul 2022 04:00:00 -0700 (PDT)
Message-ID: <be956a4a-4a7a-e2cb-47c0-cc28eb7debe4@linaro.org>
Date: Fri, 15 Jul 2022 13:59:59 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v3 25/30] phy: qcom-qmp-pcie: drop pipe clock lane suffix
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20220714124333.27643-1-johan+linaro@kernel.org>
 <20220714124333.27643-26-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220714124333.27643-26-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220715_040004_445712_17409648 
X-CRM114-Status: GOOD (  12.72  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 14/07/2022 15:43, Johan Hovold wrote:
> The pipe clock is defined in the "lane" node so there's no need to keep
> adding a redundant lane-number suffix to the clock name.
> 
> Update driver to support the new binding where the pipe clock name has
> been deprecated by instead requesting the clock by index.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 4 +---
>   1 file changed, 1 insertion(+), 3 deletions(-)

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
