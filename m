Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBC7CCD37B4
	for <linux-phy@archiver.kernel.org>; Wed,  4 Sep 2024 14:14:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3uzj6Z2VhyJ4rslNJ5HEtofe/CwvV+gCYstnv+dk6mY=; b=OpMle7Gn6R8ZhW
	xBlE/EOxmjYAhxeuMo4TOW03GgYaXuY4Ven6wHLAn5fu2F9xMgERgduSD6zgHGTlMBldBPifCQaq2
	7sLQCDJZGFsGvykC36x6hQ/2X3i+1YjA89ZNDMm349vLxKD5c77uc55n5VwES3PsYNvKS9GE562+P
	exO+0M+8O9/pHLQyviDdHI1EdWXfDSiqw9kY3E22P+joKR2P0KO3L5NJh9Pi3IEk7cjB+cv9b92Ws
	YEtHT9r4uN+Cy42xl/JRA0hx12YylktHQUfxO0C2obCNcZzWn0IQSAXJQXwjG5wQo4itdUnLFCmYp
	H/bTMnloToF2XTH+LygA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slqm8-00000004ixu-1r9p;
	Wed, 04 Sep 2024 14:14:24 +0000
Received: from mail-pj1-x1029.google.com ([2607:f8b0:4864:20::1029])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slqm5-00000004ixN-179P
	for linux-phy@lists.infradead.org;
	Wed, 04 Sep 2024 14:14:22 +0000
Received: by mail-pj1-x1029.google.com with SMTP id 98e67ed59e1d1-2d889207d1aso3407318a91.3
        for <linux-phy@lists.infradead.org>; Wed, 04 Sep 2024 07:14:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725459260; x=1726064060; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1PgzHsAnrUrunDZZJ+AslrQQgJfxVSx824fdQ3QxD7o=;
        b=SynX5kZQeXhqpRjV/Gx9zvTr5lO/DNJRCikSVi/8xtuXDlVHZAz2UZuh3+Da4BIJID
         mLHwLUW82666DwNB6XNpBZv31S406BLqR6ZQLLFRMtHcNXoBJdaGPYSbzySj6BlWhinX
         9xHu3rT6ZipfI7q/tOrNeWzOzZEm0LGhXKzL5uvsLm+Z3bCCpKDmQpqy52DIIfJonCVX
         cCHLAllft7bWSQ/wWxaH8g+iLzOCkGwLqSxnQFF8LGzSKvJ+E9PsBvwvsxW7L3rDREIP
         54qEvxiHdCuHKS/LEB0oquGlW6UT2gip6qrt26P9Jyc8BNaaVnFBKqM505rNGqUNC+0k
         lFwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725459260; x=1726064060;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1PgzHsAnrUrunDZZJ+AslrQQgJfxVSx824fdQ3QxD7o=;
        b=Y9ZBG9eqqIcjxUkrKGZjIjmms6Wx3G2R5400fQmnGWaRZTUjy1xD5wvZ7J8oC1W9BX
         D0AHvLndXs7stdUT2T3rNqPXStmAcIK+5bgn2hdRVuXQn5AYZQr/O1/cU8jKXfdmnHnV
         hG/NTwBxMFnd15T1W8LcOCdIv2I4uVIG2atRcPE3yU8A5UXUn7wfNXWrr0ggqkkfGuGA
         je5dqcS8oMPAnOLNcgNg0nE0lRAfs/nq85iyqg7yuXsmAz1M4wBAvLGrFQWYr9ZTNh2P
         u+JafiNd0naf/80+4zhVATMEOSC1uoJtZkSbwHMMUENB18BisZeMlq3hFRoCV5kiGpsR
         ftEw==
X-Gm-Message-State: AOJu0Ywm+FO/5FzJmHX2YkSrr4S+3RE/jfODWI2vJArCHThaGIlCqiXA
	Z62PR1UWhmpOF7djNr2H9L7SgDUPHK3OhMm/nLwMZdy7hrGLJ6lNcZg+mMHuggXUfzVLjxXe3yV
	CpfITDdulQvEMeXSSWF9f+fnMF9w=
X-Google-Smtp-Source: AGHT+IHqlO6861kWFPHQ/5iMknd7zcCtaopyROaGQtDRSZMvGPIAeFAy5LiZmahCgfj64wqJf6+ar36fnRfgBaIu3T8=
X-Received: by 2002:a17:90a:dc13:b0:2da:936c:e5ad with SMTP id
 98e67ed59e1d1-2da936cef76mr1876045a91.33.1725459259885; Wed, 04 Sep 2024
 07:14:19 -0700 (PDT)
MIME-Version: 1.0
References: <20240904023310.163371-1-aford173@gmail.com> <20240904023310.163371-5-aford173@gmail.com>
 <0a860fc7-14df-40c6-a92a-868568ae7a24@kontron.de> <92f51c96-9386-43e4-bd19-422dcd8462b9@kontron.de>
In-Reply-To: <92f51c96-9386-43e4-bd19-422dcd8462b9@kontron.de>
From: Adam Ford <aford173@gmail.com>
Date: Wed, 4 Sep 2024 09:14:08 -0500
Message-ID: <CAHCN7xJn4K5VDpnvH2oqEuiLo08p4gvsQCrobDVOvh4JHspazg@mail.gmail.com>
Subject: Re: [PATCH V5 4/5] phy: freescale: fsl-samsung-hdmi: Use closest divider
To: Frieder Schrempf <frieder.schrempf@kontron.de>
Cc: linux-phy@lists.infradead.org, dominique.martinet@atmark-techno.com, 
	linux-imx@nxp.com, festevam@gmail.com, aford@beaconembedded.com, 
	Sandor.yu@nxp.com, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Marco Felsch <m.felsch@pengutronix.de>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
	Lucas Stach <l.stach@pengutronix.de>, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_071421_639492_80D25449 
X-CRM114-Status: GOOD (  37.53  )
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

T24gV2VkLCBTZXAgNCwgMjAyNCBhdCA4OjU04oCvQU0gRnJpZWRlciBTY2hyZW1wZgo8ZnJpZWRl
ci5zY2hyZW1wZkBrb250cm9uLmRlPiB3cm90ZToKPgo+IE9uIDA0LjA5LjI0IDM6NDAgUE0sIEZy
aWVkZXIgU2NocmVtcGYgd3JvdGU6Cj4gPiBPbiAwNC4wOS4yNCA0OjMyIEFNLCBBZGFtIEZvcmQg
d3JvdGU6Cj4gPj4gQ3VycmVudGx5LCBpZiB0aGUgY2xvY2sgdmFsdWVzIGNhbm5vdCBiZSBzZXQg
dG8gdGhlIGV4YWN0IHJhdGUsCj4gPj4gdGhlIHJvdW5kX3JhdGUgYW5kIHNldF9yYXRlIGZ1bmN0
aW9ucyB1c2UgdGhlIGNsb3Nlc3QgdmFsdWUgZm91bmQgaW4KPiA+PiB0aGUgbG9vay11cC10YWJs
ZS4gIEluIHByZXBhcmF0aW9uIG9mIHJlbW92aW5nIHZhbHVlcyBmcm9tIHRoZSBMVVQKPiA+PiB0
aGF0IGNhbiBiZSBjYWxjdWxhdGVkIGV2ZW5seSB3aXRoIHRoZSBpbnRlZ2VyIGNhbGN1bGF0b3Is
IGl0J3MKPiA+PiBuZWNlc3NhcnkgdG8gZW5zdXJlIHRvIGNoZWNrIGJvdGggdGhlIGxvb2stdXAt
dGFibGUgYW5kIHRoZSBpbnRlZ2VyCj4gPj4gZGl2aWRlciBjbG9jayB2YWx1ZXMgdG8gZ2V0IHRo
ZSBjbG9zZXN0IHZhbHVlcyB0byB0aGUgcmVxdWVzdGVkCj4gPj4gdmFsdWUuICBJdCBkb2VzIHRo
aXMgYnkgbWVhc3VyaW5nIHRoZSBkaWZmZXJlbmNlIGJldHdlZW4gdGhlCj4gPj4gcmVxdWVzdGVk
IGNsb2NrIHZhbHVlIGFuZCB0aGUgY2xvc2VzdCB2YWx1ZSBpbiBib3RoIGludGVnZXIgZGl2aWRl
cgo+ID4+IGNhbHVjYXRvciBhbmQgdGhlIGZyYWN0aW9uYWwgY2xvY2sgbG9vay11cC10YWJsZS4K
PiA+Pgo+ID4+IFdoaWNoIGV2ZXIgaGFzIHRoZSBzbWFsbGVzdCBkaWZmZXJlbmNlIGJldHdlZW4g
dGhlbSBpcyByZXR1cm5lZCBhcwo+ID4+IHRoZSBjbG9lc2VzdCByYXRlLgo+ID4+Cj4gPj4gU2ln
bmVkLW9mZi1ieTogQWRhbSBGb3JkIDxhZm9yZDE3M0BnbWFpbC5jb20+Cj4gPj4gU2lnbmVkLW9m
Zi1ieTogRG9taW5pcXVlIE1hcnRpbmV0IDxkb21pbmlxdWUubWFydGluZXRAYXRtYXJrLXRlY2hu
by5jb20+Cj4gPj4gLS0tCj4gPj4gVjU6ICBObyBDaGFuZ2UKPiA+PiBWNDogIE5ldyB0byBzZXJp
ZXMKPiA+PiAtLS0KPiA+PiAgZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtc2Ftc3VuZy1o
ZG1pLmMgfCA0MCArKysrKysrKysrKysrKystLS0tLQo+ID4+ICAxIGZpbGUgY2hhbmdlZCwgMzEg
aW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKPiA+Pgo+ID4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1zYW1zdW5nLWhkbWkuYyBiL2RyaXZlcnMvcGh5L2Zy
ZWVzY2FsZS9waHktZnNsLXNhbXN1bmctaGRtaS5jCj4gPj4gaW5kZXggOGYyYzAwODJhYTEyLi41
NmIwOGU2ODQxNzkgMTAwNjQ0Cj4gPj4gLS0tIGEvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1m
c2wtc2Ftc3VuZy1oZG1pLmMKPiA+PiArKysgYi9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZz
bC1zYW1zdW5nLWhkbWkuYwo+ID4+IEBAIC01NTAsNyArNTUwLDcgQEAgc3RhdGljIHVuc2lnbmVk
IGxvbmcgcGh5X2Nsa19yZWNhbGNfcmF0ZShzdHJ1Y3QgY2xrX2h3ICpodywKPiA+PiAgc3RhdGlj
IGxvbmcgcGh5X2Nsa19yb3VuZF9yYXRlKHN0cnVjdCBjbGtfaHcgKmh3LAo+ID4+ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICB1bnNpZ25lZCBsb25nIHJhdGUsIHVuc2lnbmVkIGxvbmcgKnBh
cmVudF9yYXRlKQo+ID4+ICB7Cj4gPj4gLSAgICB1MzIgaW50X2Rpdl9jbGs7Cj4gPj4gKyAgICB1
MzIgaW50X2Rpdl9jbGssIGRlbHRhX2ludCwgZGVsdGFfZnJhYzsKPiA+PiAgICAgIGludCBpOwo+
ID4+ICAgICAgdTE2IG07Cj4gPj4gICAgICB1OCBwLCBzOwo+ID4+IEBAIC01NjMsNiArNTYzLDcg
QEAgc3RhdGljIGxvbmcgcGh5X2Nsa19yb3VuZF9yYXRlKHN0cnVjdCBjbGtfaHcgKmh3LAo+ID4+
ICAgICAgZm9yIChpID0gQVJSQVlfU0laRShwaHlfcGxsX2NmZykgLSAxOyBpID49IDA7IGktLSkK
PiA+PiAgICAgICAgICAgICAgaWYgKHBoeV9wbGxfY2ZnW2ldLnBpeGNsayA8PSByYXRlKQo+ID4+
ICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwo+ID4+ICsKPiA+PiAgICAgIC8qIElmIHRoZSBy
YXRlIGlzIGFuIGV4YWN0IG1hdGNoLCByZXR1cm4gaXQgbm93ICovCj4gPj4gICAgICBpZiAocmF0
ZSA9PSBwaHlfcGxsX2NmZ1tpXS5waXhjbGspCj4gPj4gICAgICAgICAgICAgIHJldHVybiBwaHlf
cGxsX2NmZ1tpXS5waXhjbGs7Cj4gPj4gQEAgLTU3OSwxNSArNTgwLDIxIEBAIHN0YXRpYyBsb25n
IHBoeV9jbGtfcm91bmRfcmF0ZShzdHJ1Y3QgY2xrX2h3ICpodywKPiA+PiAgICAgIGlmIChpbnRf
ZGl2X2NsayA9PSByYXRlKQo+ID4+ICAgICAgICAgICAgICByZXR1cm4gaW50X2Rpdl9jbGs7Cj4g
Pj4KPiA+PiAtICAgIC8qIEZhbGwgYmFjayB0byB0aGUgY2xvc2VzdCB2YWx1ZSBpbiB0aGUgTFVU
ICovCj4gPj4gLSAgICByZXR1cm4gcGh5X3BsbF9jZmdbaV0ucGl4Y2xrOwo+ID4+ICsgICAgLyog
Q2FsY3VsYXRlIHRoZSBkaWZmZXJlbmNlcyBhbmQgdXNlIHRoZSBjbG9zZXN0IG9uZSAqLwo+ID4+
ICsgICAgZGVsdGFfZnJhYyA9IChyYXRlIC0gcGh5X3BsbF9jZmdbaV0ucGl4Y2xrKTsKPiA+PiAr
ICAgIGRlbHRhX2ludCA9IChyYXRlIC0gaW50X2Rpdl9jbGspOwo+ID4+ICsKPiA+PiArICAgIGlm
IChkZWx0YV9pbnQgPCBkZWx0YV9mcmFjKQo+ID4+ICsgICAgICAgICAgICByZXR1cm4gaW50X2Rp
dl9jbGs7Cj4gPj4gKyAgICBlbHNlCj4gPj4gKyAgICAgICAgICAgIHJldHVybiBwaHlfcGxsX2Nm
Z1tpXS5waXhjbGs7Cj4KPiBJIHdvdWxkIGFsc28gcHJlZmVyIHRvIHVzZSBhIGhlbHBlciBmb3Ig
Y2FsY3VsYXRpbmcgdGhlIGNsb3Nlc3QgcmF0ZS4KPiBTb21ldGhpbmcgbGlrZToKPgo+IHN0YXRp
YyB1MzIgZnNsX3NhbXN1bmdfaGRtaV9waHlfZ2V0X2Nsb3Nlc3RfcmF0ZSh1bnNpZ25lZCBsb25n
IHJhdGUsCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHUzMiBpbnRfZGl2X2NsaywKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgdTMyIGZyYWNfZGl2X2NsaykKPiB7Cj4gICAgICAgICBpZiAoKHJhdGUgLSBp
bnRfZGl2X2NsaykgPCAocmF0ZSAtIGZyYWNfZGl2X2NsaykpCj4gICAgICAgICAgICAgICAgIHJl
dHVybiBpbnRfZGl2X2NsazsKPgo+ICAgICAgICAgcmV0dXJuIGZyYWNfZGl2X2NsazsKPiB9CgpJ
IGxpa2UgdGhpcyBpZGVhLiAgQXMgRG9taW5pcXVlIG5vdGVkLCB0aGUgaW50X2Rpdl9jbGsgbWln
aHQgYmUKZ3JlYXRlciB0aGFuIHJhdGUsIHNvIEknbGwgYWRkIGFicygpIGhlcmUgd2hlbiBJIHNp
bXBsaWZ5IHRoaXMuCj4KPiBUaGlzIGNhbiBiZSB1c2VkIGFib3ZlOgo+Cj4gcmV0dXJuIGZzbF9z
YW1zdW5nX2hkbWlfcGh5X2dldF9jbG9zZXN0X3JhdGUocmF0ZSwgaW50X2Rpdl9jbGssCj4gcGh5
X3BsbF9jZmdbaV0ucGl4Y2xrKTsKPgo+IEFuZCBhbHNvIGJlbG93IGluIHBoeV9jbGtfc2V0X3Jh
dGUoKToKPgo+IGlmIChmc2xfc2Ftc3VuZ19oZG1pX3BoeV9nZXRfY2xvc2VzdF9yYXRlKHJhdGUs
IGludF9kaXZfY2xrLAo+IHBoeV9wbGxfY2ZnW2ldLnBpeGNsaykgPT0gaW50X2Rpdl9jbGspCj4g
ICAgICAgICAgICAgICAgIHBoeS0+Y3VyX2NmZyA9ICZjYWxjdWxhdGVkX3BoeV9wbGxfY2ZnOwo+
ICAgICAgICAgZWxzZQo+ICAgICAgICAgICAgICAgICBwaHktPmN1cl9jZmcgPSAmcGh5X3BsbF9j
ZmdbaV07Cj4KCkkgbGlrZSB0aGlzIHRvby4KCmFkYW0KPgo+ID4+ICB9Cj4gPj4KPiA+PiAgc3Rh
dGljIGludCBwaHlfY2xrX3NldF9yYXRlKHN0cnVjdCBjbGtfaHcgKmh3LAo+ID4+ICAgICAgICAg
ICAgICAgICAgICAgICAgICB1bnNpZ25lZCBsb25nIHJhdGUsIHVuc2lnbmVkIGxvbmcgcGFyZW50
X3JhdGUpCj4gPj4gIHsKPiA+PiAgICAgIHN0cnVjdCBmc2xfc2Ftc3VuZ19oZG1pX3BoeSAqcGh5
ID0gdG9fZnNsX3NhbXN1bmdfaGRtaV9waHkoaHcpOwo+ID4+IC0gICAgdTMyIGludF9kaXZfY2xr
Owo+ID4+ICsgICAgdTMyIGludF9kaXZfY2xrLCBkZWx0YV9pbnQsIGRlbHRhX2ZyYWM7Cj4gPj4g
ICAgICBpbnQgaTsKPiA+PiAgICAgIHUxNiBtOwo+ID4+ICAgICAgdTggcCwgczsKPiA+PiBAQCAt
NjAyLDE5ICs2MDksMzQgQEAgc3RhdGljIGludCBwaHlfY2xrX3NldF9yYXRlKHN0cnVjdCBjbGtf
aHcgKmh3LAo+ID4+ICAgICAgICAgICAgICBjYWxjdWxhdGVkX3BoeV9wbGxfY2ZnLnBsbF9kaXZf
cmVnc1syXSA9IEZJRUxEX1BSRVAoUkVHMDNfUE1TX1NfTUFTSywgcy0xKTsKPiA+PiAgICAgICAg
ICAgICAgLyogcGxsX2Rpdl9yZWdzIDMtNiBhcmUgZml4ZWQgYW5kIHByZS1kZWZpbmVkIGFscmVh
ZHkgKi8KPiA+PiAgICAgICAgICAgICAgcGh5LT5jdXJfY2ZnICA9ICZjYWxjdWxhdGVkX3BoeV9w
bGxfY2ZnOwo+ID4KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXiB1bm5lZWRlZCB3
aGl0ZXNwYWNlIChjb21tZW50IGJlbG9uZ3MgdG8KPiA+IHBhdGNoIDMvNSkKPiA+Cj4gPj4gKyAg
ICAgICAgICAgIGdvdG8gZG9uZTsKPiA+PiAgICAgIH0gZWxzZSB7Cj4gPj4gICAgICAgICAgICAg
IC8qIE90aGVyd2lzZSwgc2VhcmNoIHRoZSBMVVQgKi8KPiA+PiAtICAgICAgICAgICAgZGV2X2Ri
ZyhwaHktPmRldiwgImZzbF9zYW1zdW5nX2hkbWlfcGh5OiB1c2luZyBmcmFjdGlvbmFsIGRpdmlk
ZXJcbiIpOwo+ID4+IC0gICAgICAgICAgICBmb3IgKGkgPSBBUlJBWV9TSVpFKHBoeV9wbGxfY2Zn
KSAtIDE7IGkgPj0gMDsgaS0tKQo+ID4+IC0gICAgICAgICAgICAgICAgICAgIGlmIChwaHlfcGxs
X2NmZ1tpXS5waXhjbGsgPD0gcmF0ZSkKPiA+PiArICAgICAgICAgICAgZm9yIChpID0gQVJSQVlf
U0laRShwaHlfcGxsX2NmZykgLSAxOyBpID49IDA7IGktLSkgewo+ID4+ICsgICAgICAgICAgICAg
ICAgICAgIGlmIChwaHlfcGxsX2NmZ1tpXS5waXhjbGsgPT0gcmF0ZSkgewo+ID4+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgZGV2X2RiZyhwaHktPmRldiwgImZzbF9zYW1zdW5nX2hkbWlf
cGh5OiB1c2luZyBmcmFjdGlvbmFsIGRpdmlkZXJcbiIpOwo+ID4+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgcGh5LT5jdXJfY2ZnID0gJnBoeV9wbGxfY2ZnW2ldOwo+ID4+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgZ290byBkb25lOwo+ID4+ICsgICAgICAgICAgICAgICAgICAg
IH0KPiA+PiArCj4gPj4gKyAgICAgICAgICAgICAgICAgICAgaWYgKHBoeV9wbGxfY2ZnW2ldLnBp
eGNsayA8IHJhdGUpCj4gPj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICBicmVhazsKPiA+
PiArICAgICAgICAgICAgfQo+ID4+Cj4gPj4gICAgICAgICAgICAgIGlmIChpIDwgMCkKPiA+PiAg
ICAgICAgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsKPiA+PiAtCj4gPj4gLSAgICAgICAg
ICAgIHBoeS0+Y3VyX2NmZyA9ICZwaHlfcGxsX2NmZ1tpXTsKPiA+PiAgICAgIH0KPiA+Pgo+ID4+
ICsgICAgLyogQ2FsY3VsYXRlIHRoZSBkaWZmZXJlbmNlcyBmb3IgZWFjaCBjbG9jayBhZ2FpbnN0
IHRoZSByZXF1ZXN0ZWQgdmFsdWUgKi8KPiA+PiArICAgIGRlbHRhX2ZyYWMgPSAocmF0ZSAtIHBo
eV9wbGxfY2ZnW2ldLnBpeGNsayk7Cj4gPj4gKyAgICBkZWx0YV9pbnQgPSAocmF0ZSAtIGludF9k
aXZfY2xrKTsKPiA+PiArCj4gPj4gKyAgICAvKiBVc2UgdGhlIHZhbHVlIGNsb3Nlc3QgdG8gdGhl
IGRlc2lyZWQgKi8KPiA+PiArICAgIGlmIChkZWx0YV9pbnQgPCBkZWx0YV9mcmFjKQo+ID4+ICsg
ICAgICAgICAgICBwaHktPmN1cl9jZmcgID0gJmNhbGN1bGF0ZWRfcGh5X3BsbF9jZmc7Cj4gPgo+
ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICBeIHVubmVlZGVkIHdoaXRlc3BhY2UKPiA+
Cj4gPiBBcmUgeW91IHN1cmUgdGhhdCB0aGlzIGlzIGNvcnJlY3Q/IFRoZSBjYWxjdWxhdGVkX3Bo
eV9wbGxfY2ZnIGlzIG9ubHkKPiA+IHNldCBhYm92ZSBpZiB0aGVyZSBpcyBhbiBleGFjdCBtYXRj
aCBmb3IgdGhlIGludGVnZXIgZGl2aWRlci4gSSBkb24ndAo+ID4gdGhpbmsgaXQgY29udGFpbnMg
dGhlIGRhdGEgeW91IGV4cGVjdCBoZXJlLCBvciBhbSBJIG1pc3Npbmcgc29tZXRoaW5nPwo+ID4K
PiA+PiArICAgIGVsc2UKPiA+PiArICAgICAgICAgICAgcGh5LT5jdXJfY2ZnID0gJnBoeV9wbGxf
Y2ZnW2ldOwo+ID4+ICtkb25lOgo+ID4+ICAgICAgcmV0dXJuIGZzbF9zYW1zdW5nX2hkbWlfcGh5
X2NvbmZpZ3VyZShwaHksIHBoeS0+Y3VyX2NmZyk7Cj4gPj4gIH0KPiA+PgoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
