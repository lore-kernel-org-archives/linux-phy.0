Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3481C46CD2
	for <linux-phy@archiver.kernel.org>; Wed, 24 Jan 2024 08:47:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=negXrLP2WxV1ejuF6yWz3klprbJV/69996i/za0rC+c=; b=XDFDeJNSL8n+NS
	eeURrui3mdR1VcjVQYaY6W38BQf30vaJfeA5PnXomqjrzBfPc0qw1fk/09WMunsvj1rehX69Sy+9u
	1rgh2pWgtaLqsS4gIQIRqXhL/1723mAABDEvbIzPP12M/57Ms3jJdP385F4t//TB9YBDsipnCyvXw
	wbvRQXaB1aHepV2VhCe7ZBPAeCyzAdxBKCovDZ9GI6KPfJRFH5Bk0bULZWQCKPMn9bZ9fUWfR4/oF
	FQFCQbpu5h3xE9ckXWNUkSBCh2lWVLt94DB1qlql0g1UHamiTO2rYuKtMmpS3e+ACqroHWisnZIEN
	u4pu3/B2BCcA5Yz7mhIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSYum-0023d0-1k;
	Wed, 24 Jan 2024 08:47:20 +0000
Received: from mail-qv1-xf29.google.com ([2607:f8b0:4864:20::f29])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSYuk-0023ca-0L
	for linux-phy@lists.infradead.org;
	Wed, 24 Jan 2024 08:47:19 +0000
Received: by mail-qv1-xf29.google.com with SMTP id 6a1803df08f44-6868823be58so16956706d6.0
        for <linux-phy@lists.infradead.org>; Wed, 24 Jan 2024 00:47:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706086036; x=1706690836; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vOnv3adWQrKv1Zkv4bX3OIcJzRZ65t2vYD9WyrY+EY8=;
        b=tN75ZpJrOpCuHfNPLjzcLdLIHtneA1UnXfVclhEILbmIzGQPL1HboTtNrOtOAwB8vZ
         A/Hh23LsC9TOH3si9bzHa8w3fP7Jvg+5MvdlFL06zgckuXT7hA2uPT5S3kLZCBvqVjTM
         7uX/1AkMaFTopYLjVAlpv0mwOHnd9RoLy5i8JK0UEOV4mFAFN5T6r4cWP5O+Tf2ug+5/
         4orRVlveXseMLulivdNaLuCVNTjeQ73tfKMIrEny2Vc1YQ3+pcMEStUZkngYR4Od/4DA
         matvuoH7tJGFlZZ+ofbkTpsrY44gbpho3IxLBSOBYdMriqWBltwLKHxt1WSzC2ckvDnB
         J4Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706086036; x=1706690836;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vOnv3adWQrKv1Zkv4bX3OIcJzRZ65t2vYD9WyrY+EY8=;
        b=afXM7ezBWNDze9IVDwNvJi/J3UA1zPrYVtBSl/CK+S64ve6MrJykbHSO6xhjpLJAM0
         n3npEV0kA0AWzNPod9fcEaJlcwCLQCUFtYdjMUZzUamMMOUZuD3Doo8FQJVeVoYVA9FZ
         VcFzK/7vPv/HnAbvpgoS9DVuWBkf5o+J7wwk3OJ1t/VExEAJVE9j2/nx6GA+1KnCBkkL
         5Tv8V/qnFy52FvG0AnYGRo4xL1KZ9oGaD8znEHk07HLcbLMl3BDZZpR5FdhIoazVe9BV
         XWqynuSYU6nmCAAh00qVUDcfr5lazvg9FVT+lwKlElEkewLGb2Yr9sYs/VfjX+cndYqo
         tN5w==
X-Gm-Message-State: AOJu0YzihlrwLGZaHB4+3w2tvK8Y5blRdKvyr7J+rZuZnbIYe9x2PDiV
	jlkua0ksFZ2JUxIiuYM9N9GuZ+voi554/tLKTarOPrkboMt7P6fKQuBuIqOirA==
X-Google-Smtp-Source: AGHT+IHI35pk3JFRrtsiBg3LW/bMC+Q5U/NC24rnsI0zZ+xuGKIthCubKXQN+iyZccdPkF6iDuPrJw==
X-Received: by 2002:a0c:e285:0:b0:686:2b72:6f39 with SMTP id r5-20020a0ce285000000b006862b726f39mr2160281qvl.98.1706086036074;
        Wed, 24 Jan 2024 00:47:16 -0800 (PST)
Received: from thinkpad ([117.217.189.109])
        by smtp.gmail.com with ESMTPSA id ny18-20020a056214399200b006868e6d8b37sm2960906qvb.23.2024.01.24.00.47.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jan 2024 00:47:15 -0800 (PST)
Date: Wed, 24 Jan 2024 14:16:59 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: andersson@kernel.org, vkoul@kernel.org, sboyd@kernel.org,
	mturquette@baylibre.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, quic_cang@quicinc.com
Subject: Re: [PATCH v2 14/16] arm64: dts: qcom: sc8280xp: Fix UFS PHY clocks
Message-ID: <20240124084659.GE4906@thinkpad>
References: <20231218120712.16438-1-manivannan.sadhasivam@linaro.org>
 <20231218120712.16438-15-manivannan.sadhasivam@linaro.org>
 <e905c463-6f89-4939-981a-7a360ed31669@linaro.org>
 <20231220083014.GB3544@thinkpad>
 <a888e261-e990-445c-ab98-f63859c19dd2@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a888e261-e990-445c-ab98-f63859c19dd2@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240124_004718_149644_AB214283 
X-CRM114-Status: GOOD (  16.84  )
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

T24gV2VkLCBKYW4gMDMsIDIwMjQgYXQgMDI6NTA6MDRQTSArMDEwMCwgS29ucmFkIER5YmNpbyB3
cm90ZToKPiBPbiAyMC4xMi4yMDIzIDA5OjMwLCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gd3JvdGU6
Cj4gPiBPbiBXZWQsIERlYyAyMCwgMjAyMyBhdCAwMTozNToyN0FNICswMTAwLCBLb25yYWQgRHli
Y2lvIHdyb3RlOgo+ID4+IE9uIDE4LjEyLjIwMjMgMTM6MDcsIE1hbml2YW5uYW4gU2FkaGFzaXZh
bSB3cm90ZToKPiA+Pj4gUU1QIFBIWSB1c2VkIGluIFNDODI4MFhQIHJlcXVpcmVzIDMgY2xvY2tz
Ogo+ID4+Pgo+ID4+PiAqIHJlZiAtIDE5LjJNSHogcmVmZXJlbmNlIGNsb2NrIGZyb20gUlBNaAo+
ID4+PiAqIHJlZl9hdXggLSBBdXhpbGlhcnkgcmVmZXJlbmNlIGNsb2NrIGZyb20gR0NDCj4gPj4+
ICogcXJlZiAtIFFSRUYgY2xvY2sgZnJvbSBHQ0MKPiA+Pj4KPiA+Pj4gRml4ZXM6IDE1MmQxZmFm
MWUyZiAoImFybTY0OiBkdHM6IHFjb206IGFkZCBTQzgyODBYUCBwbGF0Zm9ybSIpCj4gPj4+IFNp
Z25lZC1vZmYtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFt
QGxpbmFyby5vcmc+Cj4gPj4+IC0tLQo+ID4+PiAgYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3Nj
ODI4MHhwLmR0c2kgfCAxOCArKysrKysrKysrKystLS0tLS0KPiA+Pj4gIDEgZmlsZSBjaGFuZ2Vk
LCAxMiBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+ID4+Pgo+ID4+PiBkaWZmIC0tZ2l0
IGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NjODI4MHhwLmR0c2kgYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL3Fjb20vc2M4MjgweHAuZHRzaQo+ID4+PiBpbmRleCBjYWQ1OWFmN2NjZWYuLjM3MzQ0
YWJiZThiZiAxMDA2NDQKPiA+Pj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NjODI4
MHhwLmR0c2kKPiA+Pj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NjODI4MHhwLmR0
c2kKPiA+Pj4gQEAgLTIyNTYsOSArMjI1NiwxMiBAQCB1ZnNfbWVtX3BoeTogcGh5QDFkODcwMDAg
ewo+ID4+PiAgCQkJY29tcGF0aWJsZSA9ICJxY29tLHNjODI4MHhwLXFtcC11ZnMtcGh5IjsKPiA+
Pj4gIAkJCXJlZyA9IDwwIDB4MDFkODcwMDAgMCAweDEwMDA+Owo+ID4+PiAgCj4gPj4+IC0JCQlj
bG9ja3MgPSA8JmdjYyBHQ0NfVUZTX0NBUkRfQ0xLUkVGX0NMSz4sCj4gPj4+IC0JCQkJIDwmZ2Nj
IEdDQ19VRlNfUEhZX1BIWV9BVVhfQ0xLPjsKPiA+Pj4gLQkJCWNsb2NrLW5hbWVzID0gInJlZiIs
ICJyZWZfYXV4IjsKPiA+Pj4gKwkJCWNsb2NrcyA9IDwmcnBtaGNjIFJQTUhfQ1hPX0NMSz4sCj4g
Pj4+ICsJCQkJIDwmZ2NjIEdDQ19VRlNfUEhZX1BIWV9BVVhfQ0xLPiwKPiA+Pj4gKwkJCQkgPCZn
Y2MgR0NDX1VGU19DQVJEX0NMS1JFRl9DTEs+Owo+ID4+IEdDQ19VRlNfUkVGX0NMS1JFRl9DTEsK
PiA+IAo+ID4gSSdtIG5vdCBzdXJlIGFib3V0IHRoaXMgQ0xLLiBTbyBJIGtlcHQgaXQgYXMgaXQg
aXMgdW50aWwgSSB2ZXJpZnkgaXQuCj4gSSBhbSBxdWl0ZSBzdXJlIGV2ZXJ5dGhpbmcgKlVGU19D
QVJEXyogcmVmZXJzIHRvIHRoZSBvdGhlciBVRlMgaG9zdC4uCj4gCgpXZSBjYW5ub3QgaW5mZXIg
dGhhdCBmcm9tIHRoZSBuYW1pbmcuIFRoZXJlIGlzIGEgY2hhbmNlIHRoYXQgdGhlIHNhbWUgY2xv
Y2sKY291bGQgYmUgcm91dGVkIHRvIE1FTV9QSFkgaW50ZXJuYWxseS4gTW9yZW92ZXIsIHRoZXJl
IGlzIG5vIHNlcGFyYXRlICJyZWYiCmNsb2NrIGZvciBNRU1fUEhZIHRob3VnaC4KCi0gTWFuaQoK
LS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40K
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
