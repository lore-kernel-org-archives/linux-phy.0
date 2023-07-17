Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 003A5EB64DC
	for <linux-phy@archiver.kernel.org>; Mon, 17 Jul 2023 07:23:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D9lZ/y/76+NIY78Q+gedLobBWyU0P1Sz5KhCngoEexI=; b=wU7XfZhYMkEIN/
	8xJ7Q4SD2FDcJrf8GlGKrKIDI91liJ4VYaDHvXUG/uObdw4U/rIUVnPB0Vo54cQ94rfXi3k5bfgYW
	lAdub50hc1YbroCDfPSoENvAtAA5f7icrhTpfifBiFhBHw/DeEm6cahIhWTlrtJc0+GGitJkmJuDL
	rL0gYn9QZQPwUYlRRUiMhFdi0GFDGrEQ97gEk0lOshcR8hsTHwGwdf9aBssNBa401gC/C9/4FQ1Nj
	/aJT+NJz8JDL3Z+kAZjK4AS+96J+n1Gz5MojgTyh/x7lbVg/xKydbhhwIVt/qLO38O8YWxNz9oQ4K
	fWfT9jP9OF+0s4yvMxkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qLIZW-003IeP-0U;
	Mon, 17 Jul 2023 07:23:07 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qLIZT-003Ict-0m
	for linux-phy@lists.infradead.org;
	Mon, 17 Jul 2023 07:23:04 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-9939fbb7191so859200666b.0
        for <linux-phy@lists.infradead.org>; Mon, 17 Jul 2023 00:22:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689578578; x=1692170578;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eXlP1v4JTk4UUlDV9gDMep4PAb7EC7+xlKa8eOSv/7M=;
        b=zQ6MmYV5cXxNM6W6B0gYcQ6w1UZyWe0xI+RV5oJrvm/zz56RpmxjJCk34+2iYuz4gU
         Xdulo3ebNzZa/bqpUBDiaiM7oAcuavJvbN/Spyh21ivfjZY9EuClFilXLHOTlyGt+bcL
         dFQ4HZzwRLMhe0ElaC5OyYKoxEzGFZhJFffMoQhRFNfEeepZFEZtfkv7Tn8YIpyTs5KO
         MxFfbwyNcsMQUJwz/V6ggfe5Ja1n0KazYjd85aanB4QC05e3Hnc0I9CjzAzEc4jEDVZC
         ONGy75QaY2zAloTWL8fGznepFMQgPKVmbBsj+CjQwMhR4Ac917aNKfq9ZQ2ujMkXWamE
         v4bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689578578; x=1692170578;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eXlP1v4JTk4UUlDV9gDMep4PAb7EC7+xlKa8eOSv/7M=;
        b=J6w4cGeVnE5qfFIYBVqXI7aU0mIrG1gii3OxDp8r/27eeP1BUK/cTPyjmNUAIxwK5H
         dgswcwwwhQsYdhWYFaTGivstmjZoaUusaCGIMdNDxtB0Mo7wIYUEgZS5TkvTM6O3sd1a
         5iT1ze+KH0AfAsW2FoBwISBa0kHNrzoxW/3wyahOfNKCBVU4SqjR/O/T6s9MdXBJopuP
         HSFxmP7ff7lLUX0dLjUSV+mnCeiB+ykrCjSKjn6AxwLyd5L5NtEDsxJ7eWZX88Gbu8Qz
         pqPZdTsQvVg6NChzMBx3PsrS4+QezEJu8J5zXivAOm9KKzkZN4un7cM3RW/Iayy4lM5z
         7UxA==
X-Gm-Message-State: ABy/qLYesf5gZOlCgSusC1RaHAtOKqg77RzfrvmAzyH8H3du6z57uhQ6
	/TQ1p5dhsIRa76qLUmE3uiMBPQ==
X-Google-Smtp-Source: APBJJlEcoz6WXD4iI09YndhO8+x1wDKKRnsWKBeCe0xmhQcsXEcH2WLxt/q50EyQEchb2dGtCVoxMg==
X-Received: by 2002:a17:907:3f1b:b0:96f:9cea:a34d with SMTP id hq27-20020a1709073f1b00b0096f9ceaa34dmr10446302ejc.21.1689578578593;
        Mon, 17 Jul 2023 00:22:58 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id va28-20020a17090711dc00b0099364d9f0e2sm8775550ejb.98.2023.07.17.00.22.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Jul 2023 00:22:58 -0700 (PDT)
Message-ID: <56feece9-b5e2-c00a-b2f0-b706e4d19f71@linaro.org>
Date: Mon, 17 Jul 2023 09:22:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v2 1/6] dt-bindings: PCI: qcom: Add sa8775p compatible
Content-Language: en-US
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, konrad.dybcio@linaro.org, mani@kernel.org
Cc: quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com,
 quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com,
 dmitry.baryshkov@linaro.org, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <1689311319-22054-1-git-send-email-quic_msarkar@quicinc.com>
 <1689311319-22054-2-git-send-email-quic_msarkar@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1689311319-22054-2-git-send-email-quic_msarkar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230717_002303_487099_48DABCEA 
X-CRM114-Status: UNSURE (   6.48  )
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

On 14/07/2023 07:08, Mrinmay Sarkar wrote:
> Add sa8775p platform to the binding.
> 
> Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
