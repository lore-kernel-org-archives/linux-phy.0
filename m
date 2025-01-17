Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E89D3C02183
	for <linux-phy@archiver.kernel.org>; Fri, 17 Jan 2025 01:59:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9rVP0iXvqX9n+8Y2KzL9wi70jbl7RHXFOEuTjnoW1Oo=; b=Yirvlky4XQgnrh
	GFDEmT0X39FzD4zYpB5LU8v0Y9PIlDBsZT3vVBkz4X0OPI0LYu8IHsO3WFq4/Z1AkwbTOamU0AJjE
	urRlKM8s01FS4SWXtYZ9mjw8JCJUmR3OUhUSeioALG6wNU71yGiy5Mdr4c1hL2dcJ2UYdHlEAOJmD
	IVALxO8lSEmpQpyu40oqoAoPZdg2EiT7suPKz4PyfVc6Qp5SHgDSHtwQE0M8JRxEid6aDevVW4BDT
	R/s++EXhfz7OpKUobgitMgUBLEmglmfLZk05YnGnUp4ysniMxHKhUNW5XkVev7bojX4YFMC69mEJI
	p5QeXZBWdNwW+WT6eFgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYbeJ-0000000Gp9F-068S;
	Fri, 17 Jan 2025 01:59:51 +0000
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYbeE-0000000Gp8A-3Tnq
	for linux-phy@lists.infradead.org;
	Fri, 17 Jan 2025 01:59:49 +0000
Received: by mail-pj1-x102c.google.com with SMTP id 98e67ed59e1d1-2ee8e8e29f6so2306248a91.0
        for <linux-phy@lists.infradead.org>; Thu, 16 Jan 2025 17:59:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737079186; x=1737683986; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TqxQyOZodKsQFyMH1zMn4pzf0OrxwKRWVSl6pJnQD8w=;
        b=fipFS7vo6Z8NrdeMi4chERsOupezvOy+/RQocDm4xSqBN0wXqtOeaGe2tEaRm2fMcu
         gGET3iWq8TYtAc0Kup6utacr+asynswHTB/3yaUkwXzzYALdphkmdFv445DZQ3nQefjL
         37IPE06Dwwa7BLiejogy8OnhmZQKdVUQvp0DLO1g2xAV89Hw3cArbovm0zZ4syy3+z77
         HtvTnqoWKk5Sjj5z6dIwm/X8H6xloH19/27ry/VwCYOHdF4SwH6Q1kpImprNAfmkyr+V
         eABoD9BkI9rht2rWtsQ+e/y6pmxDy4Xxx2aUbGptcAeVy2VQ85HgdS86/p/3+rk3zTRK
         Tztw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737079186; x=1737683986;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TqxQyOZodKsQFyMH1zMn4pzf0OrxwKRWVSl6pJnQD8w=;
        b=UvpbNVzmE7z6irehTpwSe/xe7L0GhNh0ioxMfwPJ6U3nkxwHL3iXafKJnZUjBkTDtT
         8M/WTKX/QkRsEP0Z+8Jsjw8ZwA1o18RL7ypq/uXlZk4DVCdDggqcfd7NIcIFlTFpB0re
         XgpqSl+14beNoz14yu1XzezuXhCiZuHOEyL9Y2U3pXGX3NGAVC/BDnBtY9KWuPOcDPAl
         t2Q1c16r9KY9yqV3fohJj8UncGECT41FL0N3JFpqVlVz3EnecNUDJtBc7y+lxJEVnsP6
         yir1e0ixOkIOzMzedAHGNfnNX1h17BQd/QOCZxRxnFuot9Quapywh6C2BlOtouJ/KL5k
         TSbg==
X-Forwarded-Encrypted: i=1; AJvYcCWSyXqydNCF4KKHWVi1iN0E0Oe50EcrxL7RHSa9vCNBGOLBLN6zw2jFqrDfvHzRvazfRbYovvhjej8=@lists.infradead.org
X-Gm-Message-State: AOJu0YxI66mIXZ7YACbN95xWhJIDEOQFm5mfYxiIT7wvNzIxndPEdnvm
	iiDK5Fm9M5VvLeRz/A0S7FedWQP1mk9FIJgOnTG7X9mUr/juOz8+Mehusv6SoXvQHofHo0JhlUx
	+d3iuGeLnzsBMT621aFbu5tiB8vCqEA==
X-Gm-Gg: ASbGncvFtnLcQ/Bd6l7SzaIrtWPR5nhjo5wUCa3Orvj57tnAoswUf60kThaJzGLUvDR
	d1JWGyb/scfFMEAx0V/JR/g4YVfKjzRJfRNOovV/OZ7n/qgCpqHDRFIJJrh0y9yVESqoluCfNBJ
	o+6eqT
X-Google-Smtp-Source: AGHT+IFyqM6QePRGQjdAGaurSWMhL3XXsJFRu/aG+vgXtdSPSEC+xpCvkK1WATdlWhNp/pHvyWV/5Wbj+NuIeJO5Xrg=
X-Received: by 2002:a17:90b:5281:b0:2ee:9d36:6821 with SMTP id
 98e67ed59e1d1-2f782d4ed5emr1130369a91.27.1737079185598; Thu, 16 Jan 2025
 17:59:45 -0800 (PST)
MIME-Version: 1.0
References: <tencent_195F1119DC8F547C905D5ED127D173EFAE08@qq.com>
In-Reply-To: <tencent_195F1119DC8F547C905D5ED127D173EFAE08@qq.com>
From: Adam Ford <aford173@gmail.com>
Date: Thu, 16 Jan 2025 19:59:34 -0600
X-Gm-Features: AbW1kvZOso222GwQRaV4IKV1kcfXxQk8H5TzLn6WUbdvc4JfSrkuFELFIPv5KSg
Message-ID: <CAHCN7xL7eMV2f04nURp3jCCmNZ0GSTY=uaOwoiht38AC4Oz0EQ@mail.gmail.com>
Subject: Re: [PATCH V5] phy: freescale: fsl-samsung-hdmi: fix build error in fsl_samsung_hdmi_phy_configure_pll_lock_det
To: xiaopeitux@foxmail.com
Cc: =vkoul@kernel.org, geert@linux-m68k.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Pei Xiao <xiaopei01@kylinos.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250116_175946_869364_D83D089C 
X-CRM114-Status: GOOD (  21.66  )
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

T24gTW9uLCBKYW4gMTMsIDIwMjUgYXQgMjo0MeKAr0FNIDx4aWFvcGVpdHV4QGZveG1haWwuY29t
PiB3cm90ZToKPgo+IEZyb206IFBlaSBYaWFvIDx4aWFvcGVpMDFAa3lsaW5vcy5jbj4KPgo+IEZJ
RUxEX1BSRVAoKSBjaGVja3MgdGhhdCBhIHZhbHVlIGZpdHMgaW50byB0aGUgYXZhaWxhYmxlIGJp
dGZpZWxkLAo+IGJ1dCB0aGUgaW5kZXggZGl2IGVxdWFscyB0byA0LGlzIG91dCBvZiByYW5nZS4K
Pgo+IHdoaWNoIGdjYyBjb21wbGFpbnMgYWJvdXQ6Cj4gSW4gZnVuY3Rpb24g4oCYZnNsX3NhbXN1
bmdfaGRtaV9waHlfY29uZmlndXJlX3BsbF9sb2NrX2RldOKAmSwKPiBpbmxpbmVkIGZyb20g4oCY
ZnNsX3NhbXN1bmdfaGRtaV9waHlfY29uZmlndXJl4oCZIGF0Cj4gZHJpdmVycy9waHkvZnJlZXNj
YWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1pLmMgOjQ3MDoyOgo+IC4vLi9pbmNsdWRlL2xpbnV4L2Nv
bXBpbGVyX3R5cGVzLmg6NTQyOjM4OiBlcnJvcjogY2FsbCB0byDigJhfX2NvbXBpbGV0aW1lX2Fz
c2VydF81MzjigJkKPiBkZWNsYXJlZCB3aXRoIGF0dHJpYnV0ZSBlcnJvcjogRklFTERfUFJFUDog
dmFsdWUgdG9vIGxhcmdlIGZvciB0aGUgZmllbGQKPiAgIDU0MiB8ICBfY29tcGlsZXRpbWVfYXNz
ZXJ0KGNvbmRpdGlvbiwgbXNnLCBfX2NvbXBpbGV0aW1lX2Fzc2VydF8sCj4gX19DT1VOVEVSX18p
Cj4gICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXgo+IC4vLi9p
bmNsdWRlL2xpbnV4L2NvbXBpbGVyX3R5cGVzLmg6NTIzOjQ6IG5vdGU6IGluIGRlZmluaXRpb24g
b2YKPiBtYWNybyDigJhfX2NvbXBpbGV0aW1lX2Fzc2VydOKAmSA1MjMgfCAgICBwcmVmaXggIyMg
c3VmZml4KCk7Cj4gICAgICAgfCAgICBefn5+fn4KPiAuLy4vaW5jbHVkZS9saW51eC9jb21waWxl
cl90eXBlcy5oOjU0MjoyOiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8KPiDigJhfY29tcGls
ZXRpbWVfYXNzZXJ04oCZCj4gICA1NDIgfCAgX2NvbXBpbGV0aW1lX2Fzc2VydChjb25kaXRpb24s
IG1zZywgX19jb21waWxldGltZV9hc3NlcnRfLAo+ICBfX0NPVU5URVJfXykKPgo+IFJFRzEyX0NL
X0RJVl9NQVNLIG9ubHkgdHdvIGJpdCwgbGltaXQgZGl2IHRvIHJhbmdlIDB+MywKPiBzbyBidWls
ZCBlcnJvciB3aWxsIGZpeC4KPgpMR1RNLgoKUmV2aWV3ZWQtYnk6ICBBZGFtIEZvcmQgPGFmb3Jk
MTczQGdtYWlsLmNvbT4KCj4gRml4ZXM6IGQ1Njc2NzlmMmI2YSAoInBoeTogZnJlZXNjYWxlOiBm
c2wtc2Ftc3VuZy1oZG1pOiBDbGVhbiB1cCBmbGRfdGdfY29kZSBjYWxjdWxhdGlvbiIpCj4gU2ln
bmVkLW9mZi1ieTogUGVpIFhpYW8gPHhpYW9wZWkwMUBreWxpbm9zLmNuPgo+Cj4gQ2hhbmdsb2c6
Cj4gLS0tCj4gVjU6IGFkZCByZXR1cm4gcmV0IGZyb20gR2VlcnQgc3VnZ2VzdGlvbgo+IFY0OiBj
aGFuZ2UgdG8gdXNlIGlmIHN0YXRlbWVudAo+IFYzOiBjaGFuZ2UgdG8gdXNlIGRvLXdoaWxlCj4g
VjI6IGNoYW5nZSB0byB1c2UgbG9naWNhbCBBTkQKPiAtLS0KPiAgZHJpdmVycy9waHkvZnJlZXNj
YWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1pLmMgfCAxMyArKysrKysrKysrKy0tCj4gIDEgZmlsZSBj
aGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLXNhbXN1bmctaGRtaS5jIGIvZHJpdmVycy9w
aHkvZnJlZXNjYWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1pLmMKPiBpbmRleCA1ZWFjNzBhMWU4NTgu
LjY4MTdjZWFiYWFiNCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZz
bC1zYW1zdW5nLWhkbWkuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLXNh
bXN1bmctaGRtaS5jCj4gQEAgLTMyNSw3ICszMjUsNyBAQCB0b19mc2xfc2Ftc3VuZ19oZG1pX3Bo
eShzdHJ1Y3QgY2xrX2h3ICpodykKPiAgICAgICAgIHJldHVybiBjb250YWluZXJfb2YoaHcsIHN0
cnVjdCBmc2xfc2Ftc3VuZ19oZG1pX3BoeSwgaHcpOwo+ICB9Cj4KPiAtc3RhdGljIHZvaWQKPiAr
c3RhdGljIGludAo+ICBmc2xfc2Ftc3VuZ19oZG1pX3BoeV9jb25maWd1cmVfcGxsX2xvY2tfZGV0
KHN0cnVjdCBmc2xfc2Ftc3VuZ19oZG1pX3BoeSAqcGh5LAo+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgY29uc3Qgc3RydWN0IHBoeV9jb25maWcgKmNmZykKPiAg
ewo+IEBAIC0zNDEsNiArMzQxLDkgQEAgZnNsX3NhbXN1bmdfaGRtaV9waHlfY29uZmlndXJlX3Bs
bF9sb2NrX2RldChzdHJ1Y3QgZnNsX3NhbXN1bmdfaGRtaV9waHkgKnBoeSwKPiAgICAgICAgICAg
ICAgICAgICAgICAgICBicmVhazsKPiAgICAgICAgIH0KPgo+ICsgICAgICAgaWYgKHVubGlrZWx5
KGRpdiA9PSA0KSkKPiArICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7Cj4gKwo+ICAgICAg
ICAgd3JpdGViKEZJRUxEX1BSRVAoUkVHMTJfQ0tfRElWX01BU0ssIGRpdiksIHBoeS0+cmVncyAr
IFBIWV9SRUcoMTIpKTsKPgo+ICAgICAgICAgLyoKPiBAQCAtMzY0LDYgKzM2Nyw4IEBAIGZzbF9z
YW1zdW5nX2hkbWlfcGh5X2NvbmZpZ3VyZV9wbGxfbG9ja19kZXQoc3RydWN0IGZzbF9zYW1zdW5n
X2hkbWlfcGh5ICpwaHksCj4gICAgICAgICAgICAgICAgRklFTERfUFJFUChSRUcxNF9SUF9DT0RF
X01BU0ssIDIpIHwKPiAgICAgICAgICAgICAgICBGSUVMRF9QUkVQKFJFRzE0X1RHX0NPREVfSElH
SF9NQVNLLCBmbGRfdGdfY29kZSA+PiA4KSwKPiAgICAgICAgICAgICAgICBwaHktPnJlZ3MgKyBQ
SFlfUkVHKDE0KSk7Cj4gKwo+ICsgICAgICAgcmV0dXJuIDA7Cj4gIH0KPgo+ICBzdGF0aWMgdW5z
aWduZWQgbG9uZyBmc2xfc2Ftc3VuZ19oZG1pX3BoeV9maW5kX3Btcyh1bnNpZ25lZCBsb25nIGZv
dXQsIHU4ICpwLCB1MTYgKm0sIHU4ICpzKQo+IEBAIC00NjcsNyArNDcyLDExIEBAIHN0YXRpYyBp
bnQgZnNsX3NhbXN1bmdfaGRtaV9waHlfY29uZmlndXJlKHN0cnVjdCBmc2xfc2Ftc3VuZ19oZG1p
X3BoeSAqcGh5LAo+ICAgICAgICAgd3JpdGViKFJFRzIxX1NFTF9UWF9DS19JTlYgfCBGSUVMRF9Q
UkVQKFJFRzIxX1BNU19TX01BU0ssCj4gICAgICAgICAgICAgICAgY2ZnLT5wbGxfZGl2X3JlZ3Nb
Ml0gPj4gNCksIHBoeS0+cmVncyArIFBIWV9SRUcoMjEpKTsKPgo+IC0gICAgICAgZnNsX3NhbXN1
bmdfaGRtaV9waHlfY29uZmlndXJlX3BsbF9sb2NrX2RldChwaHksIGNmZyk7Cj4gKyAgICAgICBy
ZXQgPSBmc2xfc2Ftc3VuZ19oZG1pX3BoeV9jb25maWd1cmVfcGxsX2xvY2tfZGV0KHBoeSwgY2Zn
KTsKPiArICAgICAgIGlmIChyZXQpIHsKPiArICAgICAgICAgICAgICAgZGV2X2VycihwaHktPmRl
diwgInBpeGNsb2NrIHRvbyBsYXJnZVxuIik7Cj4gKyAgICAgICAgICAgICAgIHJldHVybiByZXQ7
Cj4gKyAgICAgICB9Cj4KPiAgICAgICAgIHdyaXRlYihSRUczM19GSVhfREEgfCBSRUczM19NT0RF
X1NFVF9ET05FLCBwaHktPnJlZ3MgKyBQSFlfUkVHKDMzKSk7Cj4KPiAtLQo+IDIuMjUuMQo+Cgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
