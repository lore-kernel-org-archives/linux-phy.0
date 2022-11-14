Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A22DBC4332F
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 10:13:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YOmOZ/1RLSlLIXu38l56TYa4NupAdKubDJkvwPfv8f0=; b=iEzQ1OcX27ghD3
	eqpWXP6op+n+sOo1xjHt6FJlRCyvcNI84as5ZHBEvrPFn/gTG8JDCB37budxVyRf39wF67w5XjqUl
	Atq4KEcroEXpHEgTN88rkO/E6APW9Y7YGxjFrPUqJUaeyrmEflN797eO5YFXUTovzA4OoHjitUeD1
	XqPb68pmU/uKh5d3zmxEB/qwOudqYw+ZYdyVSwI2TgppTYeYk8TXWvCy5jWrP1vfJtXyS11Q2wYuW
	/qekxQfmKbfqLjxxQ2bAAjs5q7Tw/LCWoibHFO0ts161FSbwfVu0TcyXiWZ4Nrk+Fst1lVQgEagpF
	DUtvOqHbihY1lK2au1Vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouWSd-00HSAm-21; Mon, 14 Nov 2022 10:13:03 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouWSb-00HS55-1A
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 10:13:02 +0000
Received: by mail-lj1-x22c.google.com with SMTP id k19so12504218lji.2
        for <linux-phy@lists.infradead.org>; Mon, 14 Nov 2022 02:12:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4c/niJOX8IUd4M0ekRTqmwsh6cuXXw3zXTygKOiuah4=;
        b=e3ujLpD7O5XpubM3lstfZxvbFNypOUnKEpNuxRc/4dyTqJhopg1GrK2hBFl/H7qUcP
         jmRqQ9yjvjL8spCOsoM5QJZblO3TrOK9Ah8n0zmDPlVMVtyi8pfxdBeaqxSl5JYPP0OX
         ER9KhxiPJUkKf5KuA3O8iqUDN+Y9t5SbzDBhhlMRwo7VqZTgs+G84+SnN1PWGcJJ9JPE
         bEh5m38/Hcz1ggSvqH/NdN27kFCwrhWGtw68YMHNAEvIDK+Q8e3P7RyTjpBen64VAlz2
         8O2fNpGq5xcII1oSTuxWesyJrWcgmF0/px72Poeg8Wm3Qd8R64pKRJ2mVLBYt/aBIlpv
         yUMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4c/niJOX8IUd4M0ekRTqmwsh6cuXXw3zXTygKOiuah4=;
        b=TpWjtDkbgEGeLpKtv2kIIbui04xpOE4XZUNMHCtfzVKqPLtAQDbUv9MXcTq7I53D+i
         N6M+HGdpSUL7CrxASPfw1JMWbOCDuvdq43Leh0ezsD8SQBRdaOSJo3IhF9w+cLSP6AUj
         P6cmeliPl5EtwIM/jFLYn2DId+1XwKf2t01BwVV8+AygNt/diliuWLuMTphzLcxLIjH+
         VHvAT8ZgHxrmDhU2ObHmI4m/5abz/LbkgGKSTqyOqfeR5+pfJDfz/DiIzWdBnoKY9YoQ
         p6DqF/agus3oGF7wCJHZ8aBgJLroZCCxWRRFpnaUJv/pUuhcHyxUxx7TGioe+ZgP2wt2
         sGWA==
X-Gm-Message-State: ANoB5pmRk3K4BUKVkbsL4LcBY1Qz37d0mdUHURNa0p2jbz3oZLbgJmMO
	PYcCKFsQKTQgxZVFDPEsLvcYkg==
X-Google-Smtp-Source: AA0mqf4c6ACcYbzgA+wVcCEsp99DWK5Yq6meWteH1j6NNm76o/+kbPww85OGzQOoB5FlABs08eCAJA==
X-Received: by 2002:a05:651c:1a13:b0:277:113d:1c38 with SMTP id by19-20020a05651c1a1300b00277113d1c38mr4349084ljb.238.1668420766280;
        Mon, 14 Nov 2022 02:12:46 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id 11-20020ac24d4b000000b004a62ff61b3dsm1756231lfp.252.2022.11.14.02.12.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Nov 2022 02:12:45 -0800 (PST)
Message-ID: <3ec1141c-b4d2-2204-1798-f066a657ab53@linaro.org>
Date: Mon, 14 Nov 2022 13:12:45 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 09/14] phy: qcom-qmp-combo: add clock registration helper
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221111092457.10546-1-johan+linaro@kernel.org>
 <20221111092457.10546-10-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111092457.10546-10-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_021301_116345_2C3622F7 
X-CRM114-Status: UNSURE (   9.63  )
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
> In preparation for supporting devicetree bindings which do not use child
> nodes, add a clock registration helper to handle the registration of
> both the USB and DP clocks.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 22 +++++++++++++++++-----
>   1 file changed, 17 insertions(+), 5 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
