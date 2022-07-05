Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 704F1C43334
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 11:59:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4iTozrzyAj1fEsK+Xv2Z8znbWEw8JWDLtH99L+V40no=; b=G0mUekSWPvl61d
	bN0oLJCrT4iEqXd4yi/VmARee9IOqo3EIVxyrEeRS9CtVyY8KcOYW6pm/WZ+uT3j0CkZT2Kd/RI2U
	Rs2U+nR6y180NTvQSMVHhCkwCfrXB6OHI8qkPYLsnP0AoizP01gQrp9VRQG8rNNt6jLZu1wFjfsnX
	7GN3rt0E/72mG6O+96B0zJjb/93Bq5LiuVBWxPsuk7l6WHKizwftbrkUGAVLqCsqZYNjgorZnSwO8
	atXBskLFjzCzO2Dio+7Ys7Z57SPVBo/Mo3KGLZrC/1n7vL2lSI6SU+harUNyMLSKMhj1nSGgmdjDe
	NNM2SjgIVU/xRuWp7rBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8hDK-00HZuC-LG; Tue, 05 Jul 2022 11:59:34 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8hDH-00HZqs-9u
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 11:59:32 +0000
Received: by mail-lf1-x133.google.com with SMTP id g11so4901408lfb.11
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 04:59:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=6siEFuHTvz2wiZjNJS/sIJYuAAMQPwq2R44ZfoCD8LA=;
        b=mmuxC3elnOWnJdm5y+8IWI+4z7RlV9dmMTlrS0adveVMqJh+LSw26uvhbaVdv3c0CR
         NuJPlLuAdBIbFCS8Te4/RIxJlEHrQ+Mfl4I+o+zr9pfU5pybB+ywLTau2DRz7+Yelc9A
         t1ruCo+VQ8Z311ZLnL1XtCmnyFDo5l0GHoMqa/GtSS4ME67YqQ4KHuqUIwhJStxL6Hc8
         hOqbk1OsLDWWeFyOsua8Z5S37UULokgit4LFactvNLRewEMNpDFL1w02H1/bugsbRKAK
         9HUhrnzcXHcqNC24WU73b86l1LSlG8DSw4Ht/K6yOaCliDS7nSC1M4ySSZA/PxTI7x3o
         HAXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=6siEFuHTvz2wiZjNJS/sIJYuAAMQPwq2R44ZfoCD8LA=;
        b=Mzjuf1PIIe20frBH1rxnD4X0PEKxYDQ81yoe5dOerro30zaC1Twf2w6OgA/H8VzxPq
         oFP/EOUCgiX5+r5iO9tuFU9A+xHu0i095Tqeu+g+GviRg0PXfVqqgHz6c32P8uqWBVjM
         WdXvPwigNMzIvLc+r2pci/LwFpA7JK8N0nFaZqDuMUPr5ueIu5bjFvNHT7a2ZeVObJ5V
         hhkt7WkczozT8fdJ5YJ+vzB/mM6Y9XO8aDRV5U8vCvzrKn9RlMEldarwjAp/USDw8/8n
         K35mWLuJ3a+f4z8yQ186GeZUMDpGMkCEVqj2sBqvygBGsNQXz9AjwOwGyvDJfVXt9401
         un9g==
X-Gm-Message-State: AJIora+VNOUQiAxCQYnK3n7tnbbZQVoBcKGUY6C7HrP7Dfiz1kmFVGBQ
	1wrvC+yV/TSIM5H8Le2+U+C+ivP823992Q==
X-Google-Smtp-Source: AGRyM1tZ8htjZWP+QnN9dvmr8bSoCF+K5t1fwgkt71yBEOScwK7N7obCz+hU0Pi1vOMOFazWj0isCg==
X-Received: by 2002:a05:6512:b23:b0:481:3e76:4942 with SMTP id w35-20020a0565120b2300b004813e764942mr21872103lfu.384.1657022368111;
        Tue, 05 Jul 2022 04:59:28 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id o4-20020a05651205c400b0047f8990e8c2sm5683389lfo.140.2022.07.05.04.59.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 04:59:27 -0700 (PDT)
Message-ID: <8d739c84-ba61-a030-ea8a-63a3f45c642c@linaro.org>
Date: Tue, 5 Jul 2022 13:59:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 16/43] dt-bindings: phy: qcom,qmp-pcie: drop unused
 vddp-ref-clk supply
Content-Language: en-US
To: Johan Hovold <johan@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220705094239.17174-1-johan+linaro@kernel.org>
 <20220705094239.17174-17-johan+linaro@kernel.org>
 <d3a49c05-0fd0-920e-bd0a-f821e8e27b8b@linaro.org>
 <YsQkmUVla9+CDYly@hovoldconsulting.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <YsQkmUVla9+CDYly@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_045931_397232_B5F25E9C 
X-CRM114-Status: GOOD (  10.57  )
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

On 05/07/2022 13:46, Johan Hovold wrote:
>> It's okay to copy existing bindings which are applicable and then in
>> separate patch deprecate things or remove pieces which are not correct.
>> But all this in assumption that the first copy already selected only
>> applicable parts.
> 
> But how would you be able to tell what parts I left out from the
> original copy 

They are obvious and immediately visible. I see old bindings and new
bindings - no troubles to compare. I review new bindings - everything in
place.

I don't want to review old code, inapplicable code. The patch I am
reviewing (the one doing the split) must bring correct bindings, except
these few differences like deprecated stuff.

> unless I first do the split and then explicitly remove
> things that were presumably *never* applicable and just happened to be
> added because all bindings where combined in one large mess of a schema?

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
