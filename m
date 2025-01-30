Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC3E1C0218A
	for <linux-phy@archiver.kernel.org>; Thu, 30 Jan 2025 20:20:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=spKlILBPjh9KuvAr8j9nPA7KphEnkYWwJK+Qh9QVR14=; b=1TT6AuyfGbG1ja
	cZSBxZZ6ldwiRvgF+KxLB5g84NEB7qCEvKWTrlRZ754u2bGPROsCkfdyRE3aQxa+CTZLfKcwBiPtD
	fXVkQ+ui/nAvAXO+4xuW49yKS6/2qFM8VH9ewtGOwkULQx1FkMYAbNivy8J7jgEYvzfCvQVkDPkuM
	KqD4if692jOWcSZzHOUvHULBEyJzwZh761tT4bjcpZiZK0dRKWAxJ9L1gD+I3h956m5fTe++D4pLd
	2zgR1oGEEnywpfkNK664dkXhFpN8ki/zkw+6j3yTaeHAkgVzLK/6wTfuYSVBN4wHXA8IW6yFVpIG9
	4aVhclCbruA7kir01IFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdb1h-00000009YUr-2Bzs;
	Thu, 30 Jan 2025 20:20:37 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdb1e-00000009YUU-3WSL
	for linux-phy@lists.infradead.org;
	Thu, 30 Jan 2025 20:20:36 +0000
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-2166022c5caso18985995ad.2
        for <linux-phy@lists.infradead.org>; Thu, 30 Jan 2025 12:20:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738268434; x=1738873234; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ClwtUPqUK9mSoT/sTkcB+DgzCNDLW9NdfFhJAOH8qy8=;
        b=PBAhB6z/MFnLbM5SCoRG0+VffltcbAoBrn0vom2xdh/vt4QPv9kDfwNbbJeP2Dpkku
         pCdjs+Moux+teTymeityIwXCISTqaVyp/HzKXXGV/629hv8+o2vmAwrFvn20NiGm3/gC
         02Kd4uHAFppLb50kwMR63PbDSbJqYZqWqhkALrXyKaSht6tSGllI9rRX9Eh/Wv7uiJYm
         7g+4XGzO8KDNbZToMzGBLTp6iT0quRcLqTc0blM49EYGKt+bhiQqKXAPTq3aPh7+BUIx
         CR0hEFFcXHX75iE6yzVgWgLy3mMqRY/HTYmVPbNKFvIKwKoiYZhYWvsJ6/pt8WTojuX9
         7bYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738268434; x=1738873234;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ClwtUPqUK9mSoT/sTkcB+DgzCNDLW9NdfFhJAOH8qy8=;
        b=t3B3N+pGZOZUOulbfjxobWycWl3LrYvccVm0EihK1KloIYSr1FaI5JX7hwx+f1tL7v
         WWwTK7Vlqq/Fr+ncxCla9tMePe858aQG3lZDqytbfSqzmQLSOxnh5RhD1baknuoN6f80
         Ev7FVgaqCytr7Dhk46g7n68lgCikHbhusYywgs+L8hBSSRJ1S1BoFSILbcIzo6S8/4Lq
         /uxvVwn4PrliYkFrNAKtx7yMSvh0rwojli7BMCJtjObZiSZ+/4em0AkKjxoyOrf7P+lj
         38jlZBlC51KnrnUlId+gMce7x2UK06GNt4rP8vEk9/OG1Fz+qDNwg6E4Lk0SeGvhna69
         +NqQ==
X-Forwarded-Encrypted: i=1; AJvYcCXI8EG46K0R6wCVHUI9j1pxywotTfDaBfv4XpPCAKYs5YDSjA/1BevO2v9nJqawDETdFuZmobWwwcQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YwlF4EMhI/B8BIRV73ztE6oYGVsnRxFWV1HvTriIzOVF4H8Ko5f
	kx/xiJTz9eZWaC1i6wgVI7GnGY6FCUlv7Fudv/u899yb8UbcjccQ4wbMXoNYcIWLtdmMn2sMOfg
	OsiqpVpErEEq9cp+DlK4lnedUCLSTmQ==
X-Gm-Gg: ASbGnctzKDAL2rM5DEW2ueGdj4GmCKdU2eOczPeg+hJrFH218YrU7Vz/wP7TxHbgPYn
	wY8zacOhrEkkJUeNwzKBcO/SbQFIP82elgPMrqpIFW/O0X1AwDdVF78nm08BVliyiVNIu/+Ox
X-Google-Smtp-Source: AGHT+IFO6MMzXBrOGKn80G2XfMMuDquQJiiKg5+z19PUqvvjVTQsOFEcthp4PY5JwLDacbszHCoPQNvHsyHTGtORZ78=
X-Received: by 2002:a05:6a21:4c11:b0:1db:f68a:d943 with SMTP id
 adf61e73a8af0-1ed7a5f8e53mr12606037637.17.1738268433490; Thu, 30 Jan 2025
 12:20:33 -0800 (PST)
MIME-Version: 1.0
References: <CA+G9fYsHGrgZsEEVvP0XMcAhLyCYnrCPgZJ1puT6cfQBCGUB9g@mail.gmail.com>
 <20250130200112.6ba7316e@pumpkin>
In-Reply-To: <20250130200112.6ba7316e@pumpkin>
From: Adam Ford <aford173@gmail.com>
Date: Thu, 30 Jan 2025 14:20:21 -0600
X-Gm-Features: AWEUYZns1cg1rhB0SZf6MqVVUTtFBKQq2h0TBzHzypdynHuEzFz6dZCga_Xf-eA
Message-ID: <CAHCN7xJosvgN3R6xJ0E7CB_-0gMqX_qBFPSA1q30_hQ0ftg3Qw@mail.gmail.com>
Subject: Re: linus: arm64: error: call to '__compiletime_assert_536' declared
 with attribute error: FIELD_PREP: value too large for the field
To: David Laight <david.laight.linux@gmail.com>
Cc: Naresh Kamboju <naresh.kamboju@linaro.org>, linux-phy@lists.infradead.org, 
	open list <linux-kernel@vger.kernel.org>, lkft-triage@lists.linaro.org, 
	Linux Regressions <regressions@lists.linux.dev>, David Laight <david.laight@aculab.com>, 
	Vinod Koul <vkoul@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Dan Carpenter <dan.carpenter@linaro.org>, Anders Roxell <anders.roxell@linaro.org>, 
	Frieder Schrempf <frieder.schrempf@kontron.de>, Pei Xiao <xiaopei01@kylinos.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250130_122034_883856_67AAFB2C 
X-CRM114-Status: GOOD (  18.49  )
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

T24gVGh1LCBKYW4gMzAsIDIwMjUgYXQgMjowMeKAr1BNIERhdmlkIExhaWdodAo8ZGF2aWQubGFp
Z2h0LmxpbnV4QGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBPbiBUaHUsIDMwIEphbiAyMDI1IDE1OjIy
OjA2ICswNTMwCj4gTmFyZXNoIEthbWJvanUgPG5hcmVzaC5rYW1ib2p1QGxpbmFyby5vcmc+IHdy
b3RlOgo+Cj4gPiBUaGUgYXJtNjQgYnVpbGQgZmFpbGVkIHdpdGggZGVmY29uZmlnIHdpdGggZ2Nj
LTggdG9vbGNoYWluIGZhaWxlZCBkdWUgdG8KPiA+IGZvbGxvd2luZyBidWlsZCB3YXJuaW5ncyAv
IGVycm9ycyBvbiB0aGUgbWFpbmxpbmUgbGludXggbWFzdGVyIGJyYW5jaC4KPiA+IEJ1dCB0aGUg
Z2NjLTEzIGJ1aWxkcyBwYXNzLgo+ID4KPiA+IEZpcnN0IHNlZW4gb24gdjYuMTMtOTQ4NS1nNzJk
ZWRhMGFiZWU2IG9uIEphbi4gMzAsIDIwMjUKPiA+IEdvb2Q6ICB2Ni4xMy05MzM4LWcwNWRiYWY4
ZGQ4YmYgb24gSmFuLiAyOSwgMjAyNQo+ID4gQmFkOiAgdjYuMTMtOTQ4NS1nNzJkZWRhMGFiZWU2
IG9uIEphbi4gMzAsIDIwMjUKPiA+Cj4gPiBhcm02NDoKPiA+ICAgYnVpbGQ6Cj4gPiAgICAgKiBn
Y2MtOC1pMzg2X2RlZmNvbmZpZwo+ID4KPiA+IFJlcG9ydGVkLWJ5OiBMaW51eCBLZXJuZWwgRnVu
Y3Rpb25hbCBUZXN0aW5nCj4gPgo+ID4gQnVpbGQgbG9nOgo+ID4gLS0tCj4gPiBha2UgLS1zaWxl
bnQgLS1rZWVwLWdvaW5nIC0tam9icz04Cj4gPiBPPS9ob21lL3R1eGJ1aWxkLy5jYWNoZS90dXht
YWtlL2J1aWxkcy8xL2J1aWxkIEFSQ0g9YXJtNjQKPiA+IENST1NTX0NPTVBJTEU9YWFyY2g2NC1s
aW51eC1nbnUtCj4gPiBDUk9TU19DT01QSUxFX0NPTVBBVD1hcm0tbGludXgtZ251ZWFiaWhmLSAn
Q0M9c2NjYWNoZQo+ID4gYWFyY2g2NC1saW51eC1nbnUtZ2NjJyAnSE9TVENDPXNjY2FjaGUgZ2Nj
Jwo+ID4gSW4gZmlsZSBpbmNsdWRlZCBmcm9tIDxjb21tYW5kLWxpbmU+Ogo+ID4gSW4gZnVuY3Rp
b24gJ2ZzbF9zYW1zdW5nX2hkbWlfcGh5X2NvbmZpZ3VyZV9wbGxfbG9ja19kZXQuaXNyYS4xMCcs
Cj4gPiAgICAgaW5saW5lZCBmcm9tICdmc2xfc2Ftc3VuZ19oZG1pX3BoeV9jb25maWd1cmUnIGF0
Cj4gPiBkcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1zYW1zdW5nLWhkbWkuYzo0Njk6MjoK
PiA+IGluY2x1ZGUvbGludXgvY29tcGlsZXJfdHlwZXMuaDo1NDI6Mzg6IGVycm9yOiBjYWxsIHRv
Cj4gPiAnX19jb21waWxldGltZV9hc3NlcnRfNTM2JyBkZWNsYXJlZCB3aXRoIGF0dHJpYnV0ZSBl
cnJvcjogRklFTERfUFJFUDoKPiA+IHZhbHVlIHRvbyBsYXJnZSBmb3IgdGhlIGZpZWxkCj4gLi4u
Cj4gPiBkcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1zYW1zdW5nLWhkbWkuYzozNDQ6OTog
bm90ZTogaW4gZXhwYW5zaW9uCj4gPiBvZiBtYWNybyAnRklFTERfUFJFUCcKPiA+ICAgd3JpdGVi
KEZJRUxEX1BSRVAoUkVHMTJfQ0tfRElWX01BU0ssIGRpdiksIHBoeS0+cmVncyArIFBIWV9SRUco
MTIpKTsKPiA+ICAgICAgICAgIF5+fn5+fn5+fn4KPgo+IFllcC4uLgo+IEJyb2tlbiBieSBkNTY3
Njc5ZjJiNmE4Cj4KPiBQcmVjZWRlZCBieToKPiAgICAgICAgIC8qIEZpbmQgaW50X3BsbGNsayBz
cGVlZCAqLwo+ICAgICAgICAgZm9yIChkaXYgPSAwOyBkaXYgPCA0OyBkaXYrKykgewo+ICAgICAg
ICAgICAgICAgICBpbnRfcGxsY2xrID0gcGNsayAvICgxIDw8IGRpdik7Cj4gICAgICAgICAgICAg
ICAgIGlmIChpbnRfcGxsY2xrIDwgKDUwICogTUhaKSkKPiAgICAgICAgICAgICAgICAgICAgICAg
ICBicmVhazsKPiAgICAgICAgIH0KPiB3aXRoOgo+ICNkZWZpbmUgUkVHMTJfQ0tfRElWX01BU0sg
ICAgICAgR0VOTUFTSyg1LCA0KQo+Cj4gVGhlIGNvbXBpbGVyIGhhcyBvcHRpbWlzZWQgKHBlc3Np
bWlzZWQ/KSB0aGUgY29kZSBzb21ld2hhdC4KPiBJZiBwY2xrIGlzIHZlcnkgbGFyZ2UgdGhlIGxv
b3AgZG9lc24ndCAnYnJlYWsnIHNvIGRpdiA9PSA0LgoKSSBiZWxpZXZlIGEgZml4IHdhcyBzdWJt
aXR0ZWQ6Cmh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC1waHkvcGF0
Y2gvNWI5YTVmNzY1ZjA3NTI2MzQ5OGY5YTdiNjJiMGIxMDMwZDg3YjZiYS4xNzM2NDc2MjEwLmdp
dC54aWFvcGVpMDFAa3lsaW5vcy5jbi8KCkl0IGFwcGVhcnMgdG8gYmUgd2FpdGluZyBmb3IgYXBw
cm92YWwgYW5kL29yIG1lcmdlLiAgSWYgc29tZW9uZSB3YW50cwp0byB0ZXN0IGl0LiAgSSBhZGRl
ZCBQZWksdGhlIGF1dGhvciBvZiB0aGUgZml4LCB0byB0aGUgQ0MgaW4gdGhpcwp0aHJlYWQuCgph
ZGFtCgoKYWRhbQoKPiBJdCB0aGVuIGRvZXMgRklFTERfUFJFUChHRU5NQVNLKDUsIDQpLCA0KSAt
IHdoaWNoIGlzIGFuIGVycm9yLgo+Cj4gICAgICAgICBEYXZpZAo+Cj4KPgoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
