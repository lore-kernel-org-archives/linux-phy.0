Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36D89C7619A
	for <linux-phy@archiver.kernel.org>; Wed,  5 Apr 2023 06:44:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0qLCTdFMpT5jPk2VLcSS7uJv1fefRO3IRRB4sw946VQ=; b=Cs26lXhCRWpJ7S
	AvDwFSDtfH1Fu3dFae48ZTvqljCtJFA/2s8GPCnIoM3ZCLhoWdY2aIOdbG1AI0/2RYG0YrkCkb76c
	0UYEBXVI1pCqQuiEt+KVZpTVVbrPVS14ZA8/7HOZcwVhI6iA3fG+/Y6sZMAb9PMofQ/fyjr23bi4S
	1HhAn1FWytEWjqHrp9MBdAPZ5FOvydinkKP76BUhsUc0acE+XH4mcG7UOeQ80dolwMlCtI/aTR3Uy
	apEEm7wA0rmXFSW5aGC1Fl4LnAlhKL5/bY9zbx1dvAGdnB392bYkWX/sLEOPpcHlirGVg+EgYFGXA
	btoB5y7fG07iajaG6sbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjwse-003XaD-2H;
	Wed, 05 Apr 2023 06:44:28 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjwsa-003XYQ-34
	for linux-phy@lists.infradead.org;
	Wed, 05 Apr 2023 06:44:26 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-4fa3ca41384so185350a12.2
        for <linux-phy@lists.infradead.org>; Tue, 04 Apr 2023 23:44:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680677061;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PzMtt/+vqlhPhKEy36o5CActC8iYX52jJaVN8GSnXcQ=;
        b=LfovZoCG2SVqRXzMoF1BOW6WOu641pUE4VOtpxBuEznEagbZ24i0TdaKpsn5OhzW95
         8JqUDJPHnp4MFU4N79WFdH2qGjFH3+bj2EgkDosnGb+hC+NVENzgGI7cE4RzkaWW0UmQ
         1BvKC8+MTTiCDXrRpaF2XuaZqhkfcgRjUirRI0Ps9o9lj2J/9L1GNNUzSn6ufafNJCj8
         +0BRjxSq1yNNaPflfYv9CXvXI9vOT2XDZ1eA/i/WwAB3LQ0Nb1yrYI3kHQTtehA+VA+C
         OsUHrc0/CRyrFn818/QPhCuUsfuPRR0TiAsk/SjhMjeod/gJJGynLlT43WFmUpCt9jCz
         0hVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680677061;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PzMtt/+vqlhPhKEy36o5CActC8iYX52jJaVN8GSnXcQ=;
        b=7vw8AsKScXoLecs7dOfxQgjgfrcKTmggm4ZOvLVdLDMpW9BeNz6uaD3RBOueogqVmv
         5HVUN+3Ao22ErJ/vBG+lKqPc7E2j8P+tuw1SPbdYVENvG4Ee6+AnW/XAHqgGc2/OydCD
         lcxTATF1hgg0RVgWBVoJnisEmTLi7taJMpU6bQgnB3BqzSxIUxtGKSvhJ1hOZhI+KcVi
         FfVBoWbA0evoNwmgmY2ZgNRj/QEeY1/bAMEd3UHOB6UH6o7tVnVfi6yNZxNL7cwVoSrt
         H0ktQn+/kTiCTPvyG8+JBm+YiTbsJjA5UlqFol2NV2n6pBwitDWLpuIk02sp2Xq3WjQ3
         FmXQ==
X-Gm-Message-State: AAQBX9dh+H/ihr5R2p70oriUHU8ou6m4jsM7NNmDzoluC6sRhwKWX7/J
	/CsjTUJorfG0q6y+w3FxPdtAWg==
X-Google-Smtp-Source: AKy350byi1qoH8xnW36dqj5Cus1D3+6KM4I460DlQJAFckUuaVBla6hgAtyHzqnYArOvUhdOQBgFKQ==
X-Received: by 2002:a05:6402:10c3:b0:4ac:bde4:ff14 with SMTP id p3-20020a05640210c300b004acbde4ff14mr870989edu.42.1680677061020;
        Tue, 04 Apr 2023 23:44:21 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:3f:6b2:54cd:498e? ([2a02:810d:15c0:828:3f:6b2:54cd:498e])
        by smtp.gmail.com with ESMTPSA id z95-20020a509e68000000b004c10b4f9ebesm6829736ede.15.2023.04.04.23.44.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Apr 2023 23:44:20 -0700 (PDT)
Message-ID: <c674def6-f4b7-c6bc-6688-9f8c65c441b3@linaro.org>
Date: Wed, 5 Apr 2023 08:44:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH V2 1/9] dt-bindings: clock: Add PCIe pipe clock
 definitions
Content-Language: en-US
To: Devi Priya <quic_devipriy@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, lpieralisi@kernel.org,
 kw@linux.com, robh@kernel.org, bhelgaas@google.com,
 krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org, kishon@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, mani@kernel.org,
 p.zabel@pengutronix.de, linus.walleij@linaro.org,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org
Cc: quic_srichara@quicinc.com, quic_gokulsri@quicinc.com,
 quic_sjaganat@quicinc.com, quic_kathirav@quicinc.com,
 quic_arajkuma@quicinc.com, quic_anusha@quicinc.com, quic_ipkumar@quicinc.com
References: <20230404164828.8031-1-quic_devipriy@quicinc.com>
 <20230404164828.8031-2-quic_devipriy@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230404164828.8031-2-quic_devipriy@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_234424_989668_775EE204 
X-CRM114-Status: UNSURE (   6.06  )
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

On 04/04/2023 18:48, Devi Priya wrote:
> Add PCIe pipe clock definitions for IPQ9574 SoC
> 
> Co-developed-by: Anusha Rao <quic_anusha@quicinc.com>
> Signed-off-by: Anusha Rao <quic_anusha@quicinc.com>
> Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
> ---
>  Changes in V2:


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
