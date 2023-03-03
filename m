Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32CF4C678D4
	for <linux-phy@archiver.kernel.org>; Fri,  3 Mar 2023 07:36:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TFRtszRUZ4wBARKjtcx2eraKpvRne9UyOYRPsv/ieOE=; b=UDmsfCU0lobNX3
	4/rq5ZSNcpYanv0cAI2QtEFYHf4Sor4XQNCsgMMuM+DyVkykH7Qs7qP0KS28AMj4cnw88jzdAcJId
	InJ3wfdg35AO2JFV7wZbqARL+zzbKPQM/Dc9C6p3V4z6nsaAqDRwE+uHQz1z5gWFYYC+JDPQvA/Wx
	YXopvN9mUM9DTLT0WS1exwNlYftrysEp9Bh+3r94ka+8YrpHUwoR1q76UiaE/NaqXZweQWQ7eLE+1
	7VBVFWNijvl1kFejeE7LXLA29nen7KuhleSOLwe54k5EXvCjGog4YrWvHG7jLYqtXzqytxzgjGgUQ
	7P5g283J+kZ6feUjWi4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXzy9-005FYk-LM; Fri, 03 Mar 2023 07:36:45 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXzy5-005FXX-UK
	for linux-phy@lists.infradead.org; Fri, 03 Mar 2023 07:36:44 +0000
Received: by mail-ed1-x52b.google.com with SMTP id x3so6665184edb.10
        for <linux-phy@lists.infradead.org>; Thu, 02 Mar 2023 23:36:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1677828998;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lD3WNNJ/JfE+85airrus3P2fQXvOECA0Dr0b1uIncAs=;
        b=EFIsNG/S4zPvAcqQGle3ZcNvhRHSWWvyvLVlYwvOZT4vept/M+JBmXs/lQkcuWAS4k
         sw0wq/AL5ZD8zVeMg0jIXDbL5lPFAm3gpqRH+FSyZscUVI+xHFkoeJpll1rlM7AAp07Z
         1eOsHqOvIx/8jWQfV+K3YhwGUr31ZyHD6ovFvwSYveRI5pkLfNq9nMDO0i11ONWj0bNl
         bUOS0+c0V2UuhljB+ozn5OdgXbp+p3MCa9vQ7dEodQoT68iQEge45z7CU86Fyew/mP98
         QpZngUwUKBUZkFQvpd9WhxE/UpX8R7qflgV9CcwJhc3h/ZwEo2a1ThwbvEWFHFgl5s33
         y3VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677828998;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lD3WNNJ/JfE+85airrus3P2fQXvOECA0Dr0b1uIncAs=;
        b=HY2yK6/6Zslb9iaZzMdHiWA7Yu2wW+xlEO6OZD7xiZ5Ghx1UquJQUgBsn+JoOzZt/1
         NjRyg+O0dDbP83kd8uHv3PQh6LjqVtIAyMNMlPiBkRF/NqV7jyOksAHNDBoamjtuokr/
         IK+D7FfHL/WGc6138YIhBOHETKXul+TCTYZXcaQvvz1Tz5B652NM/DmlxR2UPRRrCfVa
         yGK/EONS4csGXiEZe5d5h1g5snSlhBCa+v1BTIdM70FbhcANZ4QFkV3QsFfFDIcnghxX
         MzO+V+4045Vpv5c8X1h8d7c+YvQmS/+7tyF+ZajXVJgTnGMMSGER0VzbZu4i6DL/1aN5
         MVLQ==
X-Gm-Message-State: AO0yUKUZ5IkysdkZ+etlbzixZIa+s0e5oosplwISLDM9cShsiIOnwc2i
	p2Od756dgB6xU4BDn6JJC9RSLw==
X-Google-Smtp-Source: AK7set+9A34NkjNW8rJpLhB8K7vzbcrDtVYTZXH1WEFeIMKOJ4DUIKMu4acyau4x2tvUISZ7f3EW8g==
X-Received: by 2002:a17:906:4783:b0:8b1:fc:d737 with SMTP id cw3-20020a170906478300b008b100fcd737mr1051626ejc.19.1677828997912;
        Thu, 02 Mar 2023 23:36:37 -0800 (PST)
Received: from [192.168.1.20] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id v12-20020a50c40c000000b004bb810e0b87sm824867edf.39.2023.03.02.23.36.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Mar 2023 23:36:37 -0800 (PST)
Message-ID: <5dac3aa4-8dc7-f9eb-5cf3-b361efdc9494@linaro.org>
Date: Fri, 3 Mar 2023 08:36:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 2/8] dt-bindings: phy: qcom,qusb2: Document IPQ9574
 compatible
Content-Language: en-US
To: Varadarajan Narayanan <quic_varada@quicinc.com>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <cover.1677749625.git.quic_varada@quicinc.com>
 <70beab86eb21d1130e61f52753f514cfb433a4f2.1677749625.git.quic_varada@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <70beab86eb21d1130e61f52753f514cfb433a4f2.1677749625.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230302_233642_028357_607ACD7C 
X-CRM114-Status: UNSURE (   7.05  )
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

On 02/03/2023 10:55, Varadarajan Narayanan wrote:
> Document the compatible string used for the qusb2 phy in IPQ9574.
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---

I just acked the same patch... what's happening here?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
