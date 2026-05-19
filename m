Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D19DCD4F57
	for <linux-phy@archiver.kernel.org>; Tue, 19 May 2026 11:32:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Po/NBJZcaC3xgamgMD0Mzf311IBlpVKV0OWzLvoIza8=; b=EkO3sOAFQYLQTc
	N/5Y01EElAUecnByeLgdzkNGG5q1Y18XYvWi4xDOP+Kq3PqYA9fyG1Bw91Av4RRqCoeKOeJLHp5qU
	Ay4Fol5glb86c5x4WkN/9GrVfSZOgZvxZTJcpcbbA/SUU0kR1PdgAbQvMttTv9p+JVb1r6/MmHTIW
	ke3OO+y4zYXQt/vO44F0XW14palFLaYWE3Xbleegxj7tO1t3YdsBbENokCOy9sRtEGA+w/1jyQeD2
	x30Wgb9lEo41I5xXFy+dN8zQEitkwqaNUUPAgzXsTpUP3PBEarb9B3nqzpPz/VpLVu0i3LMoOpso9
	vRm7VG9SeU1KCEpIGvHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPIgg-00000001KYL-3lRn;
	Tue, 19 May 2026 11:32:39 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPIgd-00000001KXh-3z32
	for linux-phy@lists.infradead.org;
	Tue, 19 May 2026 11:32:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 2F59F41A74;
	Tue, 19 May 2026 11:32:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA75FC2BCB3;
	Tue, 19 May 2026 11:32:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779190355;
	bh=Rc/1QPOrAH3lKzrTIRvCpJUMZXKgWvr+Afu42dLtwIQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=quINonbOIjpDQ8+QEizLegeC5VVTJPfh1PRVHqPRP2jUsYjVmwq9O5ZwQdos2Dirm
	 sulBQ8X6tBZqlDRTXjXkAvRdYpbUL8FNYhcJICawoOXlljxXE0u3Sxe2+3Mov1EOy0
	 yGCOV8MX+xqJ7aVi/A6OD9c3f9cjSF1DLEgIj2KVoG0vkifj8wCaMb81IrmSLHIQck
	 8Dt46U6WMHQ21dR50+zSF6eXFRab69bsfIXkpmH0Mn0vm9ekMz1Q9B/BfJI7HZyvND
	 dXaUKHEJSUM2lpPopENs38bpLEkwUXfNrKyh41uCcr4sM9cuzFBIAVUkTB62zfVVK8
	 K1xThhQubh+zw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/5] dt-bindings: arm: qcom: Document Shikra and its
 EVK boards
To: "Komal Bajaj" <komal.bajaj@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, vkoul@kernel.org
In-Reply-To: <20260519-shikra-dt-v2-1-c01b90fb4395@oss.qualcomm.com>
References: <20260519-shikra-dt-v2-1-c01b90fb4395@oss.qualcomm.com>
Date: Tue, 19 May 2026 11:32:34 +0000
Message-Id: <20260519113234.BA75FC2BCB3@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_043236_006765_6EF9D1B7 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gRGV2aWNlIHRyZWUg
Y29tcGF0aWJsZSBzdHJpbmdzIHVzZSBnZW5lcmljIGFiYnJldmlhdGlvbnMgaW5zdGVhZCBvZiBz
cGVjaWZpYyBoYXJkd2FyZSBwYXJ0IG51bWJlcnMuCi0gW0xvd10gQWxwaGFiZXRpY2FsIHNvcnRp
bmcgdmlvbGF0aW9uIGluIHFjb20ueWFtbC4KLS0KCmNvbW1pdCBkNWRlODVmMWRjZGQ3MzQzMGRk
NGJlZDU0ZWJlYmUwODM3YmE3ZjVlCkF1dGhvcjogS29tYWwgQmFqYWogPGtvbWFsLmJhamFqQG9z
cy5xdWFsY29tbS5jb20+CgpkdC1iaW5kaW5nczogYXJtOiBxY29tOiBEb2N1bWVudCBTaGlrcmEg
YW5kIGl0cyBFVksgYm9hcmRzCgpUaGlzIGNvbW1pdCBpbnRyb2R1Y2VzIGNvbXBhdGlibGUgc3Ry
aW5ncyBmb3IgdGhlIFF1YWxjb21tIFNoaWtyYSBTb0MgaW4KU3lzdGVtLW9uLU1vZHVsZSAoU29N
KSBmb3JtIGZhY3RvcnMgYW5kIHRoZWlyIGNvcnJlc3BvbmRpbmcgRVZLIGNhcnJpZXIKYm9hcmRz
LgoKPiAgICAgQWRkIGNvbXBhdGlibGUgc3RyaW5ncyBmb3IgdGhlIENRMjM5ME0sIENRMjM5MFMs
IElRMjM5MFMgU29NIHZhcmlhbnQgYW5kIGl0cwo+ICAgICBjb3JyZXNwb25kaW5nIEVWSyBib2Fy
ZHMuCgpTaG91bGQgdGhlc2UgY29tcGF0aWJsZSBzdHJpbmdzIHVzZSB0aGUgc3BlY2lmaWMgaGFy
ZHdhcmUgcGFydCBudW1iZXJzCihDUTIzOTBNLCBDUTIzOTBTLCBJUTIzOTBTKSBpbnN0ZWFkIG9m
IGdlbmVyaWMgYWJicmV2aWF0aW9ucyBsaWtlCnFjb20sc2hpa3JhLWNxbS1zb20/CgpJZiB0aGUg
Z2VuZXJpYyBhYmJyZXZpYXRpb25zIGFyZSBrZXB0LCBjYW4gdGhlIHNjaGVtYSBtYXAgdGhlc2UK
YWJicmV2aWF0aW9ucyB0byB0aGUgc3BlY2lmaWMgcGFydCBudW1iZXJzIHRvIGRvY3VtZW50IHRo
ZSBBQkk/Cgo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
YXJtL3Fjb20ueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcWNv
bS55YW1sCj4gaW5kZXggYWYyNjZkNTg0ZmFlNi4uN2M1YzVmNGZjMzBmNyAxMDA2NDQKPiAtLS0g
YS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3Fjb20ueWFtbAo+ICsrKyBi
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcWNvbS55YW1sCj4gQEAgLTk2
OCw2ICs5NjgsMjQgQEAgcHJvcGVydGllczoKPiAgICAgICAgICAgIC0gY29uc3Q6IHFjb20scWNz
OTEwMAo+ICAgICAgICAgICAgLSBjb25zdDogcWNvbSxzYTg3NzVwCj4gIAo+ICsgICAgICAtIGl0
ZW1zOgo+ICsgICAgICAgICAgLSBlbnVtOgo+ICsgICAgICAgICAgICAgIC0gcWNvbSxzaGlrcmEt
Y3FtLWV2awo+ICsgICAgICAgICAgLSBjb25zdDogcWNvbSxzaGlrcmEtY3FtLXNvbQo+ICsgICAg
ICAgICAgLSBjb25zdDogcWNvbSxzaGlrcmEKClRoaXMgaXNuJ3QgYSBidWcsIGJ1dCBzaG91bGQg
dGhlc2UgbmV3IGJsb2NrcyBiZSBzb3J0ZWQgYWxwaGFiZXRpY2FsbHkKYmFzZWQgb24gdGhlIHJv
b3QgU29DIGNvbXBhdGlibGUgc3RyaW5nPwoKU2luY2UgJ2gnIGNvbWVzIGFmdGVyICdkJywgY291
bGQgcWNvbSxzaGlrcmEgYmUgcGxhY2VkIGFmdGVyIHFjb20sc2RtODQ1Cmluc3RlYWQgb2YgYWZ0
ZXIgcWNvbSxzYTg3NzVwPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlr
by5kZXYvIy9wYXRjaHNldC8yMDI2MDUxOS1zaGlrcmEtZHQtdjItMC1jMDFiOTBmYjQzOTVAb3Nz
LnF1YWxjb21tLmNvbT9wYXJ0PTEKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
