Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CE10EA8112
	for <linux-phy@archiver.kernel.org>; Tue, 10 Feb 2026 13:34:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sGsFb22EWIdnT5/VI6axDUv6qrsCc5jb2R2sBGQQqKw=; b=WP1izI2ljB3nXr
	w3gGSu+l3ohbvWRnyIHT0d/z3sCoPqGbvawCEJi1gcDeaV5Q5C+nJTtsavqnJJsDffxeo9We1VnCz
	VJQ91ucAUdg4REbbc321S/CKb0Pq2UmxLFdoFOVGd5O5tuUVelyaCcwmRntj4MB/nE5f4JkenpcG3
	urR9Qi9Td5n0jAvrWEMuLGYoGmFHG7dUiFtFqIzVzjVZt/Hsr8Cli2nrPaZPJQHH0+cnpVwXOS4gl
	o59at6Rb7NumnlnbAeAFD71oJnDUuMfedmpJNmoJeWlbgncUK6EgEYmikXZJnCLMjuFAHZ7HqUG96
	1D3x9/056+f2Nr49szKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpntF-0000000Gznn-27hk;
	Tue, 10 Feb 2026 13:34:53 +0000
Received: from mail-yx1-xb12e.google.com ([2607:f8b0:4864:20::b12e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpntD-0000000GznR-1Msb
	for linux-phy@lists.infradead.org;
	Tue, 10 Feb 2026 13:34:52 +0000
Received: by mail-yx1-xb12e.google.com with SMTP id 956f58d0204a3-64ad46a44easo3349936d50.0
        for <linux-phy@lists.infradead.org>; Tue, 10 Feb 2026 05:34:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770730489; cv=none;
        d=google.com; s=arc-20240605;
        b=gdlMgOULSLV+gRzLmjyCVXDNAKzHRm+PzTJPuK5RVMGgXgxgSsP49IupZ9wIt2pOr2
         01uUZMlGidLHtMur71/5HGa+Hd5lSEZD0Q9XNbiKk9jJDR9oW9R1UcFskJLxdteXcffH
         RKcu9+8kwpKrbKrxdHyDlwPwy/6HiDIkjpErEDtE0qpg02DI87NWXQJcr4gbEkLj/Fws
         T1OBdJ1MCcnJPmHv0ThzuBKOlNvV8vt5ov6YGSx5Qc30e8DudsVBvuvTBMw0/lKSEd3M
         b9VPg6nbggwFC+y9C2GMyXu56CKctifPGEwf6cf1JF/C1AUkoFOIHiXRs0sDrOzQ4oNn
         ruMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Awy7xGMtWG+lB2DiLFib9mc4+as+WZ2R0n66soYWbRE=;
        fh=keuu2WDoGCY/A9baY5eX4hOhCMaJrokxDYnBUd9hOIQ=;
        b=SnzYVPKhkYhgEL7RHQkrnq5HA535cRwnvLq9FcWHKvSTJjycNfuRj7mA5T2ql9eJ+p
         dYseAd/q/VHo4YEOsIGdiml7h+MTSg8WC68oW/ax+TK18fdhAFI+Ew0yk8VNmePGwc7D
         0tseHd3s9MycnmS4vvD6UZdf3xAtzQiHp4vHZiuepYAU0OhTbf3F9H2Tu+4diRR80PA3
         RjII6SLe+O5T+qadZfki4WVgpNT6mzxNZYAmSNKMECs0SJmrwlth0SHeSxZSlxGZegNk
         /BvzSl0ueDwy4gqFj1FRwAs76YBGmlV6KaC0DCLcaUkhkjnskR+oOMUq5pfZiWil59++
         onHg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770730489; x=1771335289; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Awy7xGMtWG+lB2DiLFib9mc4+as+WZ2R0n66soYWbRE=;
        b=rsYg1BOswseTZxuYqyi/5rJWmvbdXndfGIYn6Ztq8V20TtWjG5xd9NTIsl1+cbsZlf
         sGtv2RasrBAmsZONuyGUn/kde0hni0qw4BXrsE4k+n1bDj17E83iWRSrxxNqoM0BxhXO
         21q3W54CvLzDPtdDnMvVZS8Wfw5xWoALYfIIp5bQZL02RootcE0sWVarTU3D01TdqYNY
         E+Xi7sOJ97Vblg+Ht//JbRwAlgKfkEodweXMoDsthVF6/HafEpKFwq5AEWU/e1ai5fqf
         7kVKHAIWNsyiNQFUs0xBOCVuDQclSS8TjfYaXk5IsLGsgbHfCk/uIp8dFqLpMF4vA5cV
         btsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770730489; x=1771335289;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Awy7xGMtWG+lB2DiLFib9mc4+as+WZ2R0n66soYWbRE=;
        b=Fe7NYAw3eJjNf+qE/hVYhXz8NQYULRwH+ZsWLQkVnYfKWL5hy5k0iG2w1OPUIcuD17
         4XaKIcJxRJsgGLYZMOFaXycjGrpOx4ziJR3/DZLSFVyOrroBwb/4NlpGyi5KQZUaW9C0
         WQBSJUTz0Rwyy9dTtxsQz3BVK7kXkZE0LaS+N1QKVsvRlMRzFHUWLs9Vrf95HRgz2SyF
         gTJj0J0Dgdhk3KKI9VmdX0hMhp/kB9V4WnTTXAo0/A5xHk6RFlbfT/VEeD+06rX72lCE
         xgJwJzYjc/yZV3c/EvlX8MN/jQSBSQbf1qiEXD5f65EvhalZHBFOMxfAzO3NMuAyd3iW
         yPLA==
X-Forwarded-Encrypted: i=1; AJvYcCUZQCM1W6eGfjCfgUHv5eVhVtoS1aw41ifQdix9Yib/GF8sqEy+bUR/tMTmPI7hvVUN8/J8bLAd2/k=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw06hEN4T2GVMPhyUHlYpcnqlEGRcV3bCOKhA7uyUG5cHywiAUk
	9cc5b2XWQSayuFGRFJcXms/pzuhmrLR7mLvg60vD9aZm6JO6kRg/B+X2svF+si3NUWQKM0/AlTX
	Xg+vmbI3pJ88QK5v/B8jGK8n7eAg3hsHGLr9E2d5I2Q==
X-Gm-Gg: AZuq6aLhda7pRjorN28OkDvhjZxuFV9aL6A8y7FWWA+Yk/7kZiIQN9yWh4nih7CbPvV
	n5B6mUb7a1wiQzbmKUXN9lQsu2tsMnBS5+KpcenhsxGxk/wPmoQHJJmcHAOIlA3CYkd19w/EnPA
	1Wf2A1ca4jMzHDuzOL+ndp+ARFRZKnhI9zoke2yVX+e+pBW6w3P6TZXEMMh7Ti0sa0x509CTYVe
	FR9jvEqq07ANiN80MswJTpDX9FnhvezvcLtOKUveWlAzRJCAG2m9GoyAYyOKFWjU3r3VjivjNY9
	tWutsjJyRPQtebP86PA=
X-Received: by 2002:a05:690e:4082:b0:649:f272:4e71 with SMTP id
 956f58d0204a3-64af2194733mr1895375d50.61.1770730489200; Tue, 10 Feb 2026
 05:34:49 -0800 (PST)
MIME-Version: 1.0
References: <67c8c4f9bf9f09fd0c13daedef27b82ff389ddfb.1770720452.git.geert+renesas@glider.be>
In-Reply-To: <67c8c4f9bf9f09fd0c13daedef27b82ff389ddfb.1770720452.git.geert+renesas@glider.be>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 10 Feb 2026 14:34:11 +0100
X-Gm-Features: AZwV_Qh7YZqJ6fn57eqSKDNnShG5y8_vQaT5Jjd2bk1tO-PMV5NbiA4MiAomS4E
Message-ID: <CAPDyKFpY2X8hephSfHq7rj_DaKX76ZSkWSCYXrGTEBUFHkvOzg@mail.gmail.com>
Subject: Re: [PATCH next] phy: renesas: rcar-gen3-usb2: Drop local devm_mux_state_get_optional()
To: Vinod Koul <vkoul@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Josua Mayer <josua@solid-run.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>, linux-phy@lists.infradead.org, 
	linux-mmc@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-next@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260210_053451_384179_550D8932 
X-CRM114-Status: GOOD (  18.45  )
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

T24gVHVlLCAxMCBGZWIgMjAyNiBhdCAxMTo1MywgR2VlcnQgVXl0dGVyaG9ldmVuCjxnZWVydCty
ZW5lc2FzQGdsaWRlci5iZT4gd3JvdGU6Cj4KPiBOb3cgdGhlIG11eCBjb3JlIHByb3ZpZGVzIGRl
dm1fbXV4X3N0YXRlX2dldF9vcHRpb25hbCgpOgo+Cj4gICAgIGRyaXZlcnMvcGh5L3JlbmVzYXMv
cGh5LXJjYXItZ2VuMy11c2IyLmM6OTQ0OjE6IGVycm9yOiBzdGF0aWMgZGVjbGFyYXRpb24gb2Yg
4oCYZGV2bV9tdXhfc3RhdGVfZ2V0X29wdGlvbmFs4oCZIGZvbGxvd3Mgbm9uLXN0YXRpYwo+ICAg
ICAgZGVjbGFyYXRpb24KPiAgICAgICA5NDQgfCBkZXZtX211eF9zdGF0ZV9nZXRfb3B0aW9uYWwo
c3RydWN0IGRldmljZSAqZGV2LCBjb25zdCBjaGFyICptdXhfbmFtZSkKPiAgICAgICAgICAgfCBe
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KPiAgICAgSW4gZmlsZSBpbmNsdWRlZCBmcm9tIGRy
aXZlcnMvcGh5L3JlbmVzYXMvcGh5LXJjYXItZ2VuMy11c2IyLmM6MjA6Cj4gICAgIGluY2x1ZGUv
bGludXgvbXV4L2NvbnN1bWVyLmg6NjQ6MTk6IG5vdGU6IHByZXZpb3VzIGRlY2xhcmF0aW9uIG9m
IOKAmGRldm1fbXV4X3N0YXRlX2dldF9vcHRpb25hbOKAmSB3aXRoIHR5cGUg4oCYc3RydWN0IG11
eF9zdGF0ZSAqKHN0cnVjdCBkZXZpY2UgKiwgY29uc3QgY2hhciAqKeKAmQo+ICAgICAgICA2NCB8
IHN0cnVjdCBtdXhfc3RhdGUgKmRldm1fbXV4X3N0YXRlX2dldF9vcHRpb25hbChzdHJ1Y3QgZGV2
aWNlICpkZXYsIGNvbnN0IGNoYXIgKm11eF9uYW1lKTsKPiAgICAgICAgICAgfCAgICAgICAgICAg
ICAgICAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KPgo+IEZpeCB0aGlzIGJ5IGRyb3Bw
aW5nIHRoZSB0ZW1wb3JhcnkgbG9jYWwgd3JhcHBlci4KPgo+IEZpeGVzOiBhZDMxNDM0OGNlYjRm
ZTFmICgibXV4OiBBZGQgaGVscGVyIGZ1bmN0aW9ucyBmb3IgZ2V0dGluZyBvcHRpb25hbCBhbmQg
c2VsZWN0ZWQgbXV4LXN0YXRlIikKPiBGaXhlczogOGJiOTJmZDdhMDQwNzc5MiAoInBoeTogcmVu
ZXNhczogcmNhci1nZW4zLXVzYjI6IFVzZSBtdXgtc3RhdGUgZm9yIHBoeXJzdCBtYW5hZ2VtZW50
IikKPiBTaWduZWQtb2ZmLWJ5OiBHZWVydCBVeXR0ZXJob2V2ZW4gPGdlZXJ0K3JlbmVzYXNAZ2xp
ZGVyLmJlPgoKVGhhbmtzIEdlZXJ0IGZvciBoZWxwaW5nIG91dCEKCj4gLS0tCj4gICAtIGFkMzE0
MzQ4Y2ViNGZlMWYgaXMgaW4gbW1jL25leHQsIGFuZCBhIFBSIGhhcyBhbHJlYWR5IGJlZW4gc2Vu
dAo+ICAgICBodHRwczovL2xvcmUua2VybmVsLm9yZy8yMDI2MDIwOTEzMzQ0MS41NTY0NjQtMS11
bGYuaGFuc3NvbkBsaW5hcm8ub3JnCj4gICAtIDhiYjkyZmQ3YTA0MDc3OTIgaXMgaW4gcGh5L25l
eHQKClZpbm9kLCBkbyB5b3Ugd2FudCB0byBwaWNrIHVwIHRoZSAkc3ViamVjdCBwYXRjaCBhcyBh
IGZpeCBmb3IgNy4wLXJjMQpvciBkbyB5b3UgcHJlZmVyIG1lIHRvIGhhbmRsZSBpdD8KCktpbmQg
cmVnYXJkcwpVZmZlCgo+IC0tLQo+ICBkcml2ZXJzL3BoeS9yZW5lc2FzL3BoeS1yY2FyLWdlbjMt
dXNiMi5jIHwgMTAgLS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMTAgZGVsZXRpb25zKC0p
Cj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcmVuZXNhcy9waHktcmNhci1nZW4zLXVzYjIu
YyBiL2RyaXZlcnMvcGh5L3JlbmVzYXMvcGh5LXJjYXItZ2VuMy11c2IyLmMKPiBpbmRleCBjZmMy
YThkOTAyOGQ1OGQwLi42NWNiZjMzMGJkOGZhMTBjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5
L3JlbmVzYXMvcGh5LXJjYXItZ2VuMy11c2IyLmMKPiArKysgYi9kcml2ZXJzL3BoeS9yZW5lc2Fz
L3BoeS1yY2FyLWdlbjMtdXNiMi5jCj4gQEAgLTkzOSwxNiArOTM5LDYgQEAgc3RhdGljIGludCBy
Y2FyX2dlbjNfcGh5X3VzYjJfdmJ1c19yZWd1bGF0b3JfcmVnaXN0ZXIoc3RydWN0IHJjYXJfZ2Vu
M19jaGFuICpjaGEKPiAgICAgICAgIHJldHVybiByY2FyX2dlbjNfcGh5X3VzYjJfdmJ1c19yZWd1
bGF0b3JfZ2V0X2V4Y2x1c2l2ZV9lbmFibGUoY2hhbm5lbCwgZW5hYmxlKTsKPiAgfQo+Cj4gLS8q
IFRlbXBvcmFyeSB3cmFwcGVyIHVudGlsIHRoZSBtdWx0aXBsZXhlciBzdWJzeXN0ZW0gc3VwcG9y
dHMgb3B0aW9uYWwgbXV4ZXMgKi8KPiAtc3RhdGljIGlubGluZSBzdHJ1Y3QgbXV4X3N0YXRlICoK
PiAtZGV2bV9tdXhfc3RhdGVfZ2V0X29wdGlvbmFsKHN0cnVjdCBkZXZpY2UgKmRldiwgY29uc3Qg
Y2hhciAqbXV4X25hbWUpCj4gLXsKPiAtICAgICAgIGlmICghb2ZfcHJvcGVydHlfcHJlc2VudChk
ZXYtPm9mX25vZGUsICJtdXgtc3RhdGVzIikpCj4gLSAgICAgICAgICAgICAgIHJldHVybiBOVUxM
Owo+IC0KPiAtICAgICAgIHJldHVybiBkZXZtX211eF9zdGF0ZV9nZXQoZGV2LCBtdXhfbmFtZSk7
Cj4gLX0KPiAtCj4gIHN0YXRpYyB2b2lkIHJjYXJfZ2VuM19waHlfbXV4X3N0YXRlX2Rlc2VsZWN0
KHZvaWQgKmRhdGEpCj4gIHsKPiAgICAgICAgIG11eF9zdGF0ZV9kZXNlbGVjdChkYXRhKTsKPiAt
LQo+IDIuNDMuMAo+CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
