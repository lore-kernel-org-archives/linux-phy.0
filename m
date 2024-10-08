Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F2F7CEFC22
	for <linux-phy@archiver.kernel.org>; Tue,  8 Oct 2024 15:03:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/++fAp2PnBGSdTkQnCk0W/6T7Qt4tny64FtCusy4Ajo=; b=UvROW3tP/1nLB3
	vjwhSXoVwtZumCJYYSdvH7nj/CPwxFG235lmutKDpqWXzALPaVh9jnsGzLL3zUXd8U189MxNhgOJ7
	xXtZvnPKLQqEbXGjatb3tDtpmQlT5r1yx6MCUgiwF096gBkvF9+o+gMlSJ4w+t4MDM/CHtAVvg1bn
	dM7vWQpD5QnJcBPahLdp77k9AbZ4s1TQEJMuCDkh0nfG1qgewwfAA4xuScbdtLK1FwGAI6i+opERQ
	d7/9qYYLNXLTzUrd8xDonEjvqD3+JMFlE4Lprd+8z3qx3CqiqoqcJ0uuUgiTlmQy7WdidHZvsroe/
	fah6uKLnd/QUYeVMNq/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syBkh-00000006Ih7-1D6K;
	Tue, 08 Oct 2024 15:03:55 +0000
Received: from mail-yb1-f172.google.com ([209.85.219.172])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syBf1-00000006H0p-0qjJ;
	Tue, 08 Oct 2024 14:58:04 +0000
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-e28eaf56ffcso1086551276.1;
        Tue, 08 Oct 2024 07:58:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728399480; x=1729004280;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6vO87qeXV19lbaBjCeBCh8V3ciNo8R07ViYu/d9MCKE=;
        b=lILMdEd496ycxYVvo2Lxa1PcMNxtsRBwompPgvBSHJxNLiDF4FPxZfiShYkdiH9n1g
         thoSdTGxN1XqxQbdb49AIT/i3K1DaAWRJWTbASW3pILP5XyFEZEmuJtqCkPS8Z4KfMov
         IXxlSKz3iw8Yx4NFZ9vdLOTXVDxBnVDcSlwhBrk7nC+g2Ez0RLAkIw0cLDsjMm/9/cMq
         haWA9aHuk7gzKfkMhvNkJ+R/AQUvqWrMcHLutolJ+zRIcr4l6DiusSGBfBfMdy2OvjwK
         2r6DUclLNtOXv2exNq4e3IEwnZk6rhKirlq9w+tmkNaPDoIyhHCm0kWzKSOJtBue6No3
         RfRg==
X-Forwarded-Encrypted: i=1; AJvYcCUWxQHLKhwYl0DvvVyVZ0jhE126MQmqd9pynaf1eEJ9bc4lhshg469sv/idhDgfXclsBgVNDZa+0sfyeK92hiM7@lists.infradead.org, AJvYcCXv8mivpdT4c90G91+pq4DGUXGpnqsZ8eYFdI7clmozubl8dUjC98edBEHiOZlnUf712BVrRwl3lPpM@lists.infradead.org
X-Gm-Message-State: AOJu0YxwqH4XnPsZniNTvtl+ZAGcJWnlEOMchVU0Ai2SdbboLXJvlj8f
	OZNSymsP0XexQVj5Zu1UIESll8J9/js3RTpGD7MQWsvQ9cubU2PL8m+czosX
X-Google-Smtp-Source: AGHT+IG8NaiNT9NGSFkYxjwC1mpph3/A8sEmBaGVbESKMOUtbICKHSiSTJ4xlhRLJDfQ6vyy0l7AXw==
X-Received: by 2002:a05:6902:1084:b0:e22:5e6c:4cdd with SMTP id 3f1490d57ef6-e2893922c5bmr11577951276.35.1728399479848;
        Tue, 08 Oct 2024 07:57:59 -0700 (PDT)
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com. [209.85.128.171])
        by smtp.gmail.com with ESMTPSA id 3f1490d57ef6-e28a5dbdc85sm1367731276.62.2024.10.08.07.57.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Oct 2024 07:57:58 -0700 (PDT)
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-6e2b9e945b9so48433377b3.0;
        Tue, 08 Oct 2024 07:57:58 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCW8+nOESzhRaI6STem2NR7xy0vcpNa28nJs8XYskQb4CxVQjunVJf6XCZGg07ba8p4M93wm+d+e44XACLQo49Zo@lists.infradead.org, AJvYcCXYhjwYuH0udfHozbkUz4alFpK3t/p/7a7Rty5KjZ9i0pdt5Bt2Vj37Q7+bPaYpPnqjnT7kIkRA4KIC@lists.infradead.org
X-Received: by 2002:a05:690c:81:b0:6e2:f61e:c52 with SMTP id
 00721157ae682-6e2f61e3ec4mr68204077b3.34.1728399475345; Tue, 08 Oct 2024
 07:57:55 -0700 (PDT)
MIME-Version: 1.0
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com> <20240822152801.602318-11-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20240822152801.602318-11-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 8 Oct 2024 16:57:43 +0200
X-Gmail-Original-Message-ID: <CAMuHMdX1b5ZZaO+G1h=E8uv+WV7oS8xg8Hx=_+uORO7Qu33eNw@mail.gmail.com>
Message-ID: <CAMuHMdX1b5ZZaO+G1h=E8uv+WV7oS8xg8Hx=_+uORO7Qu33eNw@mail.gmail.com>
Subject: Re: [PATCH 10/16] phy: renesas: rcar-gen3-usb2: Add support to
 initialize the bus
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be, 
	magnus.damm@gmail.com, gregkh@linuxfoundation.org, mturquette@baylibre.com, 
	sboyd@kernel.org, yoshihiro.shimoda.uh@renesas.com, 
	biju.das.jz@bp.renesas.com, ulf.hansson@linaro.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-clk@vger.kernel.org, linux-pm@vger.kernel.org, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_075803_276202_E99E8E45 
X-CRM114-Status: GOOD (  28.99  )
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

SGkgQ2xhdWRpdSwKCk9uIFRodSwgQXVnIDIyLCAyMDI0IGF0IDU6MjjigK9QTSBDbGF1ZGl1IDxj
bGF1ZGl1LmJlem5lYUB0dXhvbi5kZXY+IHdyb3RlOgo+Cj4gRnJvbTogQ2xhdWRpdSBCZXpuZWEg
PGNsYXVkaXUuYmV6bmVhLnVqQGJwLnJlbmVzYXMuY29tPgo+Cj4gVGhlIFJlbmVzYXMgUlovRzNT
IG5lZWQgdG8gaW5pdGlhbGl6ZSB0aGUgVVNCIEJVUyBiZWZvcmUgdHJhbnNmZXJyaW5nIGRhdGEK
PiBkdWUgdG8gaGFyZHdhcmUgbGltaXRhdGlvbi4gQXMgdGhlIHJlZ2lzdGVyIHRoYXQgbmVlZCB0
byBiZSB0b3VjaGVkIGZvcgo+IHRoaXMgaXMgaW4gdGhlIGFkZHJlc3Mgc3BhY2Ugb2YgdGhlIFVT
QiBQSFksIGFuZCB0aGUgVUJTIFBIWSBuZWVkIHRvIGJlCj4gaW5pdGlhbGl6ZWQgYmVmb3JlIGFu
eSBvdGhlciBVU0IgZHJpdmVycyBoYW5kbGluZyBkYXRhIHRyYW5zZmVyLCBhZGQKPiBzdXBwb3J0
IHRvIGluaXRpYWxpemUgdGhlIFVTQiBCVVMuCj4KPiBBcyB0aGUgVVNCIFBIWSBpcyBwcm9iZWQg
YmVmb3JlIGFueSBvdGhlciBVU0IgZHJpdmVycyB0aGF0IGVuYWJsZXMKPiBjbG9ja3MgYW5kIGRl
LWFzc2VydCB0aGUgcmVzZXQgc2lnbmFscyBhbmQgdGhlIEJVUyBpbml0aWFsaXphdGlvbiBpcyBk
b25lCj4gaW4gdGhlIHByb2JlIHBoYXNlLCB3ZSBuZWVkIHRvIGFkZCBjb2RlIHRvIGRlLWFzc2Vy
dCByZXNldCBzaWduYWwgYW5kCj4gcnVudGltZSByZXN1bWUgdGhlIGRldmljZSAod2hpY2ggZW5h
YmxlcyBpdHMgY2xvY2tzKSBiZWZvcmUgYWNjZXNzaW5nCj4gdGhlIHJlZ2lzdGVycy4KPgo+IEFz
IHRoZSByZXNldCBzaWduYWxzIGFyZSBub3QgcmVxdWlyZWQgYnkgdGhlIFVTQiBQSFkgZHJpdmVy
IGZvciB0aGUgb3RoZXIKPiBVU0IgUEhZIGhhcmR3YXJlIHZhcmlhbnRzLCB0aGUgcmVzZXQgc2ln
bmFscyBhbmQgcnVudGltZSBQTSB3YXMgaGFuZGxlZAo+IG9ubHkgaW4gdGhlIGZ1bmN0aW9uIHRo
YXQgaW5pdGlhbGl6ZSB0aGUgVVNCIEJVUy4KPgo+IFRoZSBQSFkgaW5pdGlhbGl6YXRpb24gd2Fz
IGRvbmUgcmlnaHQgYWZ0ZXIgcnVudGltZSBQTSBlbmFibGUgdG8gaGF2ZQo+IGFsbCBpbiBwbGFj
ZSB3aGVuIHRoZSBQSFlzIGFyZSByZWdpc3RlcmVkLgo+Cj4gU2lnbmVkLW9mZi1ieTogQ2xhdWRp
dSBCZXpuZWEgPGNsYXVkaXUuYmV6bmVhLnVqQGJwLnJlbmVzYXMuY29tPgoKVGhhbmtzIGZvciB5
b3VyIHBhdGNoLCB3aGljaCBpcyBub3cgY29tbWl0IDRlYWUxNjM3NTM1N2EyYTcgKCJwaHk6CnJl
bmVzYXM6IHJjYXItZ2VuMy11c2IyOiBBZGQgc3VwcG9ydCB0byBpbml0aWFsaXplIHRoZSBidXMi
KSBpbgp2Ni4xMi1yYzEuCgo+IC0tLSBhL2RyaXZlcnMvcGh5L3JlbmVzYXMvcGh5LXJjYXItZ2Vu
My11c2IyLmMKPiArKysgYi9kcml2ZXJzL3BoeS9yZW5lc2FzL3BoeS1yY2FyLWdlbjMtdXNiMi5j
Cj4gQEAgLTY1MCw2ICs2NTgsMzUgQEAgc3RhdGljIGVudW0gdXNiX2RyX21vZGUgcmNhcl9nZW4z
X2dldF9kcl9tb2RlKHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnApCj4gICAgICAgICByZXR1cm4gY2Fu
ZGlkYXRlOwo+ICB9Cj4KPiArc3RhdGljIGludCByY2FyX2dlbjNfcGh5X3VzYjJfaW5pdF9idXMo
c3RydWN0IHJjYXJfZ2VuM19jaGFuICpjaGFubmVsKQo+ICt7Cj4gKyAgICAgICBzdHJ1Y3QgZGV2
aWNlICpkZXYgPSBjaGFubmVsLT5kZXY7Cj4gKyAgICAgICBpbnQgcmV0Owo+ICsgICAgICAgdTMy
IHZhbDsKPiArCj4gKyAgICAgICBjaGFubmVsLT5yc3RjID0gZGV2bV9yZXNldF9jb250cm9sX2Fy
cmF5X2dldF9zaGFyZWQoZGV2KTsKPiArICAgICAgIGlmIChJU19FUlIoY2hhbm5lbC0+cnN0Yykp
Cj4gKyAgICAgICAgICAgICAgIHJldHVybiBQVFJfRVJSKGNoYW5uZWwtPnJzdGMpOwo+ICsKPiAr
ICAgICAgIHJldCA9IHBtX3J1bnRpbWVfcmVzdW1lX2FuZF9nZXQoZGV2KTsKPiArICAgICAgIGlm
IChyZXQpCj4gKyAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gKwo+ICsgICAgICAgcmV0ID0g
cmVzZXRfY29udHJvbF9kZWFzc2VydChjaGFubmVsLT5yc3RjKTsKPiArICAgICAgIGlmIChyZXQp
Cj4gKyAgICAgICAgICAgICAgIGdvdG8gcnBtX3B1dDsKPiArCj4gKyAgICAgICB2YWwgPSByZWFk
bChjaGFubmVsLT5iYXNlICsgVVNCMl9BSEJfQlVTX0NUUik7Cj4gKyAgICAgICB2YWwgJj0gflVT
QjJfQUhCX0JVU19DVFJfTUJMX01BU0s7Cj4gKyAgICAgICB2YWwgfD0gVVNCMl9BSEJfQlVTX0NU
Ul9NQkxfSU5DUjQ7Cj4gKyAgICAgICB3cml0ZWwodmFsLCBjaGFubmVsLT5iYXNlICsgVVNCMl9B
SEJfQlVTX0NUUik7Cj4gKwo+ICtycG1fcHV0Ogo+ICsgICAgICAgcG1fcnVudGltZV9wdXQoZGV2
KTsKPiArCj4gKyAgICAgICByZXR1cm4gcmV0Owo+ICt9Cj4gKwo+ICBzdGF0aWMgaW50IHJjYXJf
Z2VuM19waHlfdXNiMl9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICB7Cj4g
ICAgICAgICBjb25zdCBzdHJ1Y3QgcmNhcl9nZW4zX3BoeV9kcnZfZGF0YSAqcGh5X2RhdGE7Cj4g
QEAgLTcwMyw2ICs3NDAsMTUgQEAgc3RhdGljIGludCByY2FyX2dlbjNfcGh5X3VzYjJfcHJvYmUo
c3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgICAgICAgICAgICAgICAgZ290byBlcnJv
cjsKPiAgICAgICAgIH0KPgo+ICsgICAgICAgcGxhdGZvcm1fc2V0X2RydmRhdGEocGRldiwgY2hh
bm5lbCk7Cj4gKyAgICAgICBjaGFubmVsLT5kZXYgPSBkZXY7CgpVbnJlbGF0ZWQgY2hhbmdlPwoK
PiArCj4gKyAgICAgICBpZiAocGh5X2RhdGEtPmluaXRfYnVzKSB7Cj4gKyAgICAgICAgICAgICAg
IHJldCA9IHJjYXJfZ2VuM19waHlfdXNiMl9pbml0X2J1cyhjaGFubmVsKTsKPiArICAgICAgICAg
ICAgICAgaWYgKHJldCkKPiArICAgICAgICAgICAgICAgICAgICAgICBnb3RvIGVycm9yOwo+ICsg
ICAgICAgfQo+ICsKPiAgICAgICAgIGNoYW5uZWwtPnNvY19ub19hZHBfY3RybCA9IHBoeV9kYXRh
LT5ub19hZHBfY3RybDsKPiAgICAgICAgIGlmIChwaHlfZGF0YS0+bm9fYWRwX2N0cmwpCj4gICAg
ICAgICAgICAgICAgIGNoYW5uZWwtPm9iaW50X2VuYWJsZV9iaXRzID0gVVNCMl9PQklOVF9JRENI
R19FTjsKPiBAQCAtNzMzLDkgKzc3OSw2IEBAIHN0YXRpYyBpbnQgcmNhcl9nZW4zX3BoeV91c2Iy
X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gICAgICAgICAgICAgICAgIGNo
YW5uZWwtPnZidXMgPSBOVUxMOwo+ICAgICAgICAgfQo+Cj4gLSAgICAgICBwbGF0Zm9ybV9zZXRf
ZHJ2ZGF0YShwZGV2LCBjaGFubmVsKTsKPiAtICAgICAgIGNoYW5uZWwtPmRldiA9IGRldjsKPiAt
Cj4gICAgICAgICBwcm92aWRlciA9IGRldm1fb2ZfcGh5X3Byb3ZpZGVyX3JlZ2lzdGVyKGRldiwg
cmNhcl9nZW4zX3BoeV91c2IyX3hsYXRlKTsKPiAgICAgICAgIGlmIChJU19FUlIocHJvdmlkZXIp
KSB7Cj4gICAgICAgICAgICAgICAgIGRldl9lcnIoZGV2LCAiRmFpbGVkIHRvIHJlZ2lzdGVyIFBI
WSBwcm92aWRlclxuIik7CgpUaGUgcmVzZXQgaXMgbm90IGFzc2VydGVkIGluIHRoZSBlcnJvciBw
YXRoLCBvbmx5IGluIC5yZW1vdmUoKS4KCk9oLCBDaHJpc3RvcGhlIGFscmVhZHkgc2VudCBhIGZp
eCBmb3IgdGhhdC4uLgoiW1BBVENIIHYzXSBwaHk6IHJlbmVzYXM6IHJjYXItZ2VuMy11c2IyOiBG
aXggYW4gZXJyb3IgaGFuZGxpbmcgcGF0aAppbiByY2FyX2dlbjNfcGh5X3VzYjJfcHJvYmUoKSIK
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzI5MGIyNTgyN2UzZjA3NDI4MDg5NDA3MTk0NTVm
ZjBjNWNiOWQwMWQuMTcyNjMyOTkyNS5naXQuY2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnIK
Cj4gQEAgLTc2Miw2ICs4MDUsNyBAQCBzdGF0aWMgdm9pZCByY2FyX2dlbjNfcGh5X3VzYjJfcmVt
b3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gICAgICAgICBpZiAoY2hhbm5lbC0+
aXNfb3RnX2NoYW5uZWwpCj4gICAgICAgICAgICAgICAgIGRldmljZV9yZW1vdmVfZmlsZSgmcGRl
di0+ZGV2LCAmZGV2X2F0dHJfcm9sZSk7Cj4KPiArICAgICAgIHJlc2V0X2NvbnRyb2xfYXNzZXJ0
KGNoYW5uZWwtPnJzdGMpOwo+ICAgICAgICAgcG1fcnVudGltZV9kaXNhYmxlKCZwZGV2LT5kZXYp
Owo+ICB9OwoKVGhlIHJlc3QgTEdUTS4KCkdye29ldGplLGVldGluZ31zLAoKICAgICAgICAgICAg
ICAgICAgICAgICAgR2VlcnQKCi0tIApHZWVydCBVeXR0ZXJob2V2ZW4gLS0gVGhlcmUncyBsb3Rz
IG9mIExpbnV4IGJleW9uZCBpYTMyIC0tIGdlZXJ0QGxpbnV4LW02OGsub3JnCgpJbiBwZXJzb25h
bCBjb252ZXJzYXRpb25zIHdpdGggdGVjaG5pY2FsIHBlb3BsZSwgSSBjYWxsIG15c2VsZiBhIGhh
Y2tlci4gQnV0CndoZW4gSSdtIHRhbGtpbmcgdG8gam91cm5hbGlzdHMgSSBqdXN0IHNheSAicHJv
Z3JhbW1lciIgb3Igc29tZXRoaW5nIGxpa2UgdGhhdC4KICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAtLSBMaW51cyBUb3J2YWxkcwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
