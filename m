Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1507BCA0EC4
	for <linux-phy@archiver.kernel.org>; Mon, 11 Aug 2025 23:30:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yeSWx2i+di6B7J+2CuoWRa5sfvV80Vj/lrVkKPmnwI0=; b=wKfh9Jenkkjduu
	1w/GYYbkQ7KDbVDy10KjB5ZmXV/itL9MdcKgwCT/NMwJFDcNWk/2CDKe8SvTlVkYRGPSOHfrYOKin
	6aXOzV7Y9OB/xOyxJ7kHTLLxUgy250Zhr7ibWA2UX14HulH8eYFgG6Mp0xNFTsoUbyEq25QMKkeQU
	+9MfeAY3skYF2Nb6QxM5R+46Px+jsI29ayPCEBz7EZDaPuo+rSTmMKP6s9S/EJ2vYGRxmK90vXRaC
	4i2sdhJgdfUYcCoFEJ1xg8xjT+5ir7vTCFgBOmq1zu7ZSECQ9hGjpVOvYUKV7V8WxLpTjyMttJku2
	WmbCxc6E5fTElsjUuH4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulbxq-00000009OCq-3SXw;
	Mon, 11 Aug 2025 23:30:02 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulbve-00000009NtS-2lNA
	for linux-phy@bombadil.infradead.org;
	Mon, 11 Aug 2025 23:27:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=YWTmidIq8YEYldQMnSV/2l6MmcDNoakzySxiOpKnalU=; b=nafErANLAEXMt9sQ9tUyFYMMx0
	zz+pYt2zI9Fp7FS7bYTo9z1m3p8rkxs6537s5IPy7EVDrmKxWfXFtShn8qKVAOhZNLExRhS0Q3rD/
	n/B614+Tuhtkiez/rAI9rz96d5y9XsuCLDBSZ3zZV6mLbhl6S/aCzuR8YTdTrjkRQCluyL36Pvnfr
	vqvTHJsgIMaFCKUwmKcDhlT139fX/Ait7lFWP5eN5y7XwH3LpzroLlWu+1dcQvSgyFSdWVeDx2Cr3
	7XyElScR1/Y34JctmsKfHQVMKDtZ5XDiyBznxe9OxeIsRfbYk5EuXi1UdhtwQinEeHpa5//TKWieJ
	Z/ixV8CA==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulbvb-0000000Fbif-1MNe
	for linux-phy@lists.infradead.org;
	Mon, 11 Aug 2025 23:27:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 84CBF5C630C;
	Mon, 11 Aug 2025 23:27:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F7E9C4CEED;
	Mon, 11 Aug 2025 23:27:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754954861;
	bh=mwz/eP00rVG/Y6T80JxDHy1MjyKzEdAzpu/R1JJkgDM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=f6eUMg2a7Y9Jqpexdl69AD7gsPUWf9vXj9KFy9y7r3utVFdjE/SaoO3RMNBv7tWA8
	 xTE9jAfJqU3pgyzwE6bnl+TB9xWr8NmOIFrQXJC+eURZ5LYPX40L3i0KFYGwhPJ7Y5
	 VBa6VGl0lLlEn8z4MnYdP+VGnrLqXICHDJBLOJZImia77h1yI21JHU1Oclg6p4lRDw
	 W7iaVmArwUHaHFm/AmYqK5vKvNQrvteUdyj3OElW3yF7jyMXQ12g4zmRZXS9puStgq
	 OHazLNtOT6XhIcQkswNWXjgbq1KgI0XxD7+hVacuj3wez6pr00W2purcTqTAkl+jBJ
	 cwgighT5oIX+w==
From: Bjorn Andersson <andersson@kernel.org>
To: konradybcio@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	jingoohan1@gmail.com,
	mani@kernel.org,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	bhelgaas@google.com,
	johan+linaro@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	neil.armstrong@linaro.org,
	abel.vesa@linaro.org,
	Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	qiang.yu@oss.qualcomm.com,
	quic_krichai@quicinc.com,
	quic_vbadigan@quicinc.com,
	Tingguo Cheng <quic_tingguoc@quicinc.com>
Subject: Re: (subset) [PATCH v1 1/1] arm64: dts: qcom: qcs615: Set LDO12A regulator to HPM to avoid boot hang
Date: Mon, 11 Aug 2025 18:27:11 -0500
Message-ID: <175495482457.157244.16977167154606922012.b4-ty@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250716030601.1705364-1-ziyue.zhang@oss.qualcomm.com>
References: <20250716030601.1705364-1-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_002743_777277_706CE8A0 
X-CRM114-Status: UNSURE (   8.58  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Ck9uIFdlZCwgMTYgSnVsIDIwMjUgMTE6MDY6MDEgKzA4MDAsIFppeXVlIFpoYW5nIHdyb3RlOgo+
IE9uIGNlcnRhaW4gcGxhdGZvcm1zIChlLmcuLCBRQ1M2MTUpLCBjb25zdW1lcnMgb2YgTERPMTJB
4oCUc3VjaCBhcyBQQ0llLAo+IFVGUywgYW5kIGVNTUPigJRtYXkgZHJhdyBtb3JlIHRoYW4gMTBt
QSBvZiBjdXJyZW50IGR1cmluZyBib290LiBUaGlzIGNhbgo+IGV4Y2VlZCB0aGUgcmVndWxhdG9y
J3MgbGltaXQgaW4gTG93IFBvd2VyIE1vZGUgKExQTSksIHRyaWdnZXJpbmcgY3VycmVudAo+IGxp
bWl0IHByb3RlY3Rpb24gYW5kIGNhdXNpbmcgdGhlIHN5c3RlbSB0byBoYW5nLgo+IAo+IFRvIGFk
ZHJlc3MgdGhpcywgdGhlcmUgYXJlIHR3byBwb3NzaWJsZSBhcHByb2FjaGVzOgo+IGEpIFNldCB0
aGUgcmVndWxhdG9yJ3MgaW5pdGlhbCBtb2RlIHRvIEhpZ2ggUGVyZm9ybWFuY2UgTW9kZSAoSFBN
KSBpbgo+ICAgIHRoZSBkZXZpY2UgdHJlZS4KPiBiKSBLZWVwIHRoZSBkZWZhdWx0IExQTSBzZXR0
aW5nIGFuZCBoYXZlIGVhY2ggY29uc3VtZXIgZHJpdmVyIGV4cGxpY2l0bHkKPiAgICBzZXQgaXRz
IGN1cnJlbnQgbG9hZC4KPiAKPiBbLi4uXQoKQXBwbGllZCwgdGhhbmtzIQoKWzEvMV0gYXJtNjQ6
IGR0czogcWNvbTogcWNzNjE1OiBTZXQgTERPMTJBIHJlZ3VsYXRvciB0byBIUE0gdG8gYXZvaWQg
Ym9vdCBoYW5nCiAgICAgIGNvbW1pdDogZmJhNDdiYThjOGE4ZmZhOWQ4YWQxODM2Mzk2ODM3YTk5
OGJiNTE1MwoKQmVzdCByZWdhcmRzLAotLSAKQmpvcm4gQW5kZXJzc29uIDxhbmRlcnNzb25Aa2Vy
bmVsLm9yZz4KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
