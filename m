Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 065EBC5B572
	for <linux-phy@archiver.kernel.org>; Mon, 17 Aug 2026 23:23:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bb8HqWOWCG3Yi30j/Xy77F0FOKmsw5WuY3/Ix4L8WJ8=; b=hAPKOsJDlpEOcl
	0dWFW86tDU1CKuSRU4RieW2QeLZRRaTmJoEDVkvXuBTWds4Cz3C3EI7R+RazpVS7jFnGIsaHKn3KN
	IyTFX2UqO2WGuhRX2UMXcXSDf4BSq2McWIGo6iiB4nsVnic7/nuL3/x8+VbOcZ3pAmWIbD8YTuFFW
	pbNKDlbW4s7+pIGbA9vE1wAyR0MlzNGNBJqXPcGwN8Y5uszHQ3Cfocu25IB9PSnDLX/jh4IfHQdOT
	VnGwX6OF9vTZ/gqvjcph07906CXZwlcYanGcoVbwlOWhMzdlZLTW7QrVYlmkHUtGDj6JGsK+0NXf3
	Gd5OBC1h+ciwyhwillWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ww6g9-00000006ycQ-26sp;
	Mon, 17 Aug 2026 23:23:41 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ww6g6-00000006ybs-3N5w
	for linux-phy@lists.infradead.org;
	Mon, 17 Aug 2026 23:23:40 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-6a18b91fb1fso693906a12.0
        for <linux-phy@lists.infradead.org>; Mon, 17 Aug 2026 16:23:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1787009017; cv=none;
        d=google.com; s=arc-20260327;
        b=nExcbqP1LTNn03PB2lWv2Gk+q/OA9dHghSCXNuWbdqd45XjMCb4Ljn93SWzcBzmk49
         LUTpRTQuqYSHM7ryuqWB7ajL3Lsqu3Bs6OEHhVH/sgPeagAHh9FHgqtVC0d618eQTzMT
         HFJj8K/sIJdOGbXWP2kD4RGDUJj1Uz9klS5WWxz599FOzQktuwBE/tQ4C7ZfT7/qA5v9
         N93+Vf6mJHFBokqJK1aYmxI6XbCTX0YfP/XFsQY/yaieX2dCXfcP9Z1P69mjbtUcKJkx
         hw29YqMWShza3bGIupgAy8ssw3Souywf1zPXzJNt5MYEjBLTQUsGnKphAneZ/1qRKTxa
         Jp5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Mza8YFJw9Nex8v6b5Iq6o1h/WX62q5XrbPAuvjkscxg=;
        fh=ALYxgIrQj5rfLby34TuvDWaEtCUXekefhdADcMJcjpo=;
        b=omkACO6cL3Ugcjv2Rw1UmNJ6KpsQmHLyrED1RwEN2KY11B18ih6scxWIBR3sC3PUxS
         3miwbuqehcQYI+9884Ig/qff4L3+cbsIU7nvaUqi78wyKsFpbw9dTr5EpVgP4YlY8Upc
         N13J3URc/otMQgq+zqdQR7hkXPl8sGuNr9w044px8agSKW14XHGA0/MGCXmvW5kidLEr
         UQSW5/2xVueQwYWSnABK67iqOMY6Xl4w4h1DAzrsSVE3NPHUJ0rHtWpB+sCRO1eMR+k1
         tEi45W4LTUh9ADEM+SLZUs2aKKuYV9ZZhpvIhxBzpJT2t2KxMYwittd7T/Drn5/XvScJ
         it9g==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787009017; x=1787613817; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Mza8YFJw9Nex8v6b5Iq6o1h/WX62q5XrbPAuvjkscxg=;
        b=PU1y4YY90UYBeDGyozCbUWg4ta9fWFCdoIXy8fVKPRG6uv7qK857z2LMDphFwShw2X
         bWNQamM6SXWPk0EAEBiBNUBTQRjTKaQ6RbDWkOyV1MB5CvFzCzbtbiDNCMYWyazkxWnK
         N6eBEgJ7IZxb4ehm5f/fW2fa0Vgrcrxna4e/tY+lmLZfOxIfZlnuAgrkT6lbQWccXOc8
         DCWKcNzAcFf0Of/JN+DLBMj/G73xFPClgTRVMAqQUnpOwNs5W8b2fRwHqSnqgBsirFSr
         wuEmNk6kkdl809bjUD3MXrSjgvB2BNn0JVercDAmdpXH3hhcADPi3EEpWKfFCJ2XVQI7
         +hzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787009017; x=1787613817;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Mza8YFJw9Nex8v6b5Iq6o1h/WX62q5XrbPAuvjkscxg=;
        b=buD+Vl8D/4ow21E/P89Ul7D7QaJUu5uDMmit7scTi7WamsbsEe1TYlNJKPTFvUAlBW
         /hLe4fT41UJzhqn4jge2PsE1lO4uS/vUEM41scQBkcehFlPhSWgleO4Qs8ANi+jXPn3z
         o1cKUTT7r0r//4neXohkbdoqmQ+k+S+xAvgOdgwKskRBl0uVls6GJMLFUI23xL+fuQPt
         IJTHPljtto3/PRNcPW/AEffaomNRLJvBog+k1RA5yR9YkVSq83u1v4fvW2kzujA5jZ7K
         /rOxtBZ799XrMckz0THCiVbZwKkyMxqXDRkmo7pUQWNAgMiZZNgzlrqDKL8XKxHQEIHk
         55Sw==
X-Forwarded-Encrypted: i=1; AHgh+Romj7+HLtLIdEBqZ3huUBKVE7gFN4euffqY4eio51D5sdMkcnwfhdS5H7jcSQcb8NDH53uwVnGQDfQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxp4yJuvgNJTae/l2mIR2hA+PA23TjmJgTNVCdU37uARQR4LysY
	7L3pUbuMc2J0JXWiaXdEBacer/53teY5etq4jXVr7IbvnCqn5tVyaxahXh+MjkA2a/m6sjo+ENn
	oIR2/4uB1pLLEEb3wtA58ZIP8GjTdSkc=
X-Gm-Gg: AR+sD11R675G5uqF4jb7s/zkzfbGBCW2C+73h4vbyBdySjCa1vrZzDNJ2zkLW2DYGMx
	hEFa9Prc4qod/oHi0eOd9LGd3iCJ3TIXP4Mscp/g1OZq4uif44fXcxTgQ6WzFo8EbwbZ7HLgfwE
	dSuXmMXGxeXf+97AsD6K6DoJCLsJeU4o7Z96pJA41L0IwRpGrP+HYcjZOcxBJFPNClIhuFhf5Vi
	TCJ9bO8nuX9sOD4bOp8O/Nh150tv6HgRdbW0toCmSSyNrdYkGHEyX5tLYqHaNdjsV+pcv1rH6s7
	PdIwZG0HF81VSnLfLDhJjClvUKbmR7FIXVGrvRFIrmuHliXV3GJQjRg=
X-Received: by 2002:a05:6402:3888:b0:6a1:8d3e:ee77 with SMTP id
 4fb4d7f45d1cf-6a38a8b7c62mr7184435a12.1.1787009016712; Mon, 17 Aug 2026
 16:23:36 -0700 (PDT)
MIME-Version: 1.0
References: <20260818-ti-am33-usb-v1-0-69ac5f92df45@gmail.com>
 <20260818-ti-am33-usb-v1-6-69ac5f92df45@gmail.com> <20260817215405.5BC3F1F000E9@smtp.kernel.org>
In-Reply-To: <20260817215405.5BC3F1F000E9@smtp.kernel.org>
From: Bhargav Joshi <j.bhargav.u@gmail.com>
Date: Tue, 18 Aug 2026 04:53:25 +0530
X-Gm-Features: AcwNN1XYCdHEoxp8zYAqowoGvQcsnsweOral1dWBweqLMbdSD1YhkaBkE_HN9aY
Message-ID: <CAOWyW_6Tgc8oPY+TOaU5zTGx3i_YPSDBoW_8RLixyzj_cWTyGQ@mail.gmail.com>
Subject: Re: [PATCH 6/7] dt-bindings: usb: ti,am33xx-usb: Convert to DT schema
To: sashiko-reviews@lists.linux.dev
Cc: dmaengine@vger.kernel.org, vkoul@kernel.org, robh@kernel.org, 
	neil.armstrong@linaro.org, olteanv@gmail.com, Frank.Li@kernel.org, 
	conor+dt@kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260817_162338_873678_31B07C48 
X-CRM114-Status: GOOD (  21.45  )
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

T24gVHVlLCBBdWcgMTgsIDIwMjYgYXQgMzoyNOKAr0FNIDxzYXNoaWtvLWJvdEBrZXJuZWwub3Jn
PiB3cm90ZToKPgo+IFRoYW5rIHlvdSBmb3IgeW91ciBjb250cmlidXRpb24hIFNhc2hpa28gQUkg
cmV2aWV3IGZvdW5kIDIgcG90ZW50aWFsIGlzc3VlKHMpIHRvIGNvbnNpZGVyOgo+IC0gW01lZGl1
bV0gVGhlIHNjaGVtYSBleHBsaWNpdGx5IG1hcmtzIGB0aSxod21vZHNgIGFzIGRlcHJlY2F0ZWQg
YnV0IHNpbXVsdGFuZW91c2x5IG1hbmRhdGVzIGl0IGluIHRoZSBgcmVxdWlyZWRgIGFycmF5LCBj
cmVhdGluZyBhbiBpbmVzY2FwYWJsZSB2YWxpZGF0aW9uIGNvbmZsaWN0Lgp5ZXMsIHdpbGwgZml4
IHRoaXMgaW4gdjIKPiAtIFtNZWRpdW1dIFVucmVzb2x2ZWQgcGhhbmRsZSByZWZlcmVuY2VzIChg
JmN0cmxfbW9kYCBhbmQgYCZ1c2IwX3BoeWApIGluIHRoZSBiaW5kaW5nIGV4YW1wbGUgd2lsbCBj
YXVzZSBhIGZhdGFsIGR0YyBjb21waWxhdGlvbiBlcnJvci4Kbm8gaW4gZXhhbXBsZXMgdGhpcyBk
b2Vzbid0IGNhdXNlIGFueSBlcnJvciBvciB3YXJuaW5nLgo+IC0tCj4KPiAtLS0gUGF0Y2ggWzZd
OiBbUEFUQ0ggNi83XSBkdC1iaW5kaW5nczogdXNiOiB0aSxhbTMzeHgtdXNiOiBDb252ZXJ0IHRv
IERUIHNjaGVtYSAtLS0KPiBjb21taXQgZThlNThjMmQ0OGJjOWM3NTJjYTYyZDNjN2UwZWE2ZmQ1
Y2ZmMGIxMgo+IEF1dGhvcjogQmhhcmdhdiBKb3NoaSA8ai5iaGFyZ2F2LnVAZ21haWwuY29tPgo+
Cj4gZHQtYmluZGluZ3M6IHVzYjogdGksYW0zM3h4LXVzYjogQ29udmVydCB0byBEVCBzY2hlbWEK
Pgo+IENvbnZlcnQgdGhlIFRJIEFNMzN4eCBVU0IgV3JhcHBlciB0ZXh0IGJpbmRpbmcgdG8gRFQg
c2NoZW1hLgo+IENoYW5nZXMgZHVyaW5nIGNvbnZlcnNpb246Cj4gLSBEcm9wIHRoZSBVU0IgY29u
dHJvbCBtb2R1bGUgZnJvbSBjaGlsZCBub2RlcywgYXMgaXQgcGh5c2ljYWxseSByZXNpZGVzCj4g
ICB3aXRoaW4gdGhlIFN5c3RlbSBDb250cm9sIE1vZHVsZSBhZGRyZXNzIHNwYWNlLCBub3QgdGhl
IFVTQiB3cmFwcGVyLgo+IC0gQWxsb3cgc3RhbmRhcmQgcGh5QFswLTlhLWZdKyQgY2hpbGQgbm9k
ZSBuYW1lcyBhbG9uZ3NpZGUgdGhlIGxlZ2FjeQo+ICAgdXNiLXBoeUBbMC05YS1mXSskLgo+IC0g
TWFyayB0aGUgbGVnYWN5IHRpLGh3bW9kcyBwcm9wZXJ0eSBhcyBkZXByZWNhdGVkLgo+IC0gRG9j
dW1lbnQgcmVxdWlyZWQgI2FkZHJlc3MtY2VsbHMsICNzaXplLWNlbGxzLCBhbmQgcmFuZ2VzIHBy
b3BlcnR5Cj4gICBtaXNzaW5nIGZyb20gdGV4dCBiaW5kaW5nLgo+Cj4gPiBkaWZmIC0tZ2l0IGEv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi90aSxhbTMzeHgtdXNiLnlhbWwg
Yi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNiL3RpLGFtMzN4eC11c2IueWFt
bAo+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiA+IGluZGV4IDAwMDAwMDAwMDAwMDAuLjg4OTE5
MDQzMWM5YTAKPiA+IC0tLSAvZGV2L251bGwKPiA+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy91c2IvdGksYW0zM3h4LXVzYi55YW1sCj4gPiBAQCAtMCwwICsxLDEwNCBA
QAo+Cj4gWyAuLi4gXQo+Cj4gPiArICB0aSxod21vZHM6Cj4gPiArICAgICRyZWY6IC9zY2hlbWFz
L3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3N0cmluZwo+ID4gKyAgICBkZXNjcmlwdGlvbjogTmFt
ZSBvZiB0aGUgaHdtb2QgYXNzb2NpYXRlZCB3aXRoIHRoZSBVU0IgbW9kdWxlLgo+ID4gKyAgICBj
b25zdDogdXNiX290Z19ocwo+ID4gKyAgICBkZXByZWNhdGVkOiB0cnVlCj4KPiBbIC4uLiBdCj4K
PiA+ICtyZXF1aXJlZDoKPiA+ICsgIC0gY29tcGF0aWJsZQo+ID4gKyAgLSByZWcKPiA+ICsgIC0g
cmFuZ2VzCj4gPiArICAtICIjYWRkcmVzcy1jZWxscyIKPiA+ICsgIC0gIiNzaXplLWNlbGxzIgo+
ID4gKyAgLSB0aSxod21vZHMKPgo+IFtTZXZlcml0eTogTWVkaXVtXQo+IFdpbGwgdGhpcyBjYXVz
ZSBhIHZhbGlkYXRpb24gY29uZmxpY3Q/IFRoZSBzY2hlbWEgZXhwbGljaXRseSBtYXJrcyB0aSxo
d21vZHMKPiBhcyBkZXByZWNhdGVkIGJ1dCBzaW11bHRhbmVvdXNseSBtYW5kYXRlcyBpdCBpbiB0
aGUgcmVxdWlyZWQgYXJyYXkuCj4KPiBBbnkgZGV2aWNlIHRyZWUgdmFsaWRhdGluZyBhZ2FpbnN0
IHRoaXMgc2NoZW1hIHdpbGwgZW1pdCB3YXJuaW5ncyBvciBlcnJvcnM6Cj4gb21pdHRpbmcgdGhl
IHByb3BlcnR5IHZpb2xhdGVzIHRoZSByZXF1aXJlZCBsaXN0LCB3aGlsZSBpbmNsdWRpbmcgaXQg
dHJpZ2dlcnMKPiB0aGUgZGVwcmVjYXRlZCB3YXJuaW5nLiBUaGlzIHByZXZlbnRzIHRoZSBjcmVh
dGlvbiBvZiBjbGVhbmx5IHZhbGlkYXRpbmcKPiBkZXZpY2UgdHJlZXMuCj4KPiBbIC4uLiBdCj4K
PiA+ICtleGFtcGxlczoKPiA+ICsgIC0gfAo+ID4gKyAgICB1c2JANDc0MDAwMDAgewo+ID4gKyAg
ICAgICAgY29tcGF0aWJsZSA9ICJ0aSxhbTMzeHgtdXNiIjsKPgo+IFsgLi4uIF0KPgo+ID4gKyAg
ICAgICAgdXNiLXBoeUA0NzQwMTMwMCB7Cj4gPiArICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJ0
aSxhbTMzNXgtdXNiLXBoeSI7Cj4gPiArICAgICAgICAgICAgcmVnID0gPDB4NDc0MDEzMDAgMHgx
MDA+Owo+ID4gKyAgICAgICAgICAgIHJlZy1uYW1lcyA9ICJwaHkiOwo+ID4gKyAgICAgICAgICAg
IHRpLGN0cmxfbW9kID0gPCZjdHJsX21vZD47Cj4KPiBbU2V2ZXJpdHk6IE1lZGl1bV0KPiBEb2Vz
IHRoaXMgcmVmZXJlbmNlIGFuIHVuZGVmaW5lZCBsYWJlbD8gVGhlIGN0cmxfbW9kIGxhYmVsIHdh
cyBkcm9wcGVkIGR1cmluZwo+IHRoZSBjb252ZXJzaW9uLiBSZWZlcmVuY2luZyBpdCBoZXJlIHdp
bGwgY2F1c2UgZHRjIHRvIGZhaWwgd2l0aCBhIFJlZmVyZW5jZQo+IHRvIG5vbi1leGlzdGVudCBu
b2RlIG9yIGxhYmVsIGVycm9yIGR1cmluZyBtYWtlIGR0X2JpbmRpbmdfY2hlY2suCj4KPiA+ICsg
ICAgICAgICAgICAjcGh5LWNlbGxzID0gPDA+Owo+ID4gKyAgICAgICAgfTsKPiA+ICsKPiA+ICsg
ICAgICAgIHVzYkA0NzQwMTAwMCB7Cj4gPiArICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJ0aSxt
dXNiLWFtMzN4eCI7Cj4gPiArICAgICAgICAgICAgcmVnID0gPDB4NDc0MDE0MDAgMHg0MDA+LAo+
ID4gKyAgICAgICAgICAgICAgICAgIDwweDQ3NDAxMDAwIDB4MjAwPjsKPiA+ICsgICAgICAgICAg
ICByZWctbmFtZXMgPSAibWMiLCAiY29udHJvbCI7Cj4gPiArICAgICAgICAgICAgaW50ZXJydXB0
cyA9IDwxOD47Cj4gPiArICAgICAgICAgICAgaW50ZXJydXB0LW5hbWVzID0gIm1jIjsKPiA+ICsg
ICAgICAgICAgICBkcl9tb2RlID0gIm90ZyI7Cj4gPiArICAgICAgICAgICAgbWVudG9yLG11bHRp
cG9pbnQgPSA8MT47Cj4gPiArICAgICAgICAgICAgbWVudG9yLG51bS1lcHMgPSA8MTY+Owo+ID4g
KyAgICAgICAgICAgIG1lbnRvcixyYW0tYml0cyA9IDwxMj47Cj4gPiArICAgICAgICAgICAgbWVu
dG9yLHBvd2VyID0gPDUwMD47Cj4gPiArICAgICAgICAgICAgcGh5cyA9IDwmdXNiMF9waHk+Owo+
Cj4gW1NldmVyaXR5OiBNZWRpdW1dCj4gU2ltaWxhcmx5LCBkb2VzIHRoaXMgcmVmZXJlbmNlIHRo
ZSB1bmRlZmluZWQgbGFiZWwgdXNiMF9waHk/IFRoZSBsYWJlbCB3YXMKPiByZW1vdmVkIGZyb20g
dGhlIGV4YW1wbGUsIHdoaWNoIHdpbGwgYWxzbyByZXN1bHQgaW4gYSBkdGMgY29tcGlsYXRpb24g
ZXJyb3IKPiB3aGVuIGJ1aWxkaW5nIHRoZSBleGFtcGxlLgo+Cj4gPiArICAgICAgICB9Owo+Cj4g
LS0KPiBTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQv
MjAyNjA4MTgtdGktYW0zMy11c2ItdjEtMC02OWFjNWY5MmRmNDVAZ21haWwuY29tP3BhcnQ9NgoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
