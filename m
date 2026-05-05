Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53E63CD3427
	for <linux-phy@archiver.kernel.org>; Tue,  5 May 2026 19:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4RjCaj+5f+oRJ//FNfNkMJZucjHKQ0k16uH5OH/OYmc=; b=lfcGpCEZFDoDPX
	hTZfZ012Iq0gGR3p+rVUxbmMR/4bfA7wv8llcOo5Qk3EDORIm4IxZusMsuGStTDuZILyEeeZnKEBl
	DKn+HRvdfLrjuW7LY4cZGPbUIdwlXQh5/x4OL79HcttVtjZIF49kMvqvwcxd7S0GOc2K6Ld09M7ha
	b/iS4bVaBMrHCxXzfTwcF1D4xBfvI0M7tM02GNZdaOlsPkGLLwINnpdm+In6yuxlKLeL0ZmW7Dh8/
	7zYG1p9ip1Iw89JEwcNmy88zJEmUVutjE1dRI+zgjF1Lmx6WMTpvc7IOweGSD99DhdQWbI1EBB1vC
	fks5p9/q0srK3bNYQgwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKLPA-0000000HI9x-3Oqj;
	Tue, 05 May 2026 19:26:04 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKLP7-0000000HI9M-3wtH
	for linux-phy@lists.infradead.org;
	Tue, 05 May 2026 19:26:03 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-4891c569cb1so10512155e9.2
        for <linux-phy@lists.infradead.org>; Tue, 05 May 2026 12:26:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778009160; x=1778613960; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FjZZ8z2drWWZW3cB7DNESyomf0wyR6f8DA/CiusrLec=;
        b=iztyBcxY4JSwbwV1HI994f/Szj4OoMHbfFPbEyGqL6IsbNH7BQEeiXSWIrblUElroY
         lff8lntyB+aVE4v4SODp4JXlEYv4n9/IEdOrAgj+PZDAD+yV0QA0KvShKhPy1xJfY2JD
         UhLLdOcN/2lIk0Lgg/KC8Stmzfr+k/2ZWaKTUr9ATCE73aTiPymU13gJ1DKwjFSptgsJ
         CV01JaAI9jvdylLTHcVxgaxbgNdlgHIgpmZFF/GEveY0ZfZ/rpAxbvrczTcPrhfHDD6/
         zq4Zth7UEx/FCXjW+b9RmFe4/atBMfUhjLExF86YRQUMHwxYo8GRuRX6tRQZZ0tGDcB0
         7AaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778009160; x=1778613960;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FjZZ8z2drWWZW3cB7DNESyomf0wyR6f8DA/CiusrLec=;
        b=Zvvpf6BaA0XN437zG96oGI0q+f2hq1rtv3i6Drzx1runciciKf9s3TmqI6rw04k/TX
         9eeR25kdf5IxyxovLtQFEC/cNt9hqDoHDWMEFu5BPWg27Fo5WrrEG4jfwjsk0pkdrtMk
         01OI9TP0xgKWfLMDX8Br1cUs4q3ZMt5kT2d45XBM5ERHBItM+GkRe1hu8CCp3x5oxDRN
         8cXJ5/IyrwsTvT3wujNSezJYCuIhTVe/PCV4KcWEF0WjhXsC7PbnVEyOUNXQhPO0Yv0q
         fXrdipxc0w7v60g6UGwxwzLKoETBkcbXXW9u+vG8XlbC+7mmIO0cMrEODsxh+NJbMZMY
         9nPQ==
X-Forwarded-Encrypted: i=1; AFNElJ8PUjJsvndvz6uUlJZ8bvOTXGiMmeZdlnqQ2UIOtBcRZHUp6n9K5rPnEF0/AMmf1SlH9Y6Chi7Ci6A=@lists.infradead.org
X-Gm-Message-State: AOJu0YzAi1oRtr2czanujkvD5kQTm2XExb6foqIVHAkZXQd4FV2gxBIT
	oZ8DX9FymrGvuHRjj3UDDpMkKuJncHWKeFFMCeFuVKdBCp2P5qt6fgrp
X-Gm-Gg: AeBDieshpaSRVeJSVfJcyRSbQeSIaycp7dvpD3VkiK8ltC7iPXdJYSEUMsiNAcEAXG+
	wJ4HRzMTv/X+vhf6uXX+lk6NSReOHyFCa8vtdcwboWIbUWoidIfOQpNdg/QqJAiIuIK8JrzpEci
	GFsJv7bFH8gCCowgpKLrSs+Pal7erayfQly53Ih2AJy/yIRXnCzZAEUOjk6l/RjEmnLOx21wKAW
	d+Rb2NT/+bihoiVXswMK3zaDjmNfvkDxuOtP5BnPixoZ5UXtRFQx2LPS30HP7HSiy8JVpAiGlIz
	YUsvdiauXhYYBNyMsxeS7/ED7tqSocCKgC3Boy7eFVD5IcZfEZRlT4ePq5OSHXJYYRQs1xb1VhM
	eS8sOS74i+86qwuxVotOjcqvI65v3azMeGMUe7svCA/RLeglir7zpFliOqxQD4yMOvClYjyuszM
	c2GGk9gO9xhfU+GRAn0K0M8TIN3A==
X-Received: by 2002:a05:600c:c4a3:b0:485:c456:5e4f with SMTP id 5b1f17b1804b1-48e51dd7e6dmr5358795e9.0.1778009159832;
        Tue, 05 May 2026 12:25:59 -0700 (PDT)
Received: from skbuf ([2a02:2f04:d403:cf00:9b58:9830:baf1:5f76])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48a8eb72a17sm390558535e9.6.2026.05.05.12.25.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2026 12:25:58 -0700 (PDT)
Date: Tue, 5 May 2026 22:25:56 +0300
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
Subject: Re: [PATCH v5 5/6] phy: realtek: usb2: add support for RTL9607C USB2
 PHY
Message-ID: <20260505192556.tyuxcmxzeu7dpxza@skbuf>
References: <20260420191941.81834-1-adilov@disroot.org>
 <20260420191941.81834-6-adilov@disroot.org>
 <20260505113001.idgj7ssikjgcypa2@skbuf>
 <9de0dcc209eab02d2a4e5fcec25e7711@disroot.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9de0dcc209eab02d2a4e5fcec25e7711@disroot.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260505_122602_020326_B9C7668C 
X-CRM114-Status: GOOD (  22.27  )
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

On Tue, May 05, 2026 at 06:10:42PM +0000, Rustam Adilov wrote:
> On 2026-05-05 11:30, Vladimir Oltean wrote:
> > On Tue, Apr 21, 2026 at 12:19:40AM +0500, Rustam Adilov wrote:
> >> Add support for the usb2 phy of RTL9607C series based SoCs.
> >> Add the macros and phy config struct for rtl9607.
> >> 
> >> RTL9607C requires to clear a "force host disconnect" bit in the
> >> specific register (which is at an offset from reg_wrap_vstatus)
> >> before proceeding with phy parameter writes. Since it belongs into
> >> the vstatus register region, it doesn't need bytes swapping.
> >> 
> >> Add the bool variable to the driver data struct and hide this whole
> >> procedure under the if statement that checks this new variable.
> >> 
> >> Add the appropriate little endian read and write functions for rtl9607
> >> and assign them to its phy config struct.
> >> 
> >> As mentioned earlier, the readl/writel are native endian on MIPS arch
> >> if SWAP_IO_SPACE is not enabled. Since enabling SWAP_IO_SPACE results
> >> in boot hang on RTL9607C machine, wrapping le32 around readl/writel
> >> should be a good compromise, but swab32 could be also work.
> >> 
> >> Co-developed-by: Michael Zavertkin <misha.zavertkin@mail.ru>
> >> Signed-off-by: Michael Zavertkin <misha.zavertkin@mail.ru>
> >> Signed-off-by: Rustam Adilov <adilov@disroot.org>
> >> ---
> > 
> > Have you considered ioread32() instead of wrapping le32 around readl()?
> 
> I think you meant ioread32be() and yes i have considered it. If this is what
> it takes to get rid of le32 warning you mentioned from an earlier email then
> so be it.

No, I meant ioread32(). When I read Documentation/driver-api/device-io.rst,
it says ioread32() is for a little endian peripheral and ioread32be()
for big endian peripherals. You have a little endian peripheral (relevant)
and a big endian CPU (not relevant) so I don't see why ioread32() wouldn't
be the correct accessor to use.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
