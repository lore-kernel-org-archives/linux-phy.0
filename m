Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20EDEC7EE22
	for <linux-phy@archiver.kernel.org>; Mon, 15 May 2023 04:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uzFCKmLEFd0SCxX5T0olRKVxKmuSY1nrVJ+rqy9NuLM=; b=VAdCTtt01bVbUu
	8I+vnyTo0ZsybmQ4VF1Krgm1ACD3piPjE3MEA5jLEc2Cp15cTlLxRatoFSJlR5Pa5VQQYVLQWuzeL
	gXlFdNCfuYONmjPcLl/AKLKQFjpM/Y9hST4Ik6gFedY3v8ZplvriV4ls/vf1Sycdk+YgR/R3ijIcp
	Y0aFRKw+qvyjCrkMTPTq0ROCaQHerNzS/iqzTequAhaMYyIkogcHtUYKwuu+UiDiTkriQeVBs9saU
	wyw8+L05N+vuVF6ntiwe2MYlpuNxkpmT+iY0Zk+OR2JSUvcsjVJNsc241NThGqBBQ07xmkSdlGfSx
	qcAuwhtqvuxgLVI4EKqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyPme-000oa7-27;
	Mon, 15 May 2023 04:26:04 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyPmb-000oYn-2s
	for linux-phy@lists.infradead.org;
	Mon, 15 May 2023 04:26:03 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id C285861EAE;
	Mon, 15 May 2023 04:26:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78C2DC433EF;
	Mon, 15 May 2023 04:25:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684124760;
	bh=+Bww6kGRqCRZ3zp1IyWYbqBA69VGGPKf4nQa2AuyNfg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=t0NrA/MDKouAujbuQ2um+9+EdT2rme/1+tUbqwaIqLZO+QAhBs8W4sBEKjOPUf8bF
	 JzlPt0werBVtCEAT8o21eojkI1REj6TxMEh0la5pYutBMYQZV/WFIE6OvkbBDGwLCm
	 9Ehtf7HraKPcYnRwZLgLgYNgR2UmAKkwIe93QTCFKajVBtOA91wtw71vqCURwCa7dn
	 nbzj/CLR7NmM8yUxXfK99vSRaIFMmr2E1b3hOi6Wc1J+kH4U1S9rfJj286ZHfKB2T0
	 IWv6GPgQN4JjG4jFnOekDAk0TinLkNCoxrA6L/HphXwG5gCMmEzkHo760h66bZH34h
	 XRdtZYV7aPvtg==
Date: Mon, 15 May 2023 09:55:51 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: [PATCH v3 4/5] arm64: dts: qcom: sa8775p: add UFS nodes
Message-ID: <20230515042551.GC5143@thinkpad>
References: <20230411130446.401440-1-brgl@bgdev.pl>
 <20230411130446.401440-5-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230411130446.401440-5-brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230514_212602_029569_A03474FB 
X-CRM114-Status: GOOD (  17.65  )
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

T24gVHVlLCBBcHIgMTEsIDIwMjMgYXQgMDM6MDQ6NDVQTSArMDIwMCwgQmFydG9zeiBHb2xhc3pl
d3NraSB3cm90ZToKPiBGcm9tOiBCYXJ0b3N6IEdvbGFzemV3c2tpIDxiYXJ0b3N6LmdvbGFzemV3
c2tpQGxpbmFyby5vcmc+Cj4gCj4gQWRkIG5vZGVzIGZvciB0aGUgVUZTIGFuZCBpdHMgUEhZIG9u
IHNhODc3NXAgcGxhdGZvcm1zLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEJhcnRvc3ogR29sYXN6ZXdz
a2kgPGJhcnRvc3ouZ29sYXN6ZXdza2lAbGluYXJvLm9yZz4KPiBSZXZpZXdlZC1ieTogS29ucmFk
IER5YmNpbyA8a29ucmFkLmR5YmNpb0BsaW5hcm8ub3JnPgo+IC0tLQo+ICBhcmNoL2FybTY0L2Jv
b3QvZHRzL3Fjb20vc2E4Nzc1cC5kdHNpIHwgNTggKysrKysrKysrKysrKysrKysrKysrKysrKysr
Cj4gIDEgZmlsZSBjaGFuZ2VkLCA1OCBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zYTg3NzVwLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L3Fjb20vc2E4Nzc1cC5kdHNpCj4gaW5kZXggMjM0M2RmN2UwZWE0Li41ZGUwZmJiZTk3NTIgMTAw
NjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NhODc3NXAuZHRzaQo+ICsrKyBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zYTg3NzVwLmR0c2kKPiBAQCAtNTg1LDYgKzU4NSw2
NCBAQCAmY2xrX3ZpcnQgU0xBVkVfUVVQX0NPUkVfMSBRQ09NX0lDQ19UQUdfQUxXQVlTPiwKPiAg
CQkJfTsKPiAgCQl9Owo+ICAKPiArCQl1ZnNfbWVtX2hjOiB1ZnNAMWQ4NDAwMCB7Cj4gKwkJCWNv
bXBhdGlibGUgPSAicWNvbSxzYTg3NzVwLXVmc2hjIiwgInFjb20sdWZzaGMiLCAiamVkZWMsdWZz
LTIuMCI7Cj4gKwkJCXJlZyA9IDwweDAgMHgwMWQ4NDAwMCAweDAgMHgzMDAwPjsKPiArCQkJaW50
ZXJydXB0cyA9IDxHSUNfU1BJIDI2NSBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKPiArCQkJcGh5cyA9
IDwmdWZzX21lbV9waHk+Owo+ICsJCQlwaHktbmFtZXMgPSAidWZzcGh5IjsKPiArCQkJbGFuZXMt
cGVyLWRpcmVjdGlvbiA9IDwyPjsKPiArCQkJI3Jlc2V0LWNlbGxzID0gPDE+Owo+ICsJCQlyZXNl
dHMgPSA8JmdjYyBHQ0NfVUZTX1BIWV9CQ1I+Owo+ICsJCQlyZXNldC1uYW1lcyA9ICJyc3QiOwo+
ICsJCQlwb3dlci1kb21haW5zID0gPCZnY2MgVUZTX1BIWV9HRFNDPjsKPiArCQkJcmVxdWlyZWQt
b3BwcyA9IDwmcnBtaHBkX29wcF9ub20+Owo+ICsJCQlpb21tdXMgPSA8JmFwcHNfc21tdSAweDEw
MCAweDA+Owo+ICsJCQljbG9ja3MgPSA8JmdjYyBHQ0NfVUZTX1BIWV9BWElfQ0xLPiwKPiArCQkJ
CSA8JmdjYyBHQ0NfQUdHUkVfVUZTX1BIWV9BWElfQ0xLPiwKPiArCQkJCSA8JmdjYyBHQ0NfVUZT
X1BIWV9BSEJfQ0xLPiwKPiArCQkJCSA8JmdjYyBHQ0NfVUZTX1BIWV9VTklQUk9fQ09SRV9DTEs+
LAo+ICsJCQkJIDwmcnBtaGNjIFJQTUhfQ1hPX0NMSz4sCj4gKwkJCQkgPCZnY2MgR0NDX1VGU19Q
SFlfVFhfU1lNQk9MXzBfQ0xLPiwKPiArCQkJCSA8JmdjYyBHQ0NfVUZTX1BIWV9SWF9TWU1CT0xf
MF9DTEs+LAo+ICsJCQkJIDwmZ2NjIEdDQ19VRlNfUEhZX1JYX1NZTUJPTF8xX0NMSz47Cj4gKwkJ
CWNsb2NrLW5hbWVzID0gImNvcmVfY2xrIiwKPiArCQkJCSAgICAgICJidXNfYWdncl9jbGsiLAo+
ICsJCQkJICAgICAgImlmYWNlX2NsayIsCj4gKwkJCQkgICAgICAiY29yZV9jbGtfdW5pcHJvIiwK
PiArCQkJCSAgICAgICJyZWZfY2xrIiwKPiArCQkJCSAgICAgICJ0eF9sYW5lMF9zeW5jX2NsayIs
Cj4gKwkJCQkgICAgICAicnhfbGFuZTBfc3luY19jbGsiLAo+ICsJCQkJICAgICAgInJ4X2xhbmUx
X3N5bmNfY2xrIjsKPiArCQkJZnJlcS10YWJsZS1oeiA9IDw3NTAwMDAwMCAzMDAwMDAwMDA+LAo+
ICsJCQkJCTwwIDA+LAo+ICsJCQkJCTwwIDA+LAo+ICsJCQkJCTw3NTAwMDAwMCAzMDAwMDAwMDA+
LAo+ICsJCQkJCTwwIDA+LAo+ICsJCQkJCTwwIDA+LAo+ICsJCQkJCTwwIDA+LAo+ICsJCQkJCTww
IDA+Owo+ICsJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwoKSSdtIHByZXR0eSBzdXJlIHRoYXQgdGhl
IFVGUyBjb250cm9sbGVycyBmb3VuZCBpbiBsYXRlc3QgU29DcyBhcmUgY2FjaGUKY29oZXJlbnQu
IFNvIHlvdSdkIG5lZWQgImRtYS1jb2hlcmVudCIgcHJvcGVydHkgaGVyZS4KCi0gTWFuaQoKPiAr
CQl9Owo+ICsKPiArCQl1ZnNfbWVtX3BoeTogcGh5QDFkODcwMDAgewo+ICsJCQljb21wYXRpYmxl
ID0gInFjb20sc2E4Nzc1cC1xbXAtdWZzLXBoeSI7Cj4gKwkJCXJlZyA9IDwweDAgMHgwMWQ4NzAw
MCAweDAgMHhlMTA+Owo+ICsJCQkvKgo+ICsJCQkgKiBZZXMsIEdDQ19FRFBfUkVGX0NMS1JFRl9F
TiBpcyBjb3JyZWN0IGluIHFyZWYuIEl0Cj4gKwkJCSAqIGVuYWJsZXMgdGhlIENYTyBjbG9jayB0
byBlRFAgKmFuZCogVUZTIFBIWS4KPiArCQkJICovCj4gKwkJCWNsb2NrcyA9IDwmcnBtaGNjIFJQ
TUhfQ1hPX0NMSz4sCj4gKwkJCQkgPCZnY2MgR0NDX1VGU19QSFlfUEhZX0FVWF9DTEs+LAo+ICsJ
CQkJIDwmZ2NjIEdDQ19FRFBfUkVGX0NMS1JFRl9FTj47Cj4gKwkJCWNsb2NrLW5hbWVzID0gInJl
ZiIsICJyZWZfYXV4IiwgInFyZWYiOwo+ICsJCQlwb3dlci1kb21haW5zID0gPCZnY2MgVUZTX1BI
WV9HRFNDPjsKPiArCQkJcmVzZXRzID0gPCZ1ZnNfbWVtX2hjIDA+Owo+ICsJCQlyZXNldC1uYW1l
cyA9ICJ1ZnNwaHkiOwo+ICsJCQkjcGh5LWNlbGxzID0gPDA+Owo+ICsJCQlzdGF0dXMgPSAiZGlz
YWJsZWQiOwo+ICsJCX07Cj4gKwo+ICAJCXRjc3JfbXV0ZXg6IGh3bG9ja0AxZjQwMDAwIHsKPiAg
CQkJY29tcGF0aWJsZSA9ICJxY29tLHRjc3ItbXV0ZXgiOwo+ICAJCQlyZWcgPSA8MHgwIDB4MDFm
NDAwMDAgMHgwIDB4MjAwMDA+Owo+IC0tIAo+IDIuMzcuMgo+IAoKLS0gCuCuruCuo+Cuv+CuteCu
o+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
