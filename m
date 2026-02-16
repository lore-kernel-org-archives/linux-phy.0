Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD375E8383F
	for <linux-phy@archiver.kernel.org>; Mon, 16 Feb 2026 22:13:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/IRu0A5uWPwUdkk9DvHwo5/C5lsXMBkX9WpfkHP9/n0=; b=T30OrZKTD2uzrM
	KdZQJZx+V+5Q1Jm4vdUHdMwZlLDq4opSfksa4lwAy7m8wTu0KdckdQUfubZquF3+mS8LnCO/gGqIR
	AE8BdA/P9VGNuv2+SkiVioAkRMGHYxJhPPblJLtCpwi1/TtX9/1A9cFy5AFKLzCyf1KxVNjRruHUz
	IPFspINEJqGSGnoDP1ai2iJZGyL2SORc+do2nfJx+HfQ8HJ6Ey2Wi8ZlWzibDKkWq/rU8SVrA4FY9
	mghVFua1cS2kWTVvqOd54EQW4hX+KVYUVE23RbYOWnU6zJP8l2hUzbdP80NOpLdQKQNa9MN0Pqo3R
	ckkrLimtWRu4pLuwgcgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vs6py-00000007KRQ-0R7R;
	Mon, 16 Feb 2026 22:13:02 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vs6pu-00000007KQO-3YzO
	for linux-phy@lists.infradead.org;
	Mon, 16 Feb 2026 22:13:00 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-4806b8fca44so5149165e9.0
        for <linux-phy@lists.infradead.org>; Mon, 16 Feb 2026 14:12:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771279977; x=1771884777; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=15IPpReMOhWnQxE4O6qiiwyShkxCXyUxYB3ay6FehAg=;
        b=M+iE1hZ9T9EQApGTxQg1orZxYaauY6vpf0cEYGv7oa1H2JdBWMdoAftwMHqJ3BqRUf
         dHWQeoqh+0MGLYT0mHNdnO3Q7PJwU44Po3sr9XbiRTHU25RGzmCy/55v60CBIO7gRl7O
         N+yvcV3PaPLsjBz5qmMROK/m/Ng7vY3Gtc6MZtVXPadZBCOKyGHeZep9Lonjw+c/5o2+
         MQ+zMN4xa3BmKr1Dj8YtgAmyc0pVWyF8O6bP84nLhlgSWRZGsPo5o3ZCI9Ry3WZT/OO7
         MhZ+hwc039YPaPOTePn/JpD2VUNjQn/RAkz9B3HDfLzwRiQkS1FJPtfYFlh/7MMOZphh
         Iw9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771279977; x=1771884777;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=15IPpReMOhWnQxE4O6qiiwyShkxCXyUxYB3ay6FehAg=;
        b=JFi/AIL90IS7pGvSuKNHALKby1ceLKFrpkmeeeZKW7GDm9AQKFiHD8Xq1j8cE/7ZgN
         hadbocwOoRe0kRFd1zzjHGIVtne1uRb3mTGlBTXrGffy1PSQpqj/XYfiyp7mdL4/CfaN
         aGftv3TIuIhuvjlGC2QxB9+54MJvtNAkK85vf96CDoB5QYJGxwnsJQVnblsxfRW56zNR
         Oho5n4FnVUBnUkmttJ9mPAAZUN7cAS1QEpv1owy43ul49uNpmVVYWAWQmJ7e+1lMzX1a
         u2tGfy1A83359ZgZTOiujjnVjDzyC7Cw0/g0aevobVEe8dLHgEIbndMgSjB2n1ferelC
         sD4A==
X-Forwarded-Encrypted: i=1; AJvYcCUGBg+WUfLlh5+8Dk6cqTonkjgqMzEzHwe/GipdYS+EY5WTBVNUIfk9k7gvaxQgwsP01WEsfAqwM/o=@lists.infradead.org
X-Gm-Message-State: AOJu0YxPQrLMHUE801wd/DNw7ZdYMZmf4E2ECF1W0dtrE2W0R0JYWTKl
	gxEg4fFKtAFEJY2Gc1L9ZsQ4FaRd7ft9ODjWzqrAsyED4rPlOqTitK9+
X-Gm-Gg: AZuq6aJaiY2NiwsTl2xWA5h3V1932dW3vmUqR1F56LyZU6humtButwyqX1d5U5GnUwU
	ABmwQ5G6xwGEcGUb6WURDrcLkkmbpnCkVo0gOCTbUdOuc8wVbeVNDYNnO8gFSBybA4hbeSfUfaF
	aoXFJ7SHyaB1oHYYnAKJToqPgwLWgtMYzXHgQY5UPVRxIfUppoFabyq2hCqenOBBp64f0F74NUe
	t6oqG7oeKKgAp4qua0zMrQDPRm73XzvPbqs9z1lUPsN9Pk4fYDigMzxGMkj0DbZdTbXCmaf1qU2
	kVBx5c1aBdL9wNUoQCfC7tRkUHe20YaaNekOC5Lp4iPid3oXwJMGVA4/clxgXlB98HqINGTyqCD
	XgY9R9gTlECgLxh/3VL7R7zojL68n59Ww/NzRBblHhEjMjvTzJp6wt7teW7lGwgW2eOjsJoWZOn
	FZvsBaLAbtfgqLxhY=
X-Received: by 2002:a05:600d:3:b0:483:8f10:4bc5 with SMTP id 5b1f17b1804b1-4838f104bfbmr11005335e9.4.1771279976748;
        Mon, 16 Feb 2026 14:12:56 -0800 (PST)
Received: from skbuf ([2a02:2f04:d501:d900:ac3e:d4d0:5059:7047])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4835dd0e327sm460068605e9.14.2026.02.16.14.12.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 14:12:56 -0800 (PST)
Date: Tue, 17 Feb 2026 00:12:54 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Yixun Lan <dlan@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Ze Huang <huang.ze@linux.dev>,
	Junzhong Pan <panjunzhong@linux.spacemit.com>,
	spacemit@lists.linux.dev, linux-phy@lists.infradead.org,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] phy: k1-usb: add disconnect function support
Message-ID: <20260216221254.vmd6jtpl7r4rtob5@skbuf>
References: <20260216152653.25244-1-dlan@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260216152653.25244-1-dlan@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_141258_917524_B2A4B244 
X-CRM114-Status: UNSURE (   9.38  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Mon, Feb 16, 2026 at 11:26:53PM +0800, Yixun Lan wrote:
> A disconnect status BIT of USB2 PHY need to be cleared, otherwise
> it will fail to work properly during next connection when devices
> connect to roothub directly.
> 
> Fixes: fe4bc1a08638 ("phy: spacemit: support K1 USB2.0 PHY controller")
> Signed-off-by: Yixun Lan <dlan@kernel.org>
> ---
> To: Vinod Koul <vkoul@kernel.org>
> To: Neil Armstrong <neil.armstrong@linaro.org>
> To: Ze Huang <huang.ze@linux.dev>
> Cc: Vladimir Oltean <olteanv@gmail.com>
> Cc: Junzhong Pan <panjunzhong@linux.spacemit.com>
> Cc: spacemit@lists.linux.dev
> Cc: linux-phy@lists.infradead.org
> Cc: linux-riscv@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> 
> Change in v3:
>  - split from v2 as bug fix
>  - fix alignment to open parenthesis
>  - http://lore.kernel.org/r/20260216090112.n5jjpui3luqsybb5@skbuf
>  - Link to v2: https://lore.kernel.org/r/20260214-11-k3-usb2-phy-v2-0-6ed31e031ab4@kernel.org
> ---

Reviewed-by: Vladimir Oltean <olteanv@gmail.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
