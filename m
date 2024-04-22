Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46D73C4345F
	for <linux-phy@archiver.kernel.org>; Mon, 22 Apr 2024 14:56:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JwHn0A7tf/Sc5LDKdMB2l7iYAFn7bQVRrfHcKxXaNwQ=; b=gEYdRiSZ/HE6+Q
	LKiR6z9rzzD9F8g1xWrN9hJtkKlFT1EYhQzDJ3oHXWsUO2JVEdCOIR/T9NAwaLog74UopHVq8uztH
	KLvNhXp3TNYMQM+oELWbCW75CxptAt05bqPLL1GY7mZYby+deSzhmSyGLDdwScR7CSLpU2oz4KJ73
	fNbc+N6uOnTwo6VXp6HfFxxVx/DtIbTOoLBPjMSZn31OvXfzPilRbCVZx660jSQV9ZXrK0FO37YBB
	7CQKFQOfMUi2hKV6mDjACWfV6XW6UCoWU97s5mlHd3FF9mJoOffZW81JQpjtuqEqTY0XQxVLI0uYE
	VgxNzSbLctyeGvQ1FxIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryv5X-0000000E0Nk-40kp;
	Mon, 22 Apr 2024 14:56:11 +0000
Received: from mail-oa1-x2f.google.com ([2001:4860:4864:20::2f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryv5U-0000000E0Mm-3EkH
	for linux-phy@lists.infradead.org;
	Mon, 22 Apr 2024 14:56:10 +0000
Received: by mail-oa1-x2f.google.com with SMTP id 586e51a60fabf-22f32226947so2070961fac.2
        for <linux-phy@lists.infradead.org>; Mon, 22 Apr 2024 07:56:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713797765; x=1714402565; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NTOg8DkAW/3dkpxikcsk436y8h1eZe1SfUF5lmW3ku0=;
        b=UFTxcEdOt2AyLy/uBiHWaXZSv6Rl6q+9bglcDOYBwalSkt1Q+NZ5eMY1q9k0f96YtA
         847KNGdrorsgkdCJjt0r14/zsw7OXI3yksbPFdSm8KLcOQTVpZvBaBpWfkvDWKEjXeUU
         U2iE4+f9xXOIHdIQbypg1uo8JQEhZK/hV/2EQ8E8EF04b8S8dXe4ujsVudnENtrkokgw
         /EZSiT5m+DxFj67MSacc9Xs+ye4BVkna8kiDge5tKFmlo7+aIckC5H1+tQ64HhebcThL
         EvlXYHBOKI4Q9g4zTXR1ng2sf91oJhj0No24Vz9d/qlOajXENKCD4vyzjjgjeVg0CPVv
         dVxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713797765; x=1714402565;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NTOg8DkAW/3dkpxikcsk436y8h1eZe1SfUF5lmW3ku0=;
        b=UmpkxVWj/BEDzOKlA5Msx6Sp4bJgnmZjW7O3t8BrU+bPC/OSOvbruvLwKFxXuAS2XV
         bJRvhquNYEpS3FlbM8Zx8J2naeiz2veIZdqBVK1cZVRrfvIcuPcuPwMpiqDLJzE8HAjl
         1d9Il5gLNVry5q/uo4Zkk6bVxmHVTXzmRCnxRx3gkhdc4LomtwzCnJrNhpiS8qQLc/WS
         j8c4QIYH0NgHuXVPwyDmxRL+RNnXymtVLUHCNGJ0lAlNiyqkn5BKnFlFUmRrd+3kBBz6
         VwV3Sp/uKqcnAnYEhWYySUOpsaLcDp2n4UHI05bH60dtQqYWsT+dreZGCv5MrZlmdLJI
         odgQ==
X-Forwarded-Encrypted: i=1; AJvYcCW5ORUde4h8huWss6YWTPN/ugP4SmAFdRpz3KWKN10wwAl9Z39EVxsiRRW+J7w81/IcROvZlNx3kuWNtglLaf7N7Wpj0NVuTX5jTlHJ0A==
X-Gm-Message-State: AOJu0Yx6UDXcHBkeYvD+uWUpjm7CDaLu7CJ9sjRQ7ukW8z5kwgKwLQCo
	DgNQYL4mSabV6FQVKnHqhTl/GjTdXvtf3hg5DsoB4ICp0xdxJ8mstsn3R37DfIMpJ7eShsZrc3Q
	+bXMUTRKkPI+6VAVmJMoSrD3oRk1wFZlQheySlQ==
X-Google-Smtp-Source: AGHT+IHTzGHT1v9LeibIhpXISDP5Up0NDJE//bpDlntvJJiW0sMwcyQm0rL5VdwsrhLb5OjnZBVN3sPtCblaMnzwbwM=
X-Received: by 2002:a05:6870:1318:b0:21f:aba0:772d with SMTP id
 24-20020a056870131800b0021faba0772dmr10853360oab.39.1713797765495; Mon, 22
 Apr 2024 07:56:05 -0700 (PDT)
MIME-Version: 1.0
References: <20240404122559.898930-1-peter.griffin@linaro.org>
 <20240404122559.898930-9-peter.griffin@linaro.org> <61f427ab3793def23d80d94457ff1568cae5ee11.camel@linaro.org>
In-Reply-To: <61f427ab3793def23d80d94457ff1568cae5ee11.camel@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Mon, 22 Apr 2024 15:55:54 +0100
Message-ID: <CADrjBPqAyWzuw9TmdE1XRQ2BkYojR8r7nnH7JcRWc9_xOpUgHg@mail.gmail.com>
Subject: Re: [PATCH 08/17] clk: samsung: gs101: add support for cmu_hsi2
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org, 
	alim.akhtar@samsung.com, avri.altman@wdc.com, bvanassche@acm.org, 
	s.nawrocki@samsung.com, cw00.choi@samsung.com, jejb@linux.ibm.com, 
	martin.petersen@oracle.com, chanho61.park@samsung.com, ebiggers@kernel.org, 
	linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, tudor.ambarus@linaro.org, 
	saravanak@google.com, willmcvicker@google.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_075608_888299_C5D80501 
X-CRM114-Status: GOOD (  18.39  )
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

SGkgQW5kcsOpLAoKT24gVGh1LCA0IEFwciAyMDI0IGF0IDE0OjI0LCBBbmRyw6kgRHJhc3ppayA8
YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3JnPiB3cm90ZToKPgo+IEhpIFBldGUsCj4KPiBUaGFua3Mg
Zm9yIHRoaXMhCj4KPiBJIGhhdmVuJ3QgcmV2aWV3ZWQgdGhpcywgYnV0IG9uZSBpbW1lZGlhdGUg
Y29tbWVudC4uLgo+Cj4gT24gVGh1LCAyMDI0LTA0LTA0IGF0IDEzOjI1ICswMTAwLCBQZXRlciBH
cmlmZmluIHdyb3RlOgo+ID4gWy4uLl0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Nsay9zYW1z
dW5nL2Nsay1nczEwMS5jIGIvZHJpdmVycy9jbGsvc2Ftc3VuZy9jbGstZ3MxMDEuYwo+ID4gaW5k
ZXggZDA2NWUzNDNhODVkLi5iOWY4NGM3ZDVjMjIgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2Ns
ay9zYW1zdW5nL2Nsay1nczEwMS5jCj4gPiArKysgYi9kcml2ZXJzL2Nsay9zYW1zdW5nL2Nsay1n
czEwMS5jCj4gPiBAQCAtMjIsNiArMjIsNyBAQAo+ID4gICNkZWZpbmUgQ0xLU19OUl9NSVNDIChD
TEtfR09VVF9NSVNDX1hJVV9EX01JU0NfQUNMSyArIDEpCj4gPiAgI2RlZmluZSBDTEtTX05SX1BF
UklDMCAgICAgICAoQ0xLX0dPVVRfUEVSSUMwX1NZU1JFR19QRVJJQzBfUENMSyArIDEpCj4gPiAg
I2RlZmluZSBDTEtTX05SX1BFUklDMSAgICAgICAoQ0xLX0dPVVRfUEVSSUMxX1NZU1JFR19QRVJJ
QzFfUENMSyArIDEpCj4gPiArI2RlZmluZSBDTEtTX05SX0hTSTIgKENMS19HT1VUX0hTSTJfWElV
X1BfSFNJMl9BQ0xLICsgMSkKPgo+IENhbiB5b3UgcGxlYXNlIGtlZXAgdGhlICNkZWZpbmVzIGFs
cGhhYmV0aWNhbCAoaHNpIGJlZm9yZSBtaXNjKS4KCldpbGwgZml4Cgo+Cj4gPgo+ID4gIC8qIC0t
LS0gQ01VX1RPUCAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tICovCj4gPgo+ID4gQEAgLTM0MDksNiArMzQxMCw1NjAgQEAgc3RhdGlj
IGNvbnN0IHN0cnVjdCBzYW1zdW5nX2NtdV9pbmZvIHBlcmljMV9jbXVfaW5mbyBfX2luaXRjb25z
dCA9IHsKPiA+ICAgICAgIC5jbGtfbmFtZSAgICAgICAgICAgICAgID0gImJ1cyIsCj4gPiAgfTsK
PiA+Cj4gPiArLyogLS0tLSBDTVVfSFNJMiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tICovCj4KPiBhbmQgdGhpcyBjb2RlIGJsb2NrIHNo
b3VsZCBiZSBlYXJsaWVyIGluIHRoZSBmaWxlCgpXaWxsIGZpeAo+Cj4gPiBbLi5dCj4KPiA+ICBz
dGF0aWMgaW50IF9faW5pdCBnczEwMV9jbXVfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAq
cGRldikKPiA+IEBAIC0zNDMyLDYgKzM5ODcsOSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2Rl
dmljZV9pZCBnczEwMV9jbXVfb2ZfbWF0Y2hbXSA9IHsKPiA+ICAgICAgIH0sIHsKPiA+ICAgICAg
ICAgICAgICAgLmNvbXBhdGlibGUgPSAiZ29vZ2xlLGdzMTAxLWNtdS1wZXJpYzEiLAo+ID4gICAg
ICAgICAgICAgICAuZGF0YSA9ICZwZXJpYzFfY211X2luZm8sCj4gPiArICAgICB9LCB7Cj4gPiAr
ICAgICAgICAgICAgIC5jb21wYXRpYmxlID0gImdvb2dsZSxnczEwMS1jbXUtaHNpMiIsCj4gPiAr
ICAgICAgICAgICAgIC5kYXRhID0gJmhzaTJfY211X2luZm8sCj4gPiAgICAgICB9LCB7Cj4KPiBh
bmQgdGhpcyBibG9jayBzaG91bGQgbW92ZSB1cAoKV2lsbCBmaXgKPgo+ID4gICAgICAgfSwKPiA+
ICB9Owo+ID4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2svZ29vZ2xlLGdz
MTAxLmggYi9pbmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL2dvb2dsZSxnczEwMS5oCj4gPiBpbmRl
eCAzZGFjMzU3Nzc4OGEuLmFjMjM5Y2U2ODIxYiAxMDA2NDQKPiA+IC0tLSBhL2luY2x1ZGUvZHQt
YmluZGluZ3MvY2xvY2svZ29vZ2xlLGdzMTAxLmgKPiA+ICsrKyBiL2luY2x1ZGUvZHQtYmluZGlu
Z3MvY2xvY2svZ29vZ2xlLGdzMTAxLmgKPiA+IEBAIC01MTgsNCArNTE4LDY3IEBACj4gPiAgI2Rl
ZmluZSBDTEtfR09VVF9QRVJJQzFfQ0xLX1BFUklDMV9VU0k5X1VTSV9DTEsgICAgICAgICAgICAg
IDQ1Cj4gPiAgI2RlZmluZSBDTEtfR09VVF9QRVJJQzFfU1lTUkVHX1BFUklDMV9QQ0xLICAgICAg
ICAgICA0Ngo+ID4KPiA+ICsvKiBDTVVfSFNJMiAqLwo+Cj4gYW5kIGFsbCB0aGVzZSBkZWZpbmVz
LCB0b28uCgpXaWxsIGZpeC4KCnJlZ2FyZHMsCgpQZXRlcgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
