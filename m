Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36F2FE7717D
	for <linux-phy@archiver.kernel.org>; Fri, 13 Dec 2024 15:04:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vK3wRywvDuq5aV47LTzylxorrouuORXMVPACesixmoo=; b=n093hpzTbR8G3W
	X5pUV/tA4kdZ1TxSW8JQvEmuevqm9k0F/6YYCocJ5z1qS+ZYSGw/1WRQUzr6g+1BHwf/2PNvgHfZS
	PjHBfYzTWMOGvezWXQim5tei2jGG5LTC76dS41p9UyK9sQJJ7KTVEO/6NTA+pIhm2pYgs4UY8mfUH
	unerrEm/Dv8WVbt2QbY6GEJf00qidhHSNJy/DWG2SiWQLYz0qU12UxeNvhlmragxpf7oMke/GU/Gh
	L5N+oBRpnh2nB3cEITiH5FYtFyBxggXllwQ4rOtegWZLSmUDuCWH9jyzhCyIcx6NHK2+UZLMfmEO8
	T16ECimAwzqIKVOqbezw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tM7Dg-00000004CqE-1AzF;
	Fri, 13 Dec 2024 15:04:44 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tM76c-00000004BA6-0faR
	for linux-phy@lists.infradead.org;
	Fri, 13 Dec 2024 14:57:27 +0000
Received: by mail-pj1-x102f.google.com with SMTP id 98e67ed59e1d1-2ee6dd1dd5eso1430478a91.3
        for <linux-phy@lists.infradead.org>; Fri, 13 Dec 2024 06:57:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734101845; x=1734706645; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lSAUqBcs3hrEoqiEvd+1MHuwx0KU0yQERbqjEWvsGCI=;
        b=VmjQA/Di4xPOckAeQVeMO+8Yw/TOVVRhtLS9TzeSkkDlXQ8YqWK9SJmZrH7WvJlb8t
         Vxz/jz5E3QnwaMj5g9OAXBH+oLwsd8i7jmSsKIHNuj8Ibz7nrRmwhJjmRLucFGADirPY
         EXTpLnhPM7rr4n+IFBeEFmwVeE5uHn/sxa4x07D3d8vL1osNUUydJ+dLaXeJ5FSeQHE6
         mLhb7hag6PZjm4dL8Z2fVTDlnrSShxM9x/uoISsroyYsvWxORXN532ZFBP71cWaRa5Xm
         PgCnjODDd34Ct3gzRZHtgfvP6qxwz1IimWhPcuE6CdQ/+XaybBaxBZ32lt/hPUgeB91g
         fhdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734101845; x=1734706645;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lSAUqBcs3hrEoqiEvd+1MHuwx0KU0yQERbqjEWvsGCI=;
        b=R+uV/2eEvYGaRGDoSmVyOpVcAIvzF5N3bBWdhrJtufQAsVBEzQpT8WHHn/5scq2bq7
         utWeyeTz4o5HQGK2w35TGCot84rOM0sCZC2V1TpszxGpdlSDcKz7n5CPQUAJcbc+5Pjt
         3IQ78t1dUUmZFJYv6hA4q83WeEnV1cXyigxn0YUjn5hPwz+At2aMKr8Zna1/fToZmf0A
         7W420BhiLQAhq0tCooJzxbR7I73mswU6GDfAmG4v4ZV0XLb00n1zj2A8Zx+aQs5hTDY/
         WNHFKg1Xo04L3EQesFTc4q4RgShr8Q9L/YCuZITTRCn3XJ4gUFQmB0iJsdwfBSbgkic0
         csKQ==
X-Gm-Message-State: AOJu0YwRhtP6q/ox4itG0+Mb3MHWCBP5ouwcss7kLxil+IUxx4n+WqBK
	L1fN4maxRxa+keLVbl0+Ip4ZcuD+YPhNenDYDCtCZQO1fBeqcZ1v8fY8soPHXZzyXs39cPqbmrn
	aOpG0a+K3BZhQBH0rBfd0PWuzzioF5A==
X-Gm-Gg: ASbGncueWZAjsrb9AM5FRkt2WUxMgur8KMaNDrkQJc7welhqANFHg8CjJK0J3d5bcIr
	1qH9LWc+VoorNwAzphy4WmprZHJTcKKea+Bgy9w==
X-Google-Smtp-Source: AGHT+IHNGpPlVh1lnqxY3brXzVk13/rONRLR5RY8z01UQRxy4JyeEH9DyH7OH59As8yd6EByCgL95eg9p2oLBMQ1cUg=
X-Received: by 2002:a17:90b:1e43:b0:2ee:4b8f:a59c with SMTP id
 98e67ed59e1d1-2f28fd6a568mr3966032a91.22.1734101844443; Fri, 13 Dec 2024
 06:57:24 -0800 (PST)
MIME-Version: 1.0
References: <20241026132014.73050-1-aford173@gmail.com> <20241026132014.73050-3-aford173@gmail.com>
 <CAMuHMdVx9zYw7ZpyH=d_rs==a+_jzi--Fax5cVe-8UW+RvRx+g@mail.gmail.com>
In-Reply-To: <CAMuHMdVx9zYw7ZpyH=d_rs==a+_jzi--Fax5cVe-8UW+RvRx+g@mail.gmail.com>
From: Adam Ford <aford173@gmail.com>
Date: Fri, 13 Dec 2024 08:57:12 -0600
Message-ID: <CAHCN7xJBv0jqiPWj3gOJBrK67BgSNsiX6cDg-Tau4A8D16HPUA@mail.gmail.com>
Subject: Re: [PATCH V2 3/3] phy: freescale: fsl-samsung-hdmi: Clean up
 fld_tg_code calculation
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: linux-phy@lists.infradead.org, aford@beaconembedded.com, sandor.yu@nxp.com, 
	Frieder Schrempf <frieder.schrempf@kontron.de>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, 
	Dominique Martinet <dominique.martinet@atmark-techno.com>, 
	Marco Felsch <m.felsch@pengutronix.de>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@baylibre.com>, 
	Lucas Stach <l.stach@pengutronix.de>, linux-kernel@vger.kernel.org, 
	Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241213_065726_197133_274D1622 
X-CRM114-Status: GOOD (  34.68  )
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

T24gRnJpLCBEZWMgMTMsIDIwMjQgYXQgODoxM+KAr0FNIEdlZXJ0IFV5dHRlcmhvZXZlbiA8Z2Vl
cnRAbGludXgtbTY4ay5vcmc+IHdyb3RlOgo+Cj4gSGkgQWRhbSwKPgo+IE9uIFNhdCwgT2N0IDI2
LCAyMDI0IGF0IDM6MjHigK9QTSBBZGFtIEZvcmQgPGFmb3JkMTczQGdtYWlsLmNvbT4gd3JvdGU6
Cj4gPiBDdXJyZW50bHksIHRoZSBjYWxjdWF0aW9uIGZvciBmbGRfdGdfY29kZSBpcyBiYXNlZCBv
biBhIGxvb2t1cCB0YWJsZSwKPgo+IGNhbGN1bGF0aW9uIChldmVyeXdoZXJlKQo+Cj4gPiBidXQg
dGhlcmUgYXJlIGdhcHMgaW4gdGhlIGxvb2t1cCB0YWJsZSwgYW5kIGZyZXF1ZW5jaWVzIGluIHRo
ZXNlCj4gPiBnYXBzIG1heSBub3QgcHJvcGVybHkgdXNlIHRoZSBjb3JyZWN0IGRpdmlkZXIuICBC
YXNlZCBvbiB0aGUgZGVzY3JpcHRpb24KPiA+IG9mIEZMRF9DS19ESVYsIHRoZSBpbnRlcm5hbCBQ
TEwgZnJlcXVlbmN5IHNob3VsZCBiZSBsZXNzIHRoYW4gNTAgTUh6LAo+ID4gc28gZGlyZWN0bHkg
Y2FsY3VhdGUgdGhlIHZhbHVlIG9mIEZMRF9DS19ESVYgZnJvbSBwaXhjbGsuCj4gPiBUaGlzIGFs
bG93IGZvciBwcm9wZXIgY2FsY3VhdGlvbiBvZiBhbnkgcGl4ZWwgY2xvY2sgYW5kIGVsaW1pbmF0
ZXMgYQo+ID4gZmV3IGdhcHMgaW4gdGhlIExVVC4KPiA+Cj4gPiBTaW5jZSB0aGUgdmFsdWUgb2Yg
dGhlIGludF9wbGxjbGsgaXMgaW4gSHosIGRvIHRoZSBmaXhlZC1wb2ludAo+ID4gbWF0aCBpbiBI
eiB0byBhY2hpZXZlIGEgbW9yZSBhY2N1cmF0ZSB2YWx1ZSBhbmQgcmVkdWNlcyB0aGUgY29tcGxl
eGl0eQo+ID4gb2YgdGhlIGNhbHVhdGlvbiB0byAyNE1IeiAqICgyNTYgLyBpbnRfcGxsY2xrKS4K
PiA+Cj4gPiBGaXhlczogNmFkMDgyYmVlOTAyICgicGh5OiBmcmVlc2NhbGU6IGFkZCBTYW1zdW5n
IEhETUkgUEhZIikKPiA+IFNpZ25lZC1vZmYtYnk6IEFkYW0gRm9yZCA8YWZvcmQxNzNAZ21haWwu
Y29tPgo+ID4gUmV2aWV3ZWQtYnk6IEZyaWVkZXIgU2NocmVtcGYgPGZyaWVkZXIuc2NocmVtcGZA
a29udHJvbi5kZT4KPgo+IFRoYW5rcyBmb3IgeW91ciBwYXRjaCwgd2hpY2ggaXMgbm93IGNvbW1p
dCBkNTY3Njc5ZjJiNmE4YmNlICgicGh5Ogo+IGZyZWVzY2FsZTogZnNsLXNhbXN1bmctaGRtaTog
Q2xlYW4gdXAgZmxkX3RnX2NvZGUgY2FsY3VsYXRpb24iKSBpbgo+IG5leHQtMjAyNDEyMDkgYW5k
IGxhdGVyLgo+Cj4gPiAtLS0gYS9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1zYW1zdW5n
LWhkbWkuYwo+ID4gKysrIGIvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtc2Ftc3VuZy1o
ZG1pLmMKPiA+IEBAIC0zMzEsMjUgKzMzMSwxNyBAQCBmc2xfc2Ftc3VuZ19oZG1pX3BoeV9jb25m
aWd1cmVfcGxsX2xvY2tfZGV0KHN0cnVjdCBmc2xfc2Ftc3VuZ19oZG1pX3BoeSAqcGh5LAo+ID4g
IHsKPiA+ICAgICAgICAgdTMyIHBjbGsgPSBjZmctPnBpeGNsazsKPiA+ICAgICAgICAgdTMyIGZs
ZF90Z19jb2RlOwo+ID4gLSAgICAgICB1MzIgcGNsa19raHo7Cj4gPiAtICAgICAgIHU4IGRpdiA9
IDE7Cj4gPiAtCj4gPiAtICAgICAgIHN3aXRjaCAoY2ZnLT5waXhjbGspIHsKPiA+IC0gICAgICAg
Y2FzZSAgMjIyNTAwMDAgLi4uICA0NzUwMDAwMDoKPiA+IC0gICAgICAgICAgICAgICBkaXYgPSAx
Owo+ID4gLSAgICAgICAgICAgICAgIGJyZWFrOwo+ID4gLSAgICAgICBjYXNlICA1MDM0OTY1MCAu
Li4gIDk5MDAwMDAwOgo+ID4gLSAgICAgICAgICAgICAgIGRpdiA9IDI7Cj4gPiAtICAgICAgICAg
ICAgICAgYnJlYWs7Cj4gPiAtICAgICAgIGNhc2UgMTAwNjk5MzAwIC4uLiAxOTgwMDAwMDA6Cj4g
PiAtICAgICAgICAgICAgICAgZGl2ID0gNDsKPiA+IC0gICAgICAgICAgICAgICBicmVhazsKPiA+
IC0gICAgICAgY2FzZSAyMDUwMDAwMDAgLi4uIDI5NzAwMDAwMDoKPiA+IC0gICAgICAgICAgICAg
ICBkaXYgPSA4Owo+ID4gLSAgICAgICAgICAgICAgIGJyZWFrOwo+ID4gKyAgICAgICB1MzIgaW50
X3BsbGNsazsKPiA+ICsgICAgICAgdTggZGl2Owo+ID4gKwo+ID4gKyAgICAgICAvKiBGaW5kIGlu
dF9wbGxjbGsgc3BlZWQgKi8KPiA+ICsgICAgICAgZm9yIChkaXYgPSAwOyBkaXYgPCA0OyBkaXYr
Kykgewo+ID4gKyAgICAgICAgICAgICAgIGludF9wbGxjbGsgPSBwY2xrIC8gKDEgPDwgZGl2KTsK
PiA+ICsgICAgICAgICAgICAgICBpZiAoaW50X3BsbGNsayA8ICg1MCAqIE1IWikpCj4gPiArICAg
ICAgICAgICAgICAgICAgICAgICBicmVhazsKPiA+ICAgICAgICAgfQo+ID4KPiA+IC0gICAgICAg
d3JpdGViKEZJRUxEX1BSRVAoUkVHMTJfQ0tfRElWX01BU0ssIGlsb2cyKGRpdikpLCBwaHktPnJl
Z3MgKyBQSFlfUkVHKDEyKSk7Cj4gPiArICAgICAgIHdyaXRlYihGSUVMRF9QUkVQKFJFRzEyX0NL
X0RJVl9NQVNLLCBkaXYpLCBwaHktPnJlZ3MgKyBQSFlfUkVHKDEyKSk7Cj4KPiBUaGlzIGNhdXNl
cyBhIGJ1aWxkIGZhaWx1cmUgb24gbTY4ayB3aXRoIGdjYyB2ZXJzaW9uIDkuNS4wIChVYnVudHUK
PiA5LjUuMC0xdWJ1bnR1MX4yMi4wNCk6Cj4KPiAgIENDIFtNXSAgZHJpdmVycy9waHkvZnJlZXNj
YWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1pLm8KPiBJbiBmaWxlIGluY2x1ZGVkIGZyb20gLi9hcmNo
L202OGsvaW5jbHVkZS9hc20vaW9fbW0uaDoyNSwKPiAgICAgICAgICAgICAgICAgIGZyb20gLi9h
cmNoL202OGsvaW5jbHVkZS9hc20vaW8uaDo4LAo+ICAgICAgICAgICAgICAgICAgZnJvbSAuL2lu
Y2x1ZGUvbGludXgvaW8uaDoxNCwKPiAgICAgICAgICAgICAgICAgIGZyb20gLi9pbmNsdWRlL2xp
bnV4L2lvcG9sbC5oOjE0LAo+ICAgICAgICAgICAgICAgICAgZnJvbSBkcml2ZXJzL3BoeS9mcmVl
c2NhbGUvcGh5LWZzbC1zYW1zdW5nLWhkbWkuYzoxMjoKPiBJbiBmdW5jdGlvbiDigJhmc2xfc2Ft
c3VuZ19oZG1pX3BoeV9jb25maWd1cmVfcGxsX2xvY2tfZGV04oCZLAo+ICAgICBpbmxpbmVkIGZy
b20g4oCYZnNsX3NhbXN1bmdfaGRtaV9waHlfY29uZmlndXJl4oCZIGF0Cj4gZHJpdmVycy9waHkv
ZnJlZXNjYWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1pLmM6NDcwOjI6Cj4gLi8uL2luY2x1ZGUvbGlu
dXgvY29tcGlsZXJfdHlwZXMuaDo1NDI6Mzg6IGVycm9yOiBjYWxsIHRvCj4g4oCYX19jb21waWxl
dGltZV9hc3NlcnRfMTQ34oCZIGRlY2xhcmVkIHdpdGggYXR0cmlidXRlIGVycm9yOiBGSUVMRF9Q
UkVQOgo+IHZhbHVlIHRvbyBsYXJnZSBmb3IgdGhlIGZpZWxkCj4gICA1NDIgfCAgX2NvbXBpbGV0
aW1lX2Fzc2VydChjb25kaXRpb24sIG1zZywgX19jb21waWxldGltZV9hc3NlcnRfLCBfX0NPVU5U
RVJfXykKPiAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBeCj4g
Li9hcmNoL202OGsvaW5jbHVkZS9hc20vcmF3X2lvLmg6MzA6ODI6IG5vdGU6IGluIGRlZmluaXRp
b24gb2YgbWFjcm8g4oCYb3V0XzjigJkKPiAgICAzMCB8ICNkZWZpbmUgb3V0XzgoYWRkcixiKSAo
dm9pZCkoKCooX19mb3JjZSB2b2xhdGlsZSB1OCAqKQo+ICh1bnNpZ25lZCBsb25nKShhZGRyKSkg
PSAoYikpCj4gICAgICAgfAo+ICAgICAgICAgICAgICAgICAgIF4KPiBkcml2ZXJzL3BoeS9mcmVl
c2NhbGUvcGh5LWZzbC1zYW1zdW5nLWhkbWkuYzozNDQ6Mjogbm90ZTogaW4gZXhwYW5zaW9uCj4g
b2YgbWFjcm8g4oCYd3JpdGVi4oCZCj4gICAzNDQgfCAgd3JpdGViKEZJRUxEX1BSRVAoUkVHMTJf
Q0tfRElWX01BU0ssIGRpdiksIHBoeS0+cmVncyArIFBIWV9SRUcoMTIpKTsKPiAgICAgICB8ICBe
fn5+fn4KPiAuLy4vaW5jbHVkZS9saW51eC9jb21waWxlcl90eXBlcy5oOjUzMDoyOiBub3RlOiBp
biBleHBhbnNpb24gb2YgbWFjcm8KPiDigJhfX2NvbXBpbGV0aW1lX2Fzc2VydOKAmQo+ICAgNTMw
IHwgIF9fY29tcGlsZXRpbWVfYXNzZXJ0KGNvbmRpdGlvbiwgbXNnLCBwcmVmaXgsIHN1ZmZpeCkK
PiAgICAgICB8ICBefn5+fn5+fn5+fn5+fn5+fn5+fgo+IC4vLi9pbmNsdWRlL2xpbnV4L2NvbXBp
bGVyX3R5cGVzLmg6NTQyOjI6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybwo+IOKAmF9jb21w
aWxldGltZV9hc3NlcnTigJkKPiAgIDU0MiB8ICBfY29tcGlsZXRpbWVfYXNzZXJ0KGNvbmRpdGlv
biwgbXNnLCBfX2NvbXBpbGV0aW1lX2Fzc2VydF8sIF9fQ09VTlRFUl9fKQo+ICAgICAgIHwgIF5+
fn5+fn5+fn5+fn5+fn5+fn4KPiAuL2luY2x1ZGUvbGludXgvYnVpbGRfYnVnLmg6Mzk6Mzc6IG5v
dGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybwo+IOKAmGNvbXBpbGV0aW1lX2Fzc2VydOKAmQo+ICAg
IDM5IHwgI2RlZmluZSBCVUlMRF9CVUdfT05fTVNHKGNvbmQsIG1zZykgY29tcGlsZXRpbWVfYXNz
ZXJ0KCEoY29uZCksIG1zZykKPiAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fgo+IC4vaW5jbHVkZS9saW51eC9iaXRmaWVsZC5oOjY4
OjM6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDigJhCVUlMRF9CVUdfT05fTVNH4oCZCj4g
ICAgNjggfCAgIEJVSUxEX0JVR19PTl9NU0coX19idWlsdGluX2NvbnN0YW50X3AoX3ZhbCkgPyAg
XAo+ICAgICAgIHwgICBefn5+fn5+fn5+fn5+fn5+Cj4gLi9pbmNsdWRlL2xpbnV4L2JpdGZpZWxk
Lmg6MTE1OjM6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDigJhfX0JGX0ZJRUxEX0NIRUNL
4oCZCj4gICAxMTUgfCAgIF9fQkZfRklFTERfQ0hFQ0soX21hc2ssIDBVTEwsIF92YWwsICJGSUVM
RF9QUkVQOiAiKTsgXAo+ICAgICAgIHwgICBefn5+fn5+fn5+fn5+fn5+Cj4gZHJpdmVycy9waHkv
ZnJlZXNjYWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1pLmM6MzQ0Ojk6IG5vdGU6IGluIGV4cGFuc2lv
bgo+IG9mIG1hY3JvIOKAmEZJRUxEX1BSRVDigJkKPiAgIDM0NCB8ICB3cml0ZWIoRklFTERfUFJF
UChSRUcxMl9DS19ESVZfTUFTSywgZGl2KSwgcGh5LT5yZWdzICsgUEhZX1JFRygxMikpOwo+ICAg
ICAgIHwgICAgICAgICBefn5+fn5+fn5+Cj4KPiBBcyBpdCBidWlsZHMgZmluZSBvbiBpMzg2LCBJ
IGxvb2tlZCBhdCB0aGUgcHJlcHJvY2Vzc2VkIHNvdXJjZSBmaWxlcywKPiBidXQgZGlkbid0IHNl
ZSBhbnkgZGlmZmVyZW5jZXMgdGhhdCBjb3VsZCBleHBsYWluIHRoaXMuCj4KPiBJIGNoYW5nZWQg
Y3Jvc3MtY29tcGlsZXIgdG8gZ2NjIHZlcnNpb24gMTAuNS4wIChVYnVudHUgMTAuNS4wLTF1YnVu
dHUxfjIyLjA0KSwKPiBhbmQgdGhhdCBmaXhlZCB0aGUgaXNzdWUgb24gbTY4ay4KPiBJIGNoYW5n
ZWQgdGhlIG5hdGl2ZSBjb21waWxlciB0byBnY2MtOSwgYW5kIHRoZSBidWlsZCBzdGFydGVkIGZh
aWxpbmcKPiBvbiBpMzg2IGFuZCB4ODZfNjQsIHRvby4uLi4KCkkgdXNlIHRoZSBkZWZhdWx0IGNv
bXBpbGVyIG9uIFVidW50dSAyNC4wNC4KRG8geW91IHRoaW5rIGl0J3MgYmVzdCB0aGF0IEkganVz
dCByZXBsYWNlIHRoZSBGSUVMRF9QUkVQICBtYWNybyB3aXRoCm1hbnVhbCBjb2RlIGZvciB0aGF0
IGxpbmU/CgphZGFtCj4KPiA+Cj4gPiAgICAgICAgIC8qCj4gPiAgICAgICAgICAqIENhbGN1bGF0
aW9uIGZvciB0aGUgZnJlcXVlbmN5IGxvY2sgZGV0ZWN0b3IgdGFyZ2V0IGNvZGUgKGZsZF90Z19j
b2RlKQo+Cj4gR3J7b2V0amUsZWV0aW5nfXMsCj4KPiAgICAgICAgICAgICAgICAgICAgICAgICBH
ZWVydAo+Cj4gLS0KPiBHZWVydCBVeXR0ZXJob2V2ZW4gLS0gVGhlcmUncyBsb3RzIG9mIExpbnV4
IGJleW9uZCBpYTMyIC0tIGdlZXJ0QGxpbnV4LW02OGsub3JnCj4KPiBJbiBwZXJzb25hbCBjb252
ZXJzYXRpb25zIHdpdGggdGVjaG5pY2FsIHBlb3BsZSwgSSBjYWxsIG15c2VsZiBhIGhhY2tlci4g
QnV0Cj4gd2hlbiBJJ20gdGFsa2luZyB0byBqb3VybmFsaXN0cyBJIGp1c3Qgc2F5ICJwcm9ncmFt
bWVyIiBvciBzb21ldGhpbmcgbGlrZSB0aGF0Lgo+ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgLS0gTGludXMgVG9ydmFsZHMKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
