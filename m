Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 221D8C98304
	for <linux-phy@archiver.kernel.org>; Thu, 24 Sep 2026 05:13:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s+es2E2EwR5HcGIs43o1gvMwHmBVNwN9JU+WZON/T6Y=; b=vNCkkf+xFVKnx1
	8KRhR9pxlrpRgHAVNrTF8Ws5rOJ7frLaBNVz0iVZ0fs3oVNoVB7lBnZVHkAIM7aucPen1OMQN+S5O
	Lmqt1kqE2C/jGj7HshM6WdouRj/JXbANR4cuD9DaVq9w7oV6L0HfF0rmUv+fR3h9H2q4om+8MLXC9
	K0ARaAzKiVw0aRVw1AHJjRYcyNLezqGLAddzULzlYv8vQAA/hXCebk+vtqiSkvnKODyYq/Q6ZYjfx
	lPSXckp7lhnWeSEr48lUHJaa0XZrO4SZPTz+KDA9OIRoarIcQqeurCBIS0nwC2icHNnJ+eRhysIoX
	efTut8P+wgBbj+h+fgzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9bli-0000000A2Na-3Uae;
	Thu, 24 Sep 2026 05:13:14 +0000
Received: from mail-ej2-x06.google.com ([2a00:1450:4864:34::6])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9blf-0000000A2NE-2YKF
	for linux-phy@lists.infradead.org;
	Thu, 24 Sep 2026 05:13:13 +0000
Received: by mail-ej2-x06.google.com with SMTP id a640c23a62f3a-c2942718f87so66441566b.0
        for <linux-phy@lists.infradead.org>; Wed, 23 Sep 2026 22:13:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1790226789; cv=none;
        d=google.com; s=arc-20260327;
        b=U2BCbaAXpvKqPdOL13/drRrNXAZrMUWcUMSeugXIg5J5KTIZmI4v3dLQLtLfWye5L5
         WzGS2wqEOaiQVPiabxOqBxGiKenX96qgXiWdg1jFgG5rrVIS3e5SnHNKbVnvGMNQcd9d
         mzUsEsUL7UVOJLq/IZfD+1FkGyOhni9CIBBgSN91fYd5xZi1UQfRP7Squ8rmPHDm3OUS
         vjIWHp+COh8vDnFJEqa5xWhao4lDq39Ps4GVQpgLtzq/T+I8W0cQuaDdFPE5uC5hqJ35
         3wtmeFHAUP+8E0cGEJq1Xf4P1bH1DyRa5/PWaV+7KNSm6t1NUR6TT08czgfH30KwmtPB
         Wq/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=F0MbMqtSvR+bKuyDMIBNdTC0TQ1xzz8SEFZhDO0+ELc=;
        fh=sgkoFkRkG1fC+nb76A0QpoIIDCpyHII+FQL7HLFfMoI=;
        b=fgdEbY9qM8kJ8psla6MEwCZODidF8GAOYxHiz7iAlIdaBbvtrtZ6b6Ars2bJ3/uRfH
         PM0bng5kCKZE9qnJSOQSgsYo1CTY1JAbzXHLsG3WNRyoInhisUYK+ErXCaANdbT9IdqY
         dzzzXIMdoLj4dCuBp94dS3xjnGFjGUxwOYB8yCC+MScGKOhE3P5EeNSmdWdYGSCIlGtx
         2SF8zjDMRrBAbQuodPD+gQ9xl+oivNTOmEE1gzb0SKX8+GVVMpPC3U4vuSYz7Zcd3dAD
         wglGsQuWhndaZR6bHeOtHJmIehZZRWNjf9ipwXHxjzPuRrIlQ7g1kszj8kdAzmvB0DZH
         G1yQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790226789; x=1790831589; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=F0MbMqtSvR+bKuyDMIBNdTC0TQ1xzz8SEFZhDO0+ELc=;
        b=QVf7hf6FSZbd5DbXlAmiGHVR8t/hMGghxUkp8GVgcz5ClcP5OsWUJvX0AT1M0/MOxj
         /RBaGUhYmRb0H04uLr/uDyjT84nmv5FLSJ81woFyhu6cxy9mY7RCRzGyMe3DaYPaeizf
         uL6W40/bZRnSPbsXg8RF60AldG/yZUVOFym2TNPqeizLIGQjAkjFCo7PHHx4Yx7VFYIN
         dfgvmWqJDlI5xfZvz4f9OitQyGLSemB0PNbrzSYKdtyelTdQ2M+r0w+/vIxOQAKMKwvG
         eych+HcdRW8oNmm/PVRO04bgptPmAe5pXmBUqKpn2ZhGl22BI7jHmLkGG//swLnpqJN4
         TxXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790226789; x=1790831589;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=F0MbMqtSvR+bKuyDMIBNdTC0TQ1xzz8SEFZhDO0+ELc=;
        b=eNqF41u/lx+UXNFmydp+1GsKKx3dQpv12M+sMkFR+QUAdh5rV7z7ymGnYA+QHRlixX
         cvVtBnCA0fbCtWySC9Vy73ggRoyEH2YUg1vOCYBUSO8XAmdT7qCKBAWbfwZCDJtCnF/S
         mtVErKNbLbeBnPiJiJVQB7h7wq27/K7YyB5PQIR79oF5EIOkKyFHpyVNX5TU0df1jYtr
         68z+gWI6PIF0Z7X18oJ8lW1p6HXAJv/IdT4FTlZ72CgWjfuZm/Gz80qmKqhYQtZjKymC
         75zrd8xXbBQi+vUV9OhuD8+/lveYn3SfYPPMo4RSLSlUYB+EIhH4y78L9zW7KjudhiZx
         RulA==
X-Forwarded-Encrypted: i=1; AKwUvBwKRl8t3riQZAEc8CZF/opkla9qJ/eZc/fxbC2NUKQMXD+F7xQd75KLroKvRZHz1uvpnJ4pzIlhh8c=@lists.infradead.org
X-Gm-Message-State: AFuF++kPrzoWDx/9HwqyLMGQzQ9ad05L3aKFLGZj9vMr8DIPO8WO8qSc
	MGialbBffCQeToJ7HysTHG7qVIwpfXdI6FxomTu1Z9+JNaawVj2nvCv6v0vQhBDSe+OuM4n7gnI
	vtKLG0X8DqPvU+gQO9KVXAgd6BsT2ee8=
X-Gm-Gg: AYBFou2o63a3Dx/d09IV8PpjJBwlf3WD7cVdfS6gQItiY5RXr1djHHnubE/CbV5/cWp
	LLWDMDDOuKIkImmdI81W43gQ2UKWBaaxof/xJJ4ewACxuKo31GfsFW2tPioJmipUwbTEEHyiPLI
	2giCiytLukj6r55cmr13anM3aKsM5qASykXysSH9982n009NFPlSZJXHdOSxEVfTQKKjxWSLpGx
	ZIpMY4eMM0/m7T+qqtkjiTbz3ydnAD0XK7Oy3LQeqjZ5JkBLHsq+COtma74/hDySrnHX47ttZfU
	XHgjCVMeZj6z2O9bgMT2LK+lTrtZ5wkMAJLXrN2484eFIqktMZBv1cWUQw==
X-Received: by 2002:a17:907:a2c8:b0:c29:3838:dd69 with SMTP id
 a640c23a62f3a-c2ac256657bmr83116266b.39.1790226788805; Wed, 23 Sep 2026
 22:13:08 -0700 (PDT)
MIME-Version: 1.0
References: <20260922200336.2201212-1-coiaprant@gmail.com> <20260922200336.2201212-8-coiaprant@gmail.com>
 <20260923200523.E766D1F00898@smtp.kernel.org>
In-Reply-To: <20260923200523.E766D1F00898@smtp.kernel.org>
From: Coia Prant <coiaprant@gmail.com>
Date: Thu, 24 Sep 2026 13:12:57 +0800
X-Gm-Features: AclHuK-lw6TEGWFDRwVyt75CcRiJm_UXyDL5fRY6bD8kdC3GnVL_Pk8dt0Fcf5w
Message-ID: <CALj3r0jt0hFRGrhxiqWnD2XmKrj4vy1U1to-1XrhT_ZesJ19Wg@mail.gmail.com>
Subject: Re: [PATCH net-next v10 07/11] net: pcs: xpcs: add Rockchip RK3568
 platform glue driver
To: sashiko-reviews@lists.linux.dev
Cc: robh@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, 
	olteanv@gmail.com, wsa+renesas@sang-engineering.com, vkoul@kernel.org, 
	neil.armstrong@linaro.org, conor+dt@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260923_221311_745437_18E2D843 
X-CRM114-Status: GOOD (  19.51  )
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

PHNhc2hpa28tYm90QGtlcm5lbC5vcmc+IOS6jjIwMjblubQ55pyIMjTml6Xlkajlm5sgMDQ6MDXl
hpnpgZPvvJoKPgo+IFRoYW5rIHlvdSBmb3IgeW91ciBjb250cmlidXRpb24hIFNhc2hpa28gQUkg
cmV2aWV3IGZvdW5kIDEgcG90ZW50aWFsIGlzc3VlKHMpIHRvIGNvbnNpZGVyOgo+IC0gW01lZGl1
bV0gcG06IHVuYmFsYW5jZWQgcG1fcnVudGltZV9lbmFibGUgb24gdGVhcmRvd24KPiAtLQo+Cj4g
Y29tbWl0IDQzZDI4NDkzZjNlZWM2NGE5NmFmMjE5ZTU0NDhmZmUwZWZlNTZkNTgKPiBBdXRob3I6
IENvaWEgUHJhbnQgPGNvaWFwcmFudEBnbWFpbC5jb20+Cj4gbmV0OiBwY3M6IHhwY3M6IGFkZCBS
b2NrY2hpcCBSSzM1NjggcGxhdGZvcm0gZ2x1ZSBkcml2ZXIKPgo+IFRoaXMgY29tbWl0IGludHJv
ZHVjZXMgYSBuZXcgcGxhdGZvcm0gZ2x1ZSBkcml2ZXIgZm9yIHRoZSBTeW5vcHN5cyBEZXNpZ25X
YXJlCj4gWFBDUyBvbiBSb2NrY2hpcCBSSzM1NjggU29Dcy4gSXQgaW1wbGVtZW50cyBhbiBNRElP
IGJ1cyB0aGF0IHRyYW5zbGF0ZXMKPiByZXF1ZXN0cyB0byBBUEIzIG1lbW9yeS1tYXBwZWQgcmVn
aXN0ZXJzLiBJdCBhbHNvIGFkZHMgbmVjZXNzYXJ5IGNsb2NrIGFuZAo+IHBvd2VyIGRvbWFpbiBt
YW5hZ2VtZW50IGZvciB0aGUgZGV2aWNlLgo+Cj4gTGluazogaHR0cHM6Ly9kbC5yYWR4YS5jb20v
cm9jazMvZG9jcy9ody9kYXRhc2hlZXQvUm9ja2NoaXAlMjBSSzM1NjglMjBUUk0lMjBQYXJ0MSUy
MFYxLjEtMjAyMTAzMDEucGRmIChQYWdlIDU5LCBDUlVfQ0xLU0VMX0NPTjI5KQo+IExpbms6IGh0
dHBzOi8vZGwucmFkeGEuY29tL3JvY2szL2RvY3MvaHcvZGF0YXNoZWV0L1JvY2tjaGlwJTIwUksz
NTY4JTIwVFJNJTIwUGFydDIlMjBWMS4xLTIwMjEwMzAxLnBkZiAoUGFnZSAyMDc4KQo+Cj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvcGNzL3Bjcy14cGNzLXJrLmMgYi9kcml2ZXJzL25ldC9w
Y3MvcGNzLXhwY3MtcmsuYwo+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiA+IGluZGV4IDAwMDAw
MDAwMDAwMDAuLjM1ZWU5ODBhNzU5ZTUKPiA+IC0tLSAvZGV2L251bGwKPiA+ICsrKyBiL2RyaXZl
cnMvbmV0L3Bjcy9wY3MteHBjcy1yay5jCj4gWyAuLi4gXQo+ID4gK3N0YXRpYyB2b2lkIHhwY3Nf
cmtfZXhpdF9jbGsodm9pZCAqZGF0YSkKPiA+ICt7Cj4gPiArICAgICBzdHJ1Y3QgZHdfeHBjc19y
ayAqcHhwY3MgPSBkYXRhOwo+ID4gKyAgICAgc3RydWN0IGRldmljZSAqZGV2ID0gJnB4cGNzLT5w
ZGV2LT5kZXY7Cj4gPiArCj4gPiArICAgICBwbV9ydW50aW1lX2ZvcmNlX3N1c3BlbmQoZGV2KTsK
PiA+ICsgICAgIGNsa19kaXNhYmxlX3VucHJlcGFyZShweHBjcy0+ZWVlX2Nsayk7Cj4gPiArfQo+
Cj4gW1NldmVyaXR5OiBNZWRpdW1dCj4gQ291bGQgdGhpcyBsZWFkIHRvIGFuIHVuYmFsYW5jZWQg
cG1fcnVudGltZV9lbmFibGU/Cj4KPiBJbiB4cGNzX3JrX2luaXRfY2xrKCksIHBtX3J1bnRpbWVf
ZW5hYmxlKGRldikgaXMgY2FsbGVkLCBhbmQgdGhpcyBmdW5jdGlvbgo+IHhwY3NfcmtfZXhpdF9j
bGsoKSBpcyByZWdpc3RlcmVkIGFzIHRoZSBkZXZtIHRlYXJkb3duIGFjdGlvbi4gSG93ZXZlciwK
PiBwbV9ydW50aW1lX2Rpc2FibGUoZGV2KSBpcyBub3QgY2FsbGVkIGhlcmUuCj4KPiBJZiB0aGUg
ZHJpdmVyIGlzIHVuYm91bmQgdmlhIHN5c2ZzIG9yIGZhaWxzIHRvIHByb2JlIGxhdGVyIGluIHRo
ZSBzZXF1ZW5jZSwKPiB0aGUgdGVhcmRvd24gYWN0aW9uIHJ1bnMgYnV0IGxlYXZlcyBQTSBydW50
aW1lIGVuYWJsZWQuIFRoaXMgY2FuIHRyaWdnZXIKPiBrZXJuZWwgd2FybmluZ3MgYWJvdXQgYW4g
dW5iYWxhbmNlZCBwbV9ydW50aW1lX2VuYWJsZSBhbmQgYnJlYWsgc3Vic2VxdWVudAo+IGRldmlj
ZSBiaW5kaW5nIFBNIHN0YXRlLgoKcG1fcnVudGltZV9mb3JjZV9zdXNwZW5kKCkgY2FsbHMgcG1f
cnVudGltZV9kaXNhYmxlKCkgdW5jb25kaXRpb25hbGx5CmJlZm9yZSBpbnZva2luZyB0aGUgcnVu
dGltZV9zdXNwZW5kIGNhbGxiYWNrLCBzbyBydW50aW1lIFBNIGlzIGFscmVhZHkKZGlzYWJsZWQg
b24gdGhlIHN1Y2Nlc3MgcGF0aC4gVGhlIHJ1bnRpbWVfc3VzcGVuZCBjYWxsYmFjayBpbiB0aGlz
CmRyaXZlciBhbHdheXMgcmV0dXJucyAwLCBzbyB0aGUgZXJyb3IgcGF0aCB0aGF0IHJlLWVuYWJs
ZXMgcnVudGltZSBQTQppcyBuZXZlciB0YWtlbi4gTm8gY2hhbmdlIG5lZWRlZC4KCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
