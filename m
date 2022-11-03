Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6777DC4332F
	for <linux-phy@archiver.kernel.org>; Thu,  3 Nov 2022 12:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PwKftlGAq4XYM6vmDXW1UPVCd9C1YxM86Xn0Sg38tx4=; b=EmjKhy9h05TUn3
	rAFTlmuTWeVGMwx/T0atCmKm8OMcVHdDIuvL1Y/eRU0aZdLBij9+IvX1wPmr9WVyJdzFwjjlns6JC
	UDrrywmPtRO2wt4jwqRTqlrTgoSFSnRyEHJqMIMYy1Q/AHrcBB4EXoDNYODsfBVjAatz/u5m3MFsw
	PiYW0p3qXLo/5B9/Pd+xx0PHXeQVpy2ihPZwdhkqi1JmzHfRVdRtvTBwylAHeowwX8EGwsd1p1pI8
	m1waUH4TgrA+a0wQOw0AbK9vZcAFebffSazpFHfUU9hUzKn3jPaSaZosDC+FBzPNZSKo6f00wftaG
	WGdi0nC05CBlMPT74MOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqZLD-00HJcU-VX; Thu, 03 Nov 2022 12:29:04 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqZLB-00HJbZ-2y
	for linux-phy@lists.infradead.org; Thu, 03 Nov 2022 12:29:02 +0000
Received: by mail-pf1-x42f.google.com with SMTP id b29so1419237pfp.13
        for <linux-phy@lists.infradead.org>; Thu, 03 Nov 2022 05:28:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pvgX6ikZPni7jkpkvXbOwi0lz3HvKft3SvDqE9pJ2xU=;
        b=WyrnXRZT3Uw1ORHTuUhT8HNqidfzc/clXoM6HVa5dwhaCAmIj1oPOdCbKnG9YHBil7
         eZ2jqBre98HZk2J35iQkISx7sC1/cOcB5nb+ZNqGNBQDjMdCrbPoB5S+tv6239aE8V1s
         k89s6rvO0CtOC+GQC4xOk04j48iZ59MnDgK+RPP0DV6ANxWkmLwjOlo1pNYkmm+8KTHK
         40UAHkuEOGZU/xlGA6kkT6iz1JPcu4UTjKgCsS0UmCSoqKLNBGa4I4MYSdQZ2UW9pKtn
         rk3dVMHGJOzkCVFSXE0f/Vz1Klf4uCdnz+V5Ejnzclqgb2dT0fgs8ISNUimcD7ZK79Q/
         6nlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pvgX6ikZPni7jkpkvXbOwi0lz3HvKft3SvDqE9pJ2xU=;
        b=okTvJmCeaeQ1gydxZWYYxPz0Y1M6iOmay8wraVcepBmwniawFw8o0+F9B/nyg0/G+f
         KCRFZxI1m4FNc9JHR8RfJwa6w6LPgMyUY/UBmmPA9hKmHt/Jtg2SSFNsxsyhhdosLpzV
         QjEMnThSFUuMOMXt5BGaiY7Ma4EHDpjstBeb28IUqA1gUbIq4pmflkBGTVVUFKUZgKTm
         6P+Jqj5ygnZPk+Ksz17mDkoDqCo5T9jhbC/pa3dNKo0rj1aSfM5i9W+AHOVulkXxaE1q
         L+N4dfureGGE21JFOfml/os46Ljl9FKHvzApW3J2gcoCXzxjWfHLmbEowJGHXTlsiZTt
         oElg==
X-Gm-Message-State: ACrzQf0uYcGWCEj7uvsmn+BJNaxG1pdNwOP+i+ufq2REW8NTKmMZ5OaA
	8xNRLmj9dJ5M9AV6CrEuelg9
X-Google-Smtp-Source: AMsMyM7IgbklEQwLyfEerx5Y4/DIC4P9MoC9GwY02mCKjFxupeSyqgi6vMMbfF4T4PW2ljR+mFibkA==
X-Received: by 2002:a63:4f09:0:b0:440:4706:2299 with SMTP id d9-20020a634f09000000b0044047062299mr26472031pgb.115.1667478538121;
        Thu, 03 Nov 2022 05:28:58 -0700 (PDT)
Received: from thinkpad ([59.92.102.81])
        by smtp.gmail.com with ESMTPSA id l12-20020a170903120c00b00172fad607b3sm510757plh.207.2022.11.03.05.28.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Nov 2022 05:28:57 -0700 (PDT)
Date: Thu, 3 Nov 2022 17:58:50 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: martin.petersen@oracle.com, jejb@linux.ibm.com, andersson@kernel.org,
	vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	konrad.dybcio@somainline.org, robh+dt@kernel.org,
	quic_cang@quicinc.com, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
	dmitry.baryshkov@linaro.org, ahalaney@redhat.com
Subject: Re: [PATCH v2 06/15] dt-bindings: ufs: Add "max-device-gear"
 property for UFS device
Message-ID: <20221103122850.GD8434@thinkpad>
References: <20221031180217.32512-1-manivannan.sadhasivam@linaro.org>
 <20221031180217.32512-7-manivannan.sadhasivam@linaro.org>
 <1fe8fd96-7770-0bda-c970-aa38d030ff3b@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1fe8fd96-7770-0bda-c970-aa38d030ff3b@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221103_052901_220916_507D4174 
X-CRM114-Status: GOOD (  16.12  )
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

T24gV2VkLCBOb3YgMDIsIDIwMjIgYXQgMDM6MDk6NTBQTSAtMDQwMCwgS3J6eXN6dG9mIEtvemxv
d3NraSB3cm90ZToKPiBPbiAzMS8xMC8yMDIyIDE0OjAyLCBNYW5pdmFubmFuIFNhZGhhc2l2YW0g
d3JvdGU6Cj4gPiBUaGUgbWF4aW11bSBnZWFyIHN1cHBvcnRlZCBieSB0aGUgVUZTIGRldmljZSBj
YW4gYmUgc3BlY2lmaWVkIHVzaW5nIHRoZQo+ID4gIm1heC1kZXZpY2UtZ2VhciIgcHJvcGVydHku
IFRoaXMgYWxsb3dzIHRoZSBVRlMgY29udHJvbGxlciB0byBjb25maWd1cmUgdGhlCj4gPiBUWC9S
WCBnZWFyIGJlZm9yZSBzdGFydGluZyBjb21tdW5pY2F0aW9uIHdpdGggdGhlIFVGUyBkZXZpY2Uu
Cj4gCj4gVGhpcyBpcyBjb25mdXNpbmcuIFRoZSBVRlMgUEhZIHByb3ZpZGVzIGdlYXIgY2FwYWJp
bGl0eSwgc28gd2hhdCBpcyB0aGUKPiAiZGV2aWNlIiBoZXJlPyBUaGUgYXR0YWNoZWQgbWVtb3J5
PyBIb3cgY291bGQgaXQgcmVwb3J0IHNvbWV0aGluZyBlbHNlCj4gdGhhbiBwaHk/Cj4gCgpUaGlz
IGlzIHRoZSBub3JtIHdpdGggYW55IHN0b3JhZ2UgcHJvdG9jb2wsIHJpZ2h0PyBCb3RoIGhvc3Qg
YW5kIGRldmljZQoobWVtb3J5KSBjYW4gc3VwcG9ydCBkaWZmZXJlbnQgc3BlZWRzIGFuZCB0aGUg
T0VNIGNhbiBjaG9vc2UgdG8gcHV0IGFueQpjb21iaW5hdGlvbnMgKGV2ZW4gdGhvdWdoIGl0IG1p
Z2h0IG5vdCBiZSB2ZXJ5IGVmZmljaWVudCkuCgpGb3IgaW5zdGFuY2UsCgpQSFkgKEc0KSAtPiBE
ZXZpY2UgKEczKQoKRnJvbSB0aGUgaG9zdCBwZXJzcGVjdGl2ZSB3ZSBrbm93IHdoYXQgdGhlIFBI
WSBjYW4gc3VwcG9ydCBidXQgdGhhdCdzIG5vdCB0aGUKc2FtZSB3aXRoIHRoZSBkZXZpY2UgdW50
aWwgcHJvYmluZyBpdC4gQW5kIHByb2JpbmcgcmVxdWlyZXMgdXNpbmcgYSBtaW5pbXVtCnN1cHBv
cnRlZCBnZWFyLiBGb3Igc3VyZSB3ZSBjYW4gdXNlIHNvbWV0aGluZyBsaWtlIEcyL0czIGFuZCBy
ZWluaXQgbGF0ZXIgYnV0CmFzIEkgbGVhcm50LCB0aGF0IGFwcHJvYWNoIHdhcyByZWplY3RlZCBi
eSB0aGUgY29tbXVuaXR5IHdoZW4gc3VibWl0dGVkCmJ5IFF1YWxjb21tIGVhcmxpZXIuCgo+IFRo
ZSBsYXN0IHNlbnRlbmNlIGFsc28gc3VnZ2VzdHMgdGhhdCB5b3Ugc3RhdGljYWxseSBlbmNvZGUg
Z2VhciB0byBhdm9pZAo+IHJ1bnRpbWUgbmVnb3RpYXRpb24uCj4gCgpZZXMsIHRoZSBPRU0gc2hv
dWxkIGtub3cgd2hhdCB0aGUgbWF4IGdlYXIgc3BlZWQgdGhleSB3YW50IHRvIHJ1biwgc28gZ2V0
dGluZwp0aGlzIGluZm8gZnJvbSBEVCBtYWtlcyBzZW5zZS4KClRoYW5rcywKTWFuaQoKPiBCZXN0
IHJlZ2FyZHMsCj4gS3J6eXN6dG9mCj4gCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+N
IOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
