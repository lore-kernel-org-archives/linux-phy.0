Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8885EC982ED
	for <linux-phy@archiver.kernel.org>; Mon, 21 Sep 2026 11:05:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nzp16a1houxP73dlw6dh/1sKAs/g4DZu0OWYEpj9pEE=; b=H9jq5pyA94uowx
	ZK+ydDMPVN7eIlEZSLir474muzADNPUxrTaQF/VMANRlnSH1lWWkQH/bNUQ0haZAkPb6WsNeEMbUF
	YB3Xf2W5UTulUIel7SOpcN1ciGDXgu5slwMesuBHRs8Q1MZIG5r8cFm6lYhvGEL1l088OgXi6cPz4
	fNECs0QoTszZWHb6rMMY/wvVDL1NJYYqKm3lyPAnQlbJWXhbLiNxh546x4Ki4lPCKedtpIfVsPBuC
	7cClO1tg4+6Qw2oVswEzKPWkyLhmLhAa+PYO0e//iSRddByalU4MgMDgDbjBO6rs1yXy2N2eNh0i+
	zbWTIoToVnHbFaRXZsSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8bq2-00000001pHV-4AF2;
	Mon, 21 Sep 2026 11:05:35 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8bq1-00000001pH7-1Pax
	for linux-phy@lists.infradead.org;
	Mon, 21 Sep 2026 11:05:33 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7214E600C8;
	Mon, 21 Sep 2026 11:05:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC0611F000FF;
	Mon, 21 Sep 2026 11:05:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789988732;
	bh=Q23X9NFAUgyki7bVg3boIBIdGH2nvLPDKnO958Egv1U=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=CkCRxeFr/Q2nb4xBxr/Utz39L2az7K1/V7SwTaH4NygTtrOlQCkebrykmXtQrRDU9
	 D/Qqy0xQL8DCoA94jNbYocHWXDju5/ixp9bvZHr6pEH7UsHSvz2dQBsg+Avd1HiKw8
	 mVvx7BpSJFjuuQPZnbBgO/NhArmiB0uzmNFbr49nH4k8D9p0a2ppNiXGH0QyBgRSHr
	 XxvwrKntEdZ1qXf1KZzECNLFxCqfMskFotgjSxhmH8BJAMV2E7nrLtYrpha3g5sfLz
	 Il796J/Gvn/YHcQ14AeCLp02T4SaFA8je12UgTn/TXblrwcnzIdCyoi7XDr6cdA/So
	 mqR/r1HQxRNYA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/6] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 qcs8300 16 GT/s PHY
To: "Krishna Chaitanya Chundru" <krishna.chundru@oss.qualcomm.com>
Cc: neil.armstrong@linaro.org, vkoul@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, linux-pci@vger.kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20260921-monaco_ep-v1-1-63c5282fb0db@oss.qualcomm.com>
References: <20260921-monaco_ep-v1-0-63c5282fb0db@oss.qualcomm.com>
 <20260921-monaco_ep-v1-1-63c5282fb0db@oss.qualcomm.com>
Date: Mon, 21 Sep 2026 11:05:31 +0000
Message-Id: <20260921110531.AC0611F000FF@smtp.kernel.org>
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

PiBUaGUgUUNTODMwMCAxNiBHVC9zIHg0IFFNUCBQQ0llIFBIWSB3YXMgcHJldmlvdXNseSBkZXNj
cmliZWQgdXNpbmcgb25seQo+IHRoZSBxY29tLHNhODc3NXAtcW1wLWdlbjR4NC1wY2llLXBoeSBj
b21wYXRpYmxlLCBzaW5jZSBubyBRQ1M4MzAwLXNwZWNpZmljCj4gY29tcGF0aWJsZSBleGlzdGVk
IGZvciB0aGlzIFBIWS4gVGhpcyB3YXMgYSBtaXN0YWtlLCBhcyBpdCBsZWZ0IHRoZSBQSFkKPiB1
bmRvY3VtZW50ZWQgYXMgUUNTODMwMCBoYXJkd2FyZSBhbmQgaW5kaXN0aW5ndWlzaGFibGUgZnJv
bSBTQTg3NzVQIGluCj4gdGhlIGJpbmRpbmcuCj4gCj4gQ29ycmVjdCB0aGlzIGJ5IGRvY3VtZW50
aW5nIGEgZGVkaWNhdGVkCj4gInFjb20scWNzODMwMC1xbXAtZ2VuNHg0LXBjaWUtcGh5IiBjb21w
YXRpYmxlLCB3aXRoCj4gInFjb20sc2E4Nzc1cC1xbXAtZ2VuNHg0LXBjaWUtcGh5IiBsaXN0ZWQg
YXMgaXRzIGZhbGxiYWNrIGNvbXBhdGlibGUuCj4gCj4gU2lnbmVkLW9mZi1ieTogS3Jpc2huYSBD
aGFpdGFueWEgQ2h1bmRydSA8a3Jpc2huYS5jaHVuZHJ1QG9zcy5xdWFsY29tbS5jb20+CgpTYXNo
aWtvIGhhcyByZXZpZXdlZCB0aGlzIHBhdGNoIGFuZCBmb3VuZCBubyBpc3N1ZXMuIEl0IGxvb2tz
IGdyZWF0IQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9w
YXRjaHNldC8yMDI2MDkyMS1tb25hY29fZXAtdjEtMC02M2M1MjgyZmIwZGJAb3NzLnF1YWxjb21t
LmNvbT9wYXJ0PTEKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
