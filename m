Return-Path: <SRS0=M8cc=QG=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A231C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 19 Nov 2021 17:18:53 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 384AE61288
	for <linux-phy@archiver.kernel.org>; Fri, 19 Nov 2021 17:18:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 384AE61288
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ONdYvDI2jRdoEO5Y/0t31WLM6APAJTBop7VPiqEMfmg=; b=xy07jhMMeqHieK84R2KIV0vrc/
	vS6O4ERRJTZgiEqIjoYRBBSmaWL6tbsHnAov9xBw/fJ1wHrGnRvVtH7tWxTiRWRHmEa+Fe47O9l3u
	M9/fJNcQDuVHdiDeaGT9Vu26zYZ2/VgN9774br4cudo50GwmfV7Ymm4GCQ9O//JFhdzci7bsWvZKx
	UWZXw3o+Sb1vtHW6HUZfWtIO0+6+T7q5u1BNUd/dihBBu96elUGxXE6072FF1baB4FjX2yCPsC5bx
	bpTfFPbAL9Rnrawb6Imqgr62TWb5iUfMdwGveCEbHBhpgoNfo8O1wEIT2ZQiMEhLsFnSQ78lWikqf
	r7R1pVDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mo7XI-00BBXh-Kk; Fri, 19 Nov 2021 17:18:52 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mo7Ww-00BBQc-U6
 for linux-phy@lists.infradead.org; Fri, 19 Nov 2021 17:18:32 +0000
Received: by mail-wm1-x32a.google.com with SMTP id p18so9150666wmq.5
 for <linux-phy@lists.infradead.org>; Fri, 19 Nov 2021 09:18:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=2cWGsSmKlCFs5ew+ebonP82aDWnBJL9trxNDLj1zdCE=;
 b=O+p8frO1/7NtFaubO2D4VsliXn84/GE5d8P/f3ZIGVYBten/DRUAEWTTALs9WgQIFR
 vAI31KbWQLpe3n42rTj8iC/ZsyoAuGTzfbV4l/crB/owqn5fTPFLqisM0GLENuxlumAE
 Y0Gw//22zCx8/0QrcC2CfL6RoUTc2zD1LH1wDvp5r8/v0V4YwBYnoW9bjMtPQmkL4jlM
 +Y9imgPftx9AAIABFnEcSHNzjFJKR9HmsvY3nEGcF45EN6Juz3Ls1PVYGi4mmHkzurPb
 87ZQ/EP96htd+47l6kixzqOAj9Y8w2bVql+KDD2jgSCCxJh9zhx8cRoAFAJzuKblA5+t
 IosA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=2cWGsSmKlCFs5ew+ebonP82aDWnBJL9trxNDLj1zdCE=;
 b=rGdlkfl9OMJe7QK3eyb5v9NMv/wP1YRd2RSIPdSb8gDyXWSDFOMapvmuedoMAaY134
 kpET3FsaYu+DUkHvCyw45MvHke3xcDaXC3xq2/adHdYHFYMrE9fM5cd97b2nTQz+kQSk
 O7YQJhhjtKRo5o1oK1HbqFgqTyrJz8WyOAl4JbVkGipIbwMZdqs8Z6WTzoU3Wsa33ATJ
 RWW4bbARAF47/PzvJS3FexfqOEllByOedUDq6/2JJRTXGUySv0uPIC1iZ3NOF77407up
 /HkJ4RIX9LbXRN8Ek+4P9ZajXuQDK2DCAPbjgt/7XqIHnw60l4WUIIcTAJmgUyTdZknu
 Dsug==
X-Gm-Message-State: AOAM532mvFvDZxVjpZKpCBXZEiAsvMG4y1kU51/5H6B9fea+enUdtvYd
 7o7uBoFOdkMg5Dw2Mrn57V0nQfh2lGfQuw==
X-Google-Smtp-Source: ABdhPJzAnuXw54HPEJ8krG5tljkZvoSUnGUbk5RT4jRRy7oBpBIhlhQqJaYVsMNxWUSo5Zu5f5ifrQ==
X-Received: by 2002:a7b:c8d5:: with SMTP id f21mr1603397wml.146.1637342309507; 
 Fri, 19 Nov 2021 09:18:29 -0800 (PST)
Received: from [192.168.86.34]
 (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
 by smtp.googlemail.com with ESMTPSA id r15sm12029764wmh.13.2021.11.19.09.18.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 19 Nov 2021 09:18:28 -0800 (PST)
Subject: Re: [PATCH 1/6] dt-bindings: nvmem: mediatek: add support bits
 property
To: Chunfeng Yun <chunfeng.yun@mediatek.com>, Rob Herring
 <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 Eddie Hung <eddie.hung@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>, Yz Wu <yz.wu@mediatek.com>
References: <20211107075646.4366-1-chunfeng.yun@mediatek.com>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <9a730cf5-7f92-470a-633d-70d06bb66a0b@linaro.org>
Date: Fri, 19 Nov 2021 17:18:27 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211107075646.4366-1-chunfeng.yun@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211119_091831_029661_AD52C758 
X-CRM114-Status: GOOD (  15.19  )
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
> Add support bits property, will satisfy more consumers.
> 
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>


Applied thanks,

--srini
> ---
> Need convert mtk-efuse.txt into yaml first?
> ---
>   Documentation/devicetree/bindings/nvmem/mtk-efuse.txt | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/mtk-efuse.txt b/Documentation/devicetree/bindings/nvmem/mtk-efuse.txt
> index b6791702bcfc..ec70c5b7a340 100644
> --- a/Documentation/devicetree/bindings/nvmem/mtk-efuse.txt
> +++ b/Documentation/devicetree/bindings/nvmem/mtk-efuse.txt
> @@ -10,6 +10,7 @@ Required properties:
>   	      "mediatek,mt8192-efuse", "mediatek,efuse": for MT8192
>   	      "mediatek,mt8516-efuse", "mediatek,efuse": for MT8516
>   - reg: Should contain registers location and length
> +- bits: contain the bits range by offset and size
>   
>   = Data cells =
>   Are child nodes of MTK-EFUSE, bindings of which as described in
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
