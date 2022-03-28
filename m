Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5822EC433F5
	for <linux-phy@archiver.kernel.org>; Mon, 28 Mar 2022 07:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lq5WHjcHr4FJRDsknP5EzgxPEQ4+HmBtWMMae/BkMnw=; b=rCFjAUBXxsNh30
	m2F5r4ADM5sh2tTzkTPAi+6qD6xAk1Mk0Aea6gcNigD2zFdMu8sxheSdDCc0RS3vcs7UQGJGhpLk5
	8SJNc0T4hEInsuufYZAu2f/zu+7SBxQhTAF/Mctb0GfYdosJk0J0TZcLGdci7KkhXeILCsBPDbXcM
	DRexmxKrfbinNnCaOrv9VmKUskQ4G8krSUu+PTg2e2MLkR0fb24RJ9JcxTViemiiUdUog/NIMIUFW
	LOmW1MvX9WMS2AOj0sO2oy6OMUkATTJCu2/ioepBSSnp/vZwgvlm4x2mhpkxBrqBRj1ZpxqDxngHy
	sXPnC4ibEPadP5+/nXHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYjXs-007Z3K-QO; Mon, 28 Mar 2022 07:12:08 +0000
Received: from mail-ej1-f48.google.com ([209.85.218.48])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYjXq-007Z2U-4w
 for linux-phy@lists.infradead.org; Mon, 28 Mar 2022 07:12:07 +0000
Received: by mail-ej1-f48.google.com with SMTP id bg10so26670645ejb.4
 for <linux-phy@lists.infradead.org>; Mon, 28 Mar 2022 00:12:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=A3bAA5yAZfqHAOyYK98ovGqRH+yACNii1ofYKDFYNqg=;
 b=EkyGYdZ2B/lCQkS40yG2ODJ5+5+pHc5aq892F4rBarQ9MrdAhiVTjydvm0s5nQzRba
 iLmoW/cmereQvKHeYJd1Hd6cqJ8izlx4TeJTtMuG/crLpA29BXtCtortNadGgZQQhacK
 98wy1hXqIBKQ5Yl+Ax1tteaFteDCZ+mqfg0UtU+HBZPfCRHt+Jn84acHVAEKqAIYudP/
 scc9UglIJIhuk1/cmh22Cjn4HvB7vkNeU8vi+JJfb23oM9iKe71keLfymfNvM8VHGsTH
 bj2YnfvX9AXLeQ/7zWk9/4BtW+pUELfQIq3uEzkP1DLQ/5NDe7Z6diRjggEoi1n7r0u3
 6iBw==
X-Gm-Message-State: AOAM530MgXOtcGB7edvY4UO18mHU7sIDRWoUj7HKFZ3PIaWRM4FEnN/q
 tj88mfZzN4EgkkKleQdkPZQ=
X-Google-Smtp-Source: ABdhPJyliJObAr4tF6MXCnCS1jZfcLUkeUAIEsIcEMEblJ5vxk1/HfCR8+JpaG+PrOtqQCO+7FboMg==
X-Received: by 2002:a17:907:7ea5:b0:6e1:13c3:e35f with SMTP id
 qb37-20020a1709077ea500b006e113c3e35fmr2857957ejc.99.1648451521451; 
 Mon, 28 Mar 2022 00:12:01 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.googlemail.com with ESMTPSA id
 j8-20020aa7c0c8000000b0041934547989sm6540772edp.55.2022.03.28.00.11.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 28 Mar 2022 00:12:00 -0700 (PDT)
Message-ID: <0716d9e4-24e1-d16c-162c-00a8664296e1@kernel.org>
Date: Mon, 28 Mar 2022 09:11:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 0/5] Add support for Axis, ARTPEC-8 PCIe driver
Content-Language: en-US
To: wangseok.lee@samsung.com, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>, "kishon@ti.com" <kishon@ti.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "jesper.nilsson@axis.com" <jesper.nilsson@axis.com>,
 "lars.persson@axis.com" <lars.persson@axis.com>
Cc: "bhelgaas@google.com" <bhelgaas@google.com>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "kw@linux.com" <kw@linux.com>,
 "linux-arm-kernel@axis.com" <linux-arm-kernel@axis.com>,
 "kernel@axis.com" <kernel@axis.com>, =?UTF-8?B?7KCE66y46riw?=
 <moonki.jun@samsung.com>
References: <CGME20220328014430epcms2p7063834feb0abdf2f38a62723c96c9ff1@epcms2p7>
 <20220328014430epcms2p7063834feb0abdf2f38a62723c96c9ff1@epcms2p7>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20220328014430epcms2p7063834feb0abdf2f38a62723c96c9ff1@epcms2p7>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220328_001206_235749_6AB2321D 
X-CRM114-Status: GOOD (  13.52  )
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

T24gMjgvMDMvMjAyMiAwMzo0NCwg7J207JmV7ISdIHdyb3RlOgo+IFRoaXMgc2VyaWVzIHBhdGNo
ZXMgaW5jbHVkZSBuZXdseSBQQ0llIHN1cHBvcnQgZm9yIEF4aXMgQVJUUEVDLTggU29DLgo+IEFS
VFBFQy04IGlzIHRoZSBTb0MgcGxhdGZvcm0gb2YgQXhpcyBDb21tdW5pY2F0aW9ucy4KPiBQQ0ll
IGNvbnRyb2xsZXIgZHJpdmVyIGFuZCBwaHkgZHJpdmVyIGhhdmUgYmVlbiBuZXdseSBhZGRlZC4K
PiBUaGVyZSBpcyBhbHNvIGEgbmV3IE1BSU5UQUlORVIgaW4gdGhlIGFkZGl0aW9uIG9mIHBoeSBk
cml2ZXIuCj4gUENJZSBjb250cm9sbGVyIGlzIGRlc2lnbmVkIGJhc2VkIG9uIERlc2lnbi1XYXJl
IFBDSWUgY29udHJvbGxlciBJUAo+IGFuZCBQQ0llIHBoeSBpcyBkZXNpbmdlZCBiYXNlZCBvbiBT
QU1TVU5HIFBIWSBJUC4KPiBJdCBhbHNvIGluY2x1ZGVzIG1vZGlmaWNhdGlvbnMgdG8gdGhlIERl
c2lnbi1XYXJlIGNvbnRyb2xsZXIgZHJpdmVyIHRvIAo+IHJ1biB0aGUgNjRiaXQtYmFzZWQgQVJU
UEVDLTggUENJZSBjb250cm9sbGVyIGRyaXZlci4KPiBJdCBjb25zaXN0cyBvZiA2IHBhdGNoZXMg
aW4gdG90YWwuCj4gCj4gVGhpcyBzZXJpZXMgaGFzIGJlZW4gdGVzdGVkIG9uIEFYSVMgU1cgYnJp
bmctdXAgYm9hcmQgCj4gd2l0aCBBUlRQRUMtOCBjaGlwc2V0LgoKWW91IGxvc3QgbWFpbCB0aHJl
YWRpbmcuIFRoaXMgbWFrZXMgcmVhZGluZyB0aGlzIGRpZmZpY3VsdCBmb3IgdXMuIFBsdXMKeW91
IHNlbnQgc29tZXRoaW5nIG5vbi1hcHBsaWNhYmxlIChwYXRjaCAjMiksIHNvIHBsZWFzZSByZXNl
bmQuCgpLbm93aW5nIHJlY2VudCBTYW1zdW5nIHJlbHVjdGFuY2UgdG8gZXh0ZW5kIGV4aXN0aW5n
IGRyaXZlcnMgYW5kIGFsd2F5cwpkdXBsaWNhdGUsIHBsZWFzZSBwcm92aWRlIGRlc2NyaXB0aW9u
L2FuYWx5c2lzIHdoeSB0aGlzIGRyaXZlciBjYW5ub3QgYmUKY29tYmluZWQgd2l0aCBleGlzdGlu
ZyBkcml2ZXIuIFRoZSBhbnN3ZXIgbGlrZTogd2UgbmVlZCBzZXZlcmFsIHN5c2NvbgpiZWNhdXNl
IHdlIGRvIG5vdCBpbXBsZW1lbnQgb3RoZXIgZnJhbWV3b3JrcyAobGlrZSBpbnRlcmNvbm5lY3Qp
IGFyZSBub3QKdmFsaWQuCgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
