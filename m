Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C101A606A330
	for <linux-phy@archiver.kernel.org>; Mon, 23 Nov 2026 15:31:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=t6849N9/;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=OhHvVIeL
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=nHz/TE4MoItEO7vquiBPwdedxg8jajSbqOiqtGXb9T8=; b=t6849N9/+OnRCr+Z9n7YTyopal
	MoM2lbzNKHGhE1UUUN6CRmmHDKQ+gDZ8khtTgiRZ52kaPslXZkKX3NYg0DzwW2fq1qkl4yPkTV9NG
	JeLX91wQpR6lQrz3vMXDrnCliLNkKtWnq8Okgyx7tNL7ddXfNyGhVWnjuj+2jn/DIH6UsVjhkj62k
	UeiUVddixbWLo1tFG81ixedxMJ9iewTRhfjKROweCrrga+kWLpC87FLDDtX/ul89YL1dVB/SFnAYO
	NkREooiTW+288Ff+D6kJV/Mbu9ZN4TszcOt0Z11RI4VlM7HR/XL5InrDevcBXtC2GtRU3YnVPBuUi
	eIEPRX0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVW0h-00000003zj5-23yp;
	Mon, 23 Nov 2026 15:31:15 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVW0g-00000003zia-1V5K
	for linux-phy@lists.infradead.org;
	Mon, 23 Nov 2026 15:31:14 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id C0A07448D6
	for <linux-phy@lists.infradead.org>; Mon, 23 Nov 2026 15:31:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B4561F000D2
	for <linux-phy@lists.infradead.org>; Mon, 23 Nov 2026 15:31:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795447873;
	bh=5Zmzfenaqe/ABUcz0D1nvMINiY0TPaqXO2ZTdLBhjRU=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=OhHvVIeLj+E8jjACmZyxOQsE9LLq2TL2ftClvwugpxsJm1tg23lNcFLQd0SGWplHc
	 TWzlhIBDKuLOhLGZrVly6pVMQ6oWBArpvHDqz5nVxf0svxcdqjylyUoSeyh7z6xyhF
	 SQRLZ3bux7XcahS8tWzmVdaMc/RcYAbrfHXlzehjfQ3//xvRaSpcALvlJPajTkIdRH
	 CSmNEyCORb08sPFGiybftPt3O04fBgs9GzWRqKMudgC6VFdJaNPvO400OdzCN1jt/U
	 c4GOc9ynGtjbcKSXfGhJGFfckZq5SwXYVbgZi5/ymHi48yEFdJXlUmDNBNce7RSqHQ
	 nDPq2gL7TL3RQ==
Received: by mail-dl1-f43.google.com with SMTP id a92af1059eb24-1b3a05f8b5bso4302502c88.1
        for <linux-phy@lists.infradead.org>; Mon, 23 Nov 2026 07:31:13 -0800 (PST)
X-Forwarded-Encrypted: i=1; AL+hErFYLv4WjN/UsuYjKjKbbes2to92rEn0Z9Sup469namjPzSrQFpw6WIl9ABjbC0Du4dL1i8bJGicusA=@lists.infradead.org
X-Gm-Message-State: APuU4Z82Zf9DwnpRTGeAL2P1nhF9yRF/9LpFr8kUzKNVn35PQFB1foM6
	Q/lxRGweQZCIoPLK1fmRwY0KN+vnjSSlhswUvHaQPo32wQw2rAz2jSY3GV24Qe3//E1zSQpkjGk
	IxpNtopiNUaG0GeU0qBVgvGn7kPnEng==
X-Received: by 2002:a05:701b:2810:b0:143:5cb4:30 with SMTP id
 a92af1059eb24-1b5567b3391mr10425170c88.3.1795447872711; Mon, 23 Nov 2026
 07:31:12 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261010115539.9237-1-l.scorcia@gmail.com> <20261010115539.9237-6-l.scorcia@gmail.com>
In-Reply-To: <20261010115539.9237-6-l.scorcia@gmail.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Mon, 23 Nov 2026 15:30:57 +0000
X-Gmail-Original-Message-ID: <CAAOTY_9N7q8vSOM1R-i0JzidoSnVmf7E99KKi458NGU=WTSnCA@mail.gmail.com>
X-Gm-Features: Aa3M54qyF59hFKqLYZAT2WpV4wdT_KYkLyV_ony0INzG1Z9OlyFKt_7T9Q9dDAQ
Message-ID: <CAAOTY_9N7q8vSOM1R-i0JzidoSnVmf7E99KKi458NGU=WTSnCA@mail.gmail.com>
Subject: Re: [PATCH 5/7] drm/mediatek: mtk_hdmi: Set tz_disabled for mt8167
To: Luca Leonardo Scorcia <l.scorcia@gmail.com>
Cc: linux-mediatek@lists.infradead.org, 
	Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Stephen Boyd <sboyd@kernel.org>, 
	Brian Masney <bmasney+clk@redhat.com>, Jerome Brunet <jbrunet+clk@baylibre.com>, 
	Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, Chen-Yu Tsai <wenst@chromium.org>, 
	Fabien Parent <fparent@baylibre.com>, CK Hu <ck.hu@mediatek.com>, 
	chunhui dai <chunhui.dai@mediatek.com>, linux-arm-kernel@lists.infradead.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	dri-devel@lists.freedesktop.org
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

THVjYSBMZW9uYXJkbyBTY29yY2lhIDxsLnNjb3JjaWFAZ21haWwuY29tPiDmlrwgMjAyNuW5tDEw
5pyIMTDml6XpgLHlha0g5LiK5Y2IMTE6NTblr6vpgZPvvJoKPgo+IEp1c3QgbGlrZSBtdDI3MDEs
IE1lZGlhVGVrIG10ODE2NyBkb2VzIG5vdCByZXF1aXJlIGFuIEFSTSBzdXBlcnZpc29yIG1vZGUK
PiBjYWxsIHRvIHRvZ2dsZSBIRE1JIG91dHB1dC4KCkFwcGxpZWQgdG8gbWVkaWF0ZWstZHJtLWZp
eGVzIFsxXSwgdGhhbmtzLgoKWzFdIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51
eC9rZXJuZWwvZ2l0L2NodW5rdWFuZy5odS9saW51eC5naXQvbG9nLz9oPW1lZGlhdGVrLWRybS1m
aXhlcwoKUmVnYXJkcywKQ2h1bi1LdWFuZy4KCj4KPiBGaXhlczogNTExY2Y3ZDEyMzMxICgiZHJt
L21lZGlhdGVrOiBoZG1pOiBBZGQgTVQ4MTY3IGNvbmZpZ3VyYXRpb24iKQo+IFNpZ25lZC1vZmYt
Ynk6IEx1Y2EgTGVvbmFyZG8gU2NvcmNpYSA8bC5zY29yY2lhQGdtYWlsLmNvbT4KPiAtLS0KCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
