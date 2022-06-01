Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 286C4C433F5
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jun 2022 10:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=geTXFGYZPXli4DGWOKJXGWnVzfEKrTH7pPigLmfB048=; b=j3xoUQRO/J8yfz
	2Z41G72wKkRqGCIlbJom14aUmTVJ/aAwBBL6JuYCEIm1HyniNxdeLvUjlkVUyZJtzbiEni1/OWr47
	5RFMQI0w9iJ092DmesgivEwKygW8cfLfsBnN5fNotC0Il722BaUGilW3w7nZq11etrk7k/MNzs4d6
	hmOgxgQCPRmTgUpKZjZSq5SaAFZkk5h9mTrvPn8JAX4vI4eQY62glBmyX3Tikb88pJSMIrFOq/K+b
	VAreioUXzVRpu+eNT0Jzu9S+yJUp7AbqvwggdTQM6SeJf7UY5WP5WkXg3AZmJqEt6FAmBnMkg0oGh
	SiNliYPqRD13E8OfifVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwLcp-00FJZn-Br; Wed, 01 Jun 2022 10:30:51 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwLMJ-00FCIv-7f
	for linux-phy@lists.infradead.org; Wed, 01 Jun 2022 10:13:49 +0000
Received: by mail-ed1-x52d.google.com with SMTP id w27so1483873edl.7
        for <linux-phy@lists.infradead.org>; Wed, 01 Jun 2022 03:13:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=AlvALx0zMnGDVnEapBQ7KHJlm9HnZCeBAZQY2Z7YIfQ=;
        b=MyCjNSjG2AHbNB2hBMdKLs7JyeIE2MU21L7NxYzqYkgJshTjTAEE3mD+wxlpLMSZa1
         6kCgUApP3XMk/l0RKFbqTKkRmn+B8M5eZoQ9wj6leLnRPShsmt0NiHxg5OAui/Wjj4iJ
         i4vfSEUecvq6/DBHNM7UiaodK0JQQ7g3UoEYaWKtumlj0/PvIpngsENEmCTNfzM89Tb9
         QkF+JF2c2z/S4FXGch+hlLzAcJGTiwGowPWEiaeRIqEt7wYuCN7+DXZTH5/EvCioiExI
         p4j/Ly9/9+f7IV1cf8EFCHLLNIAVtSW+2Z8+zxv26svn+bQyu09y+iFILQTj/RvG+YQl
         /OJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=AlvALx0zMnGDVnEapBQ7KHJlm9HnZCeBAZQY2Z7YIfQ=;
        b=5PFsvoFz3HdIpoRCzl0oq3sxxr1ehlpuvTjp6AtKJ1cMF9ZQAgioh6UNPHrhEDvdMR
         EV3K1ktaqHoeoBpckJwKxDqOHSd5qQqcJBrZN0czUodgQ7vi9mVhMy96L5vSK8S/hwqp
         +RxoEidE87tKR5t7Gguz9iUzd22pU7CCRueGkXxcAOZMQyY1DEyi+gjfmdOfNt9XrUcg
         dQAfLq/+V9f7FkU0eukXBhS9lRseJATfCPqP3j8N/Y7UfdjKhKBO89hnI/qETvuhTcEz
         7RTOVm1lcud3TTgjfiRqv8ADKo3i903ghSEOd67Y41QyDVtJ/0Eh5UirXvF3Qt/qlJFW
         +OhA==
X-Gm-Message-State: AOAM5337lyUT0jX+j1cnQB38qX6y6BdyT/lb2ZUhJoMl3bQFRHAtIV4E
	fKLO5XCHN02aQPz+XYtyGOZ3zQ==
X-Google-Smtp-Source: ABdhPJx/6T0uvLJqvrWkeIA6nNBw+V6b78iDiCeD1eckOus4w0IQXWKCNYVm2nBgb3y+6PpRaLcMOw==
X-Received: by 2002:a05:6402:51c9:b0:42b:63c2:6657 with SMTP id r9-20020a05640251c900b0042b63c26657mr51960414edd.255.1654078425689;
        Wed, 01 Jun 2022 03:13:45 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id p5-20020aa7cc85000000b0042bb1e2e2f7sm716587edt.8.2022.06.01.03.13.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jun 2022 03:13:44 -0700 (PDT)
Message-ID: <44798b51-1410-d1db-3c53-0a90beb714ea@linaro.org>
Date: Wed, 1 Jun 2022 12:13:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 12/17] dt-bindings: phy: mediatek,tphy: add MT8365 SoC
 bindings
Content-Language: en-US
To: Fabien Parent <fparent@baylibre.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org, qii.wang@mediatek.com,
 matthias.bgg@gmail.com, jic23@kernel.org, chaotian.jing@mediatek.com,
 ulf.hansson@linaro.org, srinivas.kandagatla@linaro.org,
 chunfeng.yun@mediatek.com, broonie@kernel.org, wim@linux-watchdog.org,
 linux@roeck-us.net, Kishon Vijay Abraham I <kishon@ti.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dmaengine@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-iio@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-serial@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-watchdog@vger.kernel.org
References: <20220531135026.238475-1-fparent@baylibre.com>
 <20220531135026.238475-13-fparent@baylibre.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220531135026.238475-13-fparent@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220601_031347_318548_B63F5ECA 
X-CRM114-Status: UNSURE (   6.90  )
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

On 31/05/2022 15:50, Fabien Parent wrote:
> Add binding documentation for the MT8365 SoC.
> 
> Signed-off-by: Fabien Parent <fparent@baylibre.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
