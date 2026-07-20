Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0BBDC44515
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 13:58:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ZSYzWCHbk9zUzllcxkgK6pYNjTkH+Gse9Xs88Fa/R4=; b=DQ7SiZ1WS8bCEw
	q45YKsjekcARs+bw3h6qJM+TdT4asAO7CJ9qFGVezOotOeWFD1zGH3IThX/6E4FR2eW1TiqqZurQd
	OVYvr7Y1TLskeqytcExb+cBiVmxQWkMGx7y90OrVBWCGU0jMrGxx+0YavQCy7Y0/tcCu6UBClMjqS
	eQmYImHhtzTwYxy/KhHnNO1eXRfZqokfQEvos4o+8xHUr65DCcCABed0Twhi6P2+2sRa84D5iqBlD
	b1cqMsM1S2LQqxZ4G6G87wnyDUE3KZPtgIHieXUAWieKhj3JUzokbVMiHnEBOd96buqdIDgehrwJC
	KknLfZzedqeSm05rxXfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wloW1-00000006tLN-1EvO;
	Mon, 20 Jul 2026 13:58:41 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wloVz-00000006tLE-38Uz
	for linux-phy@lists.infradead.org;
	Mon, 20 Jul 2026 13:58:39 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 2D36D418F8;
	Mon, 20 Jul 2026 13:58:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 94D9F1F000E9;
	Mon, 20 Jul 2026 13:58:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784555919;
	bh=niwP5T1zcgkdtuv5FMoRKeMqwieGzWbRQ8nHHW2X6gE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=I3K963ytrxnk1LwYfqln9aualhF4ToX3Tt3koOL8RMcV+N7lVv5OHS6itr5sAl609
	 lLzkKZnARNPc9NZS2bbY1CezYlcKtoYE6wRBvTrm42NXPLO0M+h7mW+HPOVeBJMnnu
	 W9srkbL3fXxWjo/MtN6bh/R3CyofhRcK17iTxEyHjyui+G5UCtoj5JbkYbX4cKG9oX
	 8AJc7dKN1c/uKVgYBjTXg/fEOECkmFXuHacM38SrFNJw9E9CKhvcNMzCKqLaz9/5Lr
	 GG76jLK+MEN51z54wJM0Qa6UlwQnAUq/POVxJMNCTJBN9VSE9/DDALSvO4hfp15MGg
	 cenyuAafoEUQg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 phy-next 5/8] soc: fsl: guts: make fsl_soc_data
 available after fsl_guts_init()
To: "Vladimir Oltean" <vladimir.oltean@nxp.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, vkoul@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260720133642.136324-6-vladimir.oltean@nxp.com>
References: <20260720133642.136324-1-vladimir.oltean@nxp.com>
 <20260720133642.136324-6-vladimir.oltean@nxp.com>
Date: Mon, 20 Jul 2026 13:58:38 +0000
Message-Id: <20260720135838.94D9F1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIE5VTEwgcG9pbnRlciBk
ZXJlZmVyZW5jZSBpbiB0aGUgZXJyb3IgaGFuZGxpbmcgcGF0aCBvZiBgZnNsX2d1dHNfaW5pdCgp
YC4KLS0KCi0tLSBQYXRjaCBbNV06IFtQQVRDSCB2MyBwaHktbmV4dCA1LzhdIHNvYzogZnNsOiBn
dXRzOiBtYWtlIGZzbF9zb2NfZGF0YSBhdmFpbGFibGUgYWZ0ZXIgZnNsX2d1dHNfaW5pdCgpIC0t
LQpjb21taXQgZDMxNmI2OWUxYzU4N2I1NmFkNmY5MTRkZGJkMmU0MTI0OTBjODU5NApBdXRob3I6
IFZsYWRpbWlyIE9sdGVhbiA8dmxhZGltaXIub2x0ZWFuQG54cC5jb20+CnNvYzogZnNsOiBndXRz
OiBtYWtlIGZzbF9zb2NfZGF0YSBhdmFpbGFibGUgYWZ0ZXIgZnNsX2d1dHNfaW5pdCgpCgpUaGlz
IGNvbW1pdCBwcmVzZXJ2ZXMgdGhlIHNvY19kYXRhIGRldGVybWluZWQgZHVyaW5nIGZzbF9ndXRz
X2luaXQoKSBzbyBpdApjYW4gYmUgcmVmZXJlbmNlZCBsYXRlciBmb3IgUkNXIG92ZXJyaWRlIG1l
dGhvZHMuIEl0IHVwZGF0ZXMgdGhlIGVycm9yCmhhbmRsaW5nIHBhdGhzIHRvIHByb3Blcmx5IGNs
ZWFuIHVwIHRoZSBzYXZlZCBzdGF0ZSBpZiBpbml0aWFsaXphdGlvbiBmYWlscy4KCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvc29jL2ZzbC9ndXRzLmMgYi9kcml2ZXJzL3NvYy9mc2wvZ3V0cy5jCj4g
LS0tIGEvZHJpdmVycy9zb2MvZnNsL2d1dHMuYwo+ICsrKyBiL2RyaXZlcnMvc29jL2ZzbC9ndXRz
LmMKPiBAQCAtMjMxLDEwICsyMzIsOSBAQCBzdGF0aWMgaW50IF9faW5pdCBmc2xfZ3V0c19pbml0
KHZvaWQpCj4gIHsKPiAtCXN0cnVjdCBzb2NfZGV2aWNlX2F0dHJpYnV0ZSAqc29jX2Rldl9hdHRy
Owo+ICsJc3RydWN0IHNvY19kZXZpY2VfYXR0cmlidXRlICpzb2NfZGV2X2F0dHIgPSBOVUxMOwo+
ICAJc3RhdGljIHN0cnVjdCBzb2NfZGV2aWNlICpzb2NfZGV2OwoKWyAuLi4gXQoKPiBAQCAtMjQz
LDEyICsyNDMsMTIgQEAgc3RhdGljIGludCBfX2luaXQgZnNsX2d1dHNfaW5pdCh2b2lkKQo+ICAJ
bnAgPSBvZl9maW5kX21hdGNoaW5nX25vZGVfYW5kX21hdGNoKE5VTEwsIGZzbF9ndXRzX29mX21h
dGNoLCAmbWF0Y2gpOwo+ICAJaWYgKCFucCkKPiAgCQlyZXR1cm4gMDsKPiAtCXNvY19kYXRhID0g
bWF0Y2gtPmRhdGE7Cj4gKwlzb2MuZGF0YSA9IG1hdGNoLT5kYXRhOwo+ICAKPiAgCXNvYy5kY2Zn
X2Njc3IgPSBvZl9pb21hcChucCwgRENGR19DQ1NSKTsKPiAgCWlmICghc29jLmRjZmdfY2Nzcikg
ewo+ICAJCW9mX25vZGVfcHV0KG5wKTsKPiAtCQlyZXR1cm4gLUVOT01FTTsKPiArCQlnb3RvIGVy
cl9ub21lbTsKPiAgCX0KCltTZXZlcml0eTogSGlnaF0KSWYgb2ZfaW9tYXAoKSBmYWlscyBoZXJl
LCB0aGUgY29kZSBleGVjdXRlcyBhIGdvdG8gdG8gdGhlIGVycm9yIHBhdGggd2hpbGUKc29jX2Rl
dl9hdHRyIGlzIHN0aWxsIGV4cGxpY2l0bHkgTlVMTC4gCgpEb3duIGluIHRoZSBlcnJvciBjbGVh
bnVwIHBhdGgsIHRoZSBjb2RlIHVuY29uZGl0aW9uYWxseSBkZXJlZmVyZW5jZXMgCnNvY19kZXZf
YXR0ciB0byByZXRyaWV2ZSBpdHMgbWVtYmVyczoKCj4gQEAgLTMxMSw4ICszMTEsMTEgQEAgc3Rh
dGljIGludCBfX2luaXQgZnNsX2d1dHNfaW5pdCh2b2lkKQo+ICAJa2ZyZWUoc29jX2Rldl9hdHRy
LT5yZXZpc2lvbik7Cj4gIAlrZnJlZShzb2NfZGV2X2F0dHItPnNlcmlhbF9udW1iZXIpOwo+ICAJ
a2ZyZWUoc29jX2Rldl9hdHRyKTsKCldpbGwgdGhpcyB0cmlnZ2VyIGEgTlVMTCBwb2ludGVyIGRl
cmVmZXJlbmNlPwoKV2hpbGUga2ZyZWUoKSBpdHNlbGYgaGFuZGxlcyBOVUxMIHBvaW50ZXJzIGdy
YWNlZnVsbHksIGV2YWx1YXRpbmcKc29jX2Rldl9hdHRyLT5yZXZpc2lvbiBhbmQgc29jX2Rldl9h
dHRyLT5zZXJpYWxfbnVtYmVyIHJlcXVpcmVzIHJlYWRpbmcKbWVtb3J5IGZyb20gdGhlIE5VTEwg
c29jX2Rldl9hdHRyIHBvaW50ZXIgYmVmb3JlIHBhc3NpbmcgdGhlIGFyZ3VtZW50IHRvCmtmcmVl
KCkuCgo+IC0JaW91bm1hcChzb2MuZGNmZ19jY3NyKTsKPiAtCXNvYy5kY2ZnX2Njc3IgPSBOVUxM
Owo+ICsJaWYgKHNvYy5kY2ZnX2Njc3IpIHsKPiArCQlpb3VubWFwKHNvYy5kY2ZnX2Njc3IpOwo+
ICsJCXNvYy5kY2ZnX2Njc3IgPSBOVUxMOwo+ICsJfQo+ICsJc29jLmRhdGEgPSBOVUxMOwo+ICAK
PiAgCXJldHVybiByZXQ7Cj4gIH0KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nh
c2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MjAxMzM2NDIuMTM2MzI0LTEtdmxhZGltaXIub2x0
ZWFuQG54cC5jb20/cGFydD01CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
