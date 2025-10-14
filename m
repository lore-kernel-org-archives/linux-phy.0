Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07A57CCD183
	for <linux-phy@archiver.kernel.org>; Tue, 14 Oct 2025 01:47:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+FG59PkV4jZc6A8Tl8P73qo7Q/sOBUtZ90Vy/wenOP4=; b=f/OvtNkrAm/cb3
	vibLcj9IpgbVC+pxAdZXAkqLiBtVj7k0ZtBApFNms2Y/Lb42jH6W3hfB9CoibLhrFuq+yl+Lmp2tT
	u/1F1ZPie5GTBbYPlym5Zm5aP08SW6Y+rpT8lDg1f+a47jTZ5iGjEyRReuAgICopNdlNUnchZolJ0
	iB4oFUWvIQdZHk6ahYNpO3ssKh61RPF9Gxn07qZvOdAvuLwlGVF0wgMhug7BbtDbnXI6OcBdqyert
	WBWWVJ3vpncgczRaXY0prXxmyJ4bLhK7WSXkmGKdG4nZBwGx7fimwltoEopkhJV7xTLiTO1yRqKD8
	W2G78nOOaY7YcxCod10Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8U8G-0000000EuyF-31hX;
	Tue, 14 Oct 2025 01:47:20 +0000
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8U8D-0000000EuxW-1Oan
	for linux-phy@lists.infradead.org;
	Tue, 14 Oct 2025 01:47:18 +0000
Received: by mail-pf1-x434.google.com with SMTP id d2e1a72fcca58-781997d195aso3401810b3a.3
        for <linux-phy@lists.infradead.org>; Mon, 13 Oct 2025 18:47:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1760406436; x=1761011236; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jGjEi7N29NLVZhXUSQ4DWylm+1B6zKlX/oEjJXnY15U=;
        b=16xLe/hqHfwsHltBpjWbupZHDQl07HoAdkUOA4ujloZEiuAzPLpghMZZW0B4LiA6Nd
         qTN74t1t7jT9fdenOOIqW40yL2s0LaDkV/58xUKKq6d9cvXfnB78ufpY+A4ISDV9gd8b
         tkj+4HoxZPIX561+vOa4htjtDK8b65MW1f0U/gVttRNHFspNWHAYaJDDpze99zJkM/eZ
         ceqKEY/QfZatoSYBFet2SLYbLqt9VrqmfQ3+qdmwUfCjfJkdnyq/dibX97K/HlBxQxpy
         UoOpSBxvMn8AQqCoAoFvhq9cNGgDMNde7KUsXVdvxINM6fDNgoq/swar/bfVxtoKFo2T
         5Uuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760406436; x=1761011236;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jGjEi7N29NLVZhXUSQ4DWylm+1B6zKlX/oEjJXnY15U=;
        b=PNixEI3mbWSyeHFImR0/RW4wxz3wL95zuJspl7Rn0o1jyXa28pZBBgaMk0KDyxPST8
         nnI5xEdwDLJIxYzVG3ZohTkYzAO5uGo5PF94ZYdqav2ENlJBoPG/AwVXAjNLhodQvW1S
         0THXLY8oEQPy07/AGpGJ/dB8gn8q0qgpRAdblZoWE9WXQ2wubBSIglrQ0MBYbozLoH4/
         TUQAeHgNrVFRUF/T1gmyjqeYDhNRBoE+TJOlIP2+IAl6io9TbpkKcohWxKy7QyVIqpp8
         0YWSwgYJv/DPuOYTQeZ7W5OlnIQsI7kRYaNvgjCA5pxZbxsh507F8yoTKvM0zCqPyYh/
         P3Uw==
X-Forwarded-Encrypted: i=1; AJvYcCXltN+bGb95L5akBKca+iZt+Ohc6rEiX9cBRGGMa/XjngjH53PY+YQBT1HhgXPX/SNxQUgq1huA8+c=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywj562YQ46NcfMSS26gxK4f6nPY8IplfONMb7BpWUNjz4dMeK6z
	JqUmJaavZPCbijsworJudpGWPAKs9RT6SCDd3I6pBBGT3WrD64j4IZxVSGMJYK8peYD1j6f6FG6
	aDgCihlHFZLnFD+CH+dsF3pNSOod1V9nWKPjVc9vY
X-Gm-Gg: ASbGnctQn55P6Egq8xLN8wOio1pQ1kpM9NaRgp/DetZ+zI6IEmABIJPlhhlqF2waUjW
	eyOOq3vf7TasyKD32FDXA7hoG6QDmkSN6C7naJL0/JVa5csd33FQviMM147HfhDZDp5+3ffL80n
	jk/CPw+Kt6/1/6TrFdCJO1Gx3+1VFsOMFN1kB5MSiT7zbxMKcv4KzQPRRX+K0239tCCvFhmpQP+
	/jLgz4SfpNVv3RMrkX/XSsSNBvTUOj9A2Yyo28IL+lmKMtpyX20fUuiivZvpw2zwvMgpYpYpR6x
X-Google-Smtp-Source: AGHT+IFfPTj8w4BDR5D6JCsus2aD4rztuewWvMbCmVCgUqrOKGYsSJJX4teAZRKcnFjdoRF0OnNBqOS96lWMLzstGuY=
X-Received: by 2002:a17:902:e952:b0:262:4878:9dff with SMTP id
 d9443c01a7336-290273567a8mr277763005ad.12.1760406436203; Mon, 13 Oct 2025
 18:47:16 -0700 (PDT)
MIME-Version: 1.0
References: <20251010201607.1190967-1-royluo@google.com> <20251010201607.1190967-4-royluo@google.com>
 <75756635-b374-4441-8526-175210e01163@kernel.org>
In-Reply-To: <75756635-b374-4441-8526-175210e01163@kernel.org>
From: Roy Luo <royluo@google.com>
Date: Mon, 13 Oct 2025 18:46:39 -0700
X-Gm-Features: AS18NWCzy6Gx5qemaFGw2t6jXb-2epsDNHczVHslksbyWgF7Radr-Z781gw06UU
Message-ID: <CA+zupgwHFpP5GEwGxOksmLJBU7+Kr_o0p50Pad1NmwNB0AxcGA@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] dt-bindings: phy: google: Add Google Tensor G5 USB PHY
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Peter Griffin <peter.griffin@linaro.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Joy Chakraborty <joychakr@google.com>, 
	Naveen Kumar <mnkumar@google.com>, Badhri Jagan Sridharan <badhri@google.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_184717_391179_F741E2F3 
X-CRM114-Status: GOOD (  15.36  )
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

T24gRnJpLCBPY3QgMTAsIDIwMjUgYXQgNToxMeKAr1BNIEtyenlzenRvZiBLb3psb3dza2kgPGty
emtAa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiAxMC8xMC8yMDI1IDIyOjE2LCBSb3kgTHVvIHdy
b3RlOgo+ID4gKyAgcmVnOgo+ID4gKyAgICBpdGVtczoKPiA+ICsgICAgICAtIGRlc2NyaXB0aW9u
OiBVU0IyIFBIWSBjb25maWd1cmF0aW9uIHJlZ2lzdGVycy4KPiA+ICsgICAgICAtIGRlc2NyaXB0
aW9uOiBEaXNwbGF5UG9ydCB0b3AtbGV2ZWwgcmVnaXN0ZXJzLgo+ID4gKyAgICAgIC0gZGVzY3Jp
cHRpb246IFVTQiB0b3AtbGV2ZWwgY29uZmlndXJhdGlvbiByZWdpc3RlcnMuCj4gPiArCj4gPiAr
ICByZWctbmFtZXM6Cj4gPiArICAgIGl0ZW1zOgo+ID4gKyAgICAgIC0gY29uc3Q6IHUycGh5X2Nm
Zwo+ID4gKyAgICAgIC0gY29uc3Q6IGRwX3RvcAo+ID4gKyAgICAgIC0gY29uc3Q6IHVzYl90b3Bf
Y2ZnCj4gPiArCj4gPiArICAiI3BoeS1jZWxscyI6Cj4gPiArICAgIGNvbnN0OiAxCj4gPiArCj4g
PiArICBjbG9ja3M6Cj4gPiArICAgIG1heEl0ZW1zOiAxCj4gPiArCj4gPiArICByZXNldHM6Cj4g
PiArICAgIG1heEl0ZW1zOiAxCj4gPiArCj4gPiArICBwb3dlci1kb21haW5zOgo+ID4gKyAgICBt
YXhJdGVtczogMQo+ID4gKwo+ID4gKyAgb3JpZW50YXRpb24tc3dpdGNoOgo+ID4gKyAgICB0eXBl
OiBib29sZWFuCj4gPiArICAgIGRlc2NyaXB0aW9uOgo+ID4gKyAgICAgIEluZGljYXRlcyB0aGUg
UEhZIGFzIGEgaGFuZGxlciBvZiBVU0IgVHlwZS1DIG9yaWVudGF0aW9uIGNoYW5nZXMKPiA+ICsK
PiA+ICtyZXF1aXJlZDoKPiA+ICsgIC0gY29tcGF0aWJsZQo+ID4gKyAgLSByZWcKPiA+ICsgIC0g
cmVnLW5hbWVzCj4gPiArICAtICIjcGh5LWNlbGxzIgo+ID4gKyAgLSBjbG9ja3MKPiA+ICsgIC0g
cmVzZXRzCj4gPiArICAtIHBvd2VyLWRvbWFpbnMKPiA+ICsgIC0gb3JpZW50YXRpb24tc3dpdGNo
Cj4gPiArCj4gPiArYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlCj4gPiArCj4gPiArZXhhbXBs
ZXM6Cj4gPiArICAtIHwKPiA+ICsgICAgc29jIHsKPiA+ICsgICAgICAgICNhZGRyZXNzLWNlbGxz
ID0gPDI+Owo+ID4gKyAgICAgICAgI3NpemUtY2VsbHMgPSA8Mj47Cj4gPiArCj4gPiArICAgICAg
ICB1c2JfcGh5OiB1c2JfcGh5QGM0MTAwMDAgewo+ID4gKyAgICAgICAgICAgIGNvbXBhdGlibGUg
PSAiZ29vZ2xlLGdzNS11c2ItcGh5IjsKPiA+ICsgICAgICAgICAgICByZWcgPSA8MCAweDBjNDUw
MDE0IDAgMHhjPiwKPiA+ICsgICAgICAgICAgICAgICAgICA8MCAweDBjNjM3MDAwIDAgMHhhMD4s
Cj4KPiBZb3UgcHJvYmFibHkgbWlzcyBEUCBzdXBwb3J0IGFuZCB0aGlzIGRvZXMgbm90IGJlbG9u
ZyBoZXJlLgoKVGhpcyByZWdpc3RlciBzcGFjZSBpc24ndCBzb2xlbHkgZm9yIERQIG9wZXJhdGlv
biwgYSBzaWduaWZpY2FudCBwb3J0aW9uCm1hbmFnZXMgdGhlIGN1c3RvbSBjb21ibyBQSFkuIENv
bnNlcXVlbnRseSwgdGhpcyBzcGFjZSBpcyBlc3NlbnRpYWwKZXZlbiBmb3IgVVNCLW9ubHkgb3Bl
cmF0aW9uLiBXZSBjYW4gZXhwZWN0IG1vcmUgcmVnaXN0ZXJzIGluIHRoZSBzcGFjZQp0byBiZSB1
dGlsaXplZCB3aGVuIERQIHN1cHBvcnQgaXMgYWRkZWQuCgpXaGlsZSBJIGFja25vd2xlZGdlIHRo
ZSBjdXJyZW50IG5hbWUgaXMgY29uZnVzaW5nLCBpdCBkaXJlY3RseSByZWZsZWN0cwp0aGUgaGFy
ZHdhcmUgZG9jdW1lbnRhdGlvbi4gV2UgY2FuIGVpdGhlciBhZGhlcmUgdG8gdGhlIGhhcmR3YXJl
CmRvY3VtZW50YXRpb24ncyBuYW1pbmcgb3IgcHJvcG9zZSBhIG1vcmUgZGVzY3JpcHRpdmUgYWx0
ZXJuYXRpdmUuCldoYXQncyB5b3VyIHByZWZlcmVuY2U/Cgo+Cj4gPiArICAgICAgICAgICAgICAg
ICAgPDAgMHgwYzQ1MDAyYyAwIDB4ND47Cj4KPiBUaGF0J3Mgbm90IGEgc2VwYXJhdGUgYWRkcmVz
cyBzcGFjZS4gSSByZWFsbHksIHJlYWxseSBkb3VidCB0aGF0Cj4gaGFyZHdhcmUgZW5naW5lZXJz
IGNhbWUgd2l0aCBhZGRyZXNzIHNwYWNlcyBvZiBvbmUgd29yZCBsb25nLgoKSSBpbml0aWFsbHkg
Y3JlYXRlZCB0aGlzIHNwYWNlIHRvIGFjY2VzcyB0aGUgdXNiMm9ubHkgbW9kZSByZWdpc3RlciwK
d2hpY2ggbXVzdCBiZSBwcm9ncmFtbWVkIHdoZW4gdGhlIGNvbnRyb2xsZXIgb3BlcmF0ZXMgaW4g
aGlnaC1zcGVlZApvbmx5IG1vZGUgd2l0aG91dCB0aGUgVVNCMyBQSFkgaW5pdGlhbGl6ZWQuIFVw
b24gcmV2aWV3LCBJIG5vdwpiZWxpZXZlIHRoZSBjb250cm9sbGVyIGRyaXZlciBpcyB0aGUgYmV0
dGVyIGxvY2F0aW9uIGZvciB0aGlzIGNvbmZpZ3VyYXRpb24sCmFzIHRoZSByZWdpc3RlciBsb2dp
Y2FsbHkgYmVsb25ncyB0aGVyZSBhbmQgdGhlIGNvbnRyb2xsZXIgY2FuIHRlbGwKd2hldGhlciB1
c2IzIHBoeSBpcyBnb2luZyB0byBiZSBpbml0aWFsaXplZC4KClRoYXQgaXMsIEknbSByZW1vdmlu
ZyB0aGlzIHJlZ2lzdGVyIHNwYWNlIGluIHRoZSBuZXh0IHBhdGNoLgoKVGhhbmtzLApSb3kgTHVv
Cj4KPiA+ICsgICAgICAgICAgICByZWctbmFtZXMgPSAidTJwaHlfY2ZnIiwgImRwX3RvcCIsICJ1
c2JfdG9wX2NmZyI7Cj4gPiArICAgICAgICAgICAgI3BoeS1jZWxscyA9IDwxPjsKPiA+ICsgICAg
ICAgICAgICBjbG9ja3MgPSA8JmhzaW9uX3VzYjJfcGh5X3Jlc2V0X2Nsaz47Cj4gPiArICAgICAg
ICAgICAgcmVzZXRzID0gPCZoc2lvbl9yZXNldHNfdXNiMl9waHk+Owo+ID4gKyAgICAgICAgICAg
IHBvd2VyLWRvbWFpbnMgPSA8JmhzaW9fbl91c2JfcGQ+Owo+ID4gKyAgICAgICAgICAgIG9yaWVu
dGF0aW9uLXN3aXRjaDsKPiA+ICsgICAgICAgIH07Cj4gPiArICAgIH07Cj4gPiArLi4uCj4KPgo+
IEJlc3QgcmVnYXJkcywKPiBLcnp5c3p0b2YKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
