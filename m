Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 004ECC433EF
	for <linux-phy@archiver.kernel.org>; Tue, 31 May 2022 09:17:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FXd7Qn3TtGCuTES2OBoSyguhqIU2PNH9F/PRoatM1RM=; b=Tv/N2VfJiPiGBw
	KMA5tbXCZpl1di/v7Z9drIFzTqFE5pwLw38r0WJPgdleldwYFcPdhkx9aXbpmxgWgK7BfTVO3+gbM
	bpyWkb10ArhBR9DO/R7l7yqhTMRsiAYAM7rRjhdz4zUDISwxNjwQdBN/EbpWmcF8cApN9Bml4HVI6
	0NG60bY4CZLBjCoO+H67IycU0lDA11xELP0/ERW7ij0NbAJLwS4YT+qDeXToLSObuWrWDIk98GPFH
	YVBKImptGWOKx2CtqEfDaNWP+wkOz6Bz148iUnVEZY6ENr/hkvQiP4V7lmk8EppdiVrya9T3dUH05
	13JzcyfdcfNLxnE/Fi8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvy0N-00A0Hh-Di; Tue, 31 May 2022 09:17:35 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvy0B-00A0Ex-Vp
	for linux-phy@lists.infradead.org; Tue, 31 May 2022 09:17:25 +0000
Received: by mail-ej1-x632.google.com with SMTP id rs12so25266397ejb.13
        for <linux-phy@lists.infradead.org>; Tue, 31 May 2022 02:17:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=yiRJZcsK8/nOtrVqAQkM8gdI+HHI5A3xNn9CKo9QNn8=;
        b=U8u8oZFJb5MjAL4CVHJ0XH6H6VHERv5AKXW0csQS4cF0dlmO+NcS1uqX80UATzR1fF
         CmC0GuYup9bescyRqQiynV5JGC3xop8YrJ3e5H7bXagVFBRLoJ0QVCrYp0sn8ahFBbyR
         f+ZcwKl2ZZ+0Uq6GiLllGwaHomd/1gKSWYQq6KEIDILBMarV/IBil4FF6ypQRaaU+wzd
         uK6vX20fNLwl2P5QhF/7cmX7BCJZWGgpVM65ClnHVvS+y+u7kAdMqhvzD42XEFUJ5srG
         6l/y0MuLslXEVuXwlY0DiJQpNQyU+BWlljeb4EjQiErz3xI4BxBWHMQ3/GKmZ4LIwsOr
         JO0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=yiRJZcsK8/nOtrVqAQkM8gdI+HHI5A3xNn9CKo9QNn8=;
        b=JNo5c367RSp8l/3CB3LHe8m+0oOB0gyMHjmQowNi4B2ZE9Q1IUoVTm2De1rydaPylj
         ezTL69J+xTH5F5Ml30zYq/sb5FCQAPt6vIbHaCoItN/7A6t2GmEp7Ah4gDG1qMftb4NR
         xdqqCUNQSA7R8fN7NE5PXuhWEyzLTa9ucpUFfWV48oHgbzbsmiOUEynhF8Rj7Cp+6Vdv
         G64zkve85xYbX66C2HjDp69zYyqH+N31kAn/PsGcZakklVPo2WDqYQQwmF0OhRLCJQjK
         97dmJSQiJH8c7tXCSxaTNZfu9sWT/Aw5Ug3aTaKbPX9VrP1MjQR4bnEPxYaZwrfNrmSa
         O/bw==
X-Gm-Message-State: AOAM531SjcScHnw6MQswkrlmIe9s9RhU2zV23ASfjDye0qyGNDqyhlDz
	zPTyBqL2V5n3g5etQd1lW3ijQg==
X-Google-Smtp-Source: ABdhPJzc1RUFRZ168BDePJCPLhMCHxR29p9KkUfaSl5CoTOvkdDU2r/8S/FdI4KzfVyR1qimbNJVjg==
X-Received: by 2002:a17:907:7247:b0:6ff:f00:c4c with SMTP id ds7-20020a170907724700b006ff0f000c4cmr26918873ejc.261.1653988641426;
        Tue, 31 May 2022 02:17:21 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id s4-20020a170906354400b006fe98c7c7a9sm4764288eja.85.2022.05.31.02.17.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 May 2022 02:17:21 -0700 (PDT)
Message-ID: <cd71f427-8db5-e908-bf25-0154e3006568@linaro.org>
Date: Tue, 31 May 2022 11:17:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 1/6] dt-bindings: phy: Add FSD UFS PHY bindings
Content-Language: en-US
To: Alim Akhtar <alim.akhtar@samsung.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org, avri.altman@wdc.com,
 bvanassche@acm.org, martin.petersen@oracle.com, chanho61.park@samsung.com,
 pankaj.dubey@samsung.com, linux-fsd@tesla.com,
 Bharat Uppal <bharat.uppal@samsung.com>
References: <20220531012220.80563-1-alim.akhtar@samsung.com>
 <CGME20220531012336epcas5p2fcafe14c90ad3e3a0901fccd62d15437@epcas5p2.samsung.com>
 <20220531012220.80563-2-alim.akhtar@samsung.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220531012220.80563-2-alim.akhtar@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_021724_096838_0EB9840E 
X-CRM114-Status: UNSURE (   6.02  )
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

On 31/05/2022 03:22, Alim Akhtar wrote:
> Adds tesla,fsd-ufs-phy compatible for Tesla FSD SoC

s/Adds/Add/
and a full stop at the end, please.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
