Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07445C761A6
	for <linux-phy@archiver.kernel.org>; Mon, 27 Mar 2023 08:00:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mNyeCPJKcSCn8XiIRPBvWWFf9ZzpVHRlutjpG13YaBI=; b=jV6hCv/n4bgY9+
	Xm3P1T0gr+OMEaHgNMTaeynfz/kpzc8MumnrFhSC12lH+VezNEE6pnMpWA+GOCoOBEEYjZS3Z2FvG
	Sh3eVqU7uClZaqlfKPOEva5TfXWEanCoR1FJbgBHdURnS/+pFDZ1Xmy1JodZ9ikdgneZTHB5C8IsF
	F8+AwsbA2OD/mywgDAxBYF54MbBzjCei3o5E/fV1lEcQVMzZivYyjjk+XUFQPqAf8aFCoeO6L3t4K
	dkD4IwGYe/8TmhcIAaeHVl8vb+o/8UhtSZppanxX/fRpNS5sezQTxY5H+LpIQwtyCsTrS53hbTu4S
	86UPTmXWPDhZ3Cy6ScQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pghlp-00A9HV-28;
	Mon, 27 Mar 2023 08:00:01 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pghln-00A9Fb-1X
	for linux-phy@lists.infradead.org;
	Mon, 27 Mar 2023 08:00:00 +0000
Received: by mail-ed1-x530.google.com with SMTP id ek18so32174121edb.6
        for <linux-phy@lists.infradead.org>; Mon, 27 Mar 2023 00:59:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679903993;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XHOxcrBXakWRojG1XHykriYxl9yThPhcQl3Zlslh+rU=;
        b=LhgGG6zPEbHJGJ79wJyGVGjbvqnn4JUWIHlOBdJn2QsOz2K+SvTDpb1d6GduKwh7G1
         yKaHcGpSQQsjD21kHuYjx8U/fVT5H76w3frFQmBE9ceUfVJS+g+t7BWl5Bq5SYONZ7AO
         jRcdn69iiBJHY1ZwnzmdrOh4PvdUSdk09Lmg6i5N3pgUS4+3S1Bk8i7ICS9cxmiC8Vma
         HaeqwqVxMfYAu3fOy53Ts9PjU1oH2Y6bCQobdM20nM2YXN/GZjb5peuSOwOgnusM4sN6
         Q7IukYaIV8cYBTJvMh2HKWWzrNUNSNduR7syg6VX4n/Pbd2tdEoudP/NQ+pej062tINk
         AKDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679903993;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XHOxcrBXakWRojG1XHykriYxl9yThPhcQl3Zlslh+rU=;
        b=DWm2dK8THR9KCNDj/OVUxvbjpwHkFAite1LTuYE0zsQJH5r3EgynhtljWP1Ob3OtRK
         kqNT7LRemz8PdvHOz08EjCtgX+6B22wYc4SU3tIpHTh2Ti+26YMl5gpCX7MJwNo6BMAl
         DuypWN/vME4zenxYISov8FCMMxKib2sGY9sY6NagjphTzwwBVUM8snBbAnLLMswWjt6u
         w+GA+88lgHRz7DWN2tBwc09p0kN2tEZFP/kUurioRXae4QVYkmUogoc9RJYMQHUwjVwJ
         O9awmoqoTIGrrCBoZfks8O/FtQwCBhfAJsmGwQI9frle29SDNniFimE9GRYBZoyDtT3L
         cRtg==
X-Gm-Message-State: AAQBX9d922iY9GAJCP6hzhbTSO3UTV785pUFXS2FUNWeaLuIimwFsPU0
	GilLvSMUsyMf8/HMjkreftu75g==
X-Google-Smtp-Source: AKy350ZR4fWMj690Tnc2FYTASJt2dfXDug5uKrdz2z6SlZyu/+k+wehyWLjwIofAqVQIIn2vgL45VQ==
X-Received: by 2002:a17:906:aec9:b0:930:625d:6a25 with SMTP id me9-20020a170906aec900b00930625d6a25mr11691860ejb.61.1679903993733;
        Mon, 27 Mar 2023 00:59:53 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:198e:c1a5:309b:d678? ([2a02:810d:15c0:828:198e:c1a5:309b:d678])
        by smtp.gmail.com with ESMTPSA id u24-20020a17090657d800b00934823127c8sm10589337ejr.78.2023.03.27.00.59.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Mar 2023 00:59:53 -0700 (PDT)
Message-ID: <3e0b3f7b-a4cc-a609-e491-c1f52a49ec7f@linaro.org>
Date: Mon, 27 Mar 2023 09:59:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 07/12] dt-bindings: phy: qcom,qmp-ufs: fix the sc8180x
 regs
Content-Language: en-US
To: Vinod Koul <vkoul@kernel.org>, Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230325122444.249507-1-vkoul@kernel.org>
 <20230325122444.249507-8-vkoul@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230325122444.249507-8-vkoul@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_005959_512160_5C4ABA76 
X-CRM114-Status: UNSURE (   7.10  )
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

On 25/03/2023 13:24, Vinod Koul wrote:
> sc8180x ufs phy requires to describe five reg areas for the phy to work,
> so move the description to the correct place documenting tx, rx lane
> 1, 2 and pcs.
> 
> Signed-off-by: Vinod Koul <vkoul@kernel.org>

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
