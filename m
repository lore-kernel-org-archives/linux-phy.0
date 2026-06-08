Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6E95CD8C8E
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 08:56:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y6qgo9fHXA7mHjYCec7JsY45IYnZH+xQsE3NOs+TPW8=; b=cHOm1RK7pI/RdN
	OiSVADMj9ZCEy7SDhL/2eCHrhOj4hP/az06wKWS83DotnF0lE7HSTyo2gnGH4nd/Y4tF9dM+UZcn8
	dEhhKJ3xKhvPGNaxddmbw7TSsb2scdhL0WA971AE1AZuGiMTrw0sSa6MQ5IdEUR7Lt5J/EkAE4NfK
	D1mSEu9jVJLT2cOxLuj+UkgZ2BAhK3jjYOgWfyw4SWb0Jv6EKXxB+e+c7WOTYIH+qbehLEs96mqaD
	jU6gn3DQAfuDYLBrSWVL/XB46zXg4KUj7y0rmB/Yj6ERaGB0158Y0jI/e8u4EenUzOmPBlBSyHM69
	uROee/TJdsbHozc25K8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWVmo-000000037t2-1dhb;
	Mon, 08 Jun 2026 08:56:46 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWVmn-000000037sn-22rK
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 08:56:45 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C357C6001D;
	Mon,  8 Jun 2026 08:56:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 091731F00893;
	Mon,  8 Jun 2026 08:56:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780909004;
	bh=sxSE2l6KAAkyWscMU0lKK/VyINcG1PV/kDm4olgmCPQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=UD44aQBgvuQ7ydJ3q/NMP44zOp6fqdqS1JXELYVlyflEr0U8GrhIs2yLlOahVDYOu
	 EadvKYzuswMa01hqZGD7zaFRoo01JWr+ozPRQu2t9iP2ZiUfIfOupzoAN3VH7aHlah
	 Wox+nw4ilCSggTUaGwioTwjdGDaU9MYS1h7V3NUs2yUKNCzyXa4bRFCrEWmLoIjhUq
	 gQ2x52S4wLmnpfygMuHM7utYY1EPWBm5sChmME6LW1gZHA7rPF/aFuIGR/VL6YQa6/
	 cRVyxsCrOQyMVLF8ijEmYrV593szwidtb5hTFkElJ6celnvtKwmUJTw6CHbCQXzFvd
	 qNv4h4UholpIw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/3] dt-bindings: PCI: qcom,pcie-sm8550: Add Eliza
 compatible
To: "Krishna Chaitanya Chundru" <krishna.chundru@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, olteanv@gmail.com, vkoul@kernel.org, neil.armstrong@linaro.org, linux-pci@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260608-eliza-v3-2-9bdeb7434b28@oss.qualcomm.com>
References: <20260608-eliza-v3-2-9bdeb7434b28@oss.qualcomm.com>
Date: Mon, 08 Jun 2026 08:56:43 +0000
Message-Id: <20260608085644.091731F00893@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIHNjaGVtYSB1c2Vz
IGZvdXIgc2VwYXJhdGUgYGlmYCBjb25kaXRpb25hbCBibG9ja3MgdG8gYXBwbHkgY29uc3RyYWlu
dHMgZm9yIHRoZSBleGFjdCBzYW1lIGBxY29tLGVsaXphLXBjaWVgIGNvbXBhdGlibGUgc3RyaW5n
LCBpbnN0ZWFkIG9mIGNvbnNvbGlkYXRpbmcgdGhlbSBpbnRvIGEgc2luZ2xlIGJsb2NrLgotLQoK
Y29tbWl0IDRhOGFmMmY2ZDk4YjkxOGQ3YjQ4MDYwYWM3MDM0MjQ5MmI3YWJiMjcKQXV0aG9yOiBL
cmlzaG5hIENoYWl0YW55YSBDaHVuZHJ1IDxrcmlzaG5hLmNodW5kcnVAb3NzLnF1YWxjb21tLmNv
bT4KCmR0LWJpbmRpbmdzOiBQQ0k6IHFjb20scGNpZS1zbTg1NTA6IEFkZCBFbGl6YSBjb21wYXRp
YmxlCgpUaGlzIGNvbW1pdCBhZGRzIHRoZSBxY29tLGVsaXphLXBjaWUgY29tcGF0aWJsZSBzdHJp
bmcgdG8gdGhlIFNNODU1MCBQQ0llCmJpbmRpbmdzLiBJdCBpbnRyb2R1Y2VzIHNwZWNpZmljIHBy
b3BlcnR5IGNvbnN0cmFpbnRzIGZvciB0aGUgRWxpemEgU29DLApkZWZpbmluZyB0aGUgcmVxdWly
ZWQgbnVtYmVyIG9mIHJlZ2lzdGVycywgY2xvY2tzLCBpbnRlcnJ1cHRzLCBhbmQgcmVzZXRzLgoK
PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9xY29t
LHBjaWUtc204NTUwLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNp
L3Fjb20scGNpZS1zbTg1NTAueWFtbAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9wY2kvcWNvbSxwY2llLXNtODU1MC55YW1sCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9xY29tLHBjaWUtc204NTUwLnlhbWwKWyAuLi4gXQo+IEBA
IC05MSw2ICs5Miw1NSBAQCByZXF1aXJlZDoKPiAgCj4gIGFsbE9mOgo+ICAgIC0gJHJlZjogcWNv
bSxwY2llLWNvbW1vbi55YW1sIwo+ICsgIC0gaWY6Cj4gKyAgICAgIHByb3BlcnRpZXM6Cj4gKyAg
ICAgICAgY29tcGF0aWJsZToKPiArICAgICAgICAgIGNvbnRhaW5zOgo+ICsgICAgICAgICAgICBj
b25zdDogcWNvbSxlbGl6YS1wY2llCj4gKyAgICB0aGVuOgo+ICsgICAgICBwcm9wZXJ0aWVzOgo+
ICsgICAgICAgIHJlZzoKPiArICAgICAgICAgIG1pbkl0ZW1zOiA2Cj4gKyAgICAgICAgcmVnLW5h
bWVzOgo+ICsgICAgICAgICAgbWluSXRlbXM6IDYKPiArCj4gKyAgLSBpZjoKPiArICAgICAgcHJv
cGVydGllczoKPiArICAgICAgICBjb21wYXRpYmxlOgo+ICsgICAgICAgICAgY29udGFpbnM6Cj4g
KyAgICAgICAgICAgIGNvbnN0OiBxY29tLGVsaXphLXBjaWUKCltTZXZlcml0eTogTG93XQpJcyB0
aGVyZSBhIHJlYXNvbiB0byB1c2UgZm91ciBzZXBhcmF0ZSBjb25kaXRpb25hbCBibG9ja3MgZm9y
IHRoZSBleGFjdCBzYW1lCmNvbXBhdGlibGUgc3RyaW5nPyBDb3VsZCB0aGUgcHJvcGVydGllcyBm
b3IgcmVnLCBjbG9ja3MsIGludGVycnVwdHMsIGFuZApyZXNldHMgYmUgY29uc29saWRhdGVkIHVu
ZGVyIHRoZSB0aGVuIGNsYXVzZSBvZiBhIHNpbmdsZSBpZiBibG9jayB0byByZWR1Y2UKdmVyYm9z
aXR5IGFuZCBzY2hlbWEgY29tcGxleGl0eT8KCj4gKyAgICB0aGVuOgo+ICsgICAgICBwcm9wZXJ0
aWVzOgo+ICsgICAgICAgIGNsb2NrczoKPiArICAgICAgICAgIG1pbkl0ZW1zOiA4Cj4gKyAgICAg
ICAgICBtYXhJdGVtczogOApbIC4uLiBdCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6
Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNjA4LWVsaXphLXYzLTAtOWJkZWI3NDM0YjI4
QG9zcy5xdWFsY29tbS5jb20/cGFydD0yCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
