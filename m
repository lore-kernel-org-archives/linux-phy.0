Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16B7BC4167B
	for <linux-phy@archiver.kernel.org>; Wed,  6 Dec 2023 13:10:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iHnbEMMijBHViq89Js/0pVE1R4fd5R8KL/Lzmwc5IXs=; b=jj4125A3hSJZl4
	y+VMeYiNBF9t0bqpPduzEFNv3fdP1fY+IXoyI8SlGEKwMwnlVyh+ny/2Btw9IvBu8W2Vd8A0FNU1m
	k1cGru61Ne8Tf07W4+KBZ+i86pYzjQXpxh0Pzgi7+DcJJR9fr1+pxCKW5027lF71TTMWHSisijDcA
	u+Apq2QTG4fmSM0h3A3BsfXs1F5Q/uwdfZO7yqKvuNlm312BQ2cVM0pPpaLjee7nR7g8ohXLueRKF
	Ip4v/SaiYVz+e6hNHIrUBP3og2Pxqwv03nBjOaB/lJRjMy+neeRJmXXwMe8KcBbhAZvsyJguMWL64
	RttbHMzr5l9CIrrorJxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rArfU-00AMP0-2c;
	Wed, 06 Dec 2023 13:10:24 +0000
Received: from mail-qv1-xf30.google.com ([2607:f8b0:4864:20::f30])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rArfS-00AMOe-11
	for linux-phy@lists.infradead.org;
	Wed, 06 Dec 2023 13:10:23 +0000
Received: by mail-qv1-xf30.google.com with SMTP id 6a1803df08f44-67ac4fc7217so21737516d6.0
        for <linux-phy@lists.infradead.org>; Wed, 06 Dec 2023 05:10:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701868219; x=1702473019; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Pt/oMfKEoVvZOs+7PtxgU3lL9BlJV64pat4giYOfloo=;
        b=Ua0mpDmq0WqLt2vh0cxex8PQJEwhgXDi5eW6Ym5VLnNStI8bMjFhWSp0+7Yx9Jgosn
         FoZ4RVaERXCdU1CDsbV7CuqupvyOIFTt9ghXu8wgLyjXD6GJCpqZeQoBavHgq34OM02b
         q0Nj2ED9cCW41/wHklyEKWimErIRVZYVktO5X0GRw7TDDtVd0769OBFI2XskzASRtpTN
         BFKjPss78O3iQ+ctAiK6mYPULBiG1rzIE7CGb/6V0PNnUnZAxACf8Il2v+0Qn/9oqcIc
         +j95Ivnnwn3o7B9iI4K2RUJW13Hy21fmxq01iC7oUEXE2LJA2KOjy+uNmzQV0xx4RQir
         3jwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701868219; x=1702473019;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Pt/oMfKEoVvZOs+7PtxgU3lL9BlJV64pat4giYOfloo=;
        b=bzP9dYsFpOjb+jy8z/5YYJy2a6tgrDmOIyPzdUd7JJWACmj9QZoD1oZyin74HD2AyE
         Qr85EoTG5NCRKhZM+41a8Llhf78f6DmaEb5yOOiUsD3PpPHk0iXmRprIBrt4T2OxYuTn
         ca15o7H9yqCiPqGxBufT8C/ut1zqgJH6EUM85SZZ81eE2N6xuIwrsYZSWDm/ZNDViS72
         A+0hfpOqGC6pPeOkDm9yx9MRd6AJcDfn5oub4ecYpRkkrii7vK2Ul04YLeSvisM+OsQ8
         ByloX83dOdJRBCFBuW2d25aSDAh+zA7DpBQ7T/PEwfH9/FQLfdkNPq4HO7FWPYeCynue
         pnDQ==
X-Gm-Message-State: AOJu0YzrMX394Y033TLZRB2VuJ1T6eDXOnDnWI/Y0H+fPGLuyIesd5g4
	UyIz+FUFIXlxEWJLm2roQnKC
X-Google-Smtp-Source: AGHT+IEb4yi9gh7VHo+zZIBCifs1fd4gKseVxyxJ41S1V0cBHCI6vFd8Vt9p32/kxIhAFm7YSoNr0g==
X-Received: by 2002:a05:6214:76a:b0:67a:bbfe:4edf with SMTP id f10-20020a056214076a00b0067abbfe4edfmr868908qvz.30.1701868219103;
        Wed, 06 Dec 2023 05:10:19 -0800 (PST)
Received: from thinkpad ([117.202.188.104])
        by smtp.gmail.com with ESMTPSA id c9-20020a0ce7c9000000b0067a97f6b0c6sm5052738qvo.32.2023.12.06.05.10.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Dec 2023 05:10:18 -0800 (PST)
Date: Wed, 6 Dec 2023 18:40:09 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Krishna Chaitanya Chundru <quic_krichai@quicinc.com>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
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
Message-ID: <20231206131009.GD12802@thinkpad>
References: <20231127-refclk_always_on-v3-0-26d969fa8f1d@quicinc.com>
 <20231127-refclk_always_on-v3-1-26d969fa8f1d@quicinc.com>
 <78815f1b-7390-40de-8afd-ac71806f4051@linaro.org>
 <24fae40a-453b-b14c-923f-88758a246aa7@quicinc.com>
 <20231201060716.GJ4009@thinkpad>
 <166d307e-7d1b-48b5-90db-9b6df01d87c2@linaro.org>
 <20231201111033.GL4009@thinkpad>
 <f844cd1e-7e4f-4836-bc9a-2e1ed13f064f@linaro.org>
 <20231201123054.GM4009@thinkpad>
 <3a7376aa-18a2-41cb-a4c9-680e735ce75b@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3a7376aa-18a2-41cb-a4c9-680e735ce75b@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231206_051022_363255_EEC40528 
X-CRM114-Status: GOOD (  19.35  )
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

T24gRnJpLCBEZWMgMDEsIDIwMjMgYXQgMDI6MjU6NDRQTSArMDEwMCwgS3J6eXN6dG9mIEtvemxv
d3NraSB3cm90ZToKPiBPbiAwMS8xMi8yMDIzIDEzOjMwLCBNYW5pdmFubmFuIFNhZGhhc2l2YW0g
d3JvdGU6Cj4gPj4gV2hhdCBJIHNhaWQgYmVmb3JlOgo+ID4+ICJBZ2FpbiwgdGhpcmQgdGltZSAo
b25jZSBmcm9tIEJqb3JuLCBvbmNlIGZyb20gRG1pdHJ5KSwgcmVwaHJhc2UKPiA+PiBwcm9wZXJ0
eSBuYW1lIGFuZCBkZXNjcmlwdGlvbiB0byBkZXNjcmliZSB0aGUgaGFyZHdhcmUgaXNzdWUuIEkg
c2VlCj4gPj4gZGVzY3JpcHRpb24gaW1wcm92ZWQsIGJ1dCBub3QgdGhlIHByb3BlcnR5IG5hbWUu
IEFnYWluIGluIHRoZSBlbmQgb2YKPiA+PiBkZXNjcmlwdGlvbiB5b3Ugc2F5IHdoYXQgTGludXgg
c2hvdWxkIGRvLiBCaW5kaW5ncyBkbyBub3QgZGVzY3JpYmUgTGludXgKPiA+PiBPUy4iCj4gPj4K
PiA+IAo+ID4gWW91IGRpZG4ndCBhbnN3ZXIgbXkgcXVlc3Rpb246Cj4gPiAKPiA+ICJJIHNlZSBh
IHBsZW50eSBvZiBwcm9wZXJ0aWVzIHNpbWlsYXIgdG8gdGhpcyBvbmUgaW5zdHJ1Y3RpbmcgdGhl
IE9TIHRvIGtlZXAgc29tZQo+ID4gcmVzb3VyY2UgT04gdG8gd29ya2Fyb3VuZCBoYXJkd2FyZSBp
c3N1ZXMuIFNvIHRoZXkgYXJlIGFsbCB3cm9uZz8iCj4gCj4gVGhleSBhcmUgbm90IHRoZSBiZXN0
LCBidXQgaXQgYWxsIGRlcGVuZHMgb24gdGhlIGluZGl2aWR1YWwgY2FzZS4KPiAKPiA+IAo+ID4g
SWYgeW91IHNheSB0aGV5IGFyZSB3cm9uZywgd2h5IGFyZSB0aGV5IGFwcHJvdmVkIGluIHRoZSBm
aXJzdCBwbGFjZT8KPiBCZWNhdXNlIHdlIGRvbid0IGhhdmUgdGltZSB0byBrZWVwIGRpZ2dpbmcg
d2hhdCB0aGUgZHJpdmVyIGlzIGRvaW5nIGFuZAo+IHdoYXQgaXMgY2xhaW1lZCBpbiBEVC4gU29t
ZSBwZW9wbGUgZG9uJ3QgZXZlbiBDQyB1cyBvbiB0aGUgZHJpdmVyLgo+IAoKT0suIEhvdyBhYm91
dCwgInFjb20sYnJva2VuLXJlZmNsayI/IFRoaXMgcmVmbGVjdHMgdGhlIGZhY3QgdGhhdCB0aGUg
ZGVmYXVsdApyZWZjbGsgb3BlcmF0aW9uIGlzIGJyb2tlbiBvbiB0aGlzIHBsYXRmb3JtLCBzbyB0
aGUgT1Mgc2hvdWxkIGJlIHByZXBhcmVkIGZvcgppdCAoYnkga2VlcGluZyBpdCBhbHdheXMgb24p
LgoKLSBNYW5pCgo+IAo+IEJlc3QgcmVnYXJkcywKPiBLcnp5c3p0b2YKPiAKCi0tIArgrq7grqPg
rr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
