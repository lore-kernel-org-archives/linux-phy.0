Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79B2BC433F5
	for <linux-phy@archiver.kernel.org>; Thu,  6 Oct 2022 22:05:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jGNU0hmp8iJS7vp1PQV9R78kI42nM2V1+lQpgMowj/4=; b=GM/ew3tQlln8h2
	JUuE3srOkgVMViYqmKfz+cT1Uy3BVKZbCzTrIuHl5yFSVTq5LwNgTj7LLOwjPyhgw+ISigc4A86JX
	E5TVvRKvpJMsLRi4Vf+EnC61/cK29fxWN9k9B9z+VCoU5kwA6GQR2q3G+gUEeIQJySVLHDAkXcEoQ
	VSoSGO6tj4STTq0iTy/9gDBm41QpzbtPQVFveQGWKSEnUNutPoSerKaJODK4zXbKh3jA7Gmriarfa
	4uOKIdeSmpr9H/djKfC2F66o5Lvjnnj7rw88PqBdN8wpQaGDakQaXMxLvIOrwCH5Kwx6nxjLYRn7D
	Ftm9Mm+Zla5TQbgoAYuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogYzr-005Xe8-Tj; Thu, 06 Oct 2022 22:05:39 +0000
Received: from mail-qt1-x836.google.com ([2607:f8b0:4864:20::836])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogYzo-005Xb2-Mx
	for linux-phy@lists.infradead.org; Thu, 06 Oct 2022 22:05:38 +0000
Received: by mail-qt1-x836.google.com with SMTP id l27so1864289qtv.4
        for <linux-phy@lists.infradead.org>; Thu, 06 Oct 2022 15:05:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FL68dpL42Mx7JqcV5yKNfqU/nz0e+Ht7vuoz3H5+fH8=;
        b=CYw8nJyMYNGQx30NInvL0gFMxLXWLoeaO1xSfNo86ZXoBAd8FkIwCcpt2e7icOQm3v
         brj2RADHXp81YIdXfuwtRmGARdrgxdKgCTnogfmLm/kGVuFxE6pTLO9lBLczflLpN1B9
         yBh3CrXs3ulqbosnvtvGg3OApZNKqvSkDVXP+/DpvEoGh13DMQYx4ogAOsHMc29UoDA1
         OIa7BXEqATaHH+wJZkvttMLiI5XFAqMn78S3iGgLvEc9AbsJtIzvxYCGTcv4spVA6Cn2
         nMmbjcBxMKyfq2F7/HjsB0QIZ6dwBCBwEbYNd4uWNZpdo7JUqpt+DOp1TnJizi9Nzime
         Tysw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FL68dpL42Mx7JqcV5yKNfqU/nz0e+Ht7vuoz3H5+fH8=;
        b=c8IBbEFxGNR9C/9kDAzHbVKoS3GaqqVMdg37sKRpwcoe6IJTd34bnfiwgP9jrUhL5I
         V4/Cz5HcTjVGZdmk+3o6WCtOsKgAXKWqWAVNaIJB/NkabiAviVvfyLJ5YiB3M2jTF4X6
         4sGNwZAvmzHfIhhYLgugfrdTtIQGHIrQyAGmcjCpDvqS8So3zQpBRO2bYnscLPTDHrDW
         f+9DD1Vov4/2YEmrwqPhu68OltITpEp6f1gNIXKbJvvGE/PDqArF3UavL/+pNdBfCI8c
         X6eQoMfZ/5tCZzO9Cul7XdxQEgk6mb4AaaCjMuHj0spCYh0dlaM/qLObksGoRhF+08E/
         HOZA==
X-Gm-Message-State: ACrzQf07j3c5aneKFCLM8w0mKBm8lB3Ob72TuSkdh2yEFeGM8yZhK6PB
	O8Y0grKDghz9hlgr4CzMuuo=
X-Google-Smtp-Source: AMsMyM4LZmjtm8c5rvioDH4agVn5OahC2HCCf4dpI0h6oKVKCT1q7YPRJYVvN3lM+JrH5CuqUo8cOw==
X-Received: by 2002:ac8:58ce:0:b0:35c:d69a:9311 with SMTP id u14-20020ac858ce000000b0035cd69a9311mr2069612qta.367.1665093934301;
        Thu, 06 Oct 2022 15:05:34 -0700 (PDT)
Received: from [192.168.1.102] (ip72-194-116-95.oc.oc.cox.net. [72.194.116.95])
        by smtp.gmail.com with ESMTPSA id i19-20020a05620a249300b006cf3592cc20sm309737qkn.55.2022.10.06.15.05.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Oct 2022 15:05:32 -0700 (PDT)
Message-ID: <29803905-d0e2-3efb-e249-fd745f9abcf0@gmail.com>
Date: Thu, 6 Oct 2022 15:05:30 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH 1/6] phy: usb: Improve port mode selection
Content-Language: en-US
To: justinpopo6@gmail.com, alcooperx@gmail.com, kishon@ti.com,
 vkoul@kernel.org, f.fainelli@gmail.com, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
Cc: bcm-kernel-feedback-list@broadcom.com
References: <1665005418-15807-1-git-send-email-justinpopo6@gmail.com>
 <1665005418-15807-2-git-send-email-justinpopo6@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <1665005418-15807-2-git-send-email-justinpopo6@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221006_150536_822439_BE4A676D 
X-CRM114-Status: UNSURE (   9.00  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



On 10/5/2022 2:30 PM, justinpopo6@gmail.com wrote:
> From: Justin Chen <justinpopo6@gmail.com>
> 
> Split port modes into two different variables. Supported port modes
> is what the hardware supports. While port mode is how the hardware
> is currently configured and can be dynamically changed through the
> sysfs. We initialize all supported port modes on init even though
> the port mode may not be selected because we cannot guarantee the
> downstream interface from the phy will be active or not.
> 
> This also fixes an issue where port modes selected via sysfs were
> not being saved through suspend/resume.
> 
> Signed-off-by: Justin Chen <justinpopo6@gmail.com>

Acked-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
