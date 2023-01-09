Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F91CC54EBD
	for <linux-phy@archiver.kernel.org>; Mon,  9 Jan 2023 18:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jxVljEF6rLvn2BQE+x1QHssQLdO4KE1EtmnmL/BhRfI=; b=BJ6og84EEUeTfR
	lnnEHQett4TPtPdNMzfA2icdCGCGps7BOijI344EUSw2n/Od5azFYnITdwcVy4qpcrzmlkPDr5dy5
	drADtUkcpkU4ma1bke+GSXYIio1B2d4wflFwCuSWTlCKwVwqkVRwSC0U78GzgzkPoIHcqvmjKAui/
	hah7ZAtjUtrQASmpqICd0nKnjKDl4vlruUoc04Qzoi9oczeqRn4POXu3CZsqSbA909MHZ4WPG2AG1
	ssqL9Kape9nlmw2T0z8L6gdSuKVX4hvSAuoa3Z1Y3OnNLbkgRXY6obiokvN+8ZTlqgG+DaJjQJ6yb
	tn9FTwsOc/sqVjqQvZXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pExBe-003Q9N-Aq; Mon, 09 Jan 2023 18:47:58 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pExAQ-003Pam-CC
	for linux-phy@lists.infradead.org; Mon, 09 Jan 2023 18:46:45 +0000
Received: by mail-wm1-x335.google.com with SMTP id p3-20020a05600c1d8300b003d9ee5f125bso3353978wms.4
        for <linux-phy@lists.infradead.org>; Mon, 09 Jan 2023 10:46:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ryYeof+OnTJkbTULSprBr4AoCSxqK4qFss+JGLsx80U=;
        b=wSfxtYUUzxGBncWxkFa/2vTAsXeNJj0rj+FowRo7KAOkSud9BpogV0/U3pBs1nCi06
         1wUb3i+I0z+5YPxiBI+vQOyGQenuy11Twz17GhwhXG3By+5SQiRSopTnW4zmNYLjA0nl
         R4FuE12VZazAurC+ZalkVGh5Ejm+Xw7cHEirIR8IGC9hScWtymG/rnnQG18ye4bJKDpV
         n9UJ82nWb4EkgKRiYbj5/UNcQrxac7VQs+J+37cm/q0tYWgIhLhIDnpVhigTs94tcwCj
         BKXJvgQK5g2vZmckC0yaaJcCOn4Akbd1JeldGqymuoigYz0zl0J+5RlKsMdz7g78TCzp
         r0SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ryYeof+OnTJkbTULSprBr4AoCSxqK4qFss+JGLsx80U=;
        b=b7gOqo00KaokWzWrTNjTcsLUktpcRgRVI1/JKBn5F4K1cnMsdb4G6iUvX25vNegYNf
         NS1MABiylSnGTld7RvlQCITtMkwnSVeWupIij+pqUqvbJGGeBWBwD4BtsrgD47aOny+/
         po68tnc+kYlRFnRGybRn6XLteKjkc6Cqjksr4Neqt20t23vieOPEWlv15ZyU6jxVfGlT
         RCooMUtsOdfKkOVp8sP1bFuHJMJ/xx0EZsnEmOHuAs9styRBpNDfRlsKs6PvtBUzhrTE
         0ALGlMF/GQEOSr0niGd4wPKlKxgfGerOvoIiV1V7676GDC0xhru/O5LOCRRULL30TOcv
         eCcg==
X-Gm-Message-State: AFqh2kpt32qyaXoScjwgm46YGRonQY6Odu9Cb/gjlmcNqFUNUin1PY/o
	3YJYIPefncMHTKISCuR6dAuQl4JoN0zp0G56
X-Google-Smtp-Source: AMrXdXvO/d7RLU5wZZgySN5QAdoZ6t6S+IeacfwC7pCnKdTpjpVTQk3Drj8MCGo0KedoGjneH3ObsQ==
X-Received: by 2002:a05:600c:1c11:b0:3d1:e583:51a0 with SMTP id j17-20020a05600c1c1100b003d1e58351a0mr48945787wms.25.1673289997815;
        Mon, 09 Jan 2023 10:46:37 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id r7-20020a05600c458700b003c6b7f5567csm26127542wmo.0.2023.01.09.10.46.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Jan 2023 10:46:37 -0800 (PST)
Message-ID: <101fbe16-69f0-d0c1-168a-1e267e22289d@linaro.org>
Date: Mon, 9 Jan 2023 19:46:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH V5 1/6] dt-bindings: usb: Add NVIDIA Tegra234 XUSB host
 controller binding
Content-Language: en-US
To: Jon Hunter <jonathanh@nvidia.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Vinod Koul <vkoul@kernel.org>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-tegra@vger.kernel.org, linux-phy@lists.infradead.org,
 waynec@nvidia.com, Thierry Reding <treding@nvidia.com>
References: <20230106152858.49574-1-jonathanh@nvidia.com>
 <20230106152858.49574-2-jonathanh@nvidia.com>
 <b1485d8a-71ea-7b75-74ab-77eef595ae10@linaro.org>
 <73bfb6ca-663e-b73c-b9a1-4727ae7217d1@nvidia.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <73bfb6ca-663e-b73c-b9a1-4727ae7217d1@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_104642_509069_3F4DC8B2 
X-CRM114-Status: GOOD (  15.75  )
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

On 09/01/2023 18:00, Jon Hunter wrote:
> 
> On 08/01/2023 15:21, Krzysztof Kozlowski wrote:
> 
> ...
> 
>> On 06/01/2023 16:28, Jon Hunter wrote:
>>> +  phys:
>>> +    minItems: 1
>>> +    maxItems: 8
>>> +
>>> +  phy-names:
>>> +    minItems: 1
>>> +    maxItems: 8
>>> +    items:
>>> +      enum:
>>> +        - usb2-0
>>> +        - usb2-1
>>> +        - usb2-2
>>> +        - usb2-3
>>> +        - usb3-0
>>> +        - usb3-1
>>> +        - usb3-2
>>> +        - usb3-3
>>
>> Why do you have so many optional phys? In what case you would put there
>> usb2-0 and usb3-3 together? Or even 8 phys at the same time? IOW, what
>> are the differences between them and why one controller would be
>> connected once to usb3-2 and once to usb3-3 phy? And once to both?
> 
> 
> Here is the description from the device documentation ...
> 
> "The NVIDIA Orin series System-on-Chip (SoC) has one xHCI host 
> controller and one USB 3.2 Gen1 x1 device controller. The two 
> controllers control a total of up to eight exposed ports. There are up 
> to four USB 2.0 ports and up to four USB 3.2 Gen1 x1 ports."
> 
> So there are eight phys and we could have 4 USB2 and 4 USB3. Depending 
> on which pins you want to use, you could have various combinations. I 
> can add these details to the binding doc if that helps.	

Yeah, could solve some questions.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
