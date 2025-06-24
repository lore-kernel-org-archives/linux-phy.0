Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9CD8C77B7F
	for <linux-phy@archiver.kernel.org>; Tue, 24 Jun 2025 22:14:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0N/BaYnULW4Ua65W/YaMhLX3djp5QOt3CtsOu1YWK0Q=; b=g6DW/VLp+JC4fJ
	TqJRDcY2vU4KaRMwEcXr8linyzub3mrsqhqyfJkSD5V00Bdo54TtFI039zjdT/E4IK1Sz0aCC4uYT
	OwJHXGl4XrQork6M7EGOv1HbZFWUTM132WXjmJqME3QMGiGEo8bbtsAN6PiJLNldH2iyHwPK0CKNm
	fFVE0o/8AHem6mlzXatIcOy3nl5uUKvCCO+TFyUZlrC35b+MQyUYmDrFmV9dH1BXr2Lykqzn9+1z4
	+0kiYajgE8KnR28zFqNRrkfsToURGE852efP07oCak3PusstU4EfsBZ48vg5kJynAjxk4vcVoYRwE
	4F+WqCiy8kswhl9gudaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUBuJ-00000006xTS-2JvK;
	Tue, 24 Jun 2025 22:14:23 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUAba-00000006oUs-01cX
	for linux-phy@lists.infradead.org;
	Tue, 24 Jun 2025 20:50:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id DFCE7A5218B;
	Tue, 24 Jun 2025 20:50:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26642C4CEE3;
	Tue, 24 Jun 2025 20:50:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750798256;
	bh=dIyciIdppZO/lATFkkLW4FQgxW1XqDcUdQSgW8wIwBc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=s9ff+ZYu3HCmJszJ0fVbEAYKgrOcCkOxE3sNeSowW8D7QJfaiHUVCm8FLLn7grBpp
	 OY2W8gY1MhReKjO0cjsCoRZ1EWY4/PyxgVJVOgVES/YFmNgu40q2fpyNimoW6ZpcsD
	 5pEBEMnumhmmw1nSaQf6KtyKi0Zcn2qV7CTqEe1bLtQDhkAD/NEBNyq99lxqzWCPbi
	 zNciBPlqrPGDXZXtoEWbhQFZEwfQXiqeIz2+A3582aDANo86oFjJFhHqVZxMxSlHG4
	 czcW4EaDi7UR+ySo+l6GVeVeeJaAh1FiAKgtbEzCOnl9F6J1u6IU/bAA8lE2XmgehS
	 Rv/97bAKWFOGA==
Date: Tue, 24 Jun 2025 14:50:53 -0600
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
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: sa8775p: Add PCIe lane
 equalization preset properties
Message-ID: <wfrmm3vj55w2rwxrkme7fy53zj5o7ubcfyqtggeiy6iu6mm4wf@odq6kdvkcnrv>
References: <20250611100319.464803-1-quic_ziyuzhan@quicinc.com>
 <20250611100319.464803-3-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250611100319.464803-3-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250624_135058_113966_FCA29F9D 
X-CRM114-Status: GOOD (  12.01  )
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

T24gV2VkLCBKdW4gMTEsIDIwMjUgYXQgMDY6MDM6MTlQTSArMDgwMCwgWml5dWUgWmhhbmcgd3Jv
dGU6Cj4gQWRkIFBDSWUgbGFuZSBlcXVhbGl6YXRpb24gcHJlc2V0IHByb3BlcnRpZXMgd2l0aCBh
bGwgdmFsdWVzIHNldCB0byA1IGZvcgo+IDguMCBHVC9zIGFuZCAxNi4wIEdUL3MgZGF0YSByYXRl
cyB0byBlbmhhbmNlIGxpbmsgc3RhYmlsaXR5Lgo+IAo+IENvLWRldmVsb3BlZC1ieTogUWlhbmcg
WXUgPHFpYW5nLnl1QG9zcy5xdWFsY29tbS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogUWlhbmcgWXUg
PHFpYW5nLnl1QG9zcy5xdWFsY29tbS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogWml5dWUgWmhhbmcg
PHF1aWNfeml5dXpoYW5AcXVpY2luYy5jb20+CgpBY2tlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNp
dmFtIDxtYW5pQGtlcm5lbC5vcmc+CgotIE1hbmkKCj4gLS0tCj4gIGFyY2gvYXJtNjQvYm9vdC9k
dHMvcWNvbS9zYTg3NzVwLmR0c2kgfCA2ICsrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNl
cnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zYTg3
NzVwLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2E4Nzc1cC5kdHNpCj4gaW5kZXgg
NDVmNTM2NjMzZjY0Li4xNmNhZjFkYTA3MDggMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290
L2R0cy9xY29tL3NhODc3NXAuZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9z
YTg3NzVwLmR0c2kKPiBAQCAtNzE1OSw2ICs3MTU5LDkgQEAgcGNpZTA6IHBjaWVAMWMwMDAwMCB7
Cj4gIAkJcGh5cyA9IDwmcGNpZTBfcGh5PjsKPiAgCQlwaHktbmFtZXMgPSAicGNpZXBoeSI7Cj4g
IAo+ICsJCWVxLXByZXNldHMtOGd0cyA9IC9iaXRzLyAxNiA8MHg1NTU1IDB4NTU1NT47Cj4gKwkJ
ZXEtcHJlc2V0cy0xNmd0cyA9IC9iaXRzLyA4IDwweDU1IDB4NTU+Owo+ICsKPiAgCQlzdGF0dXMg
PSAiZGlzYWJsZWQiOwo+ICAKPiAgCQlwY2llcG9ydDA6IHBjaWVAMCB7Cj4gQEAgLTczMTcsNiAr
NzMyMCw5IEBAIHBjaWUxOiBwY2llQDFjMTAwMDAgewo+ICAJCXBoeXMgPSA8JnBjaWUxX3BoeT47
Cj4gIAkJcGh5LW5hbWVzID0gInBjaWVwaHkiOwo+ICAKPiArCQllcS1wcmVzZXRzLThndHMgPSAv
Yml0cy8gMTYgPDB4NTU1NSAweDU1NTUgMHg1NTU1IDB4NTU1NT47Cj4gKwkJZXEtcHJlc2V0cy0x
Nmd0cyA9IC9iaXRzLyA4IDwweDU1IDB4NTUgMHg1NSAweDU1PjsKPiArCj4gIAkJc3RhdHVzID0g
ImRpc2FibGVkIjsKPiAgCj4gIAkJcGNpZUAwIHsKPiAtLSAKPiAyLjM0LjEKPiAKCi0tIArgrq7g
rqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
