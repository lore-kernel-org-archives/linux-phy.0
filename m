Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D524BE7717D
	for <linux-phy@archiver.kernel.org>; Wed, 11 Dec 2024 06:21:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ZO2a3Goi9DMnY7fgiN/Hu9S8JxCnzhgG9g3Lu3EexM=; b=mO6vn6rT8aAITN
	Tg4honiuuqAOwjnAFsZ/89YDWzRe5AivF7PVYg35osjXwG065WhElGG3NYWPRrrrbVKVPSDMugRkr
	SJ/Lxxjj3GTFmjI6lS5f0YV8x5ubMHvfngK7/9+4LCsSJYbFGQyCRlG6hZm87+xME66SRGGbvK6Li
	6L3APEWryIbRm2xOUMFfqkKD+xYE6TRnAxEOiDH/41EjW08VkTmvR0qiHf/Dis0zV4KYrw7lJSuAr
	gx8mO2WxS+AoCAncNR4wKE/Gsn9ofCmjyuCErIvP0WC8H+7sz8wjI/uHkm/tbjNLouK/1ISX2TtG5
	a08ZE7oDTqcdFEwKMfzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLG5n-0000000DuwM-1snF;
	Wed, 11 Dec 2024 06:21:03 +0000
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLG5l-0000000Duvs-2KbW
	for linux-phy@lists.infradead.org;
	Wed, 11 Dec 2024 06:21:02 +0000
Received: by mail-pf1-x434.google.com with SMTP id d2e1a72fcca58-728ea1573c0so1024124b3a.0
        for <linux-phy@lists.infradead.org>; Tue, 10 Dec 2024 22:21:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733898060; x=1734502860; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0d5CzVXzJ7EqY/542DTDjPbVEeRALSf1iz2hJWMyrGs=;
        b=CCk+Q9kZa9etU3kYPq2uB045al27giAhowGym/AXhsjcZDhG+tK4U0HYIhO2v8A8Xb
         /9vQboR7pDveBpSBKYCt+E6U4GRPDqQN/5ucWtiCCwUls7bFHVvnt8Tc8AlzxJ61EI6r
         71hJ3o2wjeSJvHUO2QrjqkXk018dHMp0KuoUaPv2kefpJ1TbNJnVPDfopYmj3qeW93ly
         2oT8Ht80LS5V1Yp8VyjWGJ186fJHhX/aGph2aYdUoBbeXrUqk4N4ulks+JBKt7QUC4NB
         /G+/XQ+o+Br3aXKNX4HboOtvElEC3RoyzFXM/44WVvBUqo6xhVW+yRGhR8tCKKB3DZiG
         ElQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733898060; x=1734502860;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0d5CzVXzJ7EqY/542DTDjPbVEeRALSf1iz2hJWMyrGs=;
        b=Omrky6L/CvHOU6zrwr+BFpY+e91VwbYKo8TF+83Zu0JorgsuF+Qr6bfz94xw9VXFyb
         N/q/iTZXTfuQyg5IU19FwdQPTi2GjfNhTJ4wG0k0Rwg+cubgGwQYz1jcs3tPp19M9gv2
         khYaRzzGM3u+82iOtsgwMTH1Cc2XCxrmspqIcIW9dMKl1VhsgCujV83kUkxtHLFucBnr
         dYM6sQKEbChksYUIbgbY2PjWQvIUsmAdVyzGHQf1/gmuxmfqhhLbBidMmJMueT2qiFhU
         yZcUISMcji5VSD24UBGD8hl7yU+hlIipWsFGvIumPTVt04RIkSzyVff3fpt97IqE75I8
         lMqA==
X-Forwarded-Encrypted: i=1; AJvYcCX8dIikmOM+1mPD2frV2BwbX+CSb7qN7+8aWHK7YWMUTAZE/KuzuIPKIYgRYQY3W8fbecETcNp9bCg=@lists.infradead.org
X-Gm-Message-State: AOJu0YxX5TqvF2G9mPejjYNjufzvemrDFrIopNDHQ7ZEplrK2YaXUlt7
	52fwm0I+vjnJgfX3wjT5TTi/SAP5B/QZyLRpCGBxpLNocNq7Ogad35yjr3UN3A==
X-Gm-Gg: ASbGncsABHGAcrGVaHZPGULgA/MbGsn9N6E0DdN/oCn3kKkljWiLcbZ9E5UJ124MfTn
	vTxELxNqBos0GJlydy9uRRdfJfOLTQO/yIbqmgwUh+qZzbO62i6VXAg1Z1n4kSnHsInFeuEcefC
	jeAJOARFash9+SIK0tsSx+lGwQuu9MwbBE7F3v9iP/4hJUQYJIAZ9RP72d6XyxfPHPTg7U78krn
	d1e9e93j/ro1HOtn+mWlPM3v/eAxcFMTMZJLDiDHqZ6PV9WGglEkv7cJxBM3Z8=
X-Google-Smtp-Source: AGHT+IFWvDNrqEB23z/oBgRJDSkzxDUqR7wA2A2btM/Mtu50Ib91aDIP/XMJYo9C7ZTzBqiKgwPjGA==
X-Received: by 2002:a05:6a20:244f:b0:1e1:bf3d:a190 with SMTP id adf61e73a8af0-1e1c13832f3mr2505278637.30.1733898060524;
        Tue, 10 Dec 2024 22:21:00 -0800 (PST)
Received: from thinkpad ([120.60.55.53])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7273c7f3f1fsm3124018b3a.13.2024.12.10.22.20.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 22:20:59 -0800 (PST)
Date: Wed, 11 Dec 2024 11:50:53 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Ziyue Zhang <quic_ziyuzhan@quicinc.com>, vkoul@kernel.org,
	kishon@kernel.org, dmitry.baryshkov@linaro.org,
	abel.vesa@linaro.org, neil.armstrong@linaro.org,
	andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: phy: qcom,qmp-pcie: add optional
 current load properties
Message-ID: <20241211062053.vxdpovlmetvyx3za@thinkpad>
References: <20241204105249.3544114-1-quic_ziyuzhan@quicinc.com>
 <20241204105249.3544114-2-quic_ziyuzhan@quicinc.com>
 <qvjtwilukxbeaxnbyzfkdsfkktm6p4yv3sgx3rbugpb6qkcbjy@rohvixslizhh>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <qvjtwilukxbeaxnbyzfkdsfkktm6p4yv3sgx3rbugpb6qkcbjy@rohvixslizhh>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_222101_607604_F6C9F945 
X-CRM114-Status: GOOD (  15.50  )
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

T24gVGh1LCBEZWMgMDUsIDIwMjQgYXQgMTE6MjM6MTFBTSArMDEwMCwgS3J6eXN6dG9mIEtvemxv
d3NraSB3cm90ZToKPiBPbiBXZWQsIERlYyAwNCwgMjAyNCBhdCAwNjo1Mjo0N1BNICswODAwLCBa
aXl1ZSBaaGFuZyB3cm90ZToKPiA+IE9uIHNvbWUgcGxhdGZvcm1zLCB0aGUgcG93ZXIgc3VwcGx5
IGZvciBQQ0llIFBIWSBpcyBub3QgYWJsZSB0byBwcm92aWRlCj4gPiBlbm91Z2ggY3VycmVudCB3
aGVuIGl0IHdvcmtzIGluIExQTSBtb2RlLiBIZW5jZSwgUENJZSBQSFkgZHJpdmVyIG5lZWRzIHRv
Cj4gPiBzZXQgY3VycmVudCBsb2FkIHRvIHZvdGUgdGhlIHJlZ3VsYXRvciB0byBIUE0gbW9kZS4K
PiA+IAo+ID4gRG9jdW1lbnQgdGhlIGN1cnJlbnQgbG9hZCBhcyBwcm9wZXJ0aWVzIGZvciBlYWNo
IHBvd2VyIHN1cHBseSBQQ0llIFBIWQo+ID4gcmVxdWlyZWQsIG5hbWVseSB2ZGRhLXBoeS1tYXgt
bWljcm9hbXAsIHZkZGEtcGxsLW1heC1taWNyb2FtcCBhbmQKPiA+IHZkZGEtcXJlZi1tYXgtbWlj
cm9hbXAsIHJlc3BlY3RpdmVseS5QQ0llIFBIWSBkcml2ZXIgc2hvdWxkIHBhcnNlIHRoZW0gdG8K
PiA+IHNldCBhcHByb3ByaWF0ZSBjdXJyZW50IGxvYWQgZHVyaW5nIFBIWSBwb3dlciBvbi4KPiA+
IAo+ID4gVGhpcyB0aHJlZSBwcm9wZXJ0aWVzIGFyZSBvcHRpb25hbCBhbmQgbm90IG1hbmRhdG9y
eSBmb3IgdGhvc2UgcGxhdGZvcm1zCj4gPiB0aGF0IFBDSWUgUEhZIGNhbiBzdGlsbCB3b3JrIHdp
dGggcG93ZXIgc3VwcGx5Lgo+IAo+IAo+IFVoIHVoLCBzbyB0aGUgZG93bnN0cmVhbSBjb21lcyBm
aW5hbGx5IQo+IAo+IE5vIHNvcnJ5IGd1eXMsIHVzZSBleGlzdGluZyByZWd1bGF0b3IgYmluZGlu
Z3MgZm9yIHRoaXMuCj4gCgpNYXliZSB0aGV5IGdvdCBpbnNwaXJlZCBieSB1cHN0cmVhbSBVRlMg
YmluZGluZ3M/CkRvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91ZnMvdWZzLWNvbW1v
bi55YW1sOgoKdmNjLW1heC1taWNyb2FtcAp2Y2NxLW1heC1taWNyb2FtcAp2Y2NxMi1tYXgtbWlj
cm9hbXAKClJlZ3VsYXRvciBiaW5kaW5nIG9ubHkgZGVzY3JpYmVzIHRoZSBtaW4vbWF4IGxvYWQg
Zm9yIHRoZSByZWd1bGF0b3JzIGFuZCBub3QKY29uc3VtZXJzLiBXaGF0IGlmIHRoZSBjb25zdW1l
cnMgbmVlZCB0byBzZXQgdmFyaWFibGUgbG9hZCBwZXIgcGxhdGZvcm0/IFNob3VsZAp0aGV5IGhh
cmRjb2RlIHRoZSBsb2FkIGluIGRyaXZlcj8gKGV2ZW4gc28sIHRoZSBsb2FkIHNob3VsZCBub3Qg
dmFyeSBmb3IgZWFjaApib2FyZCkuCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPg
rqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
