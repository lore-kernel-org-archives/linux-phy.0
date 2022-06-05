Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65F9EC433EF
	for <linux-phy@archiver.kernel.org>; Sun,  5 Jun 2022 16:10:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dk6y/a3oI2t0d9N/1r1eCbl/o6PaTpY6qEh5Q7ro+Tc=; b=D1mTRd2oVQ3zy8
	ncuuF6IlrmqrA0/b0zOXD9AwQacUCc2r3TKWLYUv3+Y/rkMpEWV32b4kP3xrkkR0mqLXIOaEw//8E
	nrr4x+vSeQP82NabcmQ+Wo+DWwPWsXE8ornC15WEIyGG8FrJO5o2z9Efjq8l8qecI1WU7sBwkHEji
	T9rEfoj3k9CzofImabX9z3HZV9ackDY2YdHVFOfDSIi5oqNaQrH2N7bqqTjC7z0oeMUgebsBEPymZ
	OZKPsu5oOrH//1dVLXyQ97yglEa5wrQkLiWhb6IP7NHvDSrDo0IalsPqKmOEzxgP/iSpvcGroxthx
	1/G+0Rj6q/9JZv5DVjqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nxspg-00Er0f-NL; Sun, 05 Jun 2022 16:10:28 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nxsnz-00EqFZ-JY
	for linux-phy@lists.infradead.org; Sun, 05 Jun 2022 16:08:44 +0000
Received: by mail-ed1-x531.google.com with SMTP id fd25so15879216edb.3
        for <linux-phy@lists.infradead.org>; Sun, 05 Jun 2022 09:08:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=tIgKVMtmhbJ/yQDQy1ksmKE3q8q6VHVyHRkt89LKTUQ=;
        b=G4emj7bhfnaa3mfF/MnUDuWYGHLr5bxddaecNKd+brBrtkI5NCY5EekgN8TRNliJev
         7jH7SyTHMWFLDwAlmR1hKROa17156HQ23w6DNuCOUe1CYER6ecLKHbZlPBWbklqLtGkJ
         fuuCPy0rkHzIaXQegRz8XRWvw0mzAaSBLfRRRTWeM80jkP0HrBfy9kJYiPpC5OgxSCDF
         CsyHoFewNkNiKUbxRY9X+k0WVcEIZKwgsExwIeyWyd3WvwNVAg1gJLV9nER1ekhVO87F
         q6D2s1n6BdNxZjK1gkCHMh3EAkMHC+0A9P7fdY6uY/BCf3Tq1HXOEVW27HQRS6Rp2JE8
         3nPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=tIgKVMtmhbJ/yQDQy1ksmKE3q8q6VHVyHRkt89LKTUQ=;
        b=y3Mnj5DtQdV7CZ9q4obUejVtgd58v63wkEJ3BVLkfXI+kHHPjnWGlHj20AU8hF+vcV
         smiHxVA19ZxwGRjKsN3M7b1vPl8j/Wt3JVm8LLK2GbpmsRjaLJ+hMZqv3/Qrqv/4Ro+z
         QRQpKyz/FthtBlzXSTFoOBzqr9nEIwoxlIMndXKbLMUNm2bv55sW1DOjRkTo5QyAvSFz
         ngNNq483V5HMgd+SqzN8lr8KAIpkt3O2hdcas0F5Kc+WFgds89eo8OKWWCGtO7LEL4wX
         Yqadr1dK4s2b60EUx6n6KEt+5aC2ezcyMBW/CSBEjNgL6dWbE981lk+v50tntAjO8Wn2
         DbZw==
X-Gm-Message-State: AOAM530J8WZA7J9IuigImx2191Djjbe6WZLGyIhsim1hKZ2EkFVFg0PB
	tfY+2+SEinJx/umumqGFTvLEFg==
X-Google-Smtp-Source: ABdhPJy8Hs4LLrm6+pH+VUU7Dq9ew5esPZNY3uTM3+0zdWwA5oV1gsR+RpwU/zB37h+RM1xxjSKTxw==
X-Received: by 2002:aa7:c492:0:b0:42d:ed6a:26e5 with SMTP id m18-20020aa7c492000000b0042ded6a26e5mr21719521edq.64.1654445321340;
        Sun, 05 Jun 2022 09:08:41 -0700 (PDT)
Received: from [192.168.0.181] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id l15-20020a056402344f00b0042dd3454512sm7023434edc.63.2022.06.05.09.08.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Jun 2022 09:08:40 -0700 (PDT)
Message-ID: <2b6e5c23-ed33-4aaf-415e-02a826e8642b@linaro.org>
Date: Sun, 5 Jun 2022 18:08:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v3 2/5] phy: samsung: ufs: rename cfg to cfgs for
 clarification
Content-Language: en-US
To: Chanho Park <chanho61.park@samsung.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20220603020410.2976-1-chanho61.park@samsung.com>
 <CGME20220603020426epcas2p484be447d93da1c015415fb2847f659a7@epcas2p4.samsung.com>
 <20220603020410.2976-3-chanho61.park@samsung.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220603020410.2976-3-chanho61.park@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220605_090843_731713_E1694FA1 
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

On 03/06/2022 04:04, Chanho Park wrote:
> Rename **cfg to **cfgs to clarify the naming.
> 
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
