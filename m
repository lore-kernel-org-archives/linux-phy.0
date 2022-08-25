Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE2DEC04AA5
	for <linux-phy@archiver.kernel.org>; Thu, 25 Aug 2022 08:22:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PGu+wGdkIX61tFMVcWo6qEAPPq/z7wiw0WA5Mrbee+E=; b=QlKNLpZ3+R49xt
	P3WMjQXbwde2efnGGedIWm3pdHKoWfwaiV61oTKRkvC2QXQ+xy9Tws3IoUZn7noNAVHtVS89qj56G
	03ivpZrFH6FETxtW8/T4iLqrtL89IpFG3kVRz7ULvXiWGrNUnopyavbRFpcq9tBfwIxb3h4geVEiz
	iJ2lTSBtBiT7x05duU66Z1DN3iHX678ur3CfpYtv80/UOIjZyC6F/Ojf2vOEYKtmbZRVeFQn2gKpM
	24fgjRptz1HyCfzyDE+BhTT6CN5tMbK9MBJOT2ZAULke5KZ2AeI5FN8xn70TRuDmerXGo/OtV5y8w
	rVFAArLzOKfXqv/9iZog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oR87m-009ztP-0K; Thu, 25 Aug 2022 08:22:02 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oR87j-009zpo-0c
	for linux-phy@lists.infradead.org; Thu, 25 Aug 2022 08:22:00 +0000
Received: by mail-lj1-x22e.google.com with SMTP id bn9so11141991ljb.6
        for <linux-phy@lists.infradead.org>; Thu, 25 Aug 2022 01:21:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=5ngialnJweWTxFhnpS3C9ddQCugujDSZYGR0J8FTnHk=;
        b=rvGQEUqW0aqnj4g1kHRRzHHqlMVtjORIUuoL99n5tztXvYQ1FqengLIcpF/CE4LkYd
         /A5dX+AuvNVj8NyUiyA2ObQuqaIAMikguTsvB8dSlUfAgfn8Qazy6/bZhVRzYztl0mjk
         1nKb9AL+hyG+fw23Mvb7zVRRIPqXyLfzRe7zMmBA84NtTJPPyxxUtB+rln+3F9Wl3STt
         5mgv0hUK58wVfIIOQ/A+aVWceH58Egv8idp/ywj1Vd6nErZhjHleuGjunZr9IxMauUVU
         5P5nJj1ul2KKrW33/ZNCihGHkEqz/L8qRjj4knDNA9l+4TYNeqMFWvV+Wg9103Mqrmg3
         Ez8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=5ngialnJweWTxFhnpS3C9ddQCugujDSZYGR0J8FTnHk=;
        b=FZOsA1E7b/ACbTKUqIf3cezpxzgooAhR0nLiiLkE+/iv0oaHgXIpOUN5FVvBc0C7p2
         5yfzv/uDF8EEa9hQchWyd5kTNfCBDEn8b3Q1LHuEEZo0abmBTJPn/ZN578LUCmm7TZxM
         5vHYiVxsliiMoqPpH3ZiceAJ58hzYMQJHMB5FRr+lST38TErYhptJT8llc4fegturP3O
         B1cpIrP3FWBy8QErAjOJbgcAX7Q0Q84X7Ip0jdjA0m2UFX1r9nVmDpaO173qAjCtEE7m
         2f3r02L22LrKh8JVjatXtTYVI5aaW/8AIKEaafc+WTfNYnPAB4SoooPlfXYBK9EKk4IM
         G4Cw==
X-Gm-Message-State: ACgBeo2quSRGrwcWQC5fEa3bMAvri2LPCmVOejkIL+p1W81cAKDfteY+
	4l/5LWN5BRFFMN1/myC38x0DIw==
X-Google-Smtp-Source: AA6agR7uT7Su4lHGAOiQyY9ljhllP8dx9Y2jhf2/BSPJmxMpA6d0kWUyMQOHjKrcw3F7GMJy7Oyt4g==
X-Received: by 2002:a05:651c:a04:b0:25e:753b:db42 with SMTP id k4-20020a05651c0a0400b0025e753bdb42mr737611ljq.529.1661415712008;
        Thu, 25 Aug 2022 01:21:52 -0700 (PDT)
Received: from [192.168.0.71] (82.131.98.15.cable.starman.ee. [82.131.98.15])
        by smtp.gmail.com with ESMTPSA id o18-20020a05651205d200b0048afe02c925sm363108lfo.219.2022.08.25.01.21.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Aug 2022 01:21:51 -0700 (PDT)
Message-ID: <022a60e0-17a4-cf13-d8d6-af342468acab@linaro.org>
Date: Thu, 25 Aug 2022 11:21:49 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH] dt-bindings: phy: Add missing
 (unevaluated|additional)Properties on child nodes
Content-Language: en-US
To: Rob Herring <robh@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Konrad Dybcio <konrad.dybcio@somainline.org>,
 Amelie Delaunay <amelie.delaunay@foss.st.com>,
 Wesley Cheng <quic_wcheng@quicinc.com>
Cc: Ray Jui <ray.jui@broadcom.com>, Scott Branden
 <scott.branden@broadcom.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-msm@vger.kernel.org
References: <20220823145649.3118479-14-robh@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220823145649.3118479-14-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220825_012159_083506_DFB610A6 
X-CRM114-Status: UNSURE (   6.29  )
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

On 23/08/2022 17:56, Rob Herring wrote:
> In order to ensure only documented properties are present, node schemas
> must have unevaluatedProperties or additionalProperties set to false
> (typically).


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
