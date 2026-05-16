Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EA26CD4F3C
	for <linux-phy@archiver.kernel.org>; Sat, 16 May 2026 17:16:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/OM9iPMvXAO6esr6GXano/3zEn8krbOqBjUPYb/7Btk=; b=gl0aC/m7poi7qc
	jrr2j6Nq3im45Id8EITc+cMrCTytXPUEQFduqg1EdCRh43QDNMEbl/YMblJ2DV047L0FHdchXw2iy
	27QwxdJ6YodnSW3qxa/tB6VlzFuDWV6BO2VxB+FHIwPLCC192c+1lcgSzv+6OWm57SOepy8mHm5Zd
	QHVF9menN2v/STKPcZzcJD2QF5xHpVMEUOGeETMDRjPBOP5Lq7EhV76EtETkefjLUzU3wZhknaOey
	7UGXwj0sB+NnCQXaxIOEpVRYfYnUxtrFpj3CLdypSokH+uahVZMWxJSIX4rGk827lBJNb2y3o0bbB
	3HKqxFvsuBHwRxktmlEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOIcW-0000000B5K4-2qPV;
	Sat, 16 May 2026 17:16:12 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOIcS-0000000B5JP-2yi0
	for linux-phy@lists.infradead.org;
	Sat, 16 May 2026 17:16:11 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-48fde653997so998705e9.2
        for <linux-phy@lists.infradead.org>; Sat, 16 May 2026 10:16:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778951766; x=1779556566; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=bmJR0NbRzvNpkXAmanOQNTT1QafsZYlfpNq/mu5lwJk=;
        b=qwD3OXMVLRif23WLMi3Q7OAjifqqBGq6/d/+5pzKsGjZVUXNAnzpkOtjP2qWlVNHeR
         zqgd9uaaoPcvurNnFVbNUWPGdNlpLEaH4s70tDRjcHppUWirkM26FwzoYIXvzHJGR3J0
         9E5INs9KxRtGjAshgX3kHR+4q1uTfz+zOH9izOl4YoyjUPBHlZeQq8OeOhmEhJYGniRq
         NHhrfyM4mer14hp3zRv/oLx7TPQXrT8jepO61/oIoN1BMQcedmXxqwxFYkaj6jOZ0zFy
         w4AlquZX51wK/ZeXkSEZX6F3fYOiq4E5BYt7H0oMWDUSapnXcaHqFQSaPMkxsQcP5QcI
         ugaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778951766; x=1779556566;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bmJR0NbRzvNpkXAmanOQNTT1QafsZYlfpNq/mu5lwJk=;
        b=n0BCTZRbfJgODaUg87DG/PMZZ6vmLccqvIofe+4wn7A02Hkk4dCGB4cHSIK3kxNnOV
         LOttBfs9r0x0raNT/gWGi2CnxEK0oEVZqmpQNvzIyeSDh317xq1rhN5SpuLjVMCYBSTx
         sb5MD9kzFtQTD8bimEdvIyBqaqfC6TSuudoglkebSA1bJivqfyFpck/gUEDULhA62gh8
         cB1EVo15B04/ffGAORPUaZOyKihMqcftMRfEeT+enwbUGZ7++2VYK5SyPwyTjyTHJ2r7
         TaoLESqwrm6LAsGFSSMTThHf92zmf4YOuIoDe6NcJ0rGkTFTjhPFQyOYuKAG8F2JYZxo
         Pb7Q==
X-Forwarded-Encrypted: i=1; AFNElJ+Yat3oR7HING7Wn2bU4Jbs4MmQG9KhfkY62ReJlRdMI813A/FlYOyzC7ZM8Obokx8dYxasZHtYjCw=@lists.infradead.org
X-Gm-Message-State: AOJu0YyfiJtEVtoRFQn0v/Y+OgqbXos4rY39yNqZqJaL2Dvu3Vqpem/a
	0K6fLFSKAZILStiIOBS6zYLUq4bxEzS3YWOdKE2vKjqSr2lvNzsix3Zb
X-Gm-Gg: Acq92OHlqyALpxK0oKcACMJeMcfZgqGLq/0KbcQ2kDCTVmlCf8g4aZw/LVAmOPrP8gU
	gqqMWO7QKdVqgEPfDXBiJKrogZwp2B7C6thUVi6txU7rpLGxzLLrHAc6l+KuCD9C7VC4TtqAyGr
	5Yuyu0653cHe+NR+aBFlMazRkomNVjmNcayPNrGUsQ8ntecPE161X13szRjRYOuwub+Q3sKE/zG
	W/rPrWwOFIiXm9++cOQL5JtHZpWmwgY9QZVbusIfWgUtjaGAsgdqcbFOEEIC2tmXVU2HPKo3DL0
	Y6ouasioWqKzp+XrtvcwRqh2ej+z8ltfivqKkzdS9l8cVdToh0yw8pqNg3d1c4fM6RZkPYq7Puw
	lnbG5qGL31+DXGjEQjgTv7/ZZvDpmNqv6U1IWk0HxIjm11aMM19e3edpLCvW5B4jJQwpSM13wlA
	wNEpVe0fT9BAaoKncyo5Y+pDT8fQ==
X-Received: by 2002:a05:600c:4704:b0:489:1ca4:c999 with SMTP id 5b1f17b1804b1-48fe66550aamr54977995e9.8.1778951766176;
        Sat, 16 May 2026 10:16:06 -0700 (PDT)
Received: from skbuf ([2a02:2f04:d507:6e00:942e:56b7:8c24:d04b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48fe5ab527asm156348275e9.11.2026.05.16.10.16.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 May 2026 10:16:05 -0700 (PDT)
Date: Sat, 16 May 2026 20:16:02 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Ioana Ciornei <ioana.ciornei@nxp.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, johan@kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 phy-next 2/2] phy: ti: add PHY driver for TI
 DS125DF111 Dual-Channel Retimer
Message-ID: <20260516171602.iwm6vszhiyn7un5a@skbuf>
References: <20260516060309.2282592-1-ioana.ciornei@nxp.com>
 <20260516060309.2282592-1-ioana.ciornei@nxp.com>
 <20260516060309.2282592-3-ioana.ciornei@nxp.com>
 <20260516060309.2282592-3-ioana.ciornei@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260516060309.2282592-3-ioana.ciornei@nxp.com>
 <20260516060309.2282592-3-ioana.ciornei@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260516_101608_756654_9A95E364 
X-CRM114-Status: GOOD (  12.25  )
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

On Sat, May 16, 2026 at 09:03:09AM +0300, Ioana Ciornei wrote:
> Add a generic PHY driver for the TI DS125DF111 Multi-Protocol
> Dual-Channel Retimer. The driver currently supports only 10G and 1G link
> speeds but it can easily extended to also cover other usecases.
> 
> Since the available datasheet (https://www.ti.com/lit/gpn/DS125DF111)
> does not name the registers, the name for the macros were determined by
> their usage pattern.
> 
> A PHY device is created for each of the two channels present on the
> retimer. This allows for independent configuration of the two channels.
> This capability is especially important on retimers which have more than
> 2 channels that can be, depending on the board design, connected in
> multiple different ways to the SerDes lanes.
> 
> Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
> ---

Reviewed-by: Vladimir Oltean <olteanv@gmail.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
