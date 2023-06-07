Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4ACCEC7EE25
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jun 2023 18:37:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WoTkfAILWn/5/mtFtZSCvLlqTRwXZyUvYJbW/qczaZM=; b=uVrjXsZJwYqxAd
	IM47yhXf7+x/kbPpFtI8H92DbaMht1kanQwkkR+HXOcoV3KErmvVe4Fdu3vF4FtsalMKNbaeBPiyn
	bG77uWsxDjEL7A2P874eb+DZUC7gRnSkTlvNY0uh/EO3mo0Ah/lmXmsnKPH0YzMMUxn3FPYbgSb1Y
	pRz34Q+MeqQgpaiRgckEy9hJjK6/OsklCNn9HTlyQbxyczzQhdcrgwMFxpGz4teQLeUfzQHpEPnGH
	Tu3kpJKu4HR7HA8Lsz85xNf/Fvxg0JPK5O1BuvGG2QfQ9U0fD+uafThb3P6zobvOWdOUVS7/GSDjb
	+fuoajD38v58W0NnYLWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6y20-006rrS-30;
	Wed, 07 Jun 2023 18:37:16 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6y1y-006rpI-0Y
	for linux-phy@lists.infradead.org;
	Wed, 07 Jun 2023 18:37:15 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-977cf86aae5so671939666b.0
        for <linux-phy@lists.infradead.org>; Wed, 07 Jun 2023 11:37:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686163030; x=1688755030;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TBJvAcEQG2LY1vEFF1IyEE7RE0JoBORvfJiXnm2YgHM=;
        b=qrWeIk4YwcZ/UP+m3nmcJ36ROhF2tdABqHxKNMe5BdbmFqzTHXpZ7BuVvAtn6yqK/L
         ALPZQnxm1/nS8iSTebGIQexO+ajZd0VjL9GP+LfB9dwmBCGkLLbhO8diXgDzfX9VnEy9
         neI7aHWUOKygd7ijcszY01vUrIiP2AqDbCCULt/jVPrp+Q5xInjGaYTwisoftEKwXDJz
         eBzpT0E/PpX5CIiYmHj/Trw68oW2FqdWHqfC8hsHYuelvU52sYDUB8VwEyTQvYyDtb/k
         +d8ubF6geMCquX3h4qgXNT1Oc8PiKyK6F/ZXQnKBC++F7TaqLRqiROVdKtWdTgceUjxf
         aHdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686163030; x=1688755030;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TBJvAcEQG2LY1vEFF1IyEE7RE0JoBORvfJiXnm2YgHM=;
        b=dzt2DW8rtLV/KnxHPMoW85WQvzewZc8f16Knrez+ISa8f1tbtDqy1pRwe8Ev86hENt
         +YvWCdEu4VfCedaHgisAZFkTSzc0gSDiGssQ1Zr7gdzE4NVgYT6kbsSw6bDWutB4MNKZ
         DyGivqts3XT0SoyKLpQ259F06RoNczTozqMOlcbu70wS6HfM1M2BDr7dMlweOKP5Azvr
         GwVymiVNlSMckXr10Hn6EuSV2wGNoKHHxJzslPGma4PUU1bm3+aI9AcBnzakYFfvgfZr
         do5FsjVQjlldFL+GVMp0kxjbt8xKJ4okzXihztjtjN5xXrcXYqEG6PTS0g7w3GQpJ9nk
         htsg==
X-Gm-Message-State: AC+VfDwvVEmLyURUdLRx6wPmz0PjaAkomgpozTAG2rT1mAiIRW7GHKhw
	+JWKETFMN6WD/BHYBwHxb4iQAg==
X-Google-Smtp-Source: ACHHUZ4ZTFG+XhRWtjV8bpPXmdRsoCVVFTbyApWlPN15wkPN8gqENfBjyZhOMvcU//hPfzQqyCf1Qg==
X-Received: by 2002:a17:907:a426:b0:96f:912e:5ec4 with SMTP id sg38-20020a170907a42600b0096f912e5ec4mr7063552ejc.16.1686163029840;
        Wed, 07 Jun 2023 11:37:09 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id os20-20020a170906af7400b0097887b68c17sm803492ejb.98.2023.06.07.11.37.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jun 2023 11:37:09 -0700 (PDT)
Message-ID: <cba3834a-8ed3-b3a8-32cc-b0397fa5ae41@linaro.org>
Date: Wed, 7 Jun 2023 20:37:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH 5/9] phy: qcom-m31: Introduce qcom,m31 USB phy
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, gregkh@linuxfoundation.org, catalin.marinas@arm.com,
 will@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
 p.zabel@pengutronix.de, arnd@arndb.de, geert+renesas@glider.be,
 neil.armstrong@linaro.org, nfraprado@collabora.com, broonie@kernel.org,
 rafal@milecki.pl, quic_srichara@quicinc.com, quic_varada@quicinc.org,
 quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
References: <cover.1686126439.git.quic_varada@quicinc.com>
 <636308462efb579734de829fb6e9cbda81b982f7.1686126439.git.quic_varada@quicinc.com>
 <f007fbf0-b1a7-cb44-d662-c30bf114365e@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <f007fbf0-b1a7-cb44-d662-c30bf114365e@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230607_113714_217055_0C387FE1 
X-CRM114-Status: UNSURE (   8.67  )
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

On 07/06/2023 13:20, Dmitry Baryshkov wrote:
> On 07/06/2023 13:56, Varadarajan Narayanan wrote:
>> Introduce CONFIG_PHY_QCOM_M31_USB for including the M31 phy driver
>>
>> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> 
> Is there any reason to keep Kconfig, Makefile and driver in different 
> commits?

KPI? Yearly objectives/goals?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
