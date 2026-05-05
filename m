Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 897DACD3430
	for <linux-phy@archiver.kernel.org>; Tue,  5 May 2026 11:30:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U0KxccCEMg86jB1o/bjGh7ZVTP9wv5LYrZLkjC0sHS0=; b=nDcSio5PRVLhaH
	mYGY9BNws7Y2hL2HyuTu1qP0WFEd8gCZdUnv8pUbT08Xb1qG/RM7OAjHmsUE3wEsOO6CScFC55WWw
	mCAlBBwZxT2g9Nr9++NfyWSuazeg0pgBOd2T0DqobE4XrNCANIpXrRGRFFxJVmTAsrnNm8yH4xLzZ
	WY6jGGXblI8JLqgHw8PcvjGqC9tRuCwUFDW/w1EzzZEMKgLthXd/gYy9Kupsj0cMQTu1JBaQQ3eXD
	YCn08IPi+DwztnOt1aKnxSoDoHfmrQSjm/n2OxLkwZGfBnGMLBH9IQQOBwlf0zi33t36rRnqab9QS
	DauB2rheM3xQYQAAZiuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKDye-0000000G3Rx-2FRi;
	Tue, 05 May 2026 11:30:12 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKDyc-0000000G3RY-3Abt
	for linux-phy@bombadil.infradead.org;
	Tue, 05 May 2026 11:30:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=4BjQdln3IkqcS/3mLg4+1yv+wub9lBUw+7ON58e1PtQ=; b=mKEwCWuUwdPCY3pKj+rZ4NMWhd
	AUoY990Nx4XFBPKlDypPiUSqInrHPDEgijBxXk+4dDunMm12UymPARq4j50sZYwpt5Q1RSjH2Cjk1
	FtE2LON/CVHWsXJ+U6n2+YSgsyxN2cBrOlvnwm1wrr6Rpogn+v7PknqVXiEBdZcvwwIDq9sEM1gad
	sOEm8X6+gRKbLpHgGeezqza+5l71OtHzSUlkusOLr0fHg89mWIxJvkVOf5Ywq7QpQP0lisk9b8NbX
	aIviB3W88KdWpE7fYhuz0vRw3wdP+dVhsYJuH3VLC95mJJBx0NGgN4XrbQV6m/lZxGXRlntgeDmxo
	OcC8KVXQ==;
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKDyY-0000000DNPS-2Ut7
	for linux-phy@lists.infradead.org;
	Tue, 05 May 2026 11:30:09 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-4891b02a0acso7650605e9.3
        for <linux-phy@lists.infradead.org>; Tue, 05 May 2026 04:30:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777980605; x=1778585405; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4BjQdln3IkqcS/3mLg4+1yv+wub9lBUw+7ON58e1PtQ=;
        b=FrS3RV8G1Ogpcl5Q2YfTm18JY9UzUG0fAVEez0I2ksn/AloJjyUXx5ZW/74dYF4kZU
         24/IBwWP8bPUkAmfaxh9DiKO9WCbiHSGX9bWSqmOIKQDe6jaP0ERViq+c4xoUDu+drhA
         b6moaivOFSXoIt7MjjnjHz/GN0/FuA1C2c3rU4Js0xOElDMSlkvynuIN7g+u10YO5L+V
         zl7GTaEM2HWgMgJOMub64h5NR168JrfwSy5gf4y28kvzGyMRe4KKSMpPNWOKEgLGDRfs
         dlEPS9RWLT0wbM3YnA8ZwjAc5lAFcl+vRnY7IFAxUwWY99JMRgrEH5mYO1DYkxj/d4Ct
         4meA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777980605; x=1778585405;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4BjQdln3IkqcS/3mLg4+1yv+wub9lBUw+7ON58e1PtQ=;
        b=UZOHZaqqNdf3TMYYxDYP5ahL3dBeCh/9NSYZ2oEYVZyArcr+5AWfXyCECkAHT1WXN5
         WNHf0J6r/ypQh5YFf7apZgZig0fBVihCDnSihq+UAMUOuB+/uy9TSy0ypbk96OcRlhMU
         FeKcenw6tXgqyTwhAA3i/Fm5tzT7pvNM6XqvryrOzGJnju6zM6ZsqgIKP1jW310xn/gB
         E63H1yJEu0maTWWf2QNEp+BXkJbH6Aqe6miory1nwB6jSoKn7oaCst9XNJ997UAhSsXL
         yRF8K+spGgezftUi73Eca5TLi3MvdnbrYSlBSSWXFnWQSrr8QzcjgUplxRdna2WrGXf3
         0rdA==
X-Forwarded-Encrypted: i=1; AFNElJ9dHA/Ne7bUyP1uIjdID/8wTLEIcqaq4/Q6YN3Qrb3AkZ/FMVFnuQ2IvzgP5Aa/Hs1rO6FPU/F40wM=@lists.infradead.org
X-Gm-Message-State: AOJu0YwCyrNVdilPGXyDOY2XXCAyjhBGBB1BjnG+5Vtt53GjkHHdBlDl
	+Sy6h4eZ4CV43WdOUiuYNhh5b+CFMQ87Jm8KkjEtaMpJwlmpYsuzXgbM
X-Gm-Gg: AeBDiesfXeB5t3vIgNMuC2OLNgb392wWo6HghYikDj6uxIZrCz3WqkkvbLLbNfAWGrU
	gXwFzs9XlTt0ts/GHo3fxeHW0Uaxe8viiXPd0yM6ML11MpIcNm6/E9dkwdIgFHdHpjPu1c8B/mk
	l9Jtwmbow0RP0PcAwDWDRHDDQrZD4m3AhK6vOfoTAbLh+6yI/KPfSMHpif4klnE4llr8i7UZSVD
	tzSrgbsvPZra84woQxYAKQtwcCc3UsFJ6w5gfd4ZuPPpJ9yiphAp0RXuFv2ejwIAOxkLf+xmltW
	xjmyFb4oUqZQeBXBVoSWGqbFFQ2zB3/div/EidJidR1dfd7T3dweUmdeXC3uWolSZI7Yyh0QnHt
	mtLjm3levkyqpJQHkzDEYKsuyx1PU9cJub4GfYTstEQCO+VIuauxxlxIfsBpzXn3cD7Cm1yTwTO
	GZRftV9CX9Uby9kx8X4XnvFHYrzA==
X-Received: by 2002:a05:600c:1e8b:b0:48a:6848:527 with SMTP id 5b1f17b1804b1-48a9866dcbcmr109557665e9.7.1777980604557;
        Tue, 05 May 2026 04:30:04 -0700 (PDT)
Received: from skbuf ([2a02:2f04:d403:cf00:9b58:9830:baf1:5f76])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48a8eb3427fsm566232505e9.0.2026.05.05.04.30.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2026 04:30:03 -0700 (PDT)
Date: Tue, 5 May 2026 14:30:01 +0300
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
Message-ID: <20260505113001.idgj7ssikjgcypa2@skbuf>
References: <20260420191941.81834-1-adilov@disroot.org>
 <20260420191941.81834-6-adilov@disroot.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260420191941.81834-6-adilov@disroot.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260505_123007_730094_697C39F3 
X-CRM114-Status: GOOD (  14.87  )
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

On Tue, Apr 21, 2026 at 12:19:40AM +0500, Rustam Adilov wrote:
> Add support for the usb2 phy of RTL9607C series based SoCs.
> Add the macros and phy config struct for rtl9607.
> 
> RTL9607C requires to clear a "force host disconnect" bit in the
> specific register (which is at an offset from reg_wrap_vstatus)
> before proceeding with phy parameter writes. Since it belongs into
> the vstatus register region, it doesn't need bytes swapping.
> 
> Add the bool variable to the driver data struct and hide this whole
> procedure under the if statement that checks this new variable.
> 
> Add the appropriate little endian read and write functions for rtl9607
> and assign them to its phy config struct.
> 
> As mentioned earlier, the readl/writel are native endian on MIPS arch
> if SWAP_IO_SPACE is not enabled. Since enabling SWAP_IO_SPACE results
> in boot hang on RTL9607C machine, wrapping le32 around readl/writel
> should be a good compromise, but swab32 could be also work.
> 
> Co-developed-by: Michael Zavertkin <misha.zavertkin@mail.ru>
> Signed-off-by: Michael Zavertkin <misha.zavertkin@mail.ru>
> Signed-off-by: Rustam Adilov <adilov@disroot.org>
> ---

Have you considered ioread32() instead of wrapping le32 around readl()?

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
