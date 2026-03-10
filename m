Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF88AFD4F16
	for <linux-phy@archiver.kernel.org>; Tue, 10 Mar 2026 18:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3VIopvJiLbWE/Z+29yeS3b7Ymwt2BmY7zrXbh3vsDY8=; b=OtPNt1PDWbQ4Z/
	V9w6q/lharZa+Rw9WrtBz5ljlZPFXUPnzXde/jBpBAK6dhGIPq4p712Tqb92GvE0jsEbtNf9wLSCG
	GDwwppetqLTum0SCiabRVAsZ2ShM5i81bT1Ci4F914JlIJF+rvJaKWrAh3mq43AgD44ZXSjkZ3kad
	wnJKOMXFajglLbNO/8SGE4EISsqq3+vxvVuLo+eopnau7bupOp2XvCcXxDmuugy54oDvtCgEh/gJa
	SCIn2GiIzGvXgL2kLAi3QJ/oCJIT6E1syrqm6V+lhbhya/4hRXSK9qwFzgSrU7U+Pfg0S11Zj9DBk
	Y3odXH7kgk9/awWuj5UQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w01ht-0000000A4Hd-27xQ;
	Tue, 10 Mar 2026 18:21:25 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w01hr-0000000A4H2-0YkI
	for linux-phy@lists.infradead.org;
	Tue, 10 Mar 2026 18:21:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 65C8B41A62
	for <linux-phy@lists.infradead.org>; Tue, 10 Mar 2026 18:21:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40702C19423
	for <linux-phy@lists.infradead.org>; Tue, 10 Mar 2026 18:21:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773166882;
	bh=RYHwf92flHnUfSHhGWu39REnpB8D3KhXnDbPehoNQKQ=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=VLp7+7J9llrwvCmETGQRw3htvlndh6m1nt/RRmA9Uxn1bhz+K/B+q6H0nosrrJG24
	 ualDb+AMHRYw11phgtZL8RQve4Fni7wZOk59ZLka5e+KPtlbhUxjNSzE/u7nYiB2MG
	 4bV3VcillBEcNpXDxDtrt3iOrWD9Xz8KTLy0tBBoJR7VPRwrGT4Bipusr7CoKRL2ml
	 l7zOALrl2J90A/S7t+sxsILHs96E/Odocww2PrRZOWkgKyzHu0R0BCxGsyhR7v+CIf
	 Ky6UMX9xuNxOpFUg5ny0u2vMeWHrFW3AaDx6+eRfY/UL0WbUJETU9XHUwMA1DbqaxY
	 zFxqVd4KpzOUg==
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-6611d20c026so10002108a12.1
        for <linux-phy@lists.infradead.org>; Tue, 10 Mar 2026 11:21:22 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCX+k5zx1rIKTeDSOyifG72TueDwhSQEON2Kcxo/7NRwV0cwM+Y6DcbHCHo7pHTryvTXh1Cc9LvJrOI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz6+QEk+c/Q9i2IF3qyHh5DScR23tgeLvY+9gCHOb3vIvvKV1DC
	9tjNAqVIM0rHF8qYuhiq3VB8zM5nGLYaXnAMFPjUcW3lqi6lgDuy9oINkNT3J3W6/CP6i9ALGYs
	6MJof+78jO8t07vZmqV66jTj+LpsFdQ==
X-Received: by 2002:a05:6402:a290:20b0:662:aa89:2ffd with SMTP id
 4fb4d7f45d1cf-662aa89325dmr2220648a12.18.1773166880808; Tue, 10 Mar 2026
 11:21:20 -0700 (PDT)
MIME-Version: 1.0
References: <20260306-mt8196-ufs-v9-0-55b073f7a830@collabora.com>
 <4089450.ElGaqSPkdT@workhorse> <yq14imrwp3z.fsf@ca-mkp.ca.oracle.com> <5973984.DvuYhMxLoT@workhorse>
In-Reply-To: <5973984.DvuYhMxLoT@workhorse>
From: Rob Herring <robh@kernel.org>
Date: Tue, 10 Mar 2026 13:21:09 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKGxrNuaTb9+n3ZYjAdY=UHC6z-neXK-aieTXeROCN5og@mail.gmail.com>
X-Gm-Features: AaiRm53EXEYwn_27B-gILkkR9Yt_6ubl80Y5DTYqzcMmOl6Xp1DwezMjgTnFj3c
Message-ID: <CAL_JsqKGxrNuaTb9+n3ZYjAdY=UHC6z-neXK-aieTXeROCN5og@mail.gmail.com>
Subject: Re: [PATCH v9 03/23] dt-bindings: ufs: mediatek,ufs: Add mt8196 variant
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: "Martin K. Petersen" <martin.petersen@oracle.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Peter Wang <peter.wang@mediatek.com>, 
	Stanley Jhu <chu.stanley@gmail.com>, 
	"James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Chaotian Jing <Chaotian.Jing@mediatek.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, 
	Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>, kernel@collabora.com, 
	linux-scsi@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org, 
	Conor Dooley <conor.dooley@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_112123_222916_1987022F 
X-CRM114-Status: GOOD (  22.88  )
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

T24gTW9uLCBNYXIgOSwgMjAyNiBhdCA1OjA04oCvQU0gTmljb2xhcyBGcmF0dGFyb2xpCjxuaWNv
bGFzLmZyYXR0YXJvbGlAY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4KPiBPbiBTYXR1cmRheSwgNyBN
YXJjaCAyMDI2IDE5OjAxOjE3IENlbnRyYWwgRXVyb3BlYW4gU3RhbmRhcmQgVGltZSBNYXJ0aW4g
Sy4gUGV0ZXJzZW4gd3JvdGU6Cj4gPgo+ID4gTmljb2xhcywKPiA+Cj4gPiA+PiAidWZzIiBpcyBy
ZWR1bmRhbnQgYXMgYWxsIHRoZSBjbG9ja3MgYXJlIGZvciBVRlMuIFNhbWUgY29tbWVudCBvbiBw
cmlvcgo+ID4gPj4gcGF0Y2guCj4gPiA+Cj4gPiA+IElzIHRoaXMgbmFtaW5nIGEgYmlnIGVub3Vn
aCBjb25jZXJuIHRvIGJsb2NrIHRoaXMgc2VyaWVzIHdpdGggdHdvCj4gPiA+IGV4cGxpY2l0IGFj
a3Mgb24gdGhpcyBwYXRjaCB0aGF0IGZpeGVzIGEgd2hvbGx5IGJyb2tlbiBhbmQgdXNlbGVzcwo+
ID4gPiBiaW5kaW5nPwo+ID4KPiA+IEl0IGlzIGlmIGl0IGNvbWVzIGZyb20gb25lIG9mIHRoZSBE
VCBtYWludGFpbmVycy4KPiA+Cj4gPiA+IEkgYW0gdHJ5aW5nIHRvIHB1dCBvdXQgdGhpcyBkdW1w
c3RlciBmaXJlIG9mIGEgZG93bnN0cmVhbSB0dXJkIHRoYXQKPiA+ID4gbWFkZSBpdHMgd2F5IGlu
dG8gbWFpbmxpbmUgYXMgdGhlIHJldmlldyBwcm9jZXNzIGhhcyBiZWVuIGNvbXBsZXRlbHkKPiA+
ID4gc3VidmVydGVkLCBhbmQgaXMgb25seSBnZXR0aW5nIHdvcnNlIHdpdGggZWFjaCBwYXNzaW5n
IG1vbnRoCj4gPgo+ID4gVGhpcyBoYXMgdG8gc3RvcC4gUGxlYXNlIHJlYWQgRG9jdW1lbnRhdGlv
bi9wcm9jZXNzL2NvZGUtb2YtY29uZHVjdC5yc3QuCgpJIGhhdmUgbGl0dGxlIGRvdWJ0IHRoYXQg
dGhhdCBpcyBhbiBhY2N1cmF0ZSBkZXNjcmlwdGlvbiBvZgpkb3duc3RyZWFtLiBBbmQgaWYgcHJv
cGVydGllcyBhcmUgZ2V0dGluZyBhZGRlZCB3aXRob3V0IGJpbmRpbmdzLCB0aGVuCnRoYXQgaXMg
Y2VydGFpbmx5IGEgcHJvYmxlbSB0aGF0IHNob3VsZCBiZSBjb21wbGFpbmVkIGFib3V0LgoKPiA+
Cj4gPgo+Cj4gSSBhcG9sb2dpc2UgZm9yIG15IHRvbmUsIGl0J3MgbXkgZnJ1c3RyYXRpb24gZ2V0
dGluZyB0aGUgYmV0dGVyIG9mIG1lLgo+Cj4gSSdsbCBiZSBoYW5kaW5nIG9mZiB0aGlzIHNlcmll
cyB0byBzb21lb25lIGVsc2UsIHNvIHlvdSB3b24ndCBoYXZlIHRvCj4gZGVhbCB3aXRoIG1lIGFu
eW1vcmUuCj4KPiBJIGRvIGFzayBob3dldmVyIHRoYXQgeW91IGRvbid0IGFwcGx5IHBhdGNoZXMg
ZnJvbSBNZWRpYVRlayBibGluZGx5Owo+IGlmIHRoZXJlJ3MgY29kZSB0byByZWFkIGFuIE9GIHBy
b3BlcnR5LCBhbmQgdGhhdCBPRiBwcm9wZXJ0eSBpcyBub3QKPiBpbiB0aGUgYmluZGluZywgdGhl
biB0aGUgcGF0Y2ggc2hvdWxkIGJlIHJlamVjdGVkLCBldmVuIGlmIHRoZXJlJ3MgYW4KPiBBY2sg
ZnJvbSB0aGUgTWVkaWFUZWsgbWFpbnRhaW5lci4KClRoZXJlJ3MgZnVuY3Rpb25hbGl0eSB0byBm
aW5kIHVuZG9jdW1lbnRlZCBjb21wYXRpYmxlcyBpbiBrZXJuZWwgY29kZQoobWFrZSBkdF9jb21w
YXRpYmxlX2NoZWNrKSwgYnV0IG5vdCBwcm9wZXJ0aWVzLiBTb3VuZHMgbGlrZSBJIG5lZWQgdG8K
YWRkIHRoYXQuCgpSb2IKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
