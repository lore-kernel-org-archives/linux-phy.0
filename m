Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B745ECD5BC0
	for <linux-phy@archiver.kernel.org>; Mon, 25 May 2026 05:46:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9qyguQwRb4+PXmUeKp0RGt+RcYPXubg1GfooLC4eGac=; b=QuXZ+eveCzhuKr
	R+Ngr+6+a3e1E2HuYGy9UNTcZqYQKlyYWK2y+L4M1euVEd3QWBbvtxJLdnphpGNJhIw08AdUC5JPb
	g5oAJGTAjCxg0pANUTueDxTu+gPu+4VatRvWf/pEVXcfnwekNGdMaOswAMNWAuydzgl0zsxKam7C6
	b8iPfh82FO0GqvLvvdCYt3SO90fSjczgEej9+Qnw4Ml5vg+OeaOProfzwEFBgxtQAlq7KgC+w0dPC
	GQPlXqgaP+dvlFA0c4fb3iuUg5fPtmsW5g+Hf5femfZ58cevol3CxGJ8QxyhFN7D2nZqT/L8lJeg4
	acayZJN6fTrwo6V6h/9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRO9J-0000000GM8F-18ej;
	Mon, 25 May 2026 05:46:49 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRO9H-0000000GM7m-1Ryx
	for linux-phy@lists.infradead.org;
	Mon, 25 May 2026 05:46:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id BD4824172D;
	Mon, 25 May 2026 05:46:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50AD51F000E9;
	Mon, 25 May 2026 05:46:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779688006;
	bh=JkVT8PPeFnVcIjuoKyaVdPejNPYb2vnPqywFEHXMJtE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Nu6OLv+8aazcSA8Zvq34JcZuM+NrYWH9yFtQJkQVQ0/XLHPPEuCngmdamLzA6Iy2B
	 IwEeEoaa/EWYAXM9AuaXw0sULPq3OA4lM66HoIOJSvnp5l9kx/5C0mkF/erW/HOTQe
	 ieSMSCJ1AHvtkVqJShBtLoC0KjTyUWjfAkFy8arvaYJHwQgPDAeOuvKV6GhNkg6Zmy
	 GpkpFDhx0Td6k65o36JDSjimX1Snv9qlx5fJCHHJLhyzwVYfbgDwTTxyiL9jsOEqPC
	 aLmF5K6myf2VrpcYGsb5GTDCYHzumgb4IcBQrN6zylkuCoNshUPo9W0CFs2K1fOBMf
	 MxhDyvyby+dHw==
Date: Mon, 25 May 2026 11:16:37 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: palash.kambar@oss.qualcomm.com
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, alim.akhtar@samsung.com, bvanassche@acm.org, 
	andersson@kernel.org, dmitry.baryshkov@oss.qualcomm.com, abel.vesa@oss.qualcomm.com, 
	luca.weiss@fairphone.com, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org
Subject: Re: [PATCH V2 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add
 Hawi UFS PHY compatible
Message-ID: <msok3ij2dd72wu7c25iip5d4j5hzz6b6xtmb3p5eizpyonkom7@hiajdjg6z5dx>
References: <20260522172716.820490-1-palash.kambar@oss.qualcomm.com>
 <20260522172716.820490-2-palash.kambar@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260522172716.820490-2-palash.kambar@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260524_224647_401508_62BB6C6B 
X-CRM114-Status: GOOD (  11.45  )
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

T24gRnJpLCBNYXkgMjIsIDIwMjYgYXQgMTA6NTc6MTRQTSArMDUzMCwgcGFsYXNoLmthbWJhckBv
c3MucXVhbGNvbW0uY29tIHdyb3RlOgo+IEZyb206IFBhbGFzaCBLYW1iYXIgPHBhbGFzaC5rYW1i
YXJAb3NzLnF1YWxjb21tLmNvbT4KPiAKPiBEb2N1bWVudCBRTVAgVUZTIFBIWSBjb21wYXRpYmxl
IGZvciBIYXdpIFNvQy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBQYWxhc2ggS2FtYmFyIDxwYWxhc2gu
a2FtYmFyQG9zcy5xdWFsY29tbS5jb20+CgpSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNp
dmFtIDxtYW5pQGtlcm5lbC5vcmc+CgotIE1hbmkKCj4gLS0tCj4gIC4uLi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3BoeS9xY29tLHNjODI4MHhwLXFtcC11ZnMtcGh5LnlhbWwgICAgICB8IDIgKysKPiAg
MSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sc2M4MjgweHAtcW1wLXVmcy1waHku
eWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxzYzgyODB4
cC1xbXAtdWZzLXBoeS55YW1sCj4gaW5kZXggOTYxNmM3MzZiNmQ0Li5iNzUwMTVmM2VhNzAgMTAw
NjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHNj
ODI4MHhwLXFtcC11ZnMtcGh5LnlhbWwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvcGh5L3Fjb20sc2M4MjgweHAtcW1wLXVmcy1waHkueWFtbAo+IEBAIC0zNyw2ICsz
Nyw3IEBAIHByb3BlcnRpZXM6Cj4gICAgICAgICAgICAgICAgLSBxY29tLGthYW5hcGFsaS1xbXAt
dWZzLXBoeQo+ICAgICAgICAgICAgLSBjb25zdDogcWNvbSxzbTg3NTAtcW1wLXVmcy1waHkKPiAg
ICAgICAgLSBlbnVtOgo+ICsgICAgICAgICAgLSBxY29tLGhhd2ktcW1wLXVmcy1waHkKPiAgICAg
ICAgICAgIC0gcWNvbSxtaWxvcy1xbXAtdWZzLXBoeQo+ICAgICAgICAgICAgLSBxY29tLG1zbTg5
OTYtcW1wLXVmcy1waHkKPiAgICAgICAgICAgIC0gcWNvbSxtc204OTk4LXFtcC11ZnMtcGh5Cj4g
QEAgLTEwNyw2ICsxMDgsNyBAQCBhbGxPZjoKPiAgICAgICAgICBjb21wYXRpYmxlOgo+ICAgICAg
ICAgICAgY29udGFpbnM6Cj4gICAgICAgICAgICAgIGVudW06Cj4gKyAgICAgICAgICAgICAgLSBx
Y29tLGhhd2ktcW1wLXVmcy1waHkKPiAgICAgICAgICAgICAgICAtIHFjb20sbWlsb3MtcW1wLXVm
cy1waHkKPiAgICAgICAgICAgICAgICAtIHFjb20sbXNtODk5OC1xbXAtdWZzLXBoeQo+ICAgICAg
ICAgICAgICAgIC0gcWNvbSxzYTg3NzVwLXFtcC11ZnMtcGh5Cj4gLS0gCj4gMi4zNC4xCj4gCgot
LSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
