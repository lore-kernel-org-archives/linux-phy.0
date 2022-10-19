Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2E22C4332F
	for <linux-phy@archiver.kernel.org>; Wed, 19 Oct 2022 13:51:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LszCnSCe5LH455ob4+qW2mJJdiCvV8J8VDl1bMjMxFg=; b=PFpI/PBOPZttFU
	HayRNCRdB6QdYbFSsUDjhxtDaWqnsHph+1IoWpzhWgH/VTVZm+yKtDQ4LoB0hZ+qDUkUKvk1ogtRx
	q843jLJy18jo3xppMns2CBGvgKYCn9ji1vJoMBmZDqX/kVvH0+Wuf/PtXoyT/oBu5IX8RFTvIprNt
	LEyvw69OSUEmOkB/ISBnp6RC3e8fw21cnFCgOzeNsuuG8H5K2kHsPT3kBjTgdiMiDIt5qXSLHYOrL
	TOJU+KSkvrlwRIGmK3EX3QCqEc4kxLxsdVsYLpx4iYeCPqK8B9j25S7IPaTGoKzW9AcLwjatkfj1F
	JXIJJqmyJ1FtYYWCveiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol9Tn-002JcP-5x; Wed, 19 Oct 2022 13:51:31 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol9Tj-002JXY-9p
	for linux-phy@lists.infradead.org; Wed, 19 Oct 2022 13:51:29 +0000
Received: by mail-lj1-x22d.google.com with SMTP id a6so22262900ljq.5
        for <linux-phy@lists.infradead.org>; Wed, 19 Oct 2022 06:51:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UJIED1GMLicc9E2xTm0vMrBYlH7QKNnQvZ0ZP1r6MEk=;
        b=K9naMjrZKs+uKZCSLVPRDZ2jSvYGjjkZf49XV8WaELqWNzpbevfDUza4cYpAaua+oq
         QCERtfMC3wjKCGvnU89DLqR/bLqjDUV8ktOm0luwt8ciKr3/wb8Gf+MF9fA7fjj5AAmP
         HUjbH8OVfJCuEl7k6AD24SN+R1te3atr2YaJkpIo00fP7TML8XcjkyE2o09hp4uYAi+y
         YE2hvmjKKbJIDIAVgtZLLTvYalXOkz560rvf6ks4AEcrM9i4inb53/yYCXjxJIZOY1TP
         54g4TUGcDLnoX3eex9RpbsVl+iAiTUyukUCPBFF+3oYwbbf/qEnxgqZK8LDFWdQuZcd9
         u8bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UJIED1GMLicc9E2xTm0vMrBYlH7QKNnQvZ0ZP1r6MEk=;
        b=DRfrpdC4x6vqnL3vka6lOp5dQsK6oukXJsfr0HKjiGlaTLG6AYZqbc3ZmnsbAkZz/b
         ZnJ9jFiRa2bMdkNQMLQ/upOd4drCkWgSE3f18l16OKnZjLm3cF+u1yUtR1zNRHrj2iA0
         c1iA+s7b7c1izvKd8Z7fTjjRMCEXgDqL8e/8uHRs4mJFqhWOwMKGwVU4AKbej+0h9IcL
         JJzRV4tZZ5H8HP97Fp13KG0Xw9YsZCBaweUcin+ZFI/OQ98dauXShUSvWaTpBDbgtNcv
         DaVy/9UNy8u5UNUvILh3adWGy3gVh0RzSWjI8fjdqWme2WevAyItxbKUxfxkzbygZXmX
         RMaA==
X-Gm-Message-State: ACrzQf2nyRHNJgz+8omL2Tiqnb8855zN2xxlN+T3uNFbd3CnM6B68eEK
	kTF2x1BP3XNGzfGA4ImJSy+1UXjG+AegJw==
X-Google-Smtp-Source: AMsMyM7Cva7bl9FMqpWN6cGLNUl5h1EdpUNy5P98fDoiY7YC0WhyZAFXhoHFs2BmHbMdvQ9r5Xgbgg==
X-Received: by 2002:a05:651c:a11:b0:26f:db4e:e7a6 with SMTP id k17-20020a05651c0a1100b0026fdb4ee7a6mr3016661ljq.361.1666187484890;
        Wed, 19 Oct 2022 06:51:24 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id b7-20020a056512070700b004a2386b8ce8sm2285850lfs.211.2022.10.19.06.51.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Oct 2022 06:51:24 -0700 (PDT)
Message-ID: <e17c4a43-383f-110d-4682-11727cff66ce@linaro.org>
Date: Wed, 19 Oct 2022 16:51:23 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH v2 11/15] phy: qcom-qmp-pcie: restructure PHY creation
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221019113552.22353-1-johan+linaro@kernel.org>
 <20221019113552.22353-12-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221019113552.22353-12-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221019_065127_412633_65A23496 
X-CRM114-Status: GOOD (  11.29  )
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

On 19/10/2022 14:35, Johan Hovold wrote:
> In preparation for supporting devicetree bindings which do not use a
> child node, move the PHY creation to probe() proper and parse the serdes
> resource in what is now the legacy devicetree helper.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 36 +++++++++++-------------
>   1 file changed, 17 insertions(+), 19 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
