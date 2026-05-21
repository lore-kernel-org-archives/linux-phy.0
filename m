Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC430CD5BB1
	for <linux-phy@archiver.kernel.org>; Thu, 21 May 2026 13:23:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pMuwnM6MAHG0EPvZf8T0rEdMXyfAi9LFpSbUAwZt4Qo=; b=1TrWeLborjFBeI
	oeuEWAiJIGLIBm34UY2rAFzGDG+HKFxZIQxhQ6MbBm8rL7KzVyeIc1iXtRPk+YqHiqojAHDrTuGjF
	99vYSC12AcsylCII+BEERe7hjipP+V8UPkjD4PnMW8C53BwueOLyaBHAcEZO1L/AwWdR1Hb8wWijs
	kHW9MRPDFCNC3cGLlGYGuEDQDOHH3BOSDIttnbY3J36duW04i/IFT9nZOUz9oBpULfz/+7LYwfo2o
	WR2EutzIQC8UbVn4aKjHjULoA0rJAjvSMNt2IXqRlwIHF6uOGq1l1Rm79bOqtKfWLFh/M0eppPhbU
	BorBsIqoa5uw5ZRIWh/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ3Mo-00000007rOH-1cF2;
	Thu, 21 May 2026 13:23:14 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ3Mn-00000007rNY-1kij
	for linux-phy@lists.infradead.org;
	Thu, 21 May 2026 13:23:13 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id B4468601F3;
	Thu, 21 May 2026 13:23:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4DE411F000E9;
	Thu, 21 May 2026 13:23:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779369792;
	bh=CCA0VnX7Ghmy4xN500xEKq8KmrkgMT0X8UtNB/bc4a0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=CryeF+SnK5mYh/PNskZuXBZoVpHQKh1RJlA4AIPDzVgnpEJOFhipDNdvc81TbR/SQ
	 uVYdGXpcQZMMyTff6bJy5ma35TQyA1Ie5p08DmkiQbybRUex7LSp2CCa1dvqaUk6y/
	 xyVBHAMNsWB0cI6qZ2ZVnb2a8BGO6xkgLMA4IW4/iwioi6jgNj5c5e7bbUqMc90uyN
	 /mKdZ8g5JOQuRgrJippczOkpe2h+D5SaBokWZZi4yFjIqrPxvf3tk0qkJTMxHm2jpy
	 Y9qbin0MpVHVA1QNU3WLETRyxbWdN11z+gpMaHZOSC4ZokXD6iNtXGsEFh4Prt+Olv
	 uXxoyeic7T3tQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/4] phy: qcom: qmp-pcie: Skip PHY reset if already
 up
To: "Krishna Chaitanya Chundru" <krishna.chundru@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, linux-pci@vger.kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20260521-link_retain-v2-1-08ed448b081c@oss.qualcomm.com>
References: <20260521-link_retain-v2-1-08ed448b081c@oss.qualcomm.com>
Date: Thu, 21 May 2026 13:23:10 +0000
Message-Id: <20260521132311.4DE411F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBgc2tpcF9yZXNl
dGAgY29uZGl0aW9uIGlzIGV2YWx1YXRlZCB0d2ljZSB1c2luZyBhIGxpdmUgaGFyZHdhcmUgcmVn
aXN0ZXIsIHJpc2tpbmcgdW5iYWxhbmNlZCByZXNldCBvcGVyYXRpb25zIGlmIHRoZSBQSFkgc3Rh
dHVzIGNoYW5nZXMgYmV0d2VlbiBpbml0IGFuZCBwb3dlcl9vbi4KLS0KCmNvbW1pdCA3ZGVlZjAz
ZmFiMzUyZmVhNGQ4ODJjMzVlMjUzNzM4YjNmYWQzOTJjCkF1dGhvcjogS3Jpc2huYSBDaGFpdGFu
eWEgQ2h1bmRydSA8a3Jpc2huYS5jaHVuZHJ1QG9zcy5xdWFsY29tbS5jb20+CgpwaHk6IHFjb206
IHFtcC1wY2llOiBTa2lwIFBIWSByZXNldCBpZiBhbHJlYWR5IHVwCgpUaGlzIHBhdGNoIHNraXBz
IHRoZSBub2NzciByZXNldCBkdXJpbmcgaW5pdGlhbGl6YXRpb24gaWYgdGhlIGJvb3Rsb2FkZXIK
aGFzIGFscmVhZHkgcG93ZXJlZCB1cCB0aGUgUENJZSBQSFkgYW5kIGl0cyBzdGF0dXMgaW5kaWNh
dGVzIGl0IGlzIHVwLgpUaGlzIGF2b2lkcyByZWR1bmRhbnQgaW5pdGlhbGl6YXRpb24gYW5kIGxp
bmsgcmV0cmFpbmluZyBkZWxheXMgZHVyaW5nCmJvb3QuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtcGNpZS5jIGIvZHJpdmVycy9waHkvcXVhbGNvbW0v
cGh5LXFjb20tcW1wLXBjaWUuYwo+IGluZGV4IGZlZDJmYzliYjMxMTAuLjE0NThhYzE0NzhjN2Ug
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXBjaWUuYwo+
ICsrKyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY2llLmMKClsgLi4uIF0K
Cj4gQEAgLTQ3NDQsNiArNDc0NSw5IEBAIHN0YXRpYyBpbnQgcW1wX3BjaWVfaW5pdChzdHJ1Y3Qg
cGh5ICpwaHkpCj4gIAkJcXBoeV9jaGVja2JpdHMocGNzLCBjZmctPnJlZ3NbUVBIWV9TVEFSVF9D
VFJMXSwgU0VSREVTX1NUQVJUIHwgUENTX1NUQVJUKSAmJgo+ICAJCXFwaHlfY2hlY2tiaXRzKHBj
cywgY2ZnLT5yZWdzW1FQSFlfUENTX1BPV0VSX0RPV05fQ09OVFJPTF0sIGNmZy0+cHdyZG5fY3Ry
bCk7Cj4gIAo+ICsJc2tpcF9yZXNldCA9IHFtcC0+c2tpcF9pbml0ICYmICFxcGh5X2NoZWNrYml0
cyhwY3MsIGNmZy0+cmVnc1tRUEhZX1BDU19TVEFUVVNdLAo+ICsJCQkJCQkJICAgIGNmZy0+cGh5
X3N0YXR1cyk7Cj4gKwo+ICAJaWYgKCFxbXAtPnNraXBfaW5pdCAmJiAhY2ZnLT50YmxzLnNlcmRl
c19udW0pIHsKPiAgCQlkZXZfZXJyKHFtcC0+ZGV2LCAiSW5pdCBzZXF1ZW5jZSBub3QgYXZhaWxh
YmxlXG4iKTsKPiAgCQlyZXR1cm4gLUVOT0RBVEE7CgpbIC4uLiBdCgo+IEBAIC00ODIzLDggKzQ4
MjksMTEgQEAgc3RhdGljIGludCBxbXBfcGNpZV9wb3dlcl9vbihzdHJ1Y3QgcGh5ICpwaHkpCj4g
IAl2b2lkIF9faW9tZW0gKnBjcyA9IHFtcC0+cGNzOwo+ICAJdm9pZCBfX2lvbWVtICpzdGF0dXM7
Cj4gIAl1bnNpZ25lZCBpbnQgbWFzaywgdmFsOwo+ICsJYm9vbCBza2lwX3Jlc2V0Owo+ICAJaW50
IHJldDsKPiAgCj4gKwlza2lwX3Jlc2V0ID0gcW1wLT5za2lwX2luaXQgJiYgIXFwaHlfY2hlY2ti
aXRzKHBjcywgY2ZnLT5yZWdzW1FQSFlfUENTX1NUQVRVU10sCj4gKwkJCQkJCQkgICAgY2ZnLT5w
aHlfc3RhdHVzKTsKCltTZXZlcml0eTogSGlnaF0KU2luY2Ugc2tpcF9yZXNldCBpcyBldmFsdWF0
ZWQgZHluYW1pY2FsbHkgaW4gYm90aCBxbXBfcGNpZV9pbml0KCkgYW5kCnFtcF9wY2llX3Bvd2Vy
X29uKCkgYnkgcmVhZGluZyB0aGUgbGl2ZSBRUEhZX1BDU19TVEFUVVMgaGFyZHdhcmUgcmVnaXN0
ZXIsCmNvdWxkIHRoaXMgbGVhZCB0byBhbiB1bmJhbGFuY2VkIHJlc2V0PwoKSWYgcW1wLT5za2lw
X2luaXQgaXMgdHJ1ZSBidXQgdGhlIFBIWSBzdGF0dXMgYml0IGluZGljYXRlcyBpbml0aWFsaXph
dGlvbiBpcwpub3QgY29tcGxldGUsIHNraXBfcmVzZXQgd2lsbCBiZSBmYWxzZSBpbiBxbXBfcGNp
ZV9pbml0KCksIGNhdXNpbmcKbm9jc3JfcmVzZXQgdG8gYmUgYXNzZXJ0ZWQuCgpPbmNlIHRoZSBy
ZXNldCBpcyBhc3NlcnRlZCwgdGhlIGhhcmR3YXJlIHN0YXRlIGNoYW5nZXMuIFdoZW4KcW1wX3Bj
aWVfcG93ZXJfb24oKSBsYXRlciByZS1ldmFsdWF0ZXMgc2tpcF9yZXNldCwgcmVhZGluZyB0aGUg
c3RhdHVzCnJlZ2lzdGVyIG9mIGEgUEhZIGhlbGQgaW4gcmVzZXQgbWlnaHQgcmV0dXJuIDAuIFRo
aXMgd291bGQgbWFrZSBza2lwX3Jlc2V0CmV2YWx1YXRlIHRvIHRydWUgaGVyZSwgc2tpcHBpbmcg
dGhlIHJlc2V0X2NvbnRyb2xfZGVhc3NlcnQoKSBjYWxsIGFuZCBsZWF2aW5nCnRoZSBQSFkgcGVy
bWFuZW50bHkgc3R1Y2sgaW4gcmVzZXQuCgpTaG91bGQgdGhlIGRlY2lzaW9uIHRvIHNraXAgdGhl
IHJlc2V0IGJlIGV2YWx1YXRlZCBleGFjdGx5IG9uY2UgYW5kIGNhY2hlZCBpbgp0aGUgZGV2aWNl
IGNvbnRleHQgaW5zdGVhZCBvZiByZWFkaW5nIHRoZSBsaXZlIHJlZ2lzdGVyIHR3aWNlPwoKPiAg
CS8qCj4gIAkgKiBXcml0ZSBDU1IgcmVnaXN0ZXIgZm9yIFBIWSB0aGF0IGRvZXNuJ3Qgc3VwcG9y
dCBub19jc3IgcmVzZXQgb3IgaGFzIG5vdAo+ICAJICogYmVlbiBpbml0aWFsaXplZC4KCi0tIApT
YXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA1
MjEtbGlua19yZXRhaW4tdjItMC0wOGVkNDQ4YjA4MWNAb3NzLnF1YWxjb21tLmNvbT9wYXJ0PTEK
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
