Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E28F1C25B6F
	for <linux-phy@archiver.kernel.org>; Wed, 25 Oct 2023 07:56:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EwCeERfAIsrh/WYsXQmECBbdr40YpCwTilMEbSzhE/0=; b=4FTZC6t+pATzco
	W4WmPIT/4Bl/WI7YqaggNLvTQqCqM4mRxqRzY2/Es6MsugeUj+0fi8okOgC+KMF3iQMxofeytvulu
	8EdhAGja+9hpFq6OZ1hF+uoGT/kgJruHYB6ohZoI3fqpMvWV4EqlT/d44XHBOxaSDhuheljmWrLeJ
	NjyTx5KWQo0N5LpYGsfeT3WTu53O+yPe3nCnoaXJqSbdnwbBgANW581IEURtcbOmDSP1AMD32K6Tl
	Z855suQ5o/4sNjjYdU1WcVtp9T8K4QrsCinG5gWQuLe3LHrCpoJlnX42cM5mSEQ7D2RCseXjmpXiz
	VlQzpGGK/1N2OTwFatyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvYkT-00Bd0e-28;
	Wed, 25 Oct 2023 07:56:17 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvYkR-00Bd0A-0M
	for linux-phy@lists.infradead.org;
	Wed, 25 Oct 2023 07:56:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8C58B61DEF;
	Wed, 25 Oct 2023 07:56:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BCD1C433C7;
	Wed, 25 Oct 2023 07:56:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698220574;
	bh=x80PJnG7nAPGTsFHONjS4hVK2x0U+9CPmHqrAKYFlu4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lw+NEy2ANBY8d0WQ2OwP2YDzQtbDr6/ECzBwW+pP/rrNcZmnp4jvEZdeoHewIJhVU
	 x6mzUQcvzIuW5eEIfUEq9NPdMbG59W0in2EjJw/4PqbgogPXdLgGCKLR3Z4EsPydQF
	 uaiEO+tPmIw9X79doZ6koGK2nH7J4jZXt4Ge//NgSF+t1FLr8UhTym7DTmOXpdYL9o
	 IXzHILuVbfNB5BMAVMFLI23Yg29F8OThWTE/x1JuXFGyNkYhJS7WPT9yYoNEHnU0r9
	 /DMEkledpr6RqJdXxYH/QSuIP4Xctr8TtoNiGfzWL2MLho1Kwfv4m6i0fXHSnBL6HV
	 c/G9TdWYZS35Q==
Date: Wed, 25 Oct 2023 13:26:03 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	konrad.dybcio@linaro.org, quic_shazhuss@quicinc.com,
	quic_nitegupt@quicinc.com, quic_ramkri@quicinc.com,
	quic_nayiluri@quicinc.com, dmitry.baryshkov@linaro.org,
	robh@kernel.org, quic_krichai@quicinc.com,
	quic_vbadigan@quicinc.com, quic_parass@quicinc.com,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, mhi@lists.linux.dev,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 4/5] PCI: epf-mhi: Add support for SA8775P
Message-ID: <20231025075603.GD3648@thinkpad>
References: <1697715430-30820-1-git-send-email-quic_msarkar@quicinc.com>
 <1697715430-30820-5-git-send-email-quic_msarkar@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1697715430-30820-5-git-send-email-quic_msarkar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231025_005615_232674_CFB340F1 
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

T24gVGh1LCBPY3QgMTksIDIwMjMgYXQgMDU6MDc6MDlQTSArMDUzMCwgTXJpbm1heSBTYXJrYXIg
d3JvdGU6Cj4gQWRkIHN1cHBvcnQgZm9yIFF1YWxjb21tIFNuYXBkcmFnb24gU0E4Nzc1UCBTb0Mg
dG8gdGhlIEVQRiBkcml2ZXIuCj4gU0E4Nzc1UCBoYXMgdGhlIFBJRCAoMHgwMzA2KSBhbmQgc3Vw
cG9ydHMgSERNQS4gQ3VycmVudGx5LCBpdCBoYXMKCklzIHRoZSBQSUQgZml4ZWQ/IEkgdGhvdWdo
dCB5b3UganVzdCB3YW50IHRvIHJldXNlIHRoZSBTRFh4eCBQSUQgaW4gdGhlCm1lYW50aW1lLgoK
LSBNYW5pCgo+IG5vIGZpeGVkIFBDSSBjbGFzcywgc28gaXQgaXMgYmVpbmcgYWR2ZXJ0aXNlZCBh
cyAiUENJX0NMQVNTX09USEVSUyIuCj4gCj4gU2lnbmVkLW9mZi1ieTogTXJpbm1heSBTYXJrYXIg
PHF1aWNfbXNhcmthckBxdWljaW5jLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9wY2kvZW5kcG9pbnQv
ZnVuY3Rpb25zL3BjaS1lcGYtbWhpLmMgfCAxNyArKysrKysrKysrKysrKysrKwo+ICAxIGZpbGUg
Y2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9l
bmRwb2ludC9mdW5jdGlvbnMvcGNpLWVwZi1taGkuYyBiL2RyaXZlcnMvcGNpL2VuZHBvaW50L2Z1
bmN0aW9ucy9wY2ktZXBmLW1oaS5jCj4gaW5kZXggYjdiOWQzZS4uNDQ4NzI2MCAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL3BjaS9lbmRwb2ludC9mdW5jdGlvbnMvcGNpLWVwZi1taGkuYwo+ICsrKyBi
L2RyaXZlcnMvcGNpL2VuZHBvaW50L2Z1bmN0aW9ucy9wY2ktZXBmLW1oaS5jCj4gQEAgLTExNCw2
ICsxMTQsMjIgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBwY2lfZXBmX21oaV9lcF9pbmZvIHNtODQ1
MF9pbmZvID0gewo+ICAJLmZsYWdzID0gTUhJX0VQRl9VU0VfRE1BLAo+ICB9Owo+ICAKPiArc3Rh
dGljIHN0cnVjdCBwY2lfZXBmX2hlYWRlciBzYTg3NzVwX2hlYWRlciA9IHsKPiArCS52ZW5kb3Jp
ZCA9IFBDSV9WRU5ET1JfSURfUUNPTSwKPiArCS5kZXZpY2VpZCA9IDB4MDMwNiwKPiArCS5iYXNl
Y2xhc3NfY29kZSA9IFBDSV9DTEFTU19PVEhFUlMsCj4gKwkuaW50ZXJydXB0X3BpbiA9IFBDSV9J
TlRFUlJVUFRfSU5UQSwKPiArfTsKPiArCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgcGNpX2VwZl9t
aGlfZXBfaW5mbyBzYTg3NzVwX2luZm8gPSB7Cj4gKwkuY29uZmlnID0gJm1oaV92MV9jb25maWcs
Cj4gKwkuZXBmX2hlYWRlciA9ICZzYTg3NzVwX2hlYWRlciwKPiArCS5iYXJfbnVtID0gQkFSXzAs
Cj4gKwkuZXBmX2ZsYWdzID0gUENJX0JBU0VfQUREUkVTU19NRU1fVFlQRV8zMiwKPiArCS5tc2lf
Y291bnQgPSAzMiwKPiArCS5tcnUgPSAweDgwMDAsCj4gK307Cj4gKwo+ICBzdHJ1Y3QgcGNpX2Vw
Zl9taGkgewo+ICAJY29uc3Qgc3RydWN0IHBjaV9lcGNfZmVhdHVyZXMgKmVwY19mZWF0dXJlczsK
PiAgCWNvbnN0IHN0cnVjdCBwY2lfZXBmX21oaV9lcF9pbmZvICppbmZvOwo+IEBAIC02NzcsNiAr
NjkzLDcgQEAgc3RhdGljIGludCBwY2lfZXBmX21oaV9wcm9iZShzdHJ1Y3QgcGNpX2VwZiAqZXBm
LAo+ICB9Cj4gIAo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IHBjaV9lcGZfZGV2aWNlX2lkIHBjaV9l
cGZfbWhpX2lkc1tdID0gewo+ICsJeyAubmFtZSA9ICJzYTg3NzVwIiwgLmRyaXZlcl9kYXRhID0g
KGtlcm5lbF91bG9uZ190KSZzYTg3NzVwX2luZm8gfSwKPiAgCXsgLm5hbWUgPSAic2R4NTUiLCAu
ZHJpdmVyX2RhdGEgPSAoa2VybmVsX3Vsb25nX3QpJnNkeDU1X2luZm8gfSwKPiAgCXsgLm5hbWUg
PSAic204NDUwIiwgLmRyaXZlcl9kYXRhID0gKGtlcm5lbF91bG9uZ190KSZzbTg0NTBfaW5mbyB9
LAo+ICAJe30sCj4gLS0gCj4gMi43LjQKPiAKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqng
r40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdAps
aW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
