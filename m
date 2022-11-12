Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46558C4332F
	for <linux-phy@archiver.kernel.org>; Sat, 12 Nov 2022 06:19:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1OoE7NDciZ3Qp1NTeIgs2s5RHgvTPkSPh4DX1j/AuwE=; b=s8Q4QcoZJO5btU
	Hoby3AG8VCFrPzD0QwaYFsduFhWv+vRkBoG7yzVTfBGhnVfnniqZsLKIt0bB6RjtKz+gB1Sz2uwFR
	ZLgZx+L7tkytZK4Rz0zuCT2/vj/qNgeGWmKVn0FkRiaK7qPQpGYpSaichoBskFrMcdZWkKD1O8rKN
	tKtX044Ec3c9RravUpa1b827rSFRKsYTM6ddApS1YN+EzV//zp3ZYWtiT7jLXo0RaA3543NnEf9DN
	v35BL5kDg3ipdmfwIwj0XvsTCYHIkRZR8NEmB6lEzumKRa3sMwDkR5oI0fMRShwTJnQYUQ+PBjDul
	IZ4ZXu9XoLEc/XN6gz9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otjrp-003ehs-M9; Sat, 12 Nov 2022 06:19:49 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otjrm-003efR-MZ
	for linux-phy@lists.infradead.org; Sat, 12 Nov 2022 06:19:47 +0000
Received: by mail-lf1-x12c.google.com with SMTP id l12so11276378lfp.6
        for <linux-phy@lists.infradead.org>; Fri, 11 Nov 2022 22:19:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UClpvOx0l9x+wjA6NEMXjcRIRS2zniqBsDWiJ5YtAUo=;
        b=K1wBk00iQ+/cUopXCupusaXiigjC/njLZng3w92JMTk8+biVa8bmMx+hn/hU/jKzms
         WX1dwiix829U04+ELHFA3x+is3pzk8uVOLt6iuaxIu+mgLm+M0JbGXpiPYD4aEe+UPI7
         VmAiMq0zdOzQVr//oV9Jm7tn9GIsCtyunBS92beRFJlY89DKGuBad27HDSvMmIXmsefE
         sr40fd6P/jyv5yQ8hGEttm1gHJAOx3ycNQLrImx0sxGEfydnZXMgY0MJ5ckumMI0HJYw
         JilPJSW0N6FgjwBEDw2dxS+4AFUFXPrrhiWVwKg23bC48LyArlLxJzkJH0ALAd18I7bi
         QSAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UClpvOx0l9x+wjA6NEMXjcRIRS2zniqBsDWiJ5YtAUo=;
        b=vZQgVSA8txFx9aliqjaNE8TIK3z1p5go9k4dYQ18f6PSTk46FnA3okftRnjnhhW7eE
         NQtwvkDy8s8knXzx/OczoyYeoFs9YIdLtgzCQSsiJuC5KMgxS0leUf/U3zjg3Sg/6h3P
         v+FApQN3sp4ChqzdId3RybA7ehdrggQ7nSP1xgBheFg8f0M0TGDuqGn0wdFR6txUzSEM
         RrrP2Hq3MavpVisobNMK+UeU55ECS5Z+YxJWe/KW1Fe5b94yoDlqkYyun1p0+GQ9Mxz8
         M9jAdYbt2FXdK0z6sBi6AbYl/9GG7PPPAjlBFuQpkqVOmewSImcOY5P9xIsbBteB9LON
         9O8A==
X-Gm-Message-State: ANoB5pnsyPn19cN1pfLyXHT4uAdf1ayHklnhd5ELj+kS0+gqLtgrkQ5H
	otX6si+Kr7vgeZHJ/d2b6T/yKw==
X-Google-Smtp-Source: AA0mqf47PGAs8fCQ4Z0uj/k2vezGwWn9P9tyi5uAcrbHyrCGf3Lh0Pir9XtBrY7XcOWFCUYU28Y0Ng==
X-Received: by 2002:a05:6512:390a:b0:4ac:2f5f:5c9b with SMTP id a10-20020a056512390a00b004ac2f5f5c9bmr1615735lfu.206.1668233983840;
        Fri, 11 Nov 2022 22:19:43 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id t12-20020a056512208c00b004a25468d86asm711484lfr.68.2022.11.11.22.19.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Nov 2022 22:19:43 -0800 (PST)
Message-ID: <c5b55da7-79ef-76c4-a2fb-02e04c6579de@linaro.org>
Date: Sat, 12 Nov 2022 09:19:42 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 05/22] phy: qcom-qmp-combo: drop unused DP PHY mode op
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221111085643.9478-1-johan+linaro@kernel.org>
 <20221111085643.9478-6-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111085643.9478-6-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_221946_765349_4181A2F9 
X-CRM114-Status: UNSURE (   9.01  )
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

On 11/11/2022 11:56, Johan Hovold wrote:
> The set-mode operation is currently only used by the USB part of the
> PHY so drop the corresponding callback from the DP PHY ops.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 1 -
>   1 file changed, 1 deletion(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
