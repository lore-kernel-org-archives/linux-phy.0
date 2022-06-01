Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A9CAC433EF
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jun 2022 10:19:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d3S9EynwYKjDuI6+ZvfEsFcQdqizDJY2qIGJAxlcmdk=; b=WGTWWH5XbkDTDb
	NSHKG9mAWAcvKp8E2dwvJdTo8piBhFAPBl3vUUG0UMqXvWFIfOQ4WCvCMuH9t14JPGaNSYZ83H1lk
	VivO8K3PXFHI0Sm/Wd4H5eGH/IhWA0b/Snoa0Hb5M146cRnvIle7Cm/I4CwgeMixrjbA7zXeDJnZf
	BUj+Qy28xCmV8VXCz6hOqVigYL2RrE5UJB8BQnLzAym8yuhKruyyiF0IYxyQTECXaxT+PE4HbqhoD
	boQJoLn5Fr3C6Il1ZKap0OPJKb/BD+AxJDkWSgMreBdCDsuAcgc4Fniigix6iXI4yMFAKpkwIiAWZ
	YUYOOC/DDCWNfrYw4qTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwLRP-00FEhW-Ak; Wed, 01 Jun 2022 10:19:03 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwLBC-00F7Gr-BZ
	for linux-phy@lists.infradead.org; Wed, 01 Jun 2022 10:02:19 +0000
Received: by mail-ed1-x52a.google.com with SMTP id 25so1187080edw.8
        for <linux-phy@lists.infradead.org>; Wed, 01 Jun 2022 03:02:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=SCHPOUMOkaORGlqy58IkS3kpUvVCYFXurWLIORn2AWE=;
        b=R+zX7kVN/rZH7znS8QEbRvDrZjdPSwyJ5JfWczekV05ct6k21Z+QNzRMQ4DT3lLH+P
         YGv+8cYMFCE+D6IKLUrFn0DDIz71NsUdzk0zCCbyKq5E88agPjfsSq/Stk0xXIj1kmbu
         R58MwH3N19BBhqt0epKSgNdhfQsoePTIPnN8tfb4PZgrSxWCngSmYVPbhn8zSOLfO409
         feZfytnIiNSrXWHr1t1ObzSgHFHYxacwrK6r+j43OWyQGwuyGosxBPFpDypkatmsjm79
         Wd/4BZ4RoctSTUApmv410sKQkDwOKVwtvq7OE+MPQNZEl+gZynFZ8eQRrS/wc0PmvUHH
         6JPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=SCHPOUMOkaORGlqy58IkS3kpUvVCYFXurWLIORn2AWE=;
        b=zZ3DFn4BHXmVMyNwpiGH6Wd88MT19FsDzz2Xgdh5qnjBYt0B+yxNDs3EtmRNxm6z+l
         PJeQq1z2KKh/jZua1U/8tCzhAK7IjyMU4WjzD3yATpSPf3mvNcXauKgBURw85+6XdTJ3
         j6N2ZmiI1y6LAuwraXnP71WEvXfrLyxKgIdLNSJyRjyAhEpzREm+4821EsUMwVwWReIB
         ECt5Rdm1RXXJaQ1vxf+T1OWI1Jin+h07ptMyenvO3ocIyaC3iK32NPeyBr5ofFfDogi1
         8wTRTMLhxdjc+Uyj1KWGShGlnQts+Dttfv9ZgAMdbvdmCp52CAXTnqrh2IWi6NfvUjlA
         iE/A==
X-Gm-Message-State: AOAM531twdf8LYixAmwTlssk4tN3jpicjHDamIkqz9patwAG6o1+Xv6l
	1HRJ967DBtUEsSX/E3J74J3Elw==
X-Google-Smtp-Source: ABdhPJxLqP7ex7CWmzekAAXsNfAbzxWW5D6xCr+9fxNRGYNHw1oPaWfu/s0TxV2jD4YRSiBzoXwjbA==
X-Received: by 2002:a05:6402:3585:b0:42d:d6d9:385d with SMTP id y5-20020a056402358500b0042dd6d9385dmr12945900edc.334.1654077736859;
        Wed, 01 Jun 2022 03:02:16 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id lo27-20020a170906fa1b00b006fe9209a9edsm505541ejb.128.2022.06.01.03.02.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jun 2022 03:02:16 -0700 (PDT)
Message-ID: <8507d1c2-125b-0753-b97a-5d2b8e790dd2@linaro.org>
Date: Wed, 1 Jun 2022 12:02:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 09/17] dt-bindings: spi: mt65xx: add MT8365 SoC bindings
Content-Language: en-US
To: Fabien Parent <fparent@baylibre.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org, qii.wang@mediatek.com,
 matthias.bgg@gmail.com, jic23@kernel.org, chaotian.jing@mediatek.com,
 ulf.hansson@linaro.org, srinivas.kandagatla@linaro.org,
 chunfeng.yun@mediatek.com, broonie@kernel.org, wim@linux-watchdog.org,
 linux@roeck-us.net, Leilk Liu <leilk.liu@mediatek.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dmaengine@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-iio@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-serial@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-watchdog@vger.kernel.org
References: <20220531135026.238475-1-fparent@baylibre.com>
 <20220531135026.238475-10-fparent@baylibre.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220531135026.238475-10-fparent@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220601_030218_540660_3F6FD167 
X-CRM114-Status: UNSURE (   6.89  )
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


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
