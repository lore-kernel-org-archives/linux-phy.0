Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 219B9C27C4F
	for <linux-phy@archiver.kernel.org>; Sat, 22 Jun 2024 00:03:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gd+TEjJKPgmqsycYmOFdVk91bkIU0+XGETU10DmaZK4=; b=eOZFAX/LBPAJvS
	dnYAWsqVW0rGVWnJjPd0bWUWwfeLKMDhapsPR94IhJAADRlctsq68WqfXKBio0r40JvTWcFdlQzEV
	UAp6AYvGq82xx/1e/NABqLI4a2vFrzLjPizGch0y49ZboaBlsVmmlvtZAhmbdG/4+2ZEHXTFNZyD6
	TXrXe4lZAmM9mlE7jMRJy3rjH+VBDpOlB7nG49+aHT1iKOKlL8sbKTb9bonctS/bJmasZO990I9pn
	hhH9XK5YSPkYFUQrHtDj9aXw6TPqodeU7QDBOK8dRJ1FUfipRJctcjz2ZtRCMVEb11lkWCZ1M+nCI
	MvZgpdDPkBX4T0c9hTrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKoEV-0000000Ax6o-2rwL;
	Sat, 22 Jun 2024 00:03:55 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKoEQ-0000000Ax5D-3h1I
	for linux-phy@lists.infradead.org;
	Sat, 22 Jun 2024 00:03:52 +0000
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-1f70fdc9645so222455ad.1
        for <linux-phy@lists.infradead.org>; Fri, 21 Jun 2024 17:03:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1719014630; x=1719619430; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iCP6tSo+yOJ1rdS9lI43GF2KwMHtS2oiHIov1YTCtMg=;
        b=0O5rpwgipJku4MQlSUPVZPRKWdN7yEzuyaVvHrzZEZoAWcoRVcfaKCJksocwrHtS3H
         zPo5Lvr7dFHoFFKPhQ9kiHGUGUt9l/rNo/e66cgfHbmKjPpcGYjjM9DliHuyHJisoZ5q
         nB7Vc8iOVh+PLLyWeyrALPktt5MfCucqZIbGCWMe7aXBMrw8/9467grgfTgRsu+FbCGs
         /3vmEegVSNEqZUoFjafWpQ7NfpWOsc3XeGImQsUh5ickGmlQbBRIcTrUWJIXyNMsHLxp
         tZ2BiuqNTOCcQuNGR7f2Qq+/XunP3gLAiDloi6JoL33G9rwu26k0hB51j6LHpnoTAfR8
         omyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719014630; x=1719619430;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iCP6tSo+yOJ1rdS9lI43GF2KwMHtS2oiHIov1YTCtMg=;
        b=sMe5TW78qTgGOrwgscdnJAxWBK/8rnUcnpJXjprdMU0KWkJHfiX827mXsNit33av1H
         BkG4h3RhkdgUlfUG4SYcKlHhk1chfCqbhpXzzuo79Ou7jog33pltVDWDDqSc3FVOUK0M
         9WjepikAX0aGhZaSHoxc+1RHz5PwW5r8zcTRqguS+NsMiWbEiJGgZCAA0BYSaLZCe57m
         m1TV/ASsvwdZ1z0Up5vlclyYfxnoojvMDbm8pPgqzTo6oE/U0Pa725+LFpbzDY2W8qNh
         PHYNzYt34WPzfB0qwAzObHRgrsJ+qCiWUcEWsmMueSOJ/9Gys5eMxmLERujTG2zdW28G
         OGyQ==
X-Forwarded-Encrypted: i=1; AJvYcCXPSWQyL9riphcewipqfX6ZkyaJOuKEXHrxzbOWLRH3IyEhcF77W/KswtttdomwmX+TebsrgLIfml9OUYSD5r7al2CjSsy4BOM83urEzw==
X-Gm-Message-State: AOJu0Yw9p4ndYji+risJDoFYSI//L9nmZq2j1bFrsdLPeqNmCNdJY1ic
	SB0yhcLwcjCIz9CUzI7KIIUSF9rvg8roC9G3s2g/1GctL4ZsGRl4O3BcJ4ZqrA==
X-Google-Smtp-Source: AGHT+IFrgq8EqsNgVRlmEQB59B81JAeqM0bNnsNDFjNdU+51VRyc9DEIl9c7EVj/qaXXGfrlVQcJ9A==
X-Received: by 2002:a17:902:bc46:b0:1f8:6250:dfa5 with SMTP id d9443c01a7336-1fa0a29eedemr769945ad.28.1719014629760;
        Fri, 21 Jun 2024 17:03:49 -0700 (PDT)
Received: from google.com (7.104.168.34.bc.googleusercontent.com. [34.168.104.7])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f9ebbc8dbcsm19672865ad.307.2024.06.21.17.03.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jun 2024 17:03:49 -0700 (PDT)
Date: Fri, 21 Jun 2024 17:03:45 -0700
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
Subject: Re: [PATCH v3 4/6] phy: exynos5-usbdrd: convert (phy) register
 access clock to clk_bulk
Message-ID: <ZnYU4TRR3gUbadWR@google.com>
References: <20240617-usb-phy-gs101-v3-0-b66de9ae7424@linaro.org>
 <20240617-usb-phy-gs101-v3-4-b66de9ae7424@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240617-usb-phy-gs101-v3-4-b66de9ae7424@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240621_170350_998137_AB207D88 
X-CRM114-Status: UNSURE (   7.54  )
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

On 06/17/2024, Andr=E9 Draszik wrote:
> In preparation for support for additional platforms, convert the phy
> register access clock to using the clk_bulk interfaces.
> =

> Newer SoCs like Google Tensor gs101 require additional clocks for
> access to additional (different) register areas (PHY, PMA, PCS), and
> converting to clk_bulk simplifies addition of those extra clocks.
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
