Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2778C606A33A
	for <linux-phy@archiver.kernel.org>; Mon, 23 Nov 2026 15:36:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=gUm4F3H1;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=XfPB5P93
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=kqOcUD/TaCy7x8QuG+CiuVKckRqUK+vBGtxg63g6nR4=; b=gUm4F3H1BuVABPOYk9sXiV/Iwn
	N/fB5tEX5IavqAzvh82L1YPe+EvwbgxmtZaxudto8Ap2zbbynNkTy+hCzPvCIL4hGuCg0Zi5KYCsW
	q+1MjOOB2FVZ6IQAhpgsTQwk28gMkhvkxNVDzdohH2JYPqsF2BkIzJa4Yk87mL5JqfsKOroL4rDzz
	2FogkmUH9YJpHSIBiQD9RqiymLGfSmT7gBVUcxFjIg61ImKjAmpEm7ELvvy5zdqSF4d6Cws5i5Q2d
	xHq+K5VxfCZo5g073U8wTOxZ52pSK4//IEmBA4g0R2+PurNbLKue0JeH3sb6FT9jIstwml62MnOA0
	GzcF7vOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVW5y-000000041hM-3Wpu;
	Mon, 23 Nov 2026 15:36:42 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVW5O-000000041Be-3Cv1
	for linux-phy@lists.infradead.org;
	Mon, 23 Nov 2026 15:36:06 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 72F79448CB
	for <linux-phy@lists.infradead.org>; Mon, 23 Nov 2026 15:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 28F0A1F00AD4
	for <linux-phy@lists.infradead.org>; Mon, 23 Nov 2026 15:36:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795448166;
	bh=UXpd3Nh2t45ncSVSh4QPOrYvcJiFSBL00rNMi7DJgJk=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=XfPB5P93HP4vbKYlZWXIzvsr39OBy4OsyaLsBLvVeoS9AAZ6PTkbcgp0qeWPSkkrV
	 wxzI/QYnUkCNN+zR1cYRChx0Twos7wOKJ3HYbovl51vv3hQp2J/sgIQy95EJDqeG1w
	 eEDo644Q+/um0iNAjY0VsuG9sJTu9mcn+f1HdKCYRH2Mi7+1jsBXqUTkQBpWHC5Xt2
	 PFB70kEXrhiVblbGVZu5igGcOFMWyN8HBX9vsokuGGg1aOiIYOqzOIXjR2jRtIV3RH
	 7PhUC+AYpUv9Br5airvjFVcL/Qo638f5xSffOhjyZ6wWon88bDx9D7NvKQPwYtYpFa
	 fArKNB97Aa3fw==
Received: by mail-dy1-f181.google.com with SMTP id 5a478bee46e88-38190551625so7133574eec.1
        for <linux-phy@lists.infradead.org>; Mon, 23 Nov 2026 07:36:06 -0800 (PST)
X-Forwarded-Encrypted: i=1; AL+hErHaUhhD7D/YNyvE0zgDZEXvuH00OZBBNdK6ghtjwVsXfxfa86MrLonVzHZHLljPmO85telJ46Husrc=@lists.infradead.org
X-Gm-Message-State: APuU4Z+Lx2ARw3fWIrKDh/Yb8+N7TAYokWCDnMPSKb8B2rCnoxqdUOWk
	LZq/rv9X3ABxwqOfgaaslaIm4hwh7uUoFAyayhrq7xC/shf0CkbrOk4v4aFoTtIM562CBjQjEtj
	rYNbS39y0O2GmhO2xBq4mwAHL2GdjTw==
X-Received: by 2002:a05:701b:2514:b0:16a:c6f2:60c2 with SMTP id
 a92af1059eb24-1b55689fcb2mr10673901c88.12.1795448165577; Mon, 23 Nov 2026
 07:36:05 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261010115539.9237-1-l.scorcia@gmail.com> <20261010115539.9237-7-l.scorcia@gmail.com>
In-Reply-To: <20261010115539.9237-7-l.scorcia@gmail.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Mon, 23 Nov 2026 15:35:53 +0000
X-Gmail-Original-Message-ID: <CAAOTY__jNESf=ZofZWN8SxBMkzeRrXEJv=J0QE4guC71hvBKGw@mail.gmail.com>
X-Gm-Features: Aa3M54qi2_k27JpUO0fxBJ7jBDU5evrvHmSEsv1tBfznyzC71R2OzkCm3lxw8do
Message-ID: <CAAOTY__jNESf=ZofZWN8SxBMkzeRrXEJv=J0QE4guC71hvBKGw@mail.gmail.com>
Subject: Re: [PATCH 6/7] drm/mediatek: mtk_hdmi: Improve the secure output bit toggle
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
	Fabien Parent <fparent@baylibre.com>, chunhui dai <chunhui.dai@mediatek.com>, 
	CK Hu <ck.hu@mediatek.com>, linux-arm-kernel@lists.infradead.org, 
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
5pyIMTDml6XpgLHlha0g5LiK5Y2IMTE6NTblr6vpgZPvvJoKPgo+IFRoZSBzZWN1cmUgb3V0cHV0
IGNvbnRyb2wgYml0IHRvZ2dsZSBmb3IgbXQyNzAxL210ODE2NyBjdXJyZW50bHkgc2V0cwo+IGJp
dCAwIChERUVQX0NPTE9SX0VOKSwgMS0yIChERUVQX0NPTE9SX01PREUpLCAxNSAoSERNSV9QU0VD
VVJfRU4pIGFuZCAzMQo+IChIRE1JX1BDTEtfRlJFRV9SVU5fRU4pIGluIHRoZSBzYW1lIG9wZXJh
dGlvbiwgYnV0IG9ubHkgYml0IDE1IGlzIGFjdHVhbGx5Cj4gY29udHJvbGxpbmcgdGhlIEhETUlf
UFNFQ1VSX0VOIGJpdCwgdGhlIHJlc3Qgb2YgdGhlbSBhcmUgYWxyZWFkeSBiZWluZyBzZXQKPiBp
biBzZXBhcmF0ZSBvcGVyYXRpb25zIGxhdGVyLiBBZGQgYSBkZWZpbmUgZm9yIGJpdCAxNSBhbmQg
Y2xlYW4gdXAgdGhlIGJpdAo+IHVwZGF0ZSBvcGVyYXRpb24uCgpBcHBsaWVkIHRvIG1lZGlhdGVr
LWRybS1maXhlcyBbMV0sIHRoYW5rcy4KClsxXSBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9z
Y20vbGludXgva2VybmVsL2dpdC9jaHVua3VhbmcuaHUvbGludXguZ2l0L2xvZy8/aD1tZWRpYXRl
ay1kcm0tZml4ZXMKClJlZ2FyZHMsCkNodW4tS3VhbmcuCgo+Cj4gRml4ZXM6IDBmYzcyMWIyOTY4
ZSAoImRybS9tZWRpYXRlazogYWRkIGhkbWkgZHJpdmVyIGZvciBNVDI3MDEgYW5kIE1UNzYyMyIp
Cj4gU2lnbmVkLW9mZi1ieTogTHVjYSBMZW9uYXJkbyBTY29yY2lhIDxsLnNjb3JjaWFAZ21haWwu
Y29tPgo+IC0tLQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
