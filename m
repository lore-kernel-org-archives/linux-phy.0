Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32C78C28B28
	for <linux-phy@archiver.kernel.org>; Sun,  9 Mar 2025 10:25:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I1fmms1elmc5r44z/bDDMlkGdrZId+umKlTT9Xh1J1s=; b=UN0sY0bqZVhr3m
	mJ2qENzkI0QNtFrBk0p3eNx8UIAVxCm7jHRJ06BAaoJ9Vt1/4G4+eX1dTy+iqhGCWvKvmRRBi08f/
	iQO62hfMPGOYMSEOsb9VP+fQN0SMwqupw5tJCriE5+lqm7yiEYwnEQKIYkaw/XypMU+BIeyWrd8of
	5ZFSD4qt1kkI5g7zg7+Qednet2v8IZaY2pQ65eqLPiCxTeOUiqbeCb6EI7u0SurP4IEUEautnQcKP
	L/n7SgnVQi5r1lU2L3vHHfxgtlgx26pQ3ii+zRwG9pqfcQxYYX3Vsqx2i3fRVK39RfbwEifZwsODm
	FhuPrwrJiaBmKUIFqHsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trDqH-00000000MFR-3tBj;
	Sun, 09 Mar 2025 10:25:09 +0000
Received: from mail-yb1-xb2f.google.com ([2607:f8b0:4864:20::b2f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trDjc-00000000LPz-0ekm
	for linux-phy@lists.infradead.org;
	Sun, 09 Mar 2025 10:18:17 +0000
Received: by mail-yb1-xb2f.google.com with SMTP id 3f1490d57ef6-e53c9035003so2939579276.2
        for <linux-phy@lists.infradead.org>; Sun, 09 Mar 2025 03:18:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741515495; x=1742120295; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=axZ+5e4ppBNtE/voflpOoIYftm6X1RtKy/F9SCoP6Ps=;
        b=U/j2WCiOUxkt2RGn9a99EiebV9TepVcOnN9MwVX1GJNjkzJUhldoyIyp6MaqNy+C1M
         Dc6JLl7pS/Z6IpScM+yXKeZX35RRYElre17vuVmo+/UEMmQTKE9yXDXA7ilD8v0+64fw
         QAQiuIDcvSV3eMARH/vnogVtdFNi865UHHmYXY3SyKyySFR9zxKqDlScZI84z0MAhKMG
         rj5+qxQSD9ZnYgcMZHpF5byhCjb8G0dBJ7rOqggg2Q4vGrMeehRtVqxSxaVrWVSdJyjk
         siERxuVXTZpv1o9snFi+NM5/T47kU7ZAJWvZ8u3dLA2HJmnTVSpRBelN2Ky9UO+mMMgd
         JEDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741515495; x=1742120295;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=axZ+5e4ppBNtE/voflpOoIYftm6X1RtKy/F9SCoP6Ps=;
        b=pbha8ORYyLUr2IR62iMvEhoLSh56POEW5/hSnKFcoa6Aq2clK8+9p6/UvenuxSfRK3
         Yau70cHEwY907R9VbEC4P2rJxxxiGto1UiDJf0CXMB5H6miHMq6rbGmY8m01wtFJBRra
         pQLNZK1sBSSmaWmZl7gX5oF3inSIDrzcnNuf0pyRZpUmG566NQhYjSAlmUcNuf+T5nOE
         UVKb9dyXvFjhrjutSxiBJ12pprPoVjERg6Juw2fcVO8U0U5pMTLo6VTe+hb7ieOE3r/m
         AIEGilxeB7OMc+V7Idw0Dp29h3Cwp0NJxAqD1EHUnGPDb59CMdKDJpiN2tAGQuyVgtO2
         mDvA==
X-Forwarded-Encrypted: i=1; AJvYcCUsMryIghBgJ9qUjfLyzk9TRLT1DbeFYqtPH/LR19jrBSfU1lisEaMF/9K7XA05nNFSpCX0siChTcw=@lists.infradead.org
X-Gm-Message-State: AOJu0YwIXu8p75XVDQ4kOp8RgfJ5pcPgjqEvjYmXmihDlmz6f/s5QxPB
	u0W32sBLxExRKZDXaEeAbOTD2/9Ykdk7EKdLrM6fDkv2uCaYItopMlGqh5OdBryAUMzMxBfXiCa
	1p6sale99/VwvTQdVAGRfoE4Y+pfva3EbLFEWhA==
X-Gm-Gg: ASbGncs8pVo0U6ulHmGOtH5q++Dkqtv6cI++NzcP7biOE9jFyAIeOkAY3EY+yyWX6IS
	rDrBy4uQFtl+brrLh34cmhyRUKom8RGD/mWj4oDMI5T2wis0oy7SXZlVwctrXVxYO/qCEfipihP
	YSeyIslWjeTh335P6oC1yR/2/y+KfYho1+TJUZrX6o
X-Google-Smtp-Source: AGHT+IHzYJUEBCseRpB1AtkBRhzVmaX6lTysQa7mEET1BOVVRq9VxSIkWUm8rz2mPA0ndjlMDQlVJNKo7thzq+TTMXg=
X-Received: by 2002:a05:6902:2307:b0:e5d:e04f:f2ba with SMTP id
 3f1490d57ef6-e635c1ea9e1mr11547764276.40.1741515495265; Sun, 09 Mar 2025
 03:18:15 -0700 (PDT)
MIME-Version: 1.0
References: <20250308-phy-sam-hdptx-bpc-v5-0-35087287f9d1@collabora.com> <20250308-phy-sam-hdptx-bpc-v5-12-35087287f9d1@collabora.com>
In-Reply-To: <20250308-phy-sam-hdptx-bpc-v5-12-35087287f9d1@collabora.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 9 Mar 2025 12:18:04 +0200
X-Gm-Features: AQ5f1Jo4_HBXJ7xLHJUnhsvem1EBn8fTfXsqaT-YVMexvyivzGMAkeYh6r_Nz90
Message-ID: <CAA8EJppo29p+8a5VUbr6dwaE9ywgS+-VcuUH_sF+NdA0xGU1Zw@mail.gmail.com>
Subject: Re: [PATCH v5 12/12] phy: rockchip: samsung-hdptx: Add high color
 depth management
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
	Sandor Yu <Sandor.yu@nxp.com>, Maxime Ripard <mripard@kernel.org>, kernel@collabora.com, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250309_031816_239941_056C84D4 
X-CRM114-Status: UNSURE (   8.37  )
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

On Sat, 8 Mar 2025 at 14:21, Cristian Ciocaltea
<cristian.ciocaltea@collabora.com> wrote:
>
> Add support for 8-bit, 10-bit, 12-bit and 16-bit color depth setup.
>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 23 ++++++++++++++++++++++-
>  1 file changed, 22 insertions(+), 1 deletion(-)
>

Reviewed-by: Dmitry Baryshkov <dmtiry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
