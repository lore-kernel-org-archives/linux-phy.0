Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B822C00140
	for <linux-phy@archiver.kernel.org>; Wed, 10 Aug 2022 14:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SEHvtAZUCTO8q77wquat7p60IlQpCx9JapbvZeD08ig=; b=JnoCOFCOVES05J
	olNv+Bdc9uBekPqTCxKBf8r8ks+6SYrCqvwTwjqsdYx4AYyBbS9YbJo23gm3XVlQENCYo7QnOrz94
	07nIzWm5cST2EQ4EmsCzLFPJC7Jttr+epVekd+xrN5OjpsB6XKYX4qCE9Nvg9iAGrCZtwhYOP0/kg
	QNtwI6JDHSSnMmAr0/dwJUi55SSlfpGDO7ZT8vEdvX4WfZXKJ3J0KMvd6iqH/73EXmwW765Xtilkz
	V6LpHvGtV2KXVPZb0KTAP7228dQ9TiI/nHhF3+RBCdsWNiNAK4JBSeLdIPRjr+COnW72rPwJDsfDU
	OTvZFLcmi7cNAbbFOv7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLn10-00CPIq-Io; Wed, 10 Aug 2022 14:48:58 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLn0v-00CPEV-IU
	for linux-phy@lists.infradead.org; Wed, 10 Aug 2022 14:48:57 +0000
Received: by mail-lf1-x132.google.com with SMTP id z6so14118981lfu.9
        for <linux-phy@lists.infradead.org>; Wed, 10 Aug 2022 07:48:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=Q7MGG/JhDz1hCo+Yj3+IF7giB4w6hr60tquTBJCK01o=;
        b=LinhzaJsrpvYmtMhRVN1UMKuEdrrqt9uV753Bf6YBB22ZtW8JNLVWZLHCtxz1pV7df
         fRkrLH1dyiBv0DFqagWT8Jl2KRvHHtq30GIurffTxrHSZxHznOqyADkiON5LbKe59b43
         dNSAxRVXYKPZl92mscObu5YDeRw8Li/oZsp54iAis+5e/vh7nnduL1Br9dg+NTQSFaEG
         J54/gw9Svfq/d9rZlI3Sji+vSzHlyWkEzeKtxdRF17z2AWhBFPHz3E8eqPbrXJ+cBSdL
         CjLqmg0defBo+g8rENt7nQO+wlguN8x1soSaUJxgIjtyhy5dy88XiCD/VvFES8DA3xnI
         CjBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=Q7MGG/JhDz1hCo+Yj3+IF7giB4w6hr60tquTBJCK01o=;
        b=QI4JbIGlFDrRw3FuGm+SWcMcTUr0frpxeJ4rSHvosnYFrnqavej2hj3uWbOjWuCFlz
         odTIRKY/f8obIHWHyrCsZEOrpFmC961J2ItLsPjAfFESCODWBytkL/Bn6MUiQvhA9V7C
         HHNzw/wnrdKjFMleiqqZukGlovLRJXiUY6ocMS4FtxhzmjB+gJEMP3PY/0HXybBMn7w7
         NgefvE3ySFPBvO+XP9fe31l8Nciy/vlcBboUbNtCHSJFGOD996NiJykpJZr2gS1ZYfI+
         HbDezZHafd2ob35cXlQWCg6V4HePUOdNZZkwqhNFtM6xnb03+NnZFZrvBcYQEoD+jxsS
         kAGg==
X-Gm-Message-State: ACgBeo2Z9rOboU/1QxO7TcALI/3Hd545M0pmUls+lwl3XUiJNV5OfvKs
	ZQtz1DY5c5F6laCO/gpiI4wqaA==
X-Google-Smtp-Source: AA6agR6mphtaBT4wBqYjxE2rrsNOOPH2FORhjukhTqlukW+3+UIzqtcrK9a42UTUOUyrpaXuBUQd7A==
X-Received: by 2002:a05:6512:3501:b0:48a:ef16:2b5d with SMTP id h1-20020a056512350100b0048aef162b5dmr9223152lfs.186.1660142929726;
        Wed, 10 Aug 2022 07:48:49 -0700 (PDT)
Received: from [192.168.1.39] ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id v19-20020ac25593000000b0048a828b6b2dsm363258lfg.182.2022.08.10.07.48.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Aug 2022 07:48:49 -0700 (PDT)
Message-ID: <7cf24606-e216-994e-9056-6dc5a274e5d4@linaro.org>
Date: Wed, 10 Aug 2022 17:48:48 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 1/5] dt-bindings: phy: qcom-edp: Add SC8280XP PHY
 compatibles
Content-Language: en-US
To: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220810040745.3582985-1-bjorn.andersson@linaro.org>
 <20220810040745.3582985-2-bjorn.andersson@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220810040745.3582985-2-bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220810_074853_650722_6BF37E36 
X-CRM114-Status: UNSURE (   7.24  )
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

On 10/08/2022 07:07, Bjorn Andersson wrote:
> The Qualcomm SC8280XP platform has both eDP and DP PHYs, add compatibles
> for these.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
