Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DB6AC77B7A
	for <linux-phy@archiver.kernel.org>; Tue, 30 May 2023 13:20:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oIqbgXH9g3Bg0GhZyw4FYvOuG3jKfCsA1+DwGVzmuyw=; b=EyCH5rqf54alxo
	+8SUvo+8u5bstnCQfVeVHlvJVEhU0FMPnZqGfCmYdwT+DaQxz4bhb1o+SvAHJYEqG2CT3VObxBOW4
	5Y/6x1/dYXpaUlJdTLKtdCIYii2GV2R0oTdTMoj8qpZfEcYkFYXHkCbRPWYnDtFwc2z2ueIzI2jEc
	BIreBLuN8SyMIWVcPby4be1cR72QVdc+QiqWvP3N504hkWkangewVzLyWmCXzmNWur0+8c2citade
	mHG/EBCB6I6HkptIHXc4Ft/U0BGphmp768fRUvSIJfLDce1CvrGmsRdqsKKPODuPoQV6Kbv3Q56DQ
	bwERSGTjZLH67RSB+vBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3zGg-00E1QD-2P;
	Tue, 30 May 2023 13:20:06 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3zGb-00E1P1-2d
	for linux-phy@lists.infradead.org;
	Tue, 30 May 2023 13:20:05 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-96f53c06babso790547066b.3
        for <linux-phy@lists.infradead.org>; Tue, 30 May 2023 06:20:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685452800; x=1688044800;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZtdQMBowYm585Zs6pfgqzqfvh1FN6JnmrWJTtQvCM60=;
        b=ERD0iEIjO1D9B3IphjhYjTp60AoE9cvj3bshMUhzxvHO8eA0SGmXuiP/OUnlcORqhU
         rR56aes2miuxoBR+Q5HFBoy3yrs6N7HB6Pi1LtxfcwF85pVk/YdOG+KmK02NjeTfzPj+
         5e3qFg+SmT3VpUO5bRNCzKkImdVs98pHG407RKMd8NkrvworFJ1yN0wc6LzP6yCnGj/Y
         ac8jdAvPDl5wVfeSJOO3GSZASg4SuQs5usyVOqy8s+KK3TF8+8QHSd9EsKNBHcMEBwjv
         4wfPRz0tObvghkDlUOQhGfpo1Z4zifGGUdkhQDa7ASX3J42gKsmmSQI7WiXaPWA5s5TT
         H3TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685452800; x=1688044800;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZtdQMBowYm585Zs6pfgqzqfvh1FN6JnmrWJTtQvCM60=;
        b=GxfR3gdJC226AtRuv8U70Wq10F640yt2gpmKe8EdVEPdGlOqLoz4Lt/Y1NBJKMb9ry
         m8utijUhDLbS5RFYudHa+lkceHVeIASOQP7J9hFsupLAa+lVPLpIHez6xfx0/F/2GdhC
         crjMwXV3+i9BG+y2K6WkrKPiz79IHeSzu0+zpixc3rMGvfYNBwcmM0yZy9OPjBHarkXU
         ILRtQ0cnpFLTUHByqBMS0EWXng9zyB2LBiZymTBrz0tGhdFC21bUTYZcBqTb8RGRn8lk
         Tf0ttjiEUyStehIwnaqbNELSh6U5WUx+LwLMPdwP8fx+QnuN9xgYOKSroDuxmA2+mY0e
         6Rnw==
X-Gm-Message-State: AC+VfDwfa2g2sa6psUyjVn0THpP5ORZ2VlDWAh/upGUagrDRShrsfYIO
	f7OpQp1l7uJ89Wdvo4LQ+I++hA==
X-Google-Smtp-Source: ACHHUZ4bovaQYTnMKj4zfyO8sYWd9MdrERUhOb70V+wtH6un/B77uGDs1PpadB+mwEs5SsMcVpZyrw==
X-Received: by 2002:a17:907:6e0d:b0:94e:afa6:299f with SMTP id sd13-20020a1709076e0d00b0094eafa6299fmr2422396ejc.22.1685452800052;
        Tue, 30 May 2023 06:20:00 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id bt22-20020a170906b15600b0096f603dc8ddsm7408681ejb.142.2023.05.30.06.19.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 May 2023 06:19:59 -0700 (PDT)
Message-ID: <c926e7f8-946e-5fe7-023f-46a319fabdcc@linaro.org>
Date: Tue, 30 May 2023 15:19:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 3/5] ARM: Add qcom,usb-hs-phy-msm8960 to
 qcom,usb-hs-phy.yaml
Content-Language: en-US
To: Rudraksha Gupta <guptarud@gmail.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Cc: david@ixit.cz, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20230524230459.120681-1-guptarud@gmail.com>
 <20230524230459.120681-3-guptarud@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230524230459.120681-3-guptarud@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_062003_888534_0D320A11 
X-CRM114-Status: UNSURE (   7.30  )
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

On 25/05/2023 01:04, Rudraksha Gupta wrote:
> Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
> ---

Please use subject prefixes matching the subsystem. You can get them for
example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
your patch is touching.

Missing commit msg.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
