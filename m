Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADF0AD132DC
	for <linux-phy@archiver.kernel.org>; Mon,  4 Nov 2024 15:04:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m3GehAGEOG+NmTT3HXs0utAG7L6TvbdbL0IWd1APIvI=; b=qR8J10I7o3D1s6
	CK92rQDPW4lyJKJ/EUkr0LpfkFeeyl5SqHZ3v+Li+rQ4w7baHhX7F1jjhBR4s3Ru5Poadj2T7aGpF
	oTlcuxp/0zErm0g/xy4G4Qs9WbTi9zbLhf0EPSQYbqpLtMP5u2ovG/nsODkCO3ckA3LPnmIvQ+T4d
	GKP9F0urq/hNPljEhXURod1iwNAY07LFyVjH5kz7i3/adZbUCuUnR0fEVSBLWHyXQqT5WAAcCqB+s
	vYykESgHc7Z4e7TsgGhxTt98dRbedCxYo5klwzEL3QFUn/DhawgrZPqFrZlKvq5CQG0jsxb+EOXr8
	2qsU7l/bRXS6Ek9j9DSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t7yd9-0000000E9BC-1Ys5;
	Mon, 04 Nov 2024 15:04:35 +0000
Received: from mail-pl1-f169.google.com ([209.85.214.169])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t7yYV-0000000E8TR-35Th
	for linux-phy@lists.infradead.org;
	Mon, 04 Nov 2024 14:59:48 +0000
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-2110a622d76so33136185ad.3
        for <linux-phy@lists.infradead.org>; Mon, 04 Nov 2024 06:59:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730732386; x=1731337186;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gr0jtS7zZ2oj1cd2PLPMdaTzBHzgs6RxpDJFvPE4aGg=;
        b=XrRtgi7h2KUhC9BoefsLCj3riIt/ofF/M3UtFkPxs8JxXjDlZ7fV7cfPN9SYWhNse4
         8tsdQ5GGUCovlR42AaKzPk4KJQcn7KLnN0lRNiPtWwDpKOscieMSO0AGJ/6b2ijYVe6K
         SdH4+hbggofocGveci1RSfBXfFhzLpqqQVGVPNmwd5GmEfgvh8MiYYTzGGOnMxAGxoJD
         ZlO3RTYreux/A0DlnTo+sTXttlkpOwkoC0Ik4y5Jby+Gh99813YtBf7Q3BaOuO569o+r
         DdnBq3gG39TrBVJtjL5Aud45O2KjXBZZTQRxrUrd887pTgNrsKrJlglzafZyw4/RE2Tv
         Kwzg==
X-Forwarded-Encrypted: i=1; AJvYcCUgG7TjNm3HVXA3q4G/w7/fETMN+EEUwh0MYOgtmrxY6mt2aqyV555xRkGZGee80U1QJ21OSd6CPeI=@lists.infradead.org
X-Gm-Message-State: AOJu0YwTn3h8QdU5ZPNadGBlmBFicm+emQlKWlFfkvYf29aY7Juh+dc6
	WZwz0p13H8jxmcBAIE+cbG82AaBjzJp8OK/l2H9kRgX2XueaiGYZ
X-Google-Smtp-Source: AGHT+IEKFF2pf9+qnV3p/CBnMZS90cHheh2Db5OhuRxWOHUG2HFZZI9DUAkdR6mo4gHzv+NOdNUXyw==
X-Received: by 2002:a17:902:f691:b0:20c:dbff:b9e5 with SMTP id d9443c01a7336-210c6c0e54dmr431989415ad.33.1730732386346;
        Mon, 04 Nov 2024 06:59:46 -0800 (PST)
Received: from localhost (fpd11144dd.ap.nuro.jp. [209.17.68.221])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21105715434sm61769245ad.113.2024.11.04.06.59.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2024 06:59:45 -0800 (PST)
Date: Mon, 4 Nov 2024 23:59:44 +0900
From: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
To: Johan Hovold <johan@kernel.org>
Cc: Qiang Yu <quic_qianyu@quicinc.com>, manivannan.sadhasivam@linaro.org,
	vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	andersson@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
	abel.vesa@linaro.org, quic_msarkar@quicinc.com,
	quic_devipriy@quicinc.com, dmitry.baryshkov@linaro.org,
	lpieralisi@kernel.org, neil.armstrong@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
	johan+linaro@kernel.org
Subject: Re: [PATCH v8 4/5] PCI: qcom: Disable ASPM L0s for X1E80100
Message-ID: <20241104145944.GB3230448@rocinante>
References: <20241101030902.579789-1-quic_qianyu@quicinc.com>
 <20241101030902.579789-5-quic_qianyu@quicinc.com>
 <ZyjaPtGtRlsIO64b@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZyjaPtGtRlsIO64b@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241104_065947_801414_D548755F 
X-CRM114-Status: UNSURE (   6.81  )
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

Hello,

[...]
> This one should also have been marked for backporting:
> 
> Fixes: 6d0c39324c5f ("PCI: qcom: Add X1E80100 PCIe support")
> Cc: stable@vger.kernel.org	# 6.9

Added.

> Looks much better now either way:
> 
> Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

Also added.  Thank you!

	Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
