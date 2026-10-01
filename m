Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66240CA5FA5
	for <linux-phy@archiver.kernel.org>; Thu,  1 Oct 2026 09:49:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bzpSaTxZ0FNsnBge3kT94aqkrjkMZPexqc7LBSMv8uo=; b=Pbi3vUYsj5UgHZ
	MpCqQPNPExDkRbYfZqKl0XyTxuqUzg3MCSBFg2uN3qoIIskDJO7h+blW3SkTiHtYZfX0TW3e3O5sI
	2NDfRWsTocmlbwX3zCy7ESBPaGbNTRvkA6TOxdfQ49Q86D9QntJ2wft/Zjn85KHgFK9k/gMTWAI09
	G6UIRCTszOd+L3vPlhtAL/YkUrdJOb+BQK1ydH1jsuYEGD/mQlkszs7wyFJ+g+1FcQGgqDvDwPw93
	cAAPK/jLiTOE7wkHwpysA6ErSLFSlsFcbuX+RY1faYIhuZy/S+6U5IqJK7gGKJJ2EYq669zz53pkH
	TdBAQmefyoe8+hVRWkpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCDQD-00000008QVP-0Rab;
	Thu, 01 Oct 2026 09:49:49 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCDQB-00000008QUT-3mJi
	for linux-phy@lists.infradead.org;
	Thu, 01 Oct 2026 09:49:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 17928601FE;
	Thu,  1 Oct 2026 09:49:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7462B1F000FF;
	Thu,  1 Oct 2026 09:49:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790848186;
	bh=7MWwjbLaFfb+0lVZ5aaU5dGvY3RtwGXO/ilpREtdqrQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Nwv0ReYcvJ9XxJ05K4rKjjYEb7gE3XUvhTY1uti4EeNwldO4vD8imSfhy4bzbj0jb
	 tY2vMr54g2zqYt+x9RKt8s7TphuP/58Fu8dcoxaWcMhDgGNlrT+L8Tu+/rsLtorAE4
	 VJlKNAw3Gfw8Gn4n4wnHPMBVd+kkwY8ovZaCW4yqaVe+M7D+rexjEBj2rtlVXvVAVi
	 QJTCnGWmmmdWq5F0wDnMLgtkmyIWsqHIAPxh6U9L+1LxA8wvPi6ef10bfdS2STS/WN
	 frBjbw9smfca/aTUwvbSNbJYlido4Oy1JGbXUaR2ucJshL7/IFW41UVU/BhUi9xvS5
	 3Gf1nv5FF54Tg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 04/11] phy: qualcomm: qmp-combo: Ignore Type-C
 orientation for Glymur DP mode
To: "Nabige Aala" <nabige.aala@oss.qualcomm.com>
Cc: neil.armstrong@linaro.org, vkoul@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20261001-glymur-phy-v3-v5-4-3848c2615d5a@oss.qualcomm.com>
References: <20261001-glymur-phy-v3-v5-0-3848c2615d5a@oss.qualcomm.com>
 <20261001-glymur-phy-v3-v5-4-3848c2615d5a@oss.qualcomm.com>
Date: Thu, 01 Oct 2026 09:49:45 +0000
Message-Id: <20261001094946.7462B1F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIHBoeTogcXVhbGNvbW06
IGluY29tcGxldGUgb3JpZW50YXRpb24gb3ZlcnJpZGUgYnJlYWtzIERQIGluIHJldmVyc2UgbW9k
ZQotLQoKY29tbWl0IDIzYWM4YzY2MjliYTM0Njk0YzA1YTkxYzZkZTA1ZDkzYmQ0ZTZiMDQKQXV0
aG9yOiBSaXRlc2ggS3VtYXIgPHJpdGVzaC5rdW1hckBvc3MucXVhbGNvbW0uY29tPgoKcGh5OiBx
dWFsY29tbTogcW1wLWNvbWJvOiBJZ25vcmUgVHlwZS1DIG9yaWVudGF0aW9uIGZvciBHbHltdXIg
RFAgbW9kZQoKR2x5bXVyIHBsYXRmb3JtcyB1c2UgYSBmaXhlZCBEUCBsYW5lIG1hcHBpbmcgYW5k
IGRvIG5vdCBzdXBwb3J0IERQIFBIWSBtb2RlCnJldmVyc2FsIGJhc2VkIG9uIFR5cGUtQyBvcmll
bnRhdGlvbi4gQWRkIGEgY29uZmlndXJhdGlvbiBmbGFnIHRvIGlnbm9yZQpyZXZlcnNlIG9yaWVu
dGF0aW9uIGR1cmluZyBEUCBtb2RlIHNldHVwIGFuZCBlbmFibGUgaXQgZm9yIEdseW11ciwgZW5z
dXJpbmcKdGhhdCBRU0VSREVTX0RQX1BIWV9NT0RFIGlzIGFsd2F5cyBwcm9ncmFtbWVkIHdpdGgg
dGhlIGZpeCBtb2RlIHZhbHVlICgweDVjKS4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3F1
YWxjb21tL3BoeS1xY29tLXFtcC1jb21iby5jIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFj
b20tcW1wLWNvbWJvLmMKPiBpbmRleCBiNjcyYWRiMzNmYzViLi42NDZlOTdhNTI4ODYzIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1jb21iby5jCj4gKysr
IGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLWNvbWJvLmMKClsgLi4uIF0KCj4g
QEAgLTM1NzAsNiArMzU3NSw3IEBAIHN0YXRpYyB2b2lkIHFtcF92M19jb25maWd1cmVfZHBfdHgo
c3RydWN0IHFtcF9jb21ibyAqcW1wKQo+ICBzdGF0aWMgYm9vbCBxbXBfY29tYm9fY29uZmlndXJl
X2RwX21vZGUoc3RydWN0IHFtcF9jb21ibyAqcW1wKQo+ICB7Cj4gIAlib29sIHJldmVyc2UgPSAo
cW1wLT5vcmllbnRhdGlvbiA9PSBUWVBFQ19PUklFTlRBVElPTl9SRVZFUlNFKTsKPiArCWNvbnN0
IHN0cnVjdCBxbXBfcGh5X2NmZyAqY2ZnID0gcW1wLT5jZmc7Cj4gIAljb25zdCBzdHJ1Y3QgcGh5
X2NvbmZpZ3VyZV9vcHRzX2RwICpkcF9vcHRzID0gJnFtcC0+ZHBfb3B0czsKPiAgCXUzMiB2YWw7
Cj4gIAo+IEBAIC0zNTgzLDcgKzM1ODksNyBAQCBzdGF0aWMgYm9vbCBxbXBfY29tYm9fY29uZmln
dXJlX2RwX21vZGUoc3RydWN0IHFtcF9jb21ibyAqcW1wKQo+ICAKPiAgCXdyaXRlbCh2YWwsIHFt
cC0+ZHBfZHBfcGh5ICsgUVNFUkRFU19EUF9QSFlfUERfQ1RMKTsKPiAgCj4gLQlpZiAocmV2ZXJz
ZSkKPiArCWlmIChyZXZlcnNlICYmICFjZmctPmRwX21vZGVfaWdub3JlX3JldmVyc2UpCj4gIAkJ
d3JpdGVsKDB4NGMsIHFtcC0+ZHBfZHBfcGh5ICsgUVNFUkRFU19EUF9QSFlfTU9ERSk7Cj4gIAll
bHNlCj4gIAkJd3JpdGVsKDB4NWMsIHFtcC0+ZHBfZHBfcGh5ICsgUVNFUkRFU19EUF9QSFlfTU9E
RSk7CgpbU2V2ZXJpdHk6IEhpZ2hdCkRvZXMgdGhpcyBvcmllbnRhdGlvbiBvdmVycmlkZSBmdWxs
eSBoYW5kbGUgcmV2ZXJzZSBtb2RlIG9uIEdseW11ciBwbGF0Zm9ybXM/CgpJbiBkcml2ZXJzL3Bo
eS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8uYywgd2l0aGluCnFtcF9jb21ib19jb25maWd1
cmVfZHBfbW9kZSgpLCB0aGUgcmV2ZXJzZSB2YXJpYWJsZSBzdGlsbCBkeW5hbWljYWxseQpzd2Fw
cyB0aGUgcG93ZXJlZC1kb3duIGxhbmVzIHByaW9yIHRvIHRoaXMgY2hlY2s6CgoJaWYgKGRwX29w
dHMtPmxhbmVzID09IDQgfHwgcmV2ZXJzZSkKCQl2YWwgfD0gRFBfUEhZX1BEX0NUTF9MQU5FXzBf
MV9QV1JETjsKCWlmIChkcF9vcHRzLT5sYW5lcyA9PSA0IHx8ICFyZXZlcnNlKQoJCXZhbCB8PSBE
UF9QSFlfUERfQ1RMX0xBTkVfMl8zX1BXUkROOwoKSWYgdGhlIHBsYXRmb3JtIGhhcyBmaXhlZCBE
UCBsYW5lIG1hcHBpbmcgYW5kIGlnbm9yZXMgb3JpZW50YXRpb24sIHdvbid0CnRoaXMgaW5jb3Jy
ZWN0bHkgcG93ZXIgb2ZmIHRoZSBhY3RpdmUgbGFuZXMgd2hlbiBhIFR5cGUtQyBjYWJsZSBpcwpp
bnNlcnRlZCBpbiB0aGUgcmV2ZXJzZSBvcmllbnRhdGlvbj8KCkFkZGl0aW9uYWxseSwgcW1wX3Y4
X2NvbmZpZ3VyZV9kcF9waHkoKSBhbHNvIGFwcGVhcnMgdG8gYnlwYXNzIHRoZQppbnRlbmRlZCBm
aXhlZCBjb25maWd1cmF0aW9uIGZvcmNlZCBieSBkcF9tb2RlX2lnbm9yZV9yZXZlcnNlLCBhcyB0
aGUKbGFuZSBkcml2ZXIgYW5kIHRyYW5zY2VpdmVyIGJpYXMgZW5hYmxlIHZhbHVlcyBzdGlsbCBk
eW5hbWljYWxseSBzd2FwCmJhc2VkIG9uIG9yaWVudGF0aW9uOgoKCWlmIChkcF9vcHRzLT5sYW5l
cyA9PSAxKSB7CgkJYmlhczBfZW4gPSByZXZlcnNlID8gMHgzZSA6IDB4MTU7CgkJYmlhczFfZW4g
PSByZXZlcnNlID8gMHgxNSA6IDB4M2U7CgkJZHJ2cjBfZW4gPSByZXZlcnNlID8gMHgxMyA6IDB4
MTA7CgkJZHJ2cjFfZW4gPSByZXZlcnNlID8gMHgxMCA6IDB4MTM7CgpDb3VsZCB0aGVzZSBvbWlz
c2lvbnMgY2F1c2UgRGlzcGxheVBvcnQgb3V0cHV0IG92ZXIgVHlwZS1DIHRvIGNvbXBsZXRlbHkK
ZmFpbCB3aGVuIHRoZSBjYWJsZSBpcyBpbnNlcnRlZCBpbiB0aGUgcmV2ZXJzZSBvcmllbnRhdGlv
biwgYXMgdGhlIFBIWQpjb25maWd1cmF0aW9uIHdpbGwgaW5jb3JyZWN0bHkgcG93ZXIgZG93biB0
aGUgYWN0aXZlIERQIGxhbmVzIGFuZCBhcHBseQp3cm9uZyB0cmFuc2NlaXZlciBiaWFzIHNldHRp
bmdzPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRj
aHNldC8yMDI2MTAwMS1nbHltdXItcGh5LXYzLXY1LTAtMzg0OGMyNjE1ZDVhQG9zcy5xdWFsY29t
bS5jb20/cGFydD00CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
