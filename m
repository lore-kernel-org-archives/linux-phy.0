Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3664CD37AC
	for <linux-phy@archiver.kernel.org>; Fri,  8 May 2026 23:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J9hT/k7RiVG2kQkDdSIZOeiUn4jkhcdnEAyXSqw9TDA=; b=Bu7/9E/4xccvbf
	xYxuQcYOIsvnszlSuwAP4HrhOlnMY2HgSX82R/P6IRO+FjIJb/W13JHTvH8IEXYb30RjUmidytmr4
	lgr+DfajSimk8FoCOIJKjm53a+z/oXMMahU/cEIB7kxEPlyU7cXFFAX1UvV4oWtNaTBBHm584WF7q
	/Nt0v8xlePqy2717aI0ku6Hv7PEmsZvS5Ze/6uqyksP10VgBs9xjzjSBrS61RU7nvmA9E25Bh4/yl
	t4Eup8M9aZEdFmy9FRS3Ule4HTZja4JtK5XPeAo5hdgNZ7pEQU0ojwbld3w1bpXkcpDKXDXHflAw3
	kV/6Qv3CXGxtG2e2JbRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLUlh-00000007ljk-1Iem;
	Fri, 08 May 2026 23:38:05 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLUlf-00000007ljZ-2zFx
	for linux-phy@lists.infradead.org;
	Fri, 08 May 2026 23:38:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id C635D6024D;
	Fri,  8 May 2026 23:38:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20366C2BCB0;
	Fri,  8 May 2026 23:38:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778283482;
	bh=8EFFZFKDLlmHSOZPUE2j79AeUscpnwAnXV/yy2Q87SI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=Qv8IJct/DG5TaaB7QOrfOK/hJUpfNjVFmU2W9YI/F+3TSGjAq9y4z0FYfkZKT2RhS
	 qVuqj2LXdDNi7DkSWsUStS6BbGjrgLlXRXKKI1v4TYaxrZY5R8CCQJ3HOBpFpCy+6X
	 ePxSJ9Ztp8W7U/qL6utzi8YnQVgZ+CWxzG94Kmz4GCyWUhLRuWINh9Or5EZtm5Pq0j
	 vj7AwKQ0iuM8o+bbpd5GBbs5OfOO8ZTEzupP81xVffkm/tVFNtg2Z2cYaK8GUTe069
	 RMvWWDDzKFkcG5LzAq723dIUv6TkGZIC64zhXnTY6TrEAp2lPIMy+/ACD8FU3tbDUf
	 2aSz+B7y+NHIA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 09/10] phy: qcom-qmp: pcs-pcie: Add v10.60 register
 offsets
To: "Matthew Leung" <matthew.leung@oss.qualcomm.com>
Cc: conor+dt@kernel.org, robh@kernel.org, krzk+dt@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, vkoul@kernel.org
In-Reply-To: <20260508-hawi-phy-pcie-v1-9-237b894353fc@oss.qualcomm.com>
References: <20260508-hawi-phy-pcie-v1-9-237b894353fc@oss.qualcomm.com>
Date: Fri, 08 May 2026 23:38:01 +0000
Message-Id: <20260508233802.20366C2BCB0@smtp.kernel.org>
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
Reply-To: sashiko@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIG1hY3JvIGBRUEhZ
X1BDSUVfVjEwXzYwX1BDU19QQ1NfVFhfUlhfQ09ORklHYCBjb250YWlucyBhIHJlZHVuZGFudCBg
UENTX2Agc3Vic3RyaW5nLgotLQoKY29tbWl0IGZhOWQ5MmJkMmY0MWRkNjQzNTY2ZDQ5MDMxMmM0
YTE4YThhNjgyMTQKQXV0aG9yOiBNYXR0aGV3IExldW5nIDxtYXR0aGV3LmxldW5nQG9zcy5xdWFs
Y29tbS5jb20+CgpwaHk6IHFjb20tcW1wOiBwY3MtcGNpZTogQWRkIHYxMC42MCByZWdpc3RlciBv
ZmZzZXRzCgpUaGlzIGNvbW1pdCBhZGRzIGEgbmV3IGhlYWRlciBmaWxlIGNvbnRhaW5pbmcgdGhl
IHNwZWNpZmljIFBDUyBQQ0llIHJlZ2lzdGVyCm9mZnNldHMgZm9yIHRoZSBRTVAgcGh5IHZlcnNp
b24gdjEwLjYwIHVzZWQgaW4gSGF3aSBTb0NzLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkv
cXVhbGNvbW0vcGh5LXFjb20tcW1wLXBjcy1wY2llLXYxMF82MC5oIGIvZHJpdmVycy9waHkvcXVh
bGNvbW0vcGh5LXFjb20tcW1wLXBjcy1wY2llLXYxMF82MC5oCj4gbmV3IGZpbGUgbW9kZSAxMDA2
NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAwLi5lNGEyYmRjN2MzZjAzCj4gLS0tIC9kZXYvbnVsbAo+
ICsrKyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY3MtcGNpZS12MTBfNjAu
aAo+IEBAIC0wLDAgKzEsMjYgQEAKWyAuLi4gXQo+ICsjaWZuZGVmIFFDT01fUEhZX1FNUF9QQ1Nf
UENJRV9WMTBfNjBfSF8KPiArI2RlZmluZSBRQ09NX1BIWV9RTVBfUENTX1BDSUVfVjEwXzYwX0hf
Cj4gKwo+ICsvKiBPbmx5IGZvciBRTVAgVjEwXzYwIFBIWSAtIFBDSUUgUENTIHJlZ2lzdGVycyAq
Lwo+ICsjZGVmaW5lIFFQSFlfUENJRV9WMTBfNjBfUENTX1BPV0VSX1NUQVRFX0NPTkZJRzIJCTB4
MDBjCj4gKyNkZWZpbmUgUVBIWV9QQ0lFX1YxMF82MF9QQ1NfUENTX1RYX1JYX0NPTkZJRwkJCTB4
MDE4CgpUaGlzIGlzbid0IGEgYnVnLCBidXQgdGhlcmUgaXMgYSByZWR1bmRhbnQgIlBDU18iIHN1
YnN0cmluZyBpbgpRUEhZX1BDSUVfVjEwXzYwX1BDU19QQ1NfVFhfUlhfQ09ORklHLgoKU2hvdWxk
IHRoaXMgYmUgbmFtZWQgUVBIWV9QQ0lFX1YxMF82MF9QQ1NfVFhfUlhfQ09ORklHIHRvIHJlbWFp
biBjb25zaXN0ZW50CndpdGggb2xkZXIgUEhZIHZlcnNpb24gaGVhZGVycyBsaWtlIFFQSFlfUENJ
RV9WOF9QQ1NfVFhfUlhfQ09ORklHPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8v
c2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDUwOC1oYXdpLXBoeS1wY2llLXYxLTAtMjM3Yjg5
NDM1M2ZjQG9zcy5xdWFsY29tbS5jb20/cGFydD05CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
