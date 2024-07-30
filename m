Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1684EC3DA49
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jul 2024 07:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QlYC4hOgXNYZwLgZJC3jH0T4Bq3QG9FkmZu3O3yAtaY=; b=SmXalqykfgTgj3
	qTquB9nF2EzykBn6PROBkt2hVj+Nw5WTLmPL79jsxaBojV+c7HqHJUY8ejAK7EijgjeKftwGn5IRV
	8qQ3gKQ6yL79wNs0DAmNvYDNoWhu3yrQpG8OO7WnhFNSvRqQYIv/0uYIw9JZC/oCgZPWzgNMMw36s
	a2QzBMhlTV7O0Dnw+lJ1bvMXQRN7hVi4JJFOcJzkfNWx/Gm2aE3PcDAjK63qsdleK66/zKI9qHT5O
	gGzmHqtnX2vK6mqdMRLQyGk/NEQzuMFC93aMvw1++G49SMJ7JieaZbo07IuqPhp8K1csX9r6Oma4h
	mlii+nFZ9gOWPqlhdCvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYhXc-0000000E4cs-39Xh;
	Tue, 30 Jul 2024 07:45:04 +0000
Received: from mail-ot1-x32f.google.com ([2607:f8b0:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYhX6-0000000E4UQ-1D9L;
	Tue, 30 Jul 2024 07:44:34 +0000
Received: by mail-ot1-x32f.google.com with SMTP id 46e09a7af769-7093b53f315so1376062a34.2;
        Tue, 30 Jul 2024 00:44:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722325471; x=1722930271; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wNYxaQ9fql7AcxhX+8qLd2dvHKZ22065YdHw+3VqujE=;
        b=ZBxgsEC7mJ4Vmm1CKBhd/Kiuy19S1VZUFibOVE0CxZ8Gw+qH/LaLf+RFb5prHIXahA
         b/AKzgXA47EoD8szLag0rTVp1uNcb2DBBk+FU9vwINiFwe6KdamH47ity0AUtn583/X6
         yiFUOenA59diJlJqEvZbs64Kgvu5be+Gl4kbI/rJoDvcsKJ5lI9AVP1uUTs+HO/zGd6d
         GkRMfdZy91c5gk0mrNwhfTKSkzNnOz3zc5cyibYuC/Uzwyi6rUJso60lX9T4fR4FYsjn
         EWS2KhrRp1QGEqE2fhRwidcugM4hNDsxXmUDLSLYGcBLm8YEftS2Kjc10/8kJF5Li/gF
         jVLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722325471; x=1722930271;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wNYxaQ9fql7AcxhX+8qLd2dvHKZ22065YdHw+3VqujE=;
        b=nq+u0RTSw8RqotKOEKkUW5DxwXvkafcN6ElxBWowEB21LSPsIoVridoaBW6wJHscld
         inI0erYWLLtI7513ALTrb7by8wO0K5ZA8tWNsbWTC/qGC95RiqAnDiasJTE0p1FY3lGL
         BuzXATfTTqMyNMJ45hHwNjfQHMgW+FZpLBOABg/JU2yYU9PoXqv0X+WnSFxdjlt9ueZj
         ScqCJbDB9fNXjap+1WBHpkdxGQJ04V7ucd1La/iCmE847drluB4gSSeYq1z3tISIFAv3
         OWA28QW1AYv3OoCRDFSPjEDnaDdKuxbFtPuUtuh0oO3c6UxnAM6d2B3y9B/GxREnkqkG
         fm5Q==
X-Forwarded-Encrypted: i=1; AJvYcCXvT5IJTDUpRNkcJD2oAngJF0lFTS11uhnx6nf91GfNOZjxH9DWPzL2TGrsHUBTndkKpUIOa1yx5tTFGkneB6bkKMGLYhL9zBwq8erqyw==
X-Gm-Message-State: AOJu0Yyjd00rVwN7/HcIoQDF62xo1wnnpgVCrzt+jn5Y9n6ndMhiqJtB
	U3Qy6UtdC38agIWFU2IsC2dysAIdBTZO6pK/xfrV2bEcnn6zw/4N
X-Google-Smtp-Source: AGHT+IHA3y9ineuFQRIfYwPGht449sZqVs7AGfDBI2LAtebiSKNfsBHTFgwPABi4zoEnD9vRCeMVdA==
X-Received: by 2002:a05:6830:6b03:b0:703:6434:aba8 with SMTP id 46e09a7af769-70940ba10f9mr16558955a34.0.1722325470596;
        Tue, 30 Jul 2024 00:44:30 -0700 (PDT)
Received: from [172.19.1.53] (60-250-192-107.hinet-ip.hinet.net. [60.250.192.107])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70ead813a19sm7867713b3a.117.2024.07.30.00.44.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jul 2024 00:44:30 -0700 (PDT)
Message-ID: <37f1ecdc-9d98-4681-803a-75442fe04ab3@gmail.com>
Date: Tue, 30 Jul 2024 15:44:26 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: phy: nuvoton,ma35-usb2-phy: add new
 bindings
To: Krzysztof Kozlowski <krzk@kernel.org>, vkoul@kernel.org,
 kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240729061509.83828-1-hpchen0nvt@gmail.com>
 <20240729061509.83828-2-hpchen0nvt@gmail.com>
 <c4c2b30a-8ff9-4fc4-a1ed-adcd366d15a7@kernel.org>
Content-Language: en-US
From: Hui-Ping Chen <hpchen0nvt@gmail.com>
In-Reply-To: <c4c2b30a-8ff9-4fc4-a1ed-adcd366d15a7@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_004432_351788_5ADB4296 
X-CRM114-Status: GOOD (  19.26  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

RGVhciBLcnp5c3p0b2YsCgpUaGFuayB5b3UgZm9yIHlvdXIgcmVwbHkuCgoKCk9uIDIwMjQvNy8y
OSDkuIvljYggMDM6MjksIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4gT24gMjkvMDcvMjAy
NCAwODoxNSwgaHBjaGVuMCB3cm90ZToKPj4gQWRkIGR0LWJpbmRpbmdzIGZvciBVU0IyIFBIWSBm
b3VuZCBvbiB0aGUgTnV2b3RvbiBNQTM1IFNvQy4KPj4KPj4gU2lnbmVkLW9mZi1ieTogaHBjaGVu
MCA8aHBjaGVuMG52dEBnbWFpbC5jb20+Cj4gUGxlYXNlIHVzZSBwcm9wZXIgbmFtZS4KCk9rYXks
IEkgd2lsbCBtYWtlIHRoZSBjb3JyZWN0aW9uIGFuZCB1c2UgdGhlIGNvcnJlY3QgbmFtZS4KCgoK
Pj4gLS0tCj4+ICAgLi4uL2JpbmRpbmdzL3BoeS9udXZvdG9uLG1hMzUtdXNiMi1waHkueWFtbCAg
IHwgNTEgKysrKysrKysrKysrKysrKysrKwo+PiAgIDEgZmlsZSBjaGFuZ2VkLCA1MSBpbnNlcnRp
b25zKCspCj4+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9waHkvbnV2b3RvbixtYTM1LXVzYjItcGh5LnlhbWwKPj4KPj4gZGlmZiAtLWdpdCBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvbnV2b3RvbixtYTM1LXVzYjIt
cGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L251dm90b24s
bWEzNS11c2IyLXBoeS55YW1sCj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4+IGluZGV4IDAwMDAw
MDAwMDAwMC4uNDE1ZWEyYzQ1OTc1Cj4+IC0tLSAvZGV2L251bGwKPj4gKysrIGIvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9udXZvdG9uLG1hMzUtdXNiMi1waHkueWFtbAo+
PiBAQCAtMCwwICsxLDUxIEBACj4+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIu
MC1vbmx5IE9SIEJTRC0yLUNsYXVzZSkKPj4gKyVZQU1MIDEuMgo+PiArLS0tCj4+ICskaWQ6IGh0
dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3BoeS9udXZvdG9uLG1hMzUtdXNiMi1waHkueWFt
bCMKPj4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55
YW1sIwo+PiArCj4+ICt0aXRsZTogTnV2b3RvbiBNQTM1IFVTQjIgcGh5Cj4+ICsKPj4gK21haW50
YWluZXJzOgo+PiArICAtIGhwY2hlbjAgPGhwY2hlbjBudnRAZ21haWwuY29tPgo+IFNhbWUgaGVy
ZQpPa2F5LCBJIHdpbGwgbWFrZSB0aGUgY29ycmVjdGlvbiBhbmQgdXNlIHRoZSBjb3JyZWN0IG5h
bWUuCgoKCj4+ICsKPj4gK3Byb3BlcnRpZXM6Cj4+ICsgIGNvbXBhdGlibGU6Cj4+ICsgICAgZW51
bToKPj4gKyAgICAgIC0gbnV2b3RvbixtYTM1LXVzYjItcGh5Cj4gQWxsIG90aGVyIGRldmljZXMg
aGF2ZSBuYW1lIG1hMzVkMS4gSXMgdGhpcyBhIGRpZmZlcmVudCBTb0M/ClRoZSBTb0MgaXMgdGhl
IHNhbWUgYXMgbWEzNWQxLiBJIHdpbGwgbW9kaWZ5IG1hMzUgdG8gbWEzNWQxLgoKT3JpZ2luYWxs
eSwgSSBpbnRlbmRlZCB0byBjcmVhdGUgYSBzZXJpZXMgb2Ygc2hhcmVkIGRyaXZlcnMuCgoKCj4+
ICsKPj4gKyAgIiNwaHktY2VsbHMiOgo+PiArICAgIGNvbnN0OiAwCj4+ICsKPj4gKyAgY2xvY2tz
Ogo+PiArICAgIG1heEl0ZW1zOiAxCj4+ICsgICAgZGVzY3JpcHRpb246IFVTQiBQSFkgY2xvY2sK
PiBEcm9wIGRlc2NyaXB0aW9uLCBpdCdzIG9idmlvdXMuCk9rYXksIEkgd2lsbCByZW1vdmUgdGhl
IGRlc2NyaXB0aW9uLgoKCgo+PiArCj4+ICsgIGNsb2NrLW5hbWVzOgo+PiArICAgIGNvbnN0OiB1
c2JkX2dhdGUKPiBEcm9wIGNsb2NrLW5hbWVzLCB5b3UgZG8gbm90IGJyaW5nIGFueSBuZXcgaW5m
b3JtYXRpb24uCgpPa2F5LCBJIHdpbGwgcmVtb3ZlIHRoZSBjbG9jay1uYW1lcy4KCgoKPj4gKwo+
PiArICBudXZvdG9uLHN5czoKPj4gKyAgICAkcmVmOiAvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZp
bml0aW9ucy9waGFuZGxlCj4+ICsgICAgZGVzY3JpcHRpb246Cj4+ICsgICAgICBwaGFuZGxlIG9m
IHRoZSBzeXN0ZW0tbWFuYWdlbWVudCBub2RlLgo+IERlc2NyaWJlIHdoYXQgaXMgaXQgZm9yLgoK
QmVjYXVzZSB0aGlzIGRyaXZlciBoYXMgc29tZSBzdGF0dXMgYml0cyBsb2NhdGVkIGluIHRoZSBz
eXMsIGl0IGlzIApuZWNlc3NhcnkgdG8gcmVmZXJlbmNlIHRoZSBzeXMgbGluay4KCgoKPj4gKwo+
PiArcmVxdWlyZWQ6Cj4+ICsgIC0gY29tcGF0aWJsZQo+PiArICAtIGNsb2Nrcwo+PiArICAtIG51
dm90b24sc3lzCj4+ICsgIC0gIiNwaHktY2VsbHMiCj4gS2VlcCB0aGUgc2FtZSBvcmRlciBhcyBp
biBwcm9wZXJ0aWVzLgoKT2theSwgSSB3aWxsIGNvcnJlY3QgdGhpcyBpc3N1ZS4KCgoKPj4gKwo+
PiArYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlCj4+ICsKPj4gK2V4YW1wbGVzOgo+PiArICAt
IHwKPj4gKyAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvYXJt
LWdpYy5oPgo+IFdoZXJlIGRvIHlvdSB1c2UgaXQ/CgpUaGlzIGlzIG5vdCB1c2VkIGFuZCB3aWxs
IGJlIHJlbW92ZWQuIFRoYW5rcyBmb3IgdGhlIHJlbWluZGVyLgoKCgo+PiArICAgICNpbmNsdWRl
IDxkdC1iaW5kaW5ncy9jbG9jay9udXZvdG9uLG1hMzVkMS1jbGsuaD4KPj4gKwo+PiArICAgIHVz
Yl9waHk6IHVzYi1waHkgewo+PiArICAgICAgICBjb21wYXRpYmxlID0gIm51dm90b24sbWEzNS11
c2IyLXBoeSI7Cj4+ICsgICAgICAgIGNsb2NrcyA9IDwmY2xrIFVTQkRfR0FURT47Cj4+ICsgICAg
ICAgIGNsb2NrLW5hbWVzID0gInVzYmRfZ2F0ZSI7Cj4+ICsgICAgICAgIG51dm90b24sc3lzID0g
PCZzeXM+Owo+PiArICAgICAgICAjcGh5LWNlbGxzID0gPDA+Owo+PiArICAgIH07Cj4gQmVzdCBy
ZWdhcmRzLAo+IEtyenlzenRvZgoKCkJlc3QgcmVnYXJkcywKCkh1aS1QaW5nIENoZW4KCgoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
