Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39017CD6115
	for <linux-phy@archiver.kernel.org>; Mon,  9 Oct 2023 17:33:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dM8QI164JFSSpztJe6FXe3vVxHPH0Ad4PCW2rS08Od0=; b=AXKs0114N1L0oV
	6ul/fM68DO+V3sK8yk1KrzWhA1BENnHCocJGWMCUr6eGkH1Bv8SX2Z+bTrNfTR7coZhEBdaCByOtC
	YCVkQbk7QsvD2ZTIIRfUvbdcmJCCX+e6xKLkai+1+s3JZiFfLAz8ta8Hp92B53enMo75tl+WkxDm4
	hrA0FPZk/gUn1aSi0I9r5rtBJWxbgJBAs5Mq2nibx/kmRguvdvoix3Fq45VX3eyWBw5t8GmI1gJpu
	DP6DDoAmR0K7cT7BbjBREY8DZYRr4URbvawBVlepbSx24vtk9PECgoBXWvpFOq1Lz79z9i1gonCJf
	K/6L6T2vI+IQ4DVjorjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpu8B-00BJHx-2h;
	Mon, 09 Oct 2023 17:33:23 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpu87-00BJDa-13
	for linux-phy@lists.infradead.org;
	Mon, 09 Oct 2023 17:33:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id CCF85B8165D;
	Mon,  9 Oct 2023 17:33:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08B3CC433CA;
	Mon,  9 Oct 2023 17:33:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696872797;
	bh=1Xy85/xXimMqCtgvlZEslnktYuoZiVcVI5H+ZlnTwFw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pE/Dt50KFxYzY2M4D8PTeTLL8C9HZhH4LuIDFsGzo+KG4Ao6kQpTH/zN87uDOUGLN
	 kIZ2K/iD8wLc4BHX0noAgRJdS3oJ/Eqth5Da6Aww6yufEhiyWqWJM5yOzjDVfhdF7X
	 TATNsb92bYdrvFs37C+96SkjCC4N+kKWOZFeChpU+lfetgfwGrUnHAfkIjUuy8AVzQ
	 4RZwLX4TqH/5YsvFjm6xnwdpI9u72yf8v15ZTP2/+DJdvf7nJTe+0mMWJpNavHv1v8
	 eqo715BofvZAZh7DIZVvhfXcSpQfD40fCKSYrm1h3iO4hUPacU3VcK3SY50FQcZdSw
	 6zlCa5dLYch0g==
Date: Mon, 9 Oct 2023 23:02:59 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Nitheesh Sekar <quic_nsekar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
	lpieralisi@kernel.org, kw@linux.com, robh@kernel.org,
	bhelgaas@google.com, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org,
	p.zabel@pengutronix.de, quic_srichara@quicinc.com,
	quic_varada@quicinc.com, quic_ipkumar@quicinc.com,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, Anusha Rao <quic_anusha@quicinc.com>,
	Devi Priya <quic_devipriy@quicinc.com>
Subject: Re: [PATCH 4/6] PCI: qcom: Add support for IPQ5018
Message-ID: <20231009173259.GC31623@thinkpad>
References: <20231003120846.28626-1-quic_nsekar@quicinc.com>
 <20231003120846.28626-5-quic_nsekar@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231003120846.28626-5-quic_nsekar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_103319_669280_81C92AF1 
X-CRM114-Status: GOOD (  19.00  )
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

T24gVHVlLCBPY3QgMDMsIDIwMjMgYXQgMDU6Mzg6NDRQTSArMDUzMCwgTml0aGVlc2ggU2VrYXIg
d3JvdGU6Cj4gQWRkZWQgYSBuZXcgY29tcGF0aWJsZSAncWNvbSxwY2llLWlwcTUwMTgnIGFuZCBt
b2RpZmllZAo+IGdldF9yZXNvdXJjZXMgb2YgJ29wcyAyXzlfMCcgdG8gZ2V0IHRoZSBjbG9ja3Mg
ZnJvbSB0aGUKPiBkZXZpY2UtdHJlZS4KPiAKCkFzIHBlciBEb2N1bWVudGF0aW9uL3Byb2Nlc3Mv
c3VibWl0dGluZy1wYXRjaGVzLnJzdDoKCkRlc2NyaWJlIHlvdXIgY2hhbmdlcyBpbiBpbXBlcmF0
aXZlIG1vb2QsIGUuZy4gIm1ha2UgeHl6enkgZG8gZnJvdHoiCmluc3RlYWQgb2YgIltUaGlzIHBh
dGNoXSBtYWtlcyB4eXp6eSBkbyBmcm90eiIgb3IgIltJXSBjaGFuZ2VkIHh5enp5CnRvIGRvIGZy
b3R6IiwgYXMgaWYgeW91IGFyZSBnaXZpbmcgb3JkZXJzIHRvIHRoZSBjb2RlYmFzZSB0byBjaGFu
Z2UKaXRzIGJlaGF2aW91ci4KCkFsc28sIHBsZWFzZSBlbGFib3JhdGUgeW91ciBjaGFuZ2UgaW4g
YSBkZXRhaWxlZCBtYW5uZXIuIEZvciBpbnN0YW5jZSwgc2F5aW5nCnRoYXQgeW91IG1vZGlmaWVk
ICJnZXRfcmVzb3VyY2VzIG9mICdvcHMgMl85XzAnIHRvIGdldCB0aGUgY2xvY2tzIGZyb20gdGhl
CmRldmljZXRyZWUiIGlzIG5vdCBzdWZmaWNpZW50IHNpbmNlIGFsbCBjbG9ja3MgYXJlIGJlaW5n
IHBhcnNlZCBiYXNlZCBvbiB0aGUKZGV2aWNldHJlZSBpbmZvIG9ubHkuCgotIE1hbmkKCj4gQ28t
ZGV2ZWxvcGVkLWJ5OiBBbnVzaGEgUmFvIDxxdWljX2FudXNoYUBxdWljaW5jLmNvbT4KPiBTaWdu
ZWQtb2ZmLWJ5OiBBbnVzaGEgUmFvIDxxdWljX2FudXNoYUBxdWljaW5jLmNvbT4KPiBDby1kZXZl
bG9wZWQtYnk6IERldmkgUHJpeWEgPHF1aWNfZGV2aXByaXlAcXVpY2luYy5jb20+Cj4gU2lnbmVk
LW9mZi1ieTogRGV2aSBQcml5YSA8cXVpY19kZXZpcHJpeUBxdWljaW5jLmNvbT4KPiBTaWduZWQt
b2ZmLWJ5OiBOaXRoZWVzaCBTZWthciA8cXVpY19uc2VrYXJAcXVpY2luYy5jb20+Cj4gLS0tCj4g
IGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5jIHwgMjIgKysrKysrKystLS0t
LS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAxNCBkZWxldGlv
bnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1x
Y29tLmMgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXFjb20uYwo+IGluZGV4IGUy
ZjI5NDA0Yzg0ZS4uYmIwNzE3MTkwOTIwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRy
b2xsZXIvZHdjL3BjaWUtcWNvbS5jCj4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2Mv
cGNpZS1xY29tLmMKPiBAQCAtMTk3LDEwICsxOTcsMTAgQEAgc3RydWN0IHFjb21fcGNpZV9yZXNv
dXJjZXNfMl83XzAgewo+ICAJc3RydWN0IHJlc2V0X2NvbnRyb2wgKnJzdDsKPiAgfTsKPiAgCj4g
LSNkZWZpbmUgUUNPTV9QQ0lFXzJfOV8wX01BWF9DTE9DS1MJCTUKPiAgc3RydWN0IHFjb21fcGNp
ZV9yZXNvdXJjZXNfMl85XzAgewo+IC0Jc3RydWN0IGNsa19idWxrX2RhdGEgY2xrc1tRQ09NX1BD
SUVfMl85XzBfTUFYX0NMT0NLU107Cj4gKwlzdHJ1Y3QgY2xrX2J1bGtfZGF0YSAqY2xrczsKPiAg
CXN0cnVjdCByZXNldF9jb250cm9sICpyc3Q7Cj4gKwlpbnQgbnVtX2Nsa3M7Cj4gIH07Cj4gIAo+
ICB1bmlvbiBxY29tX3BjaWVfcmVzb3VyY2VzIHsKPiBAQCAtMTA0OCwxNyArMTA0OCwxMCBAQCBz
dGF0aWMgaW50IHFjb21fcGNpZV9nZXRfcmVzb3VyY2VzXzJfOV8wKHN0cnVjdCBxY29tX3BjaWUg
KnBjaWUpCj4gIAlzdHJ1Y3QgcWNvbV9wY2llX3Jlc291cmNlc18yXzlfMCAqcmVzID0gJnBjaWUt
PnJlcy52Ml85XzA7Cj4gIAlzdHJ1Y3QgZHdfcGNpZSAqcGNpID0gcGNpZS0+cGNpOwo+ICAJc3Ry
dWN0IGRldmljZSAqZGV2ID0gcGNpLT5kZXY7Cj4gLQlpbnQgcmV0Owo+ICAKPiAtCXJlcy0+Y2xr
c1swXS5pZCA9ICJpZmFjZSI7Cj4gLQlyZXMtPmNsa3NbMV0uaWQgPSAiYXhpX20iOwo+IC0JcmVz
LT5jbGtzWzJdLmlkID0gImF4aV9zIjsKPiAtCXJlcy0+Y2xrc1szXS5pZCA9ICJheGlfYnJpZGdl
IjsKPiAtCXJlcy0+Y2xrc1s0XS5pZCA9ICJyY2huZyI7Cj4gLQo+IC0JcmV0ID0gZGV2bV9jbGtf
YnVsa19nZXQoZGV2LCBBUlJBWV9TSVpFKHJlcy0+Y2xrcyksIHJlcy0+Y2xrcyk7Cj4gLQlpZiAo
cmV0IDwgMCkKPiAtCQlyZXR1cm4gcmV0Owo+ICsJcmVzLT5udW1fY2xrcyA9IGRldm1fY2xrX2J1
bGtfZ2V0X2FsbChkZXYsICZyZXMtPmNsa3MpOwo+ICsJaWYgKHJlcy0+bnVtX2Nsa3MgPCAwKQo+
ICsJCXJldHVybiByZXMtPm51bV9jbGtzOwo+ICAKPiAgCXJlcy0+cnN0ID0gZGV2bV9yZXNldF9j
b250cm9sX2FycmF5X2dldF9leGNsdXNpdmUoZGV2KTsKPiAgCWlmIChJU19FUlIocmVzLT5yc3Qp
KQo+IEBAIC0xMDcxLDcgKzEwNjQsNyBAQCBzdGF0aWMgdm9pZCBxY29tX3BjaWVfZGVpbml0XzJf
OV8wKHN0cnVjdCBxY29tX3BjaWUgKnBjaWUpCj4gIHsKPiAgCXN0cnVjdCBxY29tX3BjaWVfcmVz
b3VyY2VzXzJfOV8wICpyZXMgPSAmcGNpZS0+cmVzLnYyXzlfMDsKPiAgCj4gLQljbGtfYnVsa19k
aXNhYmxlX3VucHJlcGFyZShBUlJBWV9TSVpFKHJlcy0+Y2xrcyksIHJlcy0+Y2xrcyk7Cj4gKwlj
bGtfYnVsa19kaXNhYmxlX3VucHJlcGFyZShyZXMtPm51bV9jbGtzLCByZXMtPmNsa3MpOwo+ICB9
Cj4gIAo+ICBzdGF0aWMgaW50IHFjb21fcGNpZV9pbml0XzJfOV8wKHN0cnVjdCBxY29tX3BjaWUg
KnBjaWUpCj4gQEAgLTExMDAsNyArMTA5Myw3IEBAIHN0YXRpYyBpbnQgcWNvbV9wY2llX2luaXRf
Ml85XzAoc3RydWN0IHFjb21fcGNpZSAqcGNpZSkKPiAgCj4gIAl1c2xlZXBfcmFuZ2UoMjAwMCwg
MjUwMCk7Cj4gIAo+IC0JcmV0dXJuIGNsa19idWxrX3ByZXBhcmVfZW5hYmxlKEFSUkFZX1NJWkUo
cmVzLT5jbGtzKSwgcmVzLT5jbGtzKTsKPiArCXJldHVybiBjbGtfYnVsa19wcmVwYXJlX2VuYWJs
ZShyZXMtPm51bV9jbGtzLCByZXMtPmNsa3MpOwo+ICB9Cj4gIAo+ICBzdGF0aWMgaW50IHFjb21f
cGNpZV9wb3N0X2luaXRfMl85XzAoc3RydWN0IHFjb21fcGNpZSAqcGNpZSkKPiBAQCAtMTYwNSw2
ICsxNTk4LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgcWNvbV9wY2llX21h
dGNoW10gPSB7Cj4gIAl7IC5jb21wYXRpYmxlID0gInFjb20scGNpZS1hcHE4MDY0IiwgLmRhdGEg
PSAmY2ZnXzJfMV8wIH0sCj4gIAl7IC5jb21wYXRpYmxlID0gInFjb20scGNpZS1hcHE4MDg0Iiwg
LmRhdGEgPSAmY2ZnXzFfMF8wIH0sCj4gIAl7IC5jb21wYXRpYmxlID0gInFjb20scGNpZS1pcHE0
MDE5IiwgLmRhdGEgPSAmY2ZnXzJfNF8wIH0sCj4gKwl7IC5jb21wYXRpYmxlID0gInFjb20scGNp
ZS1pcHE1MDE4IiwgLmRhdGEgPSAmY2ZnXzJfOV8wIH0sCj4gIAl7IC5jb21wYXRpYmxlID0gInFj
b20scGNpZS1pcHE2MDE4IiwgLmRhdGEgPSAmY2ZnXzJfOV8wIH0sCj4gIAl7IC5jb21wYXRpYmxl
ID0gInFjb20scGNpZS1pcHE4MDY0IiwgLmRhdGEgPSAmY2ZnXzJfMV8wIH0sCj4gIAl7IC5jb21w
YXRpYmxlID0gInFjb20scGNpZS1pcHE4MDY0LXYyIiwgLmRhdGEgPSAmY2ZnXzJfMV8wIH0sCj4g
LS0gCj4gMi4xNy4xCj4gCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCu
vuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
