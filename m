Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B536C43217
	for <linux-phy@archiver.kernel.org>; Tue, 15 Nov 2022 13:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YAkgl5rzc+9c14UujNHRcD86GMPVX0hVDOztUXvh6CQ=; b=GIp4xF0QZLa+2w
	e5LlPVkSH4GBSKKSHKrFLr7i2DBXIjb/4f1gbmvOoX5ppOw+skXBZvDKx2fW6oOyMgUHmm4dTLrTw
	cMj8PdijI0fGlJU+LvGuwLFqkMaDLHP/L4dkqS41ojCmEwTq+hYV59fiFaWAis4NBbLlBhS0S5W+t
	4yXH5EyzMD0iZawOOtYJ/4Fpry1wDr+i6tGV4r3Kv3WSZ7ZQwTNraNhTItV7eKqO7e6+Zddh/5V1M
	yOWJ2w8yGnldOgb9JLU8ZARirmRaQck3tOq0hDyY2pKKn6CU/s63myrV6w0wZwOkynHx5zsxDhrGJ
	1/9RXBRM9WGnI9QKgbvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouw9T-00BVKY-Oj; Tue, 15 Nov 2022 13:38:59 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouw9R-00BVJ6-LN
	for linux-phy@lists.infradead.org; Tue, 15 Nov 2022 13:38:58 +0000
Received: by mail-lj1-x230.google.com with SMTP id z24so17545317ljn.4
        for <linux-phy@lists.infradead.org>; Tue, 15 Nov 2022 05:38:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2CpA277xmc3TicpaEpZnhMOiKh9Ta2fws73LbvJb9po=;
        b=HYtTbhykeOpyfp1CWHIRuXtxh9TDpTyRPig7PwTLVYkGWVURu/9aMJC4r/fjrECHM2
         yl/wI62Aic7i2zXu0RCZHFht5vl6ouHHSvPlBaqWa2ZOaFZeQN9Ov8sKK0IiVaWBAmOj
         qQlPAPBTvciwHFGt1SgQfWjil7+hGqSc/RPUCL4ODfITASsYfN65DX/yThlIU9NsJJoW
         AZqL6DDxc6FYD8cGUqI2gnV2AOAC7yEt/RMb6BsDH+5ZDXl7Q3Kfj14YHSk78jfeg7uY
         arGz7RYIUp9SXd2+xBZbtHHsYanAMotE1vF/fSbxRDzla4ahhgqeR+A/pQZEKcEz0PVv
         8LQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2CpA277xmc3TicpaEpZnhMOiKh9Ta2fws73LbvJb9po=;
        b=Epr2aWY/gQ42bykfixvntuFT9sd3Gu9jj8FI4OiriEgDFNx4eqmwAAo4DCkPrIs5ew
         DWa54kApnqTq6XDbKcglIdBunmrHdwPXxIY5sFOVLvzwkh/W/JUIEzWU5j8jbD0P76IH
         iuHEwM0VmDHo6DqppkElQTykUdIK91iAhg+fcfsNR7UxC5lj32fLFlfacuqjHvknB8Gw
         8+6X8MU2F90+MYMv151calJcjvE4gI2o4UGj9nYh/8Yevenv84bR0Ta2hEiyZjNVtRue
         bTy4nX2zeZSYmvDmC2i4cpfpvFY03a2Vu4ENvDJrODZ6//bcso89RiyrPyI0J2RvT2Zq
         f4ig==
X-Gm-Message-State: ANoB5pmkTk3LtJiVMJYQk9zks1R5INseA4f7kFLs8fUMYLE6oEuOLJGr
	05LMqVsXW3vSNed/Ez+sc/6dUnPHdAezVT+U
X-Google-Smtp-Source: AA0mqf4MKBH635VXC2jV4FG0ROe4MyyQ6PGcweo05qjZ5o8A1G8micaVYdR5ZVNm7fgnNjWFt8Ot7Q==
X-Received: by 2002:a05:651c:32f:b0:277:1e9b:2b07 with SMTP id b15-20020a05651c032f00b002771e9b2b07mr6345597ljp.242.1668519535130;
        Tue, 15 Nov 2022 05:38:55 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id k11-20020a05651210cb00b004a1e592837esm2215324lfg.140.2022.11.15.05.38.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Nov 2022 05:38:54 -0800 (PST)
Message-ID: <77c27fa4-5c3d-7e5e-058d-24ea6fc449a2@linaro.org>
Date: Tue, 15 Nov 2022 14:38:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-usb3-uni: drop
 reference-clock source
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221111093857.11360-1-johan+linaro@kernel.org>
 <20221111093857.11360-2-johan+linaro@kernel.org>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221111093857.11360-2-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221115_053857_730937_2C65972D 
X-CRM114-Status: UNSURE (   9.16  )
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

On 11/11/2022 10:38, Johan Hovold wrote:
> The source clock for the reference clock is not used by the PHY directly
> and should not be included in the devicetree binding.
> 
> Fixes: e8e58e29a0c9 ("dt-bindings: phy: qcom,qmp-usb: fix sc8280xp binding")
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
