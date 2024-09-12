Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33A5CEED60D
	for <linux-phy@archiver.kernel.org>; Thu, 12 Sep 2024 14:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m64hDHN/Axh7KsqIsXkWay72I1s6aonO2E653W639Cs=; b=NHaDOsa/0zNrH6
	OWcC16ojEus03DCSQWtNg3z0EaAKaLRLedqGJuh+Wz/kKPYH5fIvo1T6EL07QHGTWkTCs+yWCfA37
	mk40exN9G8VSw437+G6AgwUP0tCls/ia4eVWf6RU0z9FPCei6iW3bgkQ0qRdtiI95dWDLoBQ5hzPJ
	8iElzA1iQH/kouSjMna8dH8lf8l0PhdpnpRx+hyGCsxqdkz9u+F/o9AyfziB938EhGCw0Go1oa1c4
	Kghpe0fDrsNkebVC0NNUkASxZpmhVutWYXV478qTWjFOkCyBena344wK7q7+J2aOynXURgY1W/pea
	MymWZtxLPWkdeEU8gstA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sol70-0000000DQDm-3Or4;
	Thu, 12 Sep 2024 14:47:58 +0000
Received: from mail-oa1-x2c.google.com ([2001:4860:4864:20::2c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sol4A-0000000DPKp-0tZx
	for linux-phy@lists.infradead.org;
	Thu, 12 Sep 2024 14:45:04 +0000
Received: by mail-oa1-x2c.google.com with SMTP id 586e51a60fabf-2689e7a941fso535540fac.3
        for <linux-phy@lists.infradead.org>; Thu, 12 Sep 2024 07:45:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726152300; x=1726757100; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Us8nS3NBHkRNjHO7PeWm6594BLpqNuKjFcNB+sFes+A=;
        b=q78YSr9nvgMHm+OF/CXazbQzqoZr4TZ62jrvVpn3Z077RQ14PiwaLIOK3jGU0tf3J6
         EF4tGpXDxrV4YrkaEkmu2AFRXzmeQ9c1g/LcTn0vn8hFXjKiIeZATM9wIqg1RH26ctxX
         KZCjWknpootsR1hqd5QfulSq3G+g75vP1X/b92IHqcYdTVZBet53+odjxIshf3g/dDIn
         jwOtW2BTblFMOZIcZ59mYEo3rY5d1dqFzjhhUizlUFN95N12aUVLwRLlKaaBsGpHn33k
         /ioA4Im98VeNTVsUx5UPA/fAoXL8qqvDdbuD9JQ5Lrrai7fCfk5Y4h8zL8FIpsnc9o5C
         RrrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726152300; x=1726757100;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Us8nS3NBHkRNjHO7PeWm6594BLpqNuKjFcNB+sFes+A=;
        b=IjBmedH0x5H7pFuBYCMUmDCn5hbpzMz7uUgHfKG+Zwq3SQE++tY0FUmUs+RDl4jR+2
         vquN1Utwuk+PbRn7tE0kXbnyTTGIQEnC8ZrgNOKRAFeDRN6Bt2ZTuNV2gTuiDxkxwYuB
         iGLJHIZHZSRNM1MsrYc7Pfkq2dHbbE9zXM9Ta0c63OmUytmdKfwlswkvC6DrDWX75Ep9
         0RUqXCmr5CznbbTApDV/NlsDmTTbd6xhrrfWOgcKbRlp4tK2eL5alKkDoZBMVfvwIiOO
         hmySljZOPAdhH++erbkjveV0qXdMV8u2AXKzXIqLUE2o9BamMH8zv+Fk3YZMyWisEqCt
         krAg==
X-Forwarded-Encrypted: i=1; AJvYcCXMk0Zm6Dnl9YNg7nngr1MlmCtAwdVY22Y+aw8RqF+tYSCdetIGwTjr78gn1R8ZVnEywlusgoORU7w=@lists.infradead.org
X-Gm-Message-State: AOJu0YzjpLFELzghJ+msEmYRy8L2Mf18Pp4Zihn8RJP5E3YTFhwV0f9L
	wQfLhife79e93FTXZhTRU2gb8uyOP5kuKmWhVam7yrhiM38RibvABe//9Zo6iw==
X-Google-Smtp-Source: AGHT+IELriO1F3RjFu7Nlmk0OH8Yy7rcsbs7jfdrPadTuniwAi50BrFet+dLaCQCkStjWf6ncGBXOA==
X-Received: by 2002:a05:6871:3319:b0:277:ff5a:db0f with SMTP id 586e51a60fabf-27c3f2cfe64mr2186877fac.27.1726152300341;
        Thu, 12 Sep 2024 07:45:00 -0700 (PDT)
Received: from thinkpad ([120.60.79.18])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71908fe4e8asm4673021b3a.79.2024.09.12.07.44.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Sep 2024 07:45:00 -0700 (PDT)
Date: Thu, 12 Sep 2024 20:14:39 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Qiang Yu <quic_qianyu@quicinc.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, vkoul@kernel.org,
	kishon@kernel.org, robh@kernel.org, andersson@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com,
	sboyd@kernel.org, abel.vesa@linaro.org, quic_msarkar@quicinc.com,
	quic_devipriy@quicinc.com, kw@linux.com, lpieralisi@kernel.org,
	neil.armstrong@linaro.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org
Subject: Re: [PATCH 8/8] PCI: qcom: Add support to PCIe slot power supplies
Message-ID: <20240912144439.fnne4x7qvggveve2@thinkpad>
References: <20240827063631.3932971-1-quic_qianyu@quicinc.com>
 <20240827063631.3932971-9-quic_qianyu@quicinc.com>
 <CAA8EJpq5KergZ8czg4F=EYMLANoOeBsiSVoO-zAgfG0ezQrKCQ@mail.gmail.com>
 <20240827165826.moe6cnemeheos6jn@thinkpad>
 <26f2845f-2e29-4887-9f33-0b5b2a06adb6@quicinc.com>
 <20240911153228.7ajcqicxnu2afhbp@thinkpad>
 <9222ef18-2eef-4ba3-95aa-fae540c06925@quicinc.com>
 <d5468dd2-0f81-4d89-a3bd-a546b2395ca6@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d5468dd2-0f81-4d89-a3bd-a546b2395ca6@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240912_074502_303029_B4F4B4D1 
X-CRM114-Status: GOOD (  24.37  )
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

T24gVGh1LCBTZXAgMTIsIDIwMjQgYXQgMDQ6MTU6NTZQTSArMDIwMCwgS29ucmFkIER5YmNpbyB3
cm90ZToKPiBPbiAxMi4wOS4yMDI0IDM6MzkgUE0sIFFpYW5nIFl1IHdyb3RlOgo+ID4gCj4gPiBP
biA5LzExLzIwMjQgMTE6MzIgUE0sIE1hbml2YW5uYW4gU2FkaGFzaXZhbSB3cm90ZToKPiA+PiBP
biBXZWQsIFNlcCAxMSwgMjAyNCBhdCAwNDoxNzo0MVBNICswODAwLCBRaWFuZyBZdSB3cm90ZToK
PiA+Pj4gT24gOC8yOC8yMDI0IDEyOjU4IEFNLCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gd3JvdGU6
Cj4gPj4+PiBPbiBUdWUsIEF1ZyAyNywgMjAyNCBhdCAwMjo0NDowOVBNICswMzAwLCBEbWl0cnkg
QmFyeXNoa292IHdyb3RlOgo+ID4+Pj4+IE9uIFR1ZSwgMjcgQXVnIDIwMjQgYXQgMDk6MzYsIFFp
YW5nIFl1IDxxdWljX3FpYW55dUBxdWljaW5jLmNvbT4gd3JvdGU6Cj4gPj4+Pj4+IE9uIHBsYXRm
b3JtIHgxZTgwMTAwIFFDUCwgUENJZTMgaXMgYSBzdGFuZGFyZCB4OCBmb3JtIGZhY3Rvci4gSGVu
Y2UsIGFkZAo+ID4+Pj4+PiBzdXBwb3J0IHRvIHVzZSAzLjN2LCAzLjN2IGF1eCBhbmQgMTJ2IHJl
Z3VsYXRvcnMuCj4gPj4+Pj4gRmlyc3Qgb2YgYWxsLCBJIGRvbid0IHNlZSBjb3JyZXNwb25kaW5n
IGJpbmRpbmdzIGNoYW5nZS4KPiA+Pj4+Pgo+ID4+Pj4+IFNlY29uZCwgdGhlc2Ugc3VwcGxpZXMg
cG93ZXIgdXAgdGhlIHNsb3QsIG5vdCB0aGUgaG9zdCBjb250cm9sbGVyCj4gPj4+Pj4gaXRzZWxm
LiBBcyBzdWNoIHRoZXNlIHN1cHBsaWVzIGRvIG5vdCBiZWxvbmcgdG8gdGhlIGhvc3QgY29udHJv
bGxlcgo+ID4+Pj4+IGVudHJ5LiBQbGVhc2UgY29uc2lkZXIgdXNpbmcgdGhlIHB3cnNlcSBmcmFt
ZXdvcmsgaW5zdGVhZC4KPiA+Pj4+Pgo+ID4+Pj4gSW5kZWVkLiBGb3IgbGVnYWN5IHJlYXNvbnMs
IHNsb3QgcG93ZXIgc3VwcGxpZXMgd2VyZSBwb3B1bGF0ZWQgaW4gdGhlIGhvc3QKPiA+Pj4+IGJy
aWRnZSBub2RlIGl0c2VsZiB1bnRpbCByZWNlbnRseSBSb2Igc3RhcnRlZCBvYmplY3RpbmcgaXQg
WzFdLiBBbmQgaXQgbWFrZXMKPiA+Pj4+IHJlYWwgc2Vuc2UgdG8gcHV0IHRoZXNlIHN1cHBsaWVz
IGluIHRoZSByb290IHBvcnQgbm9kZSBhbmQgaGFuZGxlIHRoZW0gaW4gdGhlCj4gPj4+PiByZWxl
dmFudCBkcml2ZXIuCj4gPj4+Pgo+ID4+Pj4gSSdtIHN0aWxsIGV2YWx1YXRpbmcgd2hldGhlciB0
aGUgaGFuZGxpbmcgc2hvdWxkIGJlIGRvbmUgaW4gdGhlIHBvcnRkcnYgb3IKPiA+Pj4+IHB3cmN0
bCBkcml2ZXIsIGJ1dCBoYXZlbid0IHJlYWNoZWQgdGhlIGNvbmNsdXNpb24uIFB3cmN0bCBzZWVt
cyB0byBiZSB0aGUgaWRlYWwKPiA+Pj4+IGNob2ljZSwgYnV0IEkgc2VlIGEgZmV3IGlzc3VlcyBy
ZWxhdGVkIHRvIGhhbmRsaW5nIHRoZSBPRiBub2RlIGZvciB0aGUgcm9vdAo+ID4+Pj4gcG9ydC4K
PiA+Pj4+Cj4gPj4+PiBIb3BlIEknbGwgY29tZSB0byBhIGNvbmNsdXNpb24gaW4gdGhlIG5leHQg
ZmV3IGRheXMgYW5kIHdpbGwgdXBkYXRlIHRoaXMgdGhyZWFkLgo+ID4+Pj4KPiA+Pj4+IC0gTWFu
aQo+ID4+Pj4KPiA+Pj4+IFsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sLzIwMjQwNjA0
MjM1ODA2LkdBMTkwMzQ5My1yb2JoQGtlcm5lbC5vcmcvCj4gPj4+IEhpIE1hbmksIGRvIHlvdSBo
YXZlIGFueSB1cGRhdGVzPwo+ID4+Pgo+ID4+IEknbSB3b3JraW5nIHdpdGggQmFydG9zeiB0byBh
ZGQgYSBuZXcgcHdyY3RsIGRyaXZlciBmb3Igcm9vdHBvcnRzLiBBbmQgd2UgYXJlCj4gPj4gZGVi
dWdnaW5nIGFuIGlzc3VlIGN1cnJlbnRseS4gVW5mb3J0dW5hdGVseSwgdGhlIHByb2dyZXNzIGlz
IHZlcnkgc2xvdyBhcyBJJ20gb24KPiA+PiB2YWNhdGlvbiBzdGlsbC4KPiA+Pgo+ID4+IFdpbGwg
cG9zdCB0aGUgcGF0Y2hlcyBvbmNlIGl0IGdvdCByZXNvbHZlZC4KPiA+Pgo+ID4+IC0gTWFuaQo+
ID4gT0ssIHRoYW5rcyBmb3IgeW91ciB1cGRhdGUuCj4gCj4gUWlhbmcsIHlvdSBjYW4gc3RpbGwg
cmVzdWJtaXQgdGhlIHJlc3Qgb2YgdGhlIHBhdGNoZXMgd2l0aG91dCBoYXZpbmcKPiB0byB3YWl0
IG9uIHRoYXQgdG8gYmUgcmVzb2x2ZWQKPiAKCkluIHRoYXQgY2FzZSwgdGhlIHNsb3Qgc3VwcGxp
ZXMgc2hvdWxkIGJlIGRlc2NyaWJlZCBpbiB0aGUgUENJZSBicmlkZ2UuCgotIE1hbmkKCj4gS29u
cmFkCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCu
ruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cGh5Cg==
