Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7EC7AC282EC
	for <linux-phy@archiver.kernel.org>; Fri, 14 Mar 2025 14:53:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WWJVIsLzd1JedIyI3f1V3qpDVhZo/Ho+NGeUxNQc8MU=; b=AMeUle0LXkrrko
	yyKP8GsIKj55zZKL3lEx3Rv/kPQTN0r9EVG15xmEFrN1G03WpdWby+IVd3yHbgKRKRUG7YWEHrbQS
	IQK9nouskURhEjJeGJSd8XvY2n0PFpS6/CPxb9kZ2h45aq3+s2P49ezD+ChGs0c6MagQ3y8NoVs+k
	Mj3CloNMEMp0G/NBh4NyTD5ZG/vWUuTm0MkbWLqfPCEsnq8tRMVGlHkvn2WC7loMLlYNdyH1gIlLa
	bCOpNzkpOq+dyyAh3vlJ/g/2pF/nmP4HXh/HaAgkrvTO/7Po5XYuNuWvthyrhqpC3Vhu2aNslANm0
	03kT9BgRpqOSC+qqayaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tt6PW-0000000ESgf-0vVD;
	Fri, 14 Mar 2025 14:53:18 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tt6Mz-0000000ESEw-2a49
	for linux-phy@lists.infradead.org;
	Fri, 14 Mar 2025 14:50:42 +0000
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-22401f4d35aso43860785ad.2
        for <linux-phy@lists.infradead.org>; Fri, 14 Mar 2025 07:50:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741963841; x=1742568641; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7OrItOGYSNYN0heMZXm9O2Sd5YIsOC/lcspBLUrGTOo=;
        b=qqiICb7GoP3QdTTVDXlbgD3bL2h/0ggVi64SYPa3YD6JeFiU+AWrgitrtm+wL5+8DJ
         2V+LK9gcK2qnXMQqRoqvwrrcJHL6XFE1PTcrHB4G7s7X+uOacORZM7CCWKVbS+PxxWMb
         dLyIzbWpxICfzsrYgHdnlgSLJW8fpJtDR+ZXZzT6AzjlppVPCQcN4+MR+Nm6CIB0xoyO
         S9fTOgBAYP5qfQ0tFzV8wDN69B7wDrFTxJdLOrsUng3l+mfPTTB5zCoMSy9Vf2Kc5kYK
         DSlslXujBdQCuZi+ek4uavMU1nPmCKALwfcN6GMjODKyq3ushxxLJVTPzELuSFFNbYZ+
         gB/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741963841; x=1742568641;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7OrItOGYSNYN0heMZXm9O2Sd5YIsOC/lcspBLUrGTOo=;
        b=llwbNqdU4fTmf6Hq501IhYS7GC256+sDIfSxW9lqGdsSf7KYjOr2f+Xw91IFhaHSrQ
         lHG00bibI/7jl9/BRNu+MLtH0q8G45X15Rlzl+U+z7/40OOFyBNlh3QchOx31UylHK2d
         HPQtrRO8efyEQ+bWe3ThUmhHfTVgM55cYQSh+w8M8ZQLAP807kttEJevfEXtvGtAe7Kl
         QXQdhTQVL0Q+X9ejOzD3zZ/3KSMzS3a4niTZU7QYG/LhNt2y2RhDxOaTfuJa4+6ajEAq
         JjhLZvrRdUr34Ja2dqdW/qUsoFDZrFBNxiv3lxkuXk0OG4wvlY7Ml3b9m5aj+E/n07IN
         Kohg==
X-Forwarded-Encrypted: i=1; AJvYcCUFznZPv9MyK5WUiH36/eulbugoVTswxhiyC2xeRqIuGthyi/Qcb9dBW8haH82bd5uPq7788qDCiDc=@lists.infradead.org
X-Gm-Message-State: AOJu0YyNi25pw4AOkBJJN0mcvVL65xWpZXTUjfqtZ81gPKo4i5rEDz9Z
	l9L+fdQGvHoIqeI4es15QZq+z/mPOKg/eufIXf5U8hd3LdNzZLANnZZ2Da3Gxg==
X-Gm-Gg: ASbGnctaiQ5F1Wi9u9+KVYKushtIXzXo+acryIZPxH3XI/Ha202FnqyWBzCk/nELYrQ
	vvPq2mq5Qu0Q5IImgrityT2ejyhIn2WNhHIvDTB6jeoEwAdbYibaKi8h8bT2kNFlbVQSiKZPSsz
	Wn61SeokhDyohUcAqNnfFtLLcaob+Nm0MkGeS3GpZskLRDIUSvOl2/opWCB+Gz5ZJbvEJuliXhh
	xVL9yFaBilxST0ymBQyHN8x7Fzr6DqIMeTiJiuLMwRBNccXuB08bAGghCtLbBhA7fb+sqXEjt9x
	iFL0uFwZNQW+WosUGXROrBrdM3MGZoZpVBJVttzl6nEiWI3cWgcKedf3
X-Google-Smtp-Source: AGHT+IHmY97xSOZQboXnoTB4b5k6xHHuACGBmQ9IazWwAK8CRME94eJLpOCS80qaR25WQuoGvR2UGA==
X-Received: by 2002:a17:903:98b:b0:21f:4c8b:c4de with SMTP id d9443c01a7336-225e0aeeabemr39677735ad.42.1741963840675;
        Fri, 14 Mar 2025 07:50:40 -0700 (PDT)
Received: from thinkpad ([120.56.195.144])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-225c6ba734esm29357815ad.141.2025.03.14.07.50.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Mar 2025 07:50:40 -0700 (PDT)
Date: Fri, 14 Mar 2025 20:20:35 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Wenbin Yao <quic_wenbyao@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, p.zabel@pengutronix.de,
	dmitry.baryshkov@linaro.org, abel.vesa@linaro.org,
	quic_qianyu@quicinc.com, neil.armstrong@linaro.org,
	quic_devipriy@quicinc.com, konrad.dybcio@oss.qualcomm.com,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 2/2] phy: qcom: qmp-pcie: Add PHY register retention
 support
Message-ID: <20250314145035.h3nybvvko3ew37wl@thinkpad>
References: <20250226103600.1923047-1-quic_wenbyao@quicinc.com>
 <20250226103600.1923047-3-quic_wenbyao@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250226103600.1923047-3-quic_wenbyao@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250314_075041_652821_7C396779 
X-CRM114-Status: GOOD (  20.58  )
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

T24gV2VkLCBGZWIgMjYsIDIwMjUgYXQgMDY6MzY6MDBQTSArMDgwMCwgV2VuYmluIFlhbyB3cm90
ZToKPiBGcm9tOiBRaWFuZyBZdSA8cXVpY19xaWFueXVAcXVpY2luYy5jb20+Cj4gCj4gU29tZSBR
Q09NIFBDSWUgUEhZcyBzdXBwb3J0IG5vX2NzciByZXNldC4gVW5saWtlIEJDUiByZXNldCB3aGlj
aCByZXNldHMgdGhlCj4gd2hvbGUgUEhZIChoYXJkd2FyZSBhbmQgcmVnaXN0ZXIpLCBub19jc3Ig
cmVzZXQgb25seSByZXNldHMgUEhZIGhhcmR3YXJlCj4gYnV0IHJldGFpbnMgcmVnaXN0ZXIgdmFs
dWVzLCB3aGljaCBtZWFucyBQSFkgc2V0dGluZyBjYW4gYmUgc2tpcHBlZCBkdXJpbmcKPiBQSFkg
aW5pdCBpZiBQQ0llIGxpbmsgaXMgZW5hYmxlZCBpbiBib29sdGxvYWRlciBhbmQgb25seSBub19j
c3IgaXMgdG9nZ2xlZAo+IGFmdGVyIHRoYXQuCj4gCj4gSGVuY2UsIGRldGVybWluZSB3aGV0aGVy
IHRoZSBQSFkgaGFzIGJlZW4gZW5hYmxlZCBpbiBib290bG9hZGVyIGJ5Cj4gdmVyaWZ5aW5nIFFQ
SFlfU1RBUlRfQ1RSTCByZWdpc3Rlci4gSWYgaXQncyBwcm9ncmFtbWVkIGFuZCBub19jc3IgcmVz
ZXQgaXMKPiBhdmFpbGFibGUsIHNraXAgQkNSIHJlc2V0IGFuZCBQSFkgcmVnaXN0ZXIgc2V0dGlu
ZyB0byBlc3RhYmxpc2ggdGhlIFBDSWUKPiBsaW5rIHdpdGggYm9vdGxvYWRlciAtIHByb2dyYW1t
ZWQgUEhZIHNldHRpbmdzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFFpYW5nIFl1IDxxdWljX3FpYW55
dUBxdWljaW5jLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBXZW5iaW4gWWFvIDxxdWljX3dlbmJ5YW9A
cXVpY2luYy5jb20+CgpSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFu
bmFuLnNhZGhhc2l2YW1AbGluYXJvLm9yZz4KCk9uZSBuaXQgYmVsb3cuCgo+IC0tLQo+ICBkcml2
ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtcGNpZS5jIHwgNjkgKysrKysrKysrKysrKysr
KysrKystLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA1OSBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlv
bnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1w
LXBjaWUuYyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY2llLmMKPiBpbmRl
eCAyMTkyNjYxMjVjZjIuLmMzNjQyZDE4MDdlNCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9x
dWFsY29tbS9waHktcWNvbS1xbXAtcGNpZS5jCj4gKysrIGIvZHJpdmVycy9waHkvcXVhbGNvbW0v
cGh5LXFjb20tcW1wLXBjaWUuYwo+IEBAIC0yODA1LDYgKzI4MDUsNyBAQCBzdHJ1Y3QgcW1wX3Bj
aWUgewo+ICAKPiAgCWNvbnN0IHN0cnVjdCBxbXBfcGh5X2NmZyAqY2ZnOwo+ICAJYm9vbCB0Y3Ny
XzRsbl9jb25maWc7Cj4gKwlib29sIHNraXBfaW5pdDsKPiAgCj4gIAl2b2lkIF9faW9tZW0gKnNl
cmRlczsKPiAgCXZvaWQgX19pb21lbSAqcGNzOwo+IEBAIC0zOTc2LDE4ICszOTc3LDM4IEBAIHN0
YXRpYyBpbnQgcW1wX3BjaWVfaW5pdChzdHJ1Y3QgcGh5ICpwaHkpCj4gIHsKPiAgCXN0cnVjdCBx
bXBfcGNpZSAqcW1wID0gcGh5X2dldF9kcnZkYXRhKHBoeSk7Cj4gIAljb25zdCBzdHJ1Y3QgcW1w
X3BoeV9jZmcgKmNmZyA9IHFtcC0+Y2ZnOwo+ICsJdm9pZCBfX2lvbWVtICpwY3MgPSBxbXAtPnBj
czsKPiArCWJvb2wgcGh5X2luaXRpYWxpemVkID0gISEocmVhZGwocGNzICsgY2ZnLT5yZWdzW1FQ
SFlfU1RBUlRfQ1RSTF0pKTsKPiAgCWludCByZXQ7Cj4gIAo+ICsJcW1wLT5za2lwX2luaXQgPSBx
bXAtPm5vY3NyX3Jlc2V0ICYmIHBoeV9pbml0aWFsaXplZDsKPiArCS8qCj4gKwkgKiBXZSBuZWVk
IHRvIGNoZWNrIHRoZSBleGlzdGVuY2Ugb2YgaW5pdCBzZXF1ZW5jZXMgaW4gdHdvIGNhc2VzOgo+
ICsJICogMS4gVGhlIFBIWSBkb2Vzbid0IHN1cHBvcnQgbm9fY3NyIHJlc2V0Lgo+ICsJICogMi4g
VGhlIFBIWSBzdXBwb3J0cyBub19jc3IgcmVzZXQgYnV0IGlzbid0IGluaXRpYWxpemVkIGJ5IGJv
b3Rsb2FkZXIuCj4gKwkgKiBBcyB3ZSBjYW4ndCBza2lwIGluaXQgaW4gdGhlc2UgdHdvIGNhc2Vz
Lgo+ICsJICovCj4gKwlpZiAoIXFtcC0+c2tpcF9pbml0ICYmICFjZmctPnRibHMuc2VyZGVzX251
bSkgewo+ICsJCWRldl9lcnIocW1wLT5kZXYsICJubyBpbml0IHNlcXVlbmNlcyBhcmUgYXZhaWxh
YmxlXG4iKTsKCiJJbml0IHNlcXVlbmNlIG5vdCBhdmFpbGFibGVcbiIKCj4gKwkJcmV0dXJuIC1F
SU5WQUw7CgotRU5PREFUQQoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+N
IOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
