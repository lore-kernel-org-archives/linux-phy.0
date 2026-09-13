Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27F5FC88E5C
	for <linux-phy@archiver.kernel.org>; Sun, 13 Sep 2026 17:07:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=idYLxpJvgTr2DMfBQxvwbPwB/F0kN9bs8cE/maWhNeA=; b=JZJySS0mNBXVxB
	B831wpXts7D9UYCtZ/arg/GGd/ajI8hffLrsg7iqjg9AZFosehTu1pfQU/XaoM50DH2r/bE86B99f
	QiwKKbdgFHslG4Jbkc5WvZQmrvLS0JC0IA5b4zT3xF/LCJxQCkmxuM0muB6WHVn9aWOr43jnbyZrh
	2GQemDbszmise1JWSJChoGJ2iDVWmpQTtIaYD5ROldb1ZNtNUOOfnIDuYMR3OvtQfbyJM2hFKfQgF
	m5kpkfgO0d78dHxIIwdihlTNi3XdxzDLEjwLqtAzh96r3rX43GZc8zFqhOUvr/DzuFXlH2QOFFRxD
	xU3Y9DmZohG/21Kt5lKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5nfR-00000001qZh-3ToZ;
	Sun, 13 Sep 2026 17:07:01 +0000
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5nfP-00000001qZJ-0tOQ
	for linux-phy@lists.infradead.org;
	Sun, 13 Sep 2026 17:07:00 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-49b912e2406so5016795e9.1
        for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 10:06:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789319217; x=1789924017; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=CLfGELYFsfdMyOIjPBzlfKUMxy/FgAuN3WPbdQvjEjI=;
        b=i4YD29Jc4FU2eN3nkAj5e7fl3Wf9Cboz825hivoRDLwyiqJybY7MX3nRV7qLjqzN/c
         DG/HYpfb3f+6YYTx/uQUqtPKaGzsmieYcYiKCT/OJ75GqG/iU853Yx5CgBoHzO6E1J3h
         7VPyE2XH+y/9Xpt4j825epd/MI81LqQUqI1W4+11tY0PGg4FjR8xXqjEnw64BVQdP21X
         lB0kTQxPE3AV3ewUSowySDWqkQUJAmQJhsd9XCHpHLpmHngX+pyUfjAU/tJCIbBCHwVl
         6IRS3XMxpJvSn1kRSaRTj5yXr+/pSyvk2ktCCzPVxDxRSZqLKO7GyHkCc4f0pE5FBStk
         yq5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789319217; x=1789924017;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=CLfGELYFsfdMyOIjPBzlfKUMxy/FgAuN3WPbdQvjEjI=;
        b=VVsAsbuhbiE40eFUbzAKPWId6eYtTxN/MKSXs164LmkclgPjC9NZW6SyoS9zpBb7nd
         n/QVoasFgH9Mkv2/a0dpRDlQTv+g5h2mN4sPuN7YX7S42szOKIfzB+zagj2uRUYXI4He
         z/I4nk+DDVZkuybdYewD+PVLzlJVCL6MJjIMbbhD1UyAFlbWsUTd32bbI3EfY60B8RQD
         bo7lFNbuUsEmiiGUTM2OHUSaJPNKa8ASaN96TuJFsQggmYKLlaWjR9uBBnI4+9SU3N4f
         BQgzb5oNDycG2bWIO5Z1L3U9+scXwEYnFT0KLeqbGsjGooqG74daHv5AnslEkp7wTlkt
         5OzQ==
X-Forwarded-Encrypted: i=1; AKwUvBx1bvSTMVrcHKBZhRal3A1wuq8DiswBTNDJe29N3hg4u7xg8dZXmR0HQgoDpxMx9xJyiCQf2J/BZpA=@lists.infradead.org
X-Gm-Message-State: AFuF++lAlIT7fv47vuvdghoF1BhE7MLxUfZ0hpm9j4vATE9J7S9LDYpN
	CkA0uyjurcZPxDRgPNmHyqMlg6C8H4j4QoaCKjJ6UH6kWcdtfFidIaGT
X-Gm-Gg: AYBFou0xepKuBQMq5X9aregccpE/NkqZLwIR3geGSUrUK5pnPtpHnGiXbyJ3dMnUn2J
	dEDnL+C9gxMf0OtfQzl/oeggQJRRdolSzGpq8TLb/32u53zjB5fmRcaAiELdPPwEiLFIubqhick
	FFUj8WwgP2tQMjNTa/pOzfVe8vQrmNGQJfkVGBwi030i67IA0CsaE1B6Ym4LNRKUTn29EKNjkCM
	UMZCSecs15TTsY0ekNFGiLNC+6O4kdC4aymJbb3pxowhspQmQGebJK9f2uhz90bFaNKShc+B3A2
	eSNxiQRcrEqw1UKrj3x7Yg/8O9xfTx8FKhhtYADkBCBw+TfVqh6L9woFOBpOuJFsCKxwX77MUW6
	CWQIRay5fZpbKMGtq6jZpCZdX6ScFUYKROsFTcG+yWuRhmJwD46+ez5HPwM7cdheULOVv5HeatB
	+6bbM1jx9e6tP0osA1iHLjFYhKGwIon8XttXxa4ALw+tJBWQmEDklNgppJGA/2+ySoCI0+eFVMb
	RSP5j7BHbCAp6ZFm7lCwQ==
X-Received: by 2002:a05:600d:4443:20b0:49d:257c:a735 with SMTP id 5b1f17b1804b1-49e76065da4mr22473745e9.11.1789319216429;
        Sun, 13 Sep 2026 10:06:56 -0700 (PDT)
Received: from [192.168.1.10] ([95.43.220.235])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-49e6aac22bbsm116205845e9.0.2026.09.13.10.06.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Sep 2026 10:06:54 -0700 (PDT)
Message-ID: <7dfe251c-7c1f-46c9-a3e4-fb7388ddae49@gmail.com>
Date: Sun, 13 Sep 2026 20:06:52 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/7] phy: cpcap-usb: add DCP detection and make UART
 idle mode optional
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>,
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>,
 Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-gpio@vger.kernel.org
References: <20260711204210.197144-1-ivo.g.dimitrov.75@gmail.com>
 <20260711204210.197144-5-ivo.g.dimitrov.75@gmail.com>
 <oheoylzdj3arrnfdm6747cuubllkdmg4gx7vm3zhs3owuooj4v@zdbytrztbdp4>
Content-Language: en-GB
From: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
In-Reply-To: <oheoylzdj3arrnfdm6747cuubllkdmg4gx7vm3zhs3owuooj4v@zdbytrztbdp4>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_100659_302419_2C5E46AA 
X-CRM114-Status: GOOD (  30.03  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

CgpPbiA5LjA5LjI2INCzLiAxOTowNyDRhy4sIE1hbml2YW5uYW4gU2FkaGFzaXZhbSB3cm90ZToK
PiBPbiBTYXQsIEp1bCAxMSwgMjAyNiBhdCAxMTo0MjowN1BNICswMzAwLCBJdmF5bG8gRGltaXRy
b3Ygd3JvdGU6Cj4+IEhhbmRsZSBEQ1Agc2VwYXJhdGVseSBmcm9tIFVTQiBob3N0IGNvbm5lY3Rp
b25zIHVzaW5nIENQQ0FQIGNoYXJnZXIKPj4gZGV0ZWN0aW9uIHN0YXR1cy4KPj4KPj4gTWFrZSB0
aGUgZXhpc3RpbmcgaWRsZSBVQVJUIG1vZGUgb3B0aW9uYWwgdmlhIHRoZSAiZW5hYmxlX3VhcnQi
IG1vZHVsZQo+PiBwYXJhbWV0ZXIuIFdoZW4gZGlzYWJsZWQgKGRlZmF1bHQpLCB0aGUgUEhZIHJl
bWFpbnMgaW4gaXRzIFVTQi9jaGFyZ2VyCj4+IGRldGVjdGlvbiBjb25maWd1cmF0aW9uIHdoaWxl
IGlkbGUuCj4+Cj4+IEFsc28gaW5pdGlhbGl6ZSB0aGUgUEhZIGludG8gdGhlIGJhc2VsaW5lIGNv
bmZpZ3VyYXRpb24gcmVxdWlyZWQgZm9yCj4+IHJlbGlhYmxlIGNoYXJnZXIgZGV0ZWN0aW9uIGR1
cmluZyBwcm9iZS4KPj4KPj4gVXNlIHRoZSBvcHRpb25hbCAic2FmZSIgcGluY3RybCBzdGF0ZSBi
ZWZvcmUgc3dpdGNoaW5nIGJldHdlZW4gbW9kZXMgdG8KPj4gYXZvaWQgZ2xpdGNoZXMgb24gVVNC
IG9yIFVBUlQgbGluZXMuCj4+Cj4gCj4gTG9va3MgbGlrZSB0aGlzIGNoYW5nZSBpcyBkb2luZyBt
dWx0aXBsZSB0aGluZ3MgYXQgb25jZS4gUGxlYXNlIHNwbGl0IHRoZQo+IGNoYW5nZXMgbG9naWNh
bGx5IHRvIHNlcGFyYXRlIHBhdGNoZXMuCj4gCndpbGwgc3BsaXRpbmcgaW4gdHdvOgoKcGF0Y2gx
OiBlbmFibGVfdWFydCArIHNhZmUgcGluY3RybApwYXRjaDI6IERDUCBkZXRlY3Rpb24gKyBpbml0
IG9uIHByb2JlCgpiZSBvayBvciB5b3Ugd2FudCBtZSB0byBzcGxpdCBldmVuIG1vcmU/IFRvIG1l
IGl0IG1ha2VzIHNlbnNlIGFzIAplbmFibGVfdWFydCB3aWxsIGJlIGZldyBsaW5lcyBvbmx5IGlm
IHNlbnQgYXMgYSBzZXBhcmF0ZSBwYXRjaCBhbmQgSSAKZG9uJ3QgdGhpbmsgc3BsaXR0aW5nIERD
UCBkZXRlY3Rpb24gKyBpbml0IG9uIHByb2JlIG1ha2VzIHNlbnNlLgoKPj4gTm90ZTogRW5hYmxp
bmcgVUFSVCBpZGxlIG1vZGUgaW5jcmVhc2VzIGlkbGUgcG93ZXIgY29uc3VtcHRpb24gKGJ5IDI1
bVcKPj4gb24gZHJvaWQ0KS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogSXZheWxvIERpbWl0cm92IDxp
dm8uZy5kaW1pdHJvdi43NUBnbWFpbC5jb20+Cj4+Cj4+ICMgQ29uZmxpY3RzOgo+PiAjCWRyaXZl
cnMvcGh5L21vdG9yb2xhL3BoeS1jcGNhcC11c2IuYwo+IAo+IFdoYXQgaXMgdGhpcyBjb25mbGlj
dD8KCmFuIGFydGVmYWN0IGZyb20gbnRoIGxvY2FsIHJlYmFzZS9tZXJnZSBiZWZvcmUgc3VibWlz
c2lvbiA6KSAuCgo+IAo+PiAtLS0KPj4gICBkcml2ZXJzL3BoeS9tb3Rvcm9sYS9waHktY3BjYXAt
dXNiLmMgfCAzMDEgKysrKysrKysrKysrKysrKysrKysrLS0tLS0tCj4+ICAgMSBmaWxlIGNoYW5n
ZWQsIDIzOCBpbnNlcnRpb25zKCspLCA2MyBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvcGh5L21vdG9yb2xhL3BoeS1jcGNhcC11c2IuYyBiL2RyaXZlcnMvcGh5L21vdG9y
b2xhL3BoeS1jcGNhcC11c2IuYwo+PiBpbmRleCA3NDExNDVjODllNWIuLjJkNzcwZmYxOWU5MyAx
MDA2NDQKPj4gLS0tIGEvZHJpdmVycy9waHkvbW90b3JvbGEvcGh5LWNwY2FwLXVzYi5jCj4+ICsr
KyBiL2RyaXZlcnMvcGh5L21vdG9yb2xhL3BoeS1jcGNhcC11c2IuYwo+PiBAQCAtMTEwLDYgKzEx
MCwxNSBAQCBlbnVtIGNwY2FwX2dwaW9fbW9kZSB7Cj4+ICAgCUNQQ0FQX09UR19ETV9EUCwKPj4g
ICB9Owo+PiAgIAo+PiArZW51bSBjcGNhcF9tb2RlIHsKPj4gKwlDUENBUF9VTktOT1dOLAo+PiAr
CUNQQ0FQX0lETEUsCj4+ICsJQ1BDQVBfQ0hBUkdFUiwKPj4gKwlDUENBUF9VU0IsCj4+ICsJQ1BD
QVBfVVNCX0hPU1QsCj4+ICsJQ1BDQVBfRE9DSywKPj4gK307Cj4+ICsKPj4gICBzdHJ1Y3QgY3Bj
YXBfcGh5X2RkYXRhIHsKPj4gICAJc3RydWN0IHJlZ21hcCAqcmVnOwo+PiAgIAlzdHJ1Y3QgZGV2
aWNlICpkZXY7Cj4+IEBAIC0xMTksMTUgKzEyOCwxOSBAQCBzdHJ1Y3QgY3BjYXBfcGh5X2RkYXRh
IHsKPj4gICAJc3RydWN0IHBpbmN0cmxfc3RhdGUgKnBpbnNfdWxwaTsKPj4gICAJc3RydWN0IHBp
bmN0cmxfc3RhdGUgKnBpbnNfdXRtaTsKPj4gICAJc3RydWN0IHBpbmN0cmxfc3RhdGUgKnBpbnNf
dWFydDsKPj4gKwlzdHJ1Y3QgcGluY3RybF9zdGF0ZSAqcGluc19zYWZlOwo+PiAgIAlzdHJ1Y3Qg
Z3Bpb19kZXNjICpncGlvWzJdOwo+PiAgIAlzdHJ1Y3QgaWlvX2NoYW5uZWwgKnZidXM7Cj4+ICAg
CXN0cnVjdCBpaW9fY2hhbm5lbCAqaWQ7Cj4+ICAgCXN0cnVjdCByZWd1bGF0b3IgKnZ1c2I7Cj4+
ICAgCWF0b21pY190IGFjdGl2ZTsKPj4gLQl1bnNpZ25lZCBpbnQgdmJ1c19wcm92aWRlcjoxOwo+
PiAtCXVuc2lnbmVkIGludCBkb2NrZWQ6MTsKPj4gKwllbnVtIGNwY2FwX21vZGUgbW9kZTsKPj4g
ICB9Owo+PiAgIAo+PiArc3RhdGljIGJvb2wgY3BjYXBfZW5hYmxlX3VhcnQ7Cj4+ICttb2R1bGVf
cGFyYW1fbmFtZWQoZW5hYmxlX3VhcnQsIGNwY2FwX2VuYWJsZV91YXJ0LCBib29sLCAwNjQ0KTsK
Pj4gK01PRFVMRV9QQVJNX0RFU0MoZW5hYmxlX3VhcnQsCj4+ICsJCSAiRW5hYmxlIFVBUlQgb24g
dGhlIFVTQiBjb25uZWN0b3Igd2hpbGUgaWRsZSAoaW5jcmVhc2VzIHBvd2VyIGNvbnN1bXB0aW9u
KSIpOwo+IAo+IFVzZSBvZiBtb2R1bGUgcGFyYW1zIGlzIGRpc2NvdXJhZ2VkIHRoZXNlIGRheXMu
IEFsc28sIHlvdSBhcmUgZGlzYWJsaW5nIGl0IGJ5Cj4gZGVmYXVsdCwgd2hpY2ggY291bGQgY2F1
c2Ugc3VycHJpc2VzIHRvIHVzZXJzIHdobyBoYXZlIGJvYXJkcyB3aXJlZCB1cCBmb3IgZGVidWcK
PiBjb25zb2xlLiBCdXQgY29uc2lkZXJpbmcgdGhhdCBpdCBjb25zdW1lcyBhIGxvdCBvZiBwb3dl
ciwgSSB0aGluayBpdCBpcyBPSyB0bwo+IGRpc2FibGUgaXQgdGhpcyB3YXkuIEkgY2FuJ3QgdGhp
bmsgb2YgYW5vdGhlciB3YXkgdG8gYWRkIHRoaXMga25vYi4KPiAKCk1lIG5laXRoZXIsIHRoYXQn
cyB3aHkgSSBjYW1lIHVwIHdpdGggYSBtb2R1bGUgcGFyYW1ldGVyLiBZZXMsIEkgCnVuZGVyc3Rh
bmQgZGlzYWJsaW5nIGl0IGJ5IGRlZmF1bHQgbWF5IGNhdXNlIHJlZ3Jlc3Npb24gZm9yIHNvbWUg
CihwcmVzdW1hYmx5IGtub3dsZWRnZWFibGUpIHVzZXJzLCBob3dldmVyLCBJIHRoaW5rIHN0cmlw
cGluZyB+MjUlIGZyb20gCmlkbGUgcG93ZXIgdXNhZ2UgZm9yIHRoZSBvdGhlcnMgd29ydGhzIGl0
LgoKPj4gICBzdGF0aWMgYm9vbCBjcGNhcF91c2JfdmJ1c192YWxpZChzdHJ1Y3QgY3BjYXBfcGh5
X2RkYXRhICpkZGF0YSkKPj4gICB7Cj4+ICAgCWludCBlcnJvciwgdmFsdWUgPSAwOwo+PiBAQCAt
MTk2LDggKzIwOSw5IEBAIHN0YXRpYyBpbnQgY3BjYXBfcGh5X2dldF9pbnRzX3N0YXRlKHN0cnVj
dCBjcGNhcF9waHlfZGRhdGEgKmRkYXRhLAo+PiAgIAlyZXR1cm4gMDsKPj4gICB9Cj4+ICAgCj4g
Cj4gWy4uLl0KPiAKPj4gQEAgLTQ3MywyMSArNTU5LDEwIEBAIHN0YXRpYyBpbnQgY3BjYXBfdXNi
X3NldF91c2JfbW9kZShzdHJ1Y3QgY3BjYXBfcGh5X2RkYXRhICpkZGF0YSkKPj4gICB7Cj4+ICAg
CWludCBlcnJvcjsKPj4gICAKPj4gLQkvKiBEaXNhYmxlIGxpbmVzIHRvIHByZXZlbnQgZ2xpdGNo
ZXMgZnJvbSB3YWtpbmcgdXAgbWRtNjYwMCAqLwo+PiAtCWVycm9yID0gY3BjYXBfdXNiX2dwaW9f
c2V0X21vZGUoZGRhdGEsIENQQ0FQX1VOS05PV05fRElTQUJMRUQpOwo+PiArCWVycm9yID0gY3Bj
YXBfdXNiX3NldF9zYWZlX21vZGUoZGRhdGEpOwo+PiAgIAlpZiAoZXJyb3IpCj4+ICAgCQlyZXR1
cm4gZXJyb3I7Cj4+ICAgCj4+IC0JaWYgKGRkYXRhLT5waW5zX3V0bWkpIHsKPj4gLQkJZXJyb3Ig
PSBwaW5jdHJsX3NlbGVjdF9zdGF0ZShkZGF0YS0+cGlucywgZGRhdGEtPnBpbnNfdXRtaSk7Cj4+
IC0JCWlmIChlcnJvcikgewo+PiAtCQkJZGV2X2VycihkZGF0YS0+ZGV2LCAiY291bGQgbm90IHNl
dCB1c2IgbW9kZTogJWlcbiIsCj4+IC0JCQkJZXJyb3IpOwo+PiAtCj4+IC0JCQlyZXR1cm4gZXJy
b3I7Cj4+IC0JCX0KPj4gLQl9Cj4+IC0KPj4gICAJZXJyb3IgPSByZWdtYXBfdXBkYXRlX2JpdHMo
ZGRhdGEtPnJlZywgQ1BDQVBfUkVHX1VTQkMxLAo+PiAgIAkJCQkgICBDUENBUF9CSVRfVkJVU1BE
LCAwKTsKPj4gICAJaWYgKGVycm9yKQo+PiBAQCAtNTAzLDExICs1NzgsMjMgQEAgc3RhdGljIGlu
dCBjcGNhcF91c2Jfc2V0X3VzYl9tb2RlKHN0cnVjdCBjcGNhcF9waHlfZGRhdGEgKmRkYXRhKQo+
PiAgIAkJZ290byBvdXRfZXJyOwo+PiAgIAo+PiAgIAllcnJvciA9IHJlZ21hcF91cGRhdGVfYml0
cyhkZGF0YS0+cmVnLCBDUENBUF9SRUdfVVNCQzIsCj4+IC0JCQkJICAgQ1BDQVBfQklUX1VTQlhD
VlJFTiwKPj4gKwkJCQkgICBDUENBUF9CSVRfVVNCWENWUkVOIHwKPj4gKwkJCQkgICBDUENBUF9C
SVRfVUFSVE1VWDAgfAo+PiArCQkJCSAgIENQQ0FQX0JJVF9FTVVNT0RFMCwKPiAKPiBBcyBTYXNo
aWtvIG5vdGVkLCB5b3UgYXJlIG5vdCBjbGVhcmluZyBDUENBUF9CSVRfVVNCU1VTUEVORCBiaXQg
c2V0IGluCj4gY3BjYXBfdXNiX3NldF9pZGxlX21vZGUoKS4KPiAKClZlbmRvciBrZXJuZWwgZG9l
cyBub3QgZG8gaXQgYW5kIHdlIGFyZSB1c2luZyB0aGUgcGF0Y2ggd2l0aCAKQ1BDQVBfQklUX1VT
QlNVU1BFTkQgbm90IGNsZWFyZWQgZm9yIGZldyBtb250aHMgd2l0aCBubyBpc3N1ZXMgCndoYXRz
b2V2ZXIsIHNvIEkgYW0gbm90IGNvbnZpbmNlZCB0aGlzIGlzIG5lZWRlZC4gSG93ZXZlciwgdGVz
dHMgb24gdGhlIApkZXZpY2UgZGlkbid0IHNob3cgYW55IGRpZmZlcmVuY2UgaWYgSSBjbGVhciB0
aGUgYml0IHNvIE9LLCB3aWxsIGRvLgoKPj4gICAJCQkJICAgQ1BDQVBfQklUX1VTQlhDVlJFTik7
Cj4+ICAgCWlmIChlcnJvcikKPj4gICAJCWdvdG8gb3V0X2VycjsKPj4gICAKPj4gKwlpZiAoZGRh
dGEtPnBpbnNfdXRtaSkgewo+PiArCQllcnJvciA9IHBpbmN0cmxfc2VsZWN0X3N0YXRlKGRkYXRh
LT5waW5zLCBkZGF0YS0+cGluc191dG1pKTsKPj4gKwkJaWYgKGVycm9yKSB7Cj4+ICsJCQlkZXZf
ZXJyKGRkYXRhLT5kZXYsICJjb3VsZCBub3Qgc2V0IHVzYiBtb2RlOiAlaVxuIiwKPj4gKwkJCQll
cnJvcik7Cj4+ICsKPj4gKwkJCXJldHVybiBlcnJvcjsKPj4gKwkJfQo+PiArCX0KPj4gKwo+PiAg
IAkvKiBFbmFibGUgVVNCIG1vZGUgKi8KPj4gICAJZXJyb3IgPSBjcGNhcF91c2JfZ3Bpb19zZXRf
bW9kZShkZGF0YSwgQ1BDQVBfT1RHX0RNX0RQKTsKPj4gICAJaWYgKGVycm9yKQo+PiBAQCAtNTIx
LDYgKzYwOCwzOCBAQCBzdGF0aWMgaW50IGNwY2FwX3VzYl9zZXRfdXNiX21vZGUoc3RydWN0IGNw
Y2FwX3BoeV9kZGF0YSAqZGRhdGEpCj4+ICAgCXJldHVybiBlcnJvcjsKPj4gICB9Cj4+ICAgCj4+
ICtzdGF0aWMgaW50IGNwY2FwX3VzYl9zZXRfZGNwX21vZGUoc3RydWN0IGNwY2FwX3BoeV9kZGF0
YSAqZGRhdGEpCj4+ICt7Cj4+ICsJaW50IGVycm9yOwo+PiArCj4+ICsJZXJyb3IgPSBjcGNhcF91
c2Jfc2V0X3NhZmVfbW9kZShkZGF0YSk7Cj4+ICsJaWYgKGVycm9yKQo+PiArCQlyZXR1cm4gZXJy
b3I7Cj4+ICsKPj4gKwllcnJvciA9IHJlZ21hcF91cGRhdGVfYml0cyhkZGF0YS0+cmVnLCBDUENB
UF9SRUdfVVNCQzIsCj4+ICsJCQkJICAgQ1BDQVBfQklUX1VTQlhDVlJFTiB8Cj4+ICsJCQkJICAg
Q1BDQVBfQklUX1VBUlRNVVgwIHwKPj4gKwkJCQkgICBDUENBUF9CSVRfRU1VTU9ERTAsIDApOwo+
PiArCWlmIChlcnJvcikKPj4gKwkJZ290byBvdXRfZXJyOwo+PiArCj4+ICsJZXJyb3IgPSByZWdt
YXBfdXBkYXRlX2JpdHMoZGRhdGEtPnJlZywgQ1BDQVBfUkVHX1VTQkMzLAo+PiArCQkJCSAgIENQ
Q0FQX0JJVF9TVVNQRU5EX1NQSSwgMCk7Cj4+ICsJaWYgKGVycm9yKQo+PiArCQlnb3RvIG91dF9l
cnI7Cj4+ICsKPj4gKwllcnJvciA9IGNwY2FwX3VzYl9ncGlvX3NldF9tb2RlKGRkYXRhLCBDUENB
UF9ETV9EUCk7Cj4+ICsJaWYgKGVycm9yKQo+PiArCQlnb3RvIG91dF9lcnI7Cj4+ICsKPj4gKwly
ZXR1cm4gMDsKPj4gKwo+PiArb3V0X2VycjoKPj4gKwlkZXZfZXJyKGRkYXRhLT5kZXYsICIlcyBm
YWlsZWQgd2l0aCAlaVxuIiwgX19mdW5jX18sIGVycm9yKTsKPiAKPiBEb24ndCBwcmludCBmdW5j
dGlvbiBuYW1lcyBpbiB0aGUgZXJyb3IgbG9nLgo+IAoKT2suCgpXaWxsIHNlbmQgbmV3IHNlcmll
cywganVzdCBMTUsgaWYgeW91IHdhbnQgdGhlIHBhdGNoIHNwbGl0IGluIDIgb3IgbW9yZSAKcGF0
Y2hlcy4KClRoYW5rcywKSXZvCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
