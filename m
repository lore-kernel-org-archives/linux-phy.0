Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51F77ECAAD8
	for <linux-phy@archiver.kernel.org>; Wed, 21 Sep 2022 06:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tGdVRgphVQE5s+CgYBIfK+hZf9xTBNkYT3ngGGhY5G8=; b=ZuAamEq+jrU8Z2
	Qd+Bb/l1HxmAcLyVDTFc+x1AyKL69IxvE95qsV6I883XsHtMUz+iC1tMSZRouJVJMEyCC1FYX9Ks9
	wRerBj3NGtqjd8DSnmvipNGJ58vlpK2vnK0tUd/9ywhLz3OQo3/3DcliWOufwnYxQLEz8UVcmWk6E
	naqqsIPk7hCd6z1nVOvKO9LXtQsZTFiuypxDjrYVgGs6QRYFqfp0VZPqceKT7ITxqriPQGydHggB+
	993z6iS5BCIc6G71dcMuninfym9lklWKrHRyRJUqA8LzMUhlxYczKoo3VVYl5WgnT9WfdaRTo3i+L
	tGPOiJyoCkLuxizeEw/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oatLu-009KAf-PH; Wed, 21 Sep 2022 06:36:58 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oatLj-009K7Y-KT
	for linux-phy@lists.infradead.org; Wed, 21 Sep 2022 06:36:50 +0000
Received: by mail-lf1-x12a.google.com with SMTP id i26so7530769lfp.11
        for <linux-phy@lists.infradead.org>; Tue, 20 Sep 2022 23:36:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=yH6iLbkmU8vuQx6J49b2UpdkQWSvaC4UtePhwuwHlXE=;
        b=LpfGpU64avQ4ZPWZSpfWPbK2+LJJzUu/PqXloCUs0pR9Ux6YCFG9k9q94Y+F9XxnHX
         QOppRw0//6+5sxN4binVSZVdyaz8F2/Ire/2PoIaxFu34ycYW9auIJa25jotMOZNmSD5
         1ooFg4LuJmtiWSgxyXSM+cSn4MqjciUeIXy3HZxnyIQBtrfNpnujCL3f6H1AlZi1uJu2
         f5Q0KbaIbjd+cePfqgR7nxQ1kZ0B7FnnatQ0tVyVIzjmLOsDjsmYOqQT3O2YvEI/iK7F
         tts1OHbGVSbzUFHsLv2wom7BfQLx+WhOEClLO8yD+e/fFZmda5rvXtmY2b4eCWrvEqi9
         EaLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=yH6iLbkmU8vuQx6J49b2UpdkQWSvaC4UtePhwuwHlXE=;
        b=zTvOiGMIVPCZVpFDIZgOvQZWDExGSSnCh22J+wuRTa3hbri/YsGbTiAy7FTXITmwd7
         yX1Zcp9N9ybrDfvEQ1LYYLXsLFCYjoJFiRJ3kc/MJh07x+jzXy9LNxWcIQ6R+aAeiOUs
         8kQlvWPUjEVlxgGOHCefwia9/F73kII4MxIOTAqe4TKnuHt6KPaiIhQNaoe2wzl4gS8F
         9YF/++CaTkTwtLyethDZG622CBfyZO7Y25B3aaLOC/q5dgJabPg78/5Z6JpOeoN2rsZX
         Vd7j592Fnh1te9Ly234I7WCHGYDAN1TkXyPB6Bnqku7ebSdLUW0Ed4RbMZXmKUjostUc
         yO8g==
X-Gm-Message-State: ACrzQf2RC2hr7cxPXZLpvpfP4J5PZPPssfqqyHbivfm+oNXW38m14K1C
	y2ci2/51Y60heLSMCwJWN1lkgQ==
X-Google-Smtp-Source: AMsMyM59nFePana0jsoM3q3M+VQT7XIIowgjLYQMTB5rbMd81tjaDQ1tjFcDcNwLLnHRQ7H6roaANA==
X-Received: by 2002:a05:6512:b04:b0:4a0:588:5b33 with SMTP id w4-20020a0565120b0400b004a005885b33mr92323lfu.371.1663742205196;
        Tue, 20 Sep 2022 23:36:45 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id f18-20020ac24992000000b0048b003c4bf7sm299228lfl.169.2022.09.20.23.36.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Sep 2022 23:36:44 -0700 (PDT)
Message-ID: <da0d5f12-78fd-b09f-d1c5-2df46cb98901@linaro.org>
Date: Wed, 21 Sep 2022 08:36:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 1/6] dt-bindings: phy: ti: phy-gmii-sel: Add bindings for
 J721e
Content-Language: en-US
To: Siddharth Vadapalli <s-vadapalli@ti.com>,
 krzysztof.kozlowski+dt@linaro.org, Rob Herring <robh@kernel.org>
Cc: lee.jones@linaro.org, kishon@ti.com, vkoul@kernel.org,
 dan.carpenter@oracle.com, rogerq@kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, sjakhade@cadence.com
References: <20220914093911.187764-1-s-vadapalli@ti.com>
 <20220914093911.187764-2-s-vadapalli@ti.com>
 <20220914161527.GA2269201-robh@kernel.org>
 <d48e5ef4-6d5b-0977-ed45-de810e42356c@ti.com>
 <31028736-ba81-122e-b630-b66e9d9d491a@linaro.org>
 <2f830a26-c9f0-2902-302c-371c59994a6f@ti.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <2f830a26-c9f0-2902-302c-371c59994a6f@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_233647_702009_4BF23DCD 
X-CRM114-Status: GOOD (  19.91  )
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

On 20/09/2022 06:56, Siddharth Vadapalli wrote:
>>> Thank you for reviewing the patch. Based on the discussion for the
>>> previous series at [1], I had planned to reuse the same property
>>> "ti,qsgmii-main-ports" for TI's J721e device too. The reason for this is
>>> that the property represents the same feature on both devices which is
>>> that of the QSGMII main port. The only difference between the two of
>>> them is that J7200's CPSW5G has 4 external ports while J721e's CPSW9G
>>> has 8 external ports. Thus, J7200 can have at most one QSGMII main port
>>> while J721e can have up to two. Adding a new property which describes
>>> the same feature appears to be redundant to me. Please let me know.
>>>
>>
>> The trouble is that you wrote the description like it were two different
>> properties (for xx this is one element, for yy this is something else).
>> You need to describe the property in unified way.
> 
> Thank you for reviewing the patch. I plan to update the description to
> the following:
> "Required only for QSGMII mode. Array to select the port/s for QSGMII
> main mode. The size of the array corresponds to the number of QSGMII
> interfaces and thus, the number of distinct QSGMII main ports, supported
> by the device. If the device supports two QSGMII interfaces but only one
> QSGMII interface is desired, repeat the QSGMII main port value
> corresponding to the QSGMII interface in the array."
> 
> I intend to describe the property in detail to help users understand the
> property and its usage better. In the process, I might have
> unintentionally made it appear as two different properties in the
> previous description. I hope the new description shows that the property
> describes the same feature across devices while making its usage clear
> to the users at the same time. Please let me know if this is fine.

Sounds good to me.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
