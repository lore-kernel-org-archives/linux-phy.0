Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55DAEC4345F
	for <linux-phy@archiver.kernel.org>; Mon, 22 Apr 2024 07:12:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sx0ywji+KDAjdHC+B8l0GFgw2HSGcqQDMz6ipvlYRXE=; b=tJMcZaNMV0Pa2N
	DbK5UJN/foMXOSb8q6akhUKMZOFSlKXLJgod0lQB9gwKYPzwb1M5JH51c5N7lbEqG/wEPeG6QVKhT
	rMcb+Cj5lRYlCWT00XbpQpqALaohf5RXO0JapvemGdmPjUbRzCMBcLPWRxDszT/v/OqOxQAV8K+wG
	nOD94yaOK3D9G/ZMZCBA/F5YPmx4fiLBfAu5A+IEYU/LLE/0Mkd+Nbo9V2mJZQYuQaEM3AnvYyWIy
	5FGzptOMWa8dEKmPtWAyW4ds5o+QYGhz+1SK7pjrx7+h4dNB9YRW9mmApfBkyX8Dzu4q5FIm4ABUv
	UqXjpUooAHtUSIoEM8jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rynqV-0000000CMeA-0FZE;
	Mon, 22 Apr 2024 07:12:11 +0000
Received: from mail-oa1-x2d.google.com ([2001:4860:4864:20::2d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rynqR-0000000CMcz-40B6
	for linux-phy@lists.infradead.org;
	Mon, 22 Apr 2024 07:12:09 +0000
Received: by mail-oa1-x2d.google.com with SMTP id 586e51a60fabf-23335730db1so2042611fac.2
        for <linux-phy@lists.infradead.org>; Mon, 22 Apr 2024 00:12:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713769924; x=1714374724; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4Cg+LkkJAMIn0twUnN3DDfZ/IhwvjeNrn5o075GoKwo=;
        b=xoO/GpTBBAYxCm1X0rBi4GsbC5cf8ijL1QUuDGwOT4alpj6mZ7K569cXhAvjV9zIRu
         E8ecX9XtQqwug2Jpso0tObb1bJtKf59XrfdPNn0aiujApDkEAvJrGT9Tmumq8OrkGdBK
         x1+JiN+uIJuIuRviNe/5XUp9RXqiw+/QevFKLoyS+sFBbQgwyn1xKyI6GMNQYJqzk7fg
         ibFCitW5CwXm2GBRPrLHrNlwx6uHHSO+7zPiBWbfQzUnXrI8RuzoSYV+y6EXf5HXfir6
         TgG43JDkt4jyF890HkyDEv3fmjlFL4Ph7wRo56QCeu80f3n4sFoUI6h0dMaq9iABx9kN
         uqpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713769924; x=1714374724;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4Cg+LkkJAMIn0twUnN3DDfZ/IhwvjeNrn5o075GoKwo=;
        b=halReiImGT3wRBhTqN4qaA6dr6WzowUCQvYwTE+TOegiN5vRhZ7JQ57qRDxLsHMddS
         7GEQ5wnOZ6tcbiUUILtXeVUHEkbvA7b3yZ6xXVvMhfKPTOpawiqvBMHJo2QwIM0g/ia+
         IE58zqNQnBQV9NCF7R01M+tTLD58paP53rPHEbke1VS2vsBqg6k31sId0jUNO/IxJBR1
         XY3ZNh6lRowb5Gu5wU8FAdHCXHexN+LNFcR8+Jr/xXNy2paVc2JejwQ1JcOVkAmGRE12
         VrUkv8HFLiVdsMRWjJ/F35IiQoQE795Hp4CJhM9Gk0gsk/QhnhfN9ylelEdo9hB5jU8p
         8MZw==
X-Forwarded-Encrypted: i=1; AJvYcCXLd9dBzY45LcCfbYNiqfcjUQk597/v9azzq6H1nYsavQwh5wUA8AV99KQuD/XaP95+9QLJ5U+FT2b4U0djTBbd45XPAUR4g2CpagLWbQ==
X-Gm-Message-State: AOJu0YxXJ3p7Kmda6KAa/d3oytwSOp9bYfCLhENzqisKeF7GjjT3mHeS
	NGh2D1tYIRm+F23kLEvUvfwEBf49uSe7Wki8i4PW77pfq+Hlpin0blmFAZSvHg==
X-Google-Smtp-Source: AGHT+IGsAnvtXsNNVTtGLGsnDwgTZNcM5E8iRPZJhaMeCx1yHucYJ64i8pt6jXG7TTPYe25ap1BMcw==
X-Received: by 2002:a05:6870:82a6:b0:22a:4c05:2efd with SMTP id q38-20020a05687082a600b0022a4c052efdmr11720065oae.10.1713769923903;
        Mon, 22 Apr 2024 00:12:03 -0700 (PDT)
Received: from thinkpad ([120.60.70.118])
        by smtp.gmail.com with ESMTPSA id fe8-20020a056a002f0800b006ed00ea504asm7189292pfb.159.2024.04.22.00.11.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Apr 2024 00:12:03 -0700 (PDT)
Date: Mon, 22 Apr 2024 12:41:56 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: mr.nuke.me@gmail.com
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-clk@vger.kernel.org
Subject: Re: [PATCH v3 4/7] PCI: qcom: Add support for IPQ9574
Message-ID: <20240422071156.GB9522@thinkpad>
References: <20240415182052.374494-1-mr.nuke.me@gmail.com>
 <20240415182052.374494-5-mr.nuke.me@gmail.com>
 <CAA8EJpqKWJBqDUacE0xTLzxny32ZTStiRgXsd2LBD=Hou_CRBw@mail.gmail.com>
 <3cfc26e6-5587-d4a2-f217-1a30169ad1a0@gmail.com>
 <20240417070616.GB3894@thinkpad>
 <102f209c-3367-86ac-c583-73103d5510a9@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <102f209c-3367-86ac-c583-73103d5510a9@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_001208_022553_44876419 
X-CRM114-Status: GOOD (  26.00  )
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

T24gRnJpLCBBcHIgMTksIDIwMjQgYXQgMDI6NDQ6MzZQTSAtMDUwMCwgbXIubnVrZS5tZUBnbWFp
bC5jb20gd3JvdGU6Cj4gSGkgTWFuaS4KPiAKPiBPbiA0LzE3LzI0IDAyOjA2LCBNYW5pdmFubmFu
IFNhZGhhc2l2YW0gd3JvdGU6Cj4gPiBPbiBNb24sIEFwciAxNSwgMjAyNCBhdCAwMzowNzowMlBN
IC0wNTAwLCBtci5udWtlLm1lQGdtYWlsLmNvbSB3cm90ZToKPiA+ID4gCj4gPiA+IAo+ID4gPiBP
biA0LzE1LzI0IDE1OjA0LCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+ID4gPiA+IE9uIE1vbiwg
MTUgQXByIDIwMjQgYXQgMjE6MjIsIEFsZXhhbmRydSBHYWduaXVjIDxtci5udWtlLm1lQGdtYWls
LmNvbT4gd3JvdGU6Cj4gPiA+ID4gPiAKPiA+ID4gPiA+IEFkZCBzdXBwb3J0IGZvciB0aGUgUENJ
ZSBvbiBJUFE5NTc0LiBUaGUgbWFpbiBkaWZmZXJlbmNlIGZyb20gaXBxNjAxOAo+ID4gPiA+ID4g
aXMgdGhhdCB0aGUgImlmYWNlIiBjbG9jayBpcyBub3QgbmVjZXNzYXJyeS4gQWRkIGEgc3BlY2lh
bCBjYXNlIGluCj4gPiA+ID4gPiBxY29tX3BjaWVfZ2V0X3Jlc291cmNlc18yXzlfMCgpIHRvIGhh
bmRsZSB0aGlzLgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBBbGV4YW5kcnUg
R2Fnbml1YyA8bXIubnVrZS5tZUBnbWFpbC5jb20+Cj4gPiA+ID4gPiAtLS0KPiA+ID4gPiA+ICAg
IGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5jIHwgMTMgKysrKysrKysrLS0t
LQo+ID4gPiA+ID4gICAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlv
bnMoLSkKPiA+ID4gPiA+IAo+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRy
b2xsZXIvZHdjL3BjaWUtcWNvbS5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1x
Y29tLmMKPiA+ID4gPiA+IGluZGV4IDE0NzcyZWRjZjBkMy4uMTA1NjBkNmQ2MzM2IDEwMDY0NAo+
ID4gPiA+ID4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLmMKPiA+
ID4gPiA+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5jCj4gPiA+
ID4gPiBAQCAtMTEwMSwxNSArMTEwMSwxOSBAQCBzdGF0aWMgaW50IHFjb21fcGNpZV9nZXRfcmVz
b3VyY2VzXzJfOV8wKHN0cnVjdCBxY29tX3BjaWUgKnBjaWUpCj4gPiA+ID4gPiAgICAgICAgICAg
c3RydWN0IHFjb21fcGNpZV9yZXNvdXJjZXNfMl85XzAgKnJlcyA9ICZwY2llLT5yZXMudjJfOV8w
Owo+ID4gPiA+ID4gICAgICAgICAgIHN0cnVjdCBkd19wY2llICpwY2kgPSBwY2llLT5wY2k7Cj4g
PiA+ID4gPiAgICAgICAgICAgc3RydWN0IGRldmljZSAqZGV2ID0gcGNpLT5kZXY7Cj4gPiA+ID4g
PiAtICAgICAgIGludCByZXQ7Cj4gPiA+ID4gPiArICAgICAgIGludCByZXQsIG51bV9jbGtzID0g
QVJSQVlfU0laRShyZXMtPmNsa3MpIC0gMTsKPiA+ID4gPiA+IAo+ID4gPiA+ID4gLSAgICAgICBy
ZXMtPmNsa3NbMF0uaWQgPSAiaWZhY2UiOwo+ID4gPiA+ID4gKyAgICAgICByZXMtPmNsa3NbMF0u
aWQgPSAicmNobmciOwo+ID4gPiA+ID4gICAgICAgICAgIHJlcy0+Y2xrc1sxXS5pZCA9ICJheGlf
bSI7Cj4gPiA+ID4gPiAgICAgICAgICAgcmVzLT5jbGtzWzJdLmlkID0gImF4aV9zIjsKPiA+ID4g
PiA+ICAgICAgICAgICByZXMtPmNsa3NbM10uaWQgPSAiYXhpX2JyaWRnZSI7Cj4gPiA+ID4gPiAt
ICAgICAgIHJlcy0+Y2xrc1s0XS5pZCA9ICJyY2huZyI7Cj4gPiA+ID4gPiAKPiA+ID4gPiA+IC0g
ICAgICAgcmV0ID0gZGV2bV9jbGtfYnVsa19nZXQoZGV2LCBBUlJBWV9TSVpFKHJlcy0+Y2xrcyks
IHJlcy0+Y2xrcyk7Cj4gPiA+ID4gPiArICAgICAgIGlmICghb2ZfZGV2aWNlX2lzX2NvbXBhdGli
bGUoZGV2LT5vZl9ub2RlLCAicWNvbSxwY2llLWlwcTk1NzQiKSkgewo+ID4gPiA+ID4gKyAgICAg
ICAgICAgICAgIHJlcy0+Y2xrc1s0XS5pZCA9ICJpZmFjZSI7Cj4gPiA+ID4gPiArICAgICAgICAg
ICAgICAgbnVtX2Nsa3MrKzsKPiA+ID4gPiA+ICsgICAgICAgfQo+ID4gPiA+ID4gKwo+ID4gPiA+
ID4gKyAgICAgICByZXQgPSBkZXZtX2Nsa19idWxrX2dldChkZXYsIG51bV9jbGtzLCByZXMtPmNs
a3MpOwo+ID4gPiA+IAo+ID4gPiA+IEp1c3QgdXNlIGRldm1fY2xrX2J1bGtfZ2V0X29wdGlvbmFs
KCkgaGVyZS4KPiA+ID4gCj4gPiA+IFRoYW5rIHlvdSEgSSB3YXNuJ3Qgc3VyZSBpZiB0aGlzIHdh
cyB0aGUgY29ycmVjdCBzb2x1dGlvbiBoZXJlLiBJIHdpbGwgZ2V0Cj4gPiA+IHRoaXMgdXBkYXRl
ZCBpbiB2NC4KPiA+ID4gCj4gPiAKPiA+IFBsZWFzZSByZWJhc2Ugb24gdG9wIG9mIFsxXSBhbmQg
bWVudGlvbiB0aGUgZGVwZW5kZW5jeSBpbiBjb3ZlciBsZXR0ZXIuCj4gCj4gSSBhbSB2ZXJ5IGhl
c2l0YW50IHRvIGRlcGVuZCBvbiBhbm90aGVyIHBhdGNoIHNlcmllcy4gSXMgaXQgb2theSBpZiBJ
Cj4gaW5jbHVkZSB5b3VyIHBhdGNoIGluIHY0IG9mIHRoaXMgc2VyaWVzPwo+IAoKRmVlbCBmcmVl
IHRvLgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCu
muCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
