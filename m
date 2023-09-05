Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62494C83F3E
	for <linux-phy@archiver.kernel.org>; Tue,  5 Sep 2023 06:54:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zM87MXfCIpTn0IuDqCn80uDlmOzm0kjNMwrq7+iYmVs=; b=gLpJUlAVxoJbg+
	XxQqaNSGjQ6ta2kDm7lvL4imtSvGYNwy1/5bW/D4QtK8ww8FAh8njftFmEeQyKevYn9tVdb9oe5ks
	iArWVuu2nv3RDvhD4sWUREjjyZtgzylvjwV9xHuo/lYW4HXZQijS0eKCmRsnNet768tBNAZUMlfb9
	UkdJ5GN7QvrVsPD7mr8oJeHiuU4uS0s41OEYwyH0qeaXZCkIkbALmIu4YKmXB0u+zcFHoGrs5AcAU
	LYo9FNuVmGLw3hmZ5vdszLm9neT1jadBwIQNuDXyJAAOw90FcqIQ81+KqH8LRPiuXdJZAsx5aycYQ
	Ypsn3y6wjeRFAJPKDDvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdPxM-005N1C-0O;
	Tue, 05 Sep 2023 06:54:36 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdPx4-005Mto-2i
	for linux-phy@lists.infradead.org;
	Tue, 05 Sep 2023 06:54:19 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-9a58dbd5daeso323938966b.2
        for <linux-phy@lists.infradead.org>; Mon, 04 Sep 2023 23:54:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693896857; x=1694501657; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CnhlhLhE/Awy7OSGd1LKlGWZhliLjEnOAa8ccfaPRH4=;
        b=a1xDxM4QvfLn0Am3GmsPNPkl7M5BdRw+9vSbOd3Q1bnv5n2Q+5BVT+7/B2IUjSmdhO
         yaUX7d0aXTIy1YMqVkYYqPJGhNj5fsEH4nNhx7CektUAHI2nKOezk3NN6Kq60xxAhDsX
         6VZdadI5ViBLcX3vYvcihsF8dXKwIZEbQp/Kzf6wOwi6tqotfR1rFdii+DEt5s+H1Vhz
         beYkNKz7rU+4iFnxN9ZEzKP8N1MTfWhRufBrfH+gHVylglue40IUcp/wQL0YhC3kiIsc
         uJhPFcQDdth13qL+QpVp3UCzL518LKRFD1WQBUMQb8YNDYp0kL6vuUl1MIbMETf2YkTM
         0Rbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693896857; x=1694501657;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CnhlhLhE/Awy7OSGd1LKlGWZhliLjEnOAa8ccfaPRH4=;
        b=AESp8lRBilawHUj2tj5oG7vwYX54dcy93hgQ0vJSanS71Qp2rlMmx/TYICGQnKkoI4
         jyFBR4ofk0w/U14w/4KIgKk71sEuK4rF3vnjoUNnJcxSaIlrRKJNk3fa6H5drPLNRYY8
         5ke/YNMC1uafFKtMSe9YlFgjIbKNvjl47FMhGZbOm5RvCeUAyXUbDVBMO6sUQE4TmXZ5
         BjlXFaedCBe2G2YkURxjHEKGRgqx48qXXe2UIi/YuDJnLsv6WXl/JaFCi/eQTvK5sJ+x
         NIg65RerEYXrXbHpmmNhZmSW1nktXdedcw8BXCSqQC6tPK+9KSHV4DriFlmPg5QQmDVB
         Tpkw==
X-Gm-Message-State: AOJu0YyJQTJIdOBR21i6twbzBOOF3arZQrwLKCU+t+NwAocLCZLueDQP
	jZLMpTzyRhgnz06J3r7FKTDv4A==
X-Google-Smtp-Source: AGHT+IEnUt712GLa7l6H3ls8ICRUbtE/Y6r3iAIzhxkPkhXkmuW0uCxLL9ywUhnD4fUrSBpo+16v7w==
X-Received: by 2002:a17:907:2cf1:b0:9a5:cb18:3b11 with SMTP id hz17-20020a1709072cf100b009a5cb183b11mr8093371ejc.17.1693896857246;
        Mon, 04 Sep 2023 23:54:17 -0700 (PDT)
Received: from [192.168.0.22] (77-252-46-238.static.ip.netia.com.pl. [77.252.46.238])
        by smtp.gmail.com with ESMTPSA id g24-20020a170906395800b00992e265495csm7161204eje.212.2023.09.04.23.54.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Sep 2023 23:54:16 -0700 (PDT)
Message-ID: <f348a896-93dc-8181-adfe-77ff73ae6c3a@linaro.org>
Date: Tue, 5 Sep 2023 08:54:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 4/5] dt-bindings: usb: dwc3: Add SDX75 compatible
Content-Language: en-US
To: Rohit Agarwal <quic_rohiagar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, gregkh@linuxfoundation.org, abel.vesa@linaro.org,
 quic_wcheng@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, kernel@quicinc.com
References: <1693889028-6485-1-git-send-email-quic_rohiagar@quicinc.com>
 <1693889028-6485-5-git-send-email-quic_rohiagar@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1693889028-6485-5-git-send-email-quic_rohiagar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230904_235418_878256_A66E647D 
X-CRM114-Status: UNSURE (   6.35  )
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

On 05/09/2023 06:43, Rohit Agarwal wrote:
> Document the SDX75 dwc3 compatible.
> 
> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
