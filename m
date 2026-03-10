Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A59C2FCC9DB
	for <linux-phy@archiver.kernel.org>; Tue, 10 Mar 2026 09:24:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tet5PsJv+VjpujQsjoB1rENv0eAFDKNCP2TFucu1/3Y=; b=nNkEc9n5tvE9Yt
	/qh7NdfyYySKCrX/6WpEt5ElKM59qfgnGy3jBqVJAmH1Cm6ZwwJq+7/pmr1M26Rie7lvOdQwkZoXj
	eUC7jV+zs3YMe3P8Xcv2HSy7lfdBAYzz0M0Wu1oy6Y2rPfycB88hLACf736X1BSsvIIcccYWvb18Z
	obJgWaVjLaPiEwnQwvC8femBa9GnfnVnumjQWinTCfgiSekx4fEwsRCvx9jch0EznvKuM6wQCd1cJ
	gnMMxwWGAWE74sQLSxPj346jZK0Drsn3/eV/3bx2YiGBSF2nH+l6lft/PfJkt57Sa5DaTQVgGx6cB
	9yJ1bSGpjuUEbsXr+DvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vztK3-0000000951e-0rCl;
	Tue, 10 Mar 2026 09:24:15 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vztK0-00000009515-4Ab1
	for linux-phy@lists.infradead.org;
	Tue, 10 Mar 2026 09:24:14 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-485350d142fso677475e9.1
        for <linux-phy@lists.infradead.org>; Tue, 10 Mar 2026 02:24:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773134651; x=1773739451; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WZCj/TjHIXVRoVKGE6NQ7feI9pXMgzpRbm+P3PxeGt4=;
        b=lM165KjjyFOgPvp+JWy6dOSi7BzCcbX2B7AADk1pYcBKsVg44qI4Ux3bDwnNHr4dft
         wjKsL1RicSjSSsAXyMRA0aYX3MyWN4ncE+TeqvmiBpf9xCKQbbfREHFZ98537AMpt47u
         +Plh6jQFKRfdf9TVXclj1Sd9F6Pqer4J02qe/HC8kSI+AXV+GyonBCIPAQnJHR4DYX6u
         5iFpoypA7eVwJ6uPVES0cYmdjZ1cce0bIVwlnIbfkEM4gDc7mETNPPZmiNIjDZFBk1W6
         7O3ZniqApTFUYm37OBJ7jnnKqNCZom3/+VXY/kPM1T/Nl5oc7VAnq6qCd1v+W2i9L4cq
         iuEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773134651; x=1773739451;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WZCj/TjHIXVRoVKGE6NQ7feI9pXMgzpRbm+P3PxeGt4=;
        b=VxFXvqYL5GKGaMgOuEg3l0EN07HcK3oaN3nru9Tb6PvvC/LFi8ZAxDhfuags9fZM3K
         84OYbGwQeK+2SjwVJW0MJv1L1Ed/XfFv47Jn7VyznAd5tZ3ouoGtIOQH/FyiHt09DO0i
         fpHITVq1/XXUirJZNV5P4FlOFR+xsgUnfj3RQ4cpobKfKa7DFRcURwN27bWasxj9efUc
         GeNaDNajAWdnAkvBZZ3PaUwDShswyS4TK/4KQzauh3fkwKlRxCRBq/gkzq1T22KSF/mp
         QOfri+JgB5XMR0UHjzB05smi1xmPkRP21ntqml35YbQ2cUbEamIC//s1PVhivpMKnWUz
         2ZTA==
X-Forwarded-Encrypted: i=1; AJvYcCV78f0RECej8CtCtu3iTxgSEFDbW/vnPxAyXx+jJxOCF/LZ9Gu3eD/AsVYH4gznt2EPTYTLycJQOBA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw9aOf5fVBHwR/8k2n8CZyATI6pjRRLOCUOZpTLyUkd+z0UUTKV
	oBzCE1l6gm2ufOczGJyvnRz9VQp177qFAGo3TJi6zBCRjhhM0jtJS/x0
X-Gm-Gg: ATEYQzyj/PZXxrDhhhZe90awclXbpo+kCBoo6qbGFKOteIhn7Iijb2NqWNpAfdpeNPu
	TZyhgK6vXtfQBIA6XvlurJA/lS2C0iKC5MysNF5NFeTDiuVouRb4zzej8mFfO0JrfZhut9ZXUHg
	61SbKSQsCEwconsXpN4a8Lxuq62tLQ9dnCXNG/2vzy+rYS08lG3KRs6B3dBjey/vaAlyZBCRkWU
	apsQlnLWrBfhzl5IrCLYeeQw9OgPVc038BSUHxMce8ayylCLasNIEhfIu1IF2bJnJr71eRsYuPU
	4c4ZDRNdqqoyYrZQoJTgtfK3WcjTSZjPTfaDOMZ4T3vHVLDXqgtFHlNXuRKw42G9LZ2qoBxtstC
	4DDcz5nWuV+f7HwQL+FWBx0GX0iB7AcyHU3Y8uxWY4Knd/4ubjGRfEBuS7q1kEi6keeVaNXjVIa
	7EiiYoaMVJhQsUj0rYZ/B6wZpB
X-Received: by 2002:a05:600c:198f:b0:485:3b3c:1c18 with SMTP id 5b1f17b1804b1-4853b3c1d8emr61523235e9.2.1773134650905;
        Tue, 10 Mar 2026 02:24:10 -0700 (PDT)
Received: from skbuf ([2a02:2f04:d00a:e00:8799:3a7d:3c86:3200])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485246fd127sm169882015e9.6.2026.03.10.02.24.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 02:24:10 -0700 (PDT)
Date: Tue, 10 Mar 2026 11:24:07 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: =?utf-8?B?VGjDqW8=?= Lebrun <theo.lebrun@bootlin.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org,
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>,
	Gregory CLEMENT <gregory.clement@bootlin.com>,
	=?utf-8?Q?Beno=C3=AEt?= Monin <benoit.monin@bootlin.com>,
	Tawfik Bayouk <tawfik.bayouk@mobileye.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v9] phy: Add driver for EyeQ5 Ethernet PHY wrapper
Message-ID: <20260310092407.uk5dsn73ccelflgd@skbuf>
References: <20260309-macb-phy-v9-0-5afd87d9db43@bootlin.com>
 <20260309-macb-phy-v9-0-5afd87d9db43@bootlin.com>
 <20260309-macb-phy-v9-1-5afd87d9db43@bootlin.com>
 <20260309-macb-phy-v9-1-5afd87d9db43@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260309-macb-phy-v9-1-5afd87d9db43@bootlin.com>
 <20260309-macb-phy-v9-1-5afd87d9db43@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_022413_042423_1BD7257C 
X-CRM114-Status: UNSURE (   8.34  )
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

On Mon, Mar 09, 2026 at 03:37:34PM +0100, Th=E9o Lebrun wrote:
> EyeQ5 embeds a system-controller called OLB. It features many unrelated
> registers, and some of those are registers used to configure the
> integration of the RGMII/SGMII Cadence PHY used by MACB/GEM instances.
> =

> Wrap in a neat generic PHY provider, exposing two PHYs with standard
> phy_init() / phy_set_mode() / phy_power_on() operations.
> =

> Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
> Signed-off-by: Th=E9o Lebrun <theo.lebrun@bootlin.com>
> ---

Reviewed-by: Vladimir Oltean <olteanv@gmail.com>

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
