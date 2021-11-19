Return-Path: <SRS0=M8cc=QG=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2CA16C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 19 Nov 2021 17:19:47 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F04F961A79
	for <linux-phy@archiver.kernel.org>; Fri, 19 Nov 2021 17:19:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org F04F961A79
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=79iWeKwgV7NSTe3Qa4sAw95Yuq2VqPS+CcCNdauj374=; b=Kb9wqbMojWaelY7shbpIaIOqwe
	eNcTQIk1fZU8KtraKDOu4UWxQUHRz8YAElyrfzWD6HSyM5rdenWJn+VUcoqFQ4RQpVcWeYdqQNqk0
	DrHpEqaXd0E/wHozc00IVLSYSj71J5f3U6Thq62tQwpElME3Qtw5Enhv0AAKpsmG9ZjPhUbWwT1Fl
	rnPArRbVonqVjNBKNMDWOP7KEeKZawvFwtaozW8CQ/i3urki7BgLLqLHuCc6U2ibl6KUPG2Y/7MJ5
	JEaQYPahsTlae9jD0pYPglrQD9h+oIOqi+PUdWYHs+ocL+yNlG6ExcgYVgT9XlkBgymoMrnwVAXgV
	jPFoS1yQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mo7YA-00BC0r-Bg; Fri, 19 Nov 2021 17:19:46 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mo7XT-00BBbv-6Y
 for linux-phy@lists.infradead.org; Fri, 19 Nov 2021 17:19:04 +0000
Received: by mail-wr1-x435.google.com with SMTP id i5so19389060wrb.2
 for <linux-phy@lists.infradead.org>; Fri, 19 Nov 2021 09:19:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=HpL2qzn8s1pMxSKPVy6BFQOEtm3mwh6KOgnbIGnoQRw=;
 b=BS2Q7zU4V9BqYkMwfKbF71WrJNfRD8dSX+M2CI/qIDQLw0WG6qygNhan4A78uDhxKb
 O9rs1MSC5I5ObTyZP8bg5NCKRxLkqUrP9S2Lvq+X6Tigs57Jp/bpqxyKBc+TGO6+YvYa
 6OwtGO3N8Z7btb7qzw7Adufr88pK+TgR4+xHzhMTkQ6Q+1uVQFDUTftWDUGV14SUi4nN
 dPiHqYk/qU4PFnBgHs6LV80OsEq41pzqAqtX1jq2IYksvNZaGpSHKMrzsIZwuORx9pV3
 WXe3Crem2qEoj3au8XRFyi29FKBmruaAHbPuFhUiFM60PW+0xVXmAzoi4x4vzEbzw+h2
 G1WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=HpL2qzn8s1pMxSKPVy6BFQOEtm3mwh6KOgnbIGnoQRw=;
 b=6D/1+sjEV/An6exB84rcT8krCiM08GAq2TX0L9bLv5GJchnkwJWGNKrG1m9WaZzB5P
 dP4wMlPLP6bs7SePvMOCvT3QuL6Y8elOtNKAiYiU9zqSVrqjFoY2jq3G0Qr3/F6e0t1/
 obvNsKyyExJokORyZUOIaZalJ4/UQcGu1y8tZixe6RfFy5jVYmuwsKNW6ff4t597kVu6
 nsFPylztAFmFG8Quuvu+lliVEbplRDfjUCYL61s/QzxD67bWCEnFjzSmQH/3NJik7Ffn
 FCoDf2Jq7CJyZbPVUjNae+JXXnfi5TyJESAdrkHPGUec5vzAUqxBqA0+QYcRAByDo6l7
 aBdQ==
X-Gm-Message-State: AOAM532otMPcapvBD8bxaD7CE0/M58JzLpTYQpCHyYHxFh6u6TZwUGGW
 2DzLddXP6+cVTxBq8578CuhtOg==
X-Google-Smtp-Source: ABdhPJy2URfxT8KlUV/UQ4ChP+6mnancHBoU5VMuPGKRmQUQKwehJR4L0S9VQPWrBN+3Ks+JmJMObA==
X-Received: by 2002:adf:b34f:: with SMTP id k15mr9377107wrd.125.1637342341594; 
 Fri, 19 Nov 2021 09:19:01 -0800 (PST)
Received: from [192.168.86.34]
 (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
 by smtp.googlemail.com with ESMTPSA id n1sm332340wmq.6.2021.11.19.09.19.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 19 Nov 2021 09:19:01 -0800 (PST)
Subject: Re: [PATCH 2/6] dt-bindings: nvmem: mediatek: add support for mt8195
To: Chunfeng Yun <chunfeng.yun@mediatek.com>, Rob Herring
 <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 Eddie Hung <eddie.hung@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>, Yz Wu <yz.wu@mediatek.com>
References: <20211107075646.4366-1-chunfeng.yun@mediatek.com>
 <20211107075646.4366-2-chunfeng.yun@mediatek.com>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <6aacd28e-346a-68e6-7a76-d7337e0480a2@linaro.org>
Date: Fri, 19 Nov 2021 17:18:59 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211107075646.4366-2-chunfeng.yun@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211119_091903_277122_6AD25639 
X-CRM114-Status: GOOD (  15.01  )
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



On 07/11/2021 07:56, Chunfeng Yun wrote:
> Add compatible for mt8195
> 
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>

Applied thanks,

--srini

> ---
>   Documentation/devicetree/bindings/nvmem/mtk-efuse.txt | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/mtk-efuse.txt b/Documentation/devicetree/bindings/nvmem/mtk-efuse.txt
> index ec70c5b7a340..39d529599444 100644
> --- a/Documentation/devicetree/bindings/nvmem/mtk-efuse.txt
> +++ b/Documentation/devicetree/bindings/nvmem/mtk-efuse.txt
> @@ -8,6 +8,7 @@ Required properties:
>   	      "mediatek,mt7623-efuse", "mediatek,efuse": for MT7623
>   	      "mediatek,mt8173-efuse" or "mediatek,efuse": for MT8173
>   	      "mediatek,mt8192-efuse", "mediatek,efuse": for MT8192
> +	      "mediatek,mt8195-efuse", "mediatek,efuse": for MT8195
>   	      "mediatek,mt8516-efuse", "mediatek,efuse": for MT8516
>   - reg: Should contain registers location and length
>   - bits: contain the bits range by offset and size
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
