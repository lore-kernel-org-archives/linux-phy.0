Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78789C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jun 2022 09:32:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UHW1vS0aHgs59/sNghVTN8aiV/la0j7ZJJs7PCh0EC0=; b=viWDY5SI9X1+2l
	Y+DQk1TLWylwNz1/ldpPaTqXj97fKh5YryvC2Ns0LrnprkfEcReETv/oo+f1COKVIs2jxEbUaasro
	hTqwx0q5WiCHVNIu6g+HJ021pFZ+36vUyLqkobgjPVz2n6XKNhYpQQ+jYkznTdb1I/skg32l6U77/
	Z1oxHb1Z4DNLf6tEkKWlzunA4HxI3+rHnhzIoxQD00b1w2wdOk8Q6ElzQpqO18mohureXfMD6fQUo
	7jfMK3Sa6QHd65qQbIuS1NdpviuhUoLXuUdWsvbTdsxDKiINt/zNBc/smMGgv+1h4HNYMvEbkZOVQ
	POsnky+MoGWJtdfb79ZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwKi3-00EvoM-PV; Wed, 01 Jun 2022 09:32:11 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwKi1-00EvnM-Ka
	for linux-phy@lists.infradead.org; Wed, 01 Jun 2022 09:32:11 +0000
Received: by mail-ed1-x52b.google.com with SMTP id c2so1353264edf.5
        for <linux-phy@lists.infradead.org>; Wed, 01 Jun 2022 02:32:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=9rLHj//9k/15fypiFbMELs3ChxXWRGpeQMJrEmUMxUs=;
        b=QIpbmzzYJ0HAltV9KIinq7hcn1/hnXtpRXtMmZG9J7qu9J+yvPLSDMoa7T1mF07mXK
         H0apr2OZxGQd0U1WCKeMv8lb+Fm0H/mDYSMtRdWizypZAKluo8iAZmIxB1zzo1cgkxVD
         8FqROBoannHWns4ltnEoaFMetuFzZVnMg34x8TBZHDiL1S+h+agEWmJXOJBPr45zEleE
         wIN4pLzhGLnCkSJ6swE6lcLnjUX895KzSJg8xs9oTGRBgvcXRQgxWZs0dfq2tVdBw1lA
         e+iovxTxiCiSptWs6zjF6xpsc90sU1LjwN9TwlBSRUrniu3cN+/+/2A8nwrc4UNO1Pv1
         qyIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=9rLHj//9k/15fypiFbMELs3ChxXWRGpeQMJrEmUMxUs=;
        b=pLIq5L1E54y3LnaLsRiQ41AFilcMNpeTCiMbYCM7lRfTb9pEhx+COJGsnwLz+LnTwv
         OwZRoR+R8moe2EDqdTI+VNahNlmH2oUMDrhuOz3e29itU5cGCInyxIf81dXZ0+I3clG0
         xexi/pPvny7m+0wLYFFO5J9Cdo6MMAyROhUgdEqo7jD4AVnxN5HiUr+a/voVbaXwONY+
         9Es/E3ixnkrbHbC3Un0F0nXoX+kUyT7BU6Ug2I09W++ZQ4rd9lgOtfKrp1770h5k7wge
         JRPNdrtvJDV9GvS57W23HUqJqeqZJyXpHH35SMYo+M/JG5SUIkHmG38WcvPbngK4Sm9X
         CIPA==
X-Gm-Message-State: AOAM531FeerCWHEnEstXYrMeqcq6rZsXVeIdMQk/LJYUKkXJBk6R9ycO
	vTrqh+a/ssIKCxPkPK1FbDGE4w==
X-Google-Smtp-Source: ABdhPJxIaNQdmdCizYbGGHKjK+me0jgNnS5X6cMWDDf2h3DFwSO74zQhHh65gXy+skv8i/8hh9yGoQ==
X-Received: by 2002:a05:6402:e9f:b0:41c:df21:b113 with SMTP id h31-20020a0564020e9f00b0041cdf21b113mr69039921eda.217.1654075928172;
        Wed, 01 Jun 2022 02:32:08 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id i23-20020a1709061e5700b00708a2ae7620sm102525ejj.67.2022.06.01.02.32.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jun 2022 02:32:07 -0700 (PDT)
Message-ID: <efdbb151-8213-d1e7-a935-0e857947d450@linaro.org>
Date: Wed, 1 Jun 2022 11:32:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 00/17] Add support for MT8365 EVK board
Content-Language: en-US
To: Fabien Parent <fparent@baylibre.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org, qii.wang@mediatek.com,
 matthias.bgg@gmail.com, jic23@kernel.org, chaotian.jing@mediatek.com,
 ulf.hansson@linaro.org, srinivas.kandagatla@linaro.org,
 chunfeng.yun@mediatek.com, broonie@kernel.org, wim@linux-watchdog.org,
 linux@roeck-us.net
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dmaengine@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-iio@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-serial@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-watchdog@vger.kernel.org
References: <20220531135026.238475-1-fparent@baylibre.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220531135026.238475-1-fparent@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220601_023209_756482_5F46062F 
X-CRM114-Status: GOOD (  10.22  )
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
> This patch series adds support for the MT8365 EVK board.
> 
> This series has dependencies on the following series:
> https://patchwork.kernel.org/project/linux-mediatek/list/?series=646256
> https://patchwork.kernel.org/project/linux-mediatek/list/?series=646091
> https://patchwork.kernel.org/project/linux-mediatek/list/?series=646083
> https://patchwork.kernel.org/project/linux-mediatek/list/?series=646081
> https://patchwork.kernel.org/project/linux-mediatek/list/?series=646076
> https://patchwork.kernel.org/project/linux-mediatek/list/?series=646068
> https://patchwork.kernel.org/project/linux-mediatek/list/?series=646020
> https://patchwork.kernel.org/project/linux-mediatek/list/?series=646052
> https://lore.kernel.org/r/20220504091923.2219-2-rex-bc.chen@mediatek.com 
> https://lore.kernel.org/r/20220512062622.31484-2-chunfeng.yun@mediatek.com 
> https://lore.kernel.org/r/20220512062622.31484-1-chunfeng.yun@mediatek.com
> https://lore.kernel.org/r/20220524115019.97246-1-angelogioacchino.delregno@collabora.com
> https://lore.kernel.org/all/20220127015857.9868-1-biao.huang@mediatek.com/

Eh... and how we are supposed to test or apply this? Such dependencies
could mean none of automated tools will pick it up, so your patchset has
to wait till dependencies got merged.


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
