Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F028C55822
	for <linux-phy@archiver.kernel.org>; Wed,  5 Aug 2026 07:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0SjfrQiMsG5e5suYJcMmtc/gTdtSkmD7MRTdvxvMvtY=; b=vw8YBoQlODitx+
	fldDiRTQFtRPnN371ETLFX8qzsvooVNnKb6YrajOtUUB0Im1Knr7gYpXG82L/mj6Pe4mGutB8GgM6
	uaVInalRklJzqbq+MFe7Ss4dxi7tK/efSWxpQOKcznmt2mxdvjNyv9OxT02SjIOCQXFMOPndWSh+f
	vs1tsm9Ro+C6OUnCpcwOO7fpo7PRU/bo1Obzvg/26qyrwBVpDqVny/3IhiUv9EwabgMy2FOlff+0P
	7aaHINximyARjU/VrxEK9GEJfx9AprOZCX9Iqmf5f8sZ+IHjGarJea78DQTYij4MY6b1mk6OuqyvN
	fudRFlKECqgOg8rjkMeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrW1i-00000003P6r-3SbM;
	Wed, 05 Aug 2026 07:26:58 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrW1f-00000003P6B-29dp
	for linux-phy@lists.infradead.org;
	Wed, 05 Aug 2026 07:26:57 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-49553515a8bso8769715e9.1
        for <linux-phy@lists.infradead.org>; Wed, 05 Aug 2026 00:26:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sigma-star.at; s=google; t=1785914813; x=1786519613; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=twTeQfheFVdLzfrMuJjB8uMdt+x4381kwqcX7wxLE60=;
        b=qa3gcsnY5N/b+FgDodw+j5g6dGMJ/JA78JEKviSsapQ7vmY/aa95Z7IJSgFFrEnOgu
         Hu4gsqgfniTI99uOlK00iLuZXfFGAaTzl3UCXgEb8q/eRp7ufvgE8zm9hYlyPD+bHXXE
         hpVoKyuz15QpT0EnE3Fvgmr/e95I9TsnRRGb7qdnra/TiKn4Rh2NvMJKrcpFNLflB1Ol
         /zjaxmT0B8AkctmV1viez6t5ec3N9yds2hjVX+IgW8NCeLifMbVQY4NjAkUTHaxCplrL
         +MTByf+uTqipizctozryzUhFQGI8fAbDmfafhF8gJ3mImHiJAEwK8YU5+7fiQClu9c/1
         Cfgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785914813; x=1786519613;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=twTeQfheFVdLzfrMuJjB8uMdt+x4381kwqcX7wxLE60=;
        b=cb7ddEyWRWELmqkFd0qYV3IAsbx/WeVLirnBm7uToaUznK2vlSg22n4JHaz+CyWCop
         FtdFjPeuo/x+AX4xG/uD4jEkOuvncZmeR49cr6PHmYVCMXHxfDmAwUVsg175whBIwsjs
         bm8qCMJeR0wDTw3OMU9STxbYJ41Stagw8PkOiG8UwBPXdMdN5cR5Ok61+CuVvSo1jllG
         aDqXB7W8SPnEW9pVHXm9XTUnVCN9NFBX7lWTvNi5aKFMIPxtiUMMnZ0Eu8nJBO+rNMkn
         XbA2RWvwVm79Pgejz/FMVBJcHVsMKKjUHliudQVhpknHSC3THYQRuFeecR+98llCZnt7
         Qy7Q==
X-Forwarded-Encrypted: i=1; AHgh+RpwmmMZpLUe3ZRXujRHqkxfe15c8iAHSARDSZboAuRiT80aLtj0+OoLLax+ikjaos+EqE9CX+XiURA=@lists.infradead.org
X-Gm-Message-State: AOJu0YwvuLFBTXN94B4lC5FrU9Qi/3SdQNZDtJ0oXHA/SkWAs+xFwcBe
	P5c2r2Hj8QJAq3x47UF08f4ql5OBANgA4cW4OknC/yEPEKpA4hBf5YZ4HduNhFBWnus=
X-Gm-Gg: AR+sD1332Mb5qZkQf0Hz2+NGFCXJRFHNq3ypDua1cIQDa3BBvAkg+V5nSmWSjyR0BU6
	4WLWeNxanaIdcIeSvlRs2k0LKziBATpQu7oOCCytN0vdBcwXRjkz9CCIF4oob7rZMsBf2bfITry
	D0hBi7AzxPPN6640/dx32sgplajOSAjmtbYugzevPKgkbGbCGoNAk2Cv60fbxypAff88yV3roV4
	3yN5GrzSn4C1giSXIuUyK14669/rBNO3TL6YubzLTlfdmT1KEoP4vNtzS3U74RPE0xkb+Z3537W
	59YnFaFj/sStZGFZXVH3u6D+pbU0rYlLF4gqhb5WHk2NDki3jNZ5h7vgZeFOFEL1s6P5/jKHso8
	6w090qaz0yU0T8712uWs/+uB4UNd1C0bvgDN4uiEsSJKoUkkZPGgjA6Hoftifsd2fVkj1og5xmC
	IUxs/M/5pETqrPNUi1S/sxpcjcxlP7/PXERr3AlDChsK6Rcvbxzu/sc0fl1kCzmu9dmFj5M99pS
	F6zKmbs8mk=
X-Received: by 2002:a05:600c:3589:b0:493:c845:bc20 with SMTP id 5b1f17b1804b1-4994e79ab0emr51987475e9.4.1785914813464;
        Wed, 05 Aug 2026 00:26:53 -0700 (PDT)
Received: from [10.115.255.165] ([82.150.214.1])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49949fcb345sm153939695e9.6.2026.08.05.00.26.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Aug 2026 00:26:53 -0700 (PDT)
Message-ID: <a88bbbb3-2a6b-4b2b-85ec-479d3ba5299a@sigma-star.at>
Date: Wed, 5 Aug 2026 09:26:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] phy: ti: ti-pipe3: allow configuring ACSPCIe TX/RX
 mode
To: sashiko-reviews@lists.linux.dev
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com,
 robh@kernel.org, conor+dt@kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20260804111849.92046-1-david.oberhollenzer@sigma-star.at>
 <20260804111849.92046-2-david.oberhollenzer@sigma-star.at>
 <20260804112702.497CF1F000E9@smtp.kernel.org>
Content-Language: en-US
From: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
In-Reply-To: <20260804112702.497CF1F000E9@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260805_002655_993549_E11ACCB1 
X-CRM114-Status: GOOD (  13.64  )
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

Hi,

On 8/4/26 1:27 PM, sashiko-bot@kernel.org wrote:
>> +
>> +	regmap = syscon_regmap_lookup_by_phandle_args(np,
>> +						      "syscon-acspcie-tx-rx",
>> +						      2, args);
>> +	if (IS_ERR(regmap)) {
>> +		dev_warn(phy->dev, "can't get syscon-acspcie-tx-rx\n");
>> +		return -EINVAL;
> 
> [Severity: High]
> Does this code inadvertently break probe deferral?
> 
> If the syscon provider is not yet ready, syscon_regmap_lookup_by_phandle_args()
> will return -EPROBE_DEFER.

It will not. syscon_regmap_lookup_by_phandle_args() internally wraps
of_parse_phandle_with_fixed_args(), the implementation of which can
either return -EINVAL or -ENODEV.

The only additional error path in syscon_regmap_lookup_by_phandle_args()
also returns -ENODEV. At worst, this will mask -ENODEV as -EINVAL.

> 
>> +	if (phy->mode == PIPE3_MODE_PCIE) {
>> +		ret = ti_pipe3_acspcie_tx_rx_mode(phy);
>> +		if (ret)
>> +			dev_warn(dev, "failed to set ACSPCIe TX/RX mode\n");
>> +	}
>> +
>>   	ret = ti_pipe3_get_pll_base(phy);
> > Is it intentional that the error returned from ti_pipe3_acspcie_tx_rx_mode()
> is ignored?

Yes, I tried to following established convention by modeling the implementation
after other drivers that need to set syscon register bits during probe.

For instance, the dra7 pcie driver. See: dra7xx_pcie_unaligned_memaccess() or
dra7xx_pcie_configure_two_lane(). Those follow the same structure,
returning -EINVAL on lookup failure or the result from regmap_update_bits().

Where the setting is optional, a warning is issued on failure, but the probe
then simply continues.

Thanks,

David


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
