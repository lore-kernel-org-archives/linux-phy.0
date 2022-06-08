Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6131DC433EF
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jun 2022 07:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EqX6CXIc94NbRaumlL1hXwCPSV0vCGOjXk3iFwX2DyE=; b=1iYUe9jonu12nz
	3GRk7ym8GARlALmZAlG6HTXTuMFvcJHVrolxkF/72H9vWAQqO+qN6tQprKT6CSNxP7kz4+97d1sNW
	uAK807tC2plAi8J/SuB/O9vMjjaiD03Qxe7KmGYTr34zU7hVXqZKjmW0ptVWZo0MkBP0EzeynFTNW
	VOQU4SjCF1XTL8GhsTjB+Hi2fxXwSFjRglJr2LN1KpcJI2UpzMwE4GQDAAbWvC7ihYcJg4pU+fk1p
	BBw1lYDqVvgleQEEkBOeQk8siy4XuTB1KynFsMb3CKRfkHGEW/Ak8g1dwUDp5vR/hfp9f1lSLkkY/
	rSLgw2IPMosco/5rB2GQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyqam-00BnfB-Mz; Wed, 08 Jun 2022 07:59:04 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyqai-00Bne1-6K
	for linux-phy@lists.infradead.org; Wed, 08 Jun 2022 07:59:02 +0000
Received: by mail-ej1-x632.google.com with SMTP id y19so39798488ejq.6
        for <linux-phy@lists.infradead.org>; Wed, 08 Jun 2022 00:58:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=6Q5FdgVP8OZg3GIdsAYNEY53XcA8611Hl5+gVXO7790=;
        b=zs5M0PlpBU5Rj6lc+tLkYZypPtYKTDLqoG/rfhvJL9CckMAyBX+rVUkFz32AhJ/B/P
         qv5MtYuLNGlp3NYHhj63Ue0Z17SIZAuCFqIrpEl5Keoy0fWcxlWGOmDH0++bzcxxb3VD
         Ri8075DQSjzLNjZwsHrT8x3SH7JZ6sHDRSQcJW5SnsIgypZxhT3aoxgdeT0ekYZnEhul
         hCjz6j8BoNAVI2gAxS7D48YlOF5od+8oFa8e1w4ohUzJjaPtD2EqQ+DnExzbWDEnrS7i
         i74zBQKG+Q9VMFAkHsgJm7ftrBPOLMIpGJu67CkLmzOl0Jmk8yaRyfn4FY+NfLQhzeas
         MicQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=6Q5FdgVP8OZg3GIdsAYNEY53XcA8611Hl5+gVXO7790=;
        b=JOPMfKbneNcqw274kujckwPOl8bjR3mVw1PvYozxiTMrH6VQ6J+vWJzqO/P3lNXJFw
         Pg3EgnEnWVJ6txQ9eMNvmdeqI7MIp3LmeMW5mPuXEZjAwtDoLHZ7ch5l2oXF2F1uc+kA
         I+z9PKJCAqGIV5IJsuqpmOZQ9CiwrPHlUEghMfa9AhnBLki1cXcIFBYaq2h/eNhSmbrB
         5wdRdpuhp2BdnOsZo1Sqcu+dBVmP80HFALhgOYQAi+lDMH5SfthTUDne9faNFR5oNTWZ
         dAu/Pn1A2HZqfGFIKzZzLG2AFcJKo8rcULmrqHptcgFLq1VRs2YNd/c01hHqnouhKof3
         RgNQ==
X-Gm-Message-State: AOAM531vwzu+teMdWT4Of5/LBI1qFcKkxLZSs9w9GZo0DMsmRb0t11B5
	EHeUeS6Qn4xPBmP8PpL0jVxEiQ==
X-Google-Smtp-Source: ABdhPJzb/dsRL6rsb5Z4shOLN9Lbi+McEv1tdNHRTqEgCzD+sVevGLREksulT6tWaIIIx587nap+JA==
X-Received: by 2002:a17:906:49d4:b0:6d6:e5ec:9a23 with SMTP id w20-20020a17090649d400b006d6e5ec9a23mr30993322ejv.79.1654675136499;
        Wed, 08 Jun 2022 00:58:56 -0700 (PDT)
Received: from [192.168.0.188] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id y12-20020a170906470c00b00711d0b41bcfsm3584719ejq.0.2022.06.08.00.58.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jun 2022 00:58:55 -0700 (PDT)
Message-ID: <543f3e82-9016-9a7e-4533-53ec8d5f0703@linaro.org>
Date: Wed, 8 Jun 2022 09:58:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v2 1/5] dt-bindings: phy: qcom,qmp: Add compatible for
 SC8280XP USB phys
Content-Language: en-US
To: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Manu Gautam <mgautam@codeaurora.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220607213543.4057620-1-bjorn.andersson@linaro.org>
 <20220607213543.4057620-2-bjorn.andersson@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220607213543.4057620-2-bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_005900_283341_D8736E54 
X-CRM114-Status: UNSURE (   7.23  )
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

On 07/06/2022 23:35, Bjorn Andersson wrote:
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
