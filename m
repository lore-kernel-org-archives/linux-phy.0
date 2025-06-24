Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D341C77B7C
	for <linux-phy@archiver.kernel.org>; Tue, 24 Jun 2025 22:14:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yLRk8bDqlXtfmOoXWDwdXW0rP4GjJcmX7qnOKQVl8os=; b=w5aDxieQLw0RIM
	KdURQFk6/XTXTGnaR9WIOAGdD233kk/tkEt2CuQGxXeTg6dBmyBmBwg0Y4bi9sNLlVjeGtm5in+vf
	2LDT94/TrvOo2jYfO/+5fRMkMrCxcYszv7yNBuf6I/35Qh7pdWjPWEGwqzmOzldj31qHDmWVFjKNf
	AJUMGL5CDTCw3oDHaT/mbOD2SSZbGbrPSJhitfpvrvhcxhF1ajQyfUD+ykPLGukxbE5GYCNPQdhj4
	3gaF9/OxWXKXthJTQd4091MFjUyDC4+2/zbpgGbgZUtYUgoEQ3R7bZfy83tTuV+UjAjsKTnfIhsRZ
	HhEXqBujFOrKNJPI55Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUBuJ-00000006xSp-1AkE;
	Tue, 24 Jun 2025 22:14:23 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUAb7-00000006oQC-3DHm
	for linux-phy@lists.infradead.org;
	Tue, 24 Jun 2025 20:50:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id AE419A51E94;
	Tue, 24 Jun 2025 20:50:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB455C4CEE3;
	Tue, 24 Jun 2025 20:50:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750798228;
	bh=4BbpK2ulCaYimA5b+KGO/XRkOZjvvYa7eQftvR8Ibk4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Zb1fbCg0rrTjVKS2EhGPpcPYr2V+j2CoaRQl/xT5DSYn6s+AT+hktlzh0XcLEZaEx
	 g7m6x8pQLA7eVjg0o7SWpmna/vWsnKP3zdR+DmqE1ZhNlVAv4wA4Fnyk5AYmTHKkBF
	 H5WbS+WHWq1pI9H9Ue90bmuS6X+Olxn0UYq2P21n45bm5qCJFfYzXgzFkVeEuRXgRr
	 91IP/EzsIKx3XkUlzx8ajdJY3+GBc4IPOdTfP4GepvgqRygHnapzQNyuwRyDBkVUNV
	 YOpivXztV+VdMmeW30bKljsZA9bVSJGoEunj2TSHsNrDBic5oMxdr+xCcUNJMNutwC
	 vcypOXSlF5yXA==
Date: Tue, 24 Jun 2025 14:50:24 -0600
From: Manivannan Sadhasivam <mani@kernel.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com, lpieralisi@kernel.org, 
	kwilczynski@kernel.org, bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org, 
	kishon@kernel.org, dmitry.baryshkov@linaro.org, manivannan.sadhasivam@linaro.org, 
	neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com, 
	quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
Subject: Re: [PATCH v2 1/2] PCI: qcom: Add equalization settings for 8.0 GT/s
Message-ID: <t4dwk5buo5yuuz3au5lnt4ol4ow343qjj2jxa3ktxmxoxrkm3x@c4pena57zsn3>
References: <20250611100319.464803-1-quic_ziyuzhan@quicinc.com>
 <20250611100319.464803-2-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250611100319.464803-2-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250624_135029_928706_973BB9FB 
X-CRM114-Status: GOOD (  19.03  )
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

T24gV2VkLCBKdW4gMTEsIDIwMjUgYXQgMDY6MDM6MThQTSArMDgwMCwgWml5dWUgWmhhbmcgd3Jv
dGU6Cj4gQWRkaW5nIGxhbmUgZXF1YWxpemF0aW9uIHNldHRpbmcgZm9yIDguMCBHVC9zIHRvIGVu
aGFuY2UgbGluayBzdGFiaWxpdHkKPiBhbmQgZml4IEFFUiBjb3JyZWN0YWJsZSBlcnJvcnMgcmVw
b3J0ZWQgb24gc29tZSBwbGF0Zm9ybXMgKGVnLiBTQTg3NzVQKS4KPiAKPiA4LjAgR1QvcyBhbmQg
MTYuMEdUL3MgcmVxdWlyZSB0aGUgc2FtZSBlcXVhbGl6YXRpb24gc2V0dGluZy4gVGhpcyBzZXR0
aW5nCj4gaXMgcHJvZ3JhbW1lZCBpbnRvIGEgZ3JvdXAgb2Ygc2hhZG93IHJlZ2lzdGVycywgd2hp
Y2ggY2FuIGJlIHN3aXRjaGVkIHRvCj4gY29uZmlndXJlIGVxdWFsaXphdGlvbiBmb3IgZGlmZmVy
ZW50IEdFTiBzcGVlZHMgYnkgd3JpdGluZyAwMGIsIDAxYgo+IHRvIGBSQVRFX1NIQURPV19TRUxg
Lgo+IAo+IEhlbmNlIHByb2dyYW0gZXF1YWxpemF0aW9uIHJlZ2lzdGVycyBpbiBhIGxvb3AgdXNp
bmcgbGluayBzcGVlZCBhcyBpbmRleCwKPiBzbyB0aGF0IGVxdWFsaXphdGlvbiBzZXR0aW5nIGNh
biBiZSBwcm9ncmFtbWVkIGZvciBib3RoIDguMCBHVC9zIGFuZAo+IDE2LjAgR1Qvcy4KPiAKPiBD
by1kZXZlbG9wZWQtYnk6IFFpYW5nIFl1IDxxaWFuZy55dUBvc3MucXVhbGNvbW0uY29tPgo+IFNp
Z25lZC1vZmYtYnk6IFFpYW5nIFl1IDxxaWFuZy55dUBvc3MucXVhbGNvbW0uY29tPgo+IFNpZ25l
ZC1vZmYtYnk6IFppeXVlIFpoYW5nIDxxdWljX3ppeXV6aGFuQHF1aWNpbmMuY29tPgo+IC0tLQo+
ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWRlc2lnbndhcmUuaCAgfCAgMSAtCj4g
IGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS1jb21tb24uYyB8IDYwICsrKysr
KysrKysrLS0tLS0tLS0KPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLWNv
bW1vbi5oIHwgIDIgKy0KPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLWVw
LmMgICAgIHwgIDYgKy0KPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLmMg
ICAgICAgIHwgIDYgKy0KPiAgNSBmaWxlcyBjaGFuZ2VkLCA0MyBpbnNlcnRpb25zKCspLCAzMiBk
ZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2Mv
cGNpZS1kZXNpZ253YXJlLmggYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWRlc2ln
bndhcmUuaAo+IGluZGV4IGNlOWUxODU1NGU0Mi4uMzg4MzA2OTkxNDY3IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZGVzaWdud2FyZS5oCj4gKysrIGIvZHJp
dmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kZXNpZ253YXJlLmgKPiBAQCAtMTI3LDcgKzEy
Nyw2IEBACj4gICNkZWZpbmUgR0VOM19SRUxBVEVEX09GRl9HRU4zX0VRX0RJU0FCTEUJQklUKDE2
KQo+ICAjZGVmaW5lIEdFTjNfUkVMQVRFRF9PRkZfUkFURV9TSEFET1dfU0VMX1NISUZUCTI0Cj4g
ICNkZWZpbmUgR0VOM19SRUxBVEVEX09GRl9SQVRFX1NIQURPV19TRUxfTUFTSwlHRU5NQVNLKDI1
LCAyNCkKPiAtI2RlZmluZSBHRU4zX1JFTEFURURfT0ZGX1JBVEVfU0hBRE9XX1NFTF8xNl8wR1QJ
MHgxCj4gIAo+ICAjZGVmaW5lIEdFTjNfRVFfQ09OVFJPTF9PRkYJCQkweDhBOAo+ICAjZGVmaW5l
IEdFTjNfRVFfQ09OVFJPTF9PRkZfRkJfTU9ERQkJR0VOTUFTSygzLCAwKQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXFjb20tY29tbW9uLmMgYi9kcml2ZXJz
L3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXFjb20tY29tbW9uLmMKPiBpbmRleCAzYWFkMTliNTZk
YTguLjRmZjk3ZWMxMzgxOCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3
Yy9wY2llLXFjb20tY29tbW9uLmMKPiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9w
Y2llLXFjb20tY29tbW9uLmMKPiBAQCAtOCw5ICs4LDExIEBACj4gICNpbmNsdWRlICJwY2llLWRl
c2lnbndhcmUuaCIKPiAgI2luY2x1ZGUgInBjaWUtcWNvbS1jb21tb24uaCIKPiAgCj4gLXZvaWQg
cWNvbV9wY2llX2NvbW1vbl9zZXRfMTZndF9lcXVhbGl6YXRpb24oc3RydWN0IGR3X3BjaWUgKnBj
aSkKPiArdm9pZCBxY29tX3BjaWVfY29tbW9uX3NldF9lcXVhbGl6YXRpb24oc3RydWN0IGR3X3Bj
aWUgKnBjaSkKPiAgewo+ICAJdTMyIHJlZzsKPiArCXUxNiBzcGVlZCwgbWF4X3NwZWVkID0gUENJ
RV9TUEVFRF8xNl8wR1Q7Cj4gKwlzdHJ1Y3QgZGV2aWNlICpkZXYgPSBwY2ktPmRldjsKPiAgCj4g
IAkvKgo+ICAJICogR0VOM19SRUxBVEVEX09GRiByZWdpc3RlciBpcyByZXB1cnBvc2VkIHRvIGFw
cGx5IGVxdWFsaXphdGlvbgo+IEBAIC0xOCwzMyArMjAsNDMgQEAgdm9pZCBxY29tX3BjaWVfY29t
bW9uX3NldF8xNmd0X2VxdWFsaXphdGlvbihzdHJ1Y3QgZHdfcGNpZSAqcGNpKQo+ICAJICogR0VO
M19FUV8qLiBUaGUgUkFURV9TSEFET1dfU0VMIGJpdCBmaWVsZCBvZiBHRU4zX1JFTEFURURfT0ZG
Cj4gIAkgKiBkZXRlcm1pbmVzIHRoZSBkYXRhIHJhdGUgZm9yIHdoaWNoIHRoZXNlIGVxdWFsaXph
dGlvbiBzZXR0aW5ncyBhcmUKPiAgCSAqIGFwcGxpZWQuCj4gKwkgKgo+ICsJICogVE9ETzoKPiAr
CSAqIEVRIHNldHRpbmdzIG5lZWQgdG8gYmUgYWRkZWQgZm9yIDMyLjAgVC9zIGluIGZ1dHVyZQo+
ICAJICovCj4gLQlyZWcgPSBkd19wY2llX3JlYWRsX2RiaShwY2ksIEdFTjNfUkVMQVRFRF9PRkYp
Owo+IC0JcmVnICY9IH5HRU4zX1JFTEFURURfT0ZGX0dFTjNfWlJYRENfTk9OQ09NUEw7Cj4gLQly
ZWcgJj0gfkdFTjNfUkVMQVRFRF9PRkZfUkFURV9TSEFET1dfU0VMX01BU0s7Cj4gLQlyZWcgfD0g
RklFTERfUFJFUChHRU4zX1JFTEFURURfT0ZGX1JBVEVfU0hBRE9XX1NFTF9NQVNLLAo+IC0JCQkg
IEdFTjNfUkVMQVRFRF9PRkZfUkFURV9TSEFET1dfU0VMXzE2XzBHVCk7Cj4gLQlkd19wY2llX3dy
aXRlbF9kYmkocGNpLCBHRU4zX1JFTEFURURfT0ZGLCByZWcpOwo+ICsJaWYgKHBjaWVfbGlua19z
cGVlZFtwY2ktPm1heF9saW5rX3NwZWVkXSA8IFBDSUVfU1BFRURfMzJfMEdUKQo+ICsJCW1heF9z
cGVlZCA9IHBjaWVfbGlua19zcGVlZFtwY2ktPm1heF9saW5rX3NwZWVkXTsKPiArCWVsc2UKPiAr
CQlkZXZfd2FybihkZXYsICJUaGUgdGFyZ2V0IHN1cHBvcnRzIDMyLjAgR1QvcywgYnV0IHRoZSBF
USBzZXR0aW5nIGZvciAzMi4wIEdUL3MgaXMgbm90IGNvbmZpZ3VyZWQuXG4iKTsKCkkgYmVsaWV2
ZSB0aGUgd2FybmluZyBpcyBlbm91Z2ggdG8gaW5mb3JtIHRoZSB1c2Vycy9kZXZlbG9wZXJzIHRo
YXQgdGhlIGRyaXZlcgp1cGRhdGUgaXMgbmVlZGVkLiBTbyB0aGUgVE9ETyBhYm92ZSBsb29rcyBy
ZWR1bmRhbnQuCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k
4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
