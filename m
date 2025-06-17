Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 411ACC7115F
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jun 2025 17:13:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HgzqPprHTdsNN6KX2o4rbDXQCspY8dx0rNFvKhXrBX0=; b=ra8+q9Y3x0iR9q
	3/20LeuqqAFJXTuYgZQKQdxcrj/mVZgoNjYCtLWukh4g0kIKJPmiwoLAbP79OCG0k6sZi5ShF4Yjk
	hrzlopNmb4Aq2xf814VTG6tgxfD2qv9wLhocRtUQE2oB3X7MYfVOfrkZvgjhDCVDIkBW1puLcrlnr
	RC0EteU3hnQwzue50OImz7ElSNt9h8K8Ix5cOJp+JG5g9ubGE9nygbWl7XDCoLqGO++bQannsJKD5
	AFTMhYyGE62mfNu55Jg9fdILlOwTlqVuGGffdLuGaCY4VGYb5OVTq51kiDgX7smCC0zRk6HPzAcxK
	CtAd1aRSX/V9Zf1dPp2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRZro-000000080fR-2YoQ;
	Tue, 17 Jun 2025 17:13:00 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRZFj-00000007t8Q-1iZv
	for linux-phy@lists.infradead.org;
	Tue, 17 Jun 2025 16:33:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 228A94A52B;
	Tue, 17 Jun 2025 16:33:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CC85CC4CEE3;
	Tue, 17 Jun 2025 16:33:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750178019;
	bh=HXwonGiNJd0DIMeQERhLo8Kf3Zxxi0PS7BE3fkI89jQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QoLn8npu5krVknk1qU+Lk01+Vi5QKLMaXUoTeYPXKR1NgNk6pSHE1m6gbfIfyTE4H
	 OZChYeBkH5v/pLKhlCyhTXlWKFkX00zqcInHpsEjVCfzL7GxLVrssnuSizpvVMLOsb
	 vfK6c/CJg02JUpuSBet84tI40mZvzmlWXdWCzs2YnAhJP2EMakd6tO91y19nLn/cXJ
	 LwquK324EBWU1MMpN1fIhzqr56zRBdnF8ROVQOcWg/XCZRICOn5Wg6n+Oay8wHnE7s
	 t3CiRpuAHbujWFd8CbsGP7KU41zKi/9WmPCcsx4TKvLSR6Mwb+WVjUIKhb80nPr1a8
	 gUrjjXAZySrxA==
Date: Tue, 17 Jun 2025 22:03:26 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: lpieralisi@kernel.org, kwilczynski@kernel.org, 
	manivannan.sadhasivam@linaro.org, robh@kernel.org, bhelgaas@google.com, krzk+dt@kernel.org, 
	neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com, conor+dt@kernel.org, 
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org, konradybcio@kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, quic_qianyu@quicinc.com, 
	quic_krichai@quicinc.com, quic_vbadigan@quicinc.com, 
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v5 4/4] arm64: dts: qcom: qcs615-ride: Enable PCIe
 interface
Message-ID: <6vfwiii4sawm722odw6hxomtsrd5m64pmjlqm5sr5m3nblih3m@jkn3txak5nix>
References: <20250527072036.3599076-1-quic_ziyuzhan@quicinc.com>
 <20250527072036.3599076-5-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250527072036.3599076-5-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_093339_467071_C85CF262 
X-CRM114-Status: GOOD (  13.27  )
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

T24gVHVlLCBNYXkgMjcsIDIwMjUgYXQgMDM6MjA6MzZQTSArMDgwMCwgWml5dWUgWmhhbmcgd3Jv
dGU6Cj4gRnJvbTogS3Jpc2huYSBjaGFpdGFueWEgY2h1bmRydSA8cXVpY19rcmljaGFpQHF1aWNp
bmMuY29tPgo+IAo+IEFkZCBwbGF0Zm9ybSBjb25maWd1cmF0aW9ucyBpbiBkZXZpY2V0cmVlIGZv
ciBQQ0llLCBib2FyZCByZWxhdGVkCj4gZ3Bpb3MsIFBNSUMgcmVndWxhdG9ycywgZXRjLgo+IAo+
IFJldmlld2VkLWJ5OiBLb25yYWQgRHliY2lvIDxrb25yYWQuZHliY2lvQG9zcy5xdWFsY29tbS5j
b20+Cj4gU2lnbmVkLW9mZi1ieTogS3Jpc2huYSBjaGFpdGFueWEgY2h1bmRydSA8cXVpY19rcmlj
aGFpQHF1aWNpbmMuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFppeXVlIFpoYW5nIDxxdWljX3ppeXV6
aGFuQHF1aWNpbmMuY29tPgo+IC0tLQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vcWNzNjE1
LXJpZGUuZHRzIHwgNDIgKysrKysrKysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2Vk
LCA0MiBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cWNvbS9xY3M2MTUtcmlkZS5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vcWNzNjE1LXJp
ZGUuZHRzCj4gaW5kZXggMmI1YWEzYzY2ODY3Li5jNTk2NDdlNWYyZDYgMTAwNjQ0Cj4gLS0tIGEv
YXJjaC9hcm02NC9ib290L2R0cy9xY29tL3FjczYxNS1yaWRlLmR0cwo+ICsrKyBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcWNvbS9xY3M2MTUtcmlkZS5kdHMKPiBAQCAtMjE3LDYgKzIxNywyMyBAQCAm
Z2NjIHsKPiAgCQkgPCZzbGVlcF9jbGs+Owo+ICB9Owo+ICAKPiArJnBjaWUgewo+ICsJcGVyc3Qt
Z3Bpb3MgPSA8JnRsbW0gMTAxIEdQSU9fQUNUSVZFX0xPVz47Cj4gKwl3YWtlLWdwaW9zID0gPCZ0
bG1tIDEwMCBHUElPX0FDVElWRV9ISUdIPjsKPiArCj4gKwlwaW5jdHJsLTAgPSA8JnBjaWVfZGVm
YXVsdF9zdGF0ZT47Cj4gKwlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ICsKPiArCXN0YXR1
cyA9ICJva2F5IjsKPiArfTsKPiArCj4gKyZwY2llX3BoeSB7Cj4gKwl2ZGRhLXBoeS1zdXBwbHkg
PSA8JnZyZWdfbDVhPjsKPiArCXZkZGEtcGxsLXN1cHBseSA9IDwmdnJlZ19sMTJhPjsKPiArCj4g
KwlzdGF0dXMgPSAib2theSI7Cj4gK307Cj4gKwo+ICAmcG04MTUwX2dwaW9zIHsKPiAgCXVzYjJf
ZW46IHVzYjItZW4tc3RhdGUgewo+ICAJCXBpbnMgPSAiZ3BpbzEwIjsKPiBAQCAtMjQ0LDYgKzI2
MSwzMSBAQCAmcnBtaGNjIHsKPiAgCWNsb2NrcyA9IDwmeG9fYm9hcmRfY2xrPjsKPiAgfTsKPiAg
Cj4gKyZ0bG1tIHsKPiArCXBjaWVfZGVmYXVsdF9zdGF0ZTogcGNpZS1kZWZhdWx0LXN0YXRlIHsK
PiArCQljbGtyZXEtcGlucyB7Cj4gKwkJCXBpbnMgPSAiZ3BpbzkwIjsKPiArCQkJZnVuY3Rpb24g
PSAicGNpZV9jbGtfcmVxIjsKPiArCQkJZHJpdmUtc3RyZW5ndGggPSA8Mj47Cj4gKwkJCWJpYXMt
cHVsbC11cDsKPiArCQl9Owo+ICsKPiArCQlwZXJzdC1waW5zIHsKPiArCQkJcGlucyA9ICJncGlv
MTAxIjsKPiArCQkJZnVuY3Rpb24gPSAiZ3BpbyI7Cj4gKwkJCWRyaXZlLXN0cmVuZ3RoID0gPDI+
Owo+ICsJCQliaWFzLXB1bGwtZG93bjsKCkFyZSB5b3Ugc3VyZSB0aGF0IHRoZSBkZWZhdWx0IHN0
YXRlIG9mIHRoZSBwaW4gc2hvdWxkIGJlICdwdWxsIGRvd24nPyBQdWxsIGRvd24Kb2YgYSBQRVJT
VCMgaXMgZGVhc3NlcnQsIHdoaWNoIHNob3VsZCBvbmx5IGhhcHBlbiBvbmNlIHRoZSBwb3dlciBh
bmQgcmVmY2xrIGFyZQpzdGFibGUuCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPg
rqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
