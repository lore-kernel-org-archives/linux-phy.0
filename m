Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB246EF99D3
	for <linux-phy@archiver.kernel.org>; Fri, 13 Feb 2026 20:15:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UugDAIYQm9BvSS+8XS1fHVFPkWWdGIWKZQIbxwLgGPo=; b=QPoeo54CE0tHcR
	1sMsjWyX81RvpHH/0shNUw80ESIK6d9LXeYMfvL9u5QW7JcYblD1RnYQ+FBMEtvxjMcGFDZT9iwo2
	FmfdCyB+omaJyMubz0dPhTIFpT5fZ27mNgA7KwibhFKbpCmhblTzP/f4gQ4EaMlP1oFirWM7uX3Sy
	In9H5bApWJdeBIk5E6evcTi9pZzn/i/I+O+OVObNVA6TrkiUuWZoCSE0gpUJN2VjwfiCf7CEbMhVr
	j0aYZk9QJuskcvVhTR0K12moa8JJu/6a7b6spw+TDYSFmzMWlj+n/ayB1VwlrcmG5hr0VRJJSxiol
	zC6+LKBV32J3wWniR1eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqza1-00000003t1k-2sf3;
	Fri, 13 Feb 2026 20:15:57 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqzZz-00000003t1K-1WJA
	for linux-phy@lists.infradead.org;
	Fri, 13 Feb 2026 20:15:56 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-43637371266so61205f8f.2
        for <linux-phy@lists.infradead.org>; Fri, 13 Feb 2026 12:15:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771013753; x=1771618553; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QkVgqEayDWamJpu2tr6+LHBVutmPD4jzDu7HrpilMLs=;
        b=ZSEXqMrC9k4640aAHXc2XXNXOOcdEpv8lu4UCk+WZHmM2J4+dovzz8I/5+GNjg+sDk
         SlEhT5otThp7BCYKGtEHuLqpx4oQX1LyzYMwsNWf+uMKLgCCwrKFrPq114KFfPoAZFxL
         G4lU94iI5RkHTDQHI26+obyUOhjB/oq1nu30+VrTTHoNcTDYXXt5fs96tQfdTQ2mgP6q
         rRkjJwuZA+DJrEdhrL77pTjFkwzpY380iJpG5xHghp0AL0QTKDU1dUz9lk2lbVJaK6f1
         ROw2Ex7+hf9S84CHc0+xv+H4MHuPpd1Lp5Hpqg4us/1IMDSg19s+ZCDRVxfhwAg6y1wY
         1E9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771013753; x=1771618553;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QkVgqEayDWamJpu2tr6+LHBVutmPD4jzDu7HrpilMLs=;
        b=Uoxw1K3LlL+MFyGSRZFr5YfabrCMkqGhpHp7jZQIkahkzanGTI2ZE0jeHJ8d4YkT3R
         QJhBApVFvQ+c22G1aMeAyNeeK0dngz7f23vnSXMpZTZGfBOjoMzmEj6odFlAw89WvNGb
         gmuT2V3jfaN2FiPlujcW1qAMdznCpI8X+nWjaoGYv9sjl8xlsFdatvY4DooeML7b068W
         ctdA3zJVCdSCA+zDtHzIiwBz4VVNgPvM2YXXg3gInQex6lU09IBUy9A1gbrxZLXK28zB
         PdOo3XGVT5kQkUTrDBq64/m3ULUra7DuOoZyAWGkBEG8JgR2e+BD98IlPMuIj5jbsYvy
         3w9A==
X-Forwarded-Encrypted: i=1; AJvYcCU/C0YMgs/PD4FyBL3dbdCdoms9OreLrlT3vI7cpg8W7nNxG9/hol8FcfqOXEpm4awpHseYqDdVwRo=@lists.infradead.org
X-Gm-Message-State: AOJu0YyqmksjBpegvDwlBEuPn5swv5tboiADo5E3FDtgdcNgJbIxFVjH
	BReTGKIedkxYc0TdZwOFW/NDVsJVojqv9YAgaj4hk2ucA8kmALX9QCBY
X-Gm-Gg: AZuq6aIMC4FEYH7xVAKYgkIqtZyeoGmEoTI1h0PqzOW3f4XRc5b5IFWkMzmWIXqhnEh
	nauU/P3T2EGQSwy8QRzEnNc7aiZc8rSAP+N0uPX8ST+GIB8OBPBU7YcvezOXmX3IoCRuNodrujh
	DrA3CzuvdI6l6fUFh6krIkEqi+DIPvbZjYSgdn0tT70cBw+W8q9T0yIgNOyk9Zuf4li8eh4SZ4R
	f2yTv52pP0DSqXNHIByTKSHj11EQYwUf/UNtA3z5HiAPN7A0y1q5iwLrkQssMSf+TOJ5qMTq1C9
	7KhuWpmqo9xWq6BP0E7aZXcbn0Sj3+Gm6Tlv93GyhxY2Dm8I9yEJzTAdVX76UuJfyQ7H5IPtcsy
	e9AIUSsH1c9vDbvGS4jw5buq9+Pkztsi7w6bRwTEieZ87vNbAIx33iP2Cq17Z+6po81eUoJqfWn
	ifcmC9iWBMa9TJQkw=
X-Received: by 2002:a05:6000:3106:b0:431:8f8:7f2a with SMTP id ffacd0b85a97d-43796aa5147mr3919316f8f.1.1771013752937;
        Fri, 13 Feb 2026 12:15:52 -0800 (PST)
Received: from skbuf ([2a02:2f04:d501:d900:34e8:30f1:fec3:9b0c])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796abd793sm8082304f8f.25.2026.02.13.12.15.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Feb 2026 12:15:52 -0800 (PST)
Date: Fri, 13 Feb 2026 22:15:50 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: Johan Hovold <johan@kernel.org>, vkoul@kernel.org, kishon@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	dmitry.baryshkov@oss.qualcomm.com, neil.armstrong@linaro.org,
	konrad.dybcio@oss.qualcomm.com,
	Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: Re: [PATCH v3 5/5] phy: qcom: snps-femto-v2: Fix possible NULL-deref
 on early runtime suspend
Message-ID: <20260213201550.vk5cosmoewokarlx@skbuf>
References: <20260205160240.748371-1-loic.poulain@oss.qualcomm.com>
 <20260205160240.748371-6-loic.poulain@oss.qualcomm.com>
 <aY7pvakkOnaYsd5p@hovoldconsulting.com>
 <CAFEp6-3yk3sPXj+hGuWvAFsFJAXjH4kWLV8k_5_v9Hax0XxaOg@mail.gmail.com>
 <aY8Asvu-1u0e02oJ@hovoldconsulting.com>
 <CAFEp6-0rzkqc0ajN72q=mv3U-TT0JHMSPmnJD6ohKuLmbPz2-A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFEp6-0rzkqc0ajN72q=mv3U-TT0JHMSPmnJD6ohKuLmbPz2-A@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260213_121555_452475_4F62B679 
X-CRM114-Status: GOOD (  32.54  )
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

SGVsbG8gTG9pYywKCk9uIEZyaSwgRmViIDEzLCAyMDI2IGF0IDA0OjA0OjQzUE0gKzAxMDAsIExv
aWMgUG91bGFpbiB3cm90ZToKPiBPbiBGcmksIEZlYiAxMywgMjAyNiBhdCAxMTo0NeKAr0FNIEpv
aGFuIEhvdm9sZCA8am9oYW5Aa2VybmVsLm9yZz4gd3JvdGU6Cj4gPgo+ID4gT24gRnJpLCBGZWIg
MTMsIDIwMjYgYXQgMTA6NDU6MzJBTSArMDEwMCwgTG9pYyBQb3VsYWluIHdyb3RlOgo+ID4gPiBP
biBGcmksIEZlYiAxMywgMjAyNiBhdCAxMDowN+KAr0FNIEpvaGFuIEhvdm9sZCA8am9oYW5Aa2Vy
bmVsLm9yZz4gd3JvdGU6Cj4gPiA+ID4KPiA+ID4gPiBPbiBUaHUsIEZlYiAwNSwgMjAyNiBhdCAw
NTowMjo0MFBNICswMTAwLCBMb2ljIFBvdWxhaW4gd3JvdGU6Cj4gPiA+ID4gPiBFbmFibGluZyBy
dW50aW1lIFBNIGJlZm9yZSBhdHRhY2hpbmcgdGhlIGhzcGh5IGluc3RhbmNlIGFzIGRyaXZlciBk
YXRhCj4gPiA+ID4gPiBjYW4gbGVhZCB0byBhIE5VTEwgcG9pbnRlciBkZXJlZmVyZW5jZSBpbiBy
dW50aW1lIFBNIGNhbGxiYWNrcyB0aGF0Cj4gPiA+ID4gPiBleHBlY3QgdmFsaWQgZHJpdmVyIGRh
dGEuIFRoZXJlIGlzIGEgc21hbGwgd2luZG93IHdoZXJlIHRoZSBzdXNwZW5kCj4gPiA+ID4gPiBj
YWxsYmFjayBtYXkgcnVuIGFmdGVyIFBNIHJ1bnRpbWUgZW5hYmxpbmcgYW5kIGJlZm9yZSBydW50
aW1lIGZvcmJpZC4KPiA+ID4gPgo+ID4gPiA+IFNvIGhlcmUgdG9vLCB0aGUgY29tbWl0IHNob3Vs
ZCByZWZsZWN0IHRoYXQgdGhpcyBjYW5ub3QgcmVhbGx5IGhhcHBlbiBpbgo+ID4gPiA+IHByYWN0
aWNlLgo+ID4gPgo+ID4gPiBUaGlzIGhhcHBlbmVkICBpbiBwcmFjdGljZSBpbiB0aGUgcWNvbeKA
kXF1c2IyIFBIWSBkcml2ZXIsIHdpdGggdGhlIHNhbWUKPiA+ID4gY29kZSBmbG93Lgo+ID4gPiBC
dWc6IGh0dHBzOi8vZ2l0aHViLmNvbS9xdWFsY29tbS1saW51eC9xY29tLWRlYi1pbWFnZXMvaXNz
dWVzLzIwOAo+ID4gPiBQYXRjaDogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtYXJtLW1z
bS8yMDI1MTIxOTA4NTY0MC4xMTQ0NzMtMS1sb2ljLnBvdWxhaW5Ab3NzLnF1YWxjb21tLmNvbS8K
PiA+Cj4gPiBUaGFua3MgZm9yIHRoZSBsaW5rLgo+ID4KPiA+ID4gSSBrbm93IGl0IG1heSBzb3Vu
ZCB1bmxpa2VseSwgYnV0IHRoaXMgY3Jhc2ggaGFzIGJlZW4gcmVwb3J0ZWQKPiA+ID4gc2V2ZXJh
bCB0aW1lcyBkdXJpbmcgYm9vdOKAkXN0cmVzcyB0ZXN0aW5nLiBJIGhhdmVu4oCZdCBpbnZlc3Rp
Z2F0ZWQKPiA+ID4gZGVlcGx5IGVub3VnaCB0byBkZXRlcm1pbmUgd2hldGhlciBpdOKAmXMgY2F1
c2VkIGJ5IGFuIHVuZm9ydHVuYXRlCj4gPiA+IHByZWVtcHRpb24gd2luZG93IG9yIGEgcmFjaW5n
IENQVS4KPiA+Cj4gPiBCdXQgSSdtIGxpdGVyYWxseSBhc2tpbmcgZm9yICp3aGF0KiB3b3VsZCB0
cmlnZ2VyIHRoZSBzdXNwZW5kIGluIHRoYXQKPiA+IGluaXRpYWwgd2luZG93IGJldHdlZW4gZW5h
YmxlKCkgYW5kIGZvcmJpZCgpIGNhdXNlIEkgZG9uJ3Qgc2VlIGl0Lgo+IAo+IFRvIGJlIGhvbmVz
dCwgSSBoYWQgbm90IGluaXRpYWxseSBsb29rZWQgaW50byB0aGUgZXhhY3QgY2F1c2Ugb2YgdGhl
Cj4gc3VzcGVuZCB0cmlnZ2VyIHVudGlsIG5vdywgYnV0IGhlcmUgaXMgd2hhdCBpcyBoYXBwZW5p
bmcuCj4gCj4gVGhlIFBIWSBpcyBhIHN1cHBsaWVyIG9mIHRoZSBVU0IgZGV2aWNlLiBBIFVTQiBk
ZXZpY2UgY2Fubm90IGJlIHByb2JlZAo+IHVudGlsIGFsbCBpdHMgc3VwcGxpZXJzIGFyZSByZWFk
eS4gQXMgbG9uZyBhcyB0aGUgUEhZIGlzIG5vdCByZWFkeSwgdGhlCj4gZGV2aWNlIGNvcmUga2Vl
cHMgcmV0cnlpbmcgdGhlIHByb2JlLCB3aGljaCBmYWlscyB3aXRoIC1FUFJPQkVfREVGRVIuCj4g
Cj4gQXQgc29tZSBwb2ludCB0aGUgUEhZIHByb2JlIGZpbmFsbHkgcnVucywgYnV0IHRoZSBkZXZp
Y2UgY29yZSBtYXkgc3RpbGwgYmUKPiBhdHRlbXB0aW5nIHRvIHByb2JlIHRoZSBVU0IgZGV2aWNl
IGNvbmN1cnJlbnRseS4KPiAKPiBJbnNpZGUgX19kcml2ZXJfcHJvYmVfZGV2aWNlKCksIHdlIGhh
dmU6Cj4gCj4gICAgIHJldCA9IHJlYWxseV9wcm9iZShkZXYsIGRydik7Cj4gICAgIHBtX3JlcXVl
c3RfaWRsZShkZXYpOwo+IAo+ICAgICBpZiAoZGV2LT5wYXJlbnQpCj4gICAgICAgICBwbV9ydW50
aW1lX3B1dChkZXYtPnBhcmVudCk7Cj4gCj4gICAgIHBtX3J1bnRpbWVfcHV0X3N1cHBsaWVycyhk
ZXYpOwo+ICAgICByZXR1cm4gcmV0Owo+IAo+IFRoaXMgbWVhbnMgdGhhdCB3aGVuZXZlciBhIFVT
QiBwcm9iZSBhdHRlbXB0IGNvbXBsZXRlcywgd2hldGhlciB3aXRoIGFuCj4gZXJyb3Igb3Igbm90
LCBpdHMgc3VwcGxpZXJzIGFyZSByZWxlYXNlZCB2aWEgcG1fcnVudGltZV9wdXRfc3VwcGxpZXJz
KCkuCj4gUmVsZWFzaW5nIHN1cHBsaWVycyBtYXkgaW4gdHVybiB0cmlnZ2VyIGEgcnVudGltZSBz
dXNwZW5kLgo+IAo+IEluIG91ciBjYXNlLCBzaW5jZSB0aGUgUEhZIGlzIGEgc3VwcGxpZXIgb2Yg
dGhlIFVTQiBkZXZpY2UsIHRoZSBVU0IgY29yZQo+IGtlZXBzICdsb29waW5nJyBpbiBfX2RyaXZl
cl9wcm9iZV9kZXZpY2UoKSByZXR1cm5pbmcgLUVQUk9CRV9ERUZFUiB1bnRpbAo+IHRoZSBQSFkg
YmVjb21lcyByZWFkeS4gQXMgYSByZXN1bHQsIHBtX3J1bnRpbWVfcHV0X3N1cHBsaWVycygpIG1h
eSBydW4KPiBjb25jdXJyZW50bHkgd2l0aCB0aGUgUEhZJ3MgcHJvYmUgZnVuY3Rpb24uIElmIHRo
aXMgaGFwcGVucyBhZnRlcgo+IHJ1bnRpbWUgUE0gaGFzIGJlZW4gZW5hYmxlZCBmb3IgdGhlIFBI
WSwgYnV0IGJlZm9yZSB0aGUgZHJpdmVyIGhhcwo+IGZvcmJpZGRlbiBzdXNwZW5kIG9yIHRha2Vu
IGEgUE0gcmVmZXJlbmNlLCB0aGUgUEhZIG1heSBlbmQgdXAgYmVpbmcKPiBydW50aW1lLXN1c3Bl
bmRlZCAndW5leHBlY3RlZGx5Jy4KClBsZWFzZSByZXNlbmQgdGhpcyBwYXRjaCB3aXRoIHRoZSBj
b21taXQgbWVzc2FnZSBpbmNsdWRpbmcgdGhpcwpleHBsYW5hdGlvbiAobm90ZSB0aGF0IHlvdXIg
Y29kZSBzbmlwcGV0IGZyb20gX19kcml2ZXJfcHJvYmVfZGV2aWNlKCkgaXMKbWlzc2luZyBhIHJl
bGV2YW50IGNhbGwgdG8gcG1fcnVudGltZV9nZXRfc3VwcGxpZXJzKCkpLgoKQWxzbywgcGxlYXNl
IHNlcGFyYXRlIHRoZSBkZXZyZXMgY2hhbmdlIHRvIGl0cyBvd24gcGF0Y2guIEl0IGlzIGZpeGlu
ZyBhCmRpZmZlcmVudCBsb2dpY2FsIGlzc3VlIChtaXNzaW5nIHBtX3J1bnRpbWVfZGlzYWJsZSgp
IGNhdXNlcyBkZXZpY2Ugd2l0aAp1bmJvdW5kIGRyaXZlciB0byBoYXZlIG5vbi16ZXJvIGRldi0+
cG93ZXIuZGlzYWJsZV9kZXB0aDsgc2hvdWxkIHdhcm4gb24KZHJpdmVyIHJlLXByb2JlKS4KCkFu
b3RoZXIgY29tbWVudCB1cG9uIHJldmlld2luZyB0aGlzIGRyaXZlcidzIHJ1bnRpbWUgUE0gdXNl
IChhbHRob3VnaAp0aGlzIGlzIGF0IG1vc3Qgc29tZXRoaW5nIHRoYXQgbWF5IHJlc3VsdCBpbiBh
IHBhdGNoIGZvciAibmV4dCIpOgoKVGhpcyBkcml2ZXIgdXNlcyBoc3BoeS0+cGh5X2luaXRpYWxp
emVkIHRvIG1ha2Ugc3VyZSBxY29tX3NucHNfaHNwaHlfc3VzcGVuZCgpCmlzbid0IGNhbGxlZCB1
bmxlc3MgcWNvbV9zbnBzX2hzcGh5X2luaXQoKSB3YXMgY2FsbGVkLgoKRG9uJ3Qgd2UgYWNoaWV2
ZSB0aGUgc2FtZSBiZWhhdmlvdXIgYnkgcmVwbGFjaW5nICJoc3BoeS0+cGh5X2luaXRpYWxpemVk
ID0gdHJ1ZSIKd2l0aCBwbV9ydW50aW1lX2dldF9zeW5jKGRldikgYW5kICJoc3BoeS0+cGh5X2lu
aXRpYWxpemVkID0gZmFsc2UiIHdpdGgKcG1fcnVudGltZV9wdXQoZGV2KT8KCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
