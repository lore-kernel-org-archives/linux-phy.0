Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C20FBE7717D
	for <linux-phy@archiver.kernel.org>; Fri, 13 Dec 2024 15:16:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hgzPE5WggaHXGidD5ws7LH0aXvmCOLXxl0nq/qSLjoQ=; b=Vp7N/B8OySxZqR
	LTo6/VJgQ48ZdVRpR+7ok/mwot25CSUXkZ7vFHIHhnaUsm80dgcDcIIlM5IiwIo0KWO7LTcswwn84
	LS4feqQzshrCIZooANMOEDczggUkNeLmXSKuT4tHimLAI+fN1YdI7bMI3BmpKJazwOJvid0JUz9oL
	hH5tcv/f98JAXgXDoWRRl6i79/GFi2zHpnN8dB9fMRXkGwPuYGBoCeFt7+A9nxNrCoisdAMM1fzw9
	ScJyzB3ubnaiBSaV4TBGJtZm5qlh/cGoLkUXC3DYDlt2MRTPbF8ax6G+3JFDcjkNhWjXjjtyGYdTn
	9IwqivCAxtLPdvGoG8Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tM7PH-00000004F8g-2CAz;
	Fri, 13 Dec 2024 15:16:43 +0000
Received: from mail-qv1-f49.google.com ([209.85.219.49])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tM7PF-00000004F8E-12Rx
	for linux-phy@lists.infradead.org;
	Fri, 13 Dec 2024 15:16:42 +0000
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-6d933736380so22923676d6.1
        for <linux-phy@lists.infradead.org>; Fri, 13 Dec 2024 07:16:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734102995; x=1734707795;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GQjBH7m6P0DsovRZ9n46T5HOryXg2GC8MD+lLeQRFrU=;
        b=s9CJKKc6zC4mIDEDwI7DHT80NzH0TOpNn1HgVm6F3UGqGmhR3MfRv3vtJg6cSUa4Os
         L2T3PZVnvkTQW8I5DnHiBPtSVEKcuUfkG1M3V2LKom+iImVju9XI3nVSDAdfnh+cp0NL
         EmLlMimdaNDFVYcRCMjhSuzVS6Tj/tq1oTBU5gg2USm+dJCRtogrgv/CyZiOG+8gMgec
         2rFGg0f007eptTWsfC312uR6T2TES0TTfIAurlz6qwCgYQZJZUcPrXwb9KRIifwhVdOi
         am44XtQ0MI/UEDhiTcikl+bWmydaX6N5amlEONqIXiUGU2iZlZ3FT2HzYkdo3/Jg1/pO
         wYAw==
X-Gm-Message-State: AOJu0YwiNhSU731hxPPbRU/Rpqi1z3ivQw1Ec0C5Aoari8Kb+2XcEVB9
	FZv9h54xTMuJrJvNblgZzygMzCzlsCEkBVOvcZney+Qqbd79PY860se5Xjmp
X-Gm-Gg: ASbGnctP2wef+RTBE0qiBdCWq6EXdkuTRsLmr7Nrna2lsCRVjXtHgikFj29kz7gxusx
	esHBoPW9UTg7p9rOgPK1XIPNFhOEnHwp/ib9kk1caN8TY4xukxb+Med6XbdNBhWqyWl9R/j6prt
	zCU2r60+0dbTpZM2va7jytG2FQjg/QpM8fKILWfr8LdYJnVMkDJvgWHPIfgCPGHY44AWWo60HPB
	sffYd8IOKesJUGU21blfKna5Ot1Rd1DPyT0E3sJBCx5FHDpzJcVTPZ8x0t7LSrCk0borkTm2HsP
	u7KJMv7xAn+DCe0v91UbV28=
X-Google-Smtp-Source: AGHT+IFg33PjSDWdQ1sCaGjSF4/OM9gKzPDupqS92NdWU72DG1qu/Zc615l2kWuO6Wp8tWF3TmJY4w==
X-Received: by 2002:a05:6214:2523:b0:6d8:b097:fad3 with SMTP id 6a1803df08f44-6dc968726bcmr52922446d6.35.1734102994760;
        Fri, 13 Dec 2024 07:16:34 -0800 (PST)
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com. [209.85.222.177])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6d8fc9d432fsm68403836d6.8.2024.12.13.07.16.33
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2024 07:16:33 -0800 (PST)
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-7b6f75f61f9so217103085a.0
        for <linux-phy@lists.infradead.org>; Fri, 13 Dec 2024 07:16:33 -0800 (PST)
X-Received: by 2002:a05:620a:4441:b0:7b6:f1b8:8a03 with SMTP id
 af79cd13be357-7b6fbf17969mr436286685a.36.1734102993530; Fri, 13 Dec 2024
 07:16:33 -0800 (PST)
MIME-Version: 1.0
References: <20241026132014.73050-1-aford173@gmail.com> <20241026132014.73050-3-aford173@gmail.com>
 <CAMuHMdVx9zYw7ZpyH=d_rs==a+_jzi--Fax5cVe-8UW+RvRx+g@mail.gmail.com> <CAHCN7xJBv0jqiPWj3gOJBrK67BgSNsiX6cDg-Tau4A8D16HPUA@mail.gmail.com>
In-Reply-To: <CAHCN7xJBv0jqiPWj3gOJBrK67BgSNsiX6cDg-Tau4A8D16HPUA@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 13 Dec 2024 16:16:21 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUG7A10E2SZR6kHiQBrzp_OVvMSd7jxggaoU3B_6fZ+nQ@mail.gmail.com>
Message-ID: <CAMuHMdUG7A10E2SZR6kHiQBrzp_OVvMSd7jxggaoU3B_6fZ+nQ@mail.gmail.com>
Subject: Re: [PATCH V2 3/3] phy: freescale: fsl-samsung-hdmi: Clean up
 fld_tg_code calculation
To: Adam Ford <aford173@gmail.com>
Cc: linux-phy@lists.infradead.org, aford@beaconembedded.com, sandor.yu@nxp.com, 
	Frieder Schrempf <frieder.schrempf@kontron.de>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, 
	Dominique Martinet <dominique.martinet@atmark-techno.com>, 
	Marco Felsch <m.felsch@pengutronix.de>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@baylibre.com>, 
	Lucas Stach <l.stach@pengutronix.de>, linux-kernel@vger.kernel.org, 
	Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241213_071641_286519_86DB8CB9 
X-CRM114-Status: GOOD (  36.83  )
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

SGkgQWRhbSwKCk9uIEZyaSwgRGVjIDEzLCAyMDI0IGF0IDM6NTfigK9QTSBBZGFtIEZvcmQgPGFm
b3JkMTczQGdtYWlsLmNvbT4gd3JvdGU6Cj4gT24gRnJpLCBEZWMgMTMsIDIwMjQgYXQgODoxM+KA
r0FNIEdlZXJ0IFV5dHRlcmhvZXZlbiA8Z2VlcnRAbGludXgtbTY4ay5vcmc+IHdyb3RlOgo+ID4g
T24gU2F0LCBPY3QgMjYsIDIwMjQgYXQgMzoyMeKAr1BNIEFkYW0gRm9yZCA8YWZvcmQxNzNAZ21h
aWwuY29tPiB3cm90ZToKPiA+ID4gQ3VycmVudGx5LCB0aGUgY2FsY3VhdGlvbiBmb3IgZmxkX3Rn
X2NvZGUgaXMgYmFzZWQgb24gYSBsb29rdXAgdGFibGUsCj4gPgo+ID4gY2FsY3VsYXRpb24gKGV2
ZXJ5d2hlcmUpCj4gPgo+ID4gPiBidXQgdGhlcmUgYXJlIGdhcHMgaW4gdGhlIGxvb2t1cCB0YWJs
ZSwgYW5kIGZyZXF1ZW5jaWVzIGluIHRoZXNlCj4gPiA+IGdhcHMgbWF5IG5vdCBwcm9wZXJseSB1
c2UgdGhlIGNvcnJlY3QgZGl2aWRlci4gIEJhc2VkIG9uIHRoZSBkZXNjcmlwdGlvbgo+ID4gPiBv
ZiBGTERfQ0tfRElWLCB0aGUgaW50ZXJuYWwgUExMIGZyZXF1ZW5jeSBzaG91bGQgYmUgbGVzcyB0
aGFuIDUwIE1IeiwKPiA+ID4gc28gZGlyZWN0bHkgY2FsY3VhdGUgdGhlIHZhbHVlIG9mIEZMRF9D
S19ESVYgZnJvbSBwaXhjbGsuCj4gPiA+IFRoaXMgYWxsb3cgZm9yIHByb3BlciBjYWxjdWF0aW9u
IG9mIGFueSBwaXhlbCBjbG9jayBhbmQgZWxpbWluYXRlcyBhCj4gPiA+IGZldyBnYXBzIGluIHRo
ZSBMVVQuCj4gPiA+Cj4gPiA+IFNpbmNlIHRoZSB2YWx1ZSBvZiB0aGUgaW50X3BsbGNsayBpcyBp
biBIeiwgZG8gdGhlIGZpeGVkLXBvaW50Cj4gPiA+IG1hdGggaW4gSHogdG8gYWNoaWV2ZSBhIG1v
cmUgYWNjdXJhdGUgdmFsdWUgYW5kIHJlZHVjZXMgdGhlIGNvbXBsZXhpdHkKPiA+ID4gb2YgdGhl
IGNhbHVhdGlvbiB0byAyNE1IeiAqICgyNTYgLyBpbnRfcGxsY2xrKS4KPiA+ID4KPiA+ID4gRml4
ZXM6IDZhZDA4MmJlZTkwMiAoInBoeTogZnJlZXNjYWxlOiBhZGQgU2Ftc3VuZyBIRE1JIFBIWSIp
Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IEFkYW0gRm9yZCA8YWZvcmQxNzNAZ21haWwuY29tPgo+ID4g
PiBSZXZpZXdlZC1ieTogRnJpZWRlciBTY2hyZW1wZiA8ZnJpZWRlci5zY2hyZW1wZkBrb250cm9u
LmRlPgo+ID4KPiA+IFRoYW5rcyBmb3IgeW91ciBwYXRjaCwgd2hpY2ggaXMgbm93IGNvbW1pdCBk
NTY3Njc5ZjJiNmE4YmNlICgicGh5Ogo+ID4gZnJlZXNjYWxlOiBmc2wtc2Ftc3VuZy1oZG1pOiBD
bGVhbiB1cCBmbGRfdGdfY29kZSBjYWxjdWxhdGlvbiIpIGluCj4gPiBuZXh0LTIwMjQxMjA5IGFu
ZCBsYXRlci4KPiA+Cj4gPiA+IC0tLSBhL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLXNh
bXN1bmctaGRtaS5jCj4gPiA+ICsrKyBiL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLXNh
bXN1bmctaGRtaS5jCj4gPiA+IEBAIC0zMzEsMjUgKzMzMSwxNyBAQCBmc2xfc2Ftc3VuZ19oZG1p
X3BoeV9jb25maWd1cmVfcGxsX2xvY2tfZGV0KHN0cnVjdCBmc2xfc2Ftc3VuZ19oZG1pX3BoeSAq
cGh5LAo+ID4gPiAgewo+ID4gPiAgICAgICAgIHUzMiBwY2xrID0gY2ZnLT5waXhjbGs7Cj4gPiA+
ICAgICAgICAgdTMyIGZsZF90Z19jb2RlOwo+ID4gPiAtICAgICAgIHUzMiBwY2xrX2toejsKPiA+
ID4gLSAgICAgICB1OCBkaXYgPSAxOwo+ID4gPiAtCj4gPiA+IC0gICAgICAgc3dpdGNoIChjZmct
PnBpeGNsaykgewo+ID4gPiAtICAgICAgIGNhc2UgIDIyMjUwMDAwIC4uLiAgNDc1MDAwMDA6Cj4g
PiA+IC0gICAgICAgICAgICAgICBkaXYgPSAxOwo+ID4gPiAtICAgICAgICAgICAgICAgYnJlYWs7
Cj4gPiA+IC0gICAgICAgY2FzZSAgNTAzNDk2NTAgLi4uICA5OTAwMDAwMDoKPiA+ID4gLSAgICAg
ICAgICAgICAgIGRpdiA9IDI7Cj4gPiA+IC0gICAgICAgICAgICAgICBicmVhazsKPiA+ID4gLSAg
ICAgICBjYXNlIDEwMDY5OTMwMCAuLi4gMTk4MDAwMDAwOgo+ID4gPiAtICAgICAgICAgICAgICAg
ZGl2ID0gNDsKPiA+ID4gLSAgICAgICAgICAgICAgIGJyZWFrOwo+ID4gPiAtICAgICAgIGNhc2Ug
MjA1MDAwMDAwIC4uLiAyOTcwMDAwMDA6Cj4gPiA+IC0gICAgICAgICAgICAgICBkaXYgPSA4Owo+
ID4gPiAtICAgICAgICAgICAgICAgYnJlYWs7Cj4gPiA+ICsgICAgICAgdTMyIGludF9wbGxjbGs7
Cj4gPiA+ICsgICAgICAgdTggZGl2Owo+ID4gPiArCj4gPiA+ICsgICAgICAgLyogRmluZCBpbnRf
cGxsY2xrIHNwZWVkICovCj4gPiA+ICsgICAgICAgZm9yIChkaXYgPSAwOyBkaXYgPCA0OyBkaXYr
Kykgewo+ID4gPiArICAgICAgICAgICAgICAgaW50X3BsbGNsayA9IHBjbGsgLyAoMSA8PCBkaXYp
Owo+ID4gPiArICAgICAgICAgICAgICAgaWYgKGludF9wbGxjbGsgPCAoNTAgKiBNSFopKQo+ID4g
PiArICAgICAgICAgICAgICAgICAgICAgICBicmVhazsKPiA+ID4gICAgICAgICB9Cj4gPiA+Cj4g
PiA+IC0gICAgICAgd3JpdGViKEZJRUxEX1BSRVAoUkVHMTJfQ0tfRElWX01BU0ssIGlsb2cyKGRp
dikpLCBwaHktPnJlZ3MgKyBQSFlfUkVHKDEyKSk7Cj4gPiA+ICsgICAgICAgd3JpdGViKEZJRUxE
X1BSRVAoUkVHMTJfQ0tfRElWX01BU0ssIGRpdiksIHBoeS0+cmVncyArIFBIWV9SRUcoMTIpKTsK
PiA+Cj4gPiBUaGlzIGNhdXNlcyBhIGJ1aWxkIGZhaWx1cmUgb24gbTY4ayB3aXRoIGdjYyB2ZXJz
aW9uIDkuNS4wIChVYnVudHUKPiA+IDkuNS4wLTF1YnVudHUxfjIyLjA0KToKPiA+Cj4gPiAgIEND
IFtNXSAgZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1pLm8KPiA+IElu
IGZpbGUgaW5jbHVkZWQgZnJvbSAuL2FyY2gvbTY4ay9pbmNsdWRlL2FzbS9pb19tbS5oOjI1LAo+
ID4gICAgICAgICAgICAgICAgICBmcm9tIC4vYXJjaC9tNjhrL2luY2x1ZGUvYXNtL2lvLmg6OCwK
PiA+ICAgICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUvbGludXgvaW8uaDoxNCwKPiA+ICAg
ICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUvbGludXgvaW9wb2xsLmg6MTQsCj4gPiAgICAg
ICAgICAgICAgICAgIGZyb20gZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtc2Ftc3VuZy1o
ZG1pLmM6MTI6Cj4gPiBJbiBmdW5jdGlvbiDigJhmc2xfc2Ftc3VuZ19oZG1pX3BoeV9jb25maWd1
cmVfcGxsX2xvY2tfZGV04oCZLAo+ID4gICAgIGlubGluZWQgZnJvbSDigJhmc2xfc2Ftc3VuZ19o
ZG1pX3BoeV9jb25maWd1cmXigJkgYXQKPiA+IGRyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNs
LXNhbXN1bmctaGRtaS5jOjQ3MDoyOgo+ID4gLi8uL2luY2x1ZGUvbGludXgvY29tcGlsZXJfdHlw
ZXMuaDo1NDI6Mzg6IGVycm9yOiBjYWxsIHRvCj4gPiDigJhfX2NvbXBpbGV0aW1lX2Fzc2VydF8x
NDfigJkgZGVjbGFyZWQgd2l0aCBhdHRyaWJ1dGUgZXJyb3I6IEZJRUxEX1BSRVA6Cj4gPiB2YWx1
ZSB0b28gbGFyZ2UgZm9yIHRoZSBmaWVsZAo+ID4gICA1NDIgfCAgX2NvbXBpbGV0aW1lX2Fzc2Vy
dChjb25kaXRpb24sIG1zZywgX19jb21waWxldGltZV9hc3NlcnRfLCBfX0NPVU5URVJfXykKPiA+
ICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF4KPiA+IC4vYXJj
aC9tNjhrL2luY2x1ZGUvYXNtL3Jhd19pby5oOjMwOjgyOiBub3RlOiBpbiBkZWZpbml0aW9uIG9m
IG1hY3JvIOKAmG91dF844oCZCj4gPiAgICAzMCB8ICNkZWZpbmUgb3V0XzgoYWRkcixiKSAodm9p
ZCkoKCooX19mb3JjZSB2b2xhdGlsZSB1OCAqKQo+ID4gKHVuc2lnbmVkIGxvbmcpKGFkZHIpKSA9
IChiKSkKPiA+ICAgICAgIHwKPiA+ICAgICAgICAgICAgICAgICAgIF4KPiA+IGRyaXZlcnMvcGh5
L2ZyZWVzY2FsZS9waHktZnNsLXNhbXN1bmctaGRtaS5jOjM0NDoyOiBub3RlOiBpbiBleHBhbnNp
b24KPiA+IG9mIG1hY3JvIOKAmHdyaXRlYuKAmQo+ID4gICAzNDQgfCAgd3JpdGViKEZJRUxEX1BS
RVAoUkVHMTJfQ0tfRElWX01BU0ssIGRpdiksIHBoeS0+cmVncyArIFBIWV9SRUcoMTIpKTsKPiA+
ICAgICAgIHwgIF5+fn5+fgo+ID4gLi8uL2luY2x1ZGUvbGludXgvY29tcGlsZXJfdHlwZXMuaDo1
MzA6Mjogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvCj4gPiDigJhfX2NvbXBpbGV0aW1lX2Fz
c2VydOKAmQo+ID4gICA1MzAgfCAgX19jb21waWxldGltZV9hc3NlcnQoY29uZGl0aW9uLCBtc2cs
IHByZWZpeCwgc3VmZml4KQo+ID4gICAgICAgfCAgXn5+fn5+fn5+fn5+fn5+fn5+fn4KPiA+IC4v
Li9pbmNsdWRlL2xpbnV4L2NvbXBpbGVyX3R5cGVzLmg6NTQyOjI6IG5vdGU6IGluIGV4cGFuc2lv
biBvZiBtYWNybwo+ID4g4oCYX2NvbXBpbGV0aW1lX2Fzc2VydOKAmQo+ID4gICA1NDIgfCAgX2Nv
bXBpbGV0aW1lX2Fzc2VydChjb25kaXRpb24sIG1zZywgX19jb21waWxldGltZV9hc3NlcnRfLCBf
X0NPVU5URVJfXykKPiA+ICAgICAgIHwgIF5+fn5+fn5+fn5+fn5+fn5+fn4KPiA+IC4vaW5jbHVk
ZS9saW51eC9idWlsZF9idWcuaDozOTozNzogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvCj4g
PiDigJhjb21waWxldGltZV9hc3NlcnTigJkKPiA+ICAgIDM5IHwgI2RlZmluZSBCVUlMRF9CVUdf
T05fTVNHKGNvbmQsIG1zZykgY29tcGlsZXRpbWVfYXNzZXJ0KCEoY29uZCksIG1zZykKPiA+ICAg
ICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+
fn5+Cj4gPiAuL2luY2x1ZGUvbGludXgvYml0ZmllbGQuaDo2ODozOiBub3RlOiBpbiBleHBhbnNp
b24gb2YgbWFjcm8g4oCYQlVJTERfQlVHX09OX01TR+KAmQo+ID4gICAgNjggfCAgIEJVSUxEX0JV
R19PTl9NU0coX19idWlsdGluX2NvbnN0YW50X3AoX3ZhbCkgPyAgXAo+ID4gICAgICAgfCAgIF5+
fn5+fn5+fn5+fn5+fn4KPiA+IC4vaW5jbHVkZS9saW51eC9iaXRmaWVsZC5oOjExNTozOiBub3Rl
OiBpbiBleHBhbnNpb24gb2YgbWFjcm8g4oCYX19CRl9GSUVMRF9DSEVDS+KAmQo+ID4gICAxMTUg
fCAgIF9fQkZfRklFTERfQ0hFQ0soX21hc2ssIDBVTEwsIF92YWwsICJGSUVMRF9QUkVQOiAiKTsg
XAo+ID4gICAgICAgfCAgIF5+fn5+fn5+fn5+fn5+fn4KPiA+IGRyaXZlcnMvcGh5L2ZyZWVzY2Fs
ZS9waHktZnNsLXNhbXN1bmctaGRtaS5jOjM0NDo5OiBub3RlOiBpbiBleHBhbnNpb24KPiA+IG9m
IG1hY3JvIOKAmEZJRUxEX1BSRVDigJkKPiA+ICAgMzQ0IHwgIHdyaXRlYihGSUVMRF9QUkVQKFJF
RzEyX0NLX0RJVl9NQVNLLCBkaXYpLCBwaHktPnJlZ3MgKyBQSFlfUkVHKDEyKSk7Cj4gPiAgICAg
ICB8ICAgICAgICAgXn5+fn5+fn5+fgo+ID4KPiA+IEFzIGl0IGJ1aWxkcyBmaW5lIG9uIGkzODYs
IEkgbG9va2VkIGF0IHRoZSBwcmVwcm9jZXNzZWQgc291cmNlIGZpbGVzLAo+ID4gYnV0IGRpZG4n
dCBzZWUgYW55IGRpZmZlcmVuY2VzIHRoYXQgY291bGQgZXhwbGFpbiB0aGlzLgo+ID4KPiA+IEkg
Y2hhbmdlZCBjcm9zcy1jb21waWxlciB0byBnY2MgdmVyc2lvbiAxMC41LjAgKFVidW50dSAxMC41
LjAtMXVidW50dTF+MjIuMDQpLAo+ID4gYW5kIHRoYXQgZml4ZWQgdGhlIGlzc3VlIG9uIG02OGsu
Cj4gPiBJIGNoYW5nZWQgdGhlIG5hdGl2ZSBjb21waWxlciB0byBnY2MtOSwgYW5kIHRoZSBidWls
ZCBzdGFydGVkIGZhaWxpbmcKPiA+IG9uIGkzODYgYW5kIHg4Nl82NCwgdG9vLi4uLgo+Cj4gSSB1
c2UgdGhlIGRlZmF1bHQgY29tcGlsZXIgb24gVWJ1bnR1IDI0LjA0Lgo+IERvIHlvdSB0aGluayBp
dCdzIGJlc3QgdGhhdCBJIGp1c3QgcmVwbGFjZSB0aGUgRklFTERfUFJFUCAgbWFjcm8gd2l0aAo+
IG1hbnVhbCBjb2RlIGZvciB0aGF0IGxpbmU/CgpJIHRoaW5rIGxldCdzIHdhaXQgYW5kIHNlZS4u
LgpQZXJoYXBzIHRoaXMgKGNvbXBpbGVyIGJ1Zz8pIGNhbiBiZSB3b3JrZWQgYXJvdW5kIGluIHRo
ZQpGSUVMRF9QUkVQKCkgbWFjcm8gaXRzZWxmLgoKR3J7b2V0amUsZWV0aW5nfXMsCgogICAgICAg
ICAgICAgICAgICAgICAgICBHZWVydAoKLS0gCkdlZXJ0IFV5dHRlcmhvZXZlbiAtLSBUaGVyZSdz
IGxvdHMgb2YgTGludXggYmV5b25kIGlhMzIgLS0gZ2VlcnRAbGludXgtbTY4ay5vcmcKCkluIHBl
cnNvbmFsIGNvbnZlcnNhdGlvbnMgd2l0aCB0ZWNobmljYWwgcGVvcGxlLCBJIGNhbGwgbXlzZWxm
IGEgaGFja2VyLiBCdXQKd2hlbiBJJ20gdGFsa2luZyB0byBqb3VybmFsaXN0cyBJIGp1c3Qgc2F5
ICJwcm9ncmFtbWVyIiBvciBzb21ldGhpbmcgbGlrZSB0aGF0LgogICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIC0tIExpbnVzIFRvcnZhbGRzCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
