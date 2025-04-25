Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5272C369D5
	for <linux-phy@archiver.kernel.org>; Fri, 25 Apr 2025 13:07:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N0Af+RWXuk5VgODqpyEu2j9oMjDnEwwa3ILZYYlId1s=; b=x2u1LF2XBCKO1A
	k+uMVrOtOQ0PYfGiCPOBeIKttA7bFv/NNdNbL0EnrbtUvco1a0LTYOYhdoYNah6yaqqm4UAAGY7i3
	1WF9j1rL0qTEck+KTaeOBweMBYkYYfylqARrvM1nPbJYZFUs3P3tS3FGPKwCiPo3FgEoazxJ5FaaO
	F5kJstsvdg6QEnWBaI50Tvv/92VvnC9fg3STnGHBnvgMbrcqySOvcBLpKRI0GIkC+K0/Hn4vFDuYV
	ZhwNqodGJdKnsdJVjSgTHaKvf9jbW/QcggLaoitohseLlGdp4oXs14X2ngmxIVCNzjLLHDCqMa89X
	7nxl7g+E3WiUBwRu73dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8Ima-0000000HDuO-1nSy;
	Fri, 25 Apr 2025 13:07:56 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8HRg-0000000H0AZ-0NIG
	for linux-phy@lists.infradead.org;
	Fri, 25 Apr 2025 11:42:17 +0000
Received: from [192.168.88.20] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id C260A82E;
	Fri, 25 Apr 2025 13:42:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1745581330;
	bh=De1/mkRk4CVADk9lJfKiYTqg/f2DQxw3TPEEe11ex2Y=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=YH0DOWWaSvjhTDFcpYlHZ2/Mboqgbn+jccCUqg6xnx9fGchguD+yULqKL0su98JC2
	 zdzs6dMDKkHTXjk/3NAtfb2NsojoOpcnTJ3MQ7J7SjySydCGJjab4QxlGGwscYMTos
	 NUxLR/tid+RyqRooqB3hpypoN9rlX+cxG9YXbdoM=
Message-ID: <213b2515-95d9-4a26-924f-d959ddc3447c@ideasonboard.com>
Date: Fri, 25 Apr 2025 14:42:09 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 13/17] drm/bridge: cdns-dsi: Fix REG_WAKEUP_TIME value
To: Aradhya Bhatia <aradhya.bhatia@linux.dev>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, Francesco Dolcini <francesco@dolcini.it>,
 Devarsh Thakkar <devarsht@ti.com>, Jyri Sarha <jyri.sarha@iki.fi>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Jayesh Choudhary <j-choudhary@ti.com>
References: <20250414-cdns-dsi-impro-v3-0-4e52551d4f07@ideasonboard.com>
 <20250414-cdns-dsi-impro-v3-13-4e52551d4f07@ideasonboard.com>
 <1bf43164-e6de-445f-9c3d-94d69a149a66@linux.dev>
Content-Language: en-US
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Autocrypt: addr=tomi.valkeinen@ideasonboard.com; keydata=
 xsFNBE6ms0cBEACyizowecZqXfMZtnBniOieTuFdErHAUyxVgtmr0f5ZfIi9Z4l+uUN4Zdw2
 wCEZjx3o0Z34diXBaMRJ3rAk9yB90UJAnLtb8A97Oq64DskLF81GCYB2P1i0qrG7UjpASgCA
 Ru0lVvxsWyIwSfoYoLrazbT1wkWRs8YBkkXQFfL7Mn3ZMoGPcpfwYH9O7bV1NslbmyJzRCMO
 eYV258gjCcwYlrkyIratlHCek4GrwV8Z9NQcjD5iLzrONjfafrWPwj6yn2RlL0mQEwt1lOvn
 LnI7QRtB3zxA3yB+FLsT1hx0va6xCHpX3QO2gBsyHCyVafFMrg3c/7IIWkDLngJxFgz6DLiA
 G4ld1QK/jsYqfP2GIMH1mFdjY+iagG4DqOsjip479HCWAptpNxSOCL6z3qxCU8MCz8iNOtZk
 DYXQWVscM5qgYSn+fmMM2qN+eoWlnCGVURZZLDjg387S2E1jT/dNTOsM/IqQj+ZROUZuRcF7
 0RTtuU5q1HnbRNwy+23xeoSGuwmLQ2UsUk7Q5CnrjYfiPo3wHze8avK95JBoSd+WIRmV3uoO
 rXCoYOIRlDhg9XJTrbnQ3Ot5zOa0Y9c4IpyAlut6mDtxtKXr4+8OzjSVFww7tIwadTK3wDQv
 Bus4jxHjS6dz1g2ypT65qnHen6mUUH63lhzewqO9peAHJ0SLrQARAQABzTBUb21pIFZhbGtl
 aW5lbiA8dG9taS52YWxrZWluZW5AaWRlYXNvbmJvYXJkLmNvbT7CwY4EEwEIADgWIQTEOAw+
 ll79gQef86f6PaqMvJYe9QUCX/HruAIbAwULCQgHAgYVCgkICwIEFgIDAQIeAQIXgAAKCRD6
 PaqMvJYe9WmFD/99NGoD5lBJhlFDHMZvO+Op8vCwnIRZdTsyrtGl72rVh9xRfcSgYPZUvBuT
 VDxE53mY9HaZyu1eGMccYRBaTLJSfCXl/g317CrMNdY0k40b9YeIX10feiRYEWoDIPQ3tMmA
 0nHDygzcnuPiPT68JYZ6tUOvAt7r6OX/litM+m2/E9mtp8xCoWOo/kYO4mOAIoMNvLB8vufi
 uBB4e/AvAjtny4ScuNV5c5q8MkfNIiOyag9QCiQ/JfoAqzXRjVb4VZG72AKaElwipiKCWEcU
 R4+Bu5Qbaxj7Cd36M/bI54OrbWWETJkVVSV1i0tghCd6HHyquTdFl7wYcz6cL1hn/6byVnD+
 sR3BLvSBHYp8WSwv0TCuf6tLiNgHAO1hWiQ1pOoXyMEsxZlgPXT+wb4dbNVunckwqFjGxRbl
 Rz7apFT/ZRwbazEzEzNyrBOfB55xdipG/2+SmFn0oMFqFOBEszXLQVslh64lI0CMJm2OYYe3
 PxHqYaztyeXsx13Bfnq9+bUynAQ4uW1P5DJ3OIRZWKmbQd/Me3Fq6TU57LsvwRgE0Le9PFQs
 dcP2071rMTpqTUteEgODJS4VDf4lXJfY91u32BJkiqM7/62Cqatcz5UWWHq5xeF03MIUTqdE
 qHWk3RJEoWHWQRzQfcx6Fn2fDAUKhAddvoopfcjAHfpAWJ+ENc7BTQROprNHARAAx0aat8GU
 hsusCLc4MIxOQwidecCTRc9Dz/7U2goUwhw2O5j9TPqLtp57VITmHILnvZf6q3QAho2QMQyE
 DDvHubrdtEoqaaSKxKkFie1uhWNNvXPhwkKLYieyL9m2JdU+b88HaDnpzdyTTR4uH7wk0bBa
 KbTSgIFDDe5lXInypewPO30TmYNkFSexnnM3n1PBCqiJXsJahE4ZQ+WnV5FbPUj8T2zXS2xk
 0LZ0+DwKmZ0ZDovvdEWRWrz3UzJ8DLHb7blPpGhmqj3ANXQXC7mb9qJ6J/VSl61GbxIO2Dwb
 xPNkHk8fwnxlUBCOyBti/uD2uSTgKHNdabhVm2dgFNVuS1y3bBHbI/qjC3J7rWE0WiaHWEqy
 UVPk8rsph4rqITsj2RiY70vEW0SKePrChvET7D8P1UPqmveBNNtSS7In+DdZ5kUqLV7rJnM9
 /4cwy+uZUt8cuCZlcA5u8IsBCNJudxEqBG10GHg1B6h1RZIz9Q9XfiBdaqa5+CjyFs8ua01c
 9HmyfkuhXG2OLjfQuK+Ygd56mV3lq0aFdwbaX16DG22c6flkkBSjyWXYepFtHz9KsBS0DaZb
 4IkLmZwEXpZcIOQjQ71fqlpiXkXSIaQ6YMEs8WjBbpP81h7QxWIfWtp+VnwNGc6nq5IQDESH
 mvQcsFS7d3eGVI6eyjCFdcAO8eMAEQEAAcLBXwQYAQIACQUCTqazRwIbDAAKCRD6PaqMvJYe
 9fA7EACS6exUedsBKmt4pT7nqXBcRsqm6YzT6DeCM8PWMTeaVGHiR4TnNFiT3otD5UpYQI7S
 suYxoTdHrrrBzdlKe5rUWpzoZkVK6p0s9OIvGzLT0lrb0HC9iNDWT3JgpYDnk4Z2mFi6tTbq
 xKMtpVFRA6FjviGDRsfkfoURZI51nf2RSAk/A8BEDDZ7lgJHskYoklSpwyrXhkp9FHGMaYII
 m9EKuUTX9JPDG2FTthCBrdsgWYPdJQvM+zscq09vFMQ9Fykbx5N8z/oFEUy3ACyPqW2oyfvU
 CH5WDpWBG0s5BALp1gBJPytIAd/pY/5ZdNoi0Cx3+Z7jaBFEyYJdWy1hGddpkgnMjyOfLI7B
 CFrdecTZbR5upjNSDvQ7RG85SnpYJTIin+SAUazAeA2nS6gTZzumgtdw8XmVXZwdBfF+ICof
 92UkbYcYNbzWO/GHgsNT1WnM4sa9lwCSWH8Fw1o/3bX1VVPEsnESOfxkNdu+gAF5S6+I6n3a
 ueeIlwJl5CpT5l8RpoZXEOVtXYn8zzOJ7oGZYINRV9Pf8qKGLf3Dft7zKBP832I3PQjeok7F
 yjt+9S+KgSFSHP3Pa4E7lsSdWhSlHYNdG/czhoUkSCN09C0rEK93wxACx3vtxPLjXu6RptBw
 3dRq7n+mQChEB1am0BueV1JZaBboIL0AGlSJkm23kw==
In-Reply-To: <1bf43164-e6de-445f-9c3d-94d69a149a66@linux.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250425_044216_447776_B12035D4 
X-CRM114-Status: GOOD (  27.00  )
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

T24gMTUvMDQvMjAyNSAyMzoxMCwgQXJhZGh5YSBCaGF0aWEgd3JvdGU6Cj4gSGkgVG9taSwKPiAK
PiBPbiAxNC8wNC8yNSAxNjo0MSwgVG9taSBWYWxrZWluZW4gd3JvdGU6Cj4+IFRoZSBkcml2ZXIg
dHJpZXMgdG8gY2FsY3VsYXRlIHRoZSB2YWx1ZSBmb3IgUkVHX1dBS0VVUF9USU1FLiBIb3dldmVy
LAo+PiB0aGUgY2FsY3VsYXRpb24gaXRzZWxmIGlzIG5vdCBjb3JyZWN0LCBhbmQgdG8gYWRkIG9u
IGl0LCB0aGUgcmVzdWx0aW5nCj4+IHZhbHVlIGlzIGFsbW9zdCBhbHdheXMgbGFyZ2VyIHRoYW4g
dGhlIGZpZWxkJ3Mgc2l6ZSwgc28gdGhlIGFjdHVhbAo+PiByZXN1bHQgaXMgbW9yZSBvciBsZXNz
IHJhbmRvbS4+Cj4+IEFjY29yZGluZyB0byB0aGUgZG9jcywgZmlndXJpbmcgb3V0IHRoZSB2YWx1
ZSBmb3IgUkVHX1dBS0VVUF9USU1FCj4+IHJlcXVpcmVzIEhXIGNoYXJhY3Rlcml6YXRpb24gYW5k
IHRoZXJlJ3Mgbm8gd2F5IHRvIGhhdmUgYSBnZW5lcmljCj4+IGFsZ29yaXRobSB0byBjb21lIHVw
IHdpdGggdGhlIHZhbHVlLiBUaGF0IGRvZXNuJ3QgaGVscCBhdCBhbGwuLi4KPj4KPj4gSG93ZXZl
ciwgd2Uga25vdyB0aGF0IHRoZSB2YWx1ZSBtdXN0IGJlIHNtYWxsZXIgdGhhbiB0aGUgbGluZSB0
aW1lLCBhbmQsCj4+IGF0IGxlYXN0IGluIG15IHVuZGVyc3RhbmRpbmcsIHRoZSBwcm9wZXIgdmFs
dWUgZm9yIGl0IGlzIHF1aXRlIHNtYWxsLgo+PiBUZXN0aW5nIHNob3dzIHRoYXQgc2V0dGluZyBp
dCB0byAxLzEwIG9mIHRoZSBsaW5lIHRpbWUgc2VlbXMgdG8gd29yawo+PiB3ZWxsLiBBbGwgdmlk
ZW8gbW9kZXMgZnJvbSBteSBIRE1JIG1vbml0b3Igd29yayB3aXRoIHRoaXMgYWxnb3JpdGhtLgo+
Pgo+PiBIb3BlZnVsbHkgd2UnbGwgZ2V0IG1vcmUgaW5mb3JtYXRpb24gb24gaG93IHRvIGNhbGN1
bGF0ZSB0aGUgdmFsdWUsIGFuZAo+PiB3ZSBjYW4gdGhlbiB1cGRhdGUgdGhpcy4KPj4KPj4gU2ln
bmVkLW9mZi1ieTogVG9taSBWYWxrZWluZW4gPHRvbWkudmFsa2VpbmVuQGlkZWFzb25ib2FyZC5j
b20+Cj4+IC0tLQo+PiAgIGRyaXZlcnMvZ3B1L2RybS9icmlkZ2UvY2FkZW5jZS9jZG5zLWRzaS1j
b3JlLmMgfCA4ICsrKysrKystCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9j
YWRlbmNlL2NkbnMtZHNpLWNvcmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvY2FkZW5jZS9j
ZG5zLWRzaS1jb3JlLmMKPj4gaW5kZXggMTgyODQ1YzU0YzNkLi5mYjA2MjNkM2Y4NTQgMTAwNjQ0
Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvY2FkZW5jZS9jZG5zLWRzaS1jb3JlLmMK
Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9jYWRlbmNlL2NkbnMtZHNpLWNvcmUuYwo+
PiBAQCAtNzg2LDcgKzc4NiwxMyBAQCBzdGF0aWMgdm9pZCBjZG5zX2RzaV9icmlkZ2VfYXRvbWlj
X3ByZV9lbmFibGUoc3RydWN0IGRybV9icmlkZ2UgKmJyaWRnZSwKPj4gICAKPj4gICAJdHhfYnl0
ZV9wZXJpb2QgPSBESVZfUk9VTkRfRE9XTl9VTEwoKHU2NClOU0VDX1BFUl9TRUMgKiA4LAo+PiAg
IAkJCQkJICAgIHBoeV9jZmctPmhzX2Nsa19yYXRlKTsKPj4gLQlyZWdfd2FrZXVwID0gKHBoeV9j
ZmctPmhzX3ByZXBhcmUgKyBwaHlfY2ZnLT5oc196ZXJvKSAvIHR4X2J5dGVfcGVyaW9kOwo+IAo+
IEkgdGhpbmsgdGhlIHByaW1hcnkgcG9pbnQgb2YgZmFpbHVyZSBpbiB0aGUgb3JpZ2luYWwgY2Fs
Y3VsYXRpb24gaXMgZHVlCj4gdG8gZmFjdCB0aGF0IHRoZSBoc19wcmVwYXJlIGFuZCBoc196ZXJv
IGFyZSBkZWZpbmVkIGluIHBpY29zZWNvbmRzIChwcyksCj4gYW5kIHRoZSB0eF9ieXRlX3Blcmlv
ZCBpcyBpbiBuYW5vc2Vjb25kcyAobnMpIGFzIGV2aWRlbnQgYnkgdGhlIHVzYWdlIG9mCj4gTlNF
Q19QRVJfU0VDIG1hY3JvLgo+IAo+IFRoZSByZXN1bHRpbmcgdHhfYnlfcGVyaW9kIGlzIDEwMDAg
dGltZXMgc21hbGxlciwgYW5kIHRoZSByZWdfd2FrZXVwIC0gYQo+IDEwMDAgdGltZXMgbGFyZ2Vy
LiA9KQoKVGhhdCBpcyB0cnVlLiBJdCBkaWRuJ3Qgd29yayB3aXRoIHRoYXQgZml4ZWQgZWl0aGVy
ID0pLgoKPiBGdXJ0aGVyLCB0aGUgVFJNIGRvZXMgaW5kZWVkIG1lbnRpb24gdGhhdCBzb21lIGNo
YXJhY3Rlcml6YXRpb24gaXMKPiByZXF1aXJlZCB0byBmaW5lIHR1bmUgdGhlIGV4YWN0IHJlZ193
YWtldXAgdmFsdWUsIGJ1dCBpdCBlbmRzIHVwIGdpdmluZwo+IGEgdmFndWUtaXNoIGZvcm11bGEg
LQo+IAo+IC0+IHJlZ193YWtldXBfdGltZSA9IHdha2V1cF90aW1lX2RzaSArIHdha2V1cF90aW1l
X2NsICsgd2FrZXVwX3RpbWVfZGwgKwo+IAkJICAgICAoaHNfaG9zdF9lb3Qgw5cgNCAvIGxhbmVf
bmIpCj4gCj4gSSB0aGluayB0aGUgY2hhcmFjdGVyaXphdGlvbiBtYXkgb25seSBiZSByZXF1aXJl
ZCBmb3IgdGhlCj4gd2FrZXVwX3RpbWVfZHNpIGNvbXBvbmVudC4gVGhlIGV4aXN0aW5nIGZvcm11
bGEgaW4gdGhlIGRyaXZlciAoYWZ0ZXIKPiBjb3JyZWN0ZWQgZm9yIHRpbWUgdW5pdCkgaXMgdGhl
IHdha2V1cF90aW1lX2RsIGNvbXBvbmVudC4gd2FrZXVwX3RpbWVfY2wKPiBzZWVtcyB0byBiZSBh
IHJhbmdlIG9mIGNvbnN0YW50cywgd2hpY2ggdGhlIHBoeS1jb3JlIGlzIGF1dG8tc2V0dGxpbmcg
b24KPiBkZWZhdWx0cy4gVGhlIGRvY3VtZW50IG5ldmVyIHNwZWNpZmljYWxseSBtZW50aW9ucyAi
aHNfaG9zdF9lb3QiIG90aGVyCj4gdGhhbiB0aGUgZXF1YXRpb24sIGJ1dCBvbiB0aGUgb2ZmLWNo
YW5jZSBpdCBpcyBzYW1lIGFzIHBoeV9jZmctPmVvdCwKPiB0aGVuIHRoYXQncyAwIGFuZCBhdm9p
ZGFibGUuCgpZZXAsIEkgdHJpZWQgdG8gZGVjaXBoZXIgaG93IHRvIGNhbGN1bGF0ZSBpdCB1c2lu
ZyB0aGUgVFJNIGFuZCB0aGUgTUlQSSAKc3BlYywgYnV0IEkganVzdCBjb3VsZG4ndCBmaWd1cmUg
aXQgb3V0LiBJbiBhbnkgY2FzZSB3ZSBuZWVkIHRvIApjaGFyYWN0ZXJpemF0aW9uIChvciBhIGtu
b3duIHNhZmUgdmFsdWUgdGhhdCB3aWxsIGJlIGVub3VnaCBmb3IgYWxsIApjYXNlcykgdG8gdXNl
IGEgZm9ybXVsYS4gVW5mb3J0dW5hdGVseSBJIGhhdmVuJ3QgZ290dGVuIGFueSBkZXRhaWxzIAph
Ym91dCB0aGlzLgoKICBUb21pCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
