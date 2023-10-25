Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98283C0032E
	for <linux-phy@archiver.kernel.org>; Wed, 25 Oct 2023 07:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c9rmLfGsS1AAOENBD/uFF0IajMILftN2lsCP89jpebE=; b=NDgAk9We9xVPGc
	36Tx6vYj1V9JbKgUwNBwVVDEC+fX4gmPvtbuJNO2wlUzp3h7aigOfdtOgvsROq8PjFy5hhyGDE3Ho
	nWo/H755sPWclwF9dbRfRS+pbGpE8F/nJP6JtHHw1kMYQse+7h+ds6/o09JLqEVRfahEY4WnVGD+U
	KYIWpk9IN+ZKCDKxYQPOiKXRQ4dS336jKk+QG8liO3tpB0SM71h8BapPx9Q2L6xk+1tF9M7VIV/9g
	UuigWqIyRgEtWvapVGqvp5AJ+ZNZFJj76Eemfbgvuopv8qSvu6ok46Mt0sbPtKDBo4uPzeZSWdE6z
	XgM9jz4U/6c0WObFc6fA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvYhp-00Bcl5-18;
	Wed, 25 Oct 2023 07:53:33 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvYhn-00BckA-0P
	for linux-phy@lists.infradead.org;
	Wed, 25 Oct 2023 07:53:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 79918CE0A22;
	Wed, 25 Oct 2023 07:53:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC7AEC433C7;
	Wed, 25 Oct 2023 07:53:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698220408;
	bh=n7geoxZluBkHjmKnM8s/P2+FzK4sT5UeQFEuduBhZmw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=e6kq3+WINzCpXHPmzwRaIy8oZqnFEdP4qiZRJOfhu+DTqpNrF0gj1ewL4kKPDb8YU
	 9C6ZV6myHtv2eYbE80UZFwkgs0Ix4SDZ/gGqNVok0oteF8/e9zo6Qcjw9JMAPH6HCZ
	 HEy+CoEPZttoRrATy6kHg4o7Ew1oQT/NfhmxltfOLp7OzDWl942b9y46xMyf4JGj0o
	 /hGUUoenoli7WMUkFCYlKfFcEf3BTS6VMH9qmz4h+OFymg4HCy1oQTaECcoxyCl+J1
	 +uaJmA+Pt8H++XDmZDd2443w1c0leTOPPSfEv5QMtS8lXRDE/2f5A7gXhLrre6J/1D
	 j3jzSWFpJLsWA==
Date: Wed, 25 Oct 2023 13:23:17 +0530
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
Subject: Re: [PATCH v3 2/5] PCI: qcom-ep: Add support for SA8775P SOC
Message-ID: <20231025075317.GC3648@thinkpad>
References: <1697715430-30820-1-git-send-email-quic_msarkar@quicinc.com>
 <1697715430-30820-3-git-send-email-quic_msarkar@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1697715430-30820-3-git-send-email-quic_msarkar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231025_005331_334097_868917CC 
X-CRM114-Status: GOOD (  15.12  )
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

T24gVGh1LCBPY3QgMTksIDIwMjMgYXQgMDU6MDc6MDdQTSArMDUzMCwgTXJpbm1heSBTYXJrYXIg
d3JvdGU6Cj4gQWRkIHN1cHBvcnQgZm9yIFNBODc3NVAgU29DIHRvIHRoZSBRdWFsY29tbSBQQ0ll
IEVuZHBvaW50IENvbnRyb2xsZXIKPiBkcml2ZXIuIFRoZXJlIHdpbGwgYmUgc29tZSBjaGFuZ2Ug
c3BlY2lmaWMgdG8gU0E4Nzc1UCBzbyBhZGRpbmcgbmV3Cj4gY29tcGF0aWJsZSBzdHJpbmcuCj4g
CgpXaGF0IGFyZSB0aG9zZSBzcGVjaWZpYyBjaGFuZ2VzPwoKLSBNYW5pCgo+IFNpZ25lZC1vZmYt
Ynk6IE1yaW5tYXkgU2Fya2FyIDxxdWljX21zYXJrYXJAcXVpY2luYy5jb20+Cj4gLS0tCj4gIGRy
aXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS1lcC5jIHwgMSArCj4gIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250
cm9sbGVyL2R3Yy9wY2llLXFjb20tZXAuYyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3Bj
aWUtcWNvbS1lcC5jCj4gaW5kZXggMzJjOGQ5ZS4uNGMwMWMzNCAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXFjb20tZXAuYwo+ICsrKyBiL2RyaXZlcnMvcGNp
L2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS1lcC5jCj4gQEAgLTg1OCw2ICs4NTgsNyBAQCBzdGF0
aWMgdm9pZCBxY29tX3BjaWVfZXBfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYp
Cj4gIH0KPiAgCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHFjb21fcGNpZV9l
cF9tYXRjaFtdID0gewo+ICsJeyAuY29tcGF0aWJsZSA9ICJxY29tLHNhODc3NXAtcGNpZS1lcCIs
IH0sCj4gIAl7IC5jb21wYXRpYmxlID0gInFjb20sc2R4NTUtcGNpZS1lcCIsIH0sCj4gIAl7IC5j
b21wYXRpYmxlID0gInFjb20sc204NDUwLXBjaWUtZXAiLCB9LAo+ICAJeyB9Cj4gLS0gCj4gMi43
LjQKPiAKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K61
4K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
