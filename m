Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D51AC5AD5A
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 09:46:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gv9oUHaassnm0QmdvxGFBEzwFq1WQOYg6gFZaV2v2u8=; b=ek/xhYgk4iXwBx
	e3LBftcCyHhucgfHP4ZzIt5MrjEcl2+Xws9Xgq8e1+MY+sNrKpcmDYfTBYGJ+4kDrjmO68MYzY/vX
	O6VtvaSXD5O+AKYPH4rBBy6mg6ajSFnPBWQ1JseAZNtXnsokECIc3hOhWBYNBn6pRRGvnjC2tXgGb
	YZ99QuFWUjPU5ISBxiFOlwRhOqrZUGY7a6hAtLscHxPynZU6oAr8CMkkY5YVspb4KuTYtA4U8jRss
	Uwa052tarenkw921exLj4mvsQ94fU/0B8KLMQeV9+3V2SID4WYfc3YYsOWm11Vby2Gwqamsnm7YeF
	qKyGnUxJXROLUcPH4k4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu5Xe-0000000Fo20-127v;
	Wed, 12 Aug 2026 09:46:35 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu5Xc-0000000Fo1g-3dDC
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 09:46:32 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 7733343609;
	Wed, 12 Aug 2026 09:46:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF2111F000E9;
	Wed, 12 Aug 2026 09:46:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786527992;
	bh=19ENSLLz/deARqUVUUEfG1oLKS7Y0QDi2HjA1WQf6dM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=mE1PkWFBUux66i0neAkt2rZw2IFB/8YzHoh16DslU+QDmuHtAHZWVSi1uSOmsG2r1
	 +7VhR8w3JZ8eOrMMMWCm+dMt40UnYWEsGHcL0aymN7EVRz1Sg+DeaVXSm/xNEEP1a0
	 QdO97Ul79f+dIGWtU+lF3qde+R74WLpMkDu1CBJ3kuo/IdzGGs+u5Dj9Ps3QpjDMML
	 gcvn9KaJbdWJR9HO3MDH0LBQe0ezt5oqXnQ8xdNUMXwRrQua1zCJVWXt94BspG2OFT
	 Z+gz2mGVXD3FW2l+dpqM6ZryCR/M8LR5yAkveA/ElbhLFSV0H9HuwxNg5BpanqR9nt
	 XgXwyiN8mfyqQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 06/14] dt-bindings: usb: qcom,snps-dwc3: Add clocks
 for USB3 on Qualcomm IPQ5332
To: "George Moussalem" <george.moussalem@outlook.com>
Cc: conor+dt@kernel.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org, robh@kernel.org, vkoul@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20260812-ipq5018-usb3-v2-6-8f355d7ff0ef@outlook.com>
References: <20260812-ipq5018-usb3-v2-0-8f355d7ff0ef@outlook.com>
 <20260812-ipq5018-usb3-v2-6-8f355d7ff0ef@outlook.com>
Date: Wed, 12 Aug 2026 09:46:31 +0000
Message-Id: <20260812094631.DF2111F000E9@smtp.kernel.org>
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBzY2hlbWEgbW9k
aWZpY2F0aW9uIHVuY29uZGl0aW9uYWxseSBtYW5kYXRlcyA1IGNsb2NrcyBmb3IgYHFjb20saXBx
NTMzMi1kd2MzYCwgYnJlYWtpbmcgdmFsaWRhdGlvbiBmb3IgZXhpc3RpbmcgdmFsaWQgZGV2aWNl
IHRyZWVzIHRoYXQgcHJvdmlkZSBvbmx5IDMgY2xvY2tzIGZvciBIaWdoLVNwZWVkLW9ubHkgY29u
ZmlndXJhdGlvbnMuCi0tCgotLS0gUGF0Y2ggWzZdOiBbUEFUQ0ggdjIgMDYvMTRdIGR0LWJpbmRp
bmdzOiB1c2I6IHFjb20sc25wcy1kd2MzOiBBZGQgY2xvY2tzIGZvciBVU0IzIG9uIFF1YWxjb21t
IElQUTUzMzIgLS0tCmNvbW1pdCA3NjI1MWY2Y2RhMTJlZjM0ZDI2YWNjYTdhOTFjODk3MjQ1YmQw
NWMwCkF1dGhvcjogUHJhdmVlbmt1bWFyIEkgPHF1aWNfaXBrdW1hckBxdWljaW5jLmNvbT4KCmR0
LWJpbmRpbmdzOiB1c2I6IHFjb20sc25wcy1kd2MzOiBBZGQgY2xvY2tzIGZvciBVU0IzIG9uIFF1
YWxjb21tIElQUTUzMzIKClRoaXMgY29tbWl0IGFkZHMgYXV4IGFuZCBsZnBzIGNsb2NrcyBmb3Ig
dGhlIFF1YWxjb21tIElQUTUzMzIgcGxhdGZvcm0gaW4gdGhlCnFjb20sc25wcy1kd2MzIGJpbmRp
bmdzLCBzcGxpdHRpbmcgaXQgZnJvbSB0aGUgcWNvbSxpcHE0MDE5LWR3YzMgYmxvY2suCgo+IGRp
ZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNiL3Fjb20sc25w
cy1kd2MzLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNiL3Fjb20s
c25wcy1kd2MzLnlhbWwKPiBpbmRleCA4MjAxNjU2YjQxZWQ3Li5lNTlmYmZjMWFmNzFiIDEwMDY0
NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91c2IvcWNvbSxzbnBz
LWR3YzMueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91c2Iv
cWNvbSxzbnBzLWR3YzMueWFtbApbIC4uLiBdCj4gQEAgLTE4Miw2ICsxODEsMjUgQEAgYWxsT2Y6
Cj4gICAgICAgICAgICAgIC0gY29uc3Q6IHNsZWVwCj4gICAgICAgICAgICAgIC0gY29uc3Q6IG1v
Y2tfdXRtaQo+ICAKPiArICAtIGlmOgo+ICsgICAgICBwcm9wZXJ0aWVzOgo+ICsgICAgICAgIGNv
bXBhdGlibGU6Cj4gKyAgICAgICAgICBjb250YWluczoKPiArICAgICAgICAgICAgZW51bToKPiAr
ICAgICAgICAgICAgICAtIHFjb20saXBxNTMzMi1kd2MzCj4gKyAgICB0aGVuOgo+ICsgICAgICBw
cm9wZXJ0aWVzOgo+ICsgICAgICAgIGNsb2NrczoKPiArICAgICAgICAgIG1pbkl0ZW1zOiA1Cj4g
KyAgICAgICAgICBtYXhJdGVtczogNQoKW1NldmVyaXR5OiBIaWdoXQpUaGUgY29tbWl0IG1lc3Nh
Z2Ugc3RhdGVzIHRoYXQgdGhlIGF1eCBhbmQgbGZwcyBjbG9ja3MgYXJlIHJlcXVpcmVkIG9ubHkg
Zm9yClVTQiBTdXBlci1TcGVlZCBzdXBwb3J0LiBEb2VzIHNldHRpbmcgbWluSXRlbXMgdG8gNSB1
bmNvbmRpdGlvbmFsbHkgYnJlYWsKc2NoZW1hIHZhbGlkYXRpb24gZm9yIGV4aXN0aW5nIEhpZ2gt
U3BlZWQtb25seSBkZXZpY2UgdHJlZXMgdGhhdCBvbmx5IHN1cHBseQp0aGUgY29yZSwgc2xlZXAs
IGFuZCBtb2NrX3V0bWkgY2xvY2tzPwoKSWYgdGhlc2UgY2xvY2tzIGFyZSBvcHRpb25hbCBkZXBl
bmRpbmcgb24gdGhlIGhhcmR3YXJlIGNvbmZpZ3VyYXRpb24sIHNob3VsZAptaW5JdGVtcyByZW1h
aW4gMyB3aXRoIHRoZSBhZGRpdGlvbmFsIGNsb2NrcyBkZWZpbmVkIGFzIG9wdGlvbmFsIGl0ZW1z
PwoKPiArICAgICAgICBjbG9jay1uYW1lczoKPiArICAgICAgICAgIGl0ZW1zOgo+ICsgICAgICAg
ICAgICAtIGNvbnN0OiBjb3JlCj4gKyAgICAgICAgICAgIC0gY29uc3Q6IHNsZWVwCj4gKyAgICAg
ICAgICAgIC0gY29uc3Q6IG1vY2tfdXRtaQo+ICsgICAgICAgICAgICAtIGNvbnN0OiBhdXgKPiAr
ICAgICAgICAgICAgLSBjb25zdDogbGZwcwo+ICsKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBo
dHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA4MTItaXBxNTAxOC11c2IzLXYyLTAt
OGYzNTVkN2ZmMGVmQG91dGxvb2suY29tP3BhcnQ9NgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
