Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B48D2C25B07
	for <linux-phy@archiver.kernel.org>; Wed, 10 Aug 2022 14:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=azUHWWaKVOqsto44K3N9Xp75P1hIUjcCm40WEgXn7Ug=; b=oI2tlmCeUjqO+b
	2W1blwBIv6b0R9Uc/mpbgqBbLF74vs7kCVgwU2ZNnMguvfOkaLF/HGUklw1pheBg7A7Gm+YtTb+5a
	Ho18zWDfoZmbFG+0/M9LwJO0VULr9bDrrOzoUkqoyQnJK06ys3UfQt2ukqHfgJzqfIcqajCzvhQgX
	qloZFYYb8dcVxzLgP9d2gIxU5nNlZ0GxOlrjOPshEPph0YaWYbxhHkv232bAaDAJXJ/IJYD8rK/mv
	oyE8aGxmbjLUD7Ac8L1XgjsAUmEqzoQmUDTKwIm9kTLtZi1LUi5lJZTwjsIi1LZc/Bj+jp1VUpV4W
	5UOIk7BN+TtNNYBWuRSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLn0c-00CPAS-04; Wed, 10 Aug 2022 14:48:34 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLn0V-00CP6C-B0
	for linux-phy@lists.infradead.org; Wed, 10 Aug 2022 14:48:32 +0000
Received: by mail-lj1-x235.google.com with SMTP id w15so16370019ljw.1
        for <linux-phy@lists.infradead.org>; Wed, 10 Aug 2022 07:48:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=HNShlj7tzx1hQcUnIHN5n05CFf+GUbbVjxhrLuy3zYU=;
        b=C57adzjE4mm48bZtyMNVcnlgkKqKbd1kEXs15BIKvCud3r0pQIH/KyPmzOk3Uit9Ud
         4rqqCTskV2iPFmljPLyBzyKq97VJNpr56igwSbDRPCsjIk+06LeVVk2qLX1NRsFmH8mc
         PlVjzUdmgX40OWN0R1EoW0CJ7XY+5Ku2oNaBsNHrJGUZMd97LoBJLA45oLwx5D4EaHdL
         Qomf1b0KW9rQNCypDgGCCBi5Y0nfby9hWmd9qcAREHLsPwcO8KqE24Ugn535RnlghzzF
         aEjG/8M2GnV2hbbYBR2r+EgH99zhdSX1CqDxo5/hkwfPS5pnD0oEUnBlSJ4etjqJqa9h
         /+7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=HNShlj7tzx1hQcUnIHN5n05CFf+GUbbVjxhrLuy3zYU=;
        b=0G2Hw+8EhfumezXQGSy1Hf6oU3N4trIa5k/X82NdwRcY8Co1wSCcyqIv+RcYZZJose
         uSRTlArvEKtJYLUsD4WkHKHNZHWCdya/0q50Gx+bKRZ7cptCRoNw5BgzdPCFL28PF+tP
         WRshUDiudvWprqYLtE+zv2yehYaJFiTVxK+ZYA0mf5GrWsME2zNqhC/el0DZCNd/gG9u
         3vx+6lbCbe+nkpEqPDKTSehANl9on7EIPoOZao4IrsThJVPT0rCaSOhTAVzZ2veOL1+K
         BiSpHzNuyWBQTkNquEXcFgbMnvWmbn0A6zWDuXYceiIDqjPDRlSThUKV93C5gicr7U+v
         /7dQ==
X-Gm-Message-State: ACgBeo2cQX/bywzWfGb0JkqD76P94e9QUeJqasbfD2aNpNPT9/ouket2
	NP/XZnsF4ikGXMEJWp/W6R4kVw==
X-Google-Smtp-Source: AA6agR5j2fIU0budtFLy//tUTBDqrjUq/+V2bMgZlNmrQBOxYzrFUSjv1JL+sAVn5xagbzrVZCDmmg==
X-Received: by 2002:a2e:b8d1:0:b0:25f:f4fb:357 with SMTP id s17-20020a2eb8d1000000b0025ff4fb0357mr2377539ljp.66.1660142904425;
        Wed, 10 Aug 2022 07:48:24 -0700 (PDT)
Received: from [192.168.1.39] ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id 7-20020ac25f47000000b0048b0ef93248sm370093lfz.62.2022.08.10.07.48.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Aug 2022 07:48:23 -0700 (PDT)
Message-ID: <86f8b129-d3b8-c0a7-ff89-372cc75ac897@linaro.org>
Date: Wed, 10 Aug 2022 17:48:23 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v2 1/4] dt-bindings: phy: qcom,qmp: Add compatible for
 SC8280XP USB phys
Content-Language: en-US
To: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220810042303.3583194-1-bjorn.andersson@linaro.org>
 <20220810042303.3583194-2-bjorn.andersson@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220810042303.3583194-2-bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220810_074827_544043_1ED9C8C9 
X-CRM114-Status: UNSURE (   7.37  )
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

On 10/08/2022 07:23, Bjorn Andersson wrote:
> The SC8280XP platform has a pair of 5nm USB3 UNI phys and a pair of
> 5nm USB4/3/DP combo PHYs, add a compatible for these.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
