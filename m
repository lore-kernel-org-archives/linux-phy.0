Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DCA2C433F5
	for <linux-phy@archiver.kernel.org>; Thu,  7 Apr 2022 09:46:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7DuerP0plra5dZqWBEfwztCmFAN2DhHbU6GI2D/gN0s=; b=24DtpAkWscGC34
	DHB2Ms1zA+Qme+YQTm7fu6XS4MpemZvFuF9g+0sifG604zwSfK4CVWKhiu1yPtHMNMgVvAe49nCQz
	2Qdp7pLcg/zOXnn++I3QRvGalF7ll5PprEMxxEQb3f3Z0d1NeI6NUMoUOX6p+jguvMQGO7uFKBlhb
	OjE6JRWTVM8RXLXK33XGC2tQeh3I6oxblL236HjLyhNCmUcgggsWPQCSAwQ8HCyE7LlOH6Nksmahk
	LsZlDUHFGvWLmu6nZmZkR8UsK3GSIZKHzL82scJbZMUaNMH94MNec4JPco4u+stPxKHA2INjVDyap
	75fqsofp9M8v3NrZ/aIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncOj9-00AzRT-69; Thu, 07 Apr 2022 09:46:55 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncOIv-00AnF4-4Y
 for linux-phy@lists.infradead.org; Thu, 07 Apr 2022 09:19:50 +0000
Received: by mail-ej1-x631.google.com with SMTP id ot30so9445899ejb.12
 for <linux-phy@lists.infradead.org>; Thu, 07 Apr 2022 02:19:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :references:from:in-reply-to:content-transfer-encoding;
 bh=OhZn55oqpDXIvKLvKoNusLeA/Le7lGuQ4Qseb8DPsUQ=;
 b=o4mWa8llyJhR0hXytKXYg8Jm7+j7FbG2XIo9m1ek+brBno+uQo2HZZWkbmW5W/9QcG
 c9Py20S5rz3TcDCjRoQnwxvRO8Pkrhkzh4ftv0afwjRkBsyuHD5Vw70dKpJ84c8wdxnO
 WXI4ShYaC9NoYd9QFGcYQRCek9oQ5gLfsybO/i8ECbYTP1uaaZ6ak7bZ4nXz2PPHNC5S
 j+glrsqr34TjNHReLgx1ujxSXbR82hJgdwJbkae2lxWzi+cz8tIm+kVPdBoGMyS+mCk6
 dUp0UjvY9vxal/bAIH62k2ihxs6F5Ge99WJ7y2gJUnump2hDZi2/9Gv6/qM72qx9usWL
 08rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:references:from:in-reply-to
 :content-transfer-encoding;
 bh=OhZn55oqpDXIvKLvKoNusLeA/Le7lGuQ4Qseb8DPsUQ=;
 b=I0UMPCV7iLtKjuhnlqveTj1GKsbTJqpFQoL/bTNLcyzoa38+sVb2kw1jsV3cE90Ku6
 /4vYDeig8BM+aRfqZHZeQlPMkb0yNBcUcvDgreVz7bT+/hlbOUBQoCeatixay5HRMtAt
 +WWIZ9QVR94zNf1Hn+JdFeim8WPiggCGBQDIil6exq9agjR5r4JVDRQoFaNZU7RmQeKb
 PCHt+QFs69+ROjbIv5wwIg9gQWOtBpWdoagdPgaebF6MTFDbhd6hHKxYP4+cLh4IOHtL
 WU5u1bgdMXmRK+7sNW/4Jq7BpZGXra9f7bwsQS7FgEfy7RhC49g7NyQimLFaNNZYPsNV
 AyTA==
X-Gm-Message-State: AOAM531fts/e66A76y+/VDxl3TUi3PU4snoNH6k8SQrfA9BdkhZsl6DR
 LXwSGnr4Ot2KH7lUDCIkYDTOIg==
X-Google-Smtp-Source: ABdhPJwrfOj4aHp2YqJnDOzcr0lhU3Ho+3z/I+Snr1r/9J1rjLJks+IfGB/rZ/rf9fpkMv+YT4ttzA==
X-Received: by 2002:a17:907:608c:b0:6e7:fc15:2db9 with SMTP id
 ht12-20020a170907608c00b006e7fc152db9mr12144063ejc.344.1649323187671; 
 Thu, 07 Apr 2022 02:19:47 -0700 (PDT)
Received: from [192.168.0.185] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 f15-20020a50e08f000000b004134a121ed2sm9146929edl.82.2022.04.07.02.19.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 07 Apr 2022 02:19:47 -0700 (PDT)
Message-ID: <7da30fdc-cef7-879a-69ef-6993e05beda5@linaro.org>
Date: Thu, 7 Apr 2022 11:19:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [RESEND PATCH 2/2] phy: samsung: exynos5250-sata: fix missing
 device put in probe error paths
Content-Language: en-US
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Girish K S <ks.giri@samsung.com>,
 Yuvaraj Kumar C D <yuvaraj.cd@gmail.com>,
 Vasanth Ananthan <vasanth.a@samsung.com>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20220407091857.230386-1-krzysztof.kozlowski@linaro.org>
 <20220407091857.230386-2-krzysztof.kozlowski@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220407091857.230386-2-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220407_021949_237094_C9F074F2 
X-CRM114-Status: UNSURE (   8.81  )
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

On 07/04/2022 11:18, Krzysztof Kozlowski wrote:
> The actions of of_find_i2c_device_by_node() in probe function should be
> reversed in error paths by putting the reference to obtained device.
> 
> Fixes: bcff4cba41bc ("PHY: Exynos: Add Exynos5250 SATA PHY driver")
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  drivers/phy/samsung/phy-exynos5250-sata.c | 20 ++++++++++++++------
>  1 file changed, 14 insertions(+), 6 deletions(-)

I forgot:
Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>

https://lore.kernel.org/all/018501d834eb$01e62ad0$05b28070$@samsung.com/


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
