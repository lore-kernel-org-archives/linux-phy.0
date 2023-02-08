Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C5E7C636CC
	for <linux-phy@archiver.kernel.org>; Wed,  8 Feb 2023 08:38:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qmjaS23ggyLH6LGLh9TpBVeZIX4cfeB9kowfiyb34fg=; b=ROX+u3YWT/HYN2
	OzcFC6e30Y1CL4Zq0TvxlEfiZQvgvK7ecBkPYyhLoGqa16eiMODdkhB/5ShqRgv+n4jgEV8COXADQ
	HAaZ27Kq9MsTlcZa0pvxqmyGqBSLv2CW1koAAGLp+BLc8yp6SopbZ9wSnlujPNex3+58pSKdEN0mW
	c5rKnDDAjsyogM3evo1elGrHGN+alCnPQ0w/FJpAcMRy5NFyAm2B6iNZ1pfbRFwpP+vTF7ZmCje0C
	OAp6IM4pRYIlG2TxCr5LFmF0a107up9W52ebzyL6tyVEkHTxxewtLAAOMQCDNb0f/suYmK9Tbwtvg
	Q3lrLDxKw3oQ6xCNo6BQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPfyZ-00Ed0A-L4; Wed, 08 Feb 2023 08:38:47 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPfyW-00Ecxi-Jz
	for linux-phy@lists.infradead.org; Wed, 08 Feb 2023 08:38:46 +0000
Received: by mail-wr1-x434.google.com with SMTP id m14so15902588wrg.13
        for <linux-phy@lists.infradead.org>; Wed, 08 Feb 2023 00:38:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HTBw1Zblvv2nrDTct5adacGjkowCixqI+GvXz5iW4TM=;
        b=jV5jcogrDrf5c27u6mYOwI1xN1OlcXwjJOWUnlgKGTP5h+a8cjk9W4E7Z0nGq/k6Kw
         AzIPdKFv5Mi+/7xJJqrR2p89L8x6le9/k5F/qKQGk5ZrAXEaaY7j7BHi7PGAlUPOT/EF
         SsiQnSLqCmmwi9EB36a+hBDsLBQ/mGJ9wTZCgd7/cp1t/rA0AithnLKDPPjMG0Mu5Y/O
         PvBnwjzZru6xuJHvL5heDCdq2GDwR2FqSEJbZiKANTNkA1PgVbAkBdy6fnPp36x9BGqU
         qYx1222YcXY6RfLpOq4kIChnhuEB96zJUS0AoGm7gcOO/rPIpzX4IeQFLAkWrU5diDsP
         YJMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HTBw1Zblvv2nrDTct5adacGjkowCixqI+GvXz5iW4TM=;
        b=7iiLdfBKo6M4UFkwQXhWIErld2KVlHWrJE5rSftWJb9jKREd0cUCpnLTiOnqHw4juv
         4NybFi2Eas5dBaUKHaqekksKV8C55HqaT2jWgoD8Z5bxPsYqSx01sHKrnCMLRkuuqs5e
         w1moKAQR5W9TcGA/Q2zPCci1sS2gyDGtn2xu83d1B5//XiuotDXln3VajUU4L/LPCoFd
         LDWLEcxyl/SR0JPy4ysFleoDW84aIHdiIiCFMZWffYfzxp92mw51xPw8YrAzGWgiiDJi
         KZXrf4xoxEMUwSHusyisCufA+J6udswXN9T+B+Kp/0NPs6ohMbVidLyWMrh/o8rlR3gj
         kaLw==
X-Gm-Message-State: AO0yUKVgh8rUnMdXtNsDOaVr5IK0QuAZY37pAxeAo2ChUwy+QLzGW/3I
	lYCIqKytHpv2gqdeHcsbXrcxMw==
X-Google-Smtp-Source: AK7set89BMaKU7qp6x+H63/n7/aMt8v9/7EhbTePh9/0iZ9YlDP5pQi+M4qn4sPZjbTtJEGE1jKDJA==
X-Received: by 2002:a05:6000:10d1:b0:2c3:f903:8d1c with SMTP id b17-20020a05600010d100b002c3f9038d1cmr1278667wrx.57.1675845521015;
        Wed, 08 Feb 2023 00:38:41 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id b7-20020a5d4b87000000b002c3e65c9533sm7641913wrt.67.2023.02.08.00.38.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Feb 2023 00:38:40 -0800 (PST)
Message-ID: <a45ab9ff-9820-7def-ff1b-2186592256c0@linaro.org>
Date: Wed, 8 Feb 2023 09:38:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v4 3/7] dt-bindings: phy: qcom,snps-eusb2-phy: Add phys
 property for the repeater
Content-Language: en-US
To: Abel Vesa <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Lee Jones <lee@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Johan Hovold <johan+linaro@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <20230207135551.1418637-1-abel.vesa@linaro.org>
 <20230207135551.1418637-4-abel.vesa@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230207135551.1418637-4-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_003844_679565_2C7481CE 
X-CRM114-Status: UNSURE (   8.14  )
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

On 07/02/2023 14:55, Abel Vesa wrote:
> The phys property is used for allowing the eusb2 to interface
> with the repeater, which is modelled as a phy driver.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
