Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D133C83F25
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jul 2025 16:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=akDYzuzD6gjr64XvrdtrAbEchppaGM6Dgv01059aZw8=; b=OEhgMjfr0WPTkV
	jf3N3wFEXhLyB+iwD4Mro0kMG3nfTJZ1nJOac+1li6XxlIX9gynyO6fhf7GR6bnfW6HNoq2JleSxV
	BrNWeuicvJEGThjH4QiEbyNz7jWWVCJGs+/gTg7NjBAtCWgxt/syyEL/owngFr9Yq9Y4Xz+b6fT+p
	HvcLAmAqZa21KZ7hvSqsMQiFyqx7XmMLnw55D7cCEe1YqiCobqkp47wsc3jr2aCoOkFQYqae4JZzq
	mydeX2dYfe9KPDFMtGuPVnVy5Pbna2Cz61UPgtjHXpR19jo+IFLrEtSbnYo4cZMXsNZ9rCkTB+Qlo
	bVVUW+nwRxo4bI3R4fIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udtay-00000000Boh-3TWA;
	Mon, 21 Jul 2025 16:42:32 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udr0j-0000000HRXq-20IQ
	for linux-phy@lists.infradead.org;
	Mon, 21 Jul 2025 13:56:58 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-456108bf94bso30641635e9.0
        for <linux-phy@lists.infradead.org>; Mon, 21 Jul 2025 06:56:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753106216; x=1753711016; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JHT+Ky9a2/UvB6vMaIGkjzmNbUyHiZwcZw1UdHqqBQM=;
        b=rpWRRbCjMTKif9uYVWGIoiltq90fA761C4nZAKUtRkqtjxuX9L+VHVvVpveDtbBfPf
         ZmvKzuYLS/ULLCFjNIiiLw/+P/Bg5B0zUOIj8n7ZjiGKqg0h/RmuW7u1RiPDy/L72IRn
         4ERgM0JjeOi02lpb9/Fu29G/H68Yu0qbR3vlxXe7CJ6MGYZYMskza/N2WrQ8j1AS8JYH
         ZNITtoEubzEKb4eaA40iaxtXH8iO/e1EwUQArnJ1Ps+4J0+p2LTTKTmQGmr8dXvjvb0X
         lH0E8HhcVVyT9aX1t+S5u5TFlIjkRXTztGVz2KIcl680i4SIVM6rNzLM+DRZLI1RhOOV
         oh/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753106216; x=1753711016;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JHT+Ky9a2/UvB6vMaIGkjzmNbUyHiZwcZw1UdHqqBQM=;
        b=m0TLKKrV2S03GS1PBvnNY61/D77bDben9Ze9V6Taev+q4EWZkjx1x2VBfpm34KgyV0
         NzZJqieUoXs/a+LT2ojMGegLo21ky95hNUpUSwkUg+1cizKPU7cLe2ayGNIlr2fup+iU
         dsl90VzHYHZGX8dDf8jiut/j+GHajwCNLfvHFUE7LXs0gbPjgTN6rADyqlXnX5slkNPV
         86IIrzOiItSuzVqIkCkEj4G/qjrG8klUBja/kzKT6Hxg2UmgRguqeVNT7HanlzIE/oMZ
         DoYL3LoRnEkwsSz0wVpHzGil/u7ifFOVEfNx7iQ/NRWn65/X4iHwtr+SFXO08A7JL/Aq
         HWiA==
X-Forwarded-Encrypted: i=1; AJvYcCX+gptV9JDqYwvJr4jtT81VAKbilRcrCMYP7htxFSVG4sHdrHBOqR1UZRpjaFFfdzOgvCshcNkav5I=@lists.infradead.org
X-Gm-Message-State: AOJu0YybjayY6PnmsTWx+gSvPoN8i5o8StX5hFuvcPjc+XSKdWxpNBH7
	6fk875lVM7XKzPfBc3yKiZfEa2f1i07k5WHJ3otCODbQ+kh+XwFJ0aLyVmS8ZjSj3q4=
X-Gm-Gg: ASbGnctnip0SP+uXOn0PCNIaxDcTI/rFtezc7byXa2Bsa+GDOj/0rI+3e4R1U70JfAP
	0+Lxe39cKtgeE3LhPqziu7U9q24W50N+O50foQvTbyuzyE10jEaVl1eVv/Vgj/mDQiaG0eX2ZEq
	qE0fBsFegpLenbDwX3MkEQ56+XP7C0URly9nR0ymL3inDVmTLMTg8oXrLVEeDyJ+Oj+jVZ+Vg47
	Nvu+ei3uZLb28BLrpq5m5eCkCt8pBmhcYM3Y1aYqDQz5r/yzMVTsohU911C4ean+Tr3C2PqztRi
	LxfMzhc9vdCUnoSJnLrXWLVcXyHeN6ZdIy0UaDrvUIIyGWdC1764jsCyRJ7Izp24W8Ten75Pdzo
	kq7r4a9ZF5h+LlLwcO9mW8VAm/ponjna08AYRXb/WhJsjjsLPNzNM45if3V7MY6s=
X-Google-Smtp-Source: AGHT+IEnENRwxRTagl2ObT85GvHrjPuSySOktSH3L1SkrP+cMadSvWvWuVZBD4+Hw6mPbY0X9wHrDg==
X-Received: by 2002:a05:600c:4706:b0:456:19eb:2e09 with SMTP id 5b1f17b1804b1-4562edaa08cmr189313405e9.8.1753106215717;
        Mon, 21 Jul 2025 06:56:55 -0700 (PDT)
Received: from [192.168.1.36] (p549d4bd0.dip0.t-ipconnect.de. [84.157.75.208])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4563b74f9c0sm102889435e9.28.2025.07.21.06.56.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Jul 2025 06:56:54 -0700 (PDT)
Message-ID: <c21ff3ce-c81a-4419-84fd-d394d0a06af6@linaro.org>
Date: Mon, 21 Jul 2025 15:56:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/7] nvmem: qcom-spmi-sdam: Migrate to
 devm_spmi_subdevice_alloc_and_add()
Content-Language: en-US
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 sboyd@kernel.org
Cc: jic23@kernel.org, dlechner@baylibre.com, nuno.sa@analog.com,
 andy@kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org,
 srini@kernel.org, vkoul@kernel.org, kishon@kernel.org, sre@kernel.org,
 krzysztof.kozlowski@linaro.org, u.kleine-koenig@baylibre.com,
 linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-pm@vger.kernel.org, kernel@collabora.com, wenst@chromium.org
References: <20250721075525.29636-1-angelogioacchino.delregno@collabora.com>
 <20250721075525.29636-3-angelogioacchino.delregno@collabora.com>
 <e724e6a2-21a8-436a-8809-ce73c0afa433@linaro.org>
 <b06969d2-0c35-44c7-bb2c-162942186c53@collabora.com>
From: Casey Connolly <casey.connolly@linaro.org>
In-Reply-To: <b06969d2-0c35-44c7-bb2c-162942186c53@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250721_065657_523547_D8740F52 
X-CRM114-Status: GOOD (  29.22  )
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

CgpPbiAyMS8wNy8yMDI1IDE0OjQ1LCBBbmdlbG9HaW9hY2NoaW5vIERlbCBSZWdubyB3cm90ZToK
PiBJbCAyMS8wNy8yNSAxMjo0NCwgQ2FzZXkgQ29ubm9sbHkgaGEgc2NyaXR0bzoKPj4gSGkgQW5n
ZWxvLAo+Pgo+PiBPbiAyMS8wNy8yMDI1IDA5OjU1LCBBbmdlbG9HaW9hY2NoaW5vIERlbCBSZWdu
byB3cm90ZToKPj4+IFNvbWUgUXVhbGNvbW0gUE1JQ3MgaW50ZWdyYXRlIGEgU0RBTSBkZXZpY2Us
IGludGVybmFsbHkgbG9jYXRlZCBpbgo+Pj4gYSBzcGVjaWZpYyBhZGRyZXNzIHJhbmdlIHJlYWNo
YWJsZSB0aHJvdWdoIFNQTUkgY29tbXVuaWNhdGlvbi4KPj4+Cj4+PiBJbnN0ZWFkIG9mIHVzaW5n
IHRoZSBwYXJlbnQgU1BNSSBkZXZpY2UgKHRoZSBtYWluIFBNSUMpIGFzIGEga2luZAo+Pj4gb2Yg
c3lzY29uIGluIHRoaXMgZHJpdmVyLCByZWdpc3RlciBhIG5ldyBTUE1JIHN1Yi1kZXZpY2UgZm9y
IFNEQU0KPj4+IGFuZCBpbml0aWFsaXplIGl0cyBvd24gcmVnbWFwIHdpdGggdGhpcyBzdWItZGV2
aWNlJ3Mgc3BlY2lmaWMgYmFzZQo+Pj4gYWRkcmVzcywgcmV0cmlldmVkIGZyb20gdGhlIGRldmlj
ZXRyZWUuCj4+Pgo+Pj4gVGhpcyBhbGxvd3MgdG8gc3RvcCBtYW51YWxseSBhZGRpbmcgdGhlIHJl
Z2lzdGVyIGJhc2UgYWRkcmVzcyB0bwo+Pj4gZXZlcnkgUi9XIGNhbGwgaW4gdGhpcyBkcml2ZXIs
IGFzIHRoaXMgY2FuIGJlLCBhbmQgaXMgbm93LCBoYW5kbGVkCj4+PiBieSB0aGUgcmVnbWFwIEFQ
SSBpbnN0ZWFkLgo+Pgo+PiBUaGlzIGlzIGhvbmVzdGx5IGEgcmVhbGx5IG5pY2UgaW1wcm92ZW1l
bnQgOkQ+Cj4gCj4gVGhhbmtzISA6LUQKPiAKPj4+IFNpZ25lZC1vZmYtYnk6IEFuZ2Vsb0dpb2Fj
Y2hpbm8gRGVsIFJlZ25vCj4+PiA8YW5nZWxvZ2lvYWNjaGluby5kZWxyZWdub0Bjb2xsYWJvcmEu
Y29tPgo+Pj4gLS0tCj4+PiDCoCBkcml2ZXJzL252bWVtL3Fjb20tc3BtaS1zZGFtLmMgfCA0MSAr
KysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tCj4+PiDCoCAxIGZpbGUgY2hhbmdlZCwg
MzAgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvbnZtZW0vcWNvbS1zcG1pLXNkYW0uYyBiL2RyaXZlcnMvbnZtZW0vcWNvbS0KPj4+IHNw
bWktc2RhbS5jCj4+PiBpbmRleCA0ZjFjY2E2ZWFiNzEuLjFiODBlODU2M2EzMyAxMDA2NDQKPj4+
IC0tLSBhL2RyaXZlcnMvbnZtZW0vcWNvbS1zcG1pLXNkYW0uYwo+Pj4gKysrIGIvZHJpdmVycy9u
dm1lbS9xY29tLXNwbWktc2RhbS5jCj4+PiBAQCAtOSw2ICs5LDcgQEAKPj4+IMKgICNpbmNsdWRl
IDxsaW51eC9udm1lbS1wcm92aWRlci5oPgo+Pj4gwqAgI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3Jt
X2RldmljZS5oPgo+Pj4gwqAgI2luY2x1ZGUgPGxpbnV4L3JlZ21hcC5oPgo+Pj4gKyNpbmNsdWRl
IDxsaW51eC9zcG1pLmg+Cj4+PiDCoCDCoCAjZGVmaW5lIFNEQU1fTUVNX1NUQVJUwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCAweDQwCj4+PiDCoCAjZGVmaW5lIFJFR0lTVEVSX01BUF9JRMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgMHg0MAo+Pj4gQEAgLTIwLDcgKzIxLDYgQEAKPj4+IMKgIHN0cnVjdCBz
ZGFtX2NoaXAgewo+Pj4gwqDCoMKgwqDCoCBzdHJ1Y3QgcmVnbWFwwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCAqcmVnbWFwOwo+Pj4gwqDCoMKgwqDCoCBzdHJ1Y3QgbnZtZW1fY29uZmlnwqDCoMKgwqDC
oMKgwqAgc2RhbV9jb25maWc7Cj4+PiAtwqDCoMKgIHVuc2lnbmVkIGludMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgYmFzZTsKPj4+IMKgwqDCoMKgwqAgdW5zaWduZWQgaW50wqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBzaXplOwo+Pj4gwqAgfTsKPj4+IMKgIEBAIC03Myw3ICs3Myw3IEBAIHN0YXRpYyBp
bnQgc2RhbV9yZWFkKHZvaWQgKnByaXYsIHVuc2lnbmVkIGludAo+Pj4gb2Zmc2V0LCB2b2lkICp2
YWwsCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FSU5WQUw7Cj4+PiDCoMKgwqDCoMKg
IH0KPj4+IMKgIC3CoMKgwqAgcmMgPSByZWdtYXBfYnVsa19yZWFkKHNkYW0tPnJlZ21hcCwgc2Rh
bS0+YmFzZSArIG9mZnNldCwgdmFsLAo+Pj4gYnl0ZXMpOwo+Pj4gK8KgwqDCoCByYyA9IHJlZ21h
cF9idWxrX3JlYWQoc2RhbS0+cmVnbWFwLCBvZmZzZXQsIHZhbCwgYnl0ZXMpOwo+Pj4gwqDCoMKg
wqDCoCBpZiAocmMgPCAwKQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIGRldl9lcnIoZGV2LCAiRmFp
bGVkIHRvIHJlYWQgU0RBTSBvZmZzZXQgJSN4IGxlbj0lemQsCj4+PiByYz0lZFxuIiwKPj4+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG9mZnNldCwg
Ynl0ZXMsIHJjKTsKPj4+IEBAIC0xMDAsNyArMTAwLDcgQEAgc3RhdGljIGludCBzZGFtX3dyaXRl
KHZvaWQgKnByaXYsIHVuc2lnbmVkIGludAo+Pj4gb2Zmc2V0LCB2b2lkICp2YWwsCj4+PiDCoMKg
wqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FSU5WQUw7Cj4+PiDCoMKgwqDCoMKgIH0KPj4+IMKgIC3C
oMKgwqAgcmMgPSByZWdtYXBfYnVsa193cml0ZShzZGFtLT5yZWdtYXAsIHNkYW0tPmJhc2UgKyBv
ZmZzZXQsIHZhbCwKPj4+IGJ5dGVzKTsKPj4+ICvCoMKgwqAgcmMgPSByZWdtYXBfYnVsa193cml0
ZShzZGFtLT5yZWdtYXAsIG9mZnNldCwgdmFsLCBieXRlcyk7Cj4+PiDCoMKgwqDCoMKgIGlmIChy
YyA8IDApCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgZGV2X2VycihkZXYsICJGYWlsZWQgdG8gd3Jp
dGUgU0RBTSBvZmZzZXQgJSN4IGxlbj0lemQsCj4+PiByYz0lZFxuIiwKPj4+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG9mZnNldCwgYnl0ZXMsIHJj
KTsKPj4+IEBAIC0xMTAsMjggKzExMCw0NyBAQCBzdGF0aWMgaW50IHNkYW1fd3JpdGUodm9pZCAq
cHJpdiwgdW5zaWduZWQgaW50Cj4+PiBvZmZzZXQsIHZvaWQgKnZhbCwKPj4+IMKgIMKgIHN0YXRp
YyBpbnQgc2RhbV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+Pj4gwqAgewo+
Pj4gK8KgwqDCoCBzdHJ1Y3QgcmVnbWFwX2NvbmZpZyBzZGFtX3JlZ21hcF9jb25maWcgPSB7Cj4+
PiArwqDCoMKgwqDCoMKgwqAgLnJlZ19iaXRzID0gMTYsCj4+PiArwqDCoMKgwqDCoMKgwqAgLnZh
bF9iaXRzID0gMTYsCj4+Cj4+IEkgYmVsaWV2ZSByZWdpc3RlcnMgYXJlIDggYml0cyB3aWRlLCBh
dCBsZWFzdCBvbiBRdWFsY29tbSBwbGF0Zm9ybXMuCj4+Cj4gCj4gSSB1c2VkIDE2IGJlY2F1c2Ug
dXN1YWxseSB0aGF0J3MgdGhlIHVzdWFsIGRlZmF1bHQgZm9yIFNQTUkgLSBidXQgaWYKPiB5b3Un
cmUgc3VyZQo+IGFib3V0IFF1YWxjb21tIHBsYXRmb3JtcyBoYXZpbmcgOC1iaXRzIHdpZGUgcmVn
aXN0ZXJzIGFuZCB5b3UgY2FuCj4gY29uZmlybSB0aGF0LAo+IEkgY2FuIGNoYW5nZSBib3RoIG9m
IHRob3NlIHRvIDggaW4gYSBqaWZmeS4KCnJlZ19iaXRzIHNob3VsZCBiZSAxNiwgb25seSB2YWxf
Yml0cyBuZWVkcyBjaGFuZ2luZy4KCj4gCj4gSSBhbnl3YXkgaGF2ZSB0byBzZW5kIGEgdjIgYmVj
YXVzZSBJIGZvcmdvdCBhbiBlcnJvciBjaGVjayAtIHNvIGNoYW5naW5nCj4gdGhpcyBpcwo+IG5v
dCBhIHByb2JsZW0gYXQgYWxsIGZvciBtZS4KPiAKPiBCdXQuCj4gCj4gQmVmb3JlIG1lIGNoYW5n
aW5nIC0gY2FuIHlvdSBwbGVhc2UgcGxlYXNlIHBsZWFzZSBkb3VibGUgY2hlY2sgYW5kIGNvbmZp
cm0/Cj4gCj4gSWYgeW91IGNhbiBhbHNvIGNoZWNrIHRoZSByZWdpc3RlciB3aWR0aCBvZiB0aGUg
b3RoZXJzIHRoYXQgSSBjb252ZXJ0ZWQsCj4gSSdkIHJlYWxseQo+IGFwcHJlY2lhdGUgdGhhdCAo
SSBoYXZlIG5vIGRhdGFzaGVldHMgZm9yIHFjb20gc28gaXQncyBhIGJpdCBvZiBhCj4gZ3Vlc3Np
bmcgZ2FtZSBmb3IKPiBtZSBoZXJlLi4uIDotUCksIGp1c3Qgc28gdGhhdCB3ZSBnZXQgZXZlcnl0
aGluZyByaWdodCBmcm9tIHRoZSBnZXQtCj4gZ28gLi4uIGV2ZW4gaWYKPiBhIG1pc21hdGNoIHdv
dWxkbid0IHJlYWxseSBjYXVzZSBpc3N1ZXMgaW4gdGhlIGN1cnJlbnQgc3RhdGUgb2YgdGhpbmdz
Lgo+IAo+IFRoYXQncyBiZWNhdXNlIC0gSSBqdXN0IG5vdGljZWQgLSBpbiBxY29tLXNwbWktcG1p
Yy5jLCByZWdfYml0cyBpcyAxNiwKPiBidXQgdmFsX2JpdHMKPiBpcyA4ICh3aGljaCBiYXNpY2Fs
bHkgbWVhbnMgInRoZSByZWdpc3RlcnMgYXJlIDE2LWJpdHMgd2lkZSwgYnV0IHdlCj4gYWx3YXlz
IG9ubHkKPiBjYXJlIGFib3V0IHRoZSBsb3dlciA4IGJpdHMpLgoKeWVhaCB0aGF0J3MgcmlnaHQs
IHNvIGFzIG9mIHRvZGF5IHdoZXJlIHdlIGRvbid0IGhhdmUgdGhlIHN1YmRldmljZXMgd2UKYWx3
YXlzIGdldCA4IGJpdCB2YWx1ZXMgZnJvbSB0aGUgcmVnaXN0ZXJzLgoKSSBkb24ndCBoYXZlIHNv
IG11Y2ggYWNjZXNzIHRvIGRvY3MgYW55bW9yZSBidXQgSSBvbmx5IGV2ZXIgcmVtZW1iZXIKc2Vl
aW5nIDggYml0IHdpZGUgcmVnaXN0ZXJzIG9uIFF1YWxjb21tIFBNSUNzLCBJJ3ZlIG5ldmVyIHNl
ZW4gYW55dGhpbmcKd2lkZXIsIEkgY2FuIHRoaW5rIG9mIGEgZmV3IGRyaXZlcnMgd2hlcmUgY2hh
bmdpbmcgdGhpcyB0byAxNiB3b3VsZCBmb3IKc3VyZSBjYXVzZSBoYXZvYy4KCktpbmQgcmVnYXJk
cywKCj4gCj4gVGhhbmtzIGFnYWluIQo+IAo+IENoZWVycywKPiBBbmdlbG8KLS0gCi8vIENhc2V5
IChzaGUvaGVyKQoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
