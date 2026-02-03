Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A28ACE87834
	for <linux-phy@archiver.kernel.org>; Tue,  3 Feb 2026 15:05:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hC0Q0LJqy/ikzJKhdFDgdxc9SQCZsE3iy34wLmowjK0=; b=IotilTLsxuLOxu
	zaWAkjdY7KMP4xwVLpRcMz7mH4L6mXDHSfmiPkWdxq5DHBNjRydNbXg2Ildn/3EybcSzycdPoXQaK
	hH31IpB0Yb0XruzQr93NWmK13cLc3fda1x8LaGUkRO9sPKkyY83U0kgB7VeZKt5XvYS6P+gvLPZeM
	0SDXmmLvZC+vQ8Vf/P+iuuO2MdvjeInXcNk+yb6FVmJe07MCPmixhNIEh4RrNsyGkI+WBpP688KL6
	Ul9WAqHHZp7Iac6a3WaCJuQ9KNDYQRnBU3N646EhiV7QfqnckZ9XrarlFU0ZEiXuC/0sSpNTQvwEq
	zuAUE3vM21IC6iBxJFuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnHxl-00000006ofa-1PBn;
	Tue, 03 Feb 2026 15:05:09 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnHxi-00000006oeu-1UhT
	for linux-phy@lists.infradead.org;
	Tue, 03 Feb 2026 15:05:07 +0000
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-65941c07e8dso711549a12.1
        for <linux-phy@lists.infradead.org>; Tue, 03 Feb 2026 07:05:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770131104; x=1770735904; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9PNsfQXg9zjxapzMuZRa/zLzG4m46Jh75ILxmkVsiiI=;
        b=Qiph6PYQdWWtOyyLGW/pJ7Hmh6qyBDNt6ooafH6hjqX3vsurwUKPyTaIb3T0Z2APnD
         i1DikV+VvUNzlCW0wA2aBZWaDfZA8g6LcOjkTRfwRhJBYDelfG0KVTsb5vYPdunsEy8+
         Zo9+ZYyZyyhCf6yThUQU+94pBc9Z5sqnhXs8CDVdn+grsqMqxrzZmldKim0dK5FoNXdL
         3MEPfu4qyF+pVioSMziunGXJdg6HnSGoOws8qn8LnUIfu8J52UpQcDXQ5L4KfYxnZN8r
         dJkWGZBX4PIwbuARioy0MWTHAByCOWRG7F/cc7soC8sMHAHy8FTS68i9yO00MPIDKlH8
         hbxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770131104; x=1770735904;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9PNsfQXg9zjxapzMuZRa/zLzG4m46Jh75ILxmkVsiiI=;
        b=QJX45v29gPN9zEAHTL3UDfVY8ZPgEg4iJVwVOzvIhPkHgOCo8Hxd13bzVfgsEMXIBw
         wb3q8My8zWecUQXJtNPYhARCFBD6DdL2sVtw5IvFPO5+G2cgNc4IkqDqX1+cSs5tyrih
         9Ov+Xi1NqvKwTcWowDHAnd/kKjp8QwkKLY3FXWwDSZeJHwi4BNUkSBoPmhEefWdkl7x6
         D5vMovpgf+LsHhUDodBRE2wtrM5mUpsLqE0BUh1q3fw0CdUyf+4HV+6bTDRZDNGE3o7/
         dMoW8YjSb/fh9jLUP6tLjxhpf/laqhqxGeS8GqGcdLm1mVFB5bENj7tdej8RV7xHu18d
         fRqA==
X-Forwarded-Encrypted: i=1; AJvYcCWlcpK8M7zpXQG4aMTOgPqACGvvaGEZGJzDNbJxPMxkVPr9zjdMV5alKvNyAQpGMYLdnnuF/aZYZnY=@lists.infradead.org
X-Gm-Message-State: AOJu0YwfY7ymrjHxPaYn54F9w4/Zt696V4DVMpXx/xNDQlJEHwVaq62P
	z97KCBKHcrRuKmqBviyZWGYTTNt9puVODrRfALwgZwPgyLC2rEhUt0Cp1CiHoMzQvfM=
X-Gm-Gg: AZuq6aIFXpq3AU9igi9q2S9/qGPwtiRPQzLi/09unRm0HkfjJeM4WO2aBkr3NaUsKU6
	NauOUwjv94/VYUa1F4M6nwdDhzNxZwMWwbPtDwYWYzWUlAXzt9Ma3Uwu1ZHwQGmA5Ne1U4IUBiI
	dak/s2d7PSozYUvYZCPp/AHIRViHwXC6KmXp1TZA5VP7gbDYqSYIckWWNydKM2WvjFL6+BedeqK
	XW6GntiT4qGOT4DCTkJOyh1Nn3kD8+I7w7WCMD/SMlw1o/mbSoSVvcXCXxGiMa/vRQON35eHGr6
	5hNa9A76J6sN1w/qnNVKvuCpqtMM+fsPclTGEBxoH/qBPRx955p+ZYyeDmIrdWmEOC3slf7FZg+
	7LCZK64+6b9CWCKMUD8dnBri79YC/Ej/RHGuY4fBrzuNAzvxwbMULrbKYPrYXG6ebX4SHeL+s4g
	XftqcflobQZ8KVeQnO
X-Received: by 2002:a17:907:96a8:b0:b87:65c5:602f with SMTP id a640c23a62f3a-b8dff7a30a8mr1000149366b.34.1770131104069;
        Tue, 03 Feb 2026 07:05:04 -0800 (PST)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbf2ed6f8sm1049398466b.65.2026.02.03.07.05.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 07:05:03 -0800 (PST)
Date: Tue, 3 Feb 2026 18:05:00 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Josua Mayer <josua@solid-run.com>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Peter Rosin <peda@axentia.se>, Aaro Koskinen <aaro.koskinen@iki.fi>,
	Andreas Kemnade <andreas@kemnade.info>,
	Kevin Hilman <khilman@baylibre.com>,
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>,
	Janusz Krzysztofik <jmkrzyszt@gmail.com>,
	Vignesh R <vigneshr@ti.com>, Andi Shyti <andi.shyti@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Yazan Shhady <yazan.shhady@solid-run.com>,
	Jon Nettleton <jon@solid-run.com>,
	Mikhail Anikin <mikhail.anikin@solid-run.com>,
	linux-can@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org,
	linux-i2c@vger.kernel.org, linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v7 2/7] mux: Add helper functions for getting optional
 and selected mux-state
Message-ID: <aYIOnErmiSZ6wnP1@stanley.mountain>
References: <20260128-rz-sdio-mux-v7-0-92ebb6da0df8@solid-run.com>
 <20260128-rz-sdio-mux-v7-2-92ebb6da0df8@solid-run.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260128-rz-sdio-mux-v7-2-92ebb6da0df8@solid-run.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260203_070506_415519_CABD6573 
X-CRM114-Status: GOOD (  13.77  )
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

Sorry about that, I just looked at the implementation in linux-next and
didn't read the code from the patch too closely.

On Wed, Jan 28, 2026 at 04:46:10PM +0200, Josua Mayer wrote:
> +/**
> + * mux_control_get_optional() - Get the optional mux-control for a device.
> + * @dev: The device that needs a mux-control.
> + * @mux_name: The name identifying the mux-control.
> + *
> + * Return: A pointer to the mux-control, an ERR_PTR with a negative errno.

I wish the documentation for these "optional" said it could return NULL.

> + */
> +struct mux_control *mux_control_get_optional(struct device *dev, const char *mux_name)
> +{
> +	return mux_get(dev, mux_name, NULL, true);
> +}
> +EXPORT_SYMBOL_GPL(mux_control_get_optional);
> +

regards,
dan carpenter


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
