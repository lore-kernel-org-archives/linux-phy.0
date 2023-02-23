Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A514C61DA4
	for <linux-phy@archiver.kernel.org>; Thu, 23 Feb 2023 09:38:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rRMDgQ6+5fccibWUv8easzqfZ6K2Mr0HA9MpdPSpWEc=; b=k9KZa235vs0gew
	3VKVDATLFoBINYFb+Q8VhbWxFG3QN0fUG71GKmHGFF3AVmGEhjXJ0WZjjClxZahOfxz1CJN9SgnwY
	8v5mnkTnQv0ejx8M0O3EVG+iSRRKPJBOYBA95eAgtDvAmKws8G67Ws3roytsPJo+GPBNo0LfW8QHB
	MveT9DM3D7Q/nXA2tb/j/QZZAMPPp48S2knEpEESKfNm+H+wvxzUh8MIvPe3psRV30EomiHfUjmHA
	SoG+mQQ3v8pibPyVjvbwTw6UqX+s4WbSDMlimpaXBmPN9iABvLwC9rOE4GmrA33G56YKrpXcSdYTb
	JK3oiHGnio0fawQ8530g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pV83t-00Fkrt-Ja; Thu, 23 Feb 2023 09:38:49 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pV83r-00FkrD-5x
	for linux-phy@lists.infradead.org; Thu, 23 Feb 2023 09:38:48 +0000
Received: by mail-wr1-x42b.google.com with SMTP id r7so9970626wrz.6
        for <linux-phy@lists.infradead.org>; Thu, 23 Feb 2023 01:38:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OFXeQdu1BvGKoHiJNbU2O9S8icll3hblWadgb7bHD+E=;
        b=vNhXHlS3ApRNSrORLnBIWRdZDd5hAkypiUtxn3mpLUgQvygEP/tfvGa7CLExQVawKr
         PTs1igfsa6+6z9Otq+6qVT3ggfOaeTP6tGt0tCNoHcvXG16JvEZoolw9JYsDpzaAkg0p
         1hwQO2Q+dKE9cMnUAs2cRP77NQuth/ll9hbwA9rMbDyD/IxVmKndz7mZkb5tbTNQt5s7
         +8wc/g7JSXgypH+MV6wXOcnKNadV7IDZuVcT/won3zrhKWuzboHkOMTChASr3sE5PZe6
         pIoqdXsVWM+zUi5eZn6kiiEbTHqVjQTn8m2m7u6E7o8Ak/bDJAOoZslgFLrZusMj6ela
         oAww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OFXeQdu1BvGKoHiJNbU2O9S8icll3hblWadgb7bHD+E=;
        b=mBabGeNkDnyLCz0Ig30HtbJDgvfa3/9Y5WrVj9CfyNqm5UXk8Mml+7s3+cJKzkAOXv
         oQMC1daSA2Ic6tTaNv9koywvetJMkVOu9k88L+2ScXXV3UQmzljHsguJdU2NjW1NEO0B
         37fSwINpKgwgNCdNb5Isay2TkT+9+T32WVtYfDwEsk6ik3frPtfQqGzih1oAITXc+nsh
         ONU0I1U+iVpuhrBZKyjsnJQOqyWI77UMjo3drfivXtu8ltYr/tXYTDN1Tahkr+F3jWGG
         AYzIcHGN5Z/xwxnRtqEH5Hy7rI1Q74MlnR51Upq67lvxwbWWsgv0P/uuJwVtaqtBqQ2k
         ejrQ==
X-Gm-Message-State: AO0yUKW2ZLCjo0LvNDDHJBwDfIrPLSh+rZM60OrEo96GSB23FGh9DeR5
	WA6ktxeSpkOLyWkEzgbBZ8nYHw==
X-Google-Smtp-Source: AK7set9gqaKCjbzALxd2/UWUh75UZxujdvrp5nFe8aSnZ1VtSwx7F06uVkt7o4qK3iqYVmRfIpTrrA==
X-Received: by 2002:a05:6000:1b08:b0:2c6:e682:e55c with SMTP id f8-20020a0560001b0800b002c6e682e55cmr9727638wrz.63.1677145125860;
        Thu, 23 Feb 2023 01:38:45 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id u5-20020a05600c210500b003e00c453447sm10573352wml.48.2023.02.23.01.38.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Feb 2023 01:38:45 -0800 (PST)
Message-ID: <c80a5e56-a123-a894-5d92-58f4cc36ff08@linaro.org>
Date: Thu, 23 Feb 2023 10:38:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 04/11] dt-bindings: PCI: qcom-ep: Fix the unit address
 used in example
Content-Language: en-US
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 andersson@kernel.org, lpieralisi@kernel.org, robh@kernel.org, kw@linux.com,
 krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org
Cc: konrad.dybcio@linaro.org, bhelgaas@google.com, kishon@kernel.org,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20230222153251.254492-1-manivannan.sadhasivam@linaro.org>
 <20230222153251.254492-5-manivannan.sadhasivam@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230222153251.254492-5-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230223_013847_249206_5EA03DF1 
X-CRM114-Status: UNSURE (   7.26  )
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

On 22/02/2023 16:32, Manivannan Sadhasivam wrote:
> Unit address of PCIe EP node should be 0x1c00000 as it has to match the
> first address specified in the reg property.
> 
> Fixes: 31c9ef002580 ("dt-bindings: PCI: Add Qualcomm PCIe Endpoint controller")
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
