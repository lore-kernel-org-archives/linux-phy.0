Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58139CA9EC5
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 13:47:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0tKjJ9402X/l6YhXwkfulhBiAn8rLPVVj2U90SSj3V0=; b=cQgQ2YWamZ0XXS
	Qdi1geaox941Djeft0PG7u6ty7ohs2MhSPJl0f2zFtwC92IBmgdxS7N0tVzFRylmmt1LiD+3/gH8x
	47zZ0EVy+kEQX1yg0QTQjgHMsRbJYxddfmiuGoAKj4QEhXWoCw/d9LoFFMi1ll5XkFJ/3LeYZhgwG
	Z6RaDJAkPJaO0nbFZrq+7tIt02Gvt+TKyo0pciSHpC6zLemMmyR3Iniw+XcrsToqd99/2fke7jkLs
	XcMmTArmhPbLp5Al8Tbt3XoGy/u9VRQNRXTvM9v8e4kdZafPJxxEBEJ9n8x+NYFExkUfLzcpJ+hqE
	ofOPhz0REA5D+fIbA7fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGGMp-0000000Ac0F-0DA1;
	Mon, 12 Oct 2026 13:47:03 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGGMo-0000000Ac06-3C8h
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 13:47:02 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 6D987435D7;
	Mon, 12 Oct 2026 13:47:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4FBD1F0089B;
	Mon, 12 Oct 2026 13:47:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791812822;
	bh=kw478kFzJgOqgycYhCOUMUqz0gU4ru7dcFJzR0Lhwok=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=osrqqM1Lv8k7z36uoAXtgjsd8/qZtcwGILUnx9T7ImxNY1Qu1WNLZ3U5WvBXuLfkV
	 LAby7j2JLgprdoL7e+VtMCaxBVoVZBE//5jGE/Q0nWVoiVQ0CI0Wif5g0jdDJi2uk2
	 PE9KYJO/9NR5RXzehNoF5GnlMr2wLl9CmVb/19iU3kevs/fTuscaAOTjQinpO4UBFd
	 uxiAbg2dDMHPvUISiHO/SpOJXVJOTKsUJVRkZlKTqQT9CYXOG7xdRVfDg0ZvMR45Gq
	 IK2j1czCFg7FnYCWh9+r76IIOiP95DlG47c3RGqlXhesgrb0GGsx/6OFslFfoHzNTz
	 IwPN8Jyq6/ilQ==
Message-ID: <sashiko-outbox-168214@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 06/13] drm/msm/dp: Add support for DP controllers on
 Nord
To: "Nabige Aala" <nabige.aala@oss.qualcomm.com>
Cc: olteanv@gmail.com, devicetree@vger.kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, robh@kernel.org, dri-devel@lists.freedesktop.org, conor+dt@kernel.org
In-Reply-To: <20261012-nord-drv-dt-v2-6-a2ab9af954d2@oss.qualcomm.com>
References: <20261012-nord-drv-dt-v2-0-a2ab9af954d2@oss.qualcomm.com>
 <20261012-nord-drv-dt-v2-6-a2ab9af954d2@oss.qualcomm.com>
Date: Mon, 12 Oct 2026 13:47:01 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gZHJtL21zbS9kcDogbG9n
aWMgdHlwbyBpbiBsb29wIGNvbmRpdGlvbiBpIDwgaW9fc3RhcnQKLS0KCmNvbW1pdCA5ODczZmQ1
NWE1MDQ4ZmQ2ODY3MzM0ZTM3YWVlODE2MzViYzk0YjVhCkF1dGhvcjogTWFoYWRldmFuIFAgPG1h
aGFkZXZhbi5wQG9zcy5xdWFsY29tbS5jb20+Cgpkcm0vbXNtL2RwOiBBZGQgc3VwcG9ydCBmb3Ig
RFAgY29udHJvbGxlcnMgb24gTm9yZAoKVGhpcyBjb21taXQgYWRkcyB0aGUgTm9yZCBEUCBjb250
cm9sbGVyIGRlc2NyaXB0b3JzIGFuZCBjb21wYXRpYmxlIHN0cmluZ3MuCk5vcmQgc3VwcG9ydHMg
Zm91ciBEUCBjb250cm9sbGVycywgdHdvIHBlciBNRFNTIGluc3RhbmNlLgoKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL21zbS9kcC9kcF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0v
bXNtL2RwL2RwX2Rpc3BsYXkuYwo+IGluZGV4IGJjZTY0MWQ3ZDg5MzguLmQyNTg5NjNjZGRjNjQg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL21zbS9kcC9kcF9kaXNwbGF5LmMKPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX2Rpc3BsYXkuYwo+IEBAIC0xMDksNiArMTA5LDE0
IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgbXNtX2RwX2Rlc2MgbXNtX2RwX2Rlc2NfZ2x5bXVyW10g
PSB7Cj4gIAl7fQo+ICB9Owo+ICAKPiArc3RhdGljIGNvbnN0IHN0cnVjdCBtc21fZHBfZGVzYyBt
c21fZHBfZGVzY19ub3JkW10gPSB7Cj4gKwl7IC5pb19zdGFydCA9IDB4MGFmNTQwMDAsIC5pZCA9
IE1TTV9EUF9DT05UUk9MTEVSXzAsIC53aWRlX2J1c19zdXBwb3J0ZWQgPSB0cnVlIH0sCj4gKwl7
IC5pb19zdGFydCA9IDB4MGFmNWMwMDAsIC5pZCA9IE1TTV9EUF9DT05UUk9MTEVSXzEsIC53aWRl
X2J1c19zdXBwb3J0ZWQgPSB0cnVlIH0sCj4gKwl7IC5pb19zdGFydCA9IDB4MDhkNTQwMDAsIC5p
ZCA9IE1TTV9EUF9DT05UUk9MTEVSXzAsIC53aWRlX2J1c19zdXBwb3J0ZWQgPSB0cnVlIH0sCj4g
Kwl7IC5pb19zdGFydCA9IDB4MDhkNWMwMDAsIC5pZCA9IE1TTV9EUF9DT05UUk9MTEVSXzEsIC53
aWRlX2J1c19zdXBwb3J0ZWQgPSB0cnVlIH0sCj4gKwl7fQo+ICt9OwoKW1NldmVyaXR5OiBMb3dd
CkRvZXMgdGhpcyBuZXcgRFAgY29udHJvbGxlciBjb25maWd1cmF0aW9uIHJlbHkgb24gYSBsb2dp
YyB0eXBvIGluIHRoZSBsb29wCmNvbmRpdGlvbiBvZiBtc21fZHBfZGlzcGxheV9nZXRfZGVzYygp
IHRvIHRlcm1pbmF0ZSBzYWZlbHk/CgpMb29raW5nIGF0IG1zbV9kcF9kaXNwbGF5X2dldF9kZXNj
KCksIHRoZSBsb29wIGNvbmRpdGlvbiBjb21wYXJlcyB0aGUKYXJyYXkgaW5kZXggaSBhZ2FpbnN0
IHRoZSBwaHlzaWNhbCBtZW1vcnkgYWRkcmVzcyBpb19zdGFydDoKCglmb3IgKGkgPSAwOyBpIDwg
ZGVzY3NbaV0uaW9fc3RhcnQ7IGkrKykgewoJCWlmIChkZXNjc1tpXS5pb19zdGFydCA9PSByZXMt
PnN0YXJ0KQoJCQlyZXR1cm4gJmRlc2NzW2ldOwoJfQoKVGhpcyByZWdyZXNzaW9uIGluIHRoZSBs
b29wIGxvZ2ljIGFwcGVhcnMgdG8gYmUgYSB0eXBvIHRoYXQgc2hvdWxkIGxpa2VseSBiZQpkZXNj
c1tpXS5pb19zdGFydCAhPSAwLgoKVGhlIGxvb3AgYXZvaWRzIGNyYXNoaW5nIGJlY2F1c2UgcGh5
c2ljYWwgbWVtb3J5IGFkZHJlc3NlcyAobGlrZSAweDBhZjU0MDAwKQphcmUgbXVjaCBsYXJnZXIg
dGhhbiB0aGUgaW5kZXggaSwgYW5kIHRoZSB6ZXJvLWluaXRpYWxpemVkIHNlbnRpbmVsIGVsZW1l
bnQge30Kc2V0cyBpb19zdGFydCB0byAwLgoKU2luY2UgcGh5c19hZGRyX3QgaXMgdW5zaWduZWQs
IGNoZWNraW5nIGkgPCAwIHNhZmVseSBldmFsdWF0ZXMgdG8gZmFsc2UgYW5kCnRlcm1pbmF0ZXMg
dGhlIGxvb3AsIGJ1dCB0aGlzIGxvZ2ljIGlzIGJyaXR0bGUgYW5kIHNlbWFudGljYWxseSBpbmNv
cnJlY3QuCgpDb3VsZCB0aGUgbG9vcCBjb25kaXRpb24gaW4gbXNtX2RwX2Rpc3BsYXlfZ2V0X2Rl
c2MoKSBiZSBjb3JyZWN0ZWQgc28gdGhhdApuZXdseSBhZGRlZCBjb250cm9sbGVyIGFycmF5cyBk
byBub3QgcmVseSBvbiB0aGlzIHVuc2lnbmVkIGNvbXBhcmlzb24gYmVoYXZpb3IKZm9yIHRlcm1p
bmF0aW9uPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9w
YXRjaHNldC8yMDI2MTAxMi1ub3JkLWRydi1kdC12Mi0wLWEyYWI5YWY5NTRkMkBvc3MucXVhbGNv
bW0uY29tP3BhcnQ9NgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
