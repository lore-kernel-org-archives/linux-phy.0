Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29F9FC43217
	for <linux-phy@archiver.kernel.org>; Sat, 12 Nov 2022 11:20:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QJlBVP6pVR5fJhWfwbIIJzl1AOLmtaxhIrXdQRT/T9c=; b=1BgT+m8ZqfwUaf
	pUX7oyqBadYW45XDrZwdeVn1S5g91me6yaibNKAfdwL2byZJSeNW2bgPiTXHjbCfXOclNICz8SvDo
	+hEGcgNMh2b88s6wRwezZjZV/20eMZNhPSeJ+JBrQ9y0Ej0oyGlwPipttAhHu+V55SfGXo5taRO5p
	JsN3dsnoUSEVhVTg5Afk/KzADRDFBNWU+e4EOj8eK2WKZPAZoersCDQBgBGxK4PlhXeKJOL+vOHM0
	6IjubRlQuiGRQ0IpacbqBPdO1NPg451i1tbIWll5JWkP6xThTE3NnWC3jQKVC+7QPYdRkAdh1sKUv
	qa4H4Ew4sOCoGT9fioag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otoYp-005IBU-I2; Sat, 12 Nov 2022 11:20:31 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otoYm-005IAN-M8
	for linux-phy@lists.infradead.org; Sat, 12 Nov 2022 11:20:29 +0000
Received: by mail-lf1-x136.google.com with SMTP id g12so11972013lfh.3
        for <linux-phy@lists.infradead.org>; Sat, 12 Nov 2022 03:20:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=i8kkvKEpvQ688qhJocC+3RA4wQvtZWRg4tan2qE3BcA=;
        b=fcYEcD0sM/OTJI9qNBqy+gGNe8twjTnWTEuqeTKGKU9QcoiojoPbQjI2PGNhRbW5b/
         EhX5y6EPa3wFGymb0RbWl0Ze5k72diijNxGzO2ejvhsvnd1WF8ChfLUdGLupb4KICMTB
         r8rz3Uj9TtchhKTgzm09EhaqvXW/jbkG2SmCaH1XHiMKGpgSkhtfTVllNEoBvb50QcvM
         xu+r9hOeXNT7hD3SMCk6RE3UCnGySoXgxHzYSxDE8TmVZ6uqrWqsJYBycmcRwURA0ovD
         cdPixxFC3MMUHKZfI8MbxCBl4iYPIU98ByGh3Q8qN7zndaaeqlHWFILS7qxla7HLf1OH
         QPLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i8kkvKEpvQ688qhJocC+3RA4wQvtZWRg4tan2qE3BcA=;
        b=ms2s9E2XSsl5o/w/Zq+wxQGbWuXhgKQrYF7LKIzA2v5730AZqljSPHRPYHj+3ediCZ
         2hAB/JzxXWzsE7xPiW2Z9fgjzn0BgbLM2+svxT3TeZ6aXstUBAp0fm5/+ERpTEs35C71
         J01Isz0z/e8T73fcTr4y0UE/4IL0FmlUEi0WBXTtpAeQJjZOdN65il6oIRUO7fwKevrs
         tmwTKrWWYR8DfjKvsJAhQfi42fGz4zCpCCNj4dEcYRvQEijyd2/YRTg7kaiP7y5NWvFp
         OMWV8g5SE402NpxCZmrkrUn2Yg13PieE3AxVlCrGF61GRpZyHZSFtjkay29Wex57xJuS
         R0ag==
X-Gm-Message-State: ANoB5pm+tWdbFIqWD9BQxrakBPeUw2MWuzBI1XdyA/ovxBN99HziYkPg
	BuQVUYldAd76urmWwhAlDs7lGg==
X-Google-Smtp-Source: AA0mqf7CJgoDNhgsu2VpvyHNlSJ1G3FV4KeBeNUpXLaQeRnRABUCtstZ74Jcfj+ndSA5SeFd0bRG0Q==
X-Received: by 2002:a05:6512:2983:b0:4ae:6bbc:e8af with SMTP id du3-20020a056512298300b004ae6bbce8afmr1838165lfb.411.1668252026270;
        Sat, 12 Nov 2022 03:20:26 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id 10-20020ac25f0a000000b004a287c50c13sm826141lfq.185.2022.11.12.03.20.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Nov 2022 03:20:25 -0800 (PST)
Message-ID: <57f3c55b-3d37-276f-8c09-ebd580ee1e37@linaro.org>
Date: Sat, 12 Nov 2022 14:20:25 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 11/14] phy: qcom-qmp-combo: clean up DP clock callbacks
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221111092457.10546-1-johan+linaro@kernel.org>
 <20221111092457.10546-12-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111092457.10546-12-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221112_032028_764392_9447D64F 
X-CRM114-Status: UNSURE (   8.01  )
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
> Clean up the DP clock callbacks somewhat by dropping the redundant
> "qcom" prefix and removing line breaks after type specifiers.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 33 ++++++++++-------------
>   1 file changed, 14 insertions(+), 19 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
