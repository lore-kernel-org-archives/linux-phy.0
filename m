Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D6D2C6FA8B
	for <linux-phy@archiver.kernel.org>; Wed, 21 Sep 2022 07:32:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gFT+5dun75tjVYlHkvWWXpzGSmviqwuCekBnYB9lYrc=; b=tdpjN2YB6tl/Mq
	8wvu3ZAtCQE1zHze28ObaV+4wMxdf/OF9q4bZrUzvifW9jg8itVhjDCzsPXigTqSdkInQmDEr0Mt7
	K9fpkJ81axKBfpXjQ6rUHTXw0NDLs5KD1v7AGhM59ddQXB5M2i2pHZcL+B759R/avbUfh+T4vVkQu
	7K9mJLmzpgQQuSvEcM/VL/U2EekWE0TcoN23FLx6vaovS7VW4kEQDxAysdF072UkA9fRwgxVhbbSX
	fDH9VMTPSXP91RAR1vRX1Jy70nIeT1rv9Y5a336/ehyGrNniyluUguUFEUJNx3CYLZ7ULTUryL8d8
	6obeaHlZotHkcNaney6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oauDQ-009cQM-Ej; Wed, 21 Sep 2022 07:32:16 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oauDM-009cNT-AL
	for linux-phy@lists.infradead.org; Wed, 21 Sep 2022 07:32:15 +0000
Received: by mail-lj1-x234.google.com with SMTP id p5so5852066ljc.13
        for <linux-phy@lists.infradead.org>; Wed, 21 Sep 2022 00:32:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=vm4eJTSpc6O1WAM7eQFYsV4Lw8COabTbtSgO8uczCo4=;
        b=M4G26pUd7wx0NR7FjV1bgtfFDzbOixM/IK3O+a35xXVzku5pXuQKodHrD08QdE+qt8
         MefOjT4B7Byct7QQEu2kDaIWU/JF3Vq+CqX+BqL2h2wyMP8XKG7mBbXM4z4ZJ4vUOzzt
         p/n4FeNjUTN75bmjxVPfFznXAJmOQEuEr/1gAi1hZjlIwKoq9kEupmOHygSI4xb3txLN
         qGhoKs4bOolDaIrymmn1EnZEye9HtczA9Xg0gDSwGYf4BZ+LLNZZFOgD6i6/n8Nh15z2
         JHk9lWPPGYdYzfZ+v/eCd5cfhS2M09hdK655zayT2Mvfb7AnaxqmSP9hkZExle6E2kgh
         pcTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=vm4eJTSpc6O1WAM7eQFYsV4Lw8COabTbtSgO8uczCo4=;
        b=fF9OTMN+axqVE7HbYcxaKMP8J0DKm7CH1hrYYSKojFs5iOn5VUffEe9GJ/CYLncxo2
         snhk+cMcXwmmoQDfLMfx8VhUyLKK1uRD+1Vfa+KtylTyJZBqYYNHoCpBbK8OT0h+55oL
         f8FMG9OA7pp2cUQY/8Ls9AAs2zlU9wAyHfIUV4oU5vshCj7vialr47O8Oj9Mv+Ie0izG
         daAWi55dhY51ZQpptRh1w/iRK7vHnlyMQsNG4FiUpdry4WEFyx0AcN3RgzROx3cPg3o9
         TzX6/4xlehRulGactYx0egIf3Ttq2uLCgKO3hHr4OwfvO1vxIFGUbNlC0Fv0XAuJB4/p
         0Keg==
X-Gm-Message-State: ACrzQf3+IAyqQfDCkP0TGXvOHfPYjqJR0FZm/ZdSM2N0bT53rWobFrCe
	Icqszc1h5RPtdtxk5RnUFnEs+w==
X-Google-Smtp-Source: AMsMyM5FCiOeqrMuyCbj+xsJx+1/Q42dDN95D8GEYUkaF0/eIOZxtFl7SILU6Gi4T7/nzrRRziwrnA==
X-Received: by 2002:a2e:b8cb:0:b0:26c:47b1:211d with SMTP id s11-20020a2eb8cb000000b0026c47b1211dmr5464601ljp.95.1663745527584;
        Wed, 21 Sep 2022 00:32:07 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id p9-20020a2eb989000000b0026bfc8d4bbbsm310139ljp.125.2022.09.21.00.32.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Sep 2022 00:32:07 -0700 (PDT)
Message-ID: <efa1b1c4-655c-ceb7-47e5-61f91d86dde5@linaro.org>
Date: Wed, 21 Sep 2022 09:32:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 1/3] dt-bindings: phy: qcom,qusb2: document sdm670
 compatible
Content-Language: en-US
To: Richard Acayan <mailingradian@gmail.com>, linux-arm-msm@vger.kernel.org
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Felipe Balbi <balbi@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-usb@vger.kernel.org
References: <20220920224320.152127-1-mailingradian@gmail.com>
 <20220920224320.152127-2-mailingradian@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220920224320.152127-2-mailingradian@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_003212_417843_89766238 
X-CRM114-Status: UNSURE (   8.33  )
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

On 21/09/2022 00:43, Richard Acayan wrote:
> The Snapdragon 670 uses the QUSB driver for USB 2.0. Document the
> compatible used in the device tree.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
