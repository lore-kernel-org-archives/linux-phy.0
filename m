Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1FE7C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 29 Jun 2022 06:05:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fXbtfcQviseZ2vwJYoIm+u3ve5wK4iKwJhmFMCYeSjo=; b=3ly2R9Xm+V71du
	k5+8irnApVfHFIc5KVXnngsXP779F5hHPj5ItWf1Lu7BiXMRBs2iufNDkjSXWC12udrpxdfY4sLv5
	+sqoYUyYdf1bJuEp+0HO+Jyhf4We9ckXTb3Vfiv8X+TsWlBo9OSuGh3IRWjU32X3JEeA9eAPjfXFX
	MHyhPnOOuornSpNgEWaU5qkfz5wRA16RYEtUrKn1+e8sX3RCt2jYWcAGgfv6EOO2kTjO7H7NlyNie
	UplSA8RmCZRjKPjn7z4bmuvtqshmw5+Yn49g7SdlOED3kKUG22I1SkHliyKfYvss/vhjabt91DLFS
	VT/Bpcs4ULdAjrNNu6Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6QpA-009i5f-AF; Wed, 29 Jun 2022 06:05:16 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Qp6-009i1Y-RN
	for linux-phy@lists.infradead.org; Wed, 29 Jun 2022 06:05:14 +0000
Received: by mail-ej1-x633.google.com with SMTP id h23so30298954ejj.12
        for <linux-phy@lists.infradead.org>; Tue, 28 Jun 2022 23:05:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=uGY+jOQ2fDtGwhpBG0jOGtMDvHqQPy+lwiNiTo9tAGI=;
        b=cU3RsXB7qJInbLOuBSrC30bSU4N38bE5ivi1ybaT3QdSZsHMZLnZNKMw7An9Y7Ktp6
         eH5OBkK9gJImXGJQnY2TyQVYghECaPvsH/5L0Dbxa4wVov00ETIjspX7mAWpHmsxjUwQ
         n3XBJCU1ON3a15RksIfFywIpTyvbzMbhnlDEXv6CJqhjQPKM+H0NFwcQrPDLHZEuSXfK
         A982nTDFM7gIQkwCfJP77i+Wkob9qnnRZYnAd9y+mpieiV5mOx0Z9DR9qR5x0hTkIcJT
         Q/79G3udrYYLwtK/zFvMKjaf6MjDzNY2AwN0g4arX9HEOTK7xHfIl1SkrB0q8VkiI/vd
         Gxag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=uGY+jOQ2fDtGwhpBG0jOGtMDvHqQPy+lwiNiTo9tAGI=;
        b=X9wbD80fPG6Op0opP/NgzF2b5+9MhGqzQto+1oIhpOZzefGl22FNxgeNvNqDnnx7Lc
         35gsCnPqhYXhzQqY5C/MKi2I8iC/kmxQfwOnwta96beYUpBQN5AvqBDr2s8GtbVBDZKw
         8Vbah3MtkI40pWthQVK5OhoHJ4hNcXpdH+VwgRKUqZs7HLllpvFI7dTAI3BR8adcpmfs
         zYuWwKQB7Maq+UcQce7Hm1epI7ZdjEar0cNGodT0jBlY52v1yKRrjVr3uG4UiF3EnX1D
         I+l/9bScv6eWBymSeokYAEQjRVjvzFgVa/SrctELSOS6NYhwPCZf6EzOYPtTWvGBRuRX
         +6gA==
X-Gm-Message-State: AJIora8iwGOitI5QchcbopWVU8qTdn/CRF4b2w0bS3PWaGyevsLfCD1W
	5iiiF9w0m9e73g6kswAcJOTDUJecs0W8Kw==
X-Google-Smtp-Source: AGRyM1vGU72GMkFkoo/ffWzfMP4gjWTNAd01+PTMiL3WQsSd9gW5N5OlaaRS+NAtsf/jdGEZlA0z/w==
X-Received: by 2002:a17:907:2814:b0:72a:3758:e948 with SMTP id eb20-20020a170907281400b0072a3758e948mr658896ejc.8.1656482708846;
        Tue, 28 Jun 2022 23:05:08 -0700 (PDT)
Received: from [192.168.0.181] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id i23-20020aa7c9d7000000b0042de3d661d2sm10692507edt.1.2022.06.28.23.05.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jun 2022 23:05:08 -0700 (PDT)
Message-ID: <19b5c553-466a-14c6-bf29-577323d9ec29@linaro.org>
Date: Wed, 29 Jun 2022 08:05:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 2/2] PCI: dwc: exynos: Correct generic PHY usage
Content-Language: en-US
To: Marek Szyprowski <m.szyprowski@samsung.com>, linux-pci@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-phy@lists.infradead.org
Cc: Jingoo Han <jingoohan1@gmail.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>, Rob Herring <robh@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Alim Akhtar <alim.akhtar@samsung.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
References: <20220628220409.26545-1-m.szyprowski@samsung.com>
 <CGME20220628220441eucas1p2098d46abc47ec1888781fdc5319dec67@eucas1p2.samsung.com>
 <20220628220409.26545-2-m.szyprowski@samsung.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220628220409.26545-2-m.szyprowski@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_230512_932906_6CD4C679 
X-CRM114-Status: UNSURE (   8.96  )
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

On 29/06/2022 00:04, Marek Szyprowski wrote:
> The proper initialization for generic PHYs is to call first phy_init(),
> then phy_power_on().
> 
> While touching this, lets remove the phy_reset() call. It is just a
> left-over from the obsoleted Exynos5440 support and current exynos-pcie
> PHY driver doesn't even support this function. It is also rarely used by
> other drivers.
> 
> Reported-by: Bjorn Helgaas <helgaas@kernel.org>
> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
