Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA301C98318
	for <linux-phy@archiver.kernel.org>; Thu, 24 Sep 2026 17:35:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NgjO44odMhVq1tlkaoefQTdru7a+TaZeS5/E8n3a890=; b=kMfzvmrlG2y7uV
	96mAONnt0I+tx0D/3+8qHYXSvBaxjuoVHTDa/brSSlSEyuAqKZGv87CpjB+9VRHgG/yawRJ8R0BMG
	AhUW3CCmn39tr4IpdIDtmZoTOSodpBD4dvIB/x6k+DaWk9TB1cC97quDT504are1XDU+z5VyyBJX7
	fWSRKTEl2aOMh30Kd1/bKPjunvd0nJjAfBjSAo8oWAwCKiJudY+oLeAY2cqe2A9/mEKeQrIzdpa9L
	CLmf9LK84RYQ5kxyM/DxioC7hnh/sX/rekWl5iUZgBaGd7XDXzrfBgLndBT3GOfzCxpXte1GFphm/
	17HHk5PVMZrTu47hVadg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9nMK-0000000Bn8i-13Lw;
	Thu, 24 Sep 2026 17:35:48 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9nM5-0000000Bmql-0pwq
	for linux-phy@lists.infradead.org;
	Thu, 24 Sep 2026 17:35:34 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4CCD9601FE;
	Thu, 24 Sep 2026 17:35:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B38DA1F000FF;
	Thu, 24 Sep 2026 17:35:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790271332;
	bh=dyFw/bu2vsApyc6WcyIe+ASu5c8RpTgnl2GUeTyTj+s=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kN/f2kzJ98qidVlg1uf93LcbpIFVmHfpKz3P9wfPzeivYBXEvCxZPC2xAmqO8RpkP
	 m0dBTblBFFJi1xE93jbD2JWGTyyYst6jX8eUj8AiutYskBV+fd1NtbyVzQT3/Jy7xc
	 ap+uNAeIba3T0aC9iWOzyH4WCFB9STljGjlMeyxjHYSpYzz8QU2WzyjMat3m24tYyr
	 1iz0yVIwtGEhkTLB2HxGbg3eByLJRSehrj7rm+VCmM6M87vxuvvIRdje+zltA1FDsw
	 JUiJrr4Lkf+apWgQZIFokLNwcYyJReg7jFfanrKZDjCoN+CA+mJF8Bch7x+Osch9/J
	 3lLFxXXmis6Mg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v16 1/6] phy: core: add notifier infrastructure
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: vkoul@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, neil.armstrong@linaro.org
In-Reply-To: <20260924-b4-rockchip-dwc3-rockchip-glue-v16-1-126a2e9133c3@collabora.com>
References: <20260924-b4-rockchip-dwc3-rockchip-glue-v16-0-126a2e9133c3@collabora.com>
 <20260924-b4-rockchip-dwc3-rockchip-glue-v16-1-126a2e9133c3@collabora.com>
Date: Thu, 24 Sep 2026 17:35:31 +0000
Message-Id: <20260924173531.B38DA1F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gcGh5OiBtaXNzaW5n
IHJvbGxiYWNrIG1lY2hhbmlzbSBvbiBQUkVfUkVTRVQgbm90aWZpY2F0aW9uIGZhaWx1cmUKLS0K
CmNvbW1pdCBiMmJkNmQxZTdiN2QwZDczZDMyMDc3NWZmM2U3ZGVlMDkyNzg3ZWJjCkF1dGhvcjog
U2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+CgpwaHk6
IGNvcmU6IGFkZCBub3RpZmllciBpbmZyYXN0cnVjdHVyZQoKVGhpcyBjb21taXQgaW50cm9kdWNl
cyBhIG5ldyBQSFkgbm90aWZpZXIgQVBJIHRoYXQgYWxsb3dzIGNvbnN1bWVyIGRyaXZlcnMKdG8g
aG9vayBpbnRvIHJlc2V0IGV2ZW50cyBmcm9tIGEgUEhZIGRldmljZS4gVGhpcyBoZWxwcyBncmFj
ZWZ1bGx5IGhhbmRsZQpjb25maWd1cmF0aW9uIG9yIGNhYmxlIG9yaWVudGF0aW9uIGNoYW5nZXMu
Cgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9waHktY29yZS5jIGIvZHJpdmVycy9waHkvcGh5
LWNvcmUuYwo+IGluZGV4IDIxYWFmMmY3NmU1M2UuLjUxZDI2MWRhYWU3YTkgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9waHkvcGh5LWNvcmUuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3BoeS1jb3JlLmMK
ClsgLi4uIF0KCj4gQEAgLTU0Miw2ICs1NDIsNzAgQEAgaW50IHBoeV9ub3RpZnlfc3RhdGUoc3Ry
dWN0IHBoeSAqcGh5LCB1bmlvbiBwaHlfbm90aWZ5IHN0YXRlKQoKWyAuLi4gXQoKPiAraW50IHBo
eV9ub3RpZnlfcmVzZXQoc3RydWN0IHBoeSAqcGh5LCBlbnVtIHBoeV9ub3RpZmljYXRpb24gZXZl
bnQpCj4gK3sKPiArCWludCByZXQ7Cj4gKwo+ICsJaWYgKCFwaHkpCj4gKwkJcmV0dXJuIDA7Cj4g
Kwo+ICsJcmV0ID0gYmxvY2tpbmdfbm90aWZpZXJfY2FsbF9jaGFpbigmcGh5LT5ub3RpZmllciwg
ZXZlbnQsIHBoeSk7Cj4gKwlyZXR1cm4gbm90aWZpZXJfdG9fZXJybm8ocmV0KTsKCltTZXZlcml0
eTogTWVkaXVtXQpXaGF0IGhhcHBlbnMgaWYgb25lIG9mIHRoZSBjb25zdW1lcnMgaW4gdGhlIG5v
dGlmaWVyIGNoYWluIHJldHVybnMgYW4gZXJyb3IKZHVyaW5nIGEgUEhZX05PVElGWV9QUkVfUkVT
RVQgZXZlbnQ/CgpJZiBhIFBIWSBoYXMgbXVsdGlwbGUgY29uc3VtZXJzIHJlZ2lzdGVyZWQgdG8g
aXRzIG5vdGlmaWVyIGNoYWluLCBhbmQgdGhlCmZpcnN0IGNvbnN1bWVyIHN1Y2Nlc3NmdWxseSBw
cm9jZXNzZXMgdGhlIFBSRV9SRVNFVCBldmVudCBidXQgYSBzdWJzZXF1ZW50CmNvbnN1bWVyIHJl
dHVybnMgYW4gZXJyb3IgKHN1Y2ggYXMgTk9USUZZX0JBRCksIHRoZSBub3RpZmljYXRpb24gY2hh
aW4gd2lsbAphYm9ydCBhbmQgdGhlIHByb3ZpZGVyIHdpbGwgcmVjZWl2ZSB0aGUgZXJyb3IuCgpU
aGlzIHN0b3BzIHRoZSBub3RpZmljYXRpb24gY2hhaW4gb24gdGhlIGZpcnN0IGVycm9yLCB3aGlj
aCBjb3VsZCBsZWF2ZSB0aGUKYWxyZWFkeS1ub3RpZmllZCBjb25zdW1lcnMgcGVybWFuZW50bHkg
c3RyYW5kZWQgaW4gYSBxdWllc2NlZCBzdGF0ZSBzaW5jZQp0aGUgcmVzZXQgaXMgYWJvcnRlZCB3
aXRob3V0IHNlbmRpbmcgYSBQT1NUX1JFU0VUIG9yIEFCT1JUX1JFU0VULgoKV291bGQgaXQgYmUg
c2FmZXIgdG8gdXNlIGJsb2NraW5nX25vdGlmaWVyX2NhbGxfY2hhaW5fcm9idXN0KCkgaGVyZQpp
bnN0ZWFkLCBhbmQgaW50cm9kdWNlIGEgUEhZX05PVElGWV9BQk9SVF9SRVNFVCBldmVudCB0byBh
bGxvdyBwcmV2aW91c2x5Cm5vdGlmaWVkIGNvbnN1bWVycyB0byByb2xsIGJhY2sgdGhlaXIgc3Rh
dGU/Cgo+ICt9Cj4gK0VYUE9SVF9TWU1CT0xfR1BMKHBoeV9ub3RpZnlfcmVzZXQpOwoKLS0gClNh
c2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDky
NC1iNC1yb2NrY2hpcC1kd2MzLXJvY2tjaGlwLWdsdWUtdjE2LTAtMTI2YTJlOTEzM2MzQGNvbGxh
Ym9yYS5jb20/cGFydD0xCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
