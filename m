Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD6DBECAAA1
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 09:37:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QMjtnYvNOvY38a7aTN/mXq3l4nD1soPsKsQMZFQfD7A=; b=xpol5fh0bUlnIn
	eOi2Pk1L8WUt6LePvlKrvXvaq20y8BwgH5IWk1o1si5WwoN0cpu2aknucmf4rls9+z9RsDFEAIXUP
	I2S60YvrjZh6I1kNZeuEV8yMiSoQ8Da2qamMX0EEuze6TKr2y2dFvuTxDrwb06tE4THwyx1dGyUx+
	Mp9xQbX4gAl2G1KE+sUac/7IDTqgUbCxU72Akq3ZyhWcGn75pzAGOaNxzXxXDi5pms5TNiVzQSKCS
	t5+gLrJu1uy6mPtVB/mtDxeYKtC/new2Xo9Hw8ctOBeYXaX7RYDZ/mQNO4Mlk3Y1T7BJHE/LabIe5
	0FXAjEMllAkfn2Ag8UVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWaSK-00F5na-76; Fri, 09 Sep 2022 09:37:48 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWaSB-00F5lm-SY
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 09:37:41 +0000
Received: by mail-lf1-x133.google.com with SMTP id z25so1757830lfr.2
        for <linux-phy@lists.infradead.org>; Fri, 09 Sep 2022 02:37:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=SXD4yRr2wTLtswQrrWTaQpfDTO4oenQgkAblYwtJOXY=;
        b=SE7eDe4CxGd7L3exB9DwNRCm+q8otphqU0V+638Si94Svkbhr0bEyeaSqsJ6GZ8xQL
         0Rz4YQ1jI6VMMdhOrCIeGwlLSk0QwbN0uwZ95R45KuCe2Fvo6plPyJrcJYofo44bLM0S
         dRvvhFnLD8xTIdUTkdysfM8bAAAsKBE3UwQk4LNrhwayeWFf33tE1yQh3t+NQiLB1qku
         P2ijAVwvdaqslE/mw4kNSx612PVK+QLWK0CbJUzrcyEzzvvMzNUHqbFse1NSKJWl382O
         WhZm1lmCHZ1EYUPsIz+PL+p+5o1VqqVGxeNw2p0t71UvcRuxONUxiJTZduxp153TV5Gz
         t5EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=SXD4yRr2wTLtswQrrWTaQpfDTO4oenQgkAblYwtJOXY=;
        b=w6bDxU366kdmiAoR3ckQnOnBWbBnsuM9ziQWU5I5W4/eZnxPlDD3dx8J4xZs7pq7CB
         nLpPttzKHpzSaPx/8VeaKvHfrfivkQq6hnepNH9em+V5f07a+zKKDF1x1HMof5VP+NeO
         0zDZxKBFAnXaY7ghZ6GzFWSWYY1e8za7c8QRl/3RBQ+xwmWjHlM9hQ9ZvxLus++O4jvZ
         ZVHvKRkn/ebBg/G1RktbcZfnBbhE5ZSeWxA2ifswgToBgcGoSl9HSZasCrff5JI5CUmG
         QUVJRq9P2zuJZMDYXFpMxQS5nxjDjyyNN2TKj5RH7Uq7iVPykaFeNBrFXf7UDHnW0f+K
         O19w==
X-Gm-Message-State: ACgBeo0XXoh+FYUdsDbJDgf7+PvgutHQhmHkMoTsDPQjHFND/5yRr3NP
	WJNFpP/waWFQkr8fb6ruDwCrSQ==
X-Google-Smtp-Source: AA6agR4xazgW4nbm1Io8z69hyNYtHUdL9TICI3XSS/+5iekya2PssfTCwUhClbVBFmItzTAdglmeqg==
X-Received: by 2002:a05:6512:3194:b0:494:716d:34e2 with SMTP id i20-20020a056512319400b00494716d34e2mr3871433lfe.147.1662716258194;
        Fri, 09 Sep 2022 02:37:38 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id n26-20020a2e86da000000b00261e8e4e381sm14607ljj.2.2022.09.09.02.37.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Sep 2022 02:37:37 -0700 (PDT)
Message-ID: <10c259b9-00ed-f596-4118-5a57ecef6a4a@linaro.org>
Date: Fri, 9 Sep 2022 12:37:37 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH 05/16] phy: qcom-qmp-pcie-msm8996: drop unused runtime PM
 implementation
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220907110728.19092-1-johan+linaro@kernel.org>
 <20220907110728.19092-6-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220907110728.19092-6-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_023739_956289_5A0D4713 
X-CRM114-Status: UNSURE (   9.93  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 07/09/2022 14:07, Johan Hovold wrote:
> Drop the unused and incomplete runtime PM implementation, which was
> only used by USB PHYs before splitting the QMP driver.
> 
> Note that the runtime PM was never disabled (and state restored) on
> driver unbind.
> 
> This effectively reverts commit ac0d239936bd ("phy: qcom-qmp: Add
> support for runtime PM").
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   .../phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c  | 37 -------------------
>   1 file changed, 37 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
