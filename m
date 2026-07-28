Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32B44C53219
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jul 2026 06:28:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t6iNnnJuA0kEVi+Kdyu1MHpHIYAkJ4xppUhySDOlCjo=; b=qRRRHeaCmQhZi9
	GPsn0XdFACk+rJIUepPGvqn3+VPTmsfe6yWE0rBLK1a4bThGQIvzQmY0XEw95h11xCRsxx3hnEBZD
	XTwy7iN5r+jFxvSwsOQJq221BEIfBNXFHXyMltTxdLa+pc5XVxv747+PciuE+eXEIS7Emr5WffV5m
	+oiVIjWS4QKwbGtTBlDovkc/iDWORgfG19IJg7gxUulfhk2V1tdxU+fNhTJWpfIAh+aSKRmo07InZ
	9fyBPz3BNfEurrgE0JPjBifJZXBIoDb/8p+DsjatVvlP7uEJavzeu9aVvxPMl3SHNBkSS1bHErSFO
	KsUJnSkA8cPw7dfHigJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wobII-00000004XI2-3gx7;
	Tue, 28 Jul 2026 06:28:02 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wobII-00000004XHK-0nyX;
	Tue, 28 Jul 2026 06:28:02 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7D86B6013A;
	Tue, 28 Jul 2026 06:28:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 547C71F000E9;
	Tue, 28 Jul 2026 06:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785220081;
	bh=1gDMNCcHBDuYrPnahUNiZDFlvS3Nqh1QQMdqSSWYU9w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=OjCXX2RIhL4IV+fRTZslnsx2qiImzidMTIUjeGPhIiKJFW0pjPQNLBSTVoM6UUkBq
	 +PrUHOhExKJP8U30r56EWiY1QifFN74cf1D0tz0GsCypZOvJP0AWPHbdc428mzu6Mr
	 J2hgeiTXJfEOC3cWqTbVeomqhjNF3/vZlF3hC5zw5pQY5abkUuwUkxsQyRGa7kZcpk
	 6M1zV1dxzH9CgTyvID3JDJPXhPPLj6ZaIdmxaILO/kabZzN8rhMAssxCAObADzqXcE
	 k/LxzIyV8XrdeShSxA2RygfstjVfNdhUU6sYY8z7PMyunpmmbIfvWJURQdZS/OOHDx
	 duXqVfzPyelww==
Date: Tue, 28 Jul 2026 08:27:57 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Stefan =?utf-8?B?RMO2c2luZ2Vy?= <stefandoesinger@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Brian Masney <bmasney@redhat.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Russell King <linux@armlinux.org.uk>, Lee Jones <lee@kernel.org>, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, mfd@lists.linux.dev
Subject: Re: [PATCH v8 01/12] dt-bindings: clk: zte: Add zx297520v3 top clock
 and reset controller
Message-ID: <20260728-proficient-boobook-of-will-2cc94a@quoll>
References: <20260727-zx29clk-v8-0-7a107b00f1dd@gmail.com>
 <20260727-zx29clk-v8-1-7a107b00f1dd@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260727-zx29clk-v8-1-7a107b00f1dd@gmail.com>
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

T24gTW9uLCBKdWwgMjcsIDIwMjYgYXQgMDk6MjQ6MTZQTSArMDMwMCwgU3RlZmFuIETDtnNpbmdl
ciB3cm90ZToKPiArICBpbnRlcnJ1cHRzOgo+ICsgICAgaXRlbXM6Cj4gKyAgICAgIC0gZGVzY3Jp
cHRpb246IElSUSByZXBvcnRpbmcgVVNCIGNvbm5lY3Rpb24KPiArICAgICAgLSBkZXNjcmlwdGlv
bjogSVJRIHJlcG9ydGluZyBVU0IgZGlzY29ubmVjdGlvbgo+ICsgICAgICAtIGRlc2NyaXB0aW9u
OiBJUlEgcmVwb3J0aW5nIEhTSUMgY29ubmVjdGlvbgo+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBJ
UlEgcmVwb3J0aW5nIEhTSUMgZGlzY29ubmVjdGlvbgo+ICsKPiArICBpbnRlcnJ1cHQtbmFtZXM6
Cj4gKyAgICBpdGVtczoKPiArICAgICAgLSBjb25zdDogdXNiLXVwCj4gKyAgICAgIC0gY29uc3Q6
IHVzYi1kb3duCj4gKyAgICAgIC0gY29uc3Q6IGhzaWMtdXAKPiArICAgICAgLSBjb25zdDogaHNp
Yy1kb3duCj4gKwo+ICsgIHJlc2V0czoKPiArICAgIGl0ZW1zOgo+ICsgICAgICAtIGRlc2NyaXB0
aW9uOiBVU0IgcGh5IHJlc2V0Cj4gKyAgICAgIC0gZGVzY3JpcHRpb246IEhTSUMgcGh5IHJlc2V0
Cj4gKwo+ICsgIHJlc2V0LW5hbWVzOgo+ICsgICAgaXRlbXM6Cj4gKyAgICAgIC0gY29uc3Q6IHVz
Ygo+ICsgICAgICAtIGNvbnN0OiBoc2ljCgpZb3UgZG8gbm90IG5lZWQgdGhlc2UgdHdvLiBJdCdz
IG9uZSBkZXZpY2UgYW5kIERUIGRvZXMgbm90IHJlcHJlc2VudAppbnRlcm5hbCBkZXZpY2Ugd2ly
aW5ncyBiZWNhdXNlIHRoZXkgYXJlIHJlZHVuZGFudCAoZGVkdWNpYmxlIGZyb20gdGhlCmNvbXBh
dGlibGUpLgoKPiArCj4gKyAgIiNjbG9jay1jZWxscyI6Cj4gKyAgICBjb25zdDogMQo+ICsKPiAr
ICAiI3BoeS1jZWxscyI6Cj4gKyAgICBjb25zdDogMQo+ICsKPiArICAiI3Jlc2V0LWNlbGxzIjoK
PiArICAgIGNvbnN0OiAxCj4gKwo+ICsgIHN5c2Nvbi1yZWJvb3Q6Cj4gKyAgICB0eXBlOiBvYmpl
Y3QKPiArICAgICRyZWY6IC9zY2hlbWFzL3Bvd2VyL3Jlc2V0L3N5c2Nvbi1yZWJvb3QueWFtbCMK
PiArICAgIGRlc2NyaXB0aW9uOgo+ICsgICAgICBSZWJvb3QgbWV0aG9kIGZvciB0aGUgU29DLgo+
ICsKPiArcmVxdWlyZWQ6Cj4gKyAgLSBjb21wYXRpYmxlCj4gKyAgLSByZWcKPiArICAtIGNsb2Nr
cwo+ICsgIC0gY2xvY2stbmFtZXMKPiArICAtIGludGVycnVwdHMKPiArICAtIGludGVycnVwdC1u
YW1lcwo+ICsgIC0gcmVzZXRzCj4gKyAgLSByZXNldC1uYW1lcwo+ICsgIC0gc3lzY29uLXJlYm9v
dAo+ICsgIC0gIiNjbG9jay1jZWxscyIKPiArICAtICIjcGh5LWNlbGxzIgo+ICsgIC0gIiNyZXNl
dC1jZWxscyIKPiArCj4gK3VuZXZhbHVhdGVkUHJvcGVydGllczogZmFsc2UKClRoaXMgd2FzIGRp
ZmZlcmVudCBsYXN0IHRpbWUgYW5kIHByZXZpb3VzIGNvZGUgd2FzIGNvcnJlY3QuCgo+ICsKPiAr
ZXhhbXBsZXM6Cj4gKyAgLSB8Cj4gKyAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW50ZXJydXB0
LWNvbnRyb2xsZXIvYXJtLWdpYy5oPgo+ICsgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3Jlc2V0
L3p0ZSx6eDI5NzUyMHYzLXJlc2V0Lmg+Cj4gKyAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvcGh5
L3p0ZSx6eDI5NzUyMHYzLXRvcGNybS5oPgo+ICsgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2Ns
b2NrL3p0ZSx6eDI5NzUyMHYzLWNsay5oPgo+ICsKPiArICAgIHRvcGNybTogY2xvY2stY29udHJv
bGxlckAxM2IwMDAgewo+ICsgICAgICAgIGNvbXBhdGlibGUgPSAienRlLHp4Mjk3NTIwdjMtdG9w
Y3JtIiwgInN5c2NvbiI7Cj4gKyAgICAgICAgcmVnID0gPDB4MDAxM2IwMDAgMHg0MDA+Owo+ICsg
ICAgICAgIGNsb2NrcyA9IDwmb3NjMjZtPiwgPCZvc2MzMms+Owo+ICsgICAgICAgIGNsb2NrLW5h
bWVzID0gIm9zYzI2bSIsICJvc2MzMmsiOwo+ICsgICAgICAgIGludGVycnVwdHMgPSA8R0lDX1NQ
SSA0MiBJUlFfVFlQRV9FREdFX1JJU0lORz4sCj4gKyAgICAgICAgICAgICAgICAgICAgIDxHSUNf
U1BJIDQzIElSUV9UWVBFX0VER0VfUklTSU5HPiwKPiArICAgICAgICAgICAgICAgICAgICAgPEdJ
Q19TUEkgNDUgSVJRX1RZUEVfRURHRV9SSVNJTkc+LAo+ICsgICAgICAgICAgICAgICAgICAgICA8
R0lDX1NQSSA0NiBJUlFfVFlQRV9FREdFX1JJU0lORz47Cj4gKyAgICAgICAgaW50ZXJydXB0LW5h
bWVzID0gInVzYi11cCIsICJ1c2ItZG93biIsICJoc2ljLXVwIiwgImhzaWMtZG93biI7Cj4gKyAg
ICAgICAgcmVzZXRzID0gPCZ0b3Bjcm0gWlgyOTc1MjBWM19VU0JfUEhZX1JFU0VUPiwKPiArICAg
ICAgICAgICAgICAgICA8JnRvcGNybSBaWDI5NzUyMFYzX0hTSUNfUEhZX1JFU0VUPjsKPiArICAg
ICAgICByZXNldC1uYW1lcyA9ICJ1c2IiLCAiaHNpYyI7Cj4gKyAgICAgICAgI2Nsb2NrLWNlbGxz
ID0gPDE+Owo+ICsgICAgICAgICNwaHktY2VsbHMgPSA8MT47Cj4gKyAgICAgICAgI3Jlc2V0LWNl
bGxzID0gPDE+Owo+ICsKPiArICAgICAgICBzeXNjb24tcmVib290IHsKPiArICAgICAgICAgIGNv
bXBhdGlibGUgPSAic3lzY29uLXJlYm9vdCI7Cj4gKyAgICAgICAgICBvZmZzZXQgPSA8MHgwPjsK
PiArICAgICAgICAgIG1hc2sgPSA8MHgxPjsKPiArICAgICAgICAgIHZhbHVlID0gPDB4MT47Cj4g
KyAgICAgICAgfTsKCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
