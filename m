Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DC3FC4167B
	for <linux-phy@archiver.kernel.org>; Wed,  6 Dec 2023 13:08:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HmYzog8N7uJH+yhU18tjgO47irogjMSAjE5dXBMe7J8=; b=AdEKYdAbYoMfCr
	HyGi9RVOaFPMcFfoVqh5gl+TBE3YFlJZsTtE+MofWKyAePh2DYFMj+0KBTjqfrCISq8x/8/7jnHnO
	OHkDecIAsYpQg6sFcIUBef1R4f2mzatVeplQwlzUnwdSmEvpk7xSh84gl814ruvO5FSQTAkgoc17O
	uQOih52YJoSvgXY9keNU/NmTPiLkQl6kq684BAkPYAqCpjDFDj7Xg0lRNT0Xu+qad7R4QmIT4mnpk
	eEcHzcLSHIZB8bmDKTfeomm3cKNiX1Fv/wVQHjtw3YeSo6brayN+1I2vpKU4SGO5Th1ox+xD0t8k1
	iiHwzSeaIKtTYERpoWYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rArdD-00AMEz-2m;
	Wed, 06 Dec 2023 13:08:03 +0000
Received: from mail-qv1-xf2b.google.com ([2607:f8b0:4864:20::f2b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rArdB-00AMEJ-2E
	for linux-phy@lists.infradead.org;
	Wed, 06 Dec 2023 13:08:03 +0000
Received: by mail-qv1-xf2b.google.com with SMTP id 6a1803df08f44-67ac4fc7217so21724276d6.0
        for <linux-phy@lists.infradead.org>; Wed, 06 Dec 2023 05:07:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701868079; x=1702472879; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gQpMmP2wZ3s7+6OFWhnGzvX5dkNxaHbZY8w8mGlHd4A=;
        b=f6S/ImRmYEAeQEHaHYJgeow6jy70tRtIfEAKPD9IMVF3HUFUWlH+TLc9GLGr0thJN7
         +Yio6u64HY7uHyKKfFpnJahJNx7XRsNa50USMmA/Sg/73MnYxJr9r3HR7puj0fWYuqLN
         1Pc0cQ6MwlHw8F+vj0zzLQqJQh7pukMnGPjA4UOiHJQvMELIYvDkPYbtvPAZQ2Tj2byM
         t9Dr0ycTDCZJgPHlwyArj3gJR/x2VKDj97LTCbIEoxsdG2qaSw2oYKcgG0pw26BpsL/3
         JY8vkfGf1wZrwH8jAUYF2d1Nxot1CrjdK7P5jLu2BUREfuG+eLyhnehVye1R7R6jOCna
         32yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701868079; x=1702472879;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gQpMmP2wZ3s7+6OFWhnGzvX5dkNxaHbZY8w8mGlHd4A=;
        b=Dg4Igyq4oSuobdQFgNDwbPP/BOvSNgS4yRE68LbU0ZaUgCWUFXYYULmDPZeHNHgi7h
         I5ZA6jYrOdkXTNVsJqHQtPStLgQXsubY9fqKiYZQhgKwFo4+jidcJo30tn7/kU3ja/n5
         3njVqp9MNAlG7ar62OyX0VkHOyMXW2ENuNk5xbiSCdoASsxDA4oeCI7Sn/dgh3+UlJtV
         mUfs3iCd/nBeVRoVdATIGScsMe4R105oZUbK8bz2apvexdiGcM4vUsIQo80/Kl7cQMAz
         XJeRB2SlrKT4V53qsuI9rXPBnCxaG9kGqFTDGpSZIfqfzX7kumoF6n1UN91brory/FLf
         zNNw==
X-Gm-Message-State: AOJu0Yzm+fSJY9FVJxEVncBZTTpduW27D3p5AbUobP27nwjCi5Btlp7e
	2COzHw0ggFZnSWSSmbMTnDt1
X-Google-Smtp-Source: AGHT+IGMvRlyL7C2KEwGemUA9/VVD3S4C+nqnZP0ubycEacEFHKerwgVJe6trkCFC+NxpJq1nwVcHg==
X-Received: by 2002:a05:6214:d8d:b0:67a:ad52:1f9f with SMTP id e13-20020a0562140d8d00b0067aad521f9fmr862119qve.67.1701868078903;
        Wed, 06 Dec 2023 05:07:58 -0800 (PST)
Received: from thinkpad ([117.202.188.104])
        by smtp.gmail.com with ESMTPSA id y15-20020a0c8ecf000000b0067ac2490d95sm2832957qvb.136.2023.12.06.05.07.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Dec 2023 05:07:57 -0800 (PST)
Date: Wed, 6 Dec 2023 18:37:46 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Krishna Chaitanya Chundru <quic_krichai@quicinc.com>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, quic_vbadigan@quicinc.com,
	quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com,
	quic_skananth@quicinc.com, quic_vpernami@quicinc.com,
	quic_parass@quicinc.com
Subject: Re: [PATCH v3 1/3] dt-bindings: phy: qcom,qmp: Add PCIe
 qcom,refclk-always-on property
Message-ID: <20231206130746.GC12802@thinkpad>
References: <20231127-refclk_always_on-v3-1-26d969fa8f1d@quicinc.com>
 <78815f1b-7390-40de-8afd-ac71806f4051@linaro.org>
 <24fae40a-453b-b14c-923f-88758a246aa7@quicinc.com>
 <20231201060716.GJ4009@thinkpad>
 <166d307e-7d1b-48b5-90db-9b6df01d87c2@linaro.org>
 <20231201111033.GL4009@thinkpad>
 <f844cd1e-7e4f-4836-bc9a-2e1ed13f064f@linaro.org>
 <20231201123054.GM4009@thinkpad>
 <3a7376aa-18a2-41cb-a4c9-680e735ce75b@linaro.org>
 <c66a93fb-2729-4a86-a2db-f4692f6d0857@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c66a93fb-2729-4a86-a2db-f4692f6d0857@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231206_050801_735776_539D65C1 
X-CRM114-Status: GOOD (  19.23  )
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

T24gRnJpLCBEZWMgMDEsIDIwMjMgYXQgMTA6Mjk6MTFQTSArMDEwMCwgS29ucmFkIER5YmNpbyB3
cm90ZToKPiBPbiAxLjEyLjIwMjMgMTQ6MjUsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4g
PiBPbiAwMS8xMi8yMDIzIDEzOjMwLCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4gPj4+
IFdoYXQgSSBzYWlkIGJlZm9yZToKPiA+Pj4gIkFnYWluLCB0aGlyZCB0aW1lIChvbmNlIGZyb20g
Qmpvcm4sIG9uY2UgZnJvbSBEbWl0cnkpLCByZXBocmFzZQo+ID4+PiBwcm9wZXJ0eSBuYW1lIGFu
ZCBkZXNjcmlwdGlvbiB0byBkZXNjcmliZSB0aGUgaGFyZHdhcmUgaXNzdWUuIEkgc2VlCj4gPj4+
IGRlc2NyaXB0aW9uIGltcHJvdmVkLCBidXQgbm90IHRoZSBwcm9wZXJ0eSBuYW1lLiBBZ2FpbiBp
biB0aGUgZW5kIG9mCj4gPj4+IGRlc2NyaXB0aW9uIHlvdSBzYXkgd2hhdCBMaW51eCBzaG91bGQg
ZG8uIEJpbmRpbmdzIGRvIG5vdCBkZXNjcmliZSBMaW51eAo+ID4+PiBPUy4iCj4gPj4+Cj4gPj4K
PiA+PiBZb3UgZGlkbid0IGFuc3dlciBteSBxdWVzdGlvbjoKPiA+Pgo+ID4+ICJJIHNlZSBhIHBs
ZW50eSBvZiBwcm9wZXJ0aWVzIHNpbWlsYXIgdG8gdGhpcyBvbmUgaW5zdHJ1Y3RpbmcgdGhlIE9T
IHRvIGtlZXAgc29tZQo+ID4+IHJlc291cmNlIE9OIHRvIHdvcmthcm91bmQgaGFyZHdhcmUgaXNz
dWVzLiBTbyB0aGV5IGFyZSBhbGwgd3Jvbmc/Igo+ID4gCj4gPiBUaGV5IGFyZSBub3QgdGhlIGJl
c3QsIGJ1dCBpdCBhbGwgZGVwZW5kcyBvbiB0aGUgaW5kaXZpZHVhbCBjYXNlLgo+ID4gCj4gPj4K
PiA+PiBJZiB5b3Ugc2F5IHRoZXkgYXJlIHdyb25nLCB3aHkgYXJlIHRoZXkgYXBwcm92ZWQgaW4g
dGhlIGZpcnN0IHBsYWNlPwo+ID4gQmVjYXVzZSB3ZSBkb24ndCBoYXZlIHRpbWUgdG8ga2VlcCBk
aWdnaW5nIHdoYXQgdGhlIGRyaXZlciBpcyBkb2luZyBhbmQKPiA+IHdoYXQgaXMgY2xhaW1lZCBp
biBEVC4gU29tZSBwZW9wbGUgZG9uJ3QgZXZlbiBDQyB1cyBvbiB0aGUgZHJpdmVyLgo+IE5vdCBz
dXJlIGlmIEkgYXNrZWQgdGhpcyBiZWZvcmUsIGJ1dCBjYW4gdGhpcyBub3QgYmUgc2V0IGluIHRo
ZSBjb25maWcKPiBzdHJ1Y3QgaW5zaWRlIHRoZSBkcml2ZXI/Cj4gCgpUaGlzIGNhbm5vdCBiZSB0
aGUgZGVmYXVsdCBjb25maWcgZm9yIGFueSBwbGF0Zm9ybSBhcyBrZWVwaW5nIHJlZmNsayBhbHdh
eXMgb24Kd2lsbCBoYXZlIHNvbWUgcG93ZXIgcGVuYWx0eS4gT25seSBpZiB0aGUgaGFyZHdhcmUg
KEVQIG9yIGJvYXJkIGRlc2lnbikgaGFzIGFueQppc3N1ZSwgd2UgY2FuIHR1cm4gb24gdGhpcyBv
cHRpb24uCgotIE1hbmkKCj4gS29ucmFkCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+N
IOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
