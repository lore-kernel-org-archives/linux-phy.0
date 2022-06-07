Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C88F0C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jun 2022 11:28:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Wx8P7S0N1mZ52LzOmr1fLtzGorWHHab8mNQ9WgprQg=; b=yrTzSmlmsA3Jq6
	pTZcYQw/miDoyDgyFk8d+87U/3repy691HeQzeH+z37HtfxYYWJPurj0zxFSCNFxNB3vHdBn4ILEC
	LHBYdWcbGLCUySXx1siAN4qMYWcZWtqw5m8J05xjXh0rHTryMB06BF6Eojhy44YwzD0NA+XPXutDs
	twAjxL1JeciafxyApKb8hHBe4ZXUV/cueo0bAEBQBJZGJcKBXZUXHrizmyWwVIwhcgyx+PfmUle55
	TPu3SsK38NdKqG4wYtREa1H9KU5alON308fBIEyl/eqkgMvLPck3aeRCPhchDoBI9MridibLa3ERL
	PFSv7dDFhzcgQE/x7N9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyXNc-00744T-Un; Tue, 07 Jun 2022 11:28:12 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyXJK-0072K8-0X
	for linux-phy@lists.infradead.org; Tue, 07 Jun 2022 11:23:47 +0000
Received: by mail-ej1-x62e.google.com with SMTP id v1so23843872ejg.13
        for <linux-phy@lists.infradead.org>; Tue, 07 Jun 2022 04:23:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=0bdzMNhV+eEkaALdIGf5lJGoFxZEf1N7uScazlN3ABI=;
        b=AQj3G2h/moiSY90+Zprxhki7NKUcfZ1jVdtK2htMWc0U8/rII/5R9GJjcrR72PktfO
         9jrq77utdRXjm5SzKL/KKU7spjaJDcX0kyTgg6E1zrAEqbvONK1PcpW5njWT0DxGArui
         natuICTBSPCEHXt3GEXrzkEymw9VNlesh8sAkC9JWIulSeRn4GwEb4E4nGHCc+JrZAjr
         ppTjacxZZMuAfiAyKTl4NTLIRnuiYtq2GnHMpyiHrZZF0x5Ah46IyMoBkYYcj2u37he9
         TFWZCU3DCn/phiPXxHfHxWx3FS4B9HPjXgLTpIFHg1DuxwJXz74NEhIS8OOvt7TR3cdL
         7fqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=0bdzMNhV+eEkaALdIGf5lJGoFxZEf1N7uScazlN3ABI=;
        b=U68Dd6m1uv9CyL94z/EdAe/H+eJ4JwQ+u2R6Dwm9iOQLkg9/610ybViAYJmDmlQbSC
         kZeXv3ceiMaH5TI4cE45Q9fyQhfKpXnwUXfSZE2D3cCtMuILHTYObV6SeT9z6UL43CIH
         4VSgcGLF8fPpj0nrPUobrF2hi2d1PjFsHc65Bh8/z6MUrrn/7eJC1d/5/woMhy1DIQ7v
         FsMaiuV1QwSNFl4B2gcPgfQm3KKdnkNezIuCWErl2mRP7ImxfU0XVs95fOAFtR3Ud0JU
         XQaZJHyaQZEwPQ8FCgfjRDfIYlFtkTGMED32jMhL0d65xsCtv5mJ5J+zORfz1y84hfV0
         2ssg==
X-Gm-Message-State: AOAM531DxmSBDNAXtHW6WCPSuAusF9GJn+LWCW4xgveV7gwTjnDx4BwZ
	aztwlcLzsFUF/K+cjOm7gHXhPg==
X-Google-Smtp-Source: ABdhPJyNkoR93R7Td3RPfDitzwFDD3/QZ+0tDUF3Fae0/IAJyHXMcRvv/v3MvfX+oytsSYwgkF8F1Q==
X-Received: by 2002:a17:906:99ca:b0:711:bdca:b85a with SMTP id s10-20020a17090699ca00b00711bdcab85amr12530244ejn.224.1654601020710;
        Tue, 07 Jun 2022 04:23:40 -0700 (PDT)
Received: from [192.168.0.183] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id v2-20020a170906b00200b006ff05d4726esm7512210ejy.50.2022.06.07.04.23.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jun 2022 04:23:40 -0700 (PDT)
Message-ID: <d5310b6a-ffe9-a72d-f324-2c00db036ae0@linaro.org>
Date: Tue, 7 Jun 2022 13:23:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v4 3/5] phy: samsung: ufs: constify samsung_ufs_phy_cfg
Content-Language: en-US
To: Chanho Park <chanho61.park@samsung.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20220607072907.127000-1-chanho61.park@samsung.com>
 <CGME20220607072938epcas2p4aa59fc2826fe0563bc1f8f68301e2bb4@epcas2p4.samsung.com>
 <20220607072907.127000-4-chanho61.park@samsung.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220607072907.127000-4-chanho61.park@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_042346_132993_1E8B89E6 
X-CRM114-Status: UNSURE (   6.86  )
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

On 07/06/2022 09:29, Chanho Park wrote:
> Put const qualifier of samsung_ufs_phy_cfg pointer because they will
> not be changed from drvdata.
> 
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
