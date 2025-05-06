Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BEA5C3ABBF
	for <linux-phy@archiver.kernel.org>; Tue,  6 May 2025 11:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7DSMOSvUVRLfOvDOz6CH9epjeKNwkhYVPE5NEWQHl5o=; b=Tjr9PGPjhr8n8y
	Gw84MDTksJ1Mo8mbO0Vf35HItxKudAnMdmZKNBJxzBzMR4IZooBGYkmtt5hdfrEdG25U1x5AUwgXD
	ZM6E80f9qyCgeb9pgBcQCdRFxGkOKSsqal3Qs494FxGCog8g0Hldmbb6nE0yvb1/M5pfvR1MrlYqL
	nvQy+VNxWwDaKsz/raRcIvFG8br7oEJWNM8e9SiMeZbDY0t1IKfoVyJrODRi2TO41Sr+tBVhYkJJm
	s36rphJIR7aVc6g6dxBJBL5KJIw4xT6TUQUjWRfBpOCfG3UcTltWx7EraQk/2DHgO5dNxXsTDZ0xS
	kvbWIuY8HIKJCmYxSD1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCGpA-0000000Bnqg-0Bfb;
	Tue, 06 May 2025 11:51:00 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCF9e-0000000BVQr-2PpV
	for linux-phy@lists.infradead.org;
	Tue, 06 May 2025 10:04:03 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-54e8e5d2cf0so6308610e87.2
        for <linux-phy@lists.infradead.org>; Tue, 06 May 2025 03:04:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746525840; x=1747130640; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TKzBLfrH7ZCXq8Z7XeDJquF9cK0JOdM2v72Fh6/i1GY=;
        b=KWJpMREsaPsuhZ9O3bcVyx+jjZmL+33ql0I6W28g8apEW/ji66p19EBY85BAQQLhW6
         Z3w0tQ4qrlcQkLETrBOAlbmK3pz4jPHilUEBje3+qq9b+6qVc5JenYP0WsLLrNSOuPMQ
         d+89nWHKaU6wSZaxmFxZAv6HZMzJVKd8GYTpSgLieUwjssTd9F7/P0iSAMpwMpUoPHOm
         rZpFdmqFOfITeZScTazqknWEDTvVYhuKDdxb9Of+7RrOoaHVflFUgK2cPwTSGPNJ65lt
         CgnpXFuKWAolCX8OyiUBEf83EbChTjmBFJvju5IsJMLlCS7UXl0UoeCplyhBP7FDkWos
         essQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746525840; x=1747130640;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TKzBLfrH7ZCXq8Z7XeDJquF9cK0JOdM2v72Fh6/i1GY=;
        b=nSYYRrNs7kQTShlnnmOC3m24hx7mtnC2/J7linq7syWh3XY+jXzjg1XyLJw5sWEz7K
         bKkC/Pn10Y+CDf7DirFB2lQQm34OwqNMXWGPVCN/tKrDerHweMWEbD6rAtz+rH3Uxqme
         7JP4/XYUgghvU9zkjSMil4Fjnu+Ch355mSxMC838aLbeMRUCh2LOaqAoywcfMswUGqHs
         kkhbkFGcBw0+3pP75wt244V8NDrV3eeH2yEc2ZMM8ylnY/KF3LEpHjruIIwW42Xcv2dW
         t8yirRYo81FqrBYon/B4yzSASrHtX0FkQrWK6Tf4423FUiz4hzD3Y6HQ1YhK9uHJJhtl
         ENfw==
X-Forwarded-Encrypted: i=1; AJvYcCXTDQsnfx3eY2W//41jgc+CVuW+GsDM/gNpG5Rib3IU58FHEfuBOeb3iXKLXNPtyJQUwZpPtBKgCZw=@lists.infradead.org
X-Gm-Message-State: AOJu0YzDvD1pBe4Po8zihhOOqf11H+xODQy3iyCGhZbRa0R9fkCoUrmf
	1i68Y8jGpssqUXerp0FhNkVO6/iLZOCjJX/eHHcH5yQqHcrtQkMWVI1voF6krEg/NWtFZmV1XMZ
	lUwbv7+0v6HjjadXouPwDZtVD6gA=
X-Gm-Gg: ASbGncvZkY9hMSTp/03KUu+Dx9dzRS2WSnEZijJbY4WqzIlna2dXGMBDdbE44YU3iS7
	yrpRHewZTtPzGVTMlVbv7Agq/phWZFigzvuYWJNbKDb1Cjh11jeinXRNqD+kTXt7jsWubys+6Ru
	e833+pMPRWkvN96dTuS85jWhU=
X-Google-Smtp-Source: AGHT+IGciPq7h67vOHHMe0xab6MDc0v5dNL433NEtKmDciAYRCLBTsLbgrW7XgJxzca/FxBElFGLqswtQhqwiWFwryo=
X-Received: by 2002:a05:651c:1476:b0:30d:9198:5e81 with SMTP id
 38308e7fff4ca-3264f01a3c7mr9896271fa.9.1746525840156; Tue, 06 May 2025
 03:04:00 -0700 (PDT)
MIME-Version: 1.0
References: <20250404-xusb-peripheral-v1-1-99c184b9bf5f@gmail.com>
 <CALHNRZ_QUY7NPH87RYqFWEy4PkTgV5uZVZ6hh3sbe=U_8ga2jQ@mail.gmail.com>
 <CALHNRZ9s5EdL3vapyJS4TdT=v5v_QG-=n8ABNJDLU4B-7w+wRw@mail.gmail.com>
 <CALHNRZ96Cs8+gyyb=_jTpvCq--uF3P1s8_m7t25nN_vPx0ELXA@mail.gmail.com> <66776953-ef1d-40ac-9d4b-a35a6ebae20c@nvidia.com>
In-Reply-To: <66776953-ef1d-40ac-9d4b-a35a6ebae20c@nvidia.com>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Tue, 6 May 2025 05:03:47 -0500
X-Gm-Features: ATxdqUGvlu7DDYzmMS6LwM0KhqiAoWJKCs8SIgUhl7XFqFsl_6mr2D0nBIij5Xg
Message-ID: <CALHNRZ8uXZQObwQBC-sLudUdtprM24qU5yYdb4D3FEP2AQVkmQ@mail.gmail.com>
Subject: Re: [PATCH] phy: tegra: xusb: Default otg mode to peripheral
To: Jon Hunter <jonathanh@nvidia.com>
Cc: JC Kuo <jckuo@nvidia.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
	linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250506_030402_613729_14E2AB3C 
X-CRM114-Status: GOOD (  32.13  )
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

T24gVHVlLCBNYXkgNiwgMjAyNSBhdCA0OjUx4oCvQU0gSm9uIEh1bnRlciA8am9uYXRoYW5oQG52
aWRpYS5jb20+IHdyb3RlOgo+Cj4KPiBPbiAwNS8wNS8yMDI1IDA4OjQ0LCBBYXJvbiBLbGluZyB3
cm90ZToKPiA+IE9uIFN1biwgQXByIDIwLCAyMDI1IGF0IDg6NDTigK9QTSBBYXJvbiBLbGluZyA8
d2ViZ2VlazEyMzRAZ21haWwuY29tPiB3cm90ZToKPiA+Pgo+ID4+IE9uIFN1biwgQXByIDEzLCAy
MDI1IGF0IDExOjQ14oCvUE0gQWFyb24gS2xpbmcgPHdlYmdlZWsxMjM0QGdtYWlsLmNvbT4gd3Jv
dGU6Cj4gPj4+Cj4gPj4+IE9uIEZyaSwgQXByIDQsIDIwMjUgYXQgMzoxOOKAr0FNIEFhcm9uIEts
aW5nIHZpYSBCNCBSZWxheQo+ID4+PiA8ZGV2bnVsbCt3ZWJnZWVrMTIzNC5nbWFpbC5jb21Aa2Vy
bmVsLm9yZz4gd3JvdGU6Cj4gPj4+Pgo+ID4+Pj4gRnJvbTogQWFyb24gS2xpbmcgPHdlYmdlZWsx
MjM0QGdtYWlsLmNvbT4KPiA+Pj4+Cj4gPj4+PiBDdXJyZW50bHksIGlmIHVzYi1yb2xlLXN3aXRj
aCBpcyBzZXQgYW5kIHJvbGUtc3dpdGNoLWRlZmF1bHQtbW9kZSBpcwo+ID4+Pj4gbm90LCBhIHh1
c2IgcG9ydCB3aWxsIGJlIGlub3BlcmFibGUgdW50aWwgdGhhdCBwb3J0IGlzIGhvdHBsdWdnZWQs
Cj4gPj4+PiBiZWNhdXNlIHRoZSBkcml2ZXIgZGVmYXVsdHMgdG8gcm9sZSBub25lLiBJbnN0ZWFk
IG9mIHJlcXVpcmluZyBhbGwKPiA+Pj4+IGRldmljZXMgdG8gc2V0IHRoZSBkZWZhdWx0IG1vZGUs
IGFzc3VtZSB0aGF0IHRoZSBwb3J0IGlzIHByaW1hcmlseQo+ID4+Pj4gaW50ZW5kZWQgZm9yIHVz
ZSBpbiBkZXZpY2UgbW9kZS4gVGhpcyBhc3N1bXB0aW9uIGFscmVhZHkgaGFzIHByZWNlZGVuY2UK
PiA+Pj4+IGluIHRoZSBzeW5vcHN5cyBkd2MzIGRyaXZlci4KPiA+Pj4+Cj4gPj4+PiBTaWduZWQt
b2ZmLWJ5OiBBYXJvbiBLbGluZyA8d2ViZ2VlazEyMzRAZ21haWwuY29tPgo+ID4+Pj4gLS0tCj4g
Pj4+PiAgIGRyaXZlcnMvcGh5L3RlZ3JhL3h1c2IuYyB8IDggKysrLS0tLS0KPiA+Pj4+ICAgMSBm
aWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPiA+Pj4+Cj4gPj4+
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvdGVncmEveHVzYi5jIGIvZHJpdmVycy9waHkvdGVn
cmEveHVzYi5jCj4gPj4+PiBpbmRleCA3OWQ0ODE0ZDc1OGQ1ZTFmMGU4MjAwZDYxZTEzMTYwNmFk
YmIwZTJkLi5jNTZlODMyMTZkMGY1NjZhMDliNjczNzcxNzJmYjA0Yzg0MDZmNGNmIDEwMDY0NAo+
ID4+Pj4gLS0tIGEvZHJpdmVycy9waHkvdGVncmEveHVzYi5jCj4gPj4+PiArKysgYi9kcml2ZXJz
L3BoeS90ZWdyYS94dXNiLmMKPiA+Pj4+IEBAIC03MzEsMTMgKzczMSwxMSBAQCBzdGF0aWMgdm9p
ZCB0ZWdyYV94dXNiX3BhcnNlX3VzYl9yb2xlX2RlZmF1bHRfbW9kZShzdHJ1Y3QgdGVncmFfeHVz
Yl9wb3J0ICpwb3J0KQo+ID4+Pj4KPiA+Pj4+ICAgICAgICAgIGlmIChtb2RlID09IFVTQl9EUl9N
T0RFX0hPU1QpCj4gPj4+PiAgICAgICAgICAgICAgICAgIHJvbGUgPSBVU0JfUk9MRV9IT1NUOwo+
ID4+Pj4gLSAgICAgICBlbHNlIGlmIChtb2RlID09IFVTQl9EUl9NT0RFX1BFUklQSEVSQUwpCj4g
Pj4+PiArICAgICAgIGVsc2UKPiA+Pj4+ICAgICAgICAgICAgICAgICAgcm9sZSA9IFVTQl9ST0xF
X0RFVklDRTsKPiA+Pj4+Cj4gPj4+PiAtICAgICAgIGlmIChyb2xlICE9IFVTQl9ST0xFX05PTkUp
IHsKPiA+Pj4+IC0gICAgICAgICAgICAgICB1c2Jfcm9sZV9zd2l0Y2hfc2V0X3JvbGUocG9ydC0+
dXNiX3JvbGVfc3csIHJvbGUpOwo+ID4+Pj4gLSAgICAgICAgICAgICAgIGRldl9kYmcoJnBvcnQt
PmRldiwgInVzYiByb2xlIGRlZmF1bHQgbW9kZSBpcyAlcyIsIG1vZGVzW21vZGVdKTsKPiA+Pj4+
IC0gICAgICAgfQo+ID4+Pj4gKyAgICAgICB1c2Jfcm9sZV9zd2l0Y2hfc2V0X3JvbGUocG9ydC0+
dXNiX3JvbGVfc3csIHJvbGUpOwo+ID4+Pj4gKyAgICAgICBkZXZfZGJnKCZwb3J0LT5kZXYsICJ1
c2Igcm9sZSBkZWZhdWx0IG1vZGUgaXMgJXMiLCBtb2Rlc1ttb2RlXSk7Cj4gPj4+PiAgIH0KPiA+
Pj4+Cj4gPj4+PiAgIHN0YXRpYyBpbnQgdGVncmFfeHVzYl91c2IyX3BvcnRfcGFyc2VfZHQoc3Ry
dWN0IHRlZ3JhX3h1c2JfdXNiMl9wb3J0ICp1c2IyKQo+ID4+Pj4KPiA+Pj4+IC0tLQo+ID4+Pj4g
YmFzZS1jb21taXQ6IDkxZTViZmUzMTdkOGY4NDcxZmJhYTNlNzBjZjY2Y2FlMTMxNGE1MTYKPiA+
Pj4+IGNoYW5nZS1pZDogMjAyNTA0MDQteHVzYi1wZXJpcGhlcmFsLWM0NWIxNjM3ZjMzYgo+ID4+
Pj4KPiA+Pj4+IEJlc3QgcmVnYXJkcywKPiA+Pj4+IC0tCj4gPj4+PiBBYXJvbiBLbGluZyA8d2Vi
Z2VlazEyMzRAZ21haWwuY29tPgo+ID4+Pj4KPiA+Pj4+Cj4gPj4+Cj4gPj4+IEZyaWVuZGx5IHJl
bWluZGVyIGFib3V0IHRoaXMgcGF0Y2guCj4gPj4+Cj4gPj4+IFNpbmNlcmVseSwKPiA+Pj4gQWFy
b24KPiA+Pgo+ID4+IEZyaWVuZGx5IHJlLXJlbWluZGVyIGFib3V0IHRoaXMgc2VyaWVzLgo+ID4+
Cj4gPj4gU2luY2VyZWx5LAo+ID4+IEFhcm9uIEtsaW5nCj4gPgo+ID4gSXQgaGFzIGJlZW4gb3Zl
ciBhIG1vbnRoIHNpbmNlIHRoaXMgcGF0Y2ggd2FzIHN1Ym1pdHRlZC4gQW5kIG5laXRoZXIKPiA+
IHRoaXMgbm9yIGFueSBvdGhlciBwYXRjaCBJJ3ZlIHN1Ym1pdHRlZCBzaW5jZSBoYXZlIGJlZW4g
cmV2aWV3ZWQgb3IKPiA+IHJlc3BvbmRlZCB0byBieSBhbnkgVGVncmEgc3Vic3lzdGVtIG1haW50
YWluZXIuIElzIHRoZXJlIGFueW9uZSBlbHNlCj4gPiB0aGF0IGNhbiByZXZpZXcgdGhlc2UgYW5k
IHBpY2sgdGhlbSB1cD8gT3IgaXMgdGhlcmUgYW55IG90aGVyIHBhdGgKPiA+IGZvcndhcmQgZm9y
IHNlcmllcyB0aGF0IGdldCBpZ25vcmVkIGJ5IHRoZSBzdWJzeXN0ZW0gbWFpbnRhaW5lcnM/Cj4K
Pgo+IFNvcnJ5IGZvciB0aGUgZGVsYXkuIEkgaGF2ZSBoYWQgYSBsb29rIGF0IHRoaXMgcGF0Y2gg
YW5kIEkgYW0gbm90IHN1cmUKPiBhYm91dCB0aGlzLiBUaGUgZnVuY3Rpb24geW91IGFyZSBjaGFu
Z2luZyBpcyBjYWxsZWQKPiAndGVncmFfeHVzYl9wYXJzZV91c2Jfcm9sZV9kZWZhdWx0X21vZGUn
IGFuZCBpdCBpcyBkb2luZyBwcmVjaXNlbHkgd2hhdAo+IGl0IHdhcyBpbnRlbmRlZCB0byBkby4g
SW4gb3RoZXIgd29yZHMsIHBhcnNlIGRldmljZS10cmVlIGFuZCBzZXQgdGhlCj4gbW9kZSBhY2Nv
cmRpbmdseS4gU28gZm9yY2luZyB0aGUgbW9kZSBpbiB0aGlzIGZ1bmN0aW9uIGRvZXMgbm90IGZl
ZWwKPiBjb3JyZWN0Lgo+Cj4gQWxzbyBmcm9tIHRoZSBkZXNjcmlwdGlvbiBpdCBpcyBub3QgMTAw
JSBjbGVhciB0byBtZSB0aGUgZXhhY3Qgc2NlbmFyaW8KPiB3aGVyZSB0aGlzIGlzIHJlYWxseSBh
IHByb2JsZW0uCgpNeSBzcGVjaWZpYyB1c2UgY2FzZSBpcyBib290aW5nIEFPU1AvQW5kcm9pZCBv
biBUZWdyYSBkZXZpY2VzIHVzaW5nCm1haW5saW5lIHN1cHBvcnQuIEFuZHJvaWQgZGVidWcgYnJp
ZGdlIGlzIGNvbmZpZ3VyZWQgdG8gdXNlIHh1ZGMgb24KdGhlIG90ZyBwb3J0cy4gQXMgbWFpbmxp
bmUgaXMgY3VycmVudGx5IHNldCB1cCwgdGhlIGRlZmF1bHQgdXNiIHJvbGUKaXMgJ25vbmUnLiBT
byBpZiBJIGJvb3QgYSB1bml0IHdpdGggYSB1c2IgY2FibGUgYWxyZWFkeSBwbHVnZ2VkIGludG8K
dGhlIGRlYnVnIHBvcnQsIEkgY2Fubm90IGFjY2VzcyBhZGIuCgpJIG9yaWdpbmFsbHkgZml4ZWQg
dGhpcyBieSBzZXR0aW5nIHJvbGUtc3dpdGNoLWRlZmF1bHQtbW9kZSBpbiB0aGUKZGV2aWNlIHRy
ZWUgZm9yIGV2ZXJ5IGRldmljZSBJJ20gdGFyZ2V0aW5nLiBUaGVuIEkgbG9va2VkIGF0IGp1c3QK
ZGVmYXVsdGluZyB0byBwZXJpcGhlcmFsIG1vZGUgaW4gY29kZS4gQW5kIGFzIG1lbnRpb25lZCBp
biB0aGUgY29tbWl0Cm1lc3NhZ2UsIG90aGVyIHVzYiBkcml2ZXJzIGFscmVhZHkgZGVmYXVsdCB0
byBwZXJpcGhlcmFsIG1vZGUgaW5zdGVhZApvZiBub25lLiBJJ20gb3BlbiB0byBvdGhlciBzb2x1
dGlvbnMsIGJ1dCByZXF1aXJpbmcgZXZlcnkgZGV2aWNlIHRyZWUKdG8gc2V0IGEgZGVmYXVsdCBy
b2xlIGRvZXNuJ3Qgc2VlbSBsaWtlIGEgZ29vZCBzb2x1dGlvbiBlaXRoZXIuCgpTaW5jZXJlbHks
CkFhcm9uIEtsaW5nCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
