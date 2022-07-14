Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5948C43334
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 09:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r/H6XZpvRyaUz/sOI0xWyxj0BTWgqlKwt9BIr7aTEwc=; b=h6E6Ko+aPV2i5i
	Q069Zb4+8o2ofjOpxgBQNOwEMKC9ivJMRhDRrsZeqvvEh8olLQ9/1R9fhqCxjsKHL6Ka/SNdy9l6q
	79lZmY1WW0n2xAg/2pr3mrpAGQxz8b7w1laCPB2niNTf3T57Vz0/e2Zw99e5fxwCAkJXzpTyhYBxD
	uKPFe1cuHJCtT4kEVX/O7FlaLWLAuHzBQo4K+hxn3AaEyI6JnHsclnlonvfAzL3EV0Cnlhbm0+upU
	Y04ykbgHGdTJtKVjFQJsSlXAUYnachpXcssIdmYPFKNLGAFIb7H4spMwRcyNLSUjCS1ajS4qxieM0
	gKeopIo3aTfOX74RbkJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBv2m-00Cm7g-4b; Thu, 14 Jul 2022 09:22:00 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBv2j-00Cm5i-4l
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 09:21:58 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 19so1457472ljz.4
        for <linux-phy@lists.infradead.org>; Thu, 14 Jul 2022 02:21:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=TZbkzMvSZU0C1M4JV0xVgJvuTUUAz1VVtLQNRxdms4A=;
        b=OfCJFx8krvR7N0u27F7RS9zlcFbCK/hXAnuevdwTLHvWPi8HuVSp7IaQCbqwR9Trrr
         IqKylmeaSyDjnWs/Rh5TkzmJHmBdLFOrsiQtuRKt0UW6IAYozzqUN7o+BLejP2q6PX+q
         yHC7e+hyZDm5y+SAKFLGCDBIRoyyDzL6+qWFQWuKfTXIHZZZ4iy10F1PETNHnzSDZoC9
         yvU2URcqyXhsp7zFxirH5DUlIxTypVCZ+NJrHzZ0XG++fjLrPOxC3dpjoztgL/M/9CCD
         Jm8GKbnVts1b0oOUwt44FZZnE/Vn2GdbB8LXeY++o+sANBURr9IqyzWjlOL2SU6JSWiQ
         KQcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=TZbkzMvSZU0C1M4JV0xVgJvuTUUAz1VVtLQNRxdms4A=;
        b=MWI9W4P1HgV64ZMGmFPZTNKfn/7wv8jahrzCB04wijVGkAm5W5snaIrqzrTU2KNJGQ
         8mD66PoSzzPHZc3L3p7dF184ZgaMRzGwJglPW1nqa+CoqBJayshu4jywkVRqiOj3FkAe
         gnvqkvfI1EFh/K2Tn+eWMhWbomYx/zLF48/Dq0dtMauLDDCn6uP2mmQtdfDugwyKivau
         MhSprMMXLodyzOCI0LOX/vy2f+eKIPr0Fw5bcjykE9k9qgFtyxyCVWsebzWMGPCsLoV9
         QJtMB71ju4+FMj1YMJUnP1OP3wSgNLpNPVc0ZD2s4tTpTLJ42GkiSOnwdCJv+xpwqXhx
         MHkQ==
X-Gm-Message-State: AJIora+CZNLv1Y4Qe4cmuXQEHs/GC9exzoNgj+4xZgKmI8iudcNGV/nI
	bGrCoDGPbTyL+X/JXzQA7p4fMw==
X-Google-Smtp-Source: AGRyM1uFuAVXyDIgiKh2eo18Tm1/3ynhtp7A6qKUZLGz3dA+UsobViAS6AaRrk5a//97+Zw8k7AZKA==
X-Received: by 2002:a05:651c:243:b0:25d:5b44:197d with SMTP id x3-20020a05651c024300b0025d5b44197dmr4290099ljn.516.1657790515585;
        Thu, 14 Jul 2022 02:21:55 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id r6-20020a2e8e26000000b0025d67053f0dsm179911ljk.135.2022.07.14.02.21.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 02:21:54 -0700 (PDT)
Message-ID: <e8046961-9555-07b7-721c-eeb278cb2ec7@linaro.org>
Date: Thu, 14 Jul 2022 11:21:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 16/30] dt-bindings: phy: qcom,qmp-ufs: add missing
 SM8450 clock
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
 <20220707134725.3512-17-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220707134725.3512-17-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_022157_222919_698C532F 
X-CRM114-Status: UNSURE (   7.40  )
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
> Add the missing "qref" clock used by the SM8450 UFS QMP PHY to the
> binding.
> 
> Fixes: e04121ba1b08 ("dt-bindings: phy: qcom,qmp: Add SM8450 UFS phy compatible")
> Fixes: 07fa917a335e ("arm64: dts: qcom: sm8450: add ufs nodes")

The second fixes seems not appropriate here, because you are not fixing
a DTS. A fix for DTS would be a fix for that one.


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
