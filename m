Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D764DC02183
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jan 2025 11:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k226fVQ8IwsRPrIW5u5riPKGr3N+abOVaBwK40TKyoA=; b=hSdRfxVLX5WqAh
	TA1CmEmvfwDVKtObCglC4/mqNbDx2czCfmK1an1GewGRm6Ei+h248AZstvLX286ayS9oQsr3VSfL+
	8mQ2l2jHojVaqHUpZZeQ0Ft97YaEp6lDO8DM3tVIyUDBjrEsymnbi1gK3Fw2NIUIBs/7A2LFez47u
	ZrElKBUkMGjjOHr//UaOZjOGLbaRaZ+jXhH6zjLwyM3hdlTl1CFPp4E1VRQrkaQmzhvCMVF57vD9R
	S0E5eEtzmshYi+msdxrj1A4lysiOaaM+6rO9LKADwVBIRCl6hcOlXQOvNFIF9gIJbebvj6k9svITV
	JZPbHzU61Xf4ebxJtQBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXf5T-00000008FNz-2aMm;
	Tue, 14 Jan 2025 11:27:59 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXf43-00000008FAd-1Pox
	for linux-phy@lists.infradead.org;
	Tue, 14 Jan 2025 11:26:32 +0000
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-21669fd5c7cso95762015ad.3
        for <linux-phy@lists.infradead.org>; Tue, 14 Jan 2025 03:26:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736853990; x=1737458790; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cVYdae+ZkZplPM64IuwDSj7K9MzfnKc0bKTWuLbDqac=;
        b=KG3KGAWsI8rHrJZycMzVELwbVGdVBAo7rb0cq/4odDhOiwQWslF7LClllFSciA88Bv
         rFx6SsXfFlrenDaw79JT37K0lHbKhvn8yb0gIYYqUAUvu7DIUCX4pLJ3v7dEJ7L7OcK7
         xe81nwIfGvqZIPKFqB1XCmd6OO9XsCsAYuhfJ+hCWuEq0KfTU2aM95yvOilTm+/mqaiu
         j2jpfBvRQ9WNbchyM7vKneu236SnohedgjTcW0bO03X0Hwx/s1ukO5jPDFh8U7fFZFvq
         +ainW7CaC36/L3dGPdBG/By9GvQ+pBxCAmGkspsmhCTjB5BUFl5Sqmfpu56plgqvl0HF
         nX+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736853990; x=1737458790;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cVYdae+ZkZplPM64IuwDSj7K9MzfnKc0bKTWuLbDqac=;
        b=Cdq2p0NO95vpdrBJImi13z2ZQJN+fSnA01fsvUjSiVU43Dljc6cg3gFBU9+/N36Bag
         A4T3nIfjvydxBpxwbVPY9ci2Gi3fBsbc5uPWsw79veOZe+RFqLs1mi4mwpSZJKyeVsL5
         mRINz0T3HeZsDm49/lakngD4vhdx0JLTqmtl9cpicjuZV8H1wJ2RxCJvyRSv8zhv7rwX
         ra9mhrBl9kpKhScMu2+zU7+FJN3yqQS9ts5UVwA4P9wBpPf8jIouQQSP4UKsF0jvM1QT
         GJTLN6N1J86usqPlLe5nj+mxKHcly/NqG+SWtnmylYB0VplNfnhukk37lFkmrXXXf23Z
         ievg==
X-Forwarded-Encrypted: i=1; AJvYcCXZyNJdUKASGr7TJE9uOmAcmITlmGMrKZBdN0l6rfGBlA+NkmvK9JW/cDpDhwrFSLiVu/S2RxwxLps=@lists.infradead.org
X-Gm-Message-State: AOJu0YwGJ8ERcX5hR448Ge3AqGipGlOiWX1GMl6cbf6IGuwv6RQPIJ/F
	flVLZRLkIdnz/bWu/w5hcm0yT2SZzJcqxiSG8ncygpd4LHONRavZUNSCoevs3fnMtlkFQDywPSs
	9CkUsEIOkQLcJHnTK0SIvlY2zdsk=
X-Gm-Gg: ASbGnctpbO9uBMZqChIu1ry9zuSJVRe/PRvnxd8O+j1+XDgxraFJ+7dJ//ysdsWAU2N
	j4K2fpH9jeOCuj29x6av21wEg61ZHUoRepNJzmQ==
X-Google-Smtp-Source: AGHT+IHdpHx+rGUksb3VAomZGFK4wB2JWCyvweL50nFM65vj2xnPbKjwFYgg3zkWWzi0XVTrD00LP8ExaukSaOk4m0s=
X-Received: by 2002:a17:90b:54cb:b0:2ee:863e:9fe8 with SMTP id
 98e67ed59e1d1-2f548ec793fmr39381031a91.18.1736853990289; Tue, 14 Jan 2025
 03:26:30 -0800 (PST)
MIME-Version: 1.0
References: <tencent_B5D4CEE5B9DE468871AF5159433E785D9D0A@qq.com>
In-Reply-To: <tencent_B5D4CEE5B9DE468871AF5159433E785D9D0A@qq.com>
From: Adam Ford <aford173@gmail.com>
Date: Tue, 14 Jan 2025 05:26:19 -0600
X-Gm-Features: AbW1kvYj9-uFxCQVEptiSpe9fGnSkBOoJgf6cUyN9MrTamC1NXuGROSwVV31ADs
Message-ID: <CAHCN7xKG6gUTXKehusRP+pyGXLfR2tmMW0ofmT3LTmryj2r9TQ@mail.gmail.com>
Subject: Re: [RFC] phy: freescale: fsl-samsung-hdmi: Use helper function devm_clk_get_enabled()
To: xiaopeitux@foxmail.com
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Pei Xiao <xiaopei01@kylinos.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250114_032631_376527_2DF227F6 
X-CRM114-Status: GOOD (  18.05  )
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

T24gTW9uLCBKYW4gMTMsIDIwMjUgYXQgMTowOOKAr0FNIDx4aWFvcGVpdHV4QGZveG1haWwuY29t
PiB3cm90ZToKPgo+IEZyb206IFBlaSBYaWFvIDx4aWFvcGVpMDFAa3lsaW5vcy5jbj4KPgo+IFNp
bmNlIGNvbW1pdCA3ZWY5NjUxZTk3OTIgKCJjbGs6IFByb3ZpZGUgbmV3IGRldm1fY2xrIGhlbHBl
cnMgZm9yIHByZXBhcmVkCj4gYW5kIGVuYWJsZWQgY2xvY2tzIiksIGRldm1fY2xrX2dldCgpIGFu
ZCBjbGtfcHJlcGFyZV9lbmFibGUoKSBjYW4gbm93IGJlCj4gcmVwbGFjZWQgYnkgZGV2bV9jbGtf
Z2V0X2VuYWJsZWQoKSB3aGVuIGRyaXZlciBlbmFibGVzIHRoZSBjbG9ja3MgZm9yIHRoZQo+IHdo
b2xlIGxpZmV0aW1lIG9mIHRoZSBkZXZpY2UuIE1vcmVvdmVyLCBpdCBpcyBubyBsb25nZXIgbmVj
ZXNzYXJ5IHRvCj4gdW5wcmVwYXJlIGFuZCBkaXNhYmxlIHRoZSBjbG9ja3MgZXhwbGljaXRseS4K
Pgo+IEZpeGVzOiA2YWQwODJiZWU5MDIgKCJwaHk6IGZyZWVzY2FsZTogYWRkIFNhbXN1bmcgSERN
SSBQSFkiKQoKSSB3b3VsZCBhcmd1ZSB0aGF0IGl0IGlzIG5vdCBhIGZpeCwgYnV0IGFuIGltcHJv
dmVtZW50LiAgSSBkb24ndCB0aGluawphbnl0aGluZyB3YXMgdGVjaG5pY2FsbHkgYnJva2VuIGJl
Zm9yZSwgYnV0IFZpbm9kIG1heSBoYXZlIGEgZGlmZmVyZW50Cm9waW5pb24uCgo+IFNpZ25lZC1v
ZmYtYnk6IFBlaSBYaWFvIDx4aWFvcGVpMDFAa3lsaW5vcy5jbj4KClRlc3RlZC1ieTogQWRhbSBG
b3JkIDxhZm9yZDE3M0BnbWFpbC5jb20+ICMgaW14OG1wLWJlYWNvbgoKPiAtLS0KPiAgZHJpdmVy
cy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1pLmMgfCAxNyArKy0tLS0tLS0tLS0t
LS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxNSBkZWxldGlvbnMoLSkK
Pgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1zYW1zdW5nLWhk
bWkuYyBiL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLXNhbXN1bmctaGRtaS5jCj4gaW5k
ZXggMWEwNzkwNzVkZTY3Li4xNzBlYWMzMTdiMTYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkv
ZnJlZXNjYWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1pLmMKPiArKysgYi9kcml2ZXJzL3BoeS9mcmVl
c2NhbGUvcGh5LWZzbC1zYW1zdW5nLWhkbWkuYwo+IEBAIC02NjcsNyArNjY3LDcgQEAgc3RhdGlj
IGludCBmc2xfc2Ftc3VuZ19oZG1pX3BoeV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpw
ZGV2KQo+ICAgICAgICAgaWYgKElTX0VSUihwaHktPnJlZ3MpKQo+ICAgICAgICAgICAgICAgICBy
ZXR1cm4gUFRSX0VSUihwaHktPnJlZ3MpOwo+Cj4gLSAgICAgICBwaHktPmFwYmNsayA9IGRldm1f
Y2xrX2dldChwaHktPmRldiwgImFwYiIpOwo+ICsgICAgICAgcGh5LT5hcGJjbGsgPSBkZXZtX2Ns
a19nZXRfZW5hYmxlZChwaHktPmRldiwgImFwYiIpOwo+ICAgICAgICAgaWYgKElTX0VSUihwaHkt
PmFwYmNsaykpCj4gICAgICAgICAgICAgICAgIHJldHVybiBkZXZfZXJyX3Byb2JlKHBoeS0+ZGV2
LCBQVFJfRVJSKHBoeS0+YXBiY2xrKSwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgImZhaWxlZCB0byBnZXQgYXBiIGNsa1xuIik7Cj4gQEAgLTY3NywyOSArNjc3LDE2IEBA
IHN0YXRpYyBpbnQgZnNsX3NhbXN1bmdfaGRtaV9waHlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rl
dmljZSAqcGRldikKPiAgICAgICAgICAgICAgICAgcmV0dXJuIGRldl9lcnJfcHJvYmUocGh5LT5k
ZXYsIFBUUl9FUlIocGh5LT5yZWZjbGspLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAiZmFpbGVkIHRvIGdldCByZWYgY2xrXG4iKTsKPgo+IC0gICAgICAgcmV0ID0gY2xr
X3ByZXBhcmVfZW5hYmxlKHBoeS0+YXBiY2xrKTsKPiAtICAgICAgIGlmIChyZXQpIHsKPiAtICAg
ICAgICAgICAgICAgZGV2X2VycihwaHktPmRldiwgImZhaWxlZCB0byBlbmFibGUgYXBiY2xrXG4i
KTsKPiAtICAgICAgICAgICAgICAgcmV0dXJuIHJldDsKPiAtICAgICAgIH0KPiAtCj4gICAgICAg
ICBwbV9ydW50aW1lX2dldF9ub3Jlc3VtZShwaHktPmRldik7Cj4gICAgICAgICBwbV9ydW50aW1l
X3NldF9hY3RpdmUocGh5LT5kZXYpOwo+ICAgICAgICAgcG1fcnVudGltZV9lbmFibGUocGh5LT5k
ZXYpOwo+Cj4gICAgICAgICByZXQgPSBwaHlfY2xrX3JlZ2lzdGVyKHBoeSk7Cj4gLSAgICAgICBp
ZiAocmV0KSB7Cj4gKyAgICAgICBpZiAocmV0KQo+ICAgICAgICAgICAgICAgICBkZXZfZXJyKCZw
ZGV2LT5kZXYsICJyZWdpc3RlciBjbGsgZmFpbGVkXG4iKTsKPiAtICAgICAgICAgICAgICAgZ290
byByZWdpc3Rlcl9jbGtfZmFpbGVkOwo+IC0gICAgICAgfQo+Cj4gICAgICAgICBwbV9ydW50aW1l
X3B1dChwaHktPmRldik7Cj4KPiAtICAgICAgIHJldHVybiAwOwo+IC0KPiAtcmVnaXN0ZXJfY2xr
X2ZhaWxlZDoKPiAtICAgICAgIGNsa19kaXNhYmxlX3VucHJlcGFyZShwaHktPmFwYmNsayk7Cj4g
LQo+ICAgICAgICAgcmV0dXJuIHJldDsKPiAgfQo+Cj4gLS0KPiAyLjI1LjEKPgoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
