Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D7F4C742A7
	for <linux-phy@archiver.kernel.org>; Tue,  7 Mar 2023 21:49:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=35vLNr05T7MUB9JhPY0q/HqVTfZlTL693YGsbdcTOsM=; b=q0JLrA5EcSiY0a
	ZDFWGLrBDLi40t3y6qXdx1m+37nXEwZ19d1R2LPar3aLgRi4IIRf0+9nJBiePtJtmQ86lKCg15XRY
	gJe8U+MC0AvQE9nAgZm9qMAnI4rVz2T/DRXSI+UvMVvFG51YbH9+mPs2aVTQsic/jvXcjFetjgD4h
	e0095UrWKgHlehihYH04avAhXJpa/xk2UzGHFoJeEVRiwDgboltwhHjAend80uDnTAgpQZskLGPDf
	xPiIwmy7vRcIKrk5R3r+CFM0L3Yzin3Iozg3cCfND+/u/e2s+nVeBTa1pudhHOpFd9tbc74Udp/ZF
	sk1rREA3LjRWvkg8mL1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZfBL-002XZe-KN; Tue, 07 Mar 2023 21:49:15 +0000
Received: from vmi888983.contaboserver.net ([149.102.157.145] helo=amity.mint.lgbt)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZfBI-002XYI-Uu
	for linux-phy@lists.infradead.org; Tue, 07 Mar 2023 21:49:14 +0000
Received: from amity.mint.lgbt (mx.mint.lgbt [127.0.0.1])
	by amity.mint.lgbt (Postfix) with ESMTP id 4PWTbs0lBHz1S5Jm
	for <linux-phy@lists.infradead.org>; Tue,  7 Mar 2023 16:48:56 -0500 (EST)
Authentication-Results: amity.mint.lgbt (amavisd-new);
	dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
	header.d=mint.lgbt
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mint.lgbt; h=
	content-transfer-encoding:content-type:in-reply-to:from
	:references:to:content-language:subject:user-agent:mime-version
	:date:message-id; s=dkim; t=1678225735; x=1679089736; bh=LBDNRan
	2Cd8nNBtnj8IHxtHFO6mc9pcFTMtM8qGwz6s=; b=X2z9Dsayhu4KWlNcB7whmXg
	zKTUxyqY5o8Wv3jPrV1MVZPidmzBNHjcw6ieAS+0Jp+mFTMSXmQru2rnjvPal3F/
	zQ/l0txh/kZBvWXTlED2861cz5kQj62mGQdXSH6hEKIfg98h1tHdX9X6KUQ+oSgR
	Ksf1eG1t2y9rQ6fa0Q+XXLs8I//ScK/VBoT1qceeBg7U19KegpGz8qUH3bHOj+fx
	/ytN7tiukSQ2mSKfASvDSbRQeBW5gV7zgboi8+JfqZBj+c4CRmc/3EuQOT2uyydy
	gSjv+Sk7V3CHEscktNAtyBUk/8WNx0YWMXQfodu1B7+6Vcw//pIuvS8UwumnhEQ=
	=
X-Virus-Scanned: amavisd-new at amity.mint.lgbt
Received: from amity.mint.lgbt ([127.0.0.1])
	by amity.mint.lgbt (amity.mint.lgbt [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id ZDADbjl1gLlJ for <linux-phy@lists.infradead.org>;
	Tue,  7 Mar 2023 16:48:55 -0500 (EST)
Received: from [192.168.1.90] (unknown [186.105.8.42])
	by amity.mint.lgbt (Postfix) with ESMTPSA id 4PWTbS4Kjkz1S4yx;
	Tue,  7 Mar 2023 16:48:35 -0500 (EST)
Message-ID: <18156dee-4fd2-80e5-b04d-c96c267fb615@mint.lgbt>
Date: Tue, 7 Mar 2023 18:48:30 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v7 1/6] dt-bindings: ufs: qcom: Add SM6125 compatible
 string
Content-Language: en-US, es-CL
To: Konrad Dybcio <konrad.dybcio@linaro.org>, agross@kernel.org,
 andersson@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 vkoul@kernel.org, kishon@kernel.org, alim.akhtar@samsung.com,
 avri.altman@wdc.com, bvanassche@acm.org, keescook@chromium.org,
 tony.luck@intel.com, gpiccoli@igalia.com
Cc: ~postmarketos/upstreaming@lists.sr.ht, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
 linux-hardening@vger.kernel.org, phone-devel@vger.kernel.org,
 martin.botka@somainline.org, marijn.suijten@somainline.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20230306165246.14782-1-they@mint.lgbt>
 <20230306165246.14782-2-they@mint.lgbt>
 <4670ddae-6b01-1e5c-b0ed-1f2f498a4f66@mint.lgbt>
 <dfd1d81e-76a0-f8eb-e529-9f8ea1e927b6@linaro.org>
From: Lux Aliaga <they@mint.lgbt>
In-Reply-To: <dfd1d81e-76a0-f8eb-e529-9f8ea1e927b6@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_134913_179341_3CF45A90 
X-CRM114-Status: UNSURE (   8.36  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMy82LzIwMjMgMTQ6MDksIEtvbnJhZCBEeWJjaW8gd3JvdGU6Cgo+Cj4gT24gNi4wMy4yMDIz
IDE4OjAxLCBMdXggQWxpYWdhIHdyb3RlOgo+PiBPbiAwNi8wMy8yMDIzIDEzOjUyLCBMdXggQWxp
YWdhIHdyb3RlOgo+Pj4gRG9jdW1lbnQgdGhlIGNvbXBhdGlibGUgZm9yIFVGUyBmb3VuZCBvbiB0
aGUgU002MTI1Lgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IEx1eCBBbGlhZ2EgPHRoZXlAbWludC5s
Z2J0Pgo+Pj4gUmV2aWV3ZWQtYnk6IE1hcnRpbiBCb3RrYSA8bWFydGluLmJvdGthQHNvbWFpbmxp
bmUub3JnPgo+Pj4gQWNrZWQtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3ps
b3dza2lAbGluYXJvLm9yZz4KPj4+IC0tLQo+Pj4gIMKgIERvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy91ZnMvcWNvbSx1ZnMueWFtbCB8IDIgKysKPj4+ICDCoCAxIGZpbGUgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy91ZnMvcWNvbSx1ZnMueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy91ZnMvcWNvbSx1ZnMueWFtbAo+Pj4gaW5kZXggYjUxN2Q3NjIxNWUzLi40
MjQyMmYzNDcxYjMgMTAwNjQ0Cj4+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvdWZzL3Fjb20sdWZzLnlhbWwKPj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy91ZnMvcWNvbSx1ZnMueWFtbAo+Pj4gQEAgLTI5LDYgKzI5LDcgQEAgcHJvcGVy
dGllczoKPj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gcWNvbSxzYzgyODB4cC11ZnNoYwo+
Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBxY29tLHNkbTg0NS11ZnNoYwo+Pj4gIMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgLSBxY29tLHNtNjExNS11ZnNoYwo+Pj4gK8KgwqDCoMKgwqDCoMKg
wqDCoCAtIHFjb20sc202MTI1LXVmc2hjCj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIHFj
b20sc202MzUwLXVmc2hjCj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIHFjb20sc204MTUw
LXVmc2hjCj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIHFjb20sc204MjUwLXVmc2hjCj4+
PiBAQCAtMTg1LDYgKzE4Niw3IEBAIGFsbE9mOgo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
Y29udGFpbnM6Cj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZW51bToKPj4+ICDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBxY29tLHNtNjExNS11ZnNoYwo+Pj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gcWNvbSxzbTYxMjUtdWZzaGMKPj4+ICDCoMKgwqDCoMKg
IHRoZW46Cj4+PiAgwqDCoMKgwqDCoMKgwqAgcHJvcGVydGllczoKPj4+ICDCoMKgwqDCoMKgwqDC
oMKgwqAgY2xvY2tzOgo+PiBJIGhhdmUgdG8gYXBvbG9naXplLiBJIHdvcmtlZCBvbiBhIGNoYW5n
ZWxvZyBmb3IgdGhpcyBwYXRjaHNldCBidXQgSSBza2lwcGVkIHRoZSBzdWJqZWN0IGhlYWRlciwg
dGhlcmVmb3JlIGl0IGRpZG4ndCBzZW5kLCBhbmQgYXMgSSByZWFsaXplZCB0aGlzIEkgaW50ZXJy
dXB0ZWQgdGhlIHByb2Nlc3MsIGxlYXZpbmcgdGhlIHBhdGNoc2V0IGluY29tcGxldGUuIEknbGwg
cmV0cnkgc2VuZGluZyBpdCwgdGhpcyB0aW1lIGNvcnJlY3RseS4KPiBIYXBwZW5zLCBuZXh0IHRp
bWUgcmVzZW5kIGl0IHdpdGggYSBSRVNFTkQgcHJlZml4LCBlLmcuIFtSRVNFTkQgUEFUQ0ggMS8y
XQo+Cj4gS29ucmFkCgpUaGFuayB5b3UhIFdpbGwgdGFrZSB0aGlzIGludG8gY29uc2lkZXJhdGlv
biBmb3IgdGhlIGZ1dHVyZS4gSSByZWNlaXZlZCAKdGhpcyBlbWFpbCBhZnRlciBJIHJlc2VudCB0
aGUgcGF0Y2hzZXQsIHNvIHRoYXQncyB3aHkgSSBkaWRuJ3QgYWRkIHRoZSAKcHJlZml4LgoKLS0g
Ckx1eCBBbGlhZ2EKaHR0cHM6Ly9uaXhnb2F0Lm1lLwoKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
