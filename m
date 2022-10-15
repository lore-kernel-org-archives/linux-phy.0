Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB8FBC433FE
	for <linux-phy@archiver.kernel.org>; Sat, 15 Oct 2022 15:19:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9qrt6Cp4W82RdsvMsKZFM7IKZxJLcJYI622t7A9DMNQ=; b=2pK99snc9owpNf
	rs6eDFTWxbX4/R6yYq/iLyFxZaoF2JUUMc9xVQYkC4zSXbM1dGU9A/TYsukqSFkSE6M0rRmb2wCY7
	UbQiFZ1mnPtaRLvCMaSX3wR40uis/tPnrHv/KJsOnPaMe+yNlB/XdazxBpE8+lcmqSeeM7xRZbCB7
	M4Cs5KF2gKmOj1OXYZWpNMRLyLy22SnupTkXg8VdhNXPVIt62WLvfV0qSm/Ezd98faUl4y+PYjLl9
	yfrVj22Nx6wlfrLL/GQ6roUB6O43ajlERB8vVO9n02uTW1r/lRai3cj3NSJ8bPlUt8iv3oaKsP5HJ
	PJ2kOF8P0gCdA3v+d1KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojiwd-00H8T2-8Q; Sat, 15 Oct 2022 15:19:23 +0000
Received: from mail-qt1-x830.google.com ([2607:f8b0:4864:20::830])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojiwa-00H8S7-QU
	for linux-phy@lists.infradead.org; Sat, 15 Oct 2022 15:19:22 +0000
Received: by mail-qt1-x830.google.com with SMTP id s3so5417714qtn.12
        for <linux-phy@lists.infradead.org>; Sat, 15 Oct 2022 08:19:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5lnInENwLybwBq+BGW9XxaGeEpI0F9YvSORSJTCPbgo=;
        b=tH2d2Fg2+rkIGI3g30tLYVACKy0d5S84UFuNYvLPX2jB7j1OU1s7hRZuvtaYaThLl+
         DVRX+YUAGvtLKD3k1P+nvbXARq1pZqxR+3jcthoC732WsTyygYmvBpNy0ogD83ytNN0o
         mct2GWnXik+WHSCVd8mXSryojXZ4tKde5eRzbSxYGRCMd7WGBsjihW5p/VfdA6h+QYSo
         4mvukBY/TajIL/LhoFP9fMi6Dxy7BP/AxIYoRIhBV1JvAf8GJMMLT3OPKk7DEsj8dD5r
         SgnimZMd+cNj6EcFymL/976s/bkyjFlv7uaNDY8zdHzGGO+rwOvEKXUZSXKZRSP79Gu/
         Do2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5lnInENwLybwBq+BGW9XxaGeEpI0F9YvSORSJTCPbgo=;
        b=PkX4nStgEWPsK5RvGI/mfGHBQ1t58oJ/3rZuabwCoOBbz/emCNLmzQCnn+gr/NdDau
         /WPbTCJh0o9KxjWaYB7FdHCIS4dV8Nho70FnYbtH5n4zqBl/A85bIz9fxxUd4EN2QQOi
         aBUmP9PIgJSkMvRFFy5eHiArqBXIFUdRM4ZhuP6LTkgm6xD8RwxDUVa/9CdC9kn2W5Ll
         knF1GtfoDndYJckZB+hYmmEhhBj0lVGuo0snJE059i1HZsz1RH88zwXaDh0MME1HMF40
         ZQjXsk5bcL0EGZmCL4bY1h4t80rMDgZwUyYID2gW97x+ANpVugSSALjJYjQ3/8nOiFwu
         9NJw==
X-Gm-Message-State: ACrzQf2W1gtowORH0GbfeUzCVEfTu7Sy1IOoGgdAD41pJq0svrIvJTFT
	GYJiqIR337Lb/WO5nMnLXJbAuA==
X-Google-Smtp-Source: AMsMyM7SK8HhtjT3RcbC18eK6Wx6yTJR3yAlueJ7R3Fy7tkuEa2py8ydKmqXp8AC0za/7RsOMMmaNw==
X-Received: by 2002:a05:622a:13ce:b0:39c:c82a:4584 with SMTP id p14-20020a05622a13ce00b0039cc82a4584mr2279261qtk.150.1665847159474;
        Sat, 15 Oct 2022 08:19:19 -0700 (PDT)
Received: from ?IPV6:2601:42:0:3450:9477:c2f0:ddea:ea08? ([2601:42:0:3450:9477:c2f0:ddea:ea08])
        by smtp.gmail.com with ESMTPSA id fz25-20020a05622a5a9900b00399ad646794sm4165768qtb.41.2022.10.15.08.19.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 15 Oct 2022 08:19:18 -0700 (PDT)
Message-ID: <608e194f-3137-ceb7-f9e9-155010ce1afa@linaro.org>
Date: Sat, 15 Oct 2022 11:19:14 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH] dt-bindings: Remove "status" from schema examples, again
Content-Language: en-US
To: Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Cosmin Tanislav <cosmin.tanislav@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Nandhini Srikandan <nandhini.srikandan@intel.com>,
 Rashmi A <rashmi.a@intel.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Sumit Gupta <sumitg@nvidia.com>,
 Mikko Perttunen <mperttunen@nvidia.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 Joakim Zhang <qiangqing.zhang@nxp.com>
Cc: devicetree@vger.kernel.org, linux-tegra@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-iio@vger.kernel.org, netdev@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org
References: <20221014205104.2822159-1-robh@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221014205104.2822159-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221015_081920_894582_BC9750EB 
X-CRM114-Status: UNSURE (   9.84  )
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

On 14/10/2022 16:51, Rob Herring wrote:
> There's no reason to have "status" properties in examples. "okay" is the
> default, and "disabled" turns off some schema checks ('required'
> specifically).
> 
> A meta-schema check for this is pending, so hopefully the last time to
> fix these.
> 
> Fix the indentation in intel,phy-thunderbay-emmc while we're here.
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
