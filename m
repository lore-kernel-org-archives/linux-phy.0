Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF52CCE7AF9
	for <linux-phy@archiver.kernel.org>; Fri,  6 Sep 2024 09:39:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nMMY9MqXg05ng7+82P6XZk3mlLwOT3NU48WC73Fctc4=; b=jXY7xozgC8wtQM
	tt3+FO3k4vXq9SRGJQofoN5uZ/6heXfXfRC3f+eJBXR6ezYVV/3aN3PSStAqG+taOpp/U28UngAn0
	t/wXnWzrHcC87z9R5+DLpIc7svzGQv68cdlJ/jbkdR7ktNyZppc1higMuj53rWx/u/VSg3RKRxHYY
	KHH0qQgwJX8SKhmnhKZFNdZtLSgLYkL8/Ob5RBmGxKj+CbtipAOQ9ItLxg69CwuiBUZTOW6uwZ2fp
	GH9mPxTmsDl/8R0+1/lk5TIBCKm2mlm3HdLME3LkofhZ+hrQN4Pa117M3AE5MOxffUQmJkUJBKwbR
	vRoUDgUPvLe3xhA35QSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smVRA-0000000BY3i-27pn;
	Fri, 06 Sep 2024 09:39:28 +0000
Received: from mail-yw1-x1134.google.com ([2607:f8b0:4864:20::1134])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smVGf-0000000BViQ-3H76
	for linux-phy@lists.infradead.org;
	Fri, 06 Sep 2024 09:28:39 +0000
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-6c130ffa0adso16641947b3.3
        for <linux-phy@lists.infradead.org>; Fri, 06 Sep 2024 02:28:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725614916; x=1726219716; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fF3pcbju+s8J9xxsWbSGojiYAmCI0/XO/iQ2e/UjLWE=;
        b=m8rQTrqR6yl0IOBwz+EjHpZswxvBbS7IcQdl+ARUst8UV+9zyswPr0UgY4ibJSI72i
         CFlUObMnrS7LzZ3g7gstflgHDg5SHsWBtR5vUabFhw/8TRhKPBgxfdYYM73WOz0COGNm
         NbhHqwSeN3Tj39tkZmOnArao10ELljt1lR2Jx9k12i+G4UMUoRJBm31NIrPQX9IoN5mC
         NDhv7x2+kaQs2nar6IIYBVXcTlZ5LkU4R0PiGaz9yV8BbeB8T867QADhZmDpfp9HZHHN
         Ok0mtHdbulLKE20k1xdRsxqLgllNqIoGljK3fSIf/cmL2kl8FnsGevUklEnVRhVXyPL9
         AAaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725614916; x=1726219716;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fF3pcbju+s8J9xxsWbSGojiYAmCI0/XO/iQ2e/UjLWE=;
        b=XtDAlWMK00tagh2CYjNlu5TxJriB7jfbwqwE67I7bbHZW4La5N/Va+LWImpVkTUFF/
         X0ng7GDwrBTnFtd15Yr2Oky6ofsic3u0OqOkStifDpOBbQ0kou/GDocjV5HFUTebp2Q1
         QW+RD/dto63PlqNMn8PzTlZfHJOzUa0OvR7K5p387XBeFhPfAflvsp0isnOkB6RJ3Ijd
         fNORtuc1zdKpgLXcSnWBKHhuRTKS5GdmcWCjvBRF/Fbzj6LaPT93M1oUozwnul0jZBar
         rI0PHxVojw3fQ0CoZ3CXL+yWRohT/Dx5FTPD6U6Vb6nHIs9ktKXz2pN9heI0lGFG8RPa
         HzTg==
X-Forwarded-Encrypted: i=1; AJvYcCUu4FGEYImaKSsrT/osBbBQ4E56V4XirQ3kWlR0NxMkm2JnRUac9X0/VLGuB7E9EuGlNaztUiM4Bsk=@lists.infradead.org
X-Gm-Message-State: AOJu0YwZZ0QzB/bRiGWEk6z+PmJ8Z9Z85rymfznJUwz/c1SnqiY1ETfg
	z20DabMKw/Wjv59+HcMZaeqB0kLb/jBu1RdkYBbP3yV/uW+KwLMP/+1gpiJvS5njVVZ19xj9sE3
	DxbwgX1cPOa08bV723vVmiLIjcObXIoAoFHe8aw==
X-Google-Smtp-Source: AGHT+IHieSDyqryWCOWipiJiuoPb3kbzCKPQo3e4n3rpun4twmAHpt0K/zSkbaOjmha9z2Q9UWNSpV0q6mQVrQ94rmM=
X-Received: by 2002:a05:690c:6612:b0:6db:3b2f:a188 with SMTP id
 00721157ae682-6db4516fb00mr24752687b3.32.1725614916403; Fri, 06 Sep 2024
 02:28:36 -0700 (PDT)
MIME-Version: 1.0
References: <20240830-nxp-ptn3222-v2-0-4c6d8535cf6c@linaro.org>
 <20240830-nxp-ptn3222-v2-2-4c6d8535cf6c@linaro.org> <6fcaa893-70a4-44f4-afc0-853799e30774@quicinc.com>
 <CAA8EJpoTb_-HtBPv2=FecHvtHYQD4ipqfq3C98ky=qXEXB=_6Q@mail.gmail.com> <237865a2-61fb-4d05-a57d-261710aad821@quicinc.com>
In-Reply-To: <237865a2-61fb-4d05-a57d-261710aad821@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 6 Sep 2024 12:28:25 +0300
Message-ID: <CAA8EJpqa3_ZaC7xo+pWBovKEvJ5utxR7nS1vSRnyskw7GZf-wQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] phy: add NXP PTN3222 eUSB2 to USB2 redriver
To: Song Xue <quic_songxue@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_022837_863734_8F0B6681 
X-CRM114-Status: GOOD (  27.75  )
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

T24gRnJpLCA2IFNlcHQgMjAyNCBhdCAxMTo0MCwgU29uZyBYdWUgPHF1aWNfc29uZ3h1ZUBxdWlj
aW5jLmNvbT4gd3JvdGU6Cj4KPgo+Cj4gT24gOC8zMS8yMDI0IDc6NDUgQU0sIERtaXRyeSBCYXJ5
c2hrb3Ygd3JvdGU6Cj4gPiBPbiBTYXQsIDMxIEF1ZyAyMDI0IGF0IDAyOjEzLCBTb25nIFh1ZSA8
cXVpY19zb25neHVlQHF1aWNpbmMuY29tPiB3cm90ZToKPiA+PiBPbiA4LzMwLzIwMjQgNDoyMCBQ
TSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiA+Pj4gVGhlIE5YUCBQVE4zMjIyIGlzIHRoZSBz
aW5nbGUtcG9ydCBlVVNCMiB0byBVU0IyIHJlZHJpdmVyIHRoYXQgcGVyZm9ybXMKPiA+Pj4gdHJh
bnNsYXRpb24gYmV0d2VlbiBlVVNCMiBhbmQgVVNCMiBzaWduYWxsaW5nIHNjaGVtZXMuIEl0IHN1
cHBvcnRzIGFsbAo+ID4+PiB0aHJlZSBkYXRhIHJhdGVzOiBMb3cgU3BlZWQsIEZ1bGwgU3BlZWQg
YW5kIEhpZ2ggU3BlZWQuCj4gPj4+Cj4gPj4+IFRoZSByZXNldCBzdGF0ZSBlbmFibGVzIGF1dG9u
ZWdvdGlhdGlvbiBvZiB0aGUgUEhZIHJvbGUgYW5kIG9mIHRoZSBkYXRhCj4gPj4+IHJhdGUsIHNv
IG5vIGFkZGl0aW9uYWwgcHJvZ3JhbW1pbmcgaXMgcmVxdWlyZWQuCj4gPj4+Cj4gPj4+IFJldmll
d2VkLWJ5OiBOZWlsIEFybXN0cm9uZyA8bmVpbC5hcm1zdHJvbmdAbGluYXJvLm9yZz4KPiA+Pj4g
VGVzdGVkLWJ5OiBLb25yYWQgRHliY2lvIDxrb25yYWR5YmNpb0BrZXJuZWwub3JnPgo+ID4+PiBT
aWduZWQtb2ZmLWJ5OiBEbWl0cnkgQmFyeXNoa292IDxkbWl0cnkuYmFyeXNoa292QGxpbmFyby5v
cmc+Cj4gPj4+IC0tLQo+ID4+PiAgICBkcml2ZXJzL3BoeS9LY29uZmlnICAgICAgICAgICB8ICAx
MSArKysrCj4gPj4+ICAgIGRyaXZlcnMvcGh5L01ha2VmaWxlICAgICAgICAgIHwgICAxICsKPiA+
Pj4gICAgZHJpdmVycy9waHkvcGh5LW54cC1wdG4zMjIyLmMgfCAxMjMgKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gPj4+ICAgIDMgZmlsZXMgY2hhbmdlZCwgMTM1
IGluc2VydGlvbnMoKykKPiA+Cj4gPiBbdHJpbW1lZF0KPiA+Cj4gPj4+ICsKPiA+Pj4gK01PRFVM
RV9ERVNDUklQVElPTigiTlhQIFBUTjMyMjIgZVVTQjIgUmVkcml2ZXIgZHJpdmVyIik7Cj4gPj4+
ICtNT0RVTEVfTElDRU5TRSgiR1BMIik7Cj4gPj4+Cj4gPj4gVGhlIEkyQyBkcml2ZXIganVzdCBy
ZWFsaXplcyB0aGUgZnVuY3Rpb24gb24gcmVzZXQgYW5kIFBXUi4gV2hhdCBhYm91dAo+ID4+IG90
aGVyIEkyQyBkcml2ZXIgZnVuY3Rpb24gbGlrZSBJMkMgaW50ZXJmYWNlIG9wZXJhdGlvbnMsCj4g
Pgo+ID4gSSBkb24ndCBxdWl0ZSB1bmRlcnN0YW5kIHdoYXQgeW91IG1lYW4gYnkgdGhpcy4gQ291
bGQgeW91IHBsZWFzZSBjbGFyaWZ5Pwo+ID4KPiA+PiAgIGF1dG8tc3VzcGVuZCwKPiA+Cj4gPiBJ
IHRoaW5rIHlvdSBtZWFuIHBtX3J1bnRpbWUgaGVyZS4gSXQncyBhIHZhbGlkIGNhc2UsIGJ1dCBn
cmFudGVkIHRoYXQKPiA+IGl0IHNob3VsZCBzdGF5IGVuYWJsZWQgd2hlbiBVU0IgY29udHJvbGxl
ciBpcyBlbmFibGVkLCB0aGUgZ2FpbiBzaG91bGQKPiA+IGJlIHByZXR0eSBsaW1pdGVkLiBJJ2xs
IGNvbnNpZGVyIGEgZm9sbG93dXAgcGF0Y2ggaW1wbGVtZW50aW5nCj4gPiBwbV9ydW50aW1lIGZv
ciB0aGUgc2FrZSBvZiBiZWluZyBhYmxlIHRvIGRpc2FibGUgSTJDIGhvc3QgaWYgRFdDMwo+ID4g
Y29udHJvbGxlciBkaXNhYmxlcyB0aGUgUEhZLgo+ID4KPiA+PiByZW1vdGUgd2FrZXVwLAo+ID4K
PiA+IE5vdCBzdXBwb3J0ZWQgYnkgZGVzaWduLiBQVE4zMjIyIGRvZXNuJ3QgaGF2ZSBJUlEgcGlu
cyB0byByZXBvcnQKPiA+IGV2ZW50cyB0byB0aGUgaG9zdC4KPiA+Cj4gPj4gbWVtb3J5IG1hcHMg
ZXRjLgo+ID4KPiA+IGh1aD8KPiA+Cj4gPj4gICBXaG8gd2lsbCBlbmFibGUgdGhlc2U/IEkgdGhp
bmsgaXQgaXMgbm90Cj4gPj4gaW5jb21wbGV0ZSBJMkMgZHJpdmVyLCBpZiBvbiBzb21lZGF5LCBw
dG4zMjIyIGlzIHVzZWQgYXMgSTJDIGRldmljZS4KPiA+Cj4gPiBXZWxsLCBJJ20gdXNpbmcgaXQg
YXMgYW4gSTJDIGRldmljZS4KPiA+Cj4gU29ycnkgZm9yIHRoZSBkZWxheWVkIHJlc3BvbnNlLgo+
IFRoZSBmdW5jdGlvbnMgSSBsaXN0ZWQsIHN1Y2ggYXMgYXV0by1zdXNwZW5kIGFuZCB3YWtlLXVw
LCBhcmUganVzdAo+IGV4YW1wbGVzLiBNeSBtYWluIHBvaW50IGlzIHRoYXQgYSBiYXNpYyBJMkMg
ZHJpdmVyIHNob3VsZCBpbmNsdWRlCj4gZnVuZGFtZW50YWwgZnVuY3Rpb25zIGxpa2Ugc2V0dGlu
ZyB1cCB0aGUgSTJDIGJ1cywgY29uZmlndXJpbmcgdGhlCj4gY2xvY2ssIGFuZCBzZXR0aW5nIHRo
ZSBTREEgKGRhdGEgbGluZSkgYW5kIFNDTCAoY2xvY2sgbGluZSkuIEEgYmFzaWMgSTJDCj4gZHJp
dmVyIHNob3VsZG7igJl0IGJlIGxpbWl0ZWQgdG8gZW5hYmxpbmcgdGhlIHBvd2VyIHN1cHBseSBh
bmQgcmVzZXQgcGluLAo+IGFzIHRoZXNlIGZlYXR1cmVzIGNhbiBiZSBoYW5kbGVkIGJ5IG90aGVy
IGRyaXZlcnMgYXMgd2VsbC4KPiBJZiB5b3UgaW1wbGVtZW50IHRoZXNlIGZ1bmRhbWVudGFsIGZ1
bmN0aW9ucywgSSB0aGluayBpdCB3aWxsIGJlIHN1ZmZpY2llbnQuCgpJIHRoaW5rIHlvdSBoYXZl
IG1peGVkIHR3byB0aGluZ3MuIFlvdSBhcmUgZGVzY3JpYmluZyBhbiBJMkMgYnVzCmRldmljZSwg
d2hpY2ggUFROMzIyMiBpc24ndC4gSTJDIGNsaWVudHMgZG8gbm90IGhhdmUgdG8gc2V0dXAKYW55
dGhpbmcuIFNEQS9TQ0wgYW5kIGNsb2NrIGZyZXF1ZW5jeSBhcmUgaGFuZGxlZCBieSB0aGUgSTJD
IGJ1cwpkcml2ZXJzIGFuZCBieSB0aGUgSTJDIGZyYW1ld29yay4KCi0tIApXaXRoIGJlc3Qgd2lz
aGVzCkRtaXRyeQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
