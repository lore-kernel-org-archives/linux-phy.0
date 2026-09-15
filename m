Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 626A6C88E75
	for <linux-phy@archiver.kernel.org>; Tue, 15 Sep 2026 10:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i66EJRVsVhIzvas3XKY0kPyQQcm9HIqavJmOOUgIOF4=; b=W8VKHPyiJ0tv5L
	875QPmh0pMA3XHCNhliBHeZAKuTodbVid+yjzZuA122CQgi3ZtCX6U/ZYdEOV7RYLLMlkw9AYq5sj
	io2ej+ZpiXs6l4t1bZfkEfhImGhoKp7x9306cH+TUXpzpMW163OqaB67NWMzSuE5ZMnLSgY0/y0Qh
	8VhIoSt8aWV+ta7uya8xjxlEd1XX0292lBgBfPvNepWKSbGnO2UWVteNy2oI4OfrMBu5qRd2mTY+g
	nri2fDk8E3FwO03gLAx4/GA1EnbQGTDhW9Xymkt5iUgMYpfBMcCYz8rX4zNozsowM1mGTca9dS7J/
	YMac5chcC7FjhLg5VEAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6QMy-00000005uaH-3Je2;
	Tue, 15 Sep 2026 10:26:32 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6QMx-00000005uZs-2SJF
	for linux-phy@lists.infradead.org;
	Tue, 15 Sep 2026 10:26:31 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id B85D36025F;
	Tue, 15 Sep 2026 10:26:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EFF231F00893;
	Tue, 15 Sep 2026 10:26:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789467990;
	bh=wwVQ8xxvUDO4a0wOYl6u4/nV7IdmSwXT0cfa77nNaE4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=HZsCktSR8LjMEl0e4QAvymEDTjdZsu6cVgyyaKr2QaE0PsVTXwPdnDEXKohFmFa91
	 KFqW21xsz+AS46v/FznYqcWPdDmFgbS1IYUJI+3kBaPZib1zEaWT1tmYBMXgmvmJiH
	 MT3AKtiW2cKvb1xXR8Aad1lBnUFcM4GlSyiC3PfY09+8JftKuNhW6I5dt77zdlkU0r
	 HCSwEX4YwMYP716DDHJCQvv7/e+iU4sF0+JHpo0zcY2pfl/Wv99trjQ9tfWzfP6Da0
	 E2YGGjNumfkrh5uDs8CROpJXT1uVV26c+M9WDm95jSQPr8d/BwsVtBj/mciC8hy95e
	 ugO99uOlPSBVA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 2/2] phy: mediatek: Add support for PCI-Express Gen4
 S-PHY
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: vkoul@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, olteanv@gmail.com
In-Reply-To: <20260915101022.23852-3-angelogioacchino.delregno@collabora.com>
References: <20260915101022.23852-1-angelogioacchino.delregno@collabora.com>
 <20260915101022.23852-3-angelogioacchino.delregno@collabora.com>
Date: Tue, 15 Sep 2026 10:26:29 +0000
Message-Id: <20260915102629.EFF231F00893@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gcGh5OiBtZWRpYXRl
azogZW5kaWFubmVzcyBidWcgd2hlbiByZWFkaW5nIHNwbGl0IE5WTUVNIGNlbGxzIGluIG10a19w
Y2llX3NwaHlfZ2V0X29uZV9jYWxfcGFyYSgpCi0tCgpjb21taXQgYWIyNzZkNWRjOTQxNGIzYjU2
MThlYTk2Yzg0ZGNjMDg2YmRmOTAzNgpBdXRob3I6IEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25v
IDxhbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5jb20+CgpwaHk6IG1lZGlhdGVr
OiBBZGQgc3VwcG9ydCBmb3IgUENJLUV4cHJlc3MgR2VuNCBTLVBIWQoKVGhpcyBjb21taXQgaW50
cm9kdWNlcyB0aGUgZHJpdmVyIGZvciB0aGUgUENJLUV4cHJlc3MgR2VuNCBTLVBIWSBmb3VuZCBp
bgpyZWNlbnQgTWVkaWFUZWsgU29DcyBzdWNoIGFzIE1UNjk5MSBhbmQgTVQ4MTk2LiBJdCBpbXBs
ZW1lbnRzIHRoZSBQSFkKaW5pdGlhbGl6YXRpb24gcm91dGluZXMgYW5kIGhhbmRsZXMgcmVhZGlu
ZyBlRnVzZSBjYWxpYnJhdGlvbiBkYXRhIGZyb20KdGhlIE5WTUVNIGZyYW1ld29yay4KCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvcGh5L21lZGlhdGVrL3BoeS1tdGstcGNpZS1zcGh5LmMgYi9kcml2
ZXJzL3BoeS9tZWRpYXRlay9waHktbXRrLXBjaWUtc3BoeS5jCj4gbmV3IGZpbGUgbW9kZSAxMDA2
NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAwLi4yYmYxMDM0NmVhOTdhCj4gLS0tIC9kZXYvbnVsbAo+
ICsrKyBiL2RyaXZlcnMvcGh5L21lZGlhdGVrL3BoeS1tdGstcGNpZS1zcGh5LmMKWyAuLi4gXQo+
ICtzdGF0aWMgaW50IG10a19wY2llX3NwaHlfZ2V0X29uZV9jYWxfcGFyYShzdHJ1Y3QgZGV2aWNl
ICpkZXYsIGNvbnN0IGNoYXIgKm5hbWUsIHU4IG1heF92YWwpCj4gK3sKPiArCXUxNiBidWY7Cj4g
Kwl1OCB0bXA7Cj4gKwlpbnQgcmV0Owo+ICsKPiArCS8qCj4gKwkgKiBBbGwgb2YgdGhlIGNhbGli
cmF0aW9ucyBhcmUgYWx3YXlzIG1heCA4IGJpdHMgbG9uZywgYnV0IHNvbWUgbWF5Cj4gKwkgKiBi
ZSBzcGxpdCBiZXR3ZWVuIHR3byBkaWZmZXJlbnQgOC1iaXRzIGNlbGxzOiBoYW5kbGUgdGhpcyBj
b3JuZXIKPiArCSAqIGNhc2UgYnkgcmV0cnlpbmcgcmVhZGluZyBhcyB1MTYuCj4gKwkgKi8KPiAr
CXJldCA9IG52bWVtX2NlbGxfcmVhZF91OChkZXYsIG5hbWUsICZ0bXApOwo+ICsJaWYgKHJldCA9
PSAwKQo+ICsJCWJ1ZiA9IHRtcDsKPiArCWVsc2UKPiArCQlyZXQgPSBudm1lbV9jZWxsX3JlYWRf
dTE2KGRldiwgbmFtZSwgJmJ1Zik7CgpbU2V2ZXJpdHk6IE1lZGl1bV0KV2hlbiBhbiA4LWJpdCAo
b3Igc21hbGxlcikgTlZNRU0gY2VsbCBjcm9zc2VzIGEgYnl0ZSBib3VuZGFyeSBpbiBoYXJkd2Fy
ZSwKdGhlIE5WTUVNIGNvcmUgZXZhbHVhdGVzIGl0cyBsZW5ndGggYXMgMiBieXRlcywgY2F1c2lu
ZyBudm1lbV9jZWxsX3JlYWRfdTgoKQp0byBmYWlsIHdpdGggLUVJTlZBTC4KCkRvZXMgZmFsbGlu
ZyBiYWNrIHRvIG52bWVtX2NlbGxfcmVhZF91MTYoKSBjYXVzZSBhbiBlbmRpYW5uZXNzIGlzc3Vl
IGhlcmU/CgpCZWNhdXNlIHRoZSBOVk1FTSBjb3JlIHBvcHVsYXRlcyB0aGUgYnVmZmVyIHdpdGgg
YSBkaXJlY3QgbWVtb3J5IGNvcHksIHRoZQpzaGlmdGVkIHZhbGlkIGRhdGEgaXMgcGxhY2VkIGlu
IHRoZSBmaXJzdCBieXRlIGFuZCB6ZXJvZXMgaW4gdGhlIHNlY29uZCBieXRlLgpPbiBiaWctZW5k
aWFuIGFyY2hpdGVjdHVyZXMsIGludGVycHJldGluZyB0aGlzIGJ1ZmZlciBkaXJlY3RseSBhcyBh
IG5hdGl2ZQp1MTYgdmFyaWFibGUgZXZhbHVhdGVzIHRvIGJ1ZlswXSA8PCA4LCB3aGljaCBlZmZl
Y3RpdmVseSBtdWx0aXBsaWVzIHRoZQpjYWxpYnJhdGlvbiB2YWx1ZSBieSAyNTYuIFRoaXMgY291
bGQgbGVhZCB0byBzcHVyaW91cyAtRVJBTkdFIGZhaWx1cmVzIG9yCmluY29ycmVjdCBjYWxpYnJh
dGlvbiB2YWx1ZXMgYmVpbmcgd3JpdHRlbiB0byB0aGUgUEhZLgoKV291bGQgaXQgYmUgc2FmZXIg
dG8gdXNlIG52bWVtX2NlbGxfcmVhZF92YXJpYWJsZV9sZV91MzIoKSB0byBoYW5kbGUgdGhlc2UK
c3BsaXQgY2VsbHMgcm9idXN0bHkgYWNyb3NzIGRpZmZlcmVudCBhcmNoaXRlY3R1cmVzPwoKPiAr
Cj4gKwlpZiAocmV0ID09IC1FTk9FTlQpIHsKPiArCQlkZXZfaW5mbyhkZXYsICJObyBjYWxpYnJh
dGlvbiBmb3IgJXMuIFVzaW5nIGRlZmF1bHRzXG4iLCBuYW1lKTsKPiArCQlyZXR1cm4gLUVOT0VO
VDsKPiArCX0gZWxzZSBpZiAocmV0KQo+ICsJCXJldHVybiBkZXZfZXJyX3Byb2JlKGRldiwgcmV0
LAo+ICsJCQkJICAgICAiQ2Fubm90IGdldCBjYWxpYnJhdGlvbiBkYXRhIGZvciAlc1xuIiwgbmFt
ZSk7Cj4gKwo+ICsJaWYgKGJ1ZiA+IG1heF92YWwpCj4gKwkJcmV0dXJuIGRldl9lcnJfcHJvYmUo
ZGV2LCAtRVJBTkdFLAo+ICsJCQkJICAgICAiQmFkIHZhbHVlICV1IHJldHJpZXZlZCBmb3IgJXMu
XG4iLCBidWYsIG5hbWUpOwo+ICsKPiArCXJldHVybiBidWY7Cj4gK30KWyAuLi4gXQoKLS0gClNh
c2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDkx
NTEwMTAyMi4yMzg1Mi0xLWFuZ2Vsb2dpb2FjY2hpbm8uZGVscmVnbm9AY29sbGFib3JhLmNvbT9w
YXJ0PTIKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
