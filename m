Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB878C77B60
	for <linux-phy@archiver.kernel.org>; Tue, 28 Mar 2023 07:02:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TSwx/WjLmD+NC6LRXzkpYnW0O72mPC5B9UUFAz5QROc=; b=0Wwk8Yzuyuhgyv
	/w9S2Qouh/6SZncAt8+tOInIK/CeBaN5L2XQQgA4OUH7ZPBdv0h8WKmEB4rTS5SsDEaOMsKNTng9f
	l/0SsD6YhJ8H7N+Z3+XzGB2bQosEVF9h0BbmDquNlOHctA8y6G9MKItO5ugVNV4N4a6gAv+HoLkDf
	FLhNIMA2TH6xIMGA8OJErUTeRn0c5r2wGniAGFY2tYnk6NmAJfPlV7zmBttRJdXvR4YcNm9NJ31HV
	rMkLNykYO4Heyeg5QPVEUFdUDn1a944elWXSkDB/MgJDm6YJWjJ0SVbxDrtr6DjKY0PDKxLMHHHjh
	DBBT2zpZ5wZ9NMvNoUiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ph3Lt-00DNmh-0s;
	Tue, 28 Mar 2023 07:02:41 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ph3Lq-00DNmO-39
	for linux-phy@lists.infradead.org;
	Tue, 28 Mar 2023 07:02:40 +0000
Received: by mail-ed1-x535.google.com with SMTP id h8so45500681ede.8
        for <linux-phy@lists.infradead.org>; Tue, 28 Mar 2023 00:02:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679986957;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hkwkB1IOUizr4S/0ONFCLf+IutuTlaBX/TM2PaaHsOM=;
        b=aAtoM7aio2BrVX4oMHg24j7vNM9V1UdcWt0xxqNWSs9XY+6mmWtd5RPZMbSr2B7czj
         SdYCNc9mHu8x44IllDD/t0kYtgEdD66HnDGRcVh5hnz9dQb9b0HgvcFUPyooGGZQQP+N
         lkl8BgWyLaUL0F74JJOIw682m0xX7jwN5NW/iPRbcTcML1uhsBgC2WmPIAC3r8V2DHCu
         Qa/J3XTF73XJSBPUn7vjJpLslwZ7oqhhf57Iv5aQm/haEi01SlYhyUnVuwP/S8LTfiuW
         Atm2eOdMtnUzWtXB1f8okQAkwsRlMIPUpWLi/JPmkgXrisCmhng6eoAiWNw4inMRGIwX
         z6eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679986957;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hkwkB1IOUizr4S/0ONFCLf+IutuTlaBX/TM2PaaHsOM=;
        b=7lU60s97HHEcZaiUmGr0B2OFNjchllRqBIvWS1sGPVxmDATbd30f2rDLJbjw0+PPYC
         Vg4o8VftRoVMcccJvNaz1UzFY5lB9zKn2DM8A14NV6NpyZ08DW9NUtr/bBIBr3p4Rr0o
         owr/JpLX2jB0uH8kZ+QytLS5AwQqoef5XSfrzkSC0CP9nUiuAxExhmSjzuQNAcZTH7na
         ewh6XwKD7mUbawpff3HbHz/Ej9ozCiH7tsqNZHBcxEs5X1yA20Cpvhy6n+x8z1ZHSeP6
         5/0WQ67sLTlXERc5HT4fgs4+4xliXHlAhBe+14JnAOXtBI5Ml0et16fHh7mX37U3eoZV
         yavg==
X-Gm-Message-State: AAQBX9e4R5l/GeB0hmkI6OPj7D70TWebeDfgtth4xo4O6wmKwv8YbUZ9
	5wP3SSXsZgy6HusZtdQzdgcuGICJRJp6g+2HaII=
X-Google-Smtp-Source: AKy350brS2jtniFEE4b8VHybYOiZvs42ORL5r9gpMBXcc4xEYpjeqN1Io+5Sv63vBgM18MNHBJ03Ww==
X-Received: by 2002:aa7:ccc7:0:b0:4fc:709f:7ab0 with SMTP id y7-20020aa7ccc7000000b004fc709f7ab0mr15297397edt.0.1679986957175;
        Tue, 28 Mar 2023 00:02:37 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:9e92:dca6:241d:71b6? ([2a02:810d:15c0:828:9e92:dca6:241d:71b6])
        by smtp.gmail.com with ESMTPSA id u22-20020a50d516000000b004ad601533a3sm15614931edi.55.2023.03.28.00.02.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Mar 2023 00:02:36 -0700 (PDT)
Message-ID: <72f744cc-21ea-0eab-2778-53ec0f3e4964@linaro.org>
Date: Tue, 28 Mar 2023 09:02:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 1/9] dt-bindings: phy: migrate combo QMP PHY bindings
 to qcom,sc8280xp-qmp-usb43dp-phy.yaml
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 Johan Hovold <johan+linaro@kernel.org>, devicetree@vger.kernel.org
References: <20230326005733.2166354-1-dmitry.baryshkov@linaro.org>
 <20230326005733.2166354-2-dmitry.baryshkov@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230326005733.2166354-2-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230328_000239_036725_48787788 
X-CRM114-Status: UNSURE (   9.15  )
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

On 26/03/2023 01:57, Dmitry Baryshkov wrote:
> Migrate legacy bindings (described in qcom,sc7180-qmp-usb3-dp-phy.yaml)
> to qcom,sc8280xp-qmp-usb43dp-phy.yaml. This removes a need to declare
> the child PHY node or split resource regions.

Thank you for your patch. There is something to discuss/improve.

> -  resets:
> -    items:
> -      - description: reset of phy block.
> -      - description: phy common block reset.
> -
> -  reset-names:
> -    items:
> -      - const: phy
> -      - const: common
> -
> -  vdda-phy-supply:
> -    description:
> -      Phandle to a regulator supply to PHY core block.
> -
> -  vdda-pll-supply:
> -    description:
> -      Phandle to 1.8V regulator supply to PHY refclk pll block.
> -
> -  vddp-ref-clk-supply:
> -    description:
> -      Phandle to a regulator supply to any specific refclk pll block.

What about this supply. It's missing in the new binding. Don't we need
it? Isn't it a real supply?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
