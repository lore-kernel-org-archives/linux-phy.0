Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 067EDC87FCA
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jul 2025 13:52:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ld0MLfqpPtZn6Y7sT3OF8OeDpZs90o5/rNWGE8lPRc0=; b=cVwZkOVyY0+JT3
	tVlRRYBV/av5C64YrJoPKL234vzoI5Z5bUSp+2/F+cf9yGSvYRKPEo2+anh98RisPxej1udtWs42a
	62WSfO0Bk0NASZkmpec4FSgF3jSSHpgkxfxvseDn5DfJ2/iKUL1KhPDJRS21gnx16slkUdwvVkr0U
	wRbWprber0uoKQl9ChOG4WgeN0y4s32LC+lGXVAvzrIuFkhP03YiwEbjl9MZLxDUHi2l2Tar2ZHl9
	XDJGjUUpkPt+u29NArUKnmmjJWaVOK5XogYpddfmqy7C0pb3RErqmvjXzY1LfXb+OEo8IjBsMhN4/
	SLuuIBsnrkk2vv8Rumnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uewMk-00000007YZx-366z;
	Thu, 24 Jul 2025 13:52:10 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uesmD-000000079Rf-2o1v
	for linux-phy@lists.infradead.org;
	Thu, 24 Jul 2025 10:02:15 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-553b3316160so798938e87.2
        for <linux-phy@lists.infradead.org>; Thu, 24 Jul 2025 03:02:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753351332; x=1753956132; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KWyqMGEUBT6sPlAYGN8ahqpDMLDIFJaLyGGzuzUqjK0=;
        b=MOb/K9ktzk+6Sr3dGBmAqCj0P8uPfUKAIHF27+GGPJ/d4O1zpIIMO7KMbzZWNy3vrQ
         J2rxq3ocp/nk+R9x5ZPSS55lyQjjyPxecQMcUzWERqQz5xEQ9CzfawoEFdqHD7VSFRE6
         Q4LNyctBJqDCciSQD2YoN+JVE+bNQje5X3sjE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753351332; x=1753956132;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KWyqMGEUBT6sPlAYGN8ahqpDMLDIFJaLyGGzuzUqjK0=;
        b=XW2EFrK0rs/2oyJxVTvw2WjDV3CcyC3XIK8Gr3dE17GJdsCana9Vt+iiCbLwRL4m0P
         533Y2D1cI+nGHCNQREXFTMg/gK2v3r8FBn9+FLYU1m2g2HUuKntwWyZGvJgX7dxvyHVZ
         m97NW7RJhEzJs8f5146XhsBqgR/b3WR+jiqcxG9n8+h7aocv0DrpyQtKlNFv9MwWNy17
         Qdf7ccpjIvrrAwtBUQZXtmuBstJl8cupCviu+NCzDMZ1qwpp6pZj1TrJO4xafccJfqpx
         27TMfHDiLAf5gaLkazSz8Dg4QDE4X7oRqEPEbp3aVu3OZ+g0W0lwWIf2gwqjsvcXZMVQ
         Sh/w==
X-Forwarded-Encrypted: i=1; AJvYcCUb/hVlxSewa9CKqrZAK6VJ1+j1knEPeR4uKqWmTsr2vekc4oAa8qhlnQQAetwSnZEpzioDlVR/JRk=@lists.infradead.org
X-Gm-Message-State: AOJu0YziTw1zmOKZru1mFlTS6oG2fGdC0SbkC/y/IX+0hcOvCcsLCLFL
	nKT76nOUOLnbcmuVLQiouhG24050qZv1qQQqjQJgYNGivDKLIoQAFY3kzJ+0XLVn3wqUKopKObz
	BaRW/eSPIGrJ9lMbe5qM74pdpZtfCMq1gBydHatHN
X-Gm-Gg: ASbGncvQvJitRWTgHQIOKyoVyAOx4M2fbHnJ9o6KD2n0brzuDxkBGVipHGCXDyjIF0w
	CKvZHLF2pXmQehAFetDc6eMKUBkwhWnbQ6SyhmxD3k7HzDNNnBgZkCiPwekTc1a68pY4k9E5jad
	dUnVksdbsjLmo/RyZONlr3QyGNIO3x4A5gJZJiJmED6HZtPcHRFjP+ojpEbGxrRceNoPCQ5DBFt
	013niVT/eQmJTwca4CBagXam98JcMX1jWc=
X-Google-Smtp-Source: AGHT+IESUy0W5d8sN6DOxHQC9VYSfHke7csoBbtn4oiuNMESAIIOLfvRI9EoIcZqqzK+oAmlqA1BtKODIpYwZl1nk3k=
X-Received: by 2002:a05:6512:b06:b0:55a:4b25:b33b with SMTP id
 2adb3069b0e04-55a513879f4mr2300615e87.15.1753351331794; Thu, 24 Jul 2025
 03:02:11 -0700 (PDT)
MIME-Version: 1.0
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com> <20250724083914.61351-36-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20250724083914.61351-36-angelogioacchino.delregno@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Thu, 24 Jul 2025 18:02:00 +0800
X-Gm-Features: Ac12FXxwmEtskk9yW4VS4U_sXrqKN7rxCsdJIjp0VaKRTEqFbUzw8Bs63nu9Nbw
Message-ID: <CAGXv+5Gar47gRZoT6DUDpPRabjzoSE==Zi0wrR76A7g-SJL1=A@mail.gmail.com>
Subject: Re: [PATCH 35/38] arm64: dts: mediatek: mt8195-cherry: Move
 VBAT-supply to Tomato R1/R2
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-mediatek@lists.infradead.org, robh@kernel.org, 
	herbert@gondor.apana.org.au, davem@davemloft.net, krzk+dt@kernel.org, 
	conor+dt@kernel.org, chunkuang.hu@kernel.org, p.zabel@pengutronix.de, 
	airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, jassisinghbrar@gmail.com, 
	mchehab@kernel.org, matthias.bgg@gmail.com, chunfeng.yun@mediatek.com, 
	vkoul@kernel.org, kishon@kernel.org, sean.wang@kernel.org, 
	linus.walleij@linaro.org, lgirdwood@gmail.com, broonie@kernel.org, 
	andersson@kernel.org, mathieu.poirier@linaro.org, daniel.lezcano@linaro.org, 
	tglx@linutronix.de, atenart@kernel.org, jitao.shi@mediatek.com, 
	ck.hu@mediatek.com, houlong.wei@mediatek.com, 
	kyrie.wu@mediatek.corp-partner.google.com, andy.teng@mediatek.com, 
	tinghan.shen@mediatek.com, jiaxin.yu@mediatek.com, shane.chien@mediatek.com, 
	olivia.wen@mediatek.com, granquet@baylibre.com, eugen.hristev@linaro.org, 
	arnd@arndb.de, sam.shih@mediatek.com, jieyy.yang@mediatek.com, 
	frank-w@public-files.de, mwalle@kernel.org, fparent@baylibre.com, 
	linux-crypto@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-phy@lists.infradead.org, linux-gpio@vger.kernel.org, 
	linux-remoteproc@vger.kernel.org, linux-sound@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_030213_710500_2ADD207F 
X-CRM114-Status: UNSURE (   6.51  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gVGh1LCBKdWwgMjQsIDIwMjUgYXQgNDo0MeKAr1BNIEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJl
Z25vCjxhbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+Cj4g
TW92ZSB0aGUgVkJBVCBzdXBwbHkgdG8gbXQ4MTk1LWNoZXJyeS10b21hdG8te3IxLHIyfSBhcyB0
aGlzIHBvd2VyCj4gc3VwcGx5IGlzIG5hbWVkIGxpa2UgdGhhdCBvbmx5IGZvciB0aGUgUmVhbHRl
ayBSVDU2ODJpIGNvZGVjLgo+Cj4gU2lnbmVkLW9mZi1ieTogQW5nZWxvR2lvYWNjaGlubyBEZWwg
UmVnbm8gPGFuZ2Vsb2dpb2FjY2hpbm8uZGVscmVnbm9AY29sbGFib3JhLmNvbT4KClJldmlld2Vk
LWJ5OiBDaGVuLVl1IFRzYWkgPHdlbnN0QGNocm9taXVtLm9yZz4KCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
