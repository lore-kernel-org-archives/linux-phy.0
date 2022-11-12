Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8223C43219
	for <linux-phy@archiver.kernel.org>; Sat, 12 Nov 2022 11:31:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PZe9XKFZ87y8K817dd9oyXOM2hwcC9nVPA8YmediLOM=; b=reGPfrSrfChv1I
	Pmn6zw70uaoINlcOXKcRbQLr7bd7pZTStbytAZ6bt4dQaphPiB95xGyR8xHX47pl4c8A7WDTo9Upq
	oInrBZHJLuBA+uA9Uzn8kZ9cBfc1RMrAf2iH4uyY4BP2qLaLqEpNLU6uxgUojzVpg0ynku0gdx5YN
	mcJqpVceNcOk5nQ/rt4V+EKcDnh8yXJVAShgc1SWjZ1KWf61s5fq9C4hrBr0RnSnw0YKcWzXq0PjD
	ObDxTpW9PxaK5txPx9kAI0L5m5kiZMUC2y66sppRJCoRPPRQWDCoi2fgztNMRXmuluoLR6cjNRU2v
	pM/eGVyU2QsRbAFuX14w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otojl-005J83-TG; Sat, 12 Nov 2022 11:31:49 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otojj-005J7Q-5w
	for linux-phy@lists.infradead.org; Sat, 12 Nov 2022 11:31:48 +0000
Received: by mail-lj1-x229.google.com with SMTP id a15so7231765ljb.7
        for <linux-phy@lists.infradead.org>; Sat, 12 Nov 2022 03:31:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oCLzuadKXvrJKS83lIJy33fhLG63Dt8VFdnWa0UQSXQ=;
        b=FlbznqBGa9Cg7J104SWKs2A3VPhLSlgMhktLUVEol+sfegrPEZzBfLalWVuGaG8xke
         kKFt21gq8tZd0BCA0zlRUFbeG8JRK8BL15STtxJsNp/nHeHXACCthme2tf1isPOZ++Xf
         dA3OVX8Wt4XuLdg/feMw8b2Md5tbY+pLuLha1Yo/fUJ+/tSQurLDJgymAJnnbStlL8Vr
         rcQ23uG8WkbjZuXhxBj55qLJdK5KSFkwP2kyGcvSpeIvUFug8Gs6tK+patvkJ+2XNEuv
         xEOt+beI2aInyovSKS69yj0UvsRz+2qGvnn2r8OATocfadlnej64XDO2FBp+Yhq7sVRq
         AuVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oCLzuadKXvrJKS83lIJy33fhLG63Dt8VFdnWa0UQSXQ=;
        b=E0ClviRUHY+ZPSdECCIJ0MWHplyGfsEsUiSpcpz3PhNGDQ02lE59cm823u42uJyu/4
         xHaJXXHghTo9M3InXV1zqUm+3SrOmt1PGCMdz7/CFUB1zYIaKTKTmkTPZvE2wgpwnOat
         k/dDJOA/XqGe/A0PMA605vql3TYOZ+LP0bsMfrkhkqwbrYkzPNbaQqG6Rct9WF41XKOC
         O+AXckAN/XfjHpiOxvYQ8Mnaj4cIPMjo9z0X2/IbWJZyKHk2MIw3vRRwESnV8nfPfcVy
         1QdYvCahuoQp90372rp2qD2Rm+UfXD9R0/4kINxKUqgOJJ+Al4X1JJSFxhx9zVbtekNy
         SkbA==
X-Gm-Message-State: ANoB5pn1ay4KTexMxnvcflp03ZosFgiwxoIEJIprZiTwazks/NNjw5+C
	u32fWDY8VF0JnC9U8gJ40/+CaQ==
X-Google-Smtp-Source: AA0mqf7e7UxcBza+uSIKrX0CbllRyLdTTat4ZXYJI92YxVafSRVGnLoJmE+UpDcutIOMR30P8mqFrw==
X-Received: by 2002:a2e:b706:0:b0:277:d75:f1de with SMTP id j6-20020a2eb706000000b002770d75f1demr1933927ljo.272.1668252704741;
        Sat, 12 Nov 2022 03:31:44 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id b9-20020a0565120b8900b004a4251c7f75sm829618lfv.202.2022.11.12.03.31.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Nov 2022 03:31:44 -0800 (PST)
Message-ID: <2f72e0b6-f082-5027-f42f-e0eeea77f033@linaro.org>
Date: Sat, 12 Nov 2022 14:31:43 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 13/14] phy: qcom-qmp-combo: rename DP_PHY register pointer
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221111092457.10546-1-johan+linaro@kernel.org>
 <20221111092457.10546-14-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111092457.10546-14-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221112_033147_251712_FA3CB7EE 
X-CRM114-Status: GOOD (  10.22  )
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

On 11/11/2022 12:24, Johan Hovold wrote:
> The DP_PHY registers have erroneously been referred to as "PCS"
> registers since DisplayPort support was added to the QMP drivers
> (including in the devicetree binding).
> 
> Rename the corresponding pointer to match the register names.
> 
> Note that the repeated "dp" in the field name is intentional and this DP
> register block is called "DP_PHY" (not just "PHY").
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 139 +++++++++++-----------
>   1 file changed, 70 insertions(+), 69 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
