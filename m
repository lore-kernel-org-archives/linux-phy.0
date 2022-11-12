Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEB63C43217
	for <linux-phy@archiver.kernel.org>; Sat, 12 Nov 2022 11:16:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QzXU9p82+FR1IwonnjUBtutQYV4mX1ADPQdoNU4kyNE=; b=c3CqpDnDHJVqTF
	dCVwJZRAC+XJz31CKWaxoiO+UPFj4Kb7DlFqkG0Z9JGhzMMegd6mplpSHzebwNVG7JMD4iQyO1SYk
	CVPFe7lvG22eHlQ2pmJig3yUoMsoK66MrlDW4JkhHg0pTNPbFu52U7I1zKWCKQ4jerJfwFORI3Tss
	W6kCdlHkgFYhYEUiDCc4mKe3N2xe2StH0YmKTGWjtK8hhvv2QCY7+fPA40OJXShcbRViTjh6wpyyW
	l5D5TmNf8evE9cE6bjo63R+GALQZlOHB5IV9a7a6XMujlvEVRfGRyELRAqtPYBzvp/rPm00J1LKjp
	DzcnqN1RN056f8hxoZFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otoV9-005HdP-3J; Sat, 12 Nov 2022 11:16:43 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otoV5-005Hcs-HB
	for linux-phy@lists.infradead.org; Sat, 12 Nov 2022 11:16:41 +0000
Received: by mail-lj1-x22d.google.com with SMTP id u2so7214619ljl.3
        for <linux-phy@lists.infradead.org>; Sat, 12 Nov 2022 03:16:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=usLQM2GRgo6G5zV0n+K+few4UokTLDJIqn1X3n+/7eY=;
        b=QtqjW7jrkJx46ATqTwbwEIJimu4PgF9DKwVSOuuf4NmGi3MiGKXAQyhX4lMRjjufS3
         jNcSHkxmVCwPbd0Wvu3ah7dr7bKcay6XV8O095pN3MN0GMVxSZaHXsQQ3VQL6v4WOAak
         sU3G4SvH+7c4EhNFwl2eKRJRq74068BzfLgl4NVMFP6Rn/Sv9uuT96iPBiVQG/JhPr//
         AUriPuCgY0oy3ZJR/uh7JxkNLAniZLpYqXD2kSOF/hj/KLQGuX5LeAa0mys9+7PPKhjr
         /dnHliYI6Ij+BbJmRxaIn2uJ7yAyInVQq5MbhhHHU2iDnefq9R63k1HNs+ckVpxb3XZi
         MsUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=usLQM2GRgo6G5zV0n+K+few4UokTLDJIqn1X3n+/7eY=;
        b=zUXXiT0a2p8mx3Q7nGv/ePWnzx3aSv9xHwIECfAn8jIkwLBddliJrkVEdeiS67rGSN
         0mxy5Qw6wY4F4vpebZJ9ZtSpW0zH3SULMUFdgVsGIIn2XjRVwtLFrwOGTiv7kVpCo3KC
         HqV5TLKfqo980/YnvK6CSSalXFnn1OH58wVkqV+un3AL1prbZQggJgDNJSaC5BnwUJnx
         lj6msjjrxnyiKPGcoYXyvvoLQYzmiHwrfEkWNqnvHyiXe/K1po2YPctavliv36M+Jc4M
         tlczgoyqQSJufB8k/nAJDwNFpQfSBgTUL+ZBVnUFWU81lroWi47wLCIpvjFeC6RFfTmh
         1Kgg==
X-Gm-Message-State: ANoB5pn4Od4N0lC6tq9Io3Z6qoOm9CXwWMgD9WR7SSf7vTEzp88rMZz2
	b1Wv7JxmrHH0pLobEfcMsdavJA==
X-Google-Smtp-Source: AA0mqf4rX8KHS/ur6RbwvNnkJ+nujSEZ4baBqLu7grSwQ3YarEBmG1Z7Ak0Cq2Fe/Lxl2aoI4L6YwA==
X-Received: by 2002:a2e:8783:0:b0:26c:532e:3cc with SMTP id n3-20020a2e8783000000b0026c532e03ccmr1708678lji.66.1668251797322;
        Sat, 12 Nov 2022 03:16:37 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id n22-20020a05651203f600b004ab98cd5644sm824622lfq.182.2022.11.12.03.16.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Nov 2022 03:16:36 -0800 (PST)
Message-ID: <d2aa457d-2d63-af9d-f206-55c8b3051023@linaro.org>
Date: Sat, 12 Nov 2022 14:16:36 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 07/14] phy: qcom-qmp-combo: drop redundant clock structure
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221111092457.10546-1-johan+linaro@kernel.org>
 <20221111092457.10546-8-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111092457.10546-8-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221112_031639_717912_C5170ADF 
X-CRM114-Status: UNSURE (   8.06  )
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

On 11/11/2022 12:24, Johan Hovold wrote:
> Drop the unnecessary DP clock structure and instead store the clocks
> directly in the driver data.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 52 ++++++++---------------
>   1 file changed, 17 insertions(+), 35 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
