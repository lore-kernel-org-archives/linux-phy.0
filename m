Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E32DD606A326
	for <linux-phy@archiver.kernel.org>; Fri,  6 Nov 2026 08:42:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=kM/2CExn;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=P7HIr/wh
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=xmmXu70v2udwlUFT03vDcQdsSFthbMWeLSZgSKicnDw=; b=kM/2CExnBgSxxvzy6+AYO5iAXv
	nIeKhjCRpne2ZrnZxVdZr5PFde+Va2P+tmpTh05LAg5IAlemhMd9boPW1wx74QbnCFkmEKs7D46fm
	HOu9b6fcXw/vs1SEk+UpyETmx5pjcg1eLgv4iIuelk8xtYK0ekrEyCtQkKeDHU45t4cKiIS4xJi4c
	Y8hFqlcGFMaRgYucbx2oi8pXvlG84y1ydOGizWzV3kojjoKmkcvYwjRCOEHHQiR0zmlHeCDdl/nvZ
	vTRMeKH29DRUsO/iqJ75ZiMYhd9EhsufuD0uK6o6j/eQaxR6ZDTmyn55GUcbwL1jbP1T4zHvVxfrW
	JtXx9vTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPFWZ-0000000BcIc-2AQl;
	Fri, 06 Nov 2026 08:42:15 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPFWX-0000000BcIS-2jAI
	for linux-phy@lists.infradead.org;
	Fri, 06 Nov 2026 08:42:13 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 2226541180;
	Fri,  6 Nov 2026 08:42:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE3AF1F0089F;
	Fri,  6 Nov 2026 08:42:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793954533;
	bh=6JO7EuZJqgUEiDZIBVqCmOBuiWOdG0pE4S2kj1JEnWA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=P7HIr/whpW/iyscMmyGglcvzdoFYrk5IN4gNOEq4AG8jsr4qtY6DWO9el2ZIOVILK
	 XaMEdyZHjS0sWNynOVAfLb979IMlz3eFVNXY9yFzzKbxVxkmRcLTRMrowSVXjPeWSs
	 vVeEyO6kZGI9MNR6KHZU9ZHNFB2cGZeCLLynxDjAy3EqtAGynPTnt8/r/YSVp6++U3
	 0lHb/lXs8YC4nSi8xUP+TrWAmydRJDYV6oVHT2JZxptwO04Nd86N6L4ehjghiy+UgE
	 2bZ3k1UdGrysXJL1JuvlIB89hu/kK12MSZKe7Z4JGgwNsdiV2Ap/yrJ646Nr+e0dOg
	 4CarDhiWojUzw==
Message-ID: <sashiko-outbox-201083@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/3] phy: qcom-qmp-usb-ss: add shared SS-link-state
 submode contract
To: "Tapas Rana" <tapas.rana@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, linux-usb@vger.kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261106082716.128968-2-tapas.rana@oss.qualcomm.com>
References: <20261106082716.128968-1-tapas.rana@oss.qualcomm.com>
 <20261106082716.128968-2-tapas.rana@oss.qualcomm.com>
Date: Fri, 06 Nov 2026 08:42:12 +0000
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: sashiko-reviews@lists.linux.dev
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW0xvd10gcGh5OiBxY29tLXFtcC11c2It
c3M6IHJlZHVuZGFudCBzdWJtb2RlIGVudW0gZHVwbGljYXRpbmcgZW51bQogIHBoeV9tb2RlCi0t
Cgpjb21taXQgMmYxMDg3NTk2MTk2MDM4MTU2NTNhZjk1ODRlZWExMGNmYTc1ZWZhYgpBdXRob3I6
IFRhcGFzIFJhbmEgPHRhcGFzLnJhbmFAb3NzLnF1YWxjb21tLmNvbT4KCnBoeTogcWNvbS1xbXAt
dXNiLXNzOiBhZGQgc2hhcmVkIFNTLWxpbmstc3RhdGUgc3VibW9kZSBjb250cmFjdAoKVGhpcyBj
b21taXQgYWRkcyBpbmNsdWRlL2xpbnV4L3BoeS9waHktcWNvbS1xbXAtdXNiLXNzLmggd2l0aCBl
bnVtCnFjb21fdXNiX3NzX3N0YXRlIHRvIHBhc3MgU3VwZXJTcGVlZCBsaW5rIHByZXNlbmNlIHZp
YSB0aGUgc3VibW9kZQphcmd1bWVudCBvZiBwaHlfc2V0X21vZGVfZXh0KCkuCgo+IGRpZmYgLS1n
aXQgYS9pbmNsdWRlL2xpbnV4L3BoeS9waHktcWNvbS1xbXAtdXNiLXNzLmggYi9pbmNsdWRlL2xp
bnV4L3BoeS9waHktcWNvbS1xbXAtdXNiLXNzLmgKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGlu
ZGV4IDAwMDAwMDAwMDAwMDAuLjRkYTRkNzFlOTc3ZDcKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIv
aW5jbHVkZS9saW51eC9waHkvcGh5LXFjb20tcW1wLXVzYi1zcy5oCj4gQEAgLTAsMCArMSwxNyBA
QAo+ICsvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMCAqLwo+ICsvKgo+ICsgKiBT
aGFyZWQgc3VibW9kZSBjb250cmFjdCBiZXR3ZWVuIGR3YzMtcWNvbSBnbHVlIGFuZCB0aGUgUXVh
bGNvbW0gUU1QCj4gKyAqIFVTQjMvY29tYm8gUEhZIGRyaXZlciBmb3IgY29tbXVuaWNhdGluZyBs
aXZlIFN1cGVyU3BlZWQgbGluayBwcmVzZW5jZQo+ICsgKiBhdCBzdXNwZW5kLWVudHJ5LCB2aWEg
cGh5X3NldF9tb2RlX2V4dCgpJ3Mgc3VibW9kZSBhcmd1bWVudC4KPiArICovCj4gKwo+ICsjaWZu
ZGVmIF9QSFlfUUNPTV9RTVBfVVNCX1NTX0hfCj4gKyNkZWZpbmUgX1BIWV9RQ09NX1FNUF9VU0Jf
U1NfSF8KPiArCj4gK2VudW0gcWNvbV91c2Jfc3Nfc3RhdGUgewo+ICsJUUNPTV9VU0JfU1NfVU5L
Tk9XTiA9IDAsCj4gKwlRQ09NX1VTQl9TU19QUkVTRU5ULAo+ICsJUUNPTV9VU0JfU1NfQUJTRU5U
LAo+ICt9Owo+ICsKPiArI2VuZGlmIC8qIF9QSFlfUUNPTV9RTVBfVVNCX1NTX0hfICovCgpbU2V2
ZXJpdHk6IExvd10KSXMgYSBuZXcgdmVuZG9yLXNwZWNpZmljIHN1Ym1vZGUgaGVhZGVyIG5lZWRl
ZCB3aGVuIGVudW0gcGh5X21vZGUgaW4KaW5jbHVkZS9saW51eC9waHkvcGh5LmggYWxyZWFkeSBk
ZWZpbmVzIFBIWV9NT0RFX1VTQl9IT1NUX1NTIGFuZApQSFlfTU9ERV9VU0JfREVWSUNFX1NTIGZv
ciB0aGlzIHB1cnBvc2U/CgpUaGUgUXVhbGNvbW0gUU1QIFBIWSBkcml2ZXJzIChpbmNsdWRpbmcg
cGh5LXFjb20tcW1wLWNvbWJvLmMgYW5kCnBoeS1xY29tLXFtcC11c2IuYykgYWxyZWFkeSBjaGVj
ayBmb3IgUEhZX01PREVfVVNCX0hPU1RfU1MgYW5kClBIWV9NT0RFX1VTQl9ERVZJQ0VfU1MgdG8g
c2VsZWN0IHRoZSBhdXRvbm9tb3VzLW1vZGUgd2FrZSBpbnRlcnJ1cHQgbWFzazoKCmRyaXZlcnMv
cGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1jb21iby5jOnFtcF9jb21ib19lbmFibGVfYXV0b25v
bW91c19tb2RlKCkgewoJLi4uCglpZiAocW1wLT5waHlfbW9kZSA9PSBQSFlfTU9ERV9VU0JfSE9T
VF9TUyB8fAoJICAgIHFtcC0+cGh5X21vZGUgPT0gUEhZX01PREVfVVNCX0RFVklDRV9TUykKCQlp
bnRyX21hc2sgPSBBUkNWUl9EVENUX0VOIHwgQUxGUFNfRFRDVF9FTjsKCWVsc2UKCQlpbnRyX21h
c2sgPSBBUkNWUl9EVENUX0VOIHwgQVJDVlJfRFRDVF9FVkVOVF9TRUw7CgkuLi4KfQoKUGFzc2lu
ZyBQSFlfTU9ERV9VU0JfSE9TVF9TUyBvciBQSFlfTU9ERV9VU0JfREVWSUNFX1NTIHdoZW4gYSBT
dXBlclNwZWVkCmxpbmsgaXMgcHJlc2VudCBhbmQgdGhlIGJhc2UgUEhZX01PREVfVVNCX0hPU1Qg
b3IgUEhZX01PREVfVVNCX0RFVklDRQptb2RlIHdoZW4gaXQgaXMgYWJzZW50IChvciB1bmtub3du
KSB3b3VsZCBhdm9pZCBpbnRyb2R1Y2luZyBhIGR1cGxpY2F0ZQpRdWFsY29tbS1zcGVjaWZpYyBz
dWJtb2RlIGNvbnRyYWN0IHVuZGVyIGluY2x1ZGUvbGludXgvcGh5LyBhbmQga2VlcCBhbGwKUU1Q
IFVTQiBQSFkgZHJpdmVycyBjb25zaXN0ZW50LgoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0
dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MTEwNjA4MjcxNi4xMjg5NjgtMS10YXBh
cy5yYW5hQG9zcy5xdWFsY29tbS5jb20/cGFydD0xCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
