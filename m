Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC094C77B73
	for <linux-phy@archiver.kernel.org>; Mon,  1 May 2023 06:42:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=165n8U1mTbp3dFd42bSaXK9L1OvDt82QUiulpz5g89E=; b=VYxeg0ZG3MV6+q
	cLScUSkeyZ1iFMK+0o0mlEpEE3cP7TJV/jAs9DUZSHL4YloEdkXIw0KBlgo5G5nbrEtYpAbVVLW+q
	jBTN91AeG77Ts9AK1s96xyMrK93zcBW22m8oGkBgXg81iTQPyCmvE7HCw5T2w1xTYUq3ImGWLai8r
	M2ewyzn7BzW/ggTchxsQc5l9eRiS9EFwE+unYz7cq6biADA4eipjpjvqIPMX/pvMDxcy1HeAWl3fp
	r1ny0ad8M+RlE9TdO1ipkfqWVaKIJ4lFvqFlw9yYc4DL9zwe0b6ibyT2K+tN8dGafP67hamOwB6Qs
	ltSqUO3Oqp0y78CxI6Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptNEi-00FLeS-1Z;
	Mon, 01 May 2023 06:42:12 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptNEf-00FLdM-0p
	for linux-phy@lists.infradead.org;
	Mon, 01 May 2023 06:42:10 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-94f7a7a3351so439118766b.2
        for <linux-phy@lists.infradead.org>; Sun, 30 Apr 2023 23:42:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682923327; x=1685515327;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+Ug3ALriauxRZK5BuCGHz3hy7oRHCk3NYUeB/1prBrY=;
        b=yt4JG8tWk8wAOJfdh9RJqmqYq+roQX5gM6HshQPz6CUcPGCj2zgsoNeviCmkeSK1tu
         jLH0eWFDXwvPLCM1TByk4uSY7nKHkCqrzb94JchNYgFfM2hVp0DLuwFXaSuzH4p5ViM8
         SC2eMqgoSPA2hPTDMaOsbRIHPxKsiQmMk1gGwAiLhu7xNqd2SZEiLNZIQcoe4ItIz5pF
         VMlWNVe6ecfuN7CYfc/8rYbNZ2TPBAt0gV1dDSwiVRCSJCskh6fRup0ZtwYnKmKgoyDT
         /e2TtOW+gMlHD2EKruh6ByuUhwuzGXvdm2nqF367cylbXkVOH9TW8++pjimXZTr5WjtX
         /DzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682923327; x=1685515327;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+Ug3ALriauxRZK5BuCGHz3hy7oRHCk3NYUeB/1prBrY=;
        b=Eoxbwzy/6iYbj1+pkb/N+PsjHxNhwpbmZvhT5F8FVpk8NNMzhOjMD63lTPq3spSqfZ
         azloAd23t/64ICwJvvEWcXW1HWeHdOE1B6H/cZ1LFwHRFxkBHvVVSDiByPP7+q8ulDOh
         RbtP0gxI613uPDeK1lYu2cp71g9apqi0baYspXkPwq5TSNvvyDR0f4t2r+wvteotZMOC
         5rUqNhBhK0NM4zjq2ZCORnrNRByWQs+JA1Y7XMEBvogPu456unV7rp9jiMnYsUesJXiI
         +QrDLNoMY4m2PIi4sGuemXL8fIATVP/fLobUULiV6qgvhik5MnQTeFy+IXibqQyEW1/S
         +5UQ==
X-Gm-Message-State: AC+VfDwmrl/oGPw8elMLAH//qpeQHnyu08xulFXNqGU8zGTTFW0874/T
	9nm4BtXFciigpP7rsw6LTlUPkg==
X-Google-Smtp-Source: ACHHUZ4oeAdjiUq5MyBqbc28cNuh/LNOYUFqAHRwLNOTfAIWvWHzI5qhT7JQdltUKNsMvkYD7E9eGA==
X-Received: by 2002:a17:907:7245:b0:88f:a236:69e6 with SMTP id ds5-20020a170907724500b0088fa23669e6mr10854766ejc.7.1682923326687;
        Sun, 30 Apr 2023 23:42:06 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:637a:fd0c:58fd:9f00? ([2a02:810d:15c0:828:637a:fd0c:58fd:9f00])
        by smtp.gmail.com with ESMTPSA id pv22-20020a170907209600b0094f0025983fsm14605371ejb.84.2023.04.30.23.42.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 30 Apr 2023 23:42:06 -0700 (PDT)
Message-ID: <e9a00e55-e2f5-1f02-56c7-8e12b551867b@linaro.org>
Date: Mon, 1 May 2023 08:42:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH v2 1/6] dt-bindings: usb: qcom,dwc3: Add bindings for
 SA8775P
Content-Language: en-US
To: Shazad Hussain <quic_shazhuss@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc: dmitry.baryshkov@linaro.org, athierry@redhat.com, robh@kernel.org,
 konrad.dybcio@linaro.org, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Wesley Cheng <quic_wcheng@quicinc.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
References: <20230428130824.23803-1-quic_shazhuss@quicinc.com>
 <20230428130824.23803-2-quic_shazhuss@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230428130824.23803-2-quic_shazhuss@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230430_234209_291332_2F547CBB 
X-CRM114-Status: UNSURE (   6.43  )
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

On 28/04/2023 15:08, Shazad Hussain wrote:
> Add the compatible string for SA8775P SoC from Qualcomm.
> 
> Signed-off-by: Shazad Hussain <quic_shazhuss@quicinc.com>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
