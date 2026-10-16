Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E2D1CCA464
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 12:44:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ChvQ6XMlSHnO2QnqaDplrwZGA0jKwlXbGzcMt+sjuu0=; b=TRCl6TFwg+yzLe
	AhryZxJndzWuwlhQKUgUZ2FCZD+PU8lTMQmaf7p7mx0BXwm18woned4mZFi4luVNN7ZUPGkaLLWuR
	0dDUky5SY+c4b1qsmpT1DoUoxyLQDbiWv1o+heoQ4KMkiHvxPBqGJHH0F0K2wj8oO8yiOtYfe0K/+
	nZNtT6BKmj7gpUh76V7dAnijJP0Q5sAhi4uf1J1vfObQsNgMIQZNnI6y44hBZsMHn6Mq6j8nyg5gJ
	I11khizNST15lTSTx08l0QZpQbb+wxaOH8PoR/26N9Co86hFSRQx0oOQsnmUlwRfBYe19r3WHR6/P
	UBNmnLCZLSJd5CmsOanQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHhI9-00000002wql-0rET;
	Fri, 16 Oct 2026 12:44:09 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHhI8-00000002wqN-0Cze
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 12:44:08 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7D76C60018;
	Fri, 16 Oct 2026 12:44:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B7BD41F000C4;
	Fri, 16 Oct 2026 12:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792154647;
	bh=QtaNKjNuConHU1ln2GcxJlzR9mNdCnZz5UyC9pXCoBI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=gWC/skRzjf5Hc8eJi9+vGb4pXfn/0dEuNv4kdxZm/FcXEntQ2OcxnGd/FpEaS0hNJ
	 69LcmQgVFSqnvEBVc8jTtQdIr+XOiYZ+pEhqr7ZrR+Y6+ci/fqTDJMI1EyJMBilTMS
	 ef9xCVXPyX8489ZJ2iwjBSVaqHQGu+rU0C5ikScczS5Pjr4tbdRg4WIYEA+uznmKEz
	 Sdpy0NtvRW1tjpmvkJ3wz4Ixcm5+QxZ1b+3gP3dqkh7lGh0MddyE/Giwz3Q5CEF5za
	 +RHJu2xpC21+I0L1w9beOHZr5avBMUt/n5oV/3HXKazA1VOwfO033UsyCZPstY3YFb
	 PbxSCH43P7vsQ==
Message-ID: <sashiko-outbox-174331@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v14 07/23] scsi: ufs: mediatek: Rework 0.9V regulator
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-scsi@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261016-mt8196-ufs-v14-7-e8d565e0cd45@collabora.com>
References: <20261016-mt8196-ufs-v14-0-e8d565e0cd45@collabora.com>
 <20261016-mt8196-ufs-v14-7-e8d565e0cd45@collabora.com>
Date: Fri, 16 Oct 2026 12:44:06 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIHNjc2k6IHVmczogdW5i
YWxhbmNlZCBwaHkgcG93ZXIgcmVmY291bnQgb24gcmVndWxhdG9yIGRpc2FibGUgZmFpbHVyZQot
LQoKY29tbWl0IDI3YjkxNWVjOTI4NWFmZTVhNjNmN2NiYjRlNjZlMDgzMjMzNDQ1MDcKQXV0aG9y
OiBOaWNvbGFzIEZyYXR0YXJvbGkgPG5pY29sYXMuZnJhdHRhcm9saUBjb2xsYWJvcmEuY29tPgoK
c2NzaTogdWZzOiBtZWRpYXRlazogUmV3b3JrIDAuOVYgcmVndWxhdG9yCgpUaGUgbWVkaWF0ZWsg
VUZTIGhvc3QgZHJpdmVyIGlzIHJlZmFjdG9yZWQgdG8gbWFuYWdlIHRoZSAwLjlWIHJlZ3VsYXRv
cgpieSByZWx5aW5nIG9uIHRoZSByZWd1bGF0b3IgZnJhbWV3b3JrIGluc3RlYWQgb2YgYWRkaW5n
IGV4cGxpY2l0IHNsZWVwcwphbmQgY2hlY2tpbmcgZG93bnN0cmVhbSBuYW1lcy4gSXQgcmVuYW1l
cyB0aGUgcmVndWxhdG9yIHRvIGF2ZGQwOSBhbmQKdXBkYXRlcyB0aGUgZGV2aWNldHJlZSBtYXRj
aGluZyBhcHByb3ByaWF0ZWx5LgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy91ZnMvaG9zdC91ZnMt
bWVkaWF0ZWsuYyBiL2RyaXZlcnMvdWZzL2hvc3QvdWZzLW1lZGlhdGVrLmMKPiBpbmRleCAyYWEx
M2I1OTU0ODAwLi5iY2I3ZjM1MDk4NGMwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvdWZzL2hvc3Qv
dWZzLW1lZGlhdGVrLmMKPiArKysgYi9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1tZWRpYXRlay5jClsg
Li4uIF0KPiBAQCAtNTA4LDU2ICs1MTAsNzcgQEAgc3RhdGljIGludCB1ZnNfbXRrX3dhaXRfbGlu
a19zdGF0ZShzdHJ1Y3QgdWZzX2hiYSAqaGJhLCB1MzIgc3RhdGUsClsgLi4uIF0KPiAgc3RhdGlj
IGludCB1ZnNfbXRrX21waHlfcG93ZXJfb24oc3RydWN0IHVmc19oYmEgKmhiYSwgYm9vbCBvbikK
PiAgewo+ICAJc3RydWN0IHVmc19tdGtfaG9zdCAqaG9zdCA9IHVmc2hjZF9nZXRfdmFyaWFudCho
YmEpOwo+ICAJc3RydWN0IHBoeSAqbXBoeSA9IGhvc3QtPm1waHk7Cj4gLQlzdHJ1Y3QgYXJtX3Nt
Y2NjX3JlcyByZXM7Cj4gLQlpbnQgZXJyOwo+IC0JaW50IHJldCA9IDA7Cj4gKwlpbnQgcmV0Owo+
ICAKPiAtCWlmICghbXBoeSB8fCAhKG9uIF4gaG9zdC0+bXBoeV9wb3dlcmVkX29uKSkKPiArCWlm
ICghbXBoeSB8fCBvbiA9PSBob3N0LT5tcGh5X3Bvd2VyZWRfb24pCj4gIAkJcmV0dXJuIDA7Cj4g
IAo+ICAJaWYgKG9uKSB7Cj4gLQkJaWYgKHVmc19tdGtfaXNfdmEwOV9zdXBwb3J0ZWQoaGJhKSkg
ewo+IC0JCQlyZXQgPSByZWd1bGF0b3JfZW5hYmxlKGhvc3QtPnJlZ192YTA5KTsKPiAtCQkJaWYg
KHJldCA8IDApCj4gLQkJCQlnb3RvIG91dDsKPiAtCQkJLyogd2FpdCAyMDAgdXMgdG8gc3RhYmxp
emUgVkEwOSAqLwo+IC0JCQl1c2xlZXBfcmFuZ2UoMjAwLCAyMTApOwo+IC0JCQl1ZnNfbXRrX3Zh
MDlfcHdyX2N0cmwocmVzLCAxKTsKPiAtCQl9Cj4gKwkJcmV0ID0gdWZzX210a18wOXZfb24oaG9z
dCk7Cj4gKwkJaWYgKHJldCkKPiArCQkJcmV0dXJuIHJldDsKPiAgCQlyZXQgPSBwaHlfcG93ZXJf
b24obXBoeSk7Cj4gIAkJaWYgKHJldCkgewo+IC0JCQlpZiAodWZzX210a19pc192YTA5X3N1cHBv
cnRlZChoYmEpKSB7Cj4gLQkJCQl1ZnNfbXRrX3ZhMDlfcHdyX2N0cmwocmVzLCAwKTsKPiAtCQkJ
CWVyciA9IHJlZ3VsYXRvcl9kaXNhYmxlKGhvc3QtPnJlZ192YTA5KTsKPiAtCQkJCWlmIChlcnIp
Cj4gLQkJCQkJZGV2X2VycihoYmEtPmRldiwKPiAtCQkJCQkJImZhaWxlZCB0byB1bndpbmQgdmEw
OTogJWRcbiIsIGVycik7Cj4gLQkJCX0KPiAgCQkJZGV2X2VycihoYmEtPmRldiwgImZhaWxlZCB0
byBlbmFibGUgbXBoeTogJWRcbiIsIHJldCk7Cj4gKwkJCXVmc19tdGtfMDl2X29mZihob3N0LCBm
YWxzZSk7Cj4gIAkJCXJldHVybiByZXQ7Cj4gIAkJfQo+ICAJfSBlbHNlIHsKPiAgCQlwaHlfcG93
ZXJfb2ZmKG1waHkpOwo+IC0JCWlmICh1ZnNfbXRrX2lzX3ZhMDlfc3VwcG9ydGVkKGhiYSkpIHsK
PiAtCQkJdWZzX210a192YTA5X3B3cl9jdHJsKHJlcywgMCk7Cj4gLQkJCXJldCA9IHJlZ3VsYXRv
cl9kaXNhYmxlKGhvc3QtPnJlZ192YTA5KTsKPiAtCQl9Cj4gLQl9Cj4gLW91dDoKPiAtCWlmIChy
ZXQpIHsKPiAtCQlkZXZfaW5mbyhoYmEtPmRldiwKPiAtCQkJICJmYWlsZWQgdG8gJXMgdmEwOTog
JWRcbiIsCj4gLQkJCSBvbiA/ICJlbmFibGUiIDogImRpc2FibGUiLAo+IC0JCQkgcmV0KTsKPiAt
CX0gZWxzZSB7Cj4gLQkJaG9zdC0+bXBoeV9wb3dlcmVkX29uID0gb247Cj4gKwkJcmV0ID0gdWZz
X210a18wOXZfb2ZmKGhvc3QsIHRydWUpOwo+ICsJCWlmIChyZXQpCj4gKwkJCXJldHVybiByZXQ7
CgpbU2V2ZXJpdHk6IEhpZ2hdCkRvZXMgcmV0dXJuaW5nIGVhcmx5IGhlcmUgbGVhdmUgdGhlIG1w
aHlfcG93ZXJlZF9vbiBib29sZWFuIG91dCBvZiBzeW5jIHdpdGgKdGhlIHBoeXNpY2FsIHN0YXRl
PwoKSWYgdWZzX210a18wOXZfb2ZmKCkgZmFpbHMsIHRoZSBlYXJseSByZXR1cm4gc2tpcHMgdXBk
YXRpbmcKaG9zdC0+bXBoeV9wb3dlcmVkX29uID0gb24gKHdoZXJlIG9uIGlzIGZhbHNlKS4gVGhp
cyBsZWF2ZXMgdGhlIHN0YXRlIGFzCnRydWUgZXZlbiB0aG91Z2ggcGh5X3Bvd2VyX29mZihtcGh5
KSBoYXMgYWxyZWFkeSBiZWVuIGNhbGxlZC4KCkJlY2F1c2Ugb2YgdGhlIGVhcmx5IHJldHVybiwg
YSBzdWJzZXF1ZW50IHJlcXVlc3QgdG8gcG93ZXIgb2ZmIHdvdWxkIGV2YWx1YXRlCm9uID09IGhv
c3QtPm1waHlfcG93ZXJlZF9vbiAoZmFsc2UgPT0gdHJ1ZSkgdG8gZmFsc2UsIGNhdXNpbmcgdGhl
IGZ1bmN0aW9uCnRvIGV4ZWN1dGUgcGh5X3Bvd2VyX29mZihtcGh5KSBhZ2FpbiBhbmQgdW5kZXJm
bG93IHRoZSBQSFkgcG93ZXIgY291bnQuCkNvbnZlcnNlbHksIGEgcmVxdWVzdCB0byBwb3dlciBv
biB3b3VsZCBldmFsdWF0ZSB0cnVlID09IHRydWUsIGNhdXNpbmcgYW4KZWFybHkgc3VjY2VzcyBy
ZXR1cm4gd2l0aG91dCBhY3R1YWxseSBwb3dlcmluZyBvbiB0aGUgUEhZLCBwb3RlbnRpYWxseSBi
cmVha2luZwpVRlMgSS9PIHBlcm1hbmVudGx5LgoKPiAgCX0KPiAgCj4gLQlyZXR1cm4gcmV0Owo+
ICsJaG9zdC0+bXBoeV9wb3dlcmVkX29uID0gb247Cj4gKwo+ICsJcmV0dXJuIDA7Cj4gIH0KCi0t
IApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAy
NjEwMTYtbXQ4MTk2LXVmcy12MTQtMC1lOGQ1NjVlMGNkNDVAY29sbGFib3JhLmNvbT9wYXJ0PTcK
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
