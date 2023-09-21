Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0531E706FF
	for <linux-phy@archiver.kernel.org>; Thu, 21 Sep 2023 09:48:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fA8v5mAr/E00t8lUl6rFdqw1M25wUi2JeEq1DfXBZvE=; b=Q/kQGhDsTwQ9C4
	BLmZwvfjEg1q8s/wIJSxg1jnIxSH7QL36G3tyFFZV0pXrLu1dLN4DzeVc5p4Gps7IO7QO4wQR3+dI
	Ps1wma+orqq/AISpje6BnSOvwEhiS4fL6olbLnHvyjlCrUOAzKBCVM4aVTe94r+JC09ptjgtl+uGo
	uZzgSe2RxqtWNMrjRYK9oIRl8ksPm+IcbMfTem5NOBZQdi5oX1Judgw5ang0nD9yAP/SmMVrPvZG7
	D9pA0eyTFrDc89lf43vZ7xB+UhtYtcWH+qWsigUBJ66Hdz8/mu9uuuzXycWvJtb9M07zhT1uxpNoY
	tStWImidxtLIFYs1QNYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjGId-005dNb-14;
	Thu, 21 Sep 2023 09:48:43 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjGIa-005dN4-2o
	for linux-phy@lists.infradead.org;
	Thu, 21 Sep 2023 09:48:42 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 93796CE219A;
	Thu, 21 Sep 2023 09:48:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0BD34C32783;
	Thu, 21 Sep 2023 09:48:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695289713;
	bh=J91xLLYh3063mIz8vTCj0EDjswezy2qXl2KyxMg3RQI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fU057suNKQbihbsVL2RWa98mU6/opeEGInjY7XwbSg83INDcPahdBga23HxJVedq6
	 1940hb8sDpd52ueZhRszkTZGjQTbKIVk45BC9C0Oiz4+XQSj4k7iZwPlFgY6B2Wg71
	 6JhA70Ulb3ae4S/VLNazQq97Bv4IvAJzX9bqjQOi1hIRY5/L7HK1mo1T1fQCWIJ9Q7
	 bpSlWHVeppCYURvyle4n7VWHn7jZX31tJIU3/sR3VXwGM7f3BNWLdsH7FZUP8jb/4D
	 qYASDzCHLGqEop9vHSeG6kbvvHySj4zYKY2VnfAkaBRhm/eQwBHOejreG5Xor6mwtI
	 UUo9yEKkxigmA==
Date: Thu, 21 Sep 2023 11:48:23 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	konrad.dybcio@linaro.org, quic_shazhuss@quicinc.com,
	quic_nitegupt@quicinc.com, quic_ramkri@quicinc.com,
	quic_nayiluri@quicinc.com, quic_krichai@quicinc.com,
	quic_vbadigan@quicinc.com, quic_parass@quicinc.com,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, mhi@lists.linux.dev,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v1 5/5] arm64: dts: qcom: sa8775p: Add ep pcie0
 controller node
Message-ID: <20230921094823.GE2891@thinkpad>
References: <1695218113-31198-1-git-send-email-quic_msarkar@quicinc.com>
 <1695218113-31198-6-git-send-email-quic_msarkar@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1695218113-31198-6-git-send-email-quic_msarkar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_024841_258161_732AFDB0 
X-CRM114-Status: GOOD (  15.32  )
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

T24gV2VkLCBTZXAgMjAsIDIwMjMgYXQgMDc6MjU6MTJQTSArMDUzMCwgTXJpbm1heSBTYXJrYXIg
d3JvdGU6Cj4gQWRkIGVwIHBjaWUgZHRzaSBub2RlIGZvciBwY2llMCBjb250cm9sbGVyIGZvdW5k
IG9uIHNhODc3NXAgcGxhdGZvcm0uCj4gCgpJdCB3b3VsZCBiZSBnb29kIHRvIGFkZCBtb3JlIGlu
Zm8gaW4gdGhlIGNvbW1pdCBtZXNzYWdlLCBsaWtlIFBDSWUgR2VuLCBsYW5lCmluZm8sIElQIHJl
dmlzaW9uIGV0Yy4uLgoKPiBTaWduZWQtb2ZmLWJ5OiBNcmlubWF5IFNhcmthciA8cXVpY19tc2Fy
a2FyQHF1aWNpbmMuY29tPgo+IC0tLQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2E4Nzc1
cC5kdHNpIHwgNDUgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgMSBmaWxl
IGNoYW5nZWQsIDQ1IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9i
b290L2R0cy9xY29tL3NhODc3NXAuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zYTg3
NzVwLmR0c2kKPiBpbmRleCA5ZjRmNThlOC4uNTU3MTEzMSAxMDA2NDQKPiAtLS0gYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3Fjb20vc2E4Nzc1cC5kdHNpCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0
cy9xY29tL3NhODc3NXAuZHRzaQo+IEBAIC0yNjAwLDQgKzI2MDAsNDkgQEAKPiAgCj4gIAkJc3Rh
dHVzID0gImRpc2FibGVkIjsKPiAgCX07Cj4gKwo+ICsJcGNpZTBfZXA6IHBjaWUtZXBAMWMwMDAw
MCB7Cj4gKwkJY29tcGF0aWJsZSA9ICJxY29tLHNhODc3NXAtcGNpZS1lcCI7Cj4gKwkJcmVnID0g
PDB4MCAweDAxYzAwMDAwIDB4MCAweDMwMDA+LAo+ICsJCSAgICAgIDwweDAgMHg0MDAwMDAwMCAw
eDAgMHhmMjA+LAo+ICsJCSAgICAgIDwweDAgMHg0MDAwMGYyMCAweDAgMHhhOD4sCj4gKwkJICAg
ICAgPDB4MCAweDQwMDAxMDAwIDB4MCAweDQwMDA+LAo+ICsJCSAgICAgIDwweDAgMHg0MDIwMDAw
MCAweDAgMHgxMDAwMDA+LAo+ICsJCSAgICAgIDwweDAgMHgwMWMwMzAwMCAweDAgMHgxMDAwPiwK
PiArCQkgICAgICA8MHgwIDB4NDAwMDUwMDAgMHgwIDB4MjAwMD47Cj4gKwkJcmVnLW5hbWVzID0g
InBhcmYiLCAiZGJpIiwgImVsYmkiLCAiYXR1IiwgImFkZHJfc3BhY2UiLAo+ICsJCQkgICAgIm1t
aW8iLCAiZG1hIjsKPiArCj4gKwkJY2xvY2tzID0gPCZnY2MgR0NDX1BDSUVfMF9BVVhfQ0xLPiwK
PiArCQkJPCZnY2MgR0NDX1BDSUVfMF9DRkdfQUhCX0NMSz4sCj4gKwkJCTwmZ2NjIEdDQ19QQ0lF
XzBfTVNUUl9BWElfQ0xLPiwKPiArCQkJPCZnY2MgR0NDX1BDSUVfMF9TTFZfQVhJX0NMSz4sCj4g
KwkJCTwmZ2NjIEdDQ19QQ0lFXzBfU0xWX1EyQV9BWElfQ0xLPjsKPiArCj4gKwkJY2xvY2stbmFt
ZXMgPSAiYXV4IiwKPiArCQkJICAgICAgImNmZyIsCj4gKwkJCSAgICAgICJidXNfbWFzdGVyIiwK
PiArCQkJICAgICAgImJ1c19zbGF2ZSIsCj4gKwkJCSAgICAgICJzbGF2ZV9xMmEiOwo+ICsKPiAr
CQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMzA2IElSUV9UWVBFX0xFVkVMX0hJR0g+LAo+ICsJCQkg
ICAgIDxHSUNfU1BJIDE0NyBJUlFfVFlQRV9MRVZFTF9ISUdIPiwKPiArCQkJICAgICA8R0lDX1NQ
SSA2MzAgSVJRX1RZUEVfTEVWRUxfSElHSD47Cj4gKwo+ICsJCWludGVycnVwdC1uYW1lcyA9ICJn
bG9iYWwiLCAiZG9vcmJlbGwiLCAiZG1hIjsKPiArCj4gKwkJaW50ZXJjb25uZWN0cyA9IDwmcGNp
ZV9hbm9jIE1BU1RFUl9QQ0lFXzAgMCAmbWNfdmlydCBTTEFWRV9FQkkxIDA+LAo+ICsJCQkJPCZn
ZW1fbm9jIE1BU1RFUl9BUFBTU19QUk9DIDAgJmNvbmZpZ19ub2MgU0xBVkVfUENJRV8wIDA+Owo+
ICsJCWludGVyY29ubmVjdC1uYW1lcyA9ICJwY2llLW1lbSIsICJjcHUtcGNpZSI7Cj4gKwoKRG9u
J3QgeW91IG5lZWQgaW9tbXUgcHJvcGVydHk/Cgo+ICsJCXJlc2V0cyA9IDwmZ2NjIEdDQ19QQ0lF
XzBfQkNSPjsKPiArCQlyZXNldC1uYW1lcyA9ICJjb3JlIjsKPiArCQlwb3dlci1kb21haW5zID0g
PCZnY2MgUENJRV8wX0dEU0M+Owo+ICsJCXBoeXMgPSA8JnBjaWUwX3BoeT47Cj4gKwkJcGh5LW5h
bWVzID0gInBjaWVwaHkiOwo+ICsJCW1heC1saW5rLXNwZWVkID0gPDM+OwoKR2VuIDM/Cgo+ICsJ
CW51bS1sYW5lcyA9IDwyPjsKCk9ubHkgMiBsYW5lcz8gT3IgdGhlIG90aGVyIG9uZSBoYXMgNCBs
YW5lcz8KCi0gTWFuaQoKPiArCj4gKwkJc3RhdHVzID0gImRpc2FibGVkIjsKPiArCX07Cj4gIH07
Cj4gLS0gCj4gMi43LjQKPiAKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k
4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
