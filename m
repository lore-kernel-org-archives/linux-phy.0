Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8A61CD6E4A
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jun 2026 06:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qGDXUCDcLZE7gLu2PPS5ElSECOs74u+8yR8K/ew4rDM=; b=Y/vOBB7T4VuxW1
	mrpnudvA1NOO9yOX71h19CAwfTNVHq/N12Vvr63sGel54iIqnsSui+ndNXAW/42DmWqdWGYMPxGxw
	Q6KZ/DWv3lfvWbJap3j63Y0Lp6FT6mBRLxJ8jyagCv47FTPiodLpw8HQ1vmkYph9IbqVkG5vwvDo9
	n/oP0xzAGtfz6iBr7sslXtQrkvUmfstwglCoIDq5LPIaIrrbBZT7+lnutnlRFZRZJZTX8SAPMud8v
	ye+apiaJx5lwuLHIahQFttj9Elu/WNC75sU/aYcyA+ie+SfuQ8KXd9OjnnlmW/OMpcDYhHPdDq6Km
	oGwp1iBD1xO047eer8pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUefP-0000000EMEa-1Hut;
	Wed, 03 Jun 2026 06:01:27 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUefN-0000000EMCz-2AdE
	for linux-phy@lists.infradead.org;
	Wed, 03 Jun 2026 06:01:25 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id F290F60224;
	Wed,  3 Jun 2026 06:01:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4767F1F00898;
	Wed,  3 Jun 2026 06:01:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780466484;
	bh=6abASxgUjg/+2t9e2EVFKYsT9rgNnOLlhIKwVas6Z8w=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=TcOIEXR6BZQZFXQKpLhSxlqBJjee+WRt6Ue18uNaw0JdcSw+kfHD0TdqxXPKmGzdm
	 KzdH7dZJYF+47WwCRr1NGhDWfbC0vP+EJTEf2IkBLt1OmxYu13RO7ywuFLgtqa75+j
	 4nnzjYm2VZY2AJkE11EqApUzLTkeE/ofRriimPOYwzanRBsMqB/q/bZJ+8jnvsAOnw
	 FkAm2KqWDtjuQCwmUbmBylGW9f1odC9eyMtRnsUUoMfArkBuoDbqL6/vDuK0J3zVI7
	 I3Q+MqC+w26J9ELCqW0J4VFDS+bf+3zfri6gaQrhElBMnxQey5BgtEOGOdYavPOHU2
	 cmNy38SvwqQIA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/2] phy: qcom: usb-hs: honour qcom,vendor-init-seq raw
 ULPI writes
To: "Herman van Hazendonk" <github.com@herrie.org>
Cc: devicetree@vger.kernel.org, robh@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, olteanv@gmail.com, conor+dt@kernel.org
In-Reply-To: <20260603054809.565723-3-github.com@herrie.org>
References: <20260603054809.565723-3-github.com@herrie.org>
Date: Wed, 03 Jun 2026 06:01:23 +0000
Message-Id: <20260603060124.4767F1F00898@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBVc2luZyBgc2VxLT5hZGRyID09IDBgIGFzIGEgbG9vcCB0ZXJtaW5hdG9yIHByZXZl
bnRzIHdyaXRpbmcgdG8gb2Zmc2V0IDAgaW4gYHFjb20saW5pdC1zZXFgLgotLQoKY29tbWl0IDIz
NzY4NjExYmI3MzMyY2I1ODM3NTRjMjI2MDQ0M2Q5MWVhNTFmYjQKQXV0aG9yOiBIZXJtYW4gdmFu
IEhhemVuZG9uayA8Z2l0aHViLmNvbUBoZXJyaWUub3JnPgoKcGh5OiBxY29tOiB1c2ItaHM6IGhv
bm91ciBxY29tLHZlbmRvci1pbml0LXNlcSByYXcgVUxQSSB3cml0ZXMKClRoaXMgcGF0Y2ggYWRk
cyBzdXBwb3J0IGZvciB0aGUgb3B0aW9uYWwgcWNvbSx2ZW5kb3ItaW5pdC1zZXEgRFQgcHJvcGVy
dHkKdG8gd3JpdGUgZGlyZWN0bHkgdG8gcmF3IFVMUEkgcmVnaXN0ZXIgYWRkcmVzc2VzLiBJdCBh
bHNvIGhhcmRlbnMgdGhlIHBhcnNlCmxvZ2ljIHNoYXJlZCBiZXR3ZWVuIHFjb20saW5pdC1zZXEg
YW5kIHFjb20sdmVuZG9yLWluaXQtc2VxIGJ5IGZhY3RvcmluZyBpdApvdXQgaW50byBxY29tX3Vz
Yl9oc19waHlfcGFyc2VfaW5pdF9zZXEoKS4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3F1
YWxjb21tL3BoeS1xY29tLXVzYi1ocy5jIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20t
dXNiLWhzLmMKPiBpbmRleCA5OGExODk4N2YxYmVjLi44OWZiZThmOGQwMDE1IDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXVzYi1ocy5jCj4gKysrIGIvZHJpdmVy
cy9waHkvcXVhbGNvbW0vcGh5LXFjb20tdXNiLWhzLmMKWyAuLi4gXQo+IEBAIC0xOTksNiArMjE5
LDU5IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcGh5X29wcyBxY29tX3VzYl9oc19waHlfb3BzID0g
ewpbIC4uLiBdCj4gK3N0YXRpYyBpbnQgcWNvbV91c2JfaHNfcGh5X3BhcnNlX2luaXRfc2VxKHN0
cnVjdCB1bHBpICp1bHBpLAo+ICsJCQkJCSAgY29uc3QgY2hhciAqcHJvcG5hbWUsCj4gKwkJCQkJ
ICBzdHJ1Y3QgdWxwaV9zZXEgKipvdXQpCj4gK3sKWyAuLi4gXQo+ICsJaWYgKHNpemUpIHsKPiAr
CQlpbnQgcmV0ID0gb2ZfcHJvcGVydHlfcmVhZF91OF9hcnJheSh1bHBpLT5kZXYub2Zfbm9kZSwK
PiArCQkJCQkJICAgIHByb3BuYW1lLCAodTggKilzZXEsIHNpemUpOwo+ICsJCWlmIChyZXQpCj4g
KwkJCXJldHVybiByZXQ7Cj4gKwl9Cj4gKwkvKiBOVUwtdGVybWluYXRlIHNvIHRoZSBwb3dlcl9v
biBsb29wJ3Mgc2VxLT5hZGRyLWFzLXNlbnRpbmVsIHdvcmtzLiAqLwo+ICsJc2VxW3NpemUgLyAy
XS5hZGRyID0gMDsKCltTZXZlcml0eTogSGlnaF0KVGhpcyBpcyBhIHByZS1leGlzdGluZyBpc3N1
ZSwgYnV0IGRvZXMgdXNpbmcgc2VxLT5hZGRyID09IDAgYXMgYSBzZW50aW5lbApwcmV2ZW50IHdy
aXRpbmcgdG8gb2Zmc2V0IDAgaW4gcWNvbSxpbml0LXNlcT8KCkluIHFjb21fdXNiX2hzX3BoeV9w
b3dlcl9vbigpLCB0aGUgaW5pdGlhbGl6YXRpb24gbG9vcCB0ZXJtaW5hdGVzIHdoZW4Kc2VxLT5h
ZGRyIGlzIDA6CgoJZm9yIChzZXEgPSB1cGh5LT5pbml0X3NlcTsgc2VxLT5hZGRyOyBzZXErKykg
ewoJCXJldCA9IHVscGlfd3JpdGUodWxwaSwgVUxQSV9FWFRfVkVORE9SX1NQRUNJRklDICsgc2Vx
LT5hZGRyLAoJCQkJIHNlcS0+dmFsKTsKClNpbmNlIHNlcS0+YWRkciByZXByZXNlbnRzIGFuIG9m
ZnNldCBhZGRlZCB0byBVTFBJX0VYVF9WRU5ET1JfU1BFQ0lGSUMKZm9yIHFjb20saW5pdC1zZXEs
IGFuIG9mZnNldCBvZiAwIGlzIHZhbGlkIGFuZCBtYXBzIHRvIHRoZSBmaXJzdCB2ZW5kb3IKc3Bl
Y2lmaWMgcmVnaXN0ZXIuIElmIGEgZGV2aWNlIHRyZWUgc3BlY2lmaWVzIGEgd3JpdGUgdG8gb2Zm
c2V0IDAsIHdvbid0CnRoZSBsb29wIHByZW1hdHVyZWx5IHRlcm1pbmF0ZSBhbmQgc2lsZW50bHkg
dHJ1bmNhdGUgdGhlIHJlbWFpbmRlciBvZiB0aGUKaW5pdGlhbGl6YXRpb24gc2VxdWVuY2U/Cgo+
ICsJc2VxW3NpemUgLyAyXS52YWwgPSAwOwo+ICsKPiArCSpvdXQgPSBzZXE7Cj4gKwlyZXR1cm4g
MDsKPiArfQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9w
YXRjaHNldC8yMDI2MDYwMzA1NDgwOS41NjU3MjMtMS1naXRodWIuY29tQGhlcnJpZS5vcmc/cGFy
dD0yCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
