Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 478C1E706F0
	for <linux-phy@archiver.kernel.org>; Thu, 21 Sep 2023 08:41:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OP1kGN2CCnndCnF6RGK1enYE2zJ4gkMFUnvAULF9A/4=; b=tbYkXIs3ZT/7+f
	zdWXGWOkKv1UR88O3VygKxU38hU8ywrdo+iaP3be/iHNqnA3P9aMAxlYpPvC3QuntEc4mtkzwrtkq
	bwDcAhEgkPajDZomeLSz7+8Kq3mEUuClk4ndHyqOPls6xwJ+MnFHT+lVr1kpQOS72WlpE+4X7mpZo
	w2CNKw62FCDpFGf4GhT/Ov8l3OYromTGnbcfBfotDeJp9zjKf2Q3AOgHO5rAtWzWLjlrfIMLkz3QQ
	ePJ1vx949WDk1b33SiFTUR+Rj/f4GG7KZVhxQ9/HfrP+poT4jgDkdnzfW/Dv7kWuJBbPXencfgJjd
	M7vbYq344cJAI2UnjCog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjFFI-005VfR-07;
	Thu, 21 Sep 2023 08:41:12 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjFFE-005VeQ-0q
	for linux-phy@lists.infradead.org;
	Thu, 21 Sep 2023 08:41:11 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 5D3D4CE1D4F;
	Thu, 21 Sep 2023 08:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A02BC116D2;
	Thu, 21 Sep 2023 08:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695285664;
	bh=2VdLPNsimLvVm8/OS9eY5PGJy7+LPxUcwGgt59gxfqY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rxRvquE2e5HPBCLFPy0H0o6E9xx6fbywXnllqYBDTKVWRTLi2mp7JMvhCtcIcBY3x
	 Ol1oxICfHa4EYEfwwjeGYtpYo5mOrqX3V3Y9mwJb9VQOHMFy49jqlik4yKXmCVzpMl
	 LGcgit6XPqXOz4KRMx9ziyC3rhDv4L9W4AWNqrvRi87IrO3zTvwmNLO+OMu97Ln5GZ
	 eXmSk8jtD7LGwZlJjN1GGKNbnxpuC/Rd/PCre5eQrhRA3d86X3UqMdQo4IMZydEyut
	 2L7sEZBa5yx/S7oKM7elxZ/sanZGgxgbptJJ7UsDLB/W0b29LNAQGUWBc5beBAsL6Z
	 /D4Nwe+O2G7oA==
Date: Thu, 21 Sep 2023 10:40:55 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	konrad.dybcio@linaro.org, quic_shazhuss@quicinc.com,
	quic_nitegupt@quicinc.com, quic_ramkri@quicinc.com,
	quic_nayiluri@quicinc.com, quic_krichai@quicinc.com,
	quic_vbadigan@quicinc.com, quic_parass@quicinc.com,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>, linux-pci@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, mhi@lists.linux.dev,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v1 4/5] PCI: epf-mhi: Add support for SA8775P
Message-ID: <20230921084055.GD2891@thinkpad>
References: <1695218113-31198-1-git-send-email-quic_msarkar@quicinc.com>
 <1695218113-31198-5-git-send-email-quic_msarkar@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1695218113-31198-5-git-send-email-quic_msarkar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_014108_654863_24B856BA 
X-CRM114-Status: GOOD (  18.02  )
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

T24gV2VkLCBTZXAgMjAsIDIwMjMgYXQgMDc6MjU6MTFQTSArMDUzMCwgTXJpbm1heSBTYXJrYXIg
d3JvdGU6Cj4gQWRkIHN1cHBvcnQgZm9yIFF1YWxjb21tIFNuYXBkcmFnb24gU0E4Nzc1UCBTb0Mg
dG8gdGhlIEVQRiBkcml2ZXIuCj4gU0E4Nzc1UCBoYXMgdGhlIFBJRCAoMHgwMzA2KSBhbmQgc3Vw
cG9ydHMgSERNQS4gQ3VycmVudGx5LCBpdCBoYXMKPiBubyBmaXhlZCBQQ0kgY2xhc3MsIHNvIGl0
IGlzIGJlaW5nIGFkdmVydGlzZWQgYXMgIlBDSV9DTEFTU19PVEhFUlMiLgo+IAo+IFNpZ25lZC1v
ZmYtYnk6IE1yaW5tYXkgU2Fya2FyIDxxdWljX21zYXJrYXJAcXVpY2luYy5jb20+Cj4gLS0tCj4g
IGRyaXZlcnMvcGNpL2VuZHBvaW50L2Z1bmN0aW9ucy9wY2ktZXBmLW1oaS5jIHwgMTggKysrKysr
KysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspCj4gCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2VuZHBvaW50L2Z1bmN0aW9ucy9wY2ktZXBmLW1oaS5jIGIv
ZHJpdmVycy9wY2kvZW5kcG9pbnQvZnVuY3Rpb25zL3BjaS1lcGYtbWhpLmMKPiBpbmRleCBiN2I5
ZDNlLi40YjM0OWZkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGNpL2VuZHBvaW50L2Z1bmN0aW9u
cy9wY2ktZXBmLW1oaS5jCj4gKysrIGIvZHJpdmVycy9wY2kvZW5kcG9pbnQvZnVuY3Rpb25zL3Bj
aS1lcGYtbWhpLmMKPiBAQCAtMTE0LDYgKzExNCwyMyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHBj
aV9lcGZfbWhpX2VwX2luZm8gc204NDUwX2luZm8gPSB7Cj4gIAkuZmxhZ3MgPSBNSElfRVBGX1VT
RV9ETUEsCj4gIH07Cj4gIAo+ICtzdGF0aWMgc3RydWN0IHBjaV9lcGZfaGVhZGVyIHNhODc3NXBf
aGVhZGVyID0gewoKc3RhdGljIGNvbnN0IHN0cnVjdC4uLgoKPiArCS52ZW5kb3JpZCA9IFBDSV9W
RU5ET1JfSURfUUNPTSwKPiArCS5kZXZpY2VpZCA9IDB4MDMwNiwKCldoeSBhcmUgeW91IG5vdCB1
c2luZyBhIGRpc3RpbmN0IGRldmljZSBpZD8KCi0gTWFuaQoKPiArCS5iYXNlY2xhc3NfY29kZSA9
IFBDSV9DTEFTU19PVEhFUlMsCj4gKwkuaW50ZXJydXB0X3BpbiA9IFBDSV9JTlRFUlJVUFRfSU5U
QSwKPiArfTsKPiArCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgcGNpX2VwZl9taGlfZXBfaW5mbyBz
YTg3NzVwX2luZm8gPSB7Cj4gKwkuY29uZmlnID0gJm1oaV92MV9jb25maWcsCj4gKwkuZXBmX2hl
YWRlciA9ICZzYTg3NzVwX2hlYWRlciwKPiArCS5iYXJfbnVtID0gQkFSXzAsCj4gKwkuZXBmX2Zs
YWdzID0gUENJX0JBU0VfQUREUkVTU19NRU1fVFlQRV8zMiwKPiArCS5tc2lfY291bnQgPSAzMiwK
PiArCS5tcnUgPSAweDgwMDAsCj4gKwkuZmxhZ3MgPSBNSElfRVBGX1VTRV9ETUEsCj4gK307Cj4g
Kwo+ICBzdHJ1Y3QgcGNpX2VwZl9taGkgewo+ICAJY29uc3Qgc3RydWN0IHBjaV9lcGNfZmVhdHVy
ZXMgKmVwY19mZWF0dXJlczsKPiAgCWNvbnN0IHN0cnVjdCBwY2lfZXBmX21oaV9lcF9pbmZvICpp
bmZvOwo+IEBAIC02NzcsNiArNjk0LDcgQEAgc3RhdGljIGludCBwY2lfZXBmX21oaV9wcm9iZShz
dHJ1Y3QgcGNpX2VwZiAqZXBmLAo+ICB9Cj4gIAo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IHBjaV9l
cGZfZGV2aWNlX2lkIHBjaV9lcGZfbWhpX2lkc1tdID0gewo+ICsJeyAubmFtZSA9ICJzYTg3NzVw
IiwgLmRyaXZlcl9kYXRhID0gKGtlcm5lbF91bG9uZ190KSZzYTg3NzVwX2luZm8gfSwKPiAgCXsg
Lm5hbWUgPSAic2R4NTUiLCAuZHJpdmVyX2RhdGEgPSAoa2VybmVsX3Vsb25nX3QpJnNkeDU1X2lu
Zm8gfSwKPiAgCXsgLm5hbWUgPSAic204NDUwIiwgLmRyaXZlcl9kYXRhID0gKGtlcm5lbF91bG9u
Z190KSZzbTg0NTBfaW5mbyB9LAo+ICAJe30sCj4gLS0gCj4gMi43LjQKPiAKCi0tIArgrq7grqPg
rr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
