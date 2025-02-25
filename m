Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5A60C021B2
	for <linux-phy@archiver.kernel.org>; Tue, 25 Feb 2025 08:17:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yRcGJ8w+5NyDxrTW/q4mGzhANzTkhiR44WUa23ykGJk=; b=IK4Cr9shjlvabQ
	b24iTbHFauET/yrXjtS93frU03qun5Xo+zfJNwLO+YtLzSZjOEX7PtcMVWxgyB19cCkgLeT+IF/0+
	08fFNnDxict1xJtZ1O5Es14XwX+lQ4oa1Xr9gZ0E2x8zPy36kkaJfOmMIy9zZjc351tSzaF3TTNRf
	/2vRTJwx8TBPJLjvU8hIrv6C7Po2YiRYu4mgOJZQBY0RZOiqk43i7wXk3kmtcYavIXDS8v+G4Hh47
	VIp7BH1HkjR0VeXiz4XL33yaXsFFXbX4zVwUNAIFuAX1hplfXHneFUErN7ZlF8+53j4eM4tKqW4K7
	OURrr/FvasoZ/E++CM1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmq8X-0000000GLo5-1eyl;
	Tue, 25 Feb 2025 08:17:53 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmq8V-0000000GLnb-0ww4
	for linux-phy@lists.infradead.org;
	Tue, 25 Feb 2025 08:17:52 +0000
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-220c92c857aso89644195ad.0
        for <linux-phy@lists.infradead.org>; Tue, 25 Feb 2025 00:17:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740471470; x=1741076270; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=K5qgM7poxXm8j+OGJ1RCh5kOjLjfZERLhGhbtMwbOUg=;
        b=JQ/mzx05JU/zUMfa+wXMcCnvgF/5c70ItsyKGjtRTwjSQBYd5rTVxW4oHTfW6ToAyU
         ne+gk5JKnMiv6V7Syszc7SsFa+7TX4YgNgJcZNsM6q55zbkDItzSDS2Kh6SuXa411Irh
         BRfmkGe5vey3vbwROMM5vJxS9BuFeGEzzpqXcKyRJz03wSLCKJgxyvtvJAFCQ/ljNy1o
         3Zvvodc7L1JQqjkaLO4gvGy6Cf3OclIwa9LtONGrKOHmVnIhbUMlzR+d6N00Y6KpIFmR
         g4uqPwMtJI5z4PgROI/APVVwQ0NSofNY+u7O56XtG2fKM3NK016mL1YyOQLBCSPjGaGz
         /Jug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740471470; x=1741076270;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=K5qgM7poxXm8j+OGJ1RCh5kOjLjfZERLhGhbtMwbOUg=;
        b=dYvxwybF35bMpyWxc0fkzgPi0jwmlKjZcZDWTxjypPse9aSWL/9O5NyrN4K8cb6UqF
         y1j1+fzaJlJQixpAjzIXjB8X1xqGoNkqBu4fo+zAbji+yOmIdMjbQal4fGPR0CfTX1N1
         ngh9oNLbKd4J1V65eFi1pFlK5xzAeq8GHfx0i0yZEwkeUc4JG9qmxANF1AJQSyQv0Vtg
         SXYDw39zfxjb7NN77aWapOKYnufL6B+fCL61hFYMa7OZgTLnq2LzC2P2+KHxrhmCuNRR
         NEPdX/IUCnuhcZF8fJyP/wREQ/yfWlJbvH3/8aN11pduxhXD5EBqbLCWRcnl35hYVANX
         El9g==
X-Forwarded-Encrypted: i=1; AJvYcCUpOEQH1Qe0BeQ20Bbpu80PMzckMbw8MWW09BI0Yg6xM6ei21X2eDbW+OtW1PkfQVHI4WjE1rVMsLY=@lists.infradead.org
X-Gm-Message-State: AOJu0YzvDTtOXhmLrdyGIaO/yV0bKspLVb6RfVgUZeLTL4BHK9mLoM1e
	qhpcF97MSOA0jQ9PHJ+BEntwZh2rs+huz4xjEjHf3Y1tXTzDbvyMvWuV0H+Gj8kHxPBF9RdX764
	=
X-Gm-Gg: ASbGncshAsPi2Ch2jUlpZbfH0wDRW11FqttdiSOmOdXKF2r8gfNe40J3+MUGkGC/5ZT
	jKq27M2qXYqJrTQzsG0WJjH9lVmeptMqRuUkiMsWbs0LMyK1ZqGayUqEFb3pNoEMhCq9qoK2mRA
	10uXA+pesfRVMivf1zu684QV6f8u7I3a16O4+27T+gb3ycho+r2cyYXUFyMCzC5r5qFrSlJYToU
	Efuap7wEhgHSm4Yna7BpQ/6cgnPKPYxA6m1fZbXA3B8oykAw4Jk0/IvtNnrZrAqr2hX0B7FT4tc
	/PLLPB+njw/k4aTbyBeiidutzxkJB6dc4cTd
X-Google-Smtp-Source: AGHT+IEpO/yJbCJfiyxz5Zgl+Ab9e8pW5yGytcKSCdHEpsimzdcIh/9jYIizG0EAUBk3flqU4p1GwA==
X-Received: by 2002:a17:902:ce11:b0:21f:6167:183a with SMTP id d9443c01a7336-2218c3f434fmr337409465ad.15.1740471469949;
        Tue, 25 Feb 2025 00:17:49 -0800 (PST)
Received: from thinkpad ([36.255.17.214])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2230a092eb0sm8545385ad.142.2025.02.25.00.17.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 00:17:49 -0800 (PST)
Date: Tue, 25 Feb 2025 13:47:44 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: "Wenbin Yao (Consultant)" <quic_wenbyao@quicinc.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, vkoul@kernel.org,
	kishon@kernel.org, p.zabel@pengutronix.de,
	dmitry.baryshkov@linaro.org, abel.vesa@linaro.org,
	quic_qianyu@quicinc.com, neil.armstrong@linaro.org,
	quic_devipriy@quicinc.com, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/2] phy: qcom: qmp-pcie: Add PHY register retention
 support
Message-ID: <20250225081744.3aprpztylrdgs2cl@thinkpad>
References: <20250220102253.755116-1-quic_wenbyao@quicinc.com>
 <20250220102253.755116-3-quic_wenbyao@quicinc.com>
 <20250224073301.aqbw3gxjnupbejfy@thinkpad>
 <7ffb09cd-9c77-4407-9087-3e789cd8bf44@quicinc.com>
 <ea5de507-1252-4ff3-9b18-40981624afea@oss.qualcomm.com>
 <20250224122439.njrcoyrfsisddoer@thinkpad>
 <eea55dfa-3dd3-488b-958c-cd20e18a7d7d@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <eea55dfa-3dd3-488b-958c-cd20e18a7d7d@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250225_001751_271380_B5666DB2 
X-CRM114-Status: GOOD (  36.12  )
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

T24gVHVlLCBGZWIgMjUsIDIwMjUgYXQgMDQ6MDY6MTZQTSArMDgwMCwgV2VuYmluIFlhbyAoQ29u
c3VsdGFudCkgd3JvdGU6Cj4gT24gMi8yNC8yMDI1IDg6MjQgUE0sIE1hbml2YW5uYW4gU2FkaGFz
aXZhbSB3cm90ZToKPiA+IE9uIE1vbiwgRmViIDI0LCAyMDI1IGF0IDEyOjQ2OjQ0UE0gKzAxMDAs
IEtvbnJhZCBEeWJjaW8gd3JvdGU6Cj4gPiA+IE9uIDI0LjAyLjIwMjUgOTo0NiBBTSwgV2VuYmlu
IFlhbyAoQ29uc3VsdGFudCkgd3JvdGU6Cj4gPiA+ID4gT24gMi8yNC8yMDI1IDM6MzMgUE0sIE1h
bml2YW5uYW4gU2FkaGFzaXZhbSB3cm90ZToKPiA+ID4gPiA+IE9uIFRodSwgRmViIDIwLCAyMDI1
IGF0IDA2OjIyOjUzUE0gKzA4MDAsIFdlbmJpbiBZYW8gd3JvdGU6Cj4gPiA+ID4gPiA+IEZyb206
IFFpYW5nIFl1IDxxdWljX3FpYW55dUBxdWljaW5jLmNvbT4KPiA+ID4gPiA+ID4gCj4gPiA+ID4g
PiA+IFNvbWUgUUNPTSBQQ0llIFBIWXMgc3VwcG9ydCBub19jc3IgcmVzZXQuIFVubGlrZSBCQ1Ig
cmVzZXQgd2hpY2ggcmVzZXRzIHRoZQo+ID4gPiA+ID4gPiB3aG9sZSBQSFkgKGhhcmR3YXJlIGFu
ZCByZWdpc3RlciksIG5vX2NzciByZXNldCBvbmx5IHJlc2V0cyBQSFkgaGFyZHdhcmUKPiA+ID4g
PiA+ID4gYnV0IHJldGFpbnMgcmVnaXN0ZXIgdmFsdWVzLCB3aGljaCBtZWFucyBQSFkgc2V0dGlu
ZyBjYW4gYmUgc2tpcHBlZCBkdXJpbmcKPiA+ID4gPiA+ID4gUEhZIGluaXQgaWYgUENJZSBsaW5r
IGlzIGVuYWJsZWQgaW4gYm9vbHRsb2FkZXIgYW5kIG9ubHkgbm9fY3NyIGlzIHRvZ2dsZWQKPiA+
ID4gPiA+ID4gYWZ0ZXIgdGhhdC4KPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IEhlbmNlLCBkZXRl
cm1pbmUgd2hldGhlciB0aGUgUEhZIGhhcyBiZWVuIGVuYWJsZWQgaW4gYm9vdGxvYWRlciBieQo+
ID4gPiA+ID4gPiB2ZXJpZnlpbmcgUVBIWV9TVEFSVF9DVFJMIHJlZ2lzdGVyLiBJZiBpdCdzIHBy
b2dyYW1tZWQgYW5kIG5vX2NzciByZXNldCBpcwo+ID4gPiA+ID4gPiBhdmFpbGFibGUsIHNraXAg
QkNSIHJlc2V0IGFuZCBQSFkgcmVnaXN0ZXIgc2V0dGluZyB0byBlc3RhYmxpc2ggdGhlIFBDSWUK
PiA+ID4gPiA+ID4gbGluayB3aXRoIGJvb3Rsb2FkZXIgLSBwcm9ncmFtbWVkIFBIWSBzZXR0aW5n
cy4KPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IFFpYW5nIFl1IDxxdWlj
X3FpYW55dUBxdWljaW5jLmNvbT4KPiA+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogV2VuYmluIFlh
byA8cXVpY193ZW5ieWFvQHF1aWNpbmMuY29tPgo+ID4gPiA+ID4gU29tZSBuaXRwaWNrcyBiZWxv
dy4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiAtLS0KPiA+ID4gWy4uLl0KPiA+ID4gCj4gPiA+ID4g
PiA+ICvCoMKgwqDCoCAqIEluIHRoaXMgd2F5LCBubyBtYXR0ZXIgd2hldGhlciB0aGUgUEhZIHNl
dHRpbmdzIHdlcmUgaW5pdGlhbGx5Cj4gPiA+ID4gPiA+ICvCoMKgwqDCoCAqIHByb2dyYW1tZWQg
YnkgYm9vdGxvYWRlciBvciBQSFkgZHJpdmVyIGl0c2VsZiwgd2UgY2FuIHJldXNlIHRoZW0KPiA+
ID4gPiA+IEl0IGlzIHJlYWxseSBwb3NzaWJsZSB0byBoYXZlIGJvb3Rsb2FkZXIgbm90IHByb2dy
YW1taW5nIHRoZSBpbml0IHNlcXVlbmNlIGZvcgo+ID4gPiA+ID4gbm9fY3NyIHJlc2V0IHBsYXRm
b3Jtcz8gVGhlIGNvbW1lbnQgc291bmRzIGxpa2UgaXQgaXMgcG9zc2libGUuIEJ1dCBJIGhlYXJk
IHRoZQo+ID4gPiA+ID4gb3Bwb3NpdGUuCj4gPiA+ID4gUENJZTMgb24gWDFFODAxMDAgUUNQIGlz
IGRpc2FibGVkIGJ5IGRlZmF1bHQgaW4gVUVGSS4gV2UgbmVlZCB0byBlbmFibGUgaXQKPiA+ID4g
PiBtYW51YWxseSBpbiBVRUZJIHNoZWxsIGlmIHdlIHdhbnQuCj4gPiA+IElJVUMgdGhpcyB3aWxs
IG5vdCBiZSBhIGNvbmNlcm4gZ29pbmcgZm9yd2FyZCwgYW5kIHRoaXMgaXMgYSBzcGVjaWFsIGNh
c2UKPiA+ID4gCj4gPiBJJ20gd29uZGVyaW5nIGhvdyBtYW55ICpzcGVjaWFsKiBjYXNlcyB3ZSBt
YXkgaGF2ZSB0byBkZWFsIHdpdGggZ29pbmcgZm9yd2FyZC4KPiA+IEFueWhvdywgSSB3b3VsZCBw
cm9wb3NlIHRvIGF0bGVhc3QgdGhyb3cgYW4gZXJyb3IgYW5kIGZhaWwgcHJvYmUoKSBpZjoKPiA+
IAo+ID4gKiB0aGUgcGxhdGZvcm0gaGFzIG5vX2NzciByZXNldCBBTkQKPiA+ICogYm9vdGxvYWRl
ciBoYXMgbm90IGluaXRpYWxpemVkIHRoZSBQSFkgQU5ECj4gPiAqIHRoZXJlIGFyZSBubyBpbml0
IHNlcXVlbmNlcyBpbiB0aGUga2VybmVsCj4gPiAKPiA+IC0gTWFuaQo+IAo+IEhtbW0sIHJlZ2Fy
ZGxlc3Mgb2Ygd2hldGhlciBpdCdzIGEgc3BlY2lhbCBjYXNlLCB3ZSBjYW4ndCBhc3N1bWUgdGhh
dCBVRUZJCj4gd2lsbCBlbmFibGUgdGhlIFBIWSBzdXBwb3J0aW5nIG5vX2NzciByZXNldCBvbiBh
bGwgcGxhdGZvcm1zLiBJdCdzIGEgYml0Cj4gcmlza3kuIElmIHdlIG1ha2Ugc3VjaCBhbiBhc3N1
bXB0aW9uLCB3ZSBhbHNvIHdvbid0IG5lZWQgdG8gY2hlY2sgd2hldGhlcgo+IHRoZSBQSFkgaXMg
ZW5hYmxlZCBieSBVRUZJIGR1cmluZyBwb3dlcmluZyBvbi4gV2UganVzdCBuZWVkIHRvIGNoZWNr
Cj4gd2hldGhlciBub19jc3IgcmVzZXQgaXMgYXZhaWxhYmxlLgo+IAoKSSBhbSBub3Qgc3VwcG9y
dGl2ZSBvZiB0aGlzIGFzc3VtcHRpb24gdG8gYmUgY2xlYXIuIFdoaWxlIEkgYW0gT0sgd2l0aCBy
ZWx5aW5nCm9uIG5vX2NzciByZXNldCBhbmQgYm9vdGxvYWRlciBwcm9ncmFtbWluZyB0aGUgUEhZ
LCB3ZSBzaG91bGQgYWxzbyBtYWtlIHN1cmUgdG8KY2F0Y2ggaWYgdGhlIFBIWSBkb2Vzbid0IGlu
aXRpYWxpemUgaXQuIE90aGVyd2lzZSwgdGhlIGRyaXZlciB3b3VsZCBhc3N1bWUgdGhhdAp0aGUg
UEhZIGlzIHdvcmtpbmcsIGJ1dCB0aGUgdXNlcnMgd29uJ3Qgc2VlIGFueSBQQ0llIGRldmljZXMu
Cgo+IEJ1dCBpdCBtYWtlcyBzZW5zZSB0byBjaGVjayB0aGUgZXhzaXRlbmNlIG9mIFBIWSBzZW5x
dWVuY2UuIEhvdyBhYm91dAo+IGFkZGluZyB0aGUgY2hlY2sgaW4gcW1wX3BjaWVfaW5pdCwgaWYg
YSBQSFkgc3VwcG9ydHMgbm9fY3NyIHJlc2V0IGFuZCBpc24ndAo+IGluaXRpYWxpemVkIGluIFVF
RkkgYW5kIHRoZXJlIGlzIG5vIGNmZy0+dGJscywgcmV0dXJuIGVycm9yIGFuZCBwcmludCBzb21l
Cj4gZXJyb3IgbG9nIHNvIHRoYXQgdGhlIFBDSWUgY29udHJvbGxlciB3aWxsIGZhaWwgdG8gcHJv
YmUuCj4gCgpTb3VuZHMgZ29vZCB0byBtZS4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+Cv
jeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
