Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DA92C00140
	for <linux-phy@archiver.kernel.org>; Tue,  2 Aug 2022 08:35:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=To2i+s9Fj69wBynuiFOVo+lnyQDI+RtwNaDF6/WQULY=; b=y9Ta39e476VG4E
	8n4bzpW7W6HwE2fMxAQsyrLW9V1/BCOm+rYIDY0D8vHC5Jcf3FQpVDgFUxy00mGnN9TgKIDLcw300
	KbEc3GA/A8vU1pffeGpLLHJ4KW58U2c6wbISpLV9zyzieUQ8duz012qP/MBp62dqm8Nx1uCf+BlZ8
	dmrT7iPE+t0oFG741PB1K7eBLIrqRGE1THZZAkFYtpvCXdRlY63AFkVMRmJFUsPNslESAn0LLOdc8
	/aNG8w9Gi2uk5xkedbLHM2C5BeZXJlx7lynz3Xnctk15NMBjbBp55f+f0huaM4pfYQ5BysqoqvBXb
	VSOUHf6PMabYsrhpFAsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oInMs-00Bsog-30; Tue, 02 Aug 2022 08:35:10 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oInMn-00Bsds-To
	for linux-phy@lists.infradead.org; Tue, 02 Aug 2022 08:35:07 +0000
Received: by mail-lf1-x12c.google.com with SMTP id z25so20964172lfr.2
        for <linux-phy@lists.infradead.org>; Tue, 02 Aug 2022 01:34:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=yIcStRv9ulCANbO8uCjB32zEZVUYQGls0B2oaU68FpI=;
        b=LharOYx++PG4xJGBwWCor32BdSD67j3bVEZQEArCBXQoeJoV6YvwqmCioZh9pe65UT
         WUELomWtAgV5nsOfYFeAVChzVoS4pwNhlK+BHeq+1XlAESPIdkqL+7N1g/jpsTegC91Y
         Cwh6sgZgJmaKkcQ0peQJ8das8vL27ZFIl+/ulrv3bVtErSt65oe4wEJd8kA08CuVMryZ
         /y5kSKTVHae4BYfxUVjc7j8F+2eZmmROPRjJAMnkGABmClvfaoJQpeYrDUd31lw+MzQX
         3dzp136+DrRYTU79ThBYQ/ObFHYtH6sEwpmM2kpeXpWZx7JVeo53oEiRQ4DOUjAZYeqI
         Rdvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=yIcStRv9ulCANbO8uCjB32zEZVUYQGls0B2oaU68FpI=;
        b=aaLNhwsR26xJBfajwREdVkpxGSqBbePcF5OxUzJio0nneCKYFsk2vVeF41xcxZpEUp
         edn62LZTDfkwU+7k6ys0k4gwMA9ijLczdBc49IlQx8ZyzyRuEc+cEaV0Tb8oRsXuDPuR
         LfnKFKaWupzc7fvmifiqSREZSQfxDM8F5sqWCyRaI4KYalxVYmFA30yWwFBmL1aFBF4D
         fqWhsUIO+8EEuzUTDUePP2UxAsju8Q0ueoBI+be48AbTUkO5jtFQ2iEfqT1DWSpH0DoJ
         FhhrE8+Cy5/dH4z9GNwWXEglv4sAr6tcfiLY7RgyVyYEkSR18GcDwzMheZs4TyKxkTXy
         7eiQ==
X-Gm-Message-State: AJIora+3q9Qw91H0S0SvguuQWst42+9iLuhRHQvtJOKTV8wPlnVaWb50
	WN+JLeNGLYEztv6ZO7r+9mUyvw==
X-Google-Smtp-Source: AGRyM1uM4iPgGWr4Sodi73rqrFxGOSqxoKWlfh6r9yGr3qAoEULG7J9r4F+g8OXcWMDf4fRVtWXi8w==
X-Received: by 2002:a05:6512:374a:b0:48a:8c6c:20d with SMTP id a10-20020a056512374a00b0048a8c6c020dmr7040027lfs.234.1659429291642;
        Tue, 02 Aug 2022 01:34:51 -0700 (PDT)
Received: from [192.168.1.6] ([213.161.169.44])
        by smtp.gmail.com with ESMTPSA id g23-20020a19ee17000000b00489e88d6a72sm1561169lfb.198.2022.08.02.01.34.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Aug 2022 01:34:50 -0700 (PDT)
Message-ID: <6b4474f6-2fa6-0a86-6bd7-45d540701417@linaro.org>
Date: Tue, 2 Aug 2022 10:34:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v2 3/3] dt-bindings: phy: qcom,usb-hs-phy: add definition
 for MSM8960
Content-Language: en-US
To: Shinjo Park <peremen@gmail.com>
Cc: David Heidelberg <david@ixit.cz>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <84923720-30a6-1a49-48f6-96e078a46743@linaro.org>
 <20220730081536.14511-1-peremen@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220730081536.14511-1-peremen@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220802_013506_266579_9A268A49 
X-CRM114-Status: UNSURE (   7.93  )
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

On 30/07/2022 10:15, Shinjo Park wrote:
> Document the changes introduced by MSM8960 inclusion.
> 
> Signed-off-by: Shinjo Park <peremen@gmail.com>
> Reviewed-by: David Heidelberg <david@ixit.cz>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
