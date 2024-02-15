Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AB22C4829E
	for <linux-phy@archiver.kernel.org>; Thu, 15 Feb 2024 15:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wwbj0ZRMZciIUrGice10ovQ6Xe3vknif0r39M6jcUTc=; b=h27Ttu4rFa21Xw
	q5a1OL4A7JWnIpN6y+lrsxuBo600JWkmxEJPfVmMRQWp6YfreEdSgoAUJ9pu9m3SPWOC/htQZCVKh
	GWizL+Bbo/m5wc8teC09UXXKW9MlWK7UluqGpMV7J4Ao/tjdmn/s56a4v2Dixgfb6PvpG0H1YiaB5
	OjhxLplepMAYE9SPp8DLhVWR46GsIs8O5RXXapJSjQDqjWShJpYJu7uTKTUtM2z/qY2bkNz3voBqj
	uQyGkAL63Th/gCQ2MbCei3ozZYL8k7espdYk5nMB54n8q4Z1KQVt39VZt1S2GURQOwSZ14UepdjSJ
	fl3UnN6Dl+fsP4ptaNkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1radqX-0000000GnQ3-45VD;
	Thu, 15 Feb 2024 15:40:21 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1radqV-0000000GnNk-0xV3
	for linux-phy@lists.infradead.org;
	Thu, 15 Feb 2024 15:40:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1708011617;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+yANVhkKBRg6rMKd200NRYNJJEXP2I/1oNYT8u0WSZ8=;
	b=dg144ddckQcOC52Df1fvZJsJ5u+9BRvkmiT2xzEG2juGczijKPs5Xip+vG/7gLO7rjUtyV
	juxFaGoeEWqmlWtLntQjWGTMAh4vchmWxkYahrc06ol91xRJb3RBssluEojOptxEWgik2d
	imyhWU0oqoVhLglk0zTDbVe1PJ0VbaM=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-693-ANZlxokyM7yQM8fPFdEDqw-1; Thu, 15 Feb 2024 10:40:15 -0500
X-MC-Unique: ANZlxokyM7yQM8fPFdEDqw-1
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-68ef09a0d44so694796d6.0
        for <linux-phy@lists.infradead.org>; Thu, 15 Feb 2024 07:40:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708011615; x=1708616415;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+yANVhkKBRg6rMKd200NRYNJJEXP2I/1oNYT8u0WSZ8=;
        b=VC8bCbzuL2xPnn/E5C+QUHFXGHZEhsiOsgUYTDCS9dg6ugP0E/ovPt4cf1O+0qfdhU
         fOf5zlCrz/7GZpMH7Kc7uW+NMJ78QA9U5w684dX5VllRDnJuzxxdenPQGpyc4rbOQRpE
         nvu4VYMbrKR+shBxtuGp5UKqhEYIqt/B74FiQemJpa5RHcE+cZws06+NgAqam+EpQBG5
         jVcGODl3gXtbmAenKJlXuj0GiTNja/tJF7Ll6rWBZe7+8JpmUGNsQagFSjFhohDjsP2Y
         KXh52myt8REefVqrENjU7UJMskwtrIJiBMEHhU3k4EVMV0tikLZcjukDxajnd5stKgog
         VOnw==
X-Forwarded-Encrypted: i=1; AJvYcCUSYT47pUMKqDNB1GkVmBWPUOpV69rk4tBlxyh6wr6BOygG+J8/1ibUd/SfXel7et7+CST6Gb6nCJOI47RYB6bbvHpxmFuAr3yKADEoJg==
X-Gm-Message-State: AOJu0Yy/x0PyIgT/lSSKaHoTu1KrfFcwFYyugbQ+64JBpdzOMgLmVpMu
	h9oSxVMeqn3m+1LYwEmzLkGHvGNg740CJzZZCdM0+3QqmAy0wGaTQdXQGHQhWMdhyVxqrYJLvLg
	oAORHBDEhPmqd3CysK3UEUM+haE3BQSu2YBBnZe67B/mub+jyeZbvblYXGu5wMto=
X-Received: by 2002:ad4:4f46:0:b0:68f:1c80:d78e with SMTP id eu6-20020ad44f46000000b0068f1c80d78emr1490738qvb.0.1708011615184;
        Thu, 15 Feb 2024 07:40:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFbtlVC/hGxHqWa+JvIvatJrzEI/QuA/8sl8WvotcGQkSTUkqacb3XlI7fMhv/pLNBSQy8g9w==
X-Received: by 2002:ad4:4f46:0:b0:68f:1c80:d78e with SMTP id eu6-20020ad44f46000000b0068f1c80d78emr1490716qvb.0.1708011614822;
        Thu, 15 Feb 2024 07:40:14 -0800 (PST)
Received: from pstanner-thinkpadt14sgen1.remote.csb (nat-pool-muc-t.redhat.com. [149.14.88.26])
        by smtp.gmail.com with ESMTPSA id oh9-20020a056214438900b00684225ef3a0sm750964qvb.93.2024.02.15.07.40.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Feb 2024 07:40:14 -0800 (PST)
Message-ID: <1b2ffe636a19faef87b9c48fee6d17bfb9f1a3bf.camel@redhat.com>
Subject: Re: [PATCH v3 00/18] Add suspend to ram support for PCIe on J7200
From: Philipp Stanner <pstanner@redhat.com>
To: Thomas Richard <thomas.richard@bootlin.com>, Linus Walleij
 <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, Andy
 Shevchenko <andy@kernel.org>, Tony Lindgren <tony@atomide.com>, Haojian
 Zhuang <haojian.zhuang@linaro.org>,  Vignesh R <vigneshr@ti.com>, Aaro
 Koskinen <aaro.koskinen@iki.fi>, Janusz Krzysztofik <jmkrzyszt@gmail.com>,
 Andi Shyti <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>, Vinod
 Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Lorenzo Pieralisi
 <lpieralisi@kernel.org>, Krzysztof =?UTF-8?Q?Wilczy=C5=84ski?=
 <kw@linux.com>,  Rob Herring <robh@kernel.org>, Bjorn Helgaas
 <bhelgaas@google.com>
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org, 
 linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-pci@vger.kernel.org, gregory.clement@bootlin.com,
 theo.lebrun@bootlin.com,  thomas.petazzoni@bootlin.com, u-kumar1@ti.com,
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Andy Shevchenko
 <andy.shevchenko@gmail.com>
Date: Thu, 15 Feb 2024 16:40:10 +0100
In-Reply-To: <20240102-j7200-pcie-s2r-v3-0-5c2e4a3fac1f@bootlin.com>
References: <20240102-j7200-pcie-s2r-v3-0-5c2e4a3fac1f@bootlin.com>
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_074019_379317_AF4C47BC 
X-CRM114-Status: GOOD (  29.84  )
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

T24gVGh1LCAyMDI0LTAyLTE1IGF0IDE2OjE3ICswMTAwLCBUaG9tYXMgUmljaGFyZCB3cm90ZToK
PiBUaGlzIGFkZCBzdXNwZW5kIHRvIHJhbSBzdXBwb3J0IGZvciB0aGUgUENJZSAoUkMgbW9kZSkg
b24gSjcyMDAKPiBwbGF0Zm9ybS4KPiAKPiBJbiBSQyBtb2RlLCB0aGUgcmVzZXQgcGluIGZvciBl
bmRwb2ludHMgaXMgbWFuYWdlZCBieSBhIGdwaW8gZXhwYW5kZXIKPiBvbiBhCj4gaTJjIGJ1cy4g
VGhpcyBwaW4gc2hhbGwgYmUgbWFuYWdlZCBpbiBzdXNwZW5kX25vaXJxKCkgYW5kCj4gcmVzdW1l
X25vaXJxKCkuCj4gVGhlIHN1c3BlbmQvcmVzdW1lIGhhcyBiZWVuIG1vdmVkIHRvIHN1c3BlbmRf
bm9pcnEoKS9yZXN1bWVfbm9pcnEoKQo+IGZvcgo+IHBjYTk1M3ggKGV4cGFuZGVyKSBhbmQgcGlu
Y3RybC1zaW5nbGUuCj4gCj4gVG8gZG8gaTJjIGFjY2Vzc2VzIGR1cmluZyBzdXNwZW5kX25vaXJx
L3Jlc3VtZV9ub2lycSwgd2UgbmVlZCB0bwo+IGZvcmNlIHRoZQo+IHdha2V1cCBvZiB0aGUgaTJj
IGNvbnRyb2xsZXIgKHdoaWNoIGlzIGF1dG9zdXNwZW5kZWQpIGR1cmluZyBzdXNwZW5kCj4gY2Fs
bGJhY2suIAo+IEl0J3MgdGhlIG9ubHkgd2F5IHRvIHdha2V1cCB0aGUgY29udHJvbGxlciBpZiBp
dCdzIGF1dG9zdXNwZW5kZWQsIGFzCj4gcnVudGltZSBwbSBpcyBkaXNhYmxlZCBpbiBzdXNwZW5k
X25vaXJxIGFuZCByZXN1bWVfbm9pcnEuCj4gCj4gVGhlIG1haW4gY2hhbmdlIGluIHRoaXMgdjMg
aXMgdGhlIHJlbW92YWwgb2YgdGhlIHByb2JlIGJvb2xlYW4gZm9yCj4gdGhlCj4gZnVuY3Rpb25z
IHdpel9jbG9ja19wcm9iZSgpIGFuZCBjZG5zX3BjaWVfaG9zdF9zZXR1cCgpLgo+IFRoZWlyIGNv
bnRlbnRzIHdlcmUgc3BsaXQgaW4gbXVsdGlwbGUgZnVuY3Rpb25zIHdoaWNoIGFyZSBjYWxsZWQg
aW4KPiB0aGUKPiByZXN1bWVfbm9pcnEoKSBjYWxsYmFja3MuCj4gCj4gU2lnbmVkLW9mZi1ieTog
VGhvbWFzIFJpY2hhcmQgPHRob21hcy5yaWNoYXJkQGJvb3RsaW4uY29tPgo+IC0tLQo+IENoYW5n
ZXMgaW4gdjM6Cj4gLSBwaW5jdHJsLXNpbmdsZTogc3BsaXQgcGF0Y2ggaW4gdHdvIHBhcnRzLCBh
IGZpcnN0IHBhdGNoIHRvIHJlbW92ZQo+IHRoZQo+IMKgIGRlYWQgY29kZSwgYSBzZWNvbmQgdG8g
bW92ZSBzdXNwZW5kKCkvcmVzdW1lKCkgY2FsbGJhY2tzIHRvIG5vaXJxLgo+IC0gaTJjLW9tYXA6
IGFkZCBhIGNvbW1lbnRzIGFib3ZlIHRoZSBzdXNwZW5kX25vaXJxKCkgY2FsbGJhY2suCj4gLSBt
dXg6IG5vdyBtdXhfY2hpcF9yZXN1bWUoKSB0cnkgdG8gcmVzdG9yZXMgYWxsIG11eGVzLCB0aGVu
IHJldHVybiAwCj4gaWYKPiDCoCBhbGwgaXMgb2sgb3IgdGhlIGZpcnN0IGZhaWx1cmUuCj4gLSBt
bWlvOiBmaXggY29tbWl0IG1lc3NhZ2UuCj4gLSBwaHktajcyMWUtd2l6OiBhZGQgYSBwYXRjaCB0
byB1c2UgZGV2X2Vycl9wcm9iZSgpIGluc3RlYWQgb2YKPiBkZXZfZXJyKCkgaW4KPiDCoCB0aGUg
d2l6X2Nsb2NrX2luaXQoKSBmdW5jdGlvbi4KPiAtIHBoeS1qNzIxZS13aXo6IHJlbW92ZSBwcm9i
ZSBib29sZWFuIGZvciB0aGUgd2l6X2Nsb2NrX2luaXQoKSwKPiByZW5hbWUgdGhlCj4gwqAgZnVu
Y3Rpb24gdG8gd2l6X2Nsb2NrX3Byb2JlKCksIGV4dHJhY3QgaGFyZHdhcmUgY29uZmlndXJhdGlv
biBwYXJ0Cj4gaW4gYQo+IMKgIG5ldyBmdW5jdGlvbiB3aXpfY2xvY2tfaW5pdCgpLgo+IC0gcGh5
LWNhZGVuY2UtdG9ycmVudDogdXNlIGRldl9lcnJfcHJvYmUoKSBhbmQgZml4IGNvbW1pdCBtZXNz
YWdlcwo+IC0gcGNpZS1jYWRlbmNlLWhvc3Q6IHJlbW92ZSBwcm9iZSBib29sZWFuIGZvciB0aGUK
PiBjZG5zX3BjaWVfaG9zdF9zZXR1cCgpCj4gwqAgZnVuY3Rpb24gYW5kIGV4dHJhY3QgdGhlIGxp
bmsgc2V0dXAgcGFydCBpbiBhIG5ldyBmdW5jdGlvbgo+IMKgIGNkbnNfcGNpZV9ob3N0X2xpbmtf
c2V0dXAoKS4KPiAtIHBjaWUtY2FkZW5jZS1ob3N0OiBtYWtlIGNkbnNfcGNpZV9ob3N0X2luaXQo
KSBnbG9iYWwuCj4gLSBwY2ktajcyMWU6IHVzZSB0aGUgY2Ruc19wY2llX2hvc3RfbGlua19zZXR1
cCgpCj4gY2Ruc19wY2llX2hvc3RfaW5pdCgpCj4gwqAgZnVuY3Rpb25zIGluIHRoZSByZXN1bWVf
bm9pcnEoKSBjYWxsYmFjay4KPiAtIExpbmsgdG8gdjI6Cj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvci8yMDI0MDEwMi1qNzIwMC1wY2llLXMyci12Mi0wLThlNGY3ZDIyOGVjMkBib290bGluLmNv
bQo+IAo+IENoYW5nZXMgaW4gdjI6Cj4gLSBhbGw6IGZpeCBjb21taXRzIG1lc3NhZ2VzLgo+IC0g
YWxsOiB1c2UgREVGSU5FX05PSVJRX0RFVl9QTV9PUFMgYW5kIHBtX3NsZWVwX3B0ciBtYWNyb3Mu
Cj4gLSBhbGw6IHJlbW92ZSB1c2VsZXNzICNpZmRlZiBDT05GSUdfUE0uCj4gLSBwaW5jdHJsLXNp
bmdsZTogZHJvcCBkZWFkIGNvZGUKPiAtIG11eDogYWRkIG11eF9jaGlwX3Jlc3VtZSgpIGZ1bmN0
aW9uIGluIG11eCBjb3JlLgo+IC0gbW1pbzogcmVzdW1lIHNlcXVlbmNlIGlzIG5vdyBhIGNhbGwg
dG8gbXV4X2NoaXBfcmVzdW1lKCkuCj4gLSBwaHktY2FkZW5jZS10b3JyZW50OiBmaXggdHlwbyBp
biByZXN1bWUgc2VxdWVuY2UKPiAocmVzZXRfY29udHJvbF9hc3NlcnQoKQo+IMKgIGluc3RlYWQg
b2YgcmVzZXRfY29udHJvbF9wdXQoKSkuCj4gLSBwaHktY2FkZW5jZS10b3JyZW50OiB1c2UgUEhZ
IGluc3RlYWQgb2YgcGh5Lgo+IC0gcGNpLWo3MjFlOiBkbyBub3Qgc2hhZG93IGNkbnNfcGNpZV9o
b3N0X3NldHVwIHJldHVybiBjb2RlIGluIHJlc3VtZQo+IMKgIHNlcXVlbmNlLgo+IC0gcGNpLWo3
MjFlOiBkcm9wIGRlYWQgY29kZS4KPiAtIExpbmsgdG8gdjE6Cj4gaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvci8yMDI0MDEwMi1qNzIwMC1wY2llLXMyci12MS0wLTg0ZTU1ZGE1MjQwMEBib290bGlu
LmNvbQo+IAo+IC0tLQo+IFRob21hcyBSaWNoYXJkICgxNSk6Cj4gwqDCoMKgwqDCoCBncGlvOiBw
Y2E5NTN4OiBtb3ZlIHN1c3BlbmQoKS9yZXN1bWUoKSB0bwo+IHN1c3BlbmRfbm9pcnEoKS9yZXN1
bWVfbm9pcnEoKQo+IMKgwqDCoMKgwqAgcGluY3RybDogcGluY3RybC1zaW5nbGU6IHJlbW92ZSBk
ZWFkIGNvZGUgaW4gc3VzcGVuZCgpIGFuZAo+IHJlc3VtZSgpIGNhbGxiYWNrcwo+IMKgwqDCoMKg
wqAgcGluY3RybDogcGluY3RybC1zaW5nbGU6IG1vdmUgc3VzcGVuZCgpL3Jlc3VtZSgpIGNhbGxi
YWNrcyB0bwo+IG5vaXJxCj4gwqDCoMKgwqDCoCBpMmM6IG9tYXA6IHdha2V1cCB0aGUgY29udHJv
bGxlciBkdXJpbmcgc3VzcGVuZCgpIGNhbGxiYWNrCj4gwqDCoMKgwqDCoCBtdXg6IGFkZCBtdXhf
Y2hpcF9yZXN1bWUoKSBmdW5jdGlvbgo+IMKgwqDCoMKgwqAgcGh5OiB0aTogcGh5LWo3MjFlLXdp
ejogdXNlIGRldl9lcnJfcHJvYmUoKSBpbnN0ZWFkIG9mCj4gZGV2X2VycigpCj4gwqDCoMKgwqDC
oCBwaHk6IHRpOiBwaHktajcyMWUtd2l6OiBzcGxpdCB3aXpfY2xvY2tfaW5pdCgpIGZ1bmN0aW9u
Cj4gwqDCoMKgwqDCoCBwaHk6IHRpOiBwaHktajcyMWUtd2l6OiBhZGQgcmVzdW1lIHN1cHBvcnQK
PiDCoMKgwqDCoMKgIHBoeTogY2FkZW5jZS10b3JyZW50OiBleHRyYWN0IGNhbGxzIHRvIGNsa19n
ZXQgZnJvbQo+IGNkbnNfdG9ycmVudF9jbGsKPiDCoMKgwqDCoMKgIHBoeTogY2FkZW5jZS10b3Jy
ZW50OiByZWdpc3RlciByZXNldHMgZXZlbiBpZiB0aGUgcGh5IGlzCj4gYWxyZWFkeSBjb25maWd1
cmVkCj4gwqDCoMKgwqDCoCBwaHk6IGNhZGVuY2UtdG9ycmVudDogYWRkIGFscmVhZHlfY29uZmln
dXJlZCB0byBzdHJ1Y3QKPiBjZG5zX3RvcnJlbnRfcGh5Cj4gwqDCoMKgwqDCoCBwaHk6IGNhZGVu
Y2UtdG9ycmVudDogcmVtb3ZlIG5vb3Bfb3BzIHBoeSBvcGVyYXRpb25zCj4gwqDCoMKgwqDCoCBw
aHk6IGNhZGVuY2UtdG9ycmVudDogYWRkIHN1c3BlbmQgYW5kIHJlc3VtZSBzdXBwb3J0Cj4gwqDC
oMKgwqDCoCBQQ0k6IGNhZGVuY2U6IGV4dHJhY3QgbGluayBzZXR1cCBzZXF1ZW5jZSBmcm9tCj4g
Y2Ruc19wY2llX2hvc3Rfc2V0dXAoKQo+IMKgwqDCoMKgwqAgUENJOiBjYWRlbmNlOiBzZXQgY2Ru
c19wY2llX2hvc3RfaW5pdCgpIGdsb2JhbAo+IAo+IFRow6lvIExlYnJ1biAoMyk6Cj4gwqDCoMKg
wqDCoCBtdXg6IG1taW86IGFkZCByZXN1bWUgc3VwcG9ydAo+IMKgwqDCoMKgwqAgUENJOiBqNzIx
ZTogYWRkIHJlc2V0IEdQSU8gdG8gc3RydWN0IGo3MjFlX3BjaWUKPiDCoMKgwqDCoMKgIFBDSTog
ajcyMWU6IGFkZCBzdXNwZW5kIGFuZCByZXN1bWUgc3VwcG9ydAoKCkZvciB0aGUgUENJIHBhdGNo
ZXMgQmpvcm4gaXMgbW9zdCBsaWtlbHkgZ29pbmcgdG8gYXNrIHlvdSB0byBhZGp1c3QKdGhlbSB0
byBQQ0kncyBjb21tb24gY29tbWl0IHN0eWxlOyBzZWUgaGVyZSBbMV0KCkluIHBhcnRpY3VsYXIs
IFBDSSAoYWZhaWspIGhhcyBubyBjb252ZW50aW9uIGZvciBuYW1pbmcgc3ViY29tcG9uZW50cwpz
dWNoIGFzIGo3MjFlIGFuZCB0aGUgaW5mbyBmb2xsb3dpbmcgdGhlIDogaXMgd3JpdHRlbiBiZWdp
bm5pbmcgd2l0aCBhbgp1cHBlciBjYXNlLCBlLmcuCgpQQ0k6IEFkZCBzdXNwZW5kIGFuZCByZXN1
bWUgc3VwcG9ydCBmb3IgajcyMWUKCgpSZWdhcmRzLApQLgoKWzFdIGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL2xpbnV4LXBjaS8yMDE3MTAyNjIyMzcwMS5HQTI1NjQ5QGJoZWxnYWFzLWdsYXB0b3Au
cm9hbS5jb3JwLmdvb2dsZS5jb20vCgoKPiAKPiDCoGRyaXZlcnMvZ3Bpby9ncGlvLXBjYTk1M3gu
Y8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqAgNyAr
LQo+IMKgZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1vbWFwLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDIyICsrKysKPiDCoGRyaXZlcnMvbXV4L2NvcmUuY8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgfMKgIDMwICsrKysrCj4gwqBkcml2ZXJzL211eC9tbWlvLmPCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCAxMiAr
Kwo+IMKgZHJpdmVycy9wY2kvY29udHJvbGxlci9jYWRlbmNlL3BjaS1qNzIxZS5jwqDCoMKgwqDC
oMKgwqDCoCB8IDEwMgo+ICsrKysrKysrKysrKysrKystCj4gwqBkcml2ZXJzL3BjaS9jb250cm9s
bGVyL2NhZGVuY2UvcGNpZS1jYWRlbmNlLWhvc3QuYyB8wqAgNDQgKysrKystLS0KPiDCoGRyaXZl
cnMvcGNpL2NvbnRyb2xsZXIvY2FkZW5jZS9wY2llLWNhZGVuY2UuaMKgwqDCoMKgwqAgfMKgIDEy
ICsrCj4gwqBkcml2ZXJzL3BoeS9jYWRlbmNlL3BoeS1jYWRlbmNlLXRvcnJlbnQuY8KgwqDCoMKg
wqDCoMKgwqDCoCB8IDEyMQo+ICsrKysrKysrKysrKysrKy0tLS0tLQo+IMKgZHJpdmVycy9waHkv
dGkvcGh5LWo3MjFlLXdpei5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCB8IDExOQo+ICsrKysrKysrKysrKystLS0tLS0tCj4gwqBkcml2ZXJzL3BpbmN0cmwvcGluY3Ry
bC1zaW5nbGUuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgMjggKyst
LS0KPiDCoGluY2x1ZGUvbGludXgvbXV4L2RyaXZlci5owqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgIDEgKwo+IMKgMTEgZmlsZXMgY2hhbmdlZCwg
MzgwIGluc2VydGlvbnMoKyksIDExOCBkZWxldGlvbnMoLSkKPiAtLS0KPiBiYXNlLWNvbW1pdDog
MDBmZjBmOWNlNDBkYjhlNjRmZTE2YzQyNGE5NjVmZDdhYjc2OWM0Mgo+IGNoYW5nZS1pZDogMjAy
NDAxMDItajcyMDAtcGNpZS1zMnItZWNiMWE5NzllMzU3Cj4gCj4gQmVzdCByZWdhcmRzLAoKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
