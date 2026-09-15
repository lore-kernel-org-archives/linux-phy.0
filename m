Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B3B7C88E75
	for <linux-phy@archiver.kernel.org>; Tue, 15 Sep 2026 10:36:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=joRjD8ke/MQyJ1wHkxkbCNI7lOUzW8IMkSDoyzbPXLY=; b=DidZ24PEdHeqy8
	XtYSf40Z4TR+p56m+qnksMJ0sm8CZHPP533lCtyuTQO0jyR0Rq/cxJmFYqZGaUTR/Qsp1lD6qe1Vi
	drRhdAWTQgcUJmz+XURWuB7n47hAX28yWs1wiUKr+3C9LjjohNqLoYarwqGaxhCGQqrb6M9nOATZu
	OtxjPuTR4QTiqHrf+a8SPh+ke9iIS75GHsgChYx4hWiQVDDCxz45dJ22UUiTW6sva2vem7wj4xej1
	QAEPM9CJbVIPe1bzNPGsOKp9LujVwSaV2anbHzkz69oTMftQKKenF9lXsgeV8tNXWnlsN4AZT8JgT
	AvCBzTBab58enj7/tjKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6QWL-00000005wGA-2VjX;
	Tue, 15 Sep 2026 10:36:13 +0000
Received: from mail-ed2-x06.google.com ([2a00:1450:4864:33::6])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6QWH-00000005wFR-39Z0
	for linux-phy@lists.infradead.org;
	Tue, 15 Sep 2026 10:36:10 +0000
Received: by mail-ed2-x06.google.com with SMTP id 4fb4d7f45d1cf-6a5d5f30dacso2950626a12.0
        for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 03:36:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1789468568; cv=none;
        d=google.com; s=arc-20260327;
        b=fJ05A/UUvwvUC28MvcRhHdEa9J1LE2tus2MQpNMifK9FPMUMoY+vDwt3hSU/iDBwkP
         Ldq9HQ+Bddj0ot1HKnjWw7DfCQfs5SJmVI+1Ae7NAcilVzkC5AQItO6AhUf0CA5yp7++
         DvJE2RGHUvVB0TyhEEapjVe9YKOWdNF33XwjYAbp3hcW28WCEgawRC2otMS/t/zcMVDd
         ByoPGNpKtqw3luY5srPIH6TFXNhrNN6XJ6p8sHPWA3oCyD8JDP4dBogIK7UdL0xIByuc
         S7ueIrY+jZyGC3clmG8CUeDcJNJs4lqW6NnkT22X5bV8f/KSvxJExHBHSUFIosqaAJ6r
         B7xA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=EybIxRu7gh0/uGvNpGNQAsB/2hq7wOMr36eqhjWJ4kA=;
        fh=jccj5s/LIu67lVrTzycfQvXA5O6kH1B9+IRV+q9EIrQ=;
        b=jz+n2j9XoXi1WvlbOm/bL39RKkqTacLOqCaqZEayGbwUT0RZNWEF0Oqpsgy7m/0qBP
         LPfnpTFhI6/dvQZZmP+J3vndSsaoGoGe0+orGBIw9JPTnX1QVbxVClFuBYuq2aVh/WZ9
         TI2Jfz+1FW3QoUkudjP0WWz6Xhn2UKWcEiQYO/On+RplDR4qY1u08m7HmhyN9wBgWEtE
         j7b4wYABRdGDqLmyj75mAx6FBORZZFy9sWiNPqEH8r7iU0q9rE6ELngHV1XZm6Pr+Wqi
         1/WJVwG7fDzNEjN6smk+9VMyNMiTJzS0GMS5qZPFeWQoJM0m33HHteG9Av17QCeGgPGK
         qWXw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789468568; x=1790073368; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=EybIxRu7gh0/uGvNpGNQAsB/2hq7wOMr36eqhjWJ4kA=;
        b=Njqok7yIKs3S9yDKWZ9s4l2d5oqJETQKMQ1YMC45E7YlSwypotX6FQNPzndp7n3y++
         ltxWX+HJaI8ioZERywUVwsjMdVDaN1ReXz1kp273cvUL0HAWDfUxRwEB/yR/nldFh5xg
         1wE3GdyCAOztsK1droyCxTvBiZQlzhD1TL/llScBrHWa0MlJ3teRuiAwcDk+/kWj/4Yh
         v+xTkYVFokD9F2oCJM6Zj13/1rliOSOcdpNeNCEpU7v8xE73QpgqtkDxH0W/J0iEjZAa
         2r+/JyYayJGeCG+Q+y3yeXHfI3cvnOODDK9Pe9X2nZ0P+T1a+HnsxPTmaA/SbH60AvHv
         vfHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789468568; x=1790073368;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=EybIxRu7gh0/uGvNpGNQAsB/2hq7wOMr36eqhjWJ4kA=;
        b=x5LbWVF2tVcG34+HtJgq2BOmQCGS7gqYtUPiqAvPpKWswu3NxnkFlwSVdYUkvqSW4k
         rZOF+Fj8azYqpwflDogFW8fWEBbuTCXYcDSxZ1Tzi3s/ZzqjUzcrxUSVmCYeGNj29Snq
         XM0eqN07K1iElb+fhD4X23L2zKXKueKOP1iJ0IQ+rWXHNT7+OHoDM1ThWw8vco0CQOTa
         DRG4Ql+dwlBLD4UQOeOOUhXoLecfzcHMkP1t/Gk3VW45QQbiD3hKquLDaFxnu6rEQbD/
         TZmt5XdVKacREwNwxlLKQTkH+63VLgZIRDNq5eidAfx5lXqkmUEPcwH74a4MvZFgHiDj
         3nzg==
X-Forwarded-Encrypted: i=1; AKwUvBx+pk8jeE9z/jyI8VKdHoI/qP/6ysZeXOOhtFy/zKHEIYwBCgwjjKoQpDmEp6HqZzukmhEOep95a3A=@lists.infradead.org
X-Gm-Message-State: AFuF++kz4IvTXCuMF/2SBKiA442TL1lYlf1KLbCyncn3k75oiazGFTaH
	HytM8XrY4Skl5u3Q1QfRsEMvoApi9zp+QWogJ354dpem5YBWW9iZcoZ/pmIUp433X0TyQU0VTpo
	Dt75bvOnamNvV1H+29KNPy5GY7xGgsx0Xi+8c4GdgcA==
X-Gm-Gg: AYBFou35cogk5jF5fIQ5Ond/oAI95EzRgE82paxorCjNI2OcrRXuS0xuVAMv0OMMUkm
	LEb8iOUALuReoZmh1vzabtcWAvS6oCIl0McsDxFF8KWqOywkXfLWDYGL0C6QAaqkPpdqTbZTanp
	k8XMs/b6SodlpHnPEkRMNQ5kgSWB6QbbemUk9fLM60zdAEs5aw1vcND3UB/AFlyQARe7ZP21dxd
	IwueoOS1lsDR8lkiqnAq7pe9MwK0M6xW2Ly/hkmImsuFQKqzBVF03HMCRaVgv+atswfbmllFStC
	yxiyNzEHpoO+9wATRLtMqNcHLfTr4NvI2FZUR53iX5D+kkjvy+huDmKL7g==
X-Received: by 2002:a17:907:80c:b0:c29:1678:de36 with SMTP id
 a640c23a62f3a-c29b8756facmr375515766b.46.1789468567393; Tue, 15 Sep 2026
 03:36:07 -0700 (PDT)
MIME-Version: 1.0
References: <20260913185849.907479-1-coiaprant@gmail.com> <20260913185849.907479-7-coiaprant@gmail.com>
 <20260914194421.944211F00893@smtp.kernel.org>
In-Reply-To: <20260914194421.944211F00893@smtp.kernel.org>
From: Coia Prant <coiaprant@gmail.com>
Date: Tue, 15 Sep 2026 18:35:54 +0800
X-Gm-Features: AcwNN1VJezYkhl7wtVaby68YugY1136mwuoA1MxlIq9aSNGHJATVbB4iAMAwGQo
Message-ID: <CALj3r0jHGpLSRgErU5Vy3xO-CKMsdY_6ixAczeapx32yFbSziA@mail.gmail.com>
Subject: Re: [PATCH net-next v5 06/11] net: pcs: xpcs: add ANRESTART support
 for SGMII link recovery
To: sashiko-reviews@lists.linux.dev
Cc: neil.armstrong@linaro.org, olteanv@gmail.com, vkoul@kernel.org, 
	conor+dt@kernel.org, linux-phy@lists.infradead.org, 
	wsa+renesas@sang-engineering.com, robh@kernel.org, devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_033609_822415_E000B425 
X-CRM114-Status: GOOD (  24.88  )
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

PHNhc2hpa28tYm90QGtlcm5lbC5vcmc+IOS6jjIwMjblubQ55pyIMTXml6XlkajkuowgMDM6NDTl
hpnpgZPvvJoKPgo+IFRoYW5rIHlvdSBmb3IgeW91ciBjb250cmlidXRpb24hIFNhc2hpa28gQUkg
cmV2aWV3IGZvdW5kIDEgcG90ZW50aWFsIGlzc3VlKHMpIHRvIGNvbnNpZGVyOgo+IC0gW01lZGl1
bV0gVW5jb25kaXRpb25hbGx5IGFwcGx5aW5nIHRoZSBSSzM1NjggU0dNSUkgQU4gcmVzdGFydCBx
dWlyayBjYXVzZXMgYW4gaW5maW5pdGUgaW50ZXJydXB0IHN0b3JtIG9yIHdvcmtxdWV1ZSBsb29w
IG9uIHN0YW5kYXJkIGludGVycnVwdC1kcml2ZW4gRFcgWFBDUyBjb25maWd1cmF0aW9ucy4KPiAt
LQo+Cj4gY29tbWl0IDc4ZWI1NDg4ZDBjMGQzZmU5ZjYwOWU1NmU1OTcxMGNlZDUyODU2ZmEKPiBB
dXRob3I6IENvaWEgUHJhbnQgPGNvaWFwcmFudEBnbWFpbC5jb20+Cj4KPiBuZXQ6IHBjczogeHBj
czogYWRkIEFOUkVTVEFSVCBzdXBwb3J0IGZvciBTR01JSSBsaW5rIHJlY292ZXJ5Cj4KPiBUaGlz
IHBhdGNoIGFkZHMgQk1DUl9BTlJFU1RBUlQgdG8gRFcgWFBDUyB3aGVuIGNvbmZpZ3VyaW5nIGF1
dG8tbmVnb3RpYXRpb24KPiBhbmQgd2hlbiB0aGUgbGluayBnb2VzIGRvd24uIFRoaXMgaXMgaW50
ZW5kZWQgdG8gcmVzb2x2ZSBhbiBpc3N1ZSBvbiBzb21lCj4gcGxhdGZvcm1zIChsaWtlIFJLMzU2
OCkgd2hlcmUgdGhlIFBDUyBkb2VzIG5vdCBhdXRvbWF0aWNhbGx5IHJlc3RhcnQKPiBhdXRvLW5l
Z290aWF0aW9uIHdoZW4gdGhlIGxpbmsgZ29lcyBkb3duIGFuZCBjb21lcyBiYWNrIHVwLgo+Cj4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvcGNzL3Bjcy14cGNzLmMgYi9kcml2ZXJzL25ldC9w
Y3MvcGNzLXhwY3MuYwo+ID4gaW5kZXggMDMzN2UyYmNjMDEyNS4uOGMzODc1YjY5ODViOSAxMDA2
NDQKPiA+IC0tLSBhL2RyaXZlcnMvbmV0L3Bjcy9wY3MteHBjcy5jCj4gPiArKysgYi9kcml2ZXJz
L25ldC9wY3MvcGNzLXhwY3MuYwo+IFsgLi4uIF0KPiA+IEBAIC0xMDkzLDkgKzExMDcsMTggQEAg
c3RhdGljIGludCB4cGNzX2dldF9zdGF0ZV9jMzdfc2dtaWkoc3RydWN0IGR3X3hwY3MgKnhwY3Ms
Cj4gPiAgICAgICAgICAgICAgIHJldHVybiAwOwo+ID4gICAgICAgfQo+ID4KPiA+IC0gICAgIC8q
IENsZWFyIEFOIGNvbXBsZXRlIHN0YXR1cyBvciBpbnRlcnJ1cHQgKi8KPiA+IC0gICAgIGlmIChz
dGF0ZS0+YW5fY29tcGxldGUpCj4gPiAtICAgICAgICAgICAgIHhwY3Nfd3JpdGUoeHBjcywgTURJ
T19NTURfVkVORDIsIERXX1ZSX01JSV9BTl9JTlRSX1NUUywgMCk7Cj4gPiArICAgICBpZiAoc3Rh
dGUtPmFuX2NvbXBsZXRlKSB7Cj4gPiArICAgICAgICAgICAgIC8qIENsZWFyIEFOIGNvbXBsZXRl
IHN0YXR1cyBvciBpbnRlcnJ1cHQgKi8KPiA+ICsgICAgICAgICAgICAgcmV0ID0geHBjc193cml0
ZSh4cGNzLCBNRElPX01NRF9WRU5EMiwgRFdfVlJfTUlJX0FOX0lOVFJfU1RTLCAwKTsKPiA+ICsg
ICAgICAgICAgICAgaWYgKHJldCA8IDApCj4gPiArICAgICAgICAgICAgICAgICAgICAgcmV0dXJu
IHJldDsKPiA+ICsKPiA+ICsgICAgICAgICAgICAgLyogSW5pdGlhdGUgdGhlIG5leHQgcm91bmQg
b2YgQU4gKi8KPiA+ICsgICAgICAgICAgICAgcmV0ID0geHBjc19tb2RpZnkoeHBjcywgTURJT19N
TURfVkVORDIsIE1JSV9CTUNSLCBCTUNSX0FOUkVTVEFSVCwKPiA+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgQk1DUl9BTlJFU1RBUlQpOwo+Cj4gW1NldmVyaXR5OiBNZWRpdW1dCj4g
Q291bGQgdW5jb25kaXRpb25hbGx5IGFwcGx5aW5nIHRoaXMgQU4gcmVzdGFydCBxdWlyayBjYXVz
ZSBhbiBpbmZpbml0ZQo+IGludGVycnVwdCBzdG9ybSBvciBNRElPIHBvbGxpbmcgbG9vcCBvbiBz
dGFuZGFyZCBEVyBYUENTIGNvbmZpZ3VyYXRpb25zPwo+Cj4gSWYgYSBjYWJsZSBpcyBkaXNjb25u
ZWN0ZWQgb24gYW4gU0dNSUkgcG9ydCwgdGhlIFBIWSBtYXkgY29udGludW91c2x5IHRyYW5zbWl0
Cj4gdGhlICdMaW5rIERvd24nIEFOIGNvbmZpZ3VyYXRpb24gd29yZC4gV2hlbiB0aGUgTUFDIGNv
bXBsZXRlcyBBTiBhbmQgZ2VuZXJhdGVzCj4gYW4gaW50ZXJydXB0LCB4cGNzX2dldF9zdGF0ZV9j
Mzdfc2dtaWkoKSBpcyBjYWxsZWQuIEl0IGNsZWFycyB0aGUgaW50ZXJydXB0Cj4gYW5kIHVuY29u
ZGl0aW9uYWxseSBzZXRzIEJNQ1JfQU5SRVNUQVJULgo+Cj4gV2lsbCB0aGlzIGNhdXNlIHRoZSBo
YXJkd2FyZSB0byByZXNldCBpdHMgQU4gc3RhdGUgbWFjaGluZSwgaW1tZWRpYXRlbHkKPiBjb21w
bGV0ZSBBTiBhZ2FpbiB3aXRoIHRoZSBQSFkncyBjb250aW51b3VzICdMaW5rIERvd24nIHdvcmQs
IGFuZCBmaXJlIGFub3RoZXIKPiBpbnRlcnJ1cHQsIGNyZWF0aW5nIGFuIGVuZGxlc3MgbG9vcD8K
Pgo+IFNob3VsZCB0aGlzIGJlaGF2aW9yIGJlIGlzb2xhdGVkIHRvIG9ubHkgdGhlIHBsYXRmb3Jt
cyB0aGF0IHJlcXVpcmUgdGhlIHF1aXJrCj4gKGxpa2UgUkszNTY4KSwgcmF0aGVyIHRoYW4gYXBw
bGllZCB0byBhbGwgaGFyZHdhcmUgdXNpbmcgdGhlIERlc2lnbldhcmUgWFBDUyBJUD8KClRoYW5r
cyBmb3IgdGhlIHJldmlldy4gVGhlIEhpZ2ggaXRlbSBkZXNjcmliZXMgaW50ZW5kZWQgYmVoYXZp
b3VyCnJhdGhlciB0aGFuIGEgZGVmZWN0LgoKVGhlIHN0YXRlIHlvdSBpZGVudGlmaWVkIOKAlCBB
TkNNUExUIGxhdGNoZWQgd2l0aCBMTktTVFMgY2xlYXIg4oCUIGlzIHRoZQpub3JtYWwgc3RhdGUg
b2YgYW4gU0dNSUkgcG9ydCB3aG9zZSBsaW5rIHBhcnRuZXIncyBtZWRpYSBzaWRlIGlzIGRvd24u
ClRoZSBwYXJ0bmVyIFBIWSBrZWVwcyBzZW5kaW5nIGEgTE5LU1RTPTAgY29uZmlnIHdvcmQsIHNv
IHRoZSBQQ1MKY29tcGxldGVzIEFOIGFuZCBsYXRjaGVzIEFOQ01QTFQgd2hpbGUgTE5LU1RTIHN0
YXlzIGNsZWFyLgoKVGhhdCBpcyBwcmVjaXNlbHkgdGhlIHN0YXRlIHRoZSByZXN0YXJ0IGlzIG1l
YW50IHRvIGhhbmRsZS4gV2l0aG91dCBpdCwKdGhlIFBDUyBzdGF5cyBpbiB0aGF0IHN0YXRlIGlu
ZGVmaW5pdGVseSBhbmQgbmV2ZXIgcmUtcnVucyBBTiB3aGVuIHRoZQpwYXJ0bmVyIGNvbWVzIGJh
Y2ssIHNvIHRoZSBsaW5rIGNhbiBuZXZlciByZWNvdmVyLiBSZS1pc3N1aW5nIEFOUkVTVEFSVApv
biBlYWNoIHBvbGwgd2hpbGUgdGhlIGxpbmsgaXMgZG93biBpcyB0aGUgbWVjaGFuaXNtIHRoYXQg
bWFrZXMKcmVjb3ZlcnkgcG9zc2libGU6IG9uIHRoZSBuZXh0IHBvbGwgdGhlIFBDUyByZS1ydW5z
IEFOLCBhbmQgaWYgdGhlCnBhcnRuZXIgaGFzIGNvbWUgYmFjayB3aXRoIExOS1NUUz0xIHRoZSBs
aW5rIGNvbWVzIHVwLgoKT24gdGhlIHBvbGwgcmF0ZTogeHBjcy0+cGNzLnBvbGwgaXMgc2V0IGZv
ciBSSzM1NjgsIHNvIHRoaXMgcnVucyBhdApwaHlsaW5rJ3MgcmVzb2x2ZSBpbnRlcnZhbCwgcm91
Z2hseSBvbmNlIHBlciBzZWNvbmQuIEEgc2luZ2xlIE1ESU8KcmVnaXN0ZXIgd3JpdGUgcGVyIHNl
Y29uZCBpcyBub3QgYSBjb25jZXJuLiBPbiBpbnRlcnJ1cHQtZHJpdmVuIHBhcnRzCnRoZSBiZWhh
dmlvdXIgd2FzIHRlc3RlZCBieSBXYW5neHVuIGFuZCBubyBhZHZlcnNlIGVmZmVjdCB3YXMgb2Jz
ZXJ2ZWQuCgpUaGFua3MsCkNvaWEKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
