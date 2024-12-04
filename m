Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 139C0E7716B
	for <linux-phy@archiver.kernel.org>; Wed,  4 Dec 2024 15:44:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WI71+Zbr/ml+EA3oRtPCbMs+cC/umHx9l9ZaMNm07l0=; b=VxQn25ROf6rOuI
	gRvfo8wjcjZhpQX1uGZfhdBl/s1bXMCVfbH7mNf603eIVBi2xZNTd9cPiLOPhFT56Fe9pmkMbEFfZ
	rK6HYnVzAFGcBO4wkXwAqRXJgnvPPO33lnr+scOP0POBDeikI5zOU5kC2wKktXQr7Mk3PK5XZPOit
	qWC3yEVV/aSFRaKiHxYAR0m06K346mfK/W5o+fYWecnN6PSl9mFekVh/KWRDIIqGxwYgG1S0sXP6Q
	gaev1MH7qcNWqts/xvqoighifHc44BACUXw/yCbk6fFCUPsL3u+7MZW7WOao+1GGubAeA00aodf43
	TOTgOpLFoRr4nHD07s4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIrYU-0000000D2Ns-1FVO;
	Wed, 04 Dec 2024 15:44:46 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIrWc-0000000D243-1bfV
	for linux-phy@lists.infradead.org;
	Wed, 04 Dec 2024 15:42:52 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-434a1fe2b43so62917795e9.2
        for <linux-phy@lists.infradead.org>; Wed, 04 Dec 2024 07:42:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733326968; x=1733931768; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=dZ3uPxGHW9GwceDWDOZp20va51AUDdsf3QJ+X4bmhMo=;
        b=INw/zRoT+25M7C3PN0Tji1AQKnmAsjpPw2HAkiMtZkYyYBC8HFvbl0UNbWjP0nAD37
         BhhCac1oFfon7YsffF9T4yZ4/ytN5I08nurhYPaYj2hqvmZnnhePhXAGj/tUVm9cDrgQ
         Cewf39Eed6Q4lfgAeiIDB1ZsH3vuPa7vC2B1YCI1XCVn6RisRLcbgZ2hPHgS6cTs416f
         X8kq7gxiJvK8gyEzjIMekFaMjbMzLpk4zTzh36kN2iUc62WsgjnMrBG0kg4imL696cXl
         GLZ3ivuPb988IAyRI0S3GQsrZsUCCh6Pb+PykLnSiJe++hlHhIIYuHwGWUjZvrIG9BeP
         kaYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733326968; x=1733931768;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dZ3uPxGHW9GwceDWDOZp20va51AUDdsf3QJ+X4bmhMo=;
        b=lddAg+H2BTTtiNcShrzSY+TjjUv+93T/KcdpxULf8z8SXj66GwIFCnq5ImUvFkX8be
         N3vk5eCEUyBepvJBIJRsTI7cJZGzANykoyIMj17MWwWUSIBxSEfRT7QSKN5XKer+UZtX
         OsWO9JcI3uLP0+ru54+7sj9gWYSfa2mfiKNmTM1zBi7aPBqefcEwGewP5GNHCn7kFnIj
         cDS9vcQDBkyYQwgNwKmKVFfXDOYSX52zMWm9nWj3efWOyC3SL03EjUIz2a/Z1OxPLnLh
         hHPVw3izcNVqEaLT01os30LINsaKAcLK+Kp4pwOfBL/DSKYT1xn044uPNqtcFutVe1ZK
         Gc3w==
X-Forwarded-Encrypted: i=1; AJvYcCUmkaPSXj5qCN/a2smV9rbX1/U3i2yUi6HabZ7z4BumTRji/ss8VguP+DMzntAMJQ8SUGF8Sfx40WU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx5FX2ZMG8DOr2P/ACGCf9rBOnk/CrwxtYb/SA3Wz6J2f0Xlk32
	bxHnCTDKRM8VQrQq4bcFzZU6wfISuhxN4kwm56u6yJxZ8S2NQR9UQDhq5h5lfQw=
X-Gm-Gg: ASbGncuwmW9jr8TTHaECKbvnbL3ch5CVooVvckZdHZSIkpB9+WomF+DPKK71wHPA9+n
	e2S9tYwbp+sNwyckjrX3xLUJcyYLyFAYL+pd7Fv8yWfUaZzHvgpZx8pIUcR2nz22RpdATE88/E1
	fqwHXyh5MR212g3Miy689dpYxruSgA6KH2VMPVuQPIhH7AemuA34/XQHajWGKEa2Mvt8MfOTe1g
	U7Vmyz6E4VAjTcBaaZFtuzgOoe3yazkKOaK/kaxsViB7oECigsvzg==
X-Google-Smtp-Source: AGHT+IG8d+GIp7N1rLmweG1s9QVjHKMOxpL6iKDNzEJzmEVoVKRVhmtWfMeaWkWFRVe64V9BiKR57g==
X-Received: by 2002:a05:600c:4ecf:b0:426:647b:1bfc with SMTP id 5b1f17b1804b1-434d0a14eb7mr70707555e9.30.1733326967904;
        Wed, 04 Dec 2024 07:42:47 -0800 (PST)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434d526b131sm29295485e9.7.2024.12.04.07.42.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 07:42:47 -0800 (PST)
Message-ID: <8c1c633bbd5a81a06ee9c9f52dfa8b43cf493b7b.camel@linaro.org>
Subject: Re: [PATCH 8/9] phy: exynos5-usbdrd: subscribe to orientation
 notifier if required
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh@kernel.org>,  Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Marek Szyprowski <m.szyprowski@samsung.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,  Alim Akhtar
 <alim.akhtar@samsung.com>, Peter Griffin <peter.griffin@linaro.org>, Tudor
 Ambarus <tudor.ambarus@linaro.org>, Sam Protsenko
 <semen.protsenko@linaro.org>, Will McVicker <willmcvicker@google.com>, Roy
 Luo <royluo@google.com>, kernel-team@android.com, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org
Date: Wed, 04 Dec 2024 15:42:46 +0000
In-Reply-To: <Z1Bi2gRJefYy1tyo@vaman>
References: <20241127-gs101-phy-lanes-orientation-phy-v1-0-1b7fce24960b@linaro.org>
	 <20241127-gs101-phy-lanes-orientation-phy-v1-8-1b7fce24960b@linaro.org>
	 <Z1Bi2gRJefYy1tyo@vaman>
User-Agent: Evolution 3.52.1-4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241204_074250_440177_7F39BFF3 
X-CRM114-Status: GOOD (  29.19  )
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

SGkgVmlub2QsCgpUaGFua3MgZm9yIHlvdXIgcmV2aWV3LgoKT24gV2VkLCAyMDI0LTEyLTA0IGF0
IDE5OjQwICswNTMwLCBWaW5vZCBLb3VsIHdyb3RlOgo+IE9uIDI3LTExLTI0LCAxMDo1OCwgQW5k
csOpIERyYXN6aWsgd3JvdGU6Cj4gPiBnczEwMSdzIFNTIHBoeSBuZWVkcyB0byBiZSBjb25maWd1
cmVkIGRpZmZlcmVudGx5IGJhc2VkIG9uIHRoZQo+ID4gY29ubmVjdG9yIG9yaWVudGF0aW9uLCBh
cyB0aGUgU1MgbGluayBjYW4gb25seSBiZSBlc3RhYmxpc2hlZCBpZiB0aGUKPiA+IG11eCBpcyBj
b25maWd1cmVkIGNvcnJlY3RseS4KPiA+IAo+ID4gVGhlIGNvZGUgdG8gaGFuZGxlIHByb2dyYW1t
aW5nIG9mIHRoZSBtdXggaXMgaW4gcGxhY2UgYWxyZWFkeSwgdGhpcyBjb21taXQKPiA+IG5vdyBh
ZGRzIHRoZSBtaXNzaW5nIHBpZWNlcyB0byBzdWJzY3JpYmUgdG8gdGhlIFR5cGUtQyBvcmllbnRh
dGlvbgo+ID4gc3dpdGNoIGV2ZW50Lgo+ID4gCj4gPiBOb3RlIHRoYXQgZm9yIHRoaXMgYWxsIHRv
IHdvcmsgd2UgcmVseSBvbiB0aGUgVVNCIGNvbnRyb2xsZXIKPiA+IHJlLWluaXRpYWxpc2luZyB1
cy4gSXQgc2hvdWxkIGludm9rZSBvdXIgLmV4aXQoKSB1cG9uIGNhYmxlIHVucGx1ZywgYW5kCj4g
PiBkdXJpbmcgY2FibGUgcGx1ZyB3ZSdsbCByZWNlaXZlIHRoZSBvcmllbnRhdGlvbiBldmVudCBh
ZnRlciB3aGljaCB3ZQo+ID4gZXhwZWN0IG91ciAuaW5pdCgpIHRvIGJlIGNhbGxlZC4KPiA+IAo+
ID4gQWJvdmUgcmVpbml0aWFsaXNhdGlvbiBoYXBwZW5zIGlmIHRoZSBEV0MzIGNvbnRyb2xsZXIg
Y2FuIGVudGVyIHJ1bnRpbWUKPiA+IHN1c3BlbmQgYXV0b21hdGljYWxseS4gRm9yIHRoZSBEV0Mz
IGRyaXZlciwgdGhpcyBpcyBhbiBvcHQtaW46Cj4gPiDCoMKgwqAgZWNobyBhdXRvID4gL3N5cy9k
ZXZpY2VzLy4uLi8xMTExMDAwMC51c2IvcG93ZXIvY29udHJvbAo+ID4gT25jZSBkb25lLCB0aGlu
Z3Mgd29yayBhcyBsb25nIGFzIHRoZSBVREMgaXMgbm90IGJvdW5kIGFzIG90aGVyd2lzZSBpdAo+
ID4gc3RheXMgYnVzeSBiZWNhdXNlIGl0IGRvZXNuJ3QgY2FuY2VsIC8gc3RvcCBvdXRzdGFuZGlu
ZyBUUkJzLiBGb3Igbm93Cj4gPiB3ZSBoYXZlIHRvIG1hbnVhbGx5IHVuYmluZCB0aGUgVURDIGlu
IHRoYXQgY2FzZToKPiA+IMKgwqDCoMKgIGVjaG8gIiIgPiBzeXMva2VybmVsL2NvbmZpZy91c2Jf
Z2FkZ2V0Ly4uLi9VREMKPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogQW5kcsOpIERyYXN6aWsgPGFu
ZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4KPiA+IC0tLQo+ID4gwqBkcml2ZXJzL3BoeS9zYW1zdW5n
L0tjb25maWfCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgMSArCj4gPiDCoGRyaXZlcnMv
cGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMgfCA2MCArKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKwo+ID4gwqAyIGZpbGVzIGNoYW5nZWQsIDYxIGluc2VydGlvbnMoKykKPiA+
IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3NhbXN1bmcvS2NvbmZpZyBiL2RyaXZlcnMv
cGh5L3NhbXN1bmcvS2NvbmZpZwo+ID4gaW5kZXggZjEwYWZhM2Q3ZmY1Li5mYzdiZDEwODg1NzYg
MTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL3BoeS9zYW1zdW5nL0tjb25maWcKPiA+ICsrKyBiL2Ry
aXZlcnMvcGh5L3NhbXN1bmcvS2NvbmZpZwo+ID4gQEAgLTgwLDYgKzgwLDcgQEAgY29uZmlnIFBI
WV9FWFlOT1M1X1VTQkRSRAo+ID4gwqAJdHJpc3RhdGUgIkV4eW5vczUgU29DIHNlcmllcyBVU0Ig
RFJEIFBIWSBkcml2ZXIiCj4gPiDCoAlkZXBlbmRzIG9uIChBUkNIX0VYWU5PUyAmJiBPRikgfHwg
Q09NUElMRV9URVNUCj4gPiDCoAlkZXBlbmRzIG9uIEhBU19JT01FTQo+ID4gKwlkZXBlbmRzIG9u
IFRZUEVDIHx8IChUWVBFQz1uICYmIENPTVBJTEVfVEVTVCkKPiA+IMKgCWRlcGVuZHMgb24gVVNC
X0RXQzNfRVhZTk9TCj4gPiDCoAlzZWxlY3QgR0VORVJJQ19QSFkKPiA+IMKgCXNlbGVjdCBNRkRf
U1lTQ09OCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11
c2JkcmQuYyBiL2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMKPiA+IGlu
ZGV4IDFhMzRlOWI0NjE4YS4uMjAxMGQyNWVlODE3IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9w
aHkvc2Ftc3VuZy9waHktZXh5bm9zNS11c2JkcmQuYwo+ID4gKysrIGIvZHJpdmVycy9waHkvc2Ft
c3VuZy9waHktZXh5bm9zNS11c2JkcmQuYwo+ID4gQEAgLTM5NCw2ICszOTQsNyBAQCBzdHJ1Y3Qg
ZXh5bm9zNV91c2JkcmRfcGh5X2RydmRhdGEgewo+ID4gwqAgKiBAZXh0cmVmY2xrOiBmcmVxdWVu
Y3kgc2VsZWN0IHNldHRpbmdzIHdoZW4gdXNpbmcgJ3NlcGFyYXRlCj4gPiDCoCAqCcKgwqDCoMKg
wqDCoCByZWZlcmVuY2UgY2xvY2tzJyBmb3IgU1MgYW5kIEhTIG9wZXJhdGlvbnMKPiA+IMKgICog
QHJlZ3VsYXRvcnM6IHJlZ3VsYXRvcnMgZm9yIHBoeQo+ID4gKyAqIEBzdzogVHlwZUMgb3JpZW50
YXRpb24gc3dpdGNoIGhhbmRsZQo+ID4gwqAgKiBAb3JpZW50YXRpb246IFR5cGVDIGNvbm5lY3Rv
ciBvcmllbnRhdGlvbiAtIG5vcm1hbCBvciBmbGlwcGVkCj4gPiDCoCAqLwo+ID4gwqBzdHJ1Y3Qg
ZXh5bm9zNV91c2JkcmRfcGh5IHsKPiA+IEBAIC00MTUsNiArNDE2LDcgQEAgc3RydWN0IGV4eW5v
czVfdXNiZHJkX3BoeSB7Cj4gPiDCoAl1MzIgZXh0cmVmY2xrOwo+ID4gwqAJc3RydWN0IHJlZ3Vs
YXRvcl9idWxrX2RhdGEgKnJlZ3VsYXRvcnM7Cj4gPiDCoAo+ID4gKwlzdHJ1Y3QgdHlwZWNfc3dp
dGNoX2RldiAqc3c7Cj4gPiDCoAllbnVtIHR5cGVjX29yaWVudGF0aW9uIG9yaWVudGF0aW9uOwo+
ID4gwqB9Owo+ID4gwqAKPiA+IEBAIC0xNDAwLDYgKzE0MDIsNjAgQEAgc3RhdGljIGludCBleHlu
b3M1X3VzYmRyZF9waHlfY2xrX2hhbmRsZShzdHJ1Y3QgZXh5bm9zNV91c2JkcmRfcGh5ICpwaHlf
ZHJkKQo+ID4gwqAJcmV0dXJuIDA7Cj4gPiDCoH0KPiA+IMKgCj4gPiArI2lmIElTX0VOQUJMRUQo
Q09ORklHX1RZUEVDKQo+ID4gK3N0YXRpYyBpbnQgZXh5bm9zNV91c2JkcmRfb3JpZW5fc3dfc2V0
KHN0cnVjdCB0eXBlY19zd2l0Y2hfZGV2ICpzdywKPiA+ICsJCQkJwqDCoMKgwqDCoMKgIGVudW0g
dHlwZWNfb3JpZW50YXRpb24gb3JpZW50YXRpb24pCj4gPiArewo+ID4gKwlzdHJ1Y3QgZXh5bm9z
NV91c2JkcmRfcGh5ICpwaHlfZHJkID0gdHlwZWNfc3dpdGNoX2dldF9kcnZkYXRhKHN3KTsKPiA+
ICsKPiA+ICsJc2NvcGVkX2d1YXJkKG11dGV4LCAmcGh5X2RyZC0+cGh5X211dGV4KQo+ID4gKwkJ
cGh5X2RyZC0+b3JpZW50YXRpb24gPSBvcmllbnRhdGlvbjsKPiA+ICsKPiA+ICsJcmV0dXJuIDA7
Cj4gPiArfQo+ID4gKwo+ID4gK3N0YXRpYyB2b2lkIGV4eW5vczVfdXNiZHJkX29yaWVuX3N3aXRj
aF91bnJlZ2lzdGVyKHZvaWQgKmRhdGEpCj4gPiArewo+ID4gKwlzdHJ1Y3QgZXh5bm9zNV91c2Jk
cmRfcGh5ICpwaHlfZHJkID0gZGF0YTsKPiA+ICsKPiA+ICsJdHlwZWNfc3dpdGNoX3VucmVnaXN0
ZXIocGh5X2RyZC0+c3cpOwo+ID4gK30KPiA+ICsKPiA+ICtzdGF0aWMgaW50IGV4eW5vczVfdXNi
ZHJkX3NldHVwX25vdGlmaWVycyhzdHJ1Y3QgZXh5bm9zNV91c2JkcmRfcGh5ICpwaHlfZHJkKQo+
ID4gK3sKPiA+ICsJaW50IHJldDsKPiA+ICsKPiA+ICsJcGh5X2RyZC0+b3JpZW50YXRpb24gPSAo
ZW51bSB0eXBlY19vcmllbnRhdGlvbiktMTsKPiAKPiBTaG91bGQgdGhpcyBiZSBUWVBFQ19PUklF
TlRBVElPTl9OT05FPwoKSXQncyAtMSBzbyB0aGF0IGV4eW5vczVfdXNiZHJkX29yaWVuX3N3X3Nl
dCgpIChwYXRjaCA5KSBjYW4KY2hlY2sgYWdhaW5zdCB0aGUgY3VycmVudCB2YWx1ZSBhZnRlciBk
cml2ZXIgbG9hZC4KClRoYXQgc2FpZCwgaXQgc2hvdWxkIHByb2JhYmx5IGJlIG1vdmVkIGludG8g
cGF0Y2ggOSB3aGVyZSBpdAphY3R1YWxseSBtYXR0ZXJzLCBvciBldmVuIGJlIHJlbW92ZWQgYWx0
b2dldGhlciwgaW4gY29tYmluYXRpb24Kd2l0aCB0aGF0IGNoZWNrIGluIGV4eW5vczVfdXNiZHJk
X29yaWVuX3N3X3NldCgpIGZyb20gcGF0Y2ggOS4KCkkgaGFkIGFkZGVkIHRoZSBjaGVjayBiZWNh
dXNlIHNvbWUgKG5vdCBhbGwpIG90aGVyIHBoeSBkcml2ZXJzCmRvIHRoYXQsIGJ1dCBsb29raW5n
IGZ1cnRoZXIgYXQgdGhhdCwgSSBiZWxpZXZlIGl0J3Mgbm90CmFjdHVhbGx5IG5lY2Vzc2FyeSwg
ZXh5bm9zNV91c2JkcmRfb3JpZW5fc3dfc2V0KCkgY2FuIGV4ZWN1dGUKdW5jb25kaXRpb25hbGx5
LgoKV2lsbCByZW1vdmUgdGhpcyBhbmQgcmVsYXRlZCBjb2RlIGluIG5leHQgdmVyc2lvbi4KCkNo
ZWVycywKQW5kcmUnCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
