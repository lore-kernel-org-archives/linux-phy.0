Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 954DDE77188
	for <linux-phy@archiver.kernel.org>; Thu, 26 Dec 2024 17:34:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eCzTK+U+vNcYOwKfxWXHw7Qs1BCjTatMKkRxWPahgS8=; b=yCHiVn39RLF4rr
	DHVf28Iosu6VERwOchwP5dIJffI7vQYa625190o6gI01bjXIyeFxiBWyKUWgcLJ2yvKSIcCk2JKIP
	/HFj0A4O3UYBb31gsMOEEVS+5bpvL0mDbDHW8ZbybEh3P/6Va34XFnUrDjl3bYs44lBMmC29hxNGG
	4432zgo5CgTnS1GJVVBtul/79aUX0Ev/9Sbe5Npr4Z8dqHUO6yd9aT3qqykayglc1hZ4YOSnnEl5d
	I72XXexbbJNK+t2Lulcwwx6SxOYyxTUgkKJfd8rUjen4AycZkQLtGLHJxylTpXmUrBqFRKo2np3AP
	cW7nUp7GgY9ModRsg9zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQrl3-0000000G9O1-1X9f;
	Thu, 26 Dec 2024 17:34:49 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQrhR-0000000G8r2-1pE3
	for linux-phy@lists.infradead.org;
	Thu, 26 Dec 2024 17:31:06 +0000
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-216634dd574so52825395ad.2
        for <linux-phy@lists.infradead.org>; Thu, 26 Dec 2024 09:31:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1735234264; x=1735839064; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xcUZWE3ppguCfT0Ghk6RY8lNJANWnC8EbI6p5AXiKeg=;
        b=XqBlI8icyNybVdvPRF8SXZFlCEVIckZSGoWKiM6Go430Pgs2uVZPEOP7wp9/LhSTRq
         sd6KYVONYSm0IHCJd3Cb7Mu0HjUiY3uKiWgFy/F3rDkG7mCKY4OGpDiX/Q+ykZE5OLtO
         JDRjOzVYcXweAt3/J/q+dglHq+x/MmRdlyiuvblS0X8uRGPhuuuoRgrFSeBSoVFgnzhU
         ayxsmeHmFYqBYrNAVYd2u7cPRvXORE9g1WsUIZW5DN04keHOcn9lcMUxQdARp/lS+s8m
         3KLtvXU21KZlN+CvggvDW3n5UYqQCNLI5h7zpIvNi88AFK6lflmPoCxMa7TzefdDsLke
         yXtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735234264; x=1735839064;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xcUZWE3ppguCfT0Ghk6RY8lNJANWnC8EbI6p5AXiKeg=;
        b=sirLykY3VtDqK34hbjW8DDIpkd+OQaLmKfnd6piDsJ+scIyjhs/M6SK90lyaMbYrfn
         GR7lP2NHsl6Ndwtl9MERJDV1RhjHzd1PO/FM72moyUtq7sl/Qu7ApVZBhAc+4INdmqWa
         gmSl8LxWt5rOptMSyTJZ/cLpK8NQ4UcbhzJlQfmA0ssGOtIZSZ8MdOF3+JexXrV576LC
         /mH2Qe3gZCzbI7U/vyDO3Bri4u66ZnkuQkXcVhQhlkaZGvOlnsOVhrSTKm6Lt4TiGBZR
         P0UEVILFpGIploRyRvnABJtU69DnAwo4+DpgYa8pJ+dUZRvKv+kRCHvMPzhZtNzTfkEU
         UdjA==
X-Forwarded-Encrypted: i=1; AJvYcCX/zp7xTuMPgmEhnBgEeeqmUCIMYsqYA7dqzUF4ES0HGiSc05A9s1RLQmaa8fNF+6Vfviym+AJd5yU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxFzGHHBYIR0X+VCYigT0Q4R91PjsqwjA6srtbNpkoGWm7eXeou
	zzjWQ5bKshe6uz3I57c3cSx4hMmLQM/XoLPDb/dGLNBKG7Ik3xVTXQIN/yMAbA==
X-Gm-Gg: ASbGncth7sg9yjIit/W7qilmfHVMpe+NLoAT2KBRxltUrFDvTDfS93npEQ3Z1r1a/IV
	8v/RAr2eE9ks6snWUsvFGUqbWs2Wh1fQUCQsOwxXwFk5PR8IlraKecFONs9ZTwFoG1nzGC84KH9
	XNMl0j/hJ7uOJ9G355rs4m76wg3zNcRR/QBbehwzkLjpbMhyjksDLGCf38/VUKZAPLqc/y7v5ak
	u3/WuQJatwfCLH49aiRG2/PLiRe4n8bcUPMyhs+gtDFb5blidxOJ8Cx6W/eVtqfurwg46MDagJ4
	vHNReMk9+ZSpzJ3oEcptD3xu
X-Google-Smtp-Source: AGHT+IHAfn46MsITOFrPVZJ4vXZEH6EHEc/IQOmoCmQiapMunnWTNeZzpppaV467WwIqrvzfz6A1dA==
X-Received: by 2002:a05:6a00:414a:b0:725:96b1:d217 with SMTP id d2e1a72fcca58-72abdd7e0e5mr28935333b3a.9.1735234264082;
        Thu, 26 Dec 2024 09:31:04 -0800 (PST)
Received: from google.com (123.65.230.35.bc.googleusercontent.com. [35.230.65.123])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72aad8dbbf6sm13136269b3a.111.2024.12.26.09.31.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Dec 2024 09:31:03 -0800 (PST)
Date: Thu, 26 Dec 2024 09:31:00 -0800
From: William McVicker <willmcvicker@google.com>
To: =?iso-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Peter Griffin <peter.griffin@linaro.org>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Sam Protsenko <semen.protsenko@linaro.org>,
	Roy Luo <royluo@google.com>, kernel-team@android.com,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH v4 4/7] phy: exynos5-usbdrd: fix EDS distribution tuning
 (gs101)
Message-ID: <Z22S1PPAQ4NKdrrY@google.com>
References: <20241206-gs101-phy-lanes-orientation-phy-v4-0-f5961268b149@linaro.org>
 <20241206-gs101-phy-lanes-orientation-phy-v4-4-f5961268b149@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241206-gs101-phy-lanes-orientation-phy-v4-4-f5961268b149@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241226_093105_468758_2AAF57F5 
X-CRM114-Status: GOOD (  14.20  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 12/06/2024, Andr=E9 Draszik wrote:
> This code's intention is to configure lane0 and lane2 tunings, but for
> lane2 there is a typo and it ends up tuning something else.
> =

> Fix the typo, as it doesn't appear to make sense to apply different
> tunings for lane0 vs lane2.
> =

> The same typo appears to exist in the bootloader, hence we restore the
> original value in the typo'd registers as well. This can be removed
> once / if the bootloader is updated.
> =

> Note that this is incorrect in the downstream driver as well - the
> values had been copied from there.
> =

> Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
> Tested-by: Peter Griffin <peter.griffin@linaro.org>
> Signed-off-by: Andr=E9 Draszik <andre.draszik@linaro.org>

Verified on my Pixel 6 Pro.

Tested-by: Will McVicker <willmcvicker@google.com>

Thanks,
Will

<snip>

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
