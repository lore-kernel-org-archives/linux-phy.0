Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3A8ECA0ED1
	for <linux-phy@archiver.kernel.org>; Mon, 11 Aug 2025 23:30:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1inZ8plugVEG/w6c2cEa/nX93LJ0V2Xs0jqruE84OBI=; b=uOJK0xMijD3Xfh
	02kvn6MvwSy6H+SuVrgBtn7TO0T88xD6qQufcAybCpbs7bzspRn9hgMP6C7v7s8e7pDQC/ngvRuaF
	gXyTH9OJAPlQPWnjbfymH4lboZtM8P0xSL/3ufJSLrwHhOo4u4VDxEFb8DZL/mXsKlgJLi8v8I4LI
	a7YrmbtsqVt4L0XIFgo8ovJ6/R12NAM8+QSt9w5T9bs9AspJHvmvCem37Le9HK31rrkloHCKroMb9
	ngvSz0PHxrYpX5t8fAlY4OBP1cRoa7aYp3m7fm1N+UaxDC4QaZTqdKfGqDNBaXuWRtMQRgzkn8qE7
	xxLsOr43VDmavwyoLGzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulbxq-00000009OCb-2KXQ;
	Mon, 11 Aug 2025 23:30:02 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulbvW-00000009Nrf-1cfX
	for linux-phy@lists.infradead.org;
	Mon, 11 Aug 2025 23:27:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 8718845CD7;
	Mon, 11 Aug 2025 23:27:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CAA06C4CEF7;
	Mon, 11 Aug 2025 23:27:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754954857;
	bh=aww67BHxnNdQbNNndw5WrR6+OqPaKbI8LFTYgFplNIo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Nq15aqHZLa13/+Zl7U5iFb3kjfwe8gRadmatAPa5boXFPwIeYedJR2gUen8PWN/QO
	 VXHGC47m7jXL5oBwzNEgZmuNFFQiKnJcXn0XgmXHLIOCthu63tlIadNvqSqYUA29fo
	 1sFhaESlvi7m32tZvPYxbWgEMBE0zTlu8RNL6X/BGcJf8C0SbG2dV/8GO1oX6SYSSL
	 m9GyQeOojnNewvbsm1S1qL4UhiDDAE6qE+rzp6qugCRBRhwZXgwayjpx/JDajElMUI
	 yhxevl053Q6AtlXtEpfciHVU1Wwiv6724T43naPWPSMpV8ZgU1D9ELkYOOVnHxyXf7
	 ffsCkMinDH5YQ==
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
	Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	qiang.yu@oss.qualcomm.com,
	quic_krichai@quicinc.com,
	quic_vbadigan@quicinc.com,
	Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>,
	Tingguo Cheng <quic_tingguoc@quicinc.com>
Subject: Re: (subset) [PATCH v2 1/1] arm64: dts: qcom: qcs615: Set LDO12A regulator to HPM to avoid boot hang
Date: Mon, 11 Aug 2025 18:27:08 -0500
Message-ID: <175495482442.157244.678684703517788074.b4-ty@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250717072746.987298-1-quic_ziyuzhan@quicinc.com>
References: <20250717072746.987298-1-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_162738_443951_99C89686 
X-CRM114-Status: UNSURE (   8.38  )
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

Ck9uIFRodSwgMTcgSnVsIDIwMjUgMTU6Mjc6NDYgKzA4MDAsIFppeXVlIFpoYW5nIHdyb3RlOgo+
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
