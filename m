Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4C05E7718F
	for <linux-phy@archiver.kernel.org>; Thu, 26 Dec 2024 17:34:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=04OjfX8X2sIpJ0UUdje4IBfs9ZVwOyInIBu+KXRHe6Q=; b=0nb6wYcxV1qMj4
	VfAjpRLdWvsKijLSnaZY0BREAt0c+GhRJdkhZuKMFdS0dVf/TC6Vr+FAlFFQvrrVEN9naXwj141d6
	Le3fnwDTnmIl+rlAr5Njmnufj+XYVi7LpiXfG9GjmBBxDCbL90//B89Wfy4xbR8RPXmtqDieL6M4/
	lUL3Z/NWCMPPeFlcTqpnPzC1GLm47aOxP7+ftr9vnBcj5lhlUyqfcS78KVE8G19QbG7L/QJml3dpJ
	zFS9VSLNZm1N4+BHvrl7zyFoQAsdWfHaB5CskCa+EIBLYcN1z/kEMA/wtBgMgIxguFJIZmJ8q7r3M
	J96frBCyQIcT0GXckKsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQrl3-0000000G9OH-2hbI;
	Thu, 26 Dec 2024 17:34:49 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQriL-0000000G90Z-18fq
	for linux-phy@lists.infradead.org;
	Thu, 26 Dec 2024 17:32:02 +0000
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-21619108a6bso70228445ad.3
        for <linux-phy@lists.infradead.org>; Thu, 26 Dec 2024 09:32:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1735234321; x=1735839121; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fZq8gTOhd/HrF2N/ypBV//FltCA9lQr1B5nofEk6FbE=;
        b=xX2YhLR+ryZk1U/wJ3pSgeriV60bYAU0nHT0kI/G1ZE0E7hCfvvpBRG9yjOkiMRHjW
         XNCrSVz1x95m1RhPm6FA1xj679fgNS+eN3u+3Xo773z4pQf8LW8MHXu0ZiuMZkHH53eY
         B2g6wTE64xkXCXxsdxvHWwKfI0sWmDeCnt6NLl1ulvvkugGEalHxz5Uvv/9f2OTpE0ly
         UxK4FByxewn3rl59Z/iV8QXlsQLkuaRs7AST2tv0SSVmCBsJtoh11pFy0GHvHWeUYvIZ
         zuR8gRfDil5kIctVNohLxnvi2rxO+zjrYxQCcGqHt0ru2fLz4wdC1LbYcLEwZsCYKu3k
         IcoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735234321; x=1735839121;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fZq8gTOhd/HrF2N/ypBV//FltCA9lQr1B5nofEk6FbE=;
        b=pjp9sPM9O756Zwu9WZXa+wyW6HyE7bX7tY+eSCm+7gM6ViKtFu0928+53L9yoFxBcu
         U1F5bPAhDfa5i+AaITgqJ1Mho9xnJXtt2hMLbaCPMQD3reHvpbeu2zYR2gVIkbMq/weS
         2ddmYNw90WaCupGB9x75zhQcxkY4OZEwH3GffJ4voM6FL2UDGcGB/hS5xV5qIAsggpS2
         YSpcbN2TeVut0hdAhLjpV3mq6AZTmszobPvNzubA8Ty5hzIrxRhiqs5jQpT4//XvagA4
         1zQ+9ncnKHvS1tNxtloffOGcY/wHww6wFf8jsE6GIXnrIJwatvbBzFib+mNJ5jkIJLVg
         k3zw==
X-Forwarded-Encrypted: i=1; AJvYcCUNe6XY5ETHyNXOT58lYerqBX48FHzFGV/G5hNmKDanCk5a8HolEe9OxNWa6BFv6Mo/K2Iq/27X4j4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw1bOYMZx/MIyBssP9drSfp6F+kpmwYZbEX8R1wGHpIeW4Xd4Ky
	NwGNqSMIXgrWZxP1V1dQmTGrWqwRF3AQExbCXbUwkCiEqa3BXvecgWymvRvnBQ==
X-Gm-Gg: ASbGncvkxyXO/FS+EgkBiDAwVfCSrDs41RVDud3vKLOt6VKMVAO9DcNMfFXVtb9yBYd
	2WxvNDPNaVbOrmRXitiH9dSIP4mMLD3/tm2l623WYw1dRUerfOHg5cGIlWz+A+eMHyD72YxaZOD
	PCt5V77ZbAGMEGG4waFiGGeosronLfawIzl/TnwwM2Zq0ediOwAgN5o8JtMZFyEplAaRnOFCGat
	CJJX0HBpbaT8niJNgD003UJ6qjJGdYSwsVzA0QOfBOkHkCYI9aOsdq2pHRlQHcVUeDLXG+s1x4F
	H24kXGHBGrjrZ0iEZkfQ2beQ
X-Google-Smtp-Source: AGHT+IGMiawar/mU5KvWb2BzVuABUtr4oiv5toBR6JEErmfnPl/aBnhoZzQMhDzJD2wfGufTegEhmw==
X-Received: by 2002:a17:902:e802:b0:216:5e6b:e23 with SMTP id d9443c01a7336-219e6eb6305mr303933895ad.30.1735234320475;
        Thu, 26 Dec 2024 09:32:00 -0800 (PST)
Received: from google.com (123.65.230.35.bc.googleusercontent.com. [35.230.65.123])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-219dc96e94dsm122897285ad.67.2024.12.26.09.32.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Dec 2024 09:32:00 -0800 (PST)
Date: Thu, 26 Dec 2024 09:31:57 -0800
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
Subject: Re: [PATCH v4 5/7] phy: exynos5-usbdrd: gs101: configure SS lanes
 based on orientation
Message-ID: <Z22TDXvD3AKdhr-S@google.com>
References: <20241206-gs101-phy-lanes-orientation-phy-v4-0-f5961268b149@linaro.org>
 <20241206-gs101-phy-lanes-orientation-phy-v4-5-f5961268b149@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241206-gs101-phy-lanes-orientation-phy-v4-5-f5961268b149@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241226_093201_314693_18C72468 
X-CRM114-Status: GOOD (  14.43  )
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
> USB SS lanes need to be configured based on the connector orientation -
> at most two lanes will be in use for USB (and the remaining two for
> alternate modes like DP).
> =

> For the USB link to come up in SS, the lane configuration registers
> have to be programmed accordingly.
> =

> While we still need a way to be notified of the actual connector
> orientation and then reprogram the registers accordingly (at the moment
> the configuration happens just once during phy_init() and never again),
> we can prepare the code doing the configuration to take the orientation
> into account.
> =

> Do so.
> =

> Note: the mutex is needed to synchronize this with the upcoming
> connector orientation callback.
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
