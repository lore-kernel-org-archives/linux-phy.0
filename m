Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5D31C27C4F
	for <linux-phy@archiver.kernel.org>; Sat, 22 Jun 2024 00:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MNFc/8FF5fCeEoZUktoDeylNWo1mt8/Q83le6K2XjiI=; b=JPcBMc5S9L2GbT
	LxXfSnzABaxiYDIkHWeQc9WSsuHM4A7FpF3Ya2DXnm2wCUQv5R9p8dvdKjF2aKsxRgYYIhqVIqFgo
	HhAiObEm0T7iz1bJhDDWXNvbysra9qH31Mt35nsI8hL3hbQdi2WucoyRTaN07XeeyEBFAWExNh2Fd
	xvj1r/Y8rSGiOAKJsgP4Tig3+IfvCQwmGzuQkEHcWltzcw4HlavxQRdT0gAsVeR3R1mVRvj0PrDfD
	vdXRvitFaqPBNrl8z5rwm30PBYrgtYGGv1R4e5AwVoIE97v+XmxpVI6plGNgzWARkmGmZ5gto+rid
	z4v8PMR5rRxx0jFlHZmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKoDb-0000000Awum-1mKG;
	Sat, 22 Jun 2024 00:02:59 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKoDY-0000000Awt8-1FPz
	for linux-phy@lists.infradead.org;
	Sat, 22 Jun 2024 00:02:57 +0000
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-1ee5f3123d8so260395ad.1
        for <linux-phy@lists.infradead.org>; Fri, 21 Jun 2024 17:02:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1719014575; x=1719619375; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZKL3Ob2WAKzLO04704Z5sQXorDiAFlpzm4XvX6LMpSo=;
        b=LbFdWkEiGMmomp4K2mt/EG0xGcWYi4br3D52w0ptPRXpMn3L/68BbAMg65kCzN342o
         8gbRkm1jLr+AAt1NFuwQM9yFHVWM+ihqLZHlIlgJNRLDjphW2AZlnIpovuVvDzxRhLJl
         51IR8oIfis8aV6uVd4igazoL2JGYE92B2Dk8elHltZmxRXAwSXx7/HLDapctMtNzoq9d
         EhjmEWY+D74LD2WXNZnUyHTXedrL5oe7DVYnphWdPQGUKrK6GmfCEXtF+lC8HkQ1ulLH
         NNHcpJgDvAxu/PLR+dKIXJzYWPh6S0WG1vw2p51l4C1LUOdb7ME+Es65wkN8hdbnVHeL
         rHWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719014575; x=1719619375;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZKL3Ob2WAKzLO04704Z5sQXorDiAFlpzm4XvX6LMpSo=;
        b=IjX4Iy9amATSspLniwaDDkecZCVe+OCXzLlGet7FaVUzgzU547nGlLDrYLGdN+5q+h
         Cj2yeiQK7rYZNTtj97bhIHLw6sFd9k8/J4GQlqLUq+9kkwbm0xEsUbeGpMRePi/qfSir
         1BJePinphq3QrQjFMhJFbPk6oPFoZWZu54MhLtpMQYAFI+Tr7orG5ONlJ/ubudtE6Ko9
         jcqG9ympnP/Ut4beeH21lKyP5QXm364uPgPZQVcQ5FEDaIjHbho5+BeDCfya7TbZdflA
         9B0rxKFswXu5jbNHgCYSRpOPCpykJS7vUdlKdGE4E+9eu/s2KbtWq14PIhX43KDGGk3c
         JziQ==
X-Forwarded-Encrypted: i=1; AJvYcCV6j83HV6XG/nVb+DvbFwgA0Z28qInDHhJx0/NKcslrb42eXGG7CA2qZxaoz6YQDd6Vj5UsJlZsC34zPGi2WgP3KDKTDPSXYW+pq+wcSw==
X-Gm-Message-State: AOJu0Yz1WVqvvg9D8l3kzEVIg8z3zefH/lHUTNY5ogTZpCp70+YeluU4
	Rw6tNez0jikaKo0+kI1kvMz2UPjEpfMk8gSyCy5J1Id5Y2GgYIrg7OvNp/WRjg==
X-Google-Smtp-Source: AGHT+IHUFXeaQYF9WfXTaG7PWlBW0+51teEIBewQMLdSyL6bYHNzJ4mSmvAEU55XuWAiXYSbV3zMqA==
X-Received: by 2002:a17:902:bd46:b0:1f6:fe11:a7fb with SMTP id d9443c01a7336-1fa09ef386emr876825ad.9.1719014574664;
        Fri, 21 Jun 2024 17:02:54 -0700 (PDT)
Received: from google.com (7.104.168.34.bc.googleusercontent.com. [34.168.104.7])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f9eb3c6ecdsm19692695ad.136.2024.06.21.17.02.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jun 2024 17:02:53 -0700 (PDT)
Date: Fri, 21 Jun 2024 17:02:50 -0700
From: William McVicker <willmcvicker@google.com>
To: =?iso-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Peter Griffin <peter.griffin@linaro.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Sam Protsenko <semen.protsenko@linaro.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Roy Luo <royluo@google.com>, kernel-team@android.com,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH v3 2/6] phy: exynos5-usbdrd: support isolating HS and SS
 ports independently
Message-ID: <ZnYUqpxvq5K8o6o6@google.com>
References: <20240617-usb-phy-gs101-v3-0-b66de9ae7424@linaro.org>
 <20240617-usb-phy-gs101-v3-2-b66de9ae7424@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240617-usb-phy-gs101-v3-2-b66de9ae7424@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240621_170256_376877_9FAC1BA6 
X-CRM114-Status: GOOD (  10.11  )
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

On 06/17/2024, Andr=E9 Draszik wrote:
> Some versions of this IP have been integrated using separate PMU power
> control registers for the HS and SS parts. One example is the Google
> Tensor gs101 SoC.
> =

> Such SoCs can now set pmu_offset_usbdrd0_phy_ss in their
> exynos5_usbdrd_phy_drvdata for the SS phy to the appropriate value.
> =

> The existing 'usbdrdphy' alias can not be used in this case because
> that is meant for determining the correct PMU offset if multiple
> distinct PHYs exist in the system (as opposed to one PHY with multiple
> isolators).
> =

> Signed-off-by: Andr=E9 Draszik <andre.draszik@linaro.org>

Tested-by: Will McVicker <willmcvicker@google.com>

[...]

Thanks,
Will

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
