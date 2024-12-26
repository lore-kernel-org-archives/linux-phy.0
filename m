Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FD45E77188
	for <linux-phy@archiver.kernel.org>; Thu, 26 Dec 2024 17:31:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o9E1XFDGIjTQb5PI/MAKSvDaWCnhaSY3buLfkqA1xeY=; b=y/SGb5PosWflFh
	Z/5NCm1MVI/elX6vBNcNZlBYd23zyWqIPGiovNahkxyDeIAzA/Ch6xxiUfzh+iSzbxxUk6IoUDLBX
	NygTcQnGNN+3rhwxKFqnkeNyMcrfzEL9vCpjRBm3xKp4QxVWyktRezB6ss13a+td7beqmPzT9ZRj2
	fRM0On4UhNb/lDYP8KlcwtTaLkhQojCW7IxNuklh2Ok7Z68J6skrK9zzC6x8Kkoi2WYKRYe2mbzKZ
	XquxIlX79Ar3sQ1dW8eEsiYScjpeOl96kpAl3T2JffnYL1BeVKjrJGwOCu1zeXjDowLNZ1b2ZnQst
	N9IaIzWNOeZ8Hqupzo0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQrhb-0000000G8tC-3dUZ;
	Thu, 26 Dec 2024 17:31:15 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQrgR-0000000G8iE-0Ghs
	for linux-phy@lists.infradead.org;
	Thu, 26 Dec 2024 17:30:04 +0000
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-2165448243fso91326765ad.1
        for <linux-phy@lists.infradead.org>; Thu, 26 Dec 2024 09:30:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1735234202; x=1735839002; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iOKmxq7sfOT/dN+VcRhgWDRuv9FZCWqojz7j41kMClM=;
        b=EvOviOVOQ4eiFF/vjRoZ7s1aHe9GA3c1MjpSVWRhFA6i+1qO20Z3rLfKBzwvF22sxe
         /fQGSj/Rmbuw8fX3kRbR6U/TvSua+qsRCySQqBQL/GlmcT4ShBTqtZTLzkrUdjq4VKXg
         6AwYmy712EADWnh4y4FPRZZpfIqG1AzWsL27cdHkEbqwJ+VYOzqpJ3+bTMpytVkLLFr/
         t/Cp8eZcAmwtfiGMtGyvylDJkTGjO6Ok2n4VXaqC79qHSu2itaHxSYmYTWYjJkYMhM9c
         4/sSkeQQDChVctQlQSo1zo/D0j+OU3QtoiAVHGIUiunOiiWGi3gqgKQx5kVt45S3fHl+
         Uusw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735234202; x=1735839002;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iOKmxq7sfOT/dN+VcRhgWDRuv9FZCWqojz7j41kMClM=;
        b=RZbgMin1o/kf4Z3Sw53liphp2In1RIHYMT1NbQEo0hFpVR6ctx3XC5/Z4gh82Apcoa
         34j494k9u9YMznq7+FqoLM09ov/WuCtR7YlGVQ1kI5gbBlDfemYHw9kafN6rqLczFXtJ
         hu50UhMuxFUqx0eEG+vgVdLBVKdowF/ccvdBn5g7c+UIBqVyDaVwqdghUjhypx1y3E5B
         8wNCQkeAP7axbJdKutZJ92TYxuAyDaoGTKThTn09f1wi/cPm25L9JR5e/+BdH6i6XT9a
         qU7Hv51luEKy/zaJq1EiKrBwlPNUACKRp2tkBhmQHcAN8rUFBLVCpa+tXEXIM9cRmrQx
         B5hg==
X-Forwarded-Encrypted: i=1; AJvYcCU0iT9wP5Lr4JZn/uNbIYHCjei56U82Jq19PLbkWGsX+rsK/XCAIkIu1ELcSEen/PmVM/pH0E7j1A0=@lists.infradead.org
X-Gm-Message-State: AOJu0YzEiOyGz9E/269E322Oc1RkG8OnsEWIHAmPSopZlIU8vZv+gkPM
	LuEazwsUZ2/0xjMj8WJlu3GGC3apf3G1G/0j+1UcOW5DaJJoGdEJSyN/kH/UYw==
X-Gm-Gg: ASbGncuSBn0gcVBvX7x2sxBzKAoF4GvZnYR3y7Tq3ys9mhhdL1VLcsyZNgQzuB5bzVI
	1d4C1VCrRJqBZBfTnRev+NasyzzhtX0+hPERWwVZH0rwmB8jvR7J+eQarjX1Ka9btjAci4IM9CX
	gM6D6csrPuRX2EDReKOUWwC2LVFys+1B7bxycKS+wkB2484YCrealSv6ZE711Wi5K7cC0XcAOPl
	WxkzxOqWoFKnZb80ISUF/dhUc8hUN+lQirwXXfJZMUGnN7em50/HQexzjrh5u9VsC/hXci6SNdG
	lWm4FtHPr15tiMFJQP+3xwSt
X-Google-Smtp-Source: AGHT+IG3DI35X7q9+bCJb3UUFJu2GLGQZKsBEiV2vr18nzsLloa/+8mEp5KjjNsc3tnSau1Pvhjxmw==
X-Received: by 2002:a17:902:f652:b0:216:4676:dfaf with SMTP id d9443c01a7336-219e6ebcb75mr320751155ad.34.1735234201256;
        Thu, 26 Dec 2024 09:30:01 -0800 (PST)
Received: from google.com (123.65.230.35.bc.googleusercontent.com. [35.230.65.123])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-219dc962961sm122281025ad.13.2024.12.26.09.30.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Dec 2024 09:30:00 -0800 (PST)
Date: Thu, 26 Dec 2024 09:29:58 -0800
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
	linux-samsung-soc@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v4 3/7] phy: exynos5-usbdrd: convert to dev_err_probe
Message-ID: <Z22SlgYsmFbezV-0@google.com>
References: <20241206-gs101-phy-lanes-orientation-phy-v4-0-f5961268b149@linaro.org>
 <20241206-gs101-phy-lanes-orientation-phy-v4-3-f5961268b149@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241206-gs101-phy-lanes-orientation-phy-v4-3-f5961268b149@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241226_093003_106575_99C83D1D 
X-CRM114-Status: UNSURE (   6.33  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 12/06/2024, Andr=E9 Draszik wrote:
> dev_err_probe() exists to simplify code.
> =

> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
> Signed-off-by: Andr=E9 Draszik <andre.draszik@linaro.org>

Tested-by: Will McVicker <willmcvicker@google.com>

Thanks,
Will

<snip>

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
