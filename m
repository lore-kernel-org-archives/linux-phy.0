Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E21DC433FE
	for <linux-phy@archiver.kernel.org>; Wed, 23 Nov 2022 08:54:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bh3mBXjVcp3Nj2VmaYV4CMLDfUBoRdz1cLMgn4B8g8o=; b=AsFvcD6mlXUJl3
	OMhnZaLmVhP1B6C0QJssSPLyPTr7S0QU0lCQZfp5N7xDoU8MjoFFNCNlFRQGJYsJo2jmNvhP0XEao
	mOW+7A95lfFgAmgBDj0Hb6OlaXAEvxgFqxwMha11bkyfPWn7pH732R6A+yP61FOZYwa08mHwoJMGq
	R2e4/Afm4KWSIy19mICKdgwUSbf6cI0hdhpy/81eLDyruGBRoEY16+yt8xkth5nFQRR6Dn758G2UC
	qwaY59KMnAIU3nyb985MdHJcYYeBNj4m+JId3DCw21xDLrdktFh2WjxsZDgCOzXJoXD7vAtc4P6Is
	30HQuL5FD9cpv3dtrXPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxlWf-00Fi8v-S5; Wed, 23 Nov 2022 08:54:37 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxlWe-00Fi7X-2K
	for linux-phy@lists.infradead.org; Wed, 23 Nov 2022 08:54:37 +0000
Received: by mail-lj1-x233.google.com with SMTP id z4so3726346ljq.6
        for <linux-phy@lists.infradead.org>; Wed, 23 Nov 2022 00:54:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PNci12Bf0vBYmKC3Nyo1ySusK0Po552Ewnk3CKCFgiM=;
        b=uFzBBFc2i+/cs2eokxyz9+zPpobzbSA5PttHyEmsE5O8m9d0ffaSHLkggJctyfOHvC
         GaPb456kzfgPTkarLmQq0yq4EJflAF87ejknNDXPUDrCKpRfra4nGdRn/MkhxB14eNZ1
         ClWptRHX/l2rYgeWkhXxPa41aBgHHxWm+g0rcTLfvkcIZu9UiUx3KWtdGirv3IzK3P1C
         d+kcfk6eZbP4gUupa5jfz+RXFrQzQpjEljUS+lAsH+ZJEm8dQn3+s9msHQNZFPQvI+wn
         ZuZqRPpgb4B7j4uDvSGrfDyrkJPNLSSgW9D6IbIviLL1NGiCVNKXuNGMJ5D6ATxPIAzy
         wkWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PNci12Bf0vBYmKC3Nyo1ySusK0Po552Ewnk3CKCFgiM=;
        b=URR/CDxfgQsoll0WCTRszZoLCltGK+0TaBxCZnLflLq4pXn4lXuKhmZtNKg5pmfVBO
         0eQZ7gfXjE5b29GoYtmHvs9Kz8X0eH9Xg5iIVn9A1McVuFQAVSqrXhHCtTaUCfmAG7EM
         0Z49ySvx6OCtFqTdSy1cQSJGjtOrPet0PqSF69Yh/vHHasy89SmYtFEhhIWN47G5aD5b
         6lOwbFvbLxY6Hn35aUpqubo73je61bDpBKIGh+KTQ9Kk5/D14E3OhFCt9pw0jrqv5WC+
         ZhTSerlVb4V5ZtoZzi56wsG0kafik9xI5Q4Puu+RaGTBDQ5pN3KhiH4vdCegZCRu+Afd
         x9+A==
X-Gm-Message-State: ANoB5plbgUyrzzQiniNs0doyinF6NATpdZM3jMtXkchQgOzKVQtDkPGA
	qejTon8UtVWdEgwYvwoso3LVBQ==
X-Google-Smtp-Source: AA0mqf7zw0pr/I8AJsrt0bkdgbbMNDxfTG/Inc4P8oO0f9B7+bwl+WZbKu89sNkMdVirsGZ8SjdSMA==
X-Received: by 2002:a2e:a80a:0:b0:277:2600:9cc0 with SMTP id l10-20020a2ea80a000000b0027726009cc0mr8668597ljq.437.1669193674524;
        Wed, 23 Nov 2022 00:54:34 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id t17-20020a195f11000000b004994117b0fdsm2812854lfb.281.2022.11.23.00.54.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Nov 2022 00:54:33 -0800 (PST)
Message-ID: <40a0eff9-607d-1143-3835-378079f38c0f@linaro.org>
Date: Wed, 23 Nov 2022 09:54:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v2 1/2] dt-bindings: phy-j721e-wiz: add j721s2 compatible
 string
Content-Language: en-US
To: Matt Ranostay <mranostay@ti.com>, r-gunasekaran@ti.com,
 rogerq@kernel.org, vkoul@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, vigneshr@ti.com
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20221123032413.1193961-1-mranostay@ti.com>
 <20221123032413.1193961-2-mranostay@ti.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221123032413.1193961-2-mranostay@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221123_005436_182247_1D4468B0 
X-CRM114-Status: UNSURE (   6.15  )
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

On 23/11/2022 04:24, Matt Ranostay wrote:
> Add ti,j721s2-wiz-10g compatible string to binding documentation.
> 
> Signed-off-by: Matt Ranostay <mranostay@ti.com>
> ---
>  Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yam


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
