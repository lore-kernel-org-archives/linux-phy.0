Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 860E5C88E53
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 15:59:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ACywLWBhZaGLCsdbbhL/CHTRP6ZDegUlLMH0aUlybBg=; b=BnDQaVTxsXUa7g
	rXmIr0zu+guBrb5e4XfZBS5EAjgka69BU/eJ5FhM0DljOmTSZ4si7Z7/kgW7SCrm6xlJsk74s3M8v
	dJ2JuL7wHq0a8xxz95JNsGABp67gms47MvE1UaLUs3lfOAXa+M/Z6NjWg9HPOSsgO4uSu8YeqGXTk
	Oe+Tt+Q2HiGDUnj81mxnx4QvBPNVTAhEtqHOXEeZj8sOAmeMmn/lLQvDACdNOvirOrJs/iO3QRclo
	nvOAQpCVElsrtIIpl4kipcyewPjDlUIQtXrBz7B/+hqfiRfDIGCddf1dn09FkX5Tf/WROPELQrgxf
	3MfItCXXF1hh2J9nblIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53fP-0000000HA5u-3dEV;
	Fri, 11 Sep 2026 15:59:55 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53fO-0000000HA5S-2WN7
	for linux-phy@lists.infradead.org;
	Fri, 11 Sep 2026 15:59:54 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 15249411C2;
	Fri, 11 Sep 2026 15:59:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7B2421F000FF;
	Fri, 11 Sep 2026 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789142394;
	bh=e1ZkIJ7dgQuKeYMRuEnRCVfbeVmVIydE09qYycLBhmM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=TLM+tlPCNKZrtiagr0tyafKrRRijAYaEmSdfTfcRbRijg2M9x1vzVuXCzVrBBTWP6
	 siMWbT6ATQioBw2Uy95PUTzEOgPOsX/x6Qw01NS2TVq3E5HxKX/j4FiKJ/S2NqhGJY
	 jsWXrFQR4UdjWhG38/W1hSIr45tbl7FDezCKo5+Uj6LaBTiFqn8VAYzaTIZTo3dC7X
	 MJv6srlOyLcFoxnfNSWh8zstQz/nubQsbiZ43HLkKMzAlLhQJTBFL/Nztd9XW/wI4N
	 ddd8X918+b4flL/uXsnllwXEbBkpA2aU10RdDtNOJvqbKPlBPPF93idp8XsUmNmBCn
	 4cgc1bfmar8yA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 04/17] drm/msm/dpu: Add support for DPU 12.1 on Nord
To: "Nabige Aala" <nabige.aala@oss.qualcomm.com>
Cc: olteanv@gmail.com, devicetree@vger.kernel.org, robh@kernel.org, vkoul@kernel.org, dri-devel@lists.freedesktop.org, neil.armstrong@linaro.org, conor+dt@kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260911-nord-drv-dt-v1-4-e25c073cf1b6@oss.qualcomm.com>
References: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
 <20260911-nord-drv-dt-v1-4-e25c073cf1b6@oss.qualcomm.com>
Date: Fri, 11 Sep 2026 15:59:53 +0000
Message-Id: <20260911155953.7B2421F000FF@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIEFkZGluZyBgSU5URl85
YCBhbmQgYElOVEZfMTBgIHdpdGhvdXQgY29ycmVzcG9uZGluZyBlbnRyaWVzIGluIGBlbnVtIGRw
dV9od19pbnRyX3JlZ2AgY2F1c2VzIHRoZSBgTURQX0lOVEZuX0lOVFIoKWAgbWFjcm8gdG8gc2ls
ZW50bHkgYWxpYXMgd2l0aCBsZWdhY3kgRFNJIFRFQVIgaW50ZXJydXB0cywgbGVhZGluZyB0byBm
YXRhbCB1bmNsb2NrZWQgaGFyZHdhcmUgYWNjZXNzZXMuCi0gW0hpZ2hdIEluY2x1ZGluZyBpbmZl
cnJlZCwgdW52ZXJpZmllZCBkdW1teSByZWdpc3RlciBhZGRyZXNzZXMgYW5kIGJ1cyBtYXBwZXIg
SURzIGluIGFuIHVwc3RyZWFtIGhhcmR3YXJlIGNhdGFsb2cuCi0tCgpjb21taXQgYmQxY2I0MzIx
MDEwNGM4MjJkMzYxMzUwYWU3NWY1YjYzODU0ZWRjNwpBdXRob3I6IE1haGFkZXZhbiBQIDxtYWhh
ZGV2YW4ucEBvc3MucXVhbGNvbW0uY29tPgoKZHJtL21zbS9kcHU6IEFkZCBzdXBwb3J0IGZvciBE
UFUgMTIuMSBvbiBOb3JkCgpUaGlzIGNvbW1pdCBhZGRzIHRoZSBEUFUgY2F0YWxvZyBlbnRyeSBm
b3IgdGhlIFF1YWxjb21tIE5vcmQgU29DIChNRFNTIDEyLjEpLAphIERQLW9ubHkgY2hpcCB3aXRo
IDggRFNQUCBibG9ja3MsIDIgd3JpdGViYWNrIGJsb2NrcywgOCBpbnRlcmZhY2VzIGFuZCAyIERQ
CmNvbnRyb2xsZXJzLiBJdCBleHRlbmRzIHRoZSBpbnRlcmZhY2UgZW51bSB3aXRoIElOVEZfOSBh
bmQgSU5URl8xMCBhbmQgYWRkcwppbmZlcnJlZCBoYXJkd2FyZSBjYXRhbG9nIGVudHJpZXMgbWFy
a2VkIHdpdGggRklYTUUuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbXNtL2Rpc3Av
ZHB1MS9jYXRhbG9nL2RwdV8xMl8xX25vcmQuaCBiL2RyaXZlcnMvZ3B1L2RybS9tc20vZGlzcC9k
cHUxL2NhdGFsb2cvZHB1XzEyXzFfbm9yZC5oCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRl
eCAwMDAwMDAwMDAwMDAwLi44ZWIxODc1MmYzYzRiCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9tc20vZGlzcC9kcHUxL2NhdGFsb2cvZHB1XzEyXzFfbm9yZC5oClsgLi4u
IF0KPiArc3RhdGljIGNvbnN0IHN0cnVjdCBkcHVfd2JfY2ZnIG5vcmRfd2JbXSA9IHsKPiArCXsK
PiArCQkubmFtZSA9ICJ3Yl8xIiwgLmlkID0gV0JfMSwKPiArCQkuYmFzZSA9IDB4NjQ4MDAsIC5s
ZW4gPSAweDJjOCwgLyogRklYTUUoUkVHX0FERFIpOiBpbmZlcnJlZCAqLwo+ICsJCS5mZWF0dXJl
cyA9IFdCX1NETTg0NV9NQVNLLAo+ICsJCS5mb3JtYXRfbGlzdCA9IHdiMl9mb3JtYXRzX3JnYl95
dXYsCj4gKwkJLm51bV9mb3JtYXRzID0gQVJSQVlfU0laRSh3YjJfZm9ybWF0c19yZ2JfeXV2KSwK
PiArCQkueGluX2lkID0gNywgLyogRklYTUUoWElVX01BUCk6IGluZmVycmVkICovCgpbU2V2ZXJp
dHk6IEhpZ2hdCklzIGl0IHNhZmUgdG8gaW5jbHVkZSBpbmZlcnJlZCByZWdpc3RlciBiYXNlIGFk
ZHJlc3NlcyBhbmQgYnVzIG1hcHBlciBJRHMgdGhhdApoYXZlbid0IGJlZW4gdmVyaWZpZWQgYWdh
aW5zdCBhY3R1YWwgaGFyZHdhcmU/CgpXaGVuIHRoZSBkcml2ZXIgcHJvYmVzIG9uIE5vcmQsIGl0
IHdpbGwgdW5jb25kaXRpb25hbGx5IG1hcCBhbmQgYWNjZXNzIHRoZXNlCnVudmVyaWZpZWQgYWRk
cmVzc2VzLiBJZiB0aGUgaW5mZXJyZWQgYmFzZSBhZGRyZXNzIGlzIGluY29ycmVjdCwgYWNjZXNz
aW5nCnRoaXMgcmVnaW9uIHdpbGwgbGlrZWx5IGhpdCBpbnZhbGlkIHBoeXNpY2FsIG1lbW9yeSBh
bmQgY2F1c2UgYW4gaW1tZWRpYXRlCmJ1cyBlcnJvci4KClsgLi4uIF0KPiArc3RhdGljIGNvbnN0
IHN0cnVjdCBkcHVfaW50Zl9jZmcgbm9yZF9pbnRmW10gPSB7Cj4gKwl7ClsgLi4uIF0KPiArCQku
bmFtZSA9ICJpbnRmXzQiLCAuaWQgPSBJTlRGXzQsCj4gKwkJLmJhc2UgPSAweDM4MDAwLCAubGVu
ID0gMHg0YmMsIC8qIEZJWE1FKFJFR19BRERSKTogbmV3LCBzdHJpZGUgKzB4MTAwMCAqLwoKW1Nl
dmVyaXR5OiBIaWdoXQpTaW1pbGFybHkgaGVyZSwgd2lsbCBhY2Nlc3NpbmcgdGhpcyB1bnZlcmlm
aWVkIElOVEZfNCBiYXNlIGFkZHJlc3MgY2F1c2UgYQpzeXN0ZW0gY3Jhc2ggaWYgdGhlIGd1ZXNz
ZWQgc3RyaWRlIGlzIGluY29ycmVjdCBmb3IgdGhpcyBTb0M/CgpbIC4uLiBdCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9tc20vZGlzcC9kcHUxL2RwdV9od19tZHNzLmggYi9kcml2ZXJz
L2dwdS9kcm0vbXNtL2Rpc3AvZHB1MS9kcHVfaHdfbWRzcy5oCj4gaW5kZXggMGU2NWJmNWRkYzRh
Ni4uN2VjY2I0ZDJjNjVlZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vbXNtL2Rpc3Av
ZHB1MS9kcHVfaHdfbWRzcy5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL21zbS9kaXNwL2RwdTEv
ZHB1X2h3X21kc3MuaAo+IEBAIC0yMjYsNiArMjI2LDggQEAgZW51bSBkcHVfaW50ZiB7Cj4gIAlJ
TlRGXzYsCj4gIAlJTlRGXzcsCj4gIAlJTlRGXzgsCj4gKwlJTlRGXzksCj4gKwlJTlRGXzEwLAo+
ICAJSU5URl9NQVgKPiAgfTsKCltTZXZlcml0eTogSGlnaF0KRG9lcyBhZGRpbmcgSU5URl85IGFu
ZCBJTlRGXzEwIHdpdGhvdXQgdXBkYXRpbmcgZW51bSBkcHVfaHdfaW50cl9yZWcgY2F1c2UKYW4g
aW50ZXJydXB0IG1hcHBpbmcgY29sbGlzaW9uPwoKTG9va2luZyBhdCBNRFBfSU5URm5fSU5UUiBp
biBkcHVfaHdfaW50ZXJydXB0cy5oOgoKI2RlZmluZSBNRFBfSU5URm5fSU5UUihpbnRmKSAgICAo
TURQX0lOVEYwX0lOVFIgKyAoaW50ZiAtIElOVEZfMCkpCgpXaGVuIHRoaXMgbWFwcyBJTlRGXzkg
KGluZGV4IDEwKSBhbmQgSU5URl8xMCAoaW5kZXggMTEpLCB0aGV5IGV2YWx1YXRlIHRvCm9mZnNl
dHMgMTIgYW5kIDEzIHJlc3BlY3RpdmVseS4gSW4gZW51bSBkcHVfaHdfaW50cl9yZWcsIG9mZnNl
dHMgMTIgYW5kIDEzCmFyZSBhbHJlYWR5IG1hcHBlZCB0byBNRFBfSU5URjFfVEVBUl9JTlRSIGFu
ZCBNRFBfSU5URjJfVEVBUl9JTlRSLgoKRHVyaW5nIGRyaXZlciBwcm9iZSwgZHB1X2h3X2ludHJf
aW5pdCgpIHVzZXMgdGhpcyBtYWNybyB0byBwb3B1bGF0ZSB0aGUKaXJxX21hc2suIFNpbmNlIE5v
cmQgaXMgRFAtb25seSBhbmQgZXhwbGljaXRseSBsYWNrcyB0aGUgSU5URl8xIGFuZCBJTlRGXzIK
aGFyZHdhcmUgYmxvY2tzLCB3aWxsIGRwdV9jbGVhcl9pcnFzKCkgaXRlcmF0aW5nIG92ZXIgdGhp
cyBtYXNrIGF0dGVtcHQgdG8Kd3JpdGUgdG8gdW5tYXBwZWQgVEVBUiByZWdpc3RlcnMgYW5kIGNh
dXNlIGFuIHVucmVjb3ZlcmFibGUgYnVzIGZhdWx0PwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3
IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDkxMS1ub3JkLWRydi1kdC12MS0w
LWUyNWMwNzNjZjFiNkBvc3MucXVhbGNvbW0uY29tP3BhcnQ9NAoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
