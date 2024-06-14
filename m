Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75F8DC27C6E
	for <linux-phy@archiver.kernel.org>; Fri, 14 Jun 2024 15:50:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1SZZ/OWHiFIWnN+oYvWWPvWSvXDoc+PqOmYrp+62X+k=; b=IuUVimwZ1qpQjn
	e3C2w7JKp65tajjgwxwK7c4w7+3rmu7Z0hbuuvj0WdGZ+4HSybn6SGrhXcxi28m5qvhSpY1ZSPwCU
	xE3wrGEOT8PsclFbBNEBib3MRzRNtBi/opB3dRm372TuDJemBeo0CA3WtEFFgIy+bgTzVrT0T/z5y
	gPv3KROhNvhyjF2gLSPwGea5Xu09u8bj5Io1TpNDCqMtO6h63fP8NtPNF9j1FZJup5/6vvbW8xSSn
	2f4WVDQy+JK87bUmJ/bAPrLjRh5owDNsT9tXQ8jocxdXM8KCAnAMaKiCZL+tDab6OSahcf64tcnha
	jgJmmTMdeq3FJYK0R4TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI9Bn-00000003J0T-0EVH;
	Fri, 14 Jun 2024 15:50:07 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI9Bk-00000003Iyi-0Qdl
	for linux-phy@lists.infradead.org;
	Fri, 14 Jun 2024 15:50:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id D9DCECE2BAD;
	Fri, 14 Jun 2024 15:50:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9D4CC2BD10;
	Fri, 14 Jun 2024 15:49:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718380201;
	bh=YJ+EFdoyuOpNEW4FtSMDEZLjKlxpUCgBoyg6TuEMSHc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Jps9P6/ICpMRqAWPhUlWkOO49LcPbD7VCq+JNHkiMo2wRxg2gN8ZVlV1fYM4VLjUm
	 ihZCga9heUXbARC41hrlm0DOvYOqbyztYONbBtQUrsKoRP0Su5LHxf+eoeS6suJLd1
	 HpLw1WlBgKt5WLECAhdVxnhaJUsuamxdLQQcoWsYC5q+PFDzk1OnId5eZIEA2IJkk+
	 It0UJqrbq1oR6TW71hq/3HjrW7zUDtjk48I77Csaed13ClQoT3VIMupDXLwiFv8Gmy
	 +kRLxWCnMM0T9k4o3/n1nwqWd4oJOUwUDy0Z4G8ShQRIotqrxOwt84sj+Os3A5tZeM
	 XQdj1lRBrA4kw==
Date: Fri, 14 Jun 2024 21:19:47 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 0/2] phy: qcom: qmp-pcie: drop second
 clock-output-names entry
Message-ID: <20240614154947.GC59574@thinkpad>
References: <20240614-fix-pcie-phy-compat-v2-0-990863ea53bf@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240614-fix-pcie-phy-compat-v2-0-990863ea53bf@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240614_085004_365072_B6310D96 
X-CRM114-Status: GOOD (  16.77  )
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

T24gRnJpLCBKdW4gMTQsIDIwMjQgYXQgMTE6MzU6MzNBTSArMDMwMCwgRG1pdHJ5IEJhcnlzaGtv
diB3cm90ZToKPiBXaGlsZSB0ZXN0aW5nIHRoZSBsaW51eC1uZXh0IG9uIFNNODQ1MC1IREsgSSBu
b3RpY2VkIHRoYXQgb25lIG9mIHRoZQo+IFBDSWUgaG9zdHMgc3RheXMgaW4gdGhlIGRlZmVycmVk
IHN0YXRlLCBiZWNhdXNlIHRoZSBjb3JyZXNwb25kaW5nIFBIWQo+IGlzbid0IHByb2JlZC4gQSBx
dWljayBkZWJ1ZyBwb2ludGVkIG91dCB0aGF0IHdoaWxlIHRoZSBwYXRjaGVzIHRoYXQKPiBhZGRl
ZCBzdXBwb3J0IGZvciB0aGUgUElQRSBBVVggY2xvY2sgdG8gdGhlIFBIWSBkcml2ZXIgaGF2ZSBs
YW5kZWQsCj4gY29ycmVzcG9uZGluZyBEVCBjaGFuZ2VzIHdlcmUgbm90IHBpY2tlZCB1cCBmb3Ig
Ni4xMC4gUmVzdG9yZSB0aGUKPiBjb21wYXRpYmlsaXR5IHdpdGggdGhlIGV4aXN0aW5nIERUIGZp
bGVzIGJ5IGRyb3BwaW5nIHRoZSBzZWNvbmQgZW50cnkgaW4KPiB0aGUgY2xvY2stb3V0cHV0LW5h
bWVzIGFycmF5IGFuZCBhbHdheXMgZ2VuZXJhdGluZyB0aGUgY29ycmVzcG9uZGluZwo+IG5hbWUg
b24gdGhlIGZseS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBEbWl0cnkgQmFyeXNoa292IDxkbWl0cnku
YmFyeXNoa292QGxpbmFyby5vcmc+CgpBY2tlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxt
YW5pdmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9yZz4KVGVzdGVkLWJ5OiBNYW5pdmFubmFuIFNh
ZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBsaW5hcm8ub3JnPgoKLSBNYW5pCgo+IC0t
LQo+IENoYW5nZXMgaW4gdjI6Cj4gLSBGaXhlZCBnZW5lcmF0ZWQgQVVYIGNsb2NrIG5hbWUgKE5l
aWwpCj4gLSBMaW5rIHRvIHYxOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjQwNTIxLWZp
eC1wY2llLXBoeS1jb21wYXQtdjEtMC04YWE0MTViOTIzMDhAbGluYXJvLm9yZwo+IAo+IC0tLQo+
IERtaXRyeSBCYXJ5c2hrb3YgKDIpOgo+ICAgICAgIHBoeTogcWNvbTogcW1wLXBjaWU6IHJlc3Rv
cmUgY29tcGF0aWJpbGl0eSB3aXRoIGV4aXN0aW5nIERUcwo+ICAgICAgIGR0LWJpbmRpbmdzOiBw
aHk6IHFjb20sc2M4MjgweHAtcW1wLXBjaWUtcGh5OiBkcm9wIHNlY29uZCBvdXRwdXQgY2xvY2sg
bmFtZQo+IAo+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxzYzgyODB4cC1xbXAt
cGNpZS1waHkueWFtbCAgICAgIHwgNyArLS0tLS0tCj4gIGRyaXZlcnMvcGh5L3F1YWxjb21tL3Bo
eS1xY29tLXFtcC1wY2llLmMgICAgICAgICAgICAgICAgICAgICAgICAgfCA5ICsrKy0tLS0tLQo+
ICAyIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCj4gLS0t
Cj4gYmFzZS1jb21taXQ6IDY5MDZhODRjNDgyZjA5OGQzMTQ4NmRmOGRjOThjZWFkMjFjY2UyZDAK
PiBjaGFuZ2UtaWQ6IDIwMjQwNTIxLWZpeC1wY2llLXBoeS1jb21wYXQtYjBmZDRlYjQ2YmRhCj4g
Cj4gQmVzdCByZWdhcmRzLAo+IC0tIAo+IERtaXRyeSBCYXJ5c2hrb3YgPGRtaXRyeS5iYXJ5c2hr
b3ZAbGluYXJvLm9yZz4KPiAKPiAKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a
4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
