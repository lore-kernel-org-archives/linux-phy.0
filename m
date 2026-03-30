Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FFA71061B23
	for <linux-phy@archiver.kernel.org>; Mon, 30 Mar 2026 21:32:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hDVmdbogCaMgRMAYUMAYGWsyAdqvtjhX8lsPoJUNVS4=; b=cd2dvpi3juRmrb
	Mg5g4ZdAu2MtvUjuFxMXfENsgb6eczz3LSgCB/T4B6WEIqvkJIjjvvCBCiAnOw3hgLv0v9w+KNJ1/
	jNFTwYBY1dX2sxtiOjBSAgSVxoXwJ8Tv8aScrSa+nS8Ob6ww9xLVFbGw+DJtvUJIR1BqPWSaXX6DX
	5vaRX9Xt1xJO3ckpCLsbv8GnwIUxsb//VkM3psQSEsRsfrx7FsT6HI735850cCko4GGFIAsIB8WNX
	vkYA6a9Xo+HcrC/5Pw4iAt4kii0Kik6pX1Tv06WuADbdtUdIbnJVxYNrltfuz9m2AsWeSvQdz9jO+
	n4ZPn2L/4v0O9FesRfCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7KDs-0000000BusW-03Cu;
	Mon, 30 Mar 2026 21:32:36 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7KDp-0000000BusB-3Zsd
	for linux-phy@lists.infradead.org;
	Mon, 30 Mar 2026 21:32:35 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-485358f43e7so5513685e9.2
        for <linux-phy@lists.infradead.org>; Mon, 30 Mar 2026 14:32:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774906352; x=1775511152; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OKaHuqaVw+GmllxkOaKRS1TDseRwmAHMFWqK5tt5meY=;
        b=CU1k9mG/ClmvXWVvZYbUg8UiMw6TpawwPtsb7o43eXwkw4N1SV/NGRMByZTllZq8Bq
         L1l391Ay78dmZUjn4R4gkjhc/0esoPlBnVRGoOyoEmJpWfkIDhPNNyk/R01rBsLezdz9
         fci/pIie8IdHNrTeji95G2ou0Cq/d2u44dHS0lWB0GKwdHzG93lbPljAxfbdAqyL55HF
         QCJAdCGXG8INUtsyiplQbMvf+PwIMDyZLtzkKxSnrCOskjI3Kn26PNB+IeG409HzbKQa
         F/keS5kpAf3iwqSASfHWfXutReJhJAd5H3EDGArS3M0J3WkO2CyCO+YhDhKLgs9jS+Lm
         mpAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774906352; x=1775511152;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OKaHuqaVw+GmllxkOaKRS1TDseRwmAHMFWqK5tt5meY=;
        b=cF+WhAvt9FPbOteuN246W5OhkDY2a960damJxIUc7jEEFx/kwF58ORt4+U6EXu7b0L
         vMCnIVaAOwy9ly90ouL0hXyizOrEpBu989eMLBzVl99lyN3REihF94C1RD5sSo+frhNX
         KVousyVZHeGBvxDSsP0Aqs8L+UV6dig7RsdRYpIV2DnkYXW2YYVV+TtGbv5SAzKeDY/e
         tQHD9/XOAkwNfDbEtgvUk0m4QvNnbIzRwxYyx9N3XCX0zVmJoNCKLSAz1i4YDe223iRo
         ApHbS1rHOaxIyHwli2nisvIkuUQKlSTZR1FMqyptQykX2qJZZDcQBtMeCAIMeh8PPjCM
         fUTA==
X-Forwarded-Encrypted: i=1; AJvYcCUXbDNCUQXaa4QuFFcUxLJ9kpQzmCImUF/nhH/EW2sdCBIeO2BYSMBnModelOAEfp9KJ8iURJRBVMU=@lists.infradead.org
X-Gm-Message-State: AOJu0YydeAIuwaHNHfu2VJGc1WLwTdOKt/b8oA9VggEEIolGh+gVbX7c
	Q+X/URmXvFEHf+hFsUUADdBgDxK4rQZBR7UMoiaJ2fGEuCyiin752W/6
X-Gm-Gg: ATEYQzwh6V77/w2GSQgUQ12I38sc6286qkqajl1EYQhIl7dC18TT5iRcV1nTAUjrST0
	vvKttWrOlfcJcHsTyXPDol5XldEzLYlSDzh1cdaJhJhjXNH1A4basywKMOW7XRbUqU5EWE9lMvO
	E/qVT2Jbko7EQZDiisDbSbKQXTtvWe1PmY0q+v5UeXNIbF7Kq0dOHv+TPtJo03IgQwPkV+90vsi
	gw4QNUxa2O8bJGGayW2Aa8SdU+XukmDj2sAyqcjJc18W+FsaBt/0D4QP/yOjpJ4UlqqckXbECnc
	QfbTlBTA9y029GIitTZt+kTeI+lqdRW5++1oQn6LpI1cepAoYZDquDfqoTzkOcBis65rW1Dnkts
	A6GCJVBe61saI1MbemQwcLUYmggayEwKTVjKYzInX2hBDJL5FeckpnGaKs3uG27TfUSYZ3jIFRV
	J/8e3FmbDuTdKoCJM=
X-Received: by 2002:a05:600c:8b41:b0:487:17d:d0bf with SMTP id 5b1f17b1804b1-48727ee0e73mr119109885e9.6.1774906351342;
        Mon, 30 Mar 2026 14:32:31 -0700 (PDT)
Received: from skbuf ([2a02:2f04:d50a:b400:fc92:d05b:3301:b722])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48722d236a9sm547898585e9.11.2026.03.30.14.32.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2026 14:32:30 -0700 (PDT)
Date: Tue, 31 Mar 2026 00:32:27 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Rustam Adilov <adilov@disroot.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Stanley Chang <stanley_chang@realtek.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Michael Zavertkin <misha.zavertkin@mail.ru>
Subject: Re: [PATCH v2 2/6] phy: realtek: usb2: introduce read and write
 functions to driver data
Message-ID: <20260330213227.zujvcvsxdfknzltz@skbuf>
References: <20260327160638.15134-1-adilov@disroot.org>
 <20260327160638.15134-3-adilov@disroot.org>
 <20260330211918.y7su36j47e3uelcv@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260330211918.y7su36j47e3uelcv@skbuf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260330_143233_929826_B113BA29 
X-CRM114-Status: GOOD (  18.68  )
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

On Tue, Mar 31, 2026 at 12:19:18AM +0300, Vladimir Oltean wrote:
> On Fri, Mar 27, 2026 at 09:06:34PM +0500, Rustam Adilov wrote:
> > +static inline u32 phy_read(void __iomem *reg)
> > +{
> > +	return readl(reg);
> > +}
> > +
> > +static inline u32 phy_read_le(void __iomem *reg)
> > +{
> > +	return le32_to_cpu(readl(reg));
> > +}
> > +
> > +static inline void phy_write(u32 val, void __iomem *reg)
> > +{
> > +	writel(val, reg);
> > +}
> > +
> > +static inline void phy_write_le(u32 val, void __iomem *reg)
> > +{
> > +	writel(cpu_to_le32(val), reg);
> > +}
> 
> Please don't name driver-level functions phy_read() and phy_write().
> That will collide with networking API functions of the same name and
> will make grep-based code searching more difficult.
> 
> Also, have you looked at regmap? It has native support for endianness;
> it supports regmap_field_read()/regmap_field_write() for abstracting
> registers which may be found at different places for different HW;
> it offers regmap_read_poll_timeout() so you don't have to pass the
> function pointer to utmi_wait_register(). It seems the result would be a
> bit more elegant.

Even if you decide not to use regmap. I thought I should let you know
that LLM review says:

  Are these double byte-swaps intentional?

  Since readl() and writel() inherently perform little-endian memory accesses
  and handle byte-swapping on big-endian architectures automatically, won't
  wrapping them in le32_to_cpu() and cpu_to_le32() apply a second, redundant
  byte-swap?

  On big-endian systems, wouldn't these double swaps cancel each other out
  and result in a native big-endian access instead of the intended
  little-endian access? If the SoC bus bridge implicitly swaps and requires
  a native access, should __raw_readl() and __raw_writel() (or ioread32be /
  iowrite32be) be used instead to avoid obfuscating it with double-swaps?

  Also, does passing the __le32 restricted type returned by cpu_to_le32()
  into writel() (which expects a native u32) trigger Sparse static analysis
  warnings for an incorrect type in argument?

For reference:
https://elixir.bootlin.com/linux/v6.19.10/source/include/asm-generic/io.h#L184
/*
 * {read,write}{b,w,l,q}() access little endian memory and return result in
 * native endianness.
 */

and yes, your patch does trigger sparse warnings:
../drivers/phy/realtek/phy-rtk-usb2.c:153:16: warning: cast to restricted __le32
../drivers/phy/realtek/phy-rtk-usb2.c:163:16: warning: incorrect type in argument 1 (different base types)
../drivers/phy/realtek/phy-rtk-usb2.c:163:16:    expected unsigned int val
../drivers/phy/realtek/phy-rtk-usb2.c:163:16:    got restricted __le32 [usertype]

Furthermore, please drop the 'inline' keyword from C files and let the
compiler decide. Your use of this keyword has no value - you declare
phy_read(), phy_read_le() etc as inline but then assign function
pointers to them. How can the compiler inline the indirect calls?

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
