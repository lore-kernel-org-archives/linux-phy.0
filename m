Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E631BC79FBF
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 17:06:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O13BMcNLa/rz1i/0WKaFmM/zYu5iJvTENfcYc4oXH6I=; b=zzJcunNbztg5mN
	JaD1uMrZkbFTIaz6NL5IsRBeJJMv74bIRWDL54zl8A/fL5ncyl9R6bf3nrnXkqAHmH8pcV+sgAOUB
	u5BotDXfasGMP1ftd5KWNNdbi3qnPoPx8Zthjh/hIv2ZMsHcJNgkui/e4KGYAo58+7VxwVzDXE1kx
	E0pHQuKlK/SmFD/T9CIgqfz87uCVz2gMJISLWJDlQ66LZcFmgoMucrKlE0C0EGqu7qQLByYm6NVlr
	4emEaB6TRaX5W75ITgdLqDOhO8mM9TaCNBDu4zAwCnCihhzY7ryOVvfzZkv1vx3IgNiJORrF9gt2v
	KtdFkplLLE8GzpiIxBFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Lkt-0000000CQkD-2f1Y;
	Wed, 09 Sep 2026 17:06:39 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Lkr-0000000CQja-2l26;
	Wed, 09 Sep 2026 17:06:37 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id CA377601EF;
	Wed,  9 Sep 2026 17:06:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3355E1F000FF;
	Wed,  9 Sep 2026 17:06:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788973596;
	bh=tEGujVrnh45aRHa6TGYv0vK65BrEMTGrkS+B+KBLQdY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=I05C/y3RGAUYs8rLS+AVasAowNXB0L71hpYAq6erADUXn5hHQkhD+0+xtK7cpCsFX
	 Tlg4o87zyOadC7pg8Zqfvrpa4NWWwtzsEjHVzbJvRHmZ3589sP1HNv4m90tU5iPCVc
	 gB8dR2YKj9bZRHjqnSn44gva1V3e5jNI1wf4Z/VMyno3eylGdGRwsNncBxZXN+//yw
	 15YtQvmp0YemRPV6GYgQ5SjxP5ZGE13+YXTRvm1urVIwEg97CY6xYzzTqRKeDQioUe
	 eP26eJBDjf1MDrLEkTNvR/RTG6pdANv7Nzs/s3fCwGgeyalvTl+kQrZOd757ld1QFn
	 LzyeefD/yNBHQ==
Date: Wed, 9 Sep 2026 19:06:27 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: chunfeng.yun@mediatek.com, vkoul@kernel.org, neil.armstrong@linaro.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com, 
	chunkuang.hu@kernel.org, p.zabel@pengutronix.de, justin.yeh@mediatek.com, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, kernel@collabora.com
Subject: Re: [PATCH v3 04/12] phy: phy-mtk-dp: Migrate register offsets to
 SoC specific pdata
Message-ID: <42rp4gtodsf35nqkabudeskzxxdfsrhvsyug74i536cuyrhjfz@puo46jjfbnf7>
References: <20260707154245.198361-1-angelogioacchino.delregno@collabora.com>
 <20260707154245.198361-5-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260707154245.198361-5-angelogioacchino.delregno@collabora.com>
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

T24gVHVlLCBKdWwgMDcsIDIwMjYgYXQgMDU6NDI6MzdQTSArMDIwMCwgQW5nZWxvR2lvYWNjaGlu
byBEZWwgUmVnbm8gd3JvdGU6Cj4gSW4gcHJlcGFyYXRpb24gZm9yIGFkZGluZyBzdXBwb3J0IGZv
ciBuZXdlciBTb0NzIGFuZCBmb3IgYWRkaW5nCj4gbW9yZSBjYXBhYmlsaXRpZXMgdG8gdGhpcyBk
cml2ZXIgaW4gYW4gZWZmaWNpZW50IG1hbm5lciwgbWlncmF0ZQo+IGFsbCBvZiB0aGUgaGFyZGNv
ZGVkIHJlZ2lzdGVyIG9mZnNldHMgdG8gU29DIHNwZWNpZmljIHBkYXRhIGFuZAo+IGFzc2lnbiB0
aGF0IGZvciBib3RoIERUIGFuZCBwbGF0Zm9ybSBwcm9iaW5nLgo+IAo+IFdoaWxlIGF0IGl0IGFs
c28gY2xlYW51cCB3cml0aW5nIHRoZSBkcml2aW5nIHBhcmFtZXRlcnMgdG8gdGhlIFBIWQo+IGJ5
IGl0ZXJhdGluZyB0aHJvdWdoIGFsbCBsYW5lcyB3aXRoIGEgbG9vcCBpbnN0ZWFkOiBub3RlIHRo
YXQgZm9yCj4gdGhhdCB0byBoYXBwZW4gdGhlIGRlZmF1bHQgMC8xLzIgZHJpdmluZyBwYXJhbWV0
ZXJzIHdlcmUgYWRkZWQsCj4gdGhvc2UgYXJlIHJlYWxseSBqdXN0IHplcm8uCj4gCj4gU2lnbmVk
LW9mZi1ieTogQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8gPGFuZ2Vsb2dpb2FjY2hpbm8uZGVs
cmVnbm9AY29sbGFib3JhLmNvbT4KClJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0g
PG1hbml2YW5uYW4uc2FkaGFzaXZhbUBvc3MucXVhbGNvbW0uY29tPgoKLSBNYW5pCgotLSAK4K6u
4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
