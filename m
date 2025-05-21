Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 631C6C2D0CD
	for <linux-phy@archiver.kernel.org>; Wed, 21 May 2025 14:20:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YrQSCRHn7Nu/T2UXTev9H8MEYJbLUhQ4Litas5Enz+o=; b=yVg8wzN4Kl4vRM
	YSztIxW+la0AGzsWOrr9BueALfJhbYHpU7YTyqRrNInk+0KsYMCGbDrjg5YaXSNIfY6Vn28/pSvaC
	Luuw63iNMPS4Sq7T84ImTp7VPLYxfpy1biL0S7X9aL4pGjEcQH8XICuvznnhX1z7zip9EOBgSW4bw
	Dr1U6uUlJdF9j7wW828IkUnes/Pnr2aBfrmufa1AFSka076/41lk/hTzIE4NiEytuH2ubMSzL1RUe
	PUBIvlcYcqkJDUOdcc5nDmkuIbycZxYeMf1+mQCIH5eVzY7DTsBVG7ROL9gCz3Z8NEC6Nhbk69tLp
	CP5+50P1x0+FzNiHyTQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHkJI-0000000G5eU-0LoN;
	Wed, 21 May 2025 14:20:44 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHk1B-0000000G20F-2i97
	for linux-phy@lists.infradead.org;
	Wed, 21 May 2025 14:02:02 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-2320d06b728so34523365ad.1
        for <linux-phy@lists.infradead.org>; Wed, 21 May 2025 07:02:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747836121; x=1748440921; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=U8z5zCjsJqPPABNBLHUQv6MTVvI28kl/Vcyk8IPH4kI=;
        b=VnNOCE4EjnJArjPfCqN6DAOeahOMVzedGawTUYVtQjuFQtKcc+YFobQHiZL+uGJJw9
         vBRDHcrlWWe2s5unlyrbLy0s6ZFNM3URVjFevP4U+isn8+uNNiz6/U9rxL4e+f9x3p0z
         kSnxGdc5UvW7kG/uqcOB+utWzHAvnAcIkiFn1ROXSX19Psu+3B2e2252bK5A/9WzQ6xA
         XoSnInphOZCYF80EMNQ9jShjKdxxZ1qQPjzy482X6MwDsZPegR0OPPmso3miuc/WzSp+
         eCllFyreQR1dy80PHuxUof5vpUHK50NHHbMBm1/osMTdq84A7JgYw//ucIigFyKkaNZB
         FdBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747836121; x=1748440921;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=U8z5zCjsJqPPABNBLHUQv6MTVvI28kl/Vcyk8IPH4kI=;
        b=jTZio8ffbN3nVv2v3J1RyTmMeWXIh2tHkw98JgxiY89Fmg38xIUupRpaqDlwjfVkJb
         5odgS8I4tByoZ9CEZcFW5p0eyWXH027B9io0qODwwSckF7hzttA9IAO8niaOuOs5oKhD
         6XM9pa9IIbSjIJgkrYf64GrKts0rgjwJZnR4zdpWIDWgSK6qoDQ8UMlPjfvJKiEqAGKu
         5IH5MPDY2oh4rYGe/N4HWYYOQQHBBX3dHGKB1Lwx54cAuOWflotm1GHOCfn6gzvrWdN9
         Iqr4BVBPczLOQ/N1M50F7yNWj4tLTPbP04MNGCSi1+bhmbiLlnh2Tjj4k22fIhzOKK+Y
         ov2A==
X-Forwarded-Encrypted: i=1; AJvYcCUPk/fciNtSGtTGtYsHpVXRlt8b2qBB5zio02zXm50lE/YIhFdqdRkshaCNoT6nlhY+sXEryjbyyNI=@lists.infradead.org
X-Gm-Message-State: AOJu0YzPM9haYFg7aeFkpaBZJR6rmgSGW6BciaBqWp1q8vQ280vvrCu7
	sGKAZdG2vgaUlR8kxyqmGRMepWQlebvqymElDwxskZGPLJ1ZqcD6Dk4q1oF1E9WBIg==
X-Gm-Gg: ASbGncuNFZTce7rfvVlOvbcW8eYBuoOAFxIru/nnNIQCeO/qqpJ3hKCdBqOJjTS4ahF
	RvEUErGxAgi4IL8sFMZCtoCQTu9Cfj0TW4JyXOQ7uq2hnbj+Ms8j4xjCrHt+cdkoYiCfJf04ZuA
	JEeuSZJ7wt5F5CdfbBqf5GBFBdSK1Un8xyaJ0TTcOy7Q/ldXtZLAlp/W8iChdJ8f7MB9cpccixF
	y/nMxrfhb19d7xataKBhTenH+lDofT97VRA/WdZancHaSPb/chJ7+5t97RyjG201LG4DrJ+h+1D
	S14bOWsqdzl18ZokHoltBwZsHtZBlMMmX7E53uc1LIj7eHyuV/cHp+4F9643SPcswIucKmY=
X-Google-Smtp-Source: AGHT+IHIKKP2uksl9GvcLkBetglbjC+Wy6dDEa7BT/2+qE2OwFvCRiVTKh+kE7VBMoCdz8xwjqLNFA==
X-Received: by 2002:a17:902:e5d1:b0:224:b60:3cd3 with SMTP id d9443c01a7336-231d43ada94mr273520735ad.19.1747836120495;
        Wed, 21 May 2025 07:02:00 -0700 (PDT)
Received: from thinkpad ([120.60.52.42])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-231d4ed239bsm93587855ad.219.2025.05.21.07.01.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 May 2025 07:01:59 -0700 (PDT)
Date: Wed, 21 May 2025 15:01:53 +0100
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, 
	James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com, bvanassche@acm.org, 
	andersson@kernel.org, neil.armstrong@linaro.org, dmitry.baryshkov@oss.qualcomm.com, 
	konrad.dybcio@oss.qualcomm.com, quic_rdwivedi@quicinc.com, quic_cang@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-scsi@vger.kernel.org
Subject: Re: [PATCH V5 10/11] scsi: ufs: qcom : Introduce phy_power_on/off
 wrapper function
Message-ID: <k37lk3poz6kzrgnby4sikwmz6rg4ysxsticn3opcil4j3njylp@cvmgwiw6nwy5>
References: <20250515162722.6933-1-quic_nitirawa@quicinc.com>
 <20250515162722.6933-11-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250515162722.6933-11-quic_nitirawa@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_070201_721839_50793591 
X-CRM114-Status: GOOD (  26.58  )
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

T24gVGh1LCBNYXkgMTUsIDIwMjUgYXQgMDk6NTc6MjFQTSArMDUzMCwgTml0aW4gUmF3YXQgd3Jv
dGU6CgpTdWJqZWN0IHNob3VsZCBtZW50aW9uIHVmc19xY29tX3BoeV9wb3dlcl97b24vb2ZmfSBh
cyBwaHlfcG93ZXJfe29uL29mZn0gYXJlCmdlbmVyaWMgQVBJcy4KCj4gVGhlcmUgY2FuIGJlIHNj
ZW5hcmlvcyB3aGVyZSBwaHlfcG93ZXJfb24gaXMgY2FsbGVkIHdoZW4gUEhZIGlzCj4gYWxyZWFk
eSBvbiAocGh5X2NvdW50PTEpLiBGb3IgaW5zdGFuY2UsIHVmc19xY29tX3Bvd2VyX3VwX3NlcXVl
bmNlCj4gY2FuIGJlIGNhbGxlZCBtdWx0aXBsZSB0aW1lcyBmcm9tIHVmc2hjZF9saW5rX3N0YXJ0
dXAgYXMgcGFydCBvZgo+IHVmc2hjZF9oYmFfZW5hYmxlIGNhbGwgZm9yIGVhY2ggbGluayBzdGFy
dHVwIHJldHJpZXMobWF4IHJldHJpZXMgPTMpLAo+IGNhdXNpbmcgdGhlIFBIWSByZWZlcmVuY2Ug
Y291bnQgdG8gaW5jcmVhc2UgYW5kIGxlYWRpbmcgdG8gaW5jb25zaXN0ZW50Cj4gcGh5IGJlaGF2
aW9yLgo+IAo+IFNpbWlsYXJseSwgdGhlcmUgY2FuIGJlIHNjZW5hcmlvcyB3aGVyZSBwaHlfcG93
ZXJfb24gb3IgcGh5X3Bvd2VyX29mZgo+IG1pZ2h0IGJlIGNhbGxlZCBkaXJlY3RseSBmcm9tIHRo
ZSBVRlMgY29udHJvbGxlciBkcml2ZXIgd2hlbiB0aGUgUEhZCj4gaXMgYWxyZWFkeSBwb3dlcmVk
IG9uIG9yIG9mZiByZXNwZWN0aWVseSwgY2F1c2luZyBzaW1pbGFyIGlzc3Vlcy4KPiAKPiBUbyBm
aXggdGhpcywgaW50cm9kdWNlIHVmc19xY29tX3BoeV9wb3dlcl9vbiBhbmQgdWZzX3Fjb21fcGh5
X3Bvd2VyX29mZgo+IHdyYXBwZXJzIGZvciBwaHlfcG93ZXJfb24gYW5kIHBoeV9wb3dlcl9vZmYu
IFRoZXNlIHdyYXBwZXJzIHdpbGwgdXNlIGFuCj4gaXNfcGh5X3B3cl9vbiBmbGFnIHRvIGNoZWNr
IGlmIHRoZSBQSFkgaXMgYWxyZWFkeSBwb3dlcmVkIG9uIG9yIG9mZiwKPiBhdm9pZGluZyByZWR1
bmRhbnQgY2FsbHMuIFByb3RlY3QgdGhlIGlzX3BoeV9wd3Jfb24gZmxhZyB3aXRoIGEgbXV0ZXgK
PiB0byBlbnN1cmUgc2FmZSB1c2FnZSBhbmQgcHJldmVudCByYWNlIGNvbmRpdGlvbnMuCj4gCgpU
aGlzIHNtZWxscyBsaWtlIHRoZSBwaHlfcG93ZXJfe29uL29mZn0gY2FsbHMgYXJlIG5vdCBiYWxh
bmNlZCBhbmQgeW91IGFyZQp0cnlpbmcgdG8gd29ya2Fyb3VuZCB0aGF0IGluIHRoZSBVRlMgZHJp
dmVyLgoKLSBNYW5pCgo+IENvLWRldmVsb3BlZC1ieTogQ2FuIEd1byA8cXVpY19jYW5nQHF1aWNp
bmMuY29tPgo+IFNpZ25lZC1vZmYtYnk6IENhbiBHdW8gPHF1aWNfY2FuZ0BxdWljaW5jLmNvbT4K
PiBTaWduZWQtb2ZmLWJ5OiBOaXRpbiBSYXdhdCA8cXVpY19uaXRpcmF3YUBxdWljaW5jLmNvbT4K
PiAtLS0KPiAgZHJpdmVycy91ZnMvaG9zdC91ZnMtcWNvbS5jIHwgNDQgKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKy0tLS0tLQo+ICBkcml2ZXJzL3Vmcy9ob3N0L3Vmcy1xY29tLmggfCAg
NCArKysrCj4gIDIgZmlsZXMgY2hhbmdlZCwgNDEgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMo
LSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy91ZnMvaG9zdC91ZnMtcWNvbS5jIGIvZHJpdmVy
cy91ZnMvaG9zdC91ZnMtcWNvbS5jCj4gaW5kZXggM2VlNGFiOTBkZmJhLi41ODNkYjkxMGVmZDQg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy91ZnMvaG9zdC91ZnMtcWNvbS5jCj4gKysrIGIvZHJpdmVy
cy91ZnMvaG9zdC91ZnMtcWNvbS5jCj4gQEAgLTQ3OSw2ICs0NzksMzggQEAgc3RhdGljIHUzMiB1
ZnNfcWNvbV9nZXRfaHNfZ2VhcihzdHJ1Y3QgdWZzX2hiYSAqaGJhKQo+ICAJcmV0dXJuIFVGU19I
U19HMzsKPiAgfQo+ICAKPiArc3RhdGljIGludCB1ZnNfcWNvbV9waHlfcG93ZXJfb24oc3RydWN0
IHVmc19oYmEgKmhiYSkKPiArewo+ICsJc3RydWN0IHVmc19xY29tX2hvc3QgKmhvc3QgPSB1ZnNo
Y2RfZ2V0X3ZhcmlhbnQoaGJhKTsKPiArCXN0cnVjdCBwaHkgKnBoeSA9IGhvc3QtPmdlbmVyaWNf
cGh5Owo+ICsJaW50IHJldCA9IDA7Cj4gKwo+ICsJZ3VhcmQobXV0ZXgpKCZob3N0LT5waHlfbXV0
ZXgpOwo+ICsJaWYgKCFob3N0LT5pc19waHlfcHdyX29uKSB7Cj4gKwkJcmV0ID0gcGh5X3Bvd2Vy
X29uKHBoeSk7Cj4gKwkJaWYgKCFyZXQpCj4gKwkJCWhvc3QtPmlzX3BoeV9wd3Jfb24gPSB0cnVl
Owo+ICsJfQo+ICsKPiArCXJldHVybiByZXQ7Cj4gK30KPiArCj4gK3N0YXRpYyBpbnQgdWZzX3Fj
b21fcGh5X3Bvd2VyX29mZihzdHJ1Y3QgdWZzX2hiYSAqaGJhKQo+ICt7Cj4gKwlzdHJ1Y3QgdWZz
X3Fjb21faG9zdCAqaG9zdCA9IHVmc2hjZF9nZXRfdmFyaWFudChoYmEpOwo+ICsJc3RydWN0IHBo
eSAqcGh5ID0gaG9zdC0+Z2VuZXJpY19waHk7Cj4gKwlpbnQgcmV0ID0gMDsKPiArCj4gKwlndWFy
ZChtdXRleCkoJmhvc3QtPnBoeV9tdXRleCk7Cj4gKwlpZiAoaG9zdC0+aXNfcGh5X3B3cl9vbikg
ewo+ICsJCXJldCA9IHBoeV9wb3dlcl9vZmYocGh5KTsKPiArCQlpZiAoIXJldCkKPiArCQkJaG9z
dC0+aXNfcGh5X3B3cl9vbiA9IGZhbHNlOwo+ICsJfQo+ICsKPiArCXJldHVybiByZXQ7Cj4gK30K
PiArCj4gIHN0YXRpYyBpbnQgdWZzX3Fjb21fcG93ZXJfdXBfc2VxdWVuY2Uoc3RydWN0IHVmc19o
YmEgKmhiYSkKPiAgewo+ICAJc3RydWN0IHVmc19xY29tX2hvc3QgKmhvc3QgPSB1ZnNoY2RfZ2V0
X3ZhcmlhbnQoaGJhKTsKPiBAQCAtNTA3LDcgKzUzOSw3IEBAIHN0YXRpYyBpbnQgdWZzX3Fjb21f
cG93ZXJfdXBfc2VxdWVuY2Uoc3RydWN0IHVmc19oYmEgKmhiYSkKPiAgCQlyZXR1cm4gcmV0Owo+
ICAKPiAgCWlmIChwaHktPnBvd2VyX2NvdW50KSB7Cj4gLQkJcGh5X3Bvd2VyX29mZihwaHkpOwo+
ICsJCXVmc19xY29tX3BoeV9wb3dlcl9vZmYoaGJhKTsKPiAgCQlwaHlfZXhpdChwaHkpOwo+ICAJ
fQo+ICAKPiBAQCAtNTI0LDcgKzU1Niw3IEBAIHN0YXRpYyBpbnQgdWZzX3Fjb21fcG93ZXJfdXBf
c2VxdWVuY2Uoc3RydWN0IHVmc19oYmEgKmhiYSkKPiAgCQlnb3RvIG91dF9kaXNhYmxlX3BoeTsK
PiAgCj4gIAkvKiBwb3dlciBvbiBwaHkgLSBzdGFydCBzZXJkZXMgYW5kIHBoeSdzIHBvd2VyIGFu
ZCBjbG9ja3MgKi8KPiAtCXJldCA9IHBoeV9wb3dlcl9vbihwaHkpOwo+ICsJcmV0ID0gdWZzX3Fj
b21fcGh5X3Bvd2VyX29uKGhiYSk7Cj4gIAlpZiAocmV0KSB7Cj4gIAkJZGV2X2VycihoYmEtPmRl
diwgIiVzOiBwaHkgcG93ZXIgb24gZmFpbGVkLCByZXQgPSAlZFxuIiwKPiAgCQkJX19mdW5jX18s
IHJldCk7Cj4gQEAgLTExMjEsNyArMTE1Myw2IEBAIHN0YXRpYyBpbnQgdWZzX3Fjb21fc2V0dXBf
Y2xvY2tzKHN0cnVjdCB1ZnNfaGJhICpoYmEsIGJvb2wgb24sCj4gIAkJCQkgZW51bSB1ZnNfbm90
aWZ5X2NoYW5nZV9zdGF0dXMgc3RhdHVzKQo+ICB7Cj4gIAlzdHJ1Y3QgdWZzX3Fjb21faG9zdCAq
aG9zdCA9IHVmc2hjZF9nZXRfdmFyaWFudChoYmEpOwo+IC0Jc3RydWN0IHBoeSAqcGh5ID0gaG9z
dC0+Z2VuZXJpY19waHk7Cj4gIAlpbnQgZXJyOwo+ICAKPiAgCS8qCj4gQEAgLTExNDIsNyArMTE3
Myw3IEBAIHN0YXRpYyBpbnQgdWZzX3Fjb21fc2V0dXBfY2xvY2tzKHN0cnVjdCB1ZnNfaGJhICpo
YmEsIGJvb2wgb24sCj4gIAkJCQl1ZnNfcWNvbV9kZXZfcmVmX2Nsa19jdHJsKGhvc3QsIGZhbHNl
KTsKPiAgCQkJfQo+ICAKPiAtCQkJZXJyID0gcGh5X3Bvd2VyX29mZihwaHkpOwo+ICsJCQllcnIg
PSB1ZnNfcWNvbV9waHlfcG93ZXJfb2ZmKGhiYSk7Cj4gIAkJCWlmIChlcnIpIHsKPiAgCQkJCWRl
dl9lcnIoaGJhLT5kZXYsICJwaHkgcG93ZXIgb2ZmIGZhaWxlZCwgcmV0PSVkXG4iLCBlcnIpOwo+
ICAJCQkJcmV0dXJuIGVycjsKPiBAQCAtMTE1MSw3ICsxMTgyLDcgQEAgc3RhdGljIGludCB1ZnNf
cWNvbV9zZXR1cF9jbG9ja3Moc3RydWN0IHVmc19oYmEgKmhiYSwgYm9vbCBvbiwKPiAgCQlicmVh
azsKPiAgCWNhc2UgUE9TVF9DSEFOR0U6Cj4gIAkJaWYgKG9uKSB7Cj4gLQkJCWVyciA9IHBoeV9w
b3dlcl9vbihwaHkpOwo+ICsJCQllcnIgPSB1ZnNfcWNvbV9waHlfcG93ZXJfb24oaGJhKTsKPiAg
CQkJaWYgKGVycikgewo+ICAJCQkJZGV2X2VycihoYmEtPmRldiwgInBoeSBwb3dlciBvbiBmYWls
ZWQsIHJldCA9ICVkXG4iLCBlcnIpOwo+ICAJCQkJcmV0dXJuIGVycjsKPiBAQCAtMTMzOSwxMCAr
MTM3MCw5IEBAIHN0YXRpYyBpbnQgdWZzX3Fjb21faW5pdChzdHJ1Y3QgdWZzX2hiYSAqaGJhKQo+
ICBzdGF0aWMgdm9pZCB1ZnNfcWNvbV9leGl0KHN0cnVjdCB1ZnNfaGJhICpoYmEpCj4gIHsKPiAg
CXN0cnVjdCB1ZnNfcWNvbV9ob3N0ICpob3N0ID0gdWZzaGNkX2dldF92YXJpYW50KGhiYSk7Cj4g
LQlzdHJ1Y3QgcGh5ICpwaHkgPSBob3N0LT5nZW5lcmljX3BoeTsKPiAgCj4gIAl1ZnNfcWNvbV9k
aXNhYmxlX2xhbmVfY2xrcyhob3N0KTsKPiAtCXBoeV9wb3dlcl9vZmYocGh5KTsKPiArCXVmc19x
Y29tX3BoeV9wb3dlcl9vZmYoaGJhKTsKPiAgCXBoeV9leGl0KGhvc3QtPmdlbmVyaWNfcGh5KTsK
PiAgfQo+ICAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy91ZnMvaG9zdC91ZnMtcWNvbS5oIGIvZHJp
dmVycy91ZnMvaG9zdC91ZnMtcWNvbS5oCj4gaW5kZXggMGE1Y2ZjMmRkNGY3Li5mNTFiNzc0ZTE3
YmUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy91ZnMvaG9zdC91ZnMtcWNvbS5oCj4gKysrIGIvZHJp
dmVycy91ZnMvaG9zdC91ZnMtcWNvbS5oCj4gQEAgLTI4MSw2ICsyODEsMTAgQEAgc3RydWN0IHVm
c19xY29tX2hvc3Qgewo+ICAJdTMyIHBoeV9nZWFyOwo+ICAKPiAgCWJvb2wgZXNpX2VuYWJsZWQ7
Cj4gKwkvKiBmbGFnIHRvIGNoZWNrIGlmIHBoeSBpcyBwb3dlcmVkIG9uICovCj4gKwlib29sIGlz
X3BoeV9wd3Jfb247Cj4gKwkvKiBQcm90ZWN0IHRoZSB1c2FnZSBvZiBpc19waHlfcHdyX29uIGFn
YWluc3QgcmFjaW5nICovCj4gKwlzdHJ1Y3QgbXV0ZXggcGh5X211dGV4Owo+ICB9Owo+ICAKPiAg
c3RydWN0IHVmc19xY29tX2RydmRhdGEgewo+IC0tIAo+IDIuNDguMQo+IAoKLS0gCuCuruCuo+Cu
v+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
