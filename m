Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BF28CD4851
	for <linux-phy@archiver.kernel.org>; Tue, 19 May 2026 12:02:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NrfhRoueDOj9o+5s0yXIZWp818qMq7DKWuKMEsY/SwA=; b=zu5HpBVL1KEMzf
	LWX8ZGDDifuqs/RbzTGur/VIzCJictqvpZKSJYh89akp9iJRv6Yh6UP8zBYI5EM+fGvWQ82oa3uLP
	u/yZMa0cQxdHf6by+J6MFGpC9U25Th/By+DYPech25uhY7khn0fdXgD39kdSz+DfehRSRb459FUCn
	pOGvbUDnc3NnRFW1nkpuZ2/S1MyxqoHrum9kmJyO2CJCvurgrZOWs/9kVypwy9P02lcZIlq8sD4q/
	q3xMOikk1bJNdsrvmKb2euxl52ZoC/9yUg48pFizf2GiEMrCVRtG8KbXw9BQYtHm2HZ8gOIZ5BKiH
	nYbnGlC4BP6lgS4HzdPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPJ9k-00000001PFJ-3ahl;
	Tue, 19 May 2026 12:02:40 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPJ9j-00000001PEk-179q
	for linux-phy@lists.infradead.org;
	Tue, 19 May 2026 12:02:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 936B741A28;
	Tue, 19 May 2026 12:02:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C84CC2BCB3;
	Tue, 19 May 2026 12:02:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779192158;
	bh=4QhiP/O5Cduyi8JFpsxktoqRpBVXZeNxxdFhkjZreyI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=DYZjSSQbjjnoJpDMXBywq3QDX1qwMIZ3/6/oCyP+ZWvxNkGXZcT7IrA/hnCsZNIKt
	 WNVeE8YLSo3wMKbhEjY94+srl+JHTHrYUQmuW8PxoTRWkd5dF9au07Z78OfIQSCYXy
	 0WWfFJ6ER1TptB8yOTKflUI+SkwKsHcWZ+EAuFtZDczUFgvXjSedjMO40gfHINy3y9
	 QkZTNAsO/P6bsExWayhllK91l02h4p3ReBjO09N7j62C6/Sdu3GOI81G9Cb/DLSz6w
	 eXwOrkp7k65YgqsCz5MPXdX/pE4QFeHIgPuInZVT1tHzkVhL6yZYOCzxldpak10l7C
	 Tilbt9fW/cqUQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/5] arm64: dts: qcom: Add Shikra CQ7790M SoM
 platform
To: "Komal Bajaj" <komal.bajaj@oss.qualcomm.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org
In-Reply-To: <20260519-shikra-dt-v2-3-c01b90fb4395@oss.qualcomm.com>
References: <20260519-shikra-dt-v2-3-c01b90fb4395@oss.qualcomm.com>
Date: Tue, 19 May 2026 12:02:37 +0000
Message-Id: <20260519120238.1C84CC2BCB3@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_050239_321140_E0CC7E19 
X-CRM114-Status: GOOD (  13.77  )
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

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBTb00gZGV2aWNl
IHRyZWUgcGFydGlhbGx5IGRlZmluZXMgUE1JQyByZWd1bGF0b3JzIChMRE9zKSBidXQgY29tcGxl
dGVseSBvbWl0cyB0aGVpciBpbnRlcm5hbCBwYXJlbnQgU01QUyByZWd1bGF0b3JzIChTMywgUzQp
IGFuZCB0aGUgcmVxdWlyZWQgc3VwcGx5IGxpbmthZ2UgcHJvcGVydGllcy4KLSBbSGlnaF0gVGhl
IFNvTSBpbnRlZ3JhdGVzIHRoZSBQTTQxMjUgUE1JQywgYnV0IHRoZSBkZXZpY2UgdHJlZSBpbmNs
dWRlIGZvciB0aGUgUE1JQydzIFNQTUkgY29tcG9uZW50cyAoYHBtNDEyNS5kdHNpYCkgaXMgbWlz
c2luZy4KLS0KCmNvbW1pdCAxZWRkMzBlYTg4ZGE0MTFmNjY3Zjc4NmVmNTQ5NGNlYmYxNDIwYzc4
CkF1dGhvcjogS29tYWwgQmFqYWogPGtvbWFsLmJhamFqQG9zcy5xdWFsY29tbS5jb20+Cgphcm02
NDogZHRzOiBxY29tOiBBZGQgU2hpa3JhIENRNzc5ME0gU29NIHBsYXRmb3JtCgpUaGlzIGNvbW1p
dCBhZGRzIHRoZSBkZXZpY2UgdHJlZSBpbmNsdWRlIGZvciB0aGUgQ1E3NzkwTSB2YXJpYW50IG9m
IHRoZQpTaGlrcmEgU3lzdGVtLW9uLU1vZHVsZS4gSXQgaW5jbHVkZXMgdGhlIGNvbW1vbiBzaGlr
cmEuZHRzaSBhbmQgYWRkcwpQTTQxMjUgUE1JQyByZWd1bGF0b3IgZGVmaW5pdGlvbnMgc3BlY2lm
aWMgdG8gdGhpcyB2YXJpYW50LgoKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9x
Y29tL3NoaWtyYS1jcW0tc29tLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2hpa3Jh
LWNxbS1zb20uZHRzaQo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAw
MC4uNDAxZTcxNzIwNTE5ZAo+IC0tLSAvZGV2L251bGwKPiArKysgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3Fjb20vc2hpa3JhLWNxbS1zb20uZHRzaQo+IEBAIC0wLDAgKzEsMTEyIEBACj4gKy8vIFNQ
RFgtTGljZW5zZS1JZGVudGlmaWVyOiBCU0QtMy1DbGF1c2UKPiArLyoKPiArICogQ29weXJpZ2h0
IChjKSBRdWFsY29tbSBUZWNobm9sb2dpZXMsIEluYy4gYW5kL29yIGl0cyBzdWJzaWRpYXJpZXMu
Cj4gKyAqLwo+ICsKPiArI2luY2x1ZGUgInNoaWtyYS5kdHNpIgoKVGhlIGNvbW1pdCBtZXNzYWdl
IG1lbnRpb25zIHRoZSBTb00gaW50ZWdyYXRlcyB0aGUgUE00MTI1IFBNSUMsIGJ1dCBpcwpwbTQx
MjUuZHRzaSBzdXBwb3NlZCB0byBiZSBpbmNsdWRlZCBoZXJlIGFzIHdlbGw/CgpXaXRob3V0IGlu
Y2x1ZGluZyB0aGUgUE1JQydzIFNQTUkgY29tcG9uZW50cyAobGlrZSBwbTQxMjVfZ3Bpb3MsCnBt
NDEyNV9wd3JrZXkpLCBpdCBzZWVtcyBjYXJyaWVyIGJvYXJkcyB3b24ndCBiZSBhYmxlIHRvIGFk
ZHJlc3Mgb3IgdXRpbGl6ZQp0aGVzZSBwZXJpcGhlcmFscy4KCj4gKwo+ICsmcnBtX3JlcXVlc3Rz
IHsKPiArCXJlZ3VsYXRvcnMgewo+ICsJCWNvbXBhdGlibGUgPSAicWNvbSxycG0tcG0yMjUwLXJl
Z3VsYXRvcnMiOwo+ICsKPiArCQlwbTQxMjVfczI6IHMyIHsKPiArCQkJcmVndWxhdG9yLW1pbi1t
aWNyb3ZvbHQgPSA8MTAwMDAwMD47Cj4gKwkJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDEy
MDAwMDA+Owo+ICsJCX07CgpEb2VzIHRoaXMgcmVndWxhdG9yIG5vZGUgbmVlZCB0byBkZWZpbmUg
dGhlIGludGVybmFsIHBhcmVudCBTTVBTIHJlZ3VsYXRvcnMKbGlrZSBzMyBhbmQgczQsIGFzIHdl
bGwgYXMgdGhlIHZkZF9YLXN1cHBseSBsaW5rYWdlIHByb3BlcnRpZXMgZm9yIHRoZSBjaGlsZApM
RE9zPwoKVGhlIGRyaXZlciBkcml2ZXJzL3JlZ3VsYXRvci9xY29tX3NtZC1yZWd1bGF0b3IuYyBl
eHBlY3RzIHN1cHBseSBtYXBwaW5ncyBmb3IKcG0yMjUwIChlLmcuLCB2ZGRfbDFfbDJfbDNfbDVf
bDZfbDdfbDhfbDlfbDEwX2wxMV9sMTIpLgoKV2l0aG91dCByZXByZXNlbnRpbmcgdGhpcyBmaXhl
ZCBpbnRlcm5hbCBwb3dlciByb3V0aW5nIGluIHRoZSBTb00ncyBkZXZpY2UKdHJlZSwgdGhlIGNv
cmUgZnJhbWV3b3JrIG1pZ2h0IG5vdCBiZSBhYmxlIHRvIGNvcnJlY3RseSBtYW5hZ2UgdGhlIHBh
cmVudApzdXBwbHkgdm9sdGFnZXMgYW5kIHN0YXRlcyB3aGVuIGNoaWxkIExET3MgYXJlIHRvZ2ds
ZWQuCgo+ICsKPiArCQlwbTQxMjVfbDM6IGwzIHsKPiArCQkJcmVndWxhdG9yLW1pbi1taWNyb3Zv
bHQgPSA8NjI0MDAwPjsKPiArCQkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8NjUwMDAwPjsK
PiArCQl9OwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9w
YXRjaHNldC8yMDI2MDUxOS1zaGlrcmEtZHQtdjItMC1jMDFiOTBmYjQzOTVAb3NzLnF1YWxjb21t
LmNvbT9wYXJ0PTMKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
