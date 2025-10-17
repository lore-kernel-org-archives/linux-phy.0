Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FE1ECCD199
	for <linux-phy@archiver.kernel.org>; Fri, 17 Oct 2025 23:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TMveZ9D6K89feyUjt/MS8OttRpz+jBP0+1ir+nPOIIo=; b=19ohUG8NbSZNcj
	1xnUAd6jevK2c8F/W2HIURPhKegPXsl7Dz5XxuU0Ro0YkI9POXez8cxeT4eZba8iNpljh0KJKCvqq
	xAO9RlZj9VjJUDhX0wDLKEIDljL9DiMnqIFnfzh0euS4SRtt9LKmaCKhNhrGbjJDxgallKf64HeHt
	yArcED3dKwVVzJgFGvX2BzrWSSLB0GexcyCOYtPVp2uNMQAD3ZO+jJbU98JFmLSVYyxAn0VhvwuXN
	jKZhShV4nleMFWT7YfTEsFg3V7ALrfnXx+7LTgl48kKlev9YcicaGPLkC0odM9jpvKWCGg9XCJXFy
	dKsTKMUWDN4Uqrn7KrWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9uL0-00000009Dp8-1J0X;
	Fri, 17 Oct 2025 23:58:22 +0000
Received: from mail-pg1-x52a.google.com ([2607:f8b0:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9uKx-00000009DoD-42cr
	for linux-phy@lists.infradead.org;
	Fri, 17 Oct 2025 23:58:21 +0000
Received: by mail-pg1-x52a.google.com with SMTP id 41be03b00d2f7-b60971c17acso1995749a12.3
        for <linux-phy@lists.infradead.org>; Fri, 17 Oct 2025 16:58:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1760745498; x=1761350298; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1SE0GPjAFjItjLF86HET23/U9OrOIQ8cx/iNIr3s8Q8=;
        b=sMcLskLFl6YW10fYSO/7Dgn2l5OFF0XhC/+M7G089g75Bep3FtmoXITyNr3XUZJaDh
         KapVbVjaqPQKMfUbtR5+EznbOCxjsBlc15u2BAtoNW7uRUjrBfBBpxqUZv1Wob7sD4XA
         bmebEZyO9tpu35AngjgG84MSuE21mi6S+19zezv+oEQI21zFRg+oEfQMrGAauLhpszlf
         YmObZUAa0evu9oW9gIPMC6RyDAYJWaFG/XJK4Jh7in+PODiBp/LXfxOTrqoiGAP64k8q
         /zi3DhqeFSioL5jSNoPB3anJYjE8nf8MRwtHCY0fL9m0xVCKUQU8bdxHkfydAmnLNYl5
         LvwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760745498; x=1761350298;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1SE0GPjAFjItjLF86HET23/U9OrOIQ8cx/iNIr3s8Q8=;
        b=LN7s2frmby6ji/TplWl4MNiJhksnPH8FmEqLZbuZYGNZ5xT3pA3RR46w4b53Iq/zVI
         Z0OmQxSZHtSiiB9I/Vxjcx8dACcE9+q/Kpm01DNoLq61W7DT0AUqiW1i/kzx4dVGk0xB
         ekAmxFKVdVH6vkwSg2RJJ4yI+DE3Abm7CWZqk7n1+QCiVxHWiuXYJ48ckUIDC0K1VIeP
         QHoEV6eshuUg55pthT8kB/9uAKTgBqOZLdwTl2RggLgkLzax4bt6/0BELX/WwhH7BVI5
         DkrTPDYVUveFEHtlXF6ZiH9i3PCMP7HUB4ViPENT5KQZmOIpo1AFMNaNnTyBULqGlolA
         RFAA==
X-Forwarded-Encrypted: i=1; AJvYcCUvOHOyBI54CQgJLcztvy6Zw7srvmcaqS++yzin8CgyCjiJzPWah6G6vhnqRGT3aYdfb5EgDQgTsRU=@lists.infradead.org
X-Gm-Message-State: AOJu0YzK6woseBnkXI2p0Dufc2V0JA/SdwsUCs5y1jjspXyfXd8+N/7q
	tU7qbW5G8S5Gxbc/u781EKDxtFHRd/GyFy185iHcaK6o2LtPQQOY1iEjxyBBmFJV4ocAap3z4o5
	Ya5LUK0AkhA0ZG0UZDyjlKQXjiSO+gbSXJIq939Pd
X-Gm-Gg: ASbGncu7D3i+4t3jSyVOswd0mcQ9tN9bPR7EHSlekrMcBjrCb/DhanlEScOtoqi7gH6
	MGSs+LlhlnnjPx2aZQizGKgup4XaD7HuAfSsedNutFhHChwp9jhdwyt0Bqu3OTrZvrYVtDeRbJR
	WpqL2Nz50InlRx0WOFob6PlmdQDAp6Isl7RI2q6+bC+04NvKXHJef+qxsBJbS2dPjXv3oJkwlcy
	nCLvkkem92ijmYkA9lWxATCXj/+iY/QIYxv7vMPHDxkgH5/Dkc6OXuv1XcKS0Ouno/5q/1suoKy
	0yeC5ePXUrVT5MUjKUd5815IPA==
X-Google-Smtp-Source: AGHT+IHCANqLORIt+IrA+YkO6lwZel+K3VDA4WBemP44u6xPVrUe6fi1GWh3Pp23fq65Ylj7U7aD8xTBhXTINQfkvBY=
X-Received: by 2002:a17:902:d2c4:b0:250:bd52:4cdb with SMTP id
 d9443c01a7336-290ca216351mr67457005ad.32.1760745498073; Fri, 17 Oct 2025
 16:58:18 -0700 (PDT)
MIME-Version: 1.0
References: <20251010201607.1190967-1-royluo@google.com> <20251010201607.1190967-4-royluo@google.com>
 <75756635-b374-4441-8526-175210e01163@kernel.org> <CA+zupgwHFpP5GEwGxOksmLJBU7+Kr_o0p50Pad1NmwNB0AxcGA@mail.gmail.com>
 <20251015130538.GA3214399-robh@kernel.org> <CA+zupgxAhErw4i0Q13hyXE2_sQSowzDgZ4Yv8o1tcZQS7G7a-Q@mail.gmail.com>
In-Reply-To: <CA+zupgxAhErw4i0Q13hyXE2_sQSowzDgZ4Yv8o1tcZQS7G7a-Q@mail.gmail.com>
From: Roy Luo <royluo@google.com>
Date: Fri, 17 Oct 2025 16:57:41 -0700
X-Gm-Features: AS18NWD5UlV7b-66BMMBU_l_HmLfx0ZDw13ZyAgDAmVkiOjEHLur9mcaNTje0Ak
Message-ID: <CA+zupgxx9VQ6Mh1=x7EiGSCWeAqf8LM-047fA99tyE0sHsTamQ@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] dt-bindings: phy: google: Add Google Tensor G5 USB PHY
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Peter Griffin <peter.griffin@linaro.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Joy Chakraborty <joychakr@google.com>, 
	Naveen Kumar <mnkumar@google.com>, Badhri Jagan Sridharan <badhri@google.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251017_165820_006360_555D6583 
X-CRM114-Status: GOOD (  38.72  )
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

T24gV2VkLCBPY3QgMTUsIDIwMjUgYXQgMTE6NTfigK9BTSBSb3kgTHVvIDxyb3lsdW9AZ29vZ2xl
LmNvbT4gd3JvdGU6Cj4KPiBPbiBXZWQsIE9jdCAxNSwgMjAyNSBhdCA2OjA14oCvQU0gUm9iIEhl
cnJpbmcgPHJvYmhAa2VybmVsLm9yZz4gd3JvdGU6Cj4gPgo+ID4gT24gTW9uLCBPY3QgMTMsIDIw
MjUgYXQgMDY6NDY6MzlQTSAtMDcwMCwgUm95IEx1byB3cm90ZToKPiA+ID4gT24gRnJpLCBPY3Qg
MTAsIDIwMjUgYXQgNToxMeKAr1BNIEtyenlzenRvZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9y
Zz4gd3JvdGU6Cj4gPiA+ID4KPiA+ID4gPiBPbiAxMC8xMC8yMDI1IDIyOjE2LCBSb3kgTHVvIHdy
b3RlOgo+ID4gPiA+ID4gKyAgcmVnOgo+ID4gPiA+ID4gKyAgICBpdGVtczoKPiA+ID4gPiA+ICsg
ICAgICAtIGRlc2NyaXB0aW9uOiBVU0IyIFBIWSBjb25maWd1cmF0aW9uIHJlZ2lzdGVycy4KPiA+
ID4gPiA+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBEaXNwbGF5UG9ydCB0b3AtbGV2ZWwgcmVnaXN0
ZXJzLgo+ID4gPiA+ID4gKyAgICAgIC0gZGVzY3JpcHRpb246IFVTQiB0b3AtbGV2ZWwgY29uZmln
dXJhdGlvbiByZWdpc3RlcnMuCj4gPiA+ID4gPiArCj4gPiA+ID4gPiArICByZWctbmFtZXM6Cj4g
PiA+ID4gPiArICAgIGl0ZW1zOgo+ID4gPiA+ID4gKyAgICAgIC0gY29uc3Q6IHUycGh5X2NmZwo+
ID4gPiA+ID4gKyAgICAgIC0gY29uc3Q6IGRwX3RvcAo+ID4gPiA+ID4gKyAgICAgIC0gY29uc3Q6
IHVzYl90b3BfY2ZnCj4gPiA+ID4gPiArCj4gPiA+ID4gPiArICAiI3BoeS1jZWxscyI6Cj4gPiA+
ID4gPiArICAgIGNvbnN0OiAxCj4gPiA+ID4gPiArCj4gPiA+ID4gPiArICBjbG9ja3M6Cj4gPiA+
ID4gPiArICAgIG1heEl0ZW1zOiAxCj4gPiA+ID4gPiArCj4gPiA+ID4gPiArICByZXNldHM6Cj4g
PiA+ID4gPiArICAgIG1heEl0ZW1zOiAxCj4gPiA+ID4gPiArCj4gPiA+ID4gPiArICBwb3dlci1k
b21haW5zOgo+ID4gPiA+ID4gKyAgICBtYXhJdGVtczogMQo+ID4gPiA+ID4gKwo+ID4gPiA+ID4g
KyAgb3JpZW50YXRpb24tc3dpdGNoOgo+ID4gPiA+ID4gKyAgICB0eXBlOiBib29sZWFuCj4gPiA+
ID4gPiArICAgIGRlc2NyaXB0aW9uOgo+ID4gPiA+ID4gKyAgICAgIEluZGljYXRlcyB0aGUgUEhZ
IGFzIGEgaGFuZGxlciBvZiBVU0IgVHlwZS1DIG9yaWVudGF0aW9uIGNoYW5nZXMKPiA+ID4gPiA+
ICsKPiA+ID4gPiA+ICtyZXF1aXJlZDoKPiA+ID4gPiA+ICsgIC0gY29tcGF0aWJsZQo+ID4gPiA+
ID4gKyAgLSByZWcKPiA+ID4gPiA+ICsgIC0gcmVnLW5hbWVzCj4gPiA+ID4gPiArICAtICIjcGh5
LWNlbGxzIgo+ID4gPiA+ID4gKyAgLSBjbG9ja3MKPiA+ID4gPiA+ICsgIC0gcmVzZXRzCj4gPiA+
ID4gPiArICAtIHBvd2VyLWRvbWFpbnMKPiA+ID4gPiA+ICsgIC0gb3JpZW50YXRpb24tc3dpdGNo
Cj4gPiA+ID4gPiArCj4gPiA+ID4gPiArYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlCj4gPiA+
ID4gPiArCj4gPiA+ID4gPiArZXhhbXBsZXM6Cj4gPiA+ID4gPiArICAtIHwKPiA+ID4gPiA+ICsg
ICAgc29jIHsKPiA+ID4gPiA+ICsgICAgICAgICNhZGRyZXNzLWNlbGxzID0gPDI+Owo+ID4gPiA+
ID4gKyAgICAgICAgI3NpemUtY2VsbHMgPSA8Mj47Cj4gPiA+ID4gPiArCj4gPiA+ID4gPiArICAg
ICAgICB1c2JfcGh5OiB1c2JfcGh5QGM0MTAwMDAgewo+ID4gPiA+ID4gKyAgICAgICAgICAgIGNv
bXBhdGlibGUgPSAiZ29vZ2xlLGdzNS11c2ItcGh5IjsKPiA+ID4gPiA+ICsgICAgICAgICAgICBy
ZWcgPSA8MCAweDBjNDUwMDE0IDAgMHhjPiwKPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICA8
MCAweDBjNjM3MDAwIDAgMHhhMD4sCj4gPiA+ID4KPiA+ID4gPiBZb3UgcHJvYmFibHkgbWlzcyBE
UCBzdXBwb3J0IGFuZCB0aGlzIGRvZXMgbm90IGJlbG9uZyBoZXJlLgo+ID4gPgo+ID4gPiBUaGlz
IHJlZ2lzdGVyIHNwYWNlIGlzbid0IHNvbGVseSBmb3IgRFAgb3BlcmF0aW9uLCBhIHNpZ25pZmlj
YW50IHBvcnRpb24KPiA+ID4gbWFuYWdlcyB0aGUgY3VzdG9tIGNvbWJvIFBIWS4gQ29uc2VxdWVu
dGx5LCB0aGlzIHNwYWNlIGlzIGVzc2VudGlhbAo+ID4gPiBldmVuIGZvciBVU0Itb25seSBvcGVy
YXRpb24uIFdlIGNhbiBleHBlY3QgbW9yZSByZWdpc3RlcnMgaW4gdGhlIHNwYWNlCj4gPiA+IHRv
IGJlIHV0aWxpemVkIHdoZW4gRFAgc3VwcG9ydCBpcyBhZGRlZC4KPiA+ID4KPiA+ID4gV2hpbGUg
SSBhY2tub3dsZWRnZSB0aGUgY3VycmVudCBuYW1lIGlzIGNvbmZ1c2luZywgaXQgZGlyZWN0bHkg
cmVmbGVjdHMKPiA+ID4gdGhlIGhhcmR3YXJlIGRvY3VtZW50YXRpb24uIFdlIGNhbiBlaXRoZXIg
YWRoZXJlIHRvIHRoZSBoYXJkd2FyZQo+ID4gPiBkb2N1bWVudGF0aW9uJ3MgbmFtaW5nIG9yIHBy
b3Bvc2UgYSBtb3JlIGRlc2NyaXB0aXZlIGFsdGVybmF0aXZlLgo+ID4gPiBXaGF0J3MgeW91ciBw
cmVmZXJlbmNlPwo+ID4gPgo+ID4gPiA+Cj4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgPDAg
MHgwYzQ1MDAyYyAwIDB4ND47Cj4gPiA+ID4KPiA+ID4gPiBUaGF0J3Mgbm90IGEgc2VwYXJhdGUg
YWRkcmVzcyBzcGFjZS4gSSByZWFsbHksIHJlYWxseSBkb3VidCB0aGF0Cj4gPiA+ID4gaGFyZHdh
cmUgZW5naW5lZXJzIGNhbWUgd2l0aCBhZGRyZXNzIHNwYWNlcyBvZiBvbmUgd29yZCBsb25nLgo+
ID4gPgo+ID4gPiBJIGluaXRpYWxseSBjcmVhdGVkIHRoaXMgc3BhY2UgdG8gYWNjZXNzIHRoZSB1
c2Iyb25seSBtb2RlIHJlZ2lzdGVyLAo+ID4gPiB3aGljaCBtdXN0IGJlIHByb2dyYW1tZWQgd2hl
biB0aGUgY29udHJvbGxlciBvcGVyYXRlcyBpbiBoaWdoLXNwZWVkCj4gPiA+IG9ubHkgbW9kZSB3
aXRob3V0IHRoZSBVU0IzIFBIWSBpbml0aWFsaXplZC4gVXBvbiByZXZpZXcsIEkgbm93Cj4gPiA+
IGJlbGlldmUgdGhlIGNvbnRyb2xsZXIgZHJpdmVyIGlzIHRoZSBiZXR0ZXIgbG9jYXRpb24gZm9y
IHRoaXMgY29uZmlndXJhdGlvbiwKPiA+ID4gYXMgdGhlIHJlZ2lzdGVyIGxvZ2ljYWxseSBiZWxv
bmdzIHRoZXJlIGFuZCB0aGUgY29udHJvbGxlciBjYW4gdGVsbAo+ID4gPiB3aGV0aGVyIHVzYjMg
cGh5IGlzIGdvaW5nIHRvIGJlIGluaXRpYWxpemVkLgo+ID4gPgo+ID4gPiBUaGF0IGlzLCBJJ20g
cmVtb3ZpbmcgdGhpcyByZWdpc3RlciBzcGFjZSBpbiB0aGUgbmV4dCBwYXRjaC4KPiA+Cj4gPiBZ
b3UgYXJlIG1pc3NpbmcgdGhlIHBvaW50LiBXaGF0IGV4aXN0cyBmcm9tIDB4MGM0NTAwMjAtMmMg
YW5kCj4gPiAweDBjNDUwMDAwLTB4MTQgZm9yIHRoYXQgbWF0dGVyPyBIYXJkd2FyZSBibG9ja3Mg
ZG9uJ3QganVzdCBzdGFydCBvbgo+ID4gdW5hbGlnbmVkIGJvdW5kYXJpZXMgbGlrZSAweDE0IG9y
IDB4MmMuIERUIGRlc2NyaWJlcyB0aGUgaC93IGJsb2Nrcywgbm90Cj4KPiBSb2IsCj4KPiBUaGFu
a3MgZm9yIGNoaW1pbmcgaW4uIExldCBtZSBlbGFib3JhdGUgdGhlIHJlZ2lzdGVyIGxheW91dCBo
ZXJlOgo+IFRoZSByZWdpc3RlciBzcGFjZSAweDBjNDUwMDAwIC0gMHgwMDQ1MDA0MyBpcyBzdXBw
b3NlZCB0bwo+IGJlIGFzc2lnbmVkIHRvIHRoZSBVU0IgY29udHJvbGxlci4gSG93ZXZlciwgdGhl
IFVTQiBwaHkgaGFzCj4gdG8gYWNjZXNzIGEgc21hbGwgcG9ydGlvbiBvZiBpdCwgaS5lLiAweDBj
NDUwMDE0IC0gMHgwYzQ1MDAyMCwKPiBpbiBvcmRlciB0byBpbml0aWFsaXplIHVzYjIgcGh5LiBU
aGlzIGlzIHJlYWxseSB1bmZvcnR1bmF0ZSBhbmQKPiBtYWtlcyB0aGluZ3MgbW9yZSBjb21wbGlj
YXRlZCB0aGFuIGl0IHNob3VsZCd2ZSBiZWVuLgo+Cj4gVGhlIGN1cnJlbnQgcGF0Y2ggaXMgYWRk
cmVzc2luZyBpdCBieSBzcGxpdHRpbmcgdGhlIHJlZ2lzdGVyIHNwYWNlOgo+IC0gVVNCIHBoeTog
PDAgMHgwYzQ1MDAxNCAwIDB4Yz4KPiAtIFVTQiBjb250cm9sbGVyOiA8MCAweDBjNDUwMDAwIDAg
MHgxND4sIDwwIDB4MGM0NTAwMjAgMCAweDIzPgo+Cj4gPiBqdXN0IG5vZGVzIG9mIHdoYXQgYSBk
cml2ZXIgbmVlZHMuIFNvIGlmIHRoZSAweDJjIHJlZ2lzdGVyIG5lZWRzIHRvIGJlCj4gPiBhY2Nl
c3NlZCBieSB0aGUgVVNCIGRyaXZlciwgdGhhdCdzIGZpbmUsIGJ1dCB0aGUgcmVnaXN0ZXIgZG9l
c24ndCBnbyBpbgo+ID4gdGhlIFVTQiBjb250cm9sbGVyIG5vZGUgJ3JlZycuIEEgcHJvcGVydHkg
d2l0aCBhIHBoYW5kbGUgdG8gdGhlIG5vZGUKPiA+IGRlZmluaW5nIGFsbCB0aGUgMHgwYzQ1MDAw
MCByZWdpc3RlcnMgYW5kIGFuIG9mZnNldCAoaWYgbmVlZGVkKSBpcwo+ID4gdHlwaWNhbGx5IHdo
YXQgd2UgZG8gdGhlcmUuIE9yIHlvdSBjYW4ganVzdCBmaW5kIHRoYXQgbm9kZSBieQo+ID4gY29t
cGF0aWJsZS4KPgo+IEp1c3QgdG8gbWFrZSBzdXJlIHdlJ3JlIG9uIHRoZSBzYW1lIHBhZ2UsIGFy
ZSB5b3Ugc3VnZ2VzdGluZwo+IG1ha2luZyB0aGUgcmVnaXN0ZXIgc3BhY2UgYSBzeXNjb24gbm9k
ZSBbMV0/IHNvbWV0aGluZyBsaWtlIHRoaXM6Cj4KPiB1c2JfY2ZnX2NzcjogdXNiX2NmZ19jc3JA
YzQ1MDAwMCB7Cj4gICBjb21wYXRpYmxlID0gInN5c2NvbiI7Cj4gICByZWcgPSA8MCAweDBjNDUw
MDAwIDB4MCAweDQzPjsKPiB9Owo+Cj4gdXNiQGM0MDAwMDAgewo+ICAgLi4uCj4gICB1c2ItY2Zn
LXN5c2NvbiA9IDwmdXNiX2NmZ19jc3I+Owo+ICAgLi4uCj4gfTsKPgo+IHVzYl9waHlAYzYzNzAw
MCB7Cj4gICAuLi4KPiAgIHVzYi1jZmctc3lzY29uID0gPCZ1c2JfY2ZnX2Nzcj47Cj4gICAuLi4K
PiB9Cj4KPiBbMV0gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9zeXNjb24u
eWFtbAo+Cj4gVGhhbmtzLAo+IFJveSBMdW8KPgoKSGkgUm9iLAoKSSdtIHNlbmRpbmcgb3V0IGEg
bmV3IHZlcnNpb24gb2YgdGhlIHBhdGNoc2V0LgpBbHRob3VnaCB0aGlzIHNwZWNpZmljIGNvbW1l
bnQgaXNuJ3QgZnVsbHkgcmVzb2x2ZWQgeWV0LCBJJ3ZlIGludGVncmF0ZWQKZW5vdWdoIG5ldyBj
b250ZW50IGFuZCBmaXhlcyBpbnRvIHRoaXMgYW5kIG90aGVyIHBhdGNoZXMgdGhhdCBJIGJlbGll
dmUKaXQncyByZWFkeSBmb3IgYW5vdGhlciByb3VuZCBvZiByZXZpZXcuCgpJJ20gaGFwcHkgdG8g
Y29udGludWUgdGhlIGRpc2N1c3Npb24gb24gdGhpcyBzcGVjaWZpYyBwb2ludCBoZXJlIG9yIGlu
CnRoZSBuZXcgcGF0Y2hzZXQuIEhlcmUgYXJlIHRoZSBsaW5rcyB0byB0aGUgbmV3IHBhdGNoZXMg
RllJOgotIGNvbnRyb2xsZXIgaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtdXNiLzIwMjUx
MDE3MjMzNDU5LjI0MDk5NzUtMS1yb3lsdW9AZ29vZ2xlLmNvbQotIHBoeSBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9saW51eC1waHkvMjAyNTEwMTcyMzUxNTkuMjQxNzU3Ni0xLXJveWx1b0Bnb29n
bGUuY29tCgpUaGFua3MsClJveSBMdW8KCj4gPgo+ID4gUm9iCgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
