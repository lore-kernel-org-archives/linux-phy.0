Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 138C9C25B6E
	for <linux-phy@archiver.kernel.org>; Wed, 25 Oct 2023 07:52:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y9DkN0Gi9CtxmEw5uLuzuhKiJXnuJcy9jT6n0/Xlkks=; b=Wo2XjoG9o+fxwj
	R4u1QOxrH78K+WG/kcFZ26X/8LeSseiZJ/ARY9GwK+j0pKkz8gRxqUUB6YQnEesV8JFvy5JDs3kRk
	mUNFohIIO6wBW3bhl+idwa4O0gBkd9LLvG7UeswyjS/H9M0oA+c/EVVhkaAVm6ZFr/nK9mGYYQg+0
	eOmjpv/KTULDHZBoauCsO3jkrOVEpRIe/8lei6fupHnYXibhyTHghe/PFop524bNjDIJao1fd7OjG
	BAA68LpXC6T0x5UszpRkrly8gsSyu+Y+dDdLvtYiN0Eb/2KcBj7g//CPo5fDkkFUJbkrLzLstCKu9
	zNQqvFT/j/GV5F13ZkYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvYgz-00Bcbm-2V;
	Wed, 25 Oct 2023 07:52:41 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvYgw-00Bca9-14
	for linux-phy@lists.infradead.org;
	Wed, 25 Oct 2023 07:52:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 4A59FB821BB;
	Wed, 25 Oct 2023 07:52:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93E63C433C7;
	Wed, 25 Oct 2023 07:52:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698220355;
	bh=AjvHbivfFAj4feaP3aHyTgho0kLeTTMjqn0xHKJqObY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Au1eplrqt71V0W8QiBWNe2G4Yt1Oo5Nwe1X9M5FenWXHtTYUyb207aW2LFGcyCWhS
	 zV7j5ngxfjrhePd3EDD3Jm+6rbJM4NaiyRax0zGFz4DBTz+PHXLLknRC2YjWVpJ3Oy
	 jXEp0aJZYsV8DWK0QjVwU1724Ebqkh7EtBUXSTt7FTqH4r8c7cl33Osn2PGke1fPtn
	 LXj9gnwfXVYYHR9uRm8ne146V2qe1GEJ+lrc+a5S49DyJncP47JS5D87NUURR60Mzn
	 hbNMX2JBySi4GYlW9fExrNPnywHtX69EINNWbSk+YzS7o4Tnyl81i4FMjg4bcz4fKS
	 b0ZDKaaj0dTTw==
Date: Wed, 25 Oct 2023 13:22:24 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	konrad.dybcio@linaro.org, quic_shazhuss@quicinc.com,
	quic_nitegupt@quicinc.com, quic_ramkri@quicinc.com,
	quic_nayiluri@quicinc.com, dmitry.baryshkov@linaro.org,
	robh@kernel.org, quic_krichai@quicinc.com,
	quic_vbadigan@quicinc.com, quic_parass@quicinc.com,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>, linux-pci@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, mhi@lists.linux.dev,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 5/5] arm64: dts: qcom: sa8775p: Add ep pcie0
 controller node
Message-ID: <20231025075224.GB3648@thinkpad>
References: <1697715430-30820-1-git-send-email-quic_msarkar@quicinc.com>
 <1697715430-30820-6-git-send-email-quic_msarkar@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1697715430-30820-6-git-send-email-quic_msarkar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231025_005238_657483_2C7A5874 
X-CRM114-Status: GOOD (  16.86  )
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

T24gVGh1LCBPY3QgMTksIDIwMjMgYXQgMDU6MDc6MTBQTSArMDUzMCwgTXJpbm1heSBTYXJrYXIg
d3JvdGU6Cj4gQWRkIGVwIHBjaWUgZHRzaSBub2RlIGZvciBwY2llMCBjb250cm9sbGVyIGZvdW5k
IG9uIHNhODc3NXAgcGxhdGZvcm0uCj4gSXQgc3VwcG9ydHMgZ2VuNCBhbmQgeDIgbGluayB3aWR0
aC4gRHVlIHRvIHNvbWUgc3RhYmlsaXR5IGlzc3VlIGluCj4gZ2VuNCBlbmFibGluZyBnZW4zIGFz
IG9mIG5vdy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBNcmlubWF5IFNhcmthciA8cXVpY19tc2Fya2Fy
QHF1aWNpbmMuY29tPgo+IC0tLQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2E4Nzc1cC5k
dHNpIHwgNDggKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNo
YW5nZWQsIDQ4IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290
L2R0cy9xY29tL3NhODc3NXAuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zYTg3NzVw
LmR0c2kKPiBpbmRleCAxM2RkNDRkLi4yYWE3MzgzIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcWNvbS9zYTg3NzVwLmR0c2kKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fj
b20vc2E4Nzc1cC5kdHNpCj4gQEAgLTM3MTQsNCArMzcxNCw1MiBAQAo+ICAKPiAgCQlzdGF0dXMg
PSAiZGlzYWJsZWQiOwo+ICAJfTsKPiArCj4gKwlwY2llMF9lcDogcGNpZS1lcEAxYzAwMDAwIHsK
PiArCQljb21wYXRpYmxlID0gInFjb20sc2E4Nzc1cC1wY2llLWVwIjsKPiArCQlyZWcgPSA8MHgw
IDB4MDFjMDAwMDAgMHgwIDB4MzAwMD4sCj4gKwkJICAgICAgPDB4MCAweDQwMDAwMDAwIDB4MCAw
eGYyMD4sCj4gKwkJICAgICAgPDB4MCAweDQwMDAwZjIwIDB4MCAweGE4PiwKPiArCQkgICAgICA8
MHgwIDB4NDAwMDEwMDAgMHgwIDB4NDAwMD4sCj4gKwkJICAgICAgPDB4MCAweDQwMjAwMDAwIDB4
MCAweDEwMDAwMD4sCj4gKwkJICAgICAgPDB4MCAweDAxYzAzMDAwIDB4MCAweDEwMDA+LAo+ICsJ
CSAgICAgIDwweDAgMHg0MDAwNTAwMCAweDAgMHgyMDAwPjsKCkNhbiB3ZSBzb3J0IHRoZSByZWcg
ZW50cmllcz8KCj4gKwkJcmVnLW5hbWVzID0gInBhcmYiLCAiZGJpIiwgImVsYmkiLCAiYXR1Iiwg
ImFkZHJfc3BhY2UiLAo+ICsJCQkgICAgIm1taW8iLCAiZG1hIjsKPiArCj4gKwkJY2xvY2tzID0g
PCZnY2MgR0NDX1BDSUVfMF9BVVhfQ0xLPiwKPiArCQkJPCZnY2MgR0NDX1BDSUVfMF9DRkdfQUhC
X0NMSz4sCj4gKwkJCTwmZ2NjIEdDQ19QQ0lFXzBfTVNUUl9BWElfQ0xLPiwKPiArCQkJPCZnY2Mg
R0NDX1BDSUVfMF9TTFZfQVhJX0NMSz4sCj4gKwkJCTwmZ2NjIEdDQ19QQ0lFXzBfU0xWX1EyQV9B
WElfQ0xLPjsKPiArCj4gKwkJY2xvY2stbmFtZXMgPSAiYXV4IiwKPiArCQkJICAgICAgImNmZyIs
Cj4gKwkJCSAgICAgICJidXNfbWFzdGVyIiwKPiArCQkJICAgICAgImJ1c19zbGF2ZSIsCj4gKwkJ
CSAgICAgICJzbGF2ZV9xMmEiOwo+ICsKPiArCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMzA2IElS
UV9UWVBFX0xFVkVMX0hJR0g+LAo+ICsJCQkgICAgIDxHSUNfU1BJIDE0NyBJUlFfVFlQRV9MRVZF
TF9ISUdIPiwKPiArCQkJICAgICA8R0lDX1NQSSA2MzAgSVJRX1RZUEVfTEVWRUxfSElHSD47Cj4g
Kwo+ICsJCWludGVycnVwdC1uYW1lcyA9ICJnbG9iYWwiLCAiZG9vcmJlbGwiLCAiZG1hIjsKPiAr
Cj4gKwkJaW50ZXJjb25uZWN0cyA9IDwmcGNpZV9hbm9jIE1BU1RFUl9QQ0lFXzAgMCAmbWNfdmly
dCBTTEFWRV9FQkkxIDA+LAo+ICsJCQkJPCZnZW1fbm9jIE1BU1RFUl9BUFBTU19QUk9DIDAgJmNv
bmZpZ19ub2MgU0xBVkVfUENJRV8wIDA+Owo+ICsJCWludGVyY29ubmVjdC1uYW1lcyA9ICJwY2ll
LW1lbSIsICJjcHUtcGNpZSI7Cj4gKwo+ICsJCWlvbW11LW1hcCA9IDwweDAgJnBjaWVfc21tdSAw
eDAwMDAgMHgxPiwKPiArCQkJICAgIDwweDEwMCAmcGNpZV9zbW11IDB4MDAwMSAweDE+OwoKSSB0
aGluayBJIHJlY29tbWVuZGVkIHVzaW5nICJpb21tdS1tYXAiIGluc3RlYWQgb2YgImlvbW11cyIg
cHJvcGVydHkuIEJ1dApsb29raW5nIGF0IGl0IGFnYWluLCBJIHRoaW5rIGl0IGlzIGZpbmUgdG8g
dXNlIGp1c3QgImlvbW11cyIgcHJvcGVydHkgYXMgdGhlIFNJRAp3aWxsIGJlIGFzc29jaWF0ZWQg
d2l0aCB0aGUgRVAgZGlyZWN0bHkuCgpVbmxlc3MgeW91IHdhbnQgdG8gaGF2ZSBkaWZmZXJlbnQg
U0lEIGZvciBlYWNoIGZ1bmN0aW9uLgoKPiArCj4gKwkJcmVzZXRzID0gPCZnY2MgR0NDX1BDSUVf
MF9CQ1I+Owo+ICsJCXJlc2V0LW5hbWVzID0gImNvcmUiOwo+ICsJCXBvd2VyLWRvbWFpbnMgPSA8
JmdjYyBQQ0lFXzBfR0RTQz47Cj4gKwkJcGh5cyA9IDwmcGNpZTBfcGh5PjsKPiArCQlwaHktbmFt
ZXMgPSAicGNpZXBoeSI7Cj4gKwkJbWF4LWxpbmstc3BlZWQgPSA8Mz47CgpQbGVhc2UgYWRkIGEg
Y29tbWVudCBoZXJlIHRoYXQgeW91IGFyZSBsaW1pdGluZyB0aGUgR2VuIHNwZWVkIGR1ZSB0byBz
dGFiaWxpdHkKaXNzdWVzLiBMaWtlLAoKCQltYXgtbGluay1zcGVlZCA9IDwzPjsgLyogRklYTUU6
IExpbWl0aW5nIHRoZSBHZW4gc3BlZWQgZHVlIHRvIHN0YWJpbGl0eSBpc3N1ZXMgKi8KCj4gKwkJ
bnVtLWxhbmVzID0gPDI+OwoKQ2FuIHlvdSBjaGVjayBpZiB0aGUgY29udHJvbGxlciBpcyBjYWNo
ZSBjb2hlcmVudD8gSWYgc28sIHdlIHNob3VsZCBhZGQKImRtYS1jb2hlcmVudCIgcHJvcGVydHku
CgotIE1hbmkKCj4gKwo+ICsJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gKwl9Owo+ICB9Owo+IC0t
IAo+IDIuNy40Cj4gCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCu
muCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
