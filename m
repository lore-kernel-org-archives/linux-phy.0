Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 662F9C27C4F
	for <linux-phy@archiver.kernel.org>; Sat, 22 Jun 2024 00:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ElKI85UTs1p04DwkUxeH9mqP0Rg0zIEmKqJiWvIGcE=; b=nK1Yr3vjq39dY2
	lZcPG8qWPT4itx/fI0CHXbgd/3exgqnr4GeJHUqPwS0T1rQK6Rimgb9SchoGXdFuKOl4Yrq2rVViZ
	noFqOyCM/rdlz3AqBHOIgZ7zCWP/qKx8JwY++tBJF9vVF1VQw2ga3/qtYrhv79li1DSU66MpdxsV9
	JGugfqUSUEGh9XfzNr2+EpCt/vj4Ukno8HufZPt8lxrKmwziYGUFgVj6reP1wuSECug+fa3wjEdFJ
	HeRqCzbOfuJkSbyGqZFa6Fu1KK0PHZiU8FHlkQAHZrDAkaJJgZYj9cYL1fUrv+rzsu80zb6lPPfYz
	IxIUwDheBu69CKp8QcHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKoHN-0000000AxzV-0DxV;
	Sat, 22 Jun 2024 00:06:53 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKoHH-0000000AxvW-1Zjk
	for linux-phy@lists.infradead.org;
	Sat, 22 Jun 2024 00:06:48 +0000
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-1f70fdc9645so222775ad.1
        for <linux-phy@lists.infradead.org>; Fri, 21 Jun 2024 17:06:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1719014806; x=1719619606; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=50aRBwML1alf49hO+1BmWw804OZfmi02o/xT006me7w=;
        b=q57qs1b7mti7OZV/FcLWYOEHaACY1juoHvOEv2DBmzUWTyvovMXnPLFuAElPlYHoOY
         vzmV7gMVsB/PyWPdofnNVw4j7gpZ/ccPMRm2RKgKKnqhQKJBRk++sUCPRaflXNXrUZk7
         uMgs/XMZMUiwDZsqr81GVXf9TWtzCvMIY9JgPjg/LKQDxysqSvx1B+Ia/6UmnXyVGb8Y
         NNDjI60UKHvKaeZNGdPHDJ8Ql9OhNb5bBQkNknmzJ0n0zezxNntMFK2ra3GaT6qyzfSY
         tykzJAm8ZJzGqnBbnmooV8Oc2g2LCY3FOPHsTTqJkM5LWmHo4bvsHOBSjEIsQOt07VuU
         +4Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719014806; x=1719619606;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=50aRBwML1alf49hO+1BmWw804OZfmi02o/xT006me7w=;
        b=Tq7OpUwi8C8/xJ1XfAs14rPs7DGfIqS+csQtZeNPNyw9+713RyGWVrhyC2iS8bKm5m
         QbDN+95gCJw3eOfNIaD34tpcoHctfCwbs3eg2x/mBm1pi66EeW8Qxg4rRr7MpeniA+UZ
         3um/o5KDyQtExnomvHqBl/sTO2LZufip4Bigx3IJwSRbMEKOevrPp5ZZNgxnB+hF2A35
         Su/ZwBr67xVbIs0oD6v+7rPQlSPr1G9nytZxSpT6rvK+zeOl0PxWRibL3CKefA6TETKG
         ik9iaIja/ed4TMnaK2x9DkbzxmdlEUQQKSmm+l9dmteLlZPLutnIZ6vQSUD2qGkB/gIe
         k+qQ==
X-Forwarded-Encrypted: i=1; AJvYcCUMnywP9Zi1FdbuIe310y0aQVL3s1VI6fz/hCulIVWvDEVvQwUw1JmJsqZGOcy/zajYPr5+pw4ArrhTdYObAX456YGlouDoWvyvAH/nPQ==
X-Gm-Message-State: AOJu0YxgF4dpJ4/gbmSPvCsJOv95VIrq9m+1AFm1WBcCwQkC4e1izlZi
	nT105rNmG5OuOvWAOWZY2X7JA1BaZVzPWHD0rI+1a6+cy2ixVedKWqpQRQB71Q==
X-Google-Smtp-Source: AGHT+IH2DpcqGgyH+HjMIKHYfMU0Aprz6jSxhq9kEXfnCX/pqvkRFp0LybPg6McZN0Dup2hfAWO3ng==
X-Received: by 2002:a17:902:7689:b0:1f9:bc99:d94a with SMTP id d9443c01a7336-1fa09ff2e18mr845625ad.5.1719014806175;
        Fri, 21 Jun 2024 17:06:46 -0700 (PDT)
Received: from google.com (7.104.168.34.bc.googleusercontent.com. [34.168.104.7])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-706512d6088sm2058052b3a.175.2024.06.21.17.06.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jun 2024 17:06:45 -0700 (PDT)
Date: Fri, 21 Jun 2024 17:06:42 -0700
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
Subject: Re: [PATCH v3 5/6] phy: exynos5-usbdrd: convert Vbus supplies to
 regulator_bulk
Message-ID: <ZnYVkmVjHiaOVJ9b@google.com>
References: <20240617-usb-phy-gs101-v3-0-b66de9ae7424@linaro.org>
 <20240617-usb-phy-gs101-v3-5-b66de9ae7424@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240617-usb-phy-gs101-v3-5-b66de9ae7424@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240621_170647_461779_E9EA171E 
X-CRM114-Status: GOOD (  13.04  )
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
> Using the regulator_bulk APIs, the handling of power supplies becomes
> much simpler. There is no need anymore to check if regulators have been
> acquired or not, the bulk APIs will do all the work for us. We can also
> drop the various handles to the individual power supplies in the driver
> runtime data and instead simply treat them all as one thing. Error
> cleanup also becomes much simpler.
> =

> Converting to the regulator_bulk APIs also makes it easier to add
> support for those SoCs that have additional power supplies for the PHY.
> Google Tensor gs101 is one example of such a SoC. Otherwise we'd have
> to add all additional supplies individually via individual calls to
> regulator_get() and enable/disable handle them all individually,
> including complicated error handling. That doesn't scale and clutters
> the code.
> =

> Just update the code to use the regulator_bulk APIs.
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
