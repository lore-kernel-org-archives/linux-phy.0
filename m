Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E957EC88E45
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 15:44:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YFE3KSUf87J2MSrl3woKE9H6HZ2cg85XOm59Ykz+cuM=; b=GpRo4kzs4EddDf
	8oDnNOpXFbVZDtw5nXnV44WtAlI3HmA4Jng0cLfRli3pGr6kuu0dNyRQpVwQinZ3vaXmAOjP4aKqE
	1UuV7P5PwZZyg15Ip7ciHYUJUPMWLIfKcsto76FZrHOMzi7DK4XjPA333wg+n7NZSNBNaa5rOimBe
	ax7WRgjPX1wUt19kTPVJAUXKEpG4kxFh+N+wnUCmb2W5AKP7O/zmuxVNqv3fuNhIjqlOE+gICwhr7
	ofgwGgx6Y1xLK4k9QceTtk+kLeGKaj+uHM38xWWMgYrZcMq6cBzOUSBrGDdPQSAa7sQFI39YE0ZRq
	9dt4nOlVZ1XyAYENHHrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53Qf-0000000H7Uk-2kMO;
	Fri, 11 Sep 2026 15:44:41 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53Qe-0000000H7UO-4580
	for linux-phy@lists.infradead.org;
	Fri, 11 Sep 2026 15:44:41 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 569E260202;
	Fri, 11 Sep 2026 15:44:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E6801F000FF;
	Fri, 11 Sep 2026 15:44:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789141480;
	bh=auBFuP4M1oTbSDSlKFPaujKZbtuFWziwFPRp58Cg8ZA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=XQEn/dcrmZ3An+tqxMC8DqhuKY2jGKE9L5QoL6/jRDfqq+UTb6z6b9OV0W7eB0Tiv
	 7Zhk/QfoanUUzsgyMNOxUR+4/flvcUmTof4AEuoyTvC634m96TvR+++piqFCljSyp/
	 qH2xU0oq+wL6rMSBj+lvI8WlveZ5VajE7PQWdXBtOgPzpydIuunvmGxzx1G9pCFJbs
	 DjI6Q6GICcZWotONY90XCNhdvaKj30wGvC0m+MpZAv3UBfD4NfDmL/jt/gL4zmquJG
	 QRKNrfSuTnJ1Yb2P7GMiJIXE/DHLVAPLZT49aM2hNFhzusw1vioXC5HDpqD1bZdCtM
	 r3GUNdpq00gmg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 02/17] dt-bindings: display/msm: dp-controller: Document
 Nord DP
To: "Nabige Aala" <nabige.aala@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, robh@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org, conor+dt@kernel.org
In-Reply-To: <20260911-nord-drv-dt-v1-2-e25c073cf1b6@oss.qualcomm.com>
References: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
 <20260911-nord-drv-dt-v1-2-e25c073cf1b6@oss.qualcomm.com>
Date: Fri, 11 Sep 2026 15:44:39 +0000
Message-Id: <20260911154439.8E6801F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gSW5jb21wbGV0ZSBz
Y2hlbWEgdmFsaWRhdGlvbiBkdWUgdG8gbWlzc2luZyBjb21wYXRpYmxlIHN0cmluZyBpbiBjb25k
aXRpb25hbCBibG9ja3MKLS0KCmNvbW1pdCBmNzIxNjkzNmI0MTFlZDYzODM3MTYxODYzMGI5YmM5
Yjg1Mjg4OGU3CkF1dGhvcjogTWFoYWRldmFuIFAgPG1haGFkZXZhbi5wQG9zcy5xdWFsY29tbS5j
b20+CgpkdC1iaW5kaW5nczogZGlzcGxheS9tc206IGRwLWNvbnRyb2xsZXI6IERvY3VtZW50IE5v
cmQgRFAKClRoaXMgY29tbWl0IGFkZHMgdGhlIGNvbXBhdGlibGUgc3RyaW5nIGZvciB0aGUgRGlz
cGxheVBvcnQgY29udHJvbGxlciBmb3VuZApvbiB0aGUgUXVhbGNvbW0gTm9yZCBTb0MgdG8gdGhl
IGRldmljZSB0cmVlIGJpbmRpbmdzLgoKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvbXNtL2RwLWNvbnRyb2xsZXIueWFtbCBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L21zbS9kcC1jb250cm9sbGVyLnlhbWwK
PiBpbmRleCAwOTRhNjM4M2JiNzc5Li44ZDk4MGFjYjFhMTYzIDEwMDY0NAo+IC0tLSBhL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L21zbS9kcC1jb250cm9sbGVyLnlh
bWwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9tc20v
ZHAtY29udHJvbGxlci55YW1sCj4gQEAgLTE5LDYgKzE5LDcgQEAgcHJvcGVydGllczoKPiAgICAg
IG9uZU9mOgo+ICAgICAgICAtIGVudW06Cj4gICAgICAgICAgICAtIHFjb20sZ2x5bXVyLWRwCj4g
KyAgICAgICAgICAtIHFjb20sbm9yZC1kcAoKW1NldmVyaXR5OiBNZWRpdW1dCldpbGwgdGhpcyBv
bWlzc2lvbiBjYXVzZSBpbmNvbXBsZXRlIHNjaGVtYSB2YWxpZGF0aW9uPwoKV2hlbiBxY29tLG5v
cmQtZHAgaXMgZGVjbGFyZWQgaGVyZSBpbiBwcm9wZXJ0aWVzOmNvbXBhdGlibGUsIGl0IGZhbGxz
IGJhY2sgdG8KdGhlIHdlYWsgdG9wLWxldmVsIG1pbmltYWwgY29uc3RyYWludHMgYmVjYXVzZSBp
dCBpcyBlbnRpcmVseSBvbWl0dGVkIGZyb20gdGhlCnZhbGlkYXRpb24gbG9naWMgaW4gdGhlIGFs
bE9mIHNlY3Rpb24uCgpUaGUgYWxsT2YgYmxvY2sgZnVydGhlciBkb3duIHRoZSBmaWxlIGRlZmlu
ZXMgdGhlIGNvbmRpdGlvbmFsIGxvZ2ljIHRoYXQKc3RyaWN0bHkgdmFsaWRhdGVzIHRoZSByZWdp
c3RlciBhbmQgY2xvY2sgbGF5b3V0cy4gU2hvdWxkbid0IHFjb20sbm9yZC1kcCBiZQpjYXRlZ29y
aXplZCBpbnRvIG9uZSBvZiB0aGVzZSBoYXJkd2FyZSBjYXBhYmlsaXR5IGJsb2NrcyB0byBlbmZv
cmNlIGNvcnJlY3QKY29uc3RyYWludHMgZHVyaW5nIGR0X2JpbmRpbmdfY2hlY2s/IFdpdGhvdXQg
aXQsIGluY29ycmVjdCBkZXZpY2UgdHJlZQpjb25maWd1cmF0aW9ucyBsaWtlIGluY29ycmVjdCBy
ZWdpc3RlciBvciBjbG9jayBjb3VudHMgY291bGQgc2lsZW50bHkgcGFzcwp2YWxpZGF0aW9uLgoK
PiAgICAgICAgICAgIC0gcWNvbSxzYTg3NzVwLWRwCj4gICAgICAgICAgICAtIHFjb20sc2M3MTgw
LWRwCj4gICAgICAgICAgICAtIHFjb20sc2M3MjgwLWRwCgotLSAKU2FzaGlrbyBBSSByZXZpZXcg
wrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwOTExLW5vcmQtZHJ2LWR0LXYx
LTAtZTI1YzA3M2NmMWI2QG9zcy5xdWFsY29tbS5jb20/cGFydD0yCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
