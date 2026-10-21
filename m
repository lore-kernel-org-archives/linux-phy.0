Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE364606A319
	for <linux-phy@archiver.kernel.org>; Wed, 21 Oct 2026 08:53:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=XNAw0ieB;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=phud/5S5;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=F3UG+bUT
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bVmjs69gUndivOlgFfGvhKo20T7jw15bFXsuAmaYQxo=; b=XNAw0ieBKyiPsh
	5V6ad7yJ0Cd6IXnHnr51i2m6eAimHlRer2Hjtx4ieXutSY0Ih/dv1aH8pdBK71alpmjfBJ/mxf2rF
	mgHOaAeEahqN68ydPoDsyPCwof4xxTAhrSOCoYM2jyBud9nwM1y4RwZEuAqNrDvMEEIYOpK+RuuPj
	yEWbuCa4D2hC1wswF9pwMCzVSzHdV9edqgv4pqkGqRPY1S/7K5+OpQtFJTyy78tzOpejWKamj1hGX
	OKodloh98S7cjB4Fxl+YK7EFco+ZsY2N/tG8HuaKmf7j0NTfD+grTJnOxJkgxrpTUjpa0fAEsXK/Q
	ACmoIr1bdNzDvZLBIh7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJS4U-0000000BPyY-0nF2;
	Wed, 21 Oct 2026 08:53:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJS4S-0000000BPyD-16xT
	for linux-phy@bombadil.infradead.org;
	Wed, 21 Oct 2026 08:53:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=iPMD+7nAdoDF4dLXoWfSbpzZ6Oz4vyFuN1XIGNi1WO0=; b=phud/5S5xklhOpkiA3phn+Yk5w
	sAT2KzdCAgd37dOqVMAUobxgbkqRCirVo7qHTU1woCNr53r+JZEu8mP0Vk1uVxgqiSNNPCTSO9SnC
	Mf28kFQQk1oldO8xdwPGFAup7Sn6Y2kL5tehnP773QbIE8jlczBiLTmvJS7Qcy4UKdl3NhoeERfj2
	G++mW6CfJ4NjK4aPjRAVXOl0diNqmHlrqGWeqLHaRLbYfGCGCPlwv6rDV77CTafeBgR7f/5UH5T4o
	HkKnvoiyTtS2FwNcJv/X7MJdNM6pqmqqVbF0HEO8EWsLvHdjnlNO19bUN9Qb8vxl2efVeqoLxtJis
	Bd36SLOw==;
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xJS4P-00000005cYq-1Byd
	for linux-phy@lists.infradead.org;
	Wed, 21 Oct 2026 08:53:15 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-49d05d51553so3016745e9.2
        for <linux-phy@lists.infradead.org>; Wed, 21 Oct 2026 01:53:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1792572791; x=1793177591; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=iPMD+7nAdoDF4dLXoWfSbpzZ6Oz4vyFuN1XIGNi1WO0=;
        b=F3UG+bUTJ53cg+PrS5ZJl7MXiNEBMso+dYbgyR6pMiPssHb/Qzh1P2f75WsB9hw1DL
         FC+z2SY5OZaIfCvQ2yHIJEUNtl55JueSixdBfshh7+rXnPM6GtxfQ1QElp8a3I8V1P4b
         HABRgJSvegZpWg5zDyI6NAX4xP5LsjU+v8wwuDQTexVOoT7to20eG7ol7jILuRYWU73D
         Oq0nmQqPSg/fpCI5r8GgxNENi5tLqhCIYmEfXYwewnkUPJ+OBx2oqfMPyqU76DvBBcAA
         M9GcudmHcP1eRQVEG4HCsM9bdEOd5ix8TGymDamn+XuhKEyCfojse5dVvfjBrx3Uq5Ho
         g7rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792572791; x=1793177591;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=iPMD+7nAdoDF4dLXoWfSbpzZ6Oz4vyFuN1XIGNi1WO0=;
        b=GP4p4PISQkX0vGvMnBOSylLWOb8s52K7aQUMKzRNWJ+ktHrTMAytK0/Ynmdoku7IdI
         hq4+lmTz62SHvAFoT/BTP0+OonwYss3+hoRANnsMQxbyF8rO+OX45gYtkNt53PjXELYr
         3pO55IgR0gYBvfKTT7NqxhzhfCRuaDFHXH+4V99IXnhMF0SWUPfckS4QIKvHsgtwiKQC
         pmxKJiPJYATDQCchEimE8QLGPUjjT0RnxqXbrdIFvqDzDciWXpwA64EReA5RLsUlV55k
         bs6Qcvr/Gq8Thg9e+la7qeLMJnDA1/Z7jRjh1XuByY9U/DK7CKY6cpMABzJfxWiBGBMz
         OQrg==
X-Gm-Message-State: AFq9FYIzN2HJNf5fPsCi+eVWrP+l4xO7BlpHvaz301utWEiCW3sNBNl1
	ben5vbvcllpHPkB6LlSBtvCc3ki9Wf8HOKUc7A53dhYjLamEYIPpkydZohQTKB03L+s=
X-Gm-Gg: AYBFou2VWTGA5kSnE5UeOW5wMsDs9cWjRKcpW/+rRxwDDxnX6myHjRq8j4Gljce5WvJ
	gX3PP3y2i1D/5lSBGulVHW3ylwDFQXQL5FpUaC1iFd5dpGO3uGA81O7BTaEaUPGONliO0iBGXWg
	8wg5B46U/y/XcWTCnjKb4IcF9e44aCtapyP9gMoqIAFIcO1y6Utqk181xK1F3XNqqWN9AOwt5EO
	h6LuXipHn4J6F4dzjvAFWPaz2FPnS6lbS/io4HGrdT0SAkBFq0DNuWCIJNXaHceO/fRJA/tEopQ
	nwa7B3yltTAU7MTU3kN3eOHB/gSMgkZNSxuVXo/CUcNlzkzGtk+k24tqClcmyK0XlR4lvtoZpHX
	lChH2/R2PiP6ZlbwYB6+KHld+7tvhEVC+fva6b5tpm/o+l6KZCd+qu5Xc/wKxHq5sPaajvjYe8q
	TfaRpqO4CoqY7SoS25Z9cXETy77etKwkp0bbfTJvCRKRHllpstDqhFvWcy7HPeUEHzoWYwGgQap
	fwqC6XicXJyxtNqvLG6hcHP5hCLz27oHaP+HT493erlDNl1q7D8cmQ2k/JVaYSe1kzY1Q==
X-Received: by 2002:a05:600c:800e:b0:4a1:cedc:ab51 with SMTP id 5b1f17b1804b1-4a1fdd3a79fmr31334015e9.35.1792572790953;
        Wed, 21 Oct 2026 01:53:10 -0700 (PDT)
Received: from [192.168.0.167] ([78.152.223.156])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a20049941dsm14290625e9.11.2026.10.21.01.53.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Oct 2026 01:53:10 -0700 (PDT)
Message-ID: <dbde0e35-8246-4f69-b3be-cd617a1767d9@linaro.org>
Date: Wed, 21 Oct 2026 09:53:08 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v21 04/14] media: qcom: camss: Issue stream-on REG_UPDATE
 from CSID
To: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>,
 Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
 Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, jeyaprakash.soundrapandian@oss.qualcomm.com,
 Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
References: <20261011-kaanapali-camss-v21-0-04fd28d815c6@oss.qualcomm.com>
 <20261011-kaanapali-camss-v21-4-04fd28d815c6@oss.qualcomm.com>
 <3843110c-4766-4352-ab2a-6d3017336534@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <3843110c-4766-4352-ab2a-6d3017336534@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261021_095313_480841_A8426DD2 
X-CRM114-Status: GOOD (  31.64  )
X-Spam-Score: -0.2 (/)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gMjEvMTAvMjAyNiAwODozNywgV2VubWVuZyBMaXUgd3JvdGU6Cj4gCj4gSGkgQnJ5YW4sIEhh
bmd4aWFuZywKPiAKPiBPbiAxMC8xMi8yMDI2IDI6NDUgUE0sIEhhbmd4aWFuZyBNYSB3cm90ZToK
Pj4gT24gc3RyZWFtLW9uLCBDQU1TUyBzdGFydHMgdGhlIHN1YmRldmljZXMgdXBzdHJlYW0gZnJv
bSB0aGUgdmlkZW8gbm9kZQo+PiB0aHJvdWdoIHRoZWlyIHNpbmsgcGFkcywgc28gdGhlIFZGRSBp
cyBzdGFydGVkIGJlZm9yZSB0aGUgQ1NJRC4KPj4KPj4gU3RhcnRpbmcgd2l0aCBDU0lEIDY4MCwg
dGhlIFJFR19VUERBVEUgaXMgaXNzdWVkIHRocm91Z2ggdGhlIENTSUQKPj4gcmF0aGVyIHRoYW4g
dGhlIFZGRS4gSG93ZXZlciwgdmZlX2VuYWJsZV9vdXRwdXRfdjIoKSBzdGlsbCBpc3N1ZXMgYQo+
PiBSRUdfVVBEQVRFIGFmdGVyIHF1ZXVlaW5nIGVhY2ggaW5pdGlhbCBidWZmZXIsIGJlZm9yZSB0
aGUgQ1NJRCBoYXMKPj4gY29uZmlndXJlZCB0aGUgc3RyZWFtLiBUaGUgVkZFIHRoZW4gbmV2ZXIg
c2lnbmFscyBCVUZfRE9ORS4gVGhlcmVmb3JlLAo+PiB0aGUgQ0FNU1Mgbm93IGlzc3VlcyB0aGUg
UkVHX1VQREFURSBmcm9tIGNvbmZpZ3VyZV9zdHJlYW0oKSBvbiBDU0lEIDY4MAo+PiBhbmQgQ1NJ
RCBHZW4zIGluc3RlYWQuIFRoZSBvcGVyYXRpb24gaGFwcGVucyBhZnRlciB0aGUgUlggY29uZmln
dXJhdGlvbgo+PiBhbmQgYmVmb3JlIHRoZSBSREkgcGF0aCBpcyBlbmFibGVkLgo+Pgo+PiBTa2lw
IHRoZSBWRkUtc2lkZSBzdHJlYW0tb24gUkVHX1VQREFURSBvbmx5IHdoZW4gdGhlIENTSUQgY29u
bmVjdGVkIHRvCj4+IHRoZSBWRkUgc2luayBwYWQgaW1wbGVtZW50cyB0aGUgcmVnX3VwZGF0ZSBj
YWxsYmFjay4gUGxhdGZvcm1zIHdob3NlCj4+IENTSUQgZG9lcyBub3QgcHJvdmlkZSB0aGlzIGNh
bGxiYWNrLCBhcyB3ZWxsIGFzIGxpbmVzIGZlZCBieSBJU1BJRiwKPj4ga2VlcCB0aGUgZXhpc3Rp
bmcgVkZFLXNpZGUgUkVHX1VQREFURS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogSGFuZ3hpYW5nIE1h
IDxoYW5neGlhbmcubWFAb3NzLnF1YWxjb21tLmNvbT4KPj4gLS0tCj4+IMKgIGRyaXZlcnMvbWVk
aWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy1jc2lkLTY4MC5jIHzCoCAzICsrCj4+IMKgIC4u
Li9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLWNzaWQtZ2VuMy5jwqDCoMKgIHzCoCAz
ICsrCj4+IMKgIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy12ZmUuY8Kg
wqDCoMKgwqAgfCAzNyArKysrKysrKysrKysgCj4+ICsrKysrKysrKy0KPj4gwqAgMyBmaWxlcyBj
aGFuZ2VkLCA0MiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+Cj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MtY3NpZC02ODAuYyBiLyAK
Pj4gZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLWNzaWQtNjgwLmMKPj4g
aW5kZXggMzQ1YTY3YzhmYjk0Li41NTZjZGZlZjYyMDcgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy1jc2lkLTY4MC5jCj4+ICsrKyBiL2RyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy1jc2lkLTY4MC5jCj4+IEBAIC0yOTYs
NiArMjk2LDggQEAgc3RhdGljIHZvaWQgX19jc2lkX2NvbmZpZ3VyZV9yZGlfc3RyZWFtKHN0cnVj
dCAKPj4gY3NpZF9kZXZpY2UgKmNzaWQsIHU4IGVuYWJsZSwgdTgKPj4gwqDCoMKgwqDCoCB3cml0
ZWwodmFsLCBjc2lkLT5iYXNlICsgQ1NJRF9SRElfQ0ZHMChwb3J0KSk7Cj4+IMKgIH0KPj4gK3N0
YXRpYyB2b2lkIGNzaWRfc3ViZGV2X3JlZ191cGRhdGUoc3RydWN0IGNzaWRfZGV2aWNlICpjc2lk
LCBpbnQgCj4+IHBvcnRfaWQsIGJvb2wgaXNfY2xlYXIpOwo+PiArCj4+IMKgIHN0YXRpYyB2b2lk
IGNzaWRfY29uZmlndXJlX3N0cmVhbShzdHJ1Y3QgY3NpZF9kZXZpY2UgKmNzaWQsIHU4IGVuYWJs
ZSkKPj4gwqAgewo+PiDCoMKgwqDCoMKgIGludCBpOwo+PiBAQCAtMzA3LDYgKzMwOSw3IEBAIHN0
YXRpYyB2b2lkIGNzaWRfY29uZmlndXJlX3N0cmVhbShzdHJ1Y3QgCj4+IGNzaWRfZGV2aWNlICpj
c2lkLCB1OCBlbmFibGUpCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoY3NpZC0+cGh5LmVuX3Zj
ICYgQklUKGkpKSB7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIF9fY3NpZF9jb25maWd1
cmVfcmRpX3N0cmVhbShjc2lkLCBlbmFibGUsIGksIDApOwo+PiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBfX2NzaWRfY29uZmlndXJlX3J4KGNzaWQsICZjc2lkLT5waHksIDApOwo+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBjc2lkX3N1YmRldl9yZWdfdXBkYXRlKGNzaWQsIGksIGZhbHNl
KTsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgX19jc2lkX2N0cmxfcmRpKGNzaWQsIGVu
YWJsZSwgaSk7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCB9Cj4+IMKgwqDCoMKgwqAgfQo+PiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLWNzaWQtZ2Vu
My5jIGIvIAo+PiBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MtY3NpZC1n
ZW4zLmMKPj4gaW5kZXggMGZkYmY3NWZiMjdkLi44MzBjOWM4MThkM2QgMTAwNjQ0Cj4+IC0tLSBh
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy1jc2lkLWdlbjMuYwo+PiAr
KysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MtY3NpZC1nZW4zLmMK
Pj4gQEAgLTIxOSw2ICsyMTksOCBAQCBzdGF0aWMgdm9pZCBfX2NzaWRfY29uZmlndXJlX3JkaV9z
dHJlYW0oc3RydWN0IAo+PiBjc2lkX2RldmljZSAqY3NpZCwgdTggZW5hYmxlLCB1OAo+PiDCoMKg
wqDCoMKgIHdyaXRlbCh2YWwsIGNzaWQtPmJhc2UgKyBDU0lEX1JESV9DRkcwKHBvcnQpKTsKPj4g
wqAgfQo+PiArc3RhdGljIHZvaWQgY3NpZF9zdWJkZXZfcmVnX3VwZGF0ZShzdHJ1Y3QgY3NpZF9k
ZXZpY2UgKmNzaWQsIGludCAKPj4gcG9ydF9pZCwgYm9vbCBpc19jbGVhcik7Cj4+ICsKPj4gwqAg
c3RhdGljIHZvaWQgY3NpZF9jb25maWd1cmVfc3RyZWFtKHN0cnVjdCBjc2lkX2RldmljZSAqY3Np
ZCwgdTggZW5hYmxlKQo+PiDCoCB7Cj4+IMKgwqDCoMKgwqAgdTggaTsKPj4gQEAgLTIzMCw2ICsy
MzIsNyBAQCBzdGF0aWMgdm9pZCBjc2lkX2NvbmZpZ3VyZV9zdHJlYW0oc3RydWN0IAo+PiBjc2lk
X2RldmljZSAqY3NpZCwgdTggZW5hYmxlKQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKGNzaWQt
PnBoeS5lbl92YyAmIEJJVChpKSkgewo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBfX2Nz
aWRfY29uZmlndXJlX3JkaV9zdHJlYW0oY3NpZCwgZW5hYmxlLCBpLCAwKTsKPj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgX19jc2lkX2NvbmZpZ3VyZV9yeChjc2lkLCAmY3NpZC0+cGh5LCAw
KTsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY3NpZF9zdWJkZXZfcmVnX3VwZGF0ZShjc2lk
LCBpLCBmYWxzZSk7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIF9fY3NpZF9jdHJsX3Jk
aShjc2lkLCBlbmFibGUsIGkpOwo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgfQo+PiDCoCB9Cj4+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MtdmZlLmMg
Yi9kcml2ZXJzLyAKPj4gbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy12ZmUuYwo+PiBp
bmRleCAyNjgwYTk5MTQ3NjUuLjE2YTBiNTY2M2ZlMiAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9t
ZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLXZmZS5jCj4+ICsrKyBiL2RyaXZlcnMvbWVk
aWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy12ZmUuYwo+PiBAQCAtNTAyLDYgKzUwMiwzNyBA
QCB2b2lkIHZmZV9idWZfZG9uZShzdHJ1Y3QgdmZlX2RldmljZSAqdmZlLCBpbnQgd20pCj4+IMKg
wqDCoMKgwqAgc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmdmZlLT5vdXRwdXRfbG9jaywgZmxhZ3Mp
Owo+PiDCoCB9Cj4+ICsvKgo+PiArICogdmZlX3Vwc3RyZWFtX2NzaWRfaGFzX3JlZ191cGRhdGUg
LSBDaGVjayB3aGV0aGVyIHRoZSBDU0lEIGZlZWRpbmcgCj4+IHRoaXMgbGluZQo+PiArICogaXNz
dWVzIGl0cyBvd24gc3RyZWFtb24gUlVQIChpLmUuIGl0cyBjb25maWd1cmVfc3RyZWFtIGRvZXMg
dGhlIFJVUCkuCj4+ICsgKgo+PiArICogVGhlIENTSUQtPlZGRSBsaW5rIGlzIGNyZWF0ZWQgaW4g
Y2Ftc3MuYyBmb3IgYWxsIENTSURzIGFuZCBWRkVzLCAKPj4gc28gdGhlCj4+ICsgKiB1cHN0cmVh
bSBlbnRpdHkgb2YgdGhlIHNpbmsgcGFkIGlzIGVpdGhlciBhIENTSUQgKHBvc3NpYmx5IHdpdGgg
Cj4+IFJVUCkgb3IgYW4KPj4gKyAqIElTUElGIChubyBSVVApLiBPbmx5IGVuYWJsZWQgbGlua3Mg
YXJlIGNvbnNpZGVyZWQuCj4+ICsgKi8KPj4gK3N0YXRpYyBib29sIHZmZV91cHN0cmVhbV9jc2lk
X2hhc19yZWdfdXBkYXRlKHN0cnVjdCB2ZmVfbGluZSAqbGluZSkKPj4gK3sKPj4gK8KgwqDCoCBz
dHJ1Y3QgdmZlX2RldmljZSAqdmZlID0gdG9fdmZlKGxpbmUpOwo+PiArwqDCoMKgIHN0cnVjdCBj
YW1zcyAqY2Ftc3MgPSB2ZmUtPmNhbXNzOwo+PiArwqDCoMKgIHN0cnVjdCBtZWRpYV9wYWQgKnJl
bW90ZTsKPj4gK8KgwqDCoCB1bnNpZ25lZCBpbnQgaTsKPj4gKwo+PiArwqDCoMKgIHJlbW90ZSA9
IG1lZGlhX3BhZF9yZW1vdGVfcGFkX2ZpcnN0KCZsaW5lLT5wYWRzW01TTV9WRkVfUEFEX1NJTktd
KTsKPj4gK8KgwqDCoCBpZiAoIXJlbW90ZSB8fCAhaXNfbWVkaWFfZW50aXR5X3Y0bDJfc3ViZGV2
KHJlbW90ZS0+ZW50aXR5KSkKPj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiBmYWxzZTsKPj4gKwo+
PiArwqDCoMKgIGZvciAoaSA9IDA7IGkgPCBjYW1zcy0+cmVzLT5jc2lkX251bTsgaSsrKSB7Cj4+
ICvCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgY3NpZF9kZXZpY2UgKmNzaWQgPSAmY2Ftc3MtPmNzaWRb
aV07Cj4+ICsKPj4gK8KgwqDCoMKgwqDCoMKgIGlmICgmY3NpZC0+c3ViZGV2LmVudGl0eSAhPSBy
ZW1vdGUtPmVudGl0eSkKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29udGludWU7Cj4+ICsK
Pj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiAhIWNzaWQtPnJlcy0+aHdfb3BzLT5yZWdfdXBkYXRl
Owo+PiArwqDCoMKgIH0KPj4gKwo+PiArwqDCoMKgIHJldHVybiBmYWxzZTsKPj4gK30KPj4gKwo+
PiDCoCBpbnQgdmZlX2VuYWJsZV9vdXRwdXRfdjIoc3RydWN0IHZmZV9saW5lICpsaW5lKQo+PiDC
oCB7Cj4+IMKgwqDCoMKgwqAgc3RydWN0IHZmZV9kZXZpY2UgKnZmZSA9IHRvX3ZmZShsaW5lKTsK
Pj4gQEAgLTUxMSw2ICs1NDIsNyBAQCBpbnQgdmZlX2VuYWJsZV9vdXRwdXRfdjIoc3RydWN0IHZm
ZV9saW5lICpsaW5lKQo+PiDCoMKgwqDCoMKgIHVuc2lnbmVkIGxvbmcgZmxhZ3M7Cj4+IMKgwqDC
oMKgwqAgdW5zaWduZWQgaW50IGZyYW1lX3NraXAgPSAwOwo+PiDCoMKgwqDCoMKgIHVuc2lnbmVk
IGludCBpOwo+PiArwqDCoMKgIGJvb2wgcnVwX2luX2NzaWQ7Cj4+IMKgwqDCoMKgwqAgc2Vuc29y
X3BhZCA9IGNhbXNzX2ZpbmRfc2Vuc29yX3BhZCgmbGluZS0+c3ViZGV2LmVudGl0eSk7Cj4+IMKg
wqDCoMKgwqAgaWYgKHNlbnNvcl9wYWQpIHsKPj4gQEAgLTUyMyw2ICs1NTUsOCBAQCBpbnQgdmZl
X2VuYWJsZV9vdXRwdXRfdjIoc3RydWN0IHZmZV9saW5lICpsaW5lKQo+PiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBmcmFtZV9za2lwID0gVkZFX0ZSQU1FX0RST1BfVkFMIC0gMTsKPj4gwqDC
oMKgwqDCoCB9Cj4+ICvCoMKgwqAgcnVwX2luX2NzaWQgPSB2ZmVfdXBzdHJlYW1fY3NpZF9oYXNf
cmVnX3VwZGF0ZShsaW5lKTsKPj4gKwo+PiDCoMKgwqDCoMKgIHNwaW5fbG9ja19pcnFzYXZlKCZ2
ZmUtPm91dHB1dF9sb2NrLCBmbGFncyk7Cj4+IMKgwqDCoMKgwqAgb3BzLT5yZWdfdXBkYXRlX2Ns
ZWFyKHZmZSwgbGluZS0+aWQpOwo+PiBAQCAtNTUyLDcgKzU4Niw4IEBAIGludCB2ZmVfZW5hYmxl
X291dHB1dF92MihzdHJ1Y3QgdmZlX2xpbmUgKmxpbmUpCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBv
dXRwdXQtPmdlbjIuYWN0aXZlX251bSsrOwo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgb3BzLT52ZmVf
d21fdXBkYXRlKHZmZSwgb3V0cHV0LT53bV9pZHhbMF0sCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgb3V0cHV0LT5idWZbaV0tPmFkZHJbMF0sIGxpbmUpOwo+PiAt
wqDCoMKgwqDCoMKgwqAgb3BzLT5yZWdfdXBkYXRlKHZmZSwgbGluZS0+aWQpOwo+PiArwqDCoMKg
wqDCoMKgwqAgaWYgKCFydXBfaW5fY3NpZCkKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgb3Bz
LT5yZWdfdXBkYXRlKHZmZSwgbGluZS0+aWQpOwo+PiDCoMKgwqDCoMKgIH0KPj4gwqDCoMKgwqDC
oCBzcGluX3VubG9ja19pcnFyZXN0b3JlKCZ2ZmUtPm91dHB1dF9sb2NrLCBmbGFncyk7Cj4+Cj4g
Cj4gQWNjb3JkaW5nIHRvIHRoZSBoYXJkd2FyZSBkb2N1bWVudGF0aW9uOgo+IFN0YXJ0aW5nIHdp
dGggQ1NJRCA2ODAsIENBTUlGIGhhcyBtb3ZlZCBpbnRvIHRoZSBDU0lELiBBcyBhIHJlc3VsdCwg
UlVQIAo+IGlzIG5vdyBpc3N1ZWQgYnkgdGhlIENTSUQgYW5kIHByb3BhZ2F0ZWQgdG8gdGhlIElG
RS4KPiAKPiBTdGFydGluZyB3aXRoIENTSUQgOTgwLCBzb2Z0d2FyZSBtdXN0IGFsc28gc2V0IHRo
ZSBTRVQgYml0IGluIAo+IFJVUF9BVVBfQ01EIGFmdGVyIGlzc3VpbmcgdGhlIFJVUC9BVVAgY29t
bWFuZC4gT3RoZXJ3aXNlLCB0aGUgaGFyZHdhcmUgCj4gaWdub3JlcyB0aGUgY29tbWFuZCBhbmQg
dGhlIGNvcnJlc3BvbmRpbmcgcmVnaXN0ZXIgdXBkYXRlIGRvZXMgbm90IHRha2UgCj4gZWZmZWN0
Lgo+IAo+IAo+IEJyeWFuLCBhY2NvcmRpbmcgdG8gdGhlIEhXIGRvY3VtZW50YXRpb24sIHRoZSBj
aGFuZ2UgaXRzZWxmIGlzIAo+IGNvbnNpc3RlbnQgd2l0aCB0aGUgcmVxdWlyZWQgcHJvZ3JhbW1p
bmcgc2VxdWVuY2UuIFRoZSBtYWluIHF1ZXN0aW9uIGlzIAo+IHdoZXRoZXIgdGhpcyBpcyB0aGUg
cmlnaHQgaW1wbGVtZW50YXRpb24gZnJvbSB0aGUgZHJpdmVyIHBlcnNwZWN0aXZlLCBvciAKPiBp
ZiB0aGVyZSBpcyBhIGNsZWFuZXIgd2F5IHRvIGhhbmRsZSBpdC4KPiAKPiBJIGhhdmUgdGVzdGVk
IHRoZSBjaGFuZ2Ugb24gdGhlIEhhbW9hIEVWSyBib2FyZC4KPiBUZXN0ZWQtYnk6IFdlbm1lbmcg
TGl1IDx3ZW5tZW5nLmxpdUBvc3MucXVhbGNvbW0uY29tPiAjIEhhbW9hIEVWSwo+IAo+IAo+IFRo
YW5rcywKPiBXZW5tZW5nCgpPSyB0aGFuayB5b3UgZm9yIHRoZSBleHBsYW5hdGlvbi4KCk9UT0gg
SSBhZ3JlZSB3aXRoIExvaWMncyBzdGF0ZW1lbnQgLSBpdCBpcyBjbGVhbmVyIHRvIHN1YnRyYWN0
IHRoZSAKY2FsbGJhY2sgYW5kIGRpc2p1bmN0IG9uIGl0cyBwcmVzZW5jZSB0aGFuIHRvIGFkZCBh
IGZsYWcgdG8gdGhlIHNhbWUgCmVmZmVjdCBpbiByZXZlcnNlLgoKLS0tCmJvZAoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
