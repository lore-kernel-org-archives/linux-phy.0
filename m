Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79A19C55172
	for <linux-phy@archiver.kernel.org>; Tue,  4 Aug 2026 07:22:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WqQtph92aqY+8t3Jg9m1IJ4ZH3VeerD8uFhr9S+HDqc=; b=nE9ni9czbPIpux
	Qaosr0p9Xsxz90INBUa7Bof3CFZpvN2ECEiRWcGn5aZ8oTaB83TZwjB8tklC+ZZ6yT+cOXtXnCzm4
	lU6jKGbqi8BRILiPVJCrDK57pP+wv7vzosbdDamtTeAIOLLXLDI5ZZa01BgBRLfQT4w6WpxL2VLv3
	W+hR3CjUPM1OOH1yuTNepMATTCkTWiZoBcii43JXI1uK2VpEQXLqabVnKWMUg3QPz0pk/+p5Kywn2
	4vTT0k+hndLvc1klrWqHCQ0IpqM3QMT5Du8IMGO6UBcUgPR+vxbMkdaZ3FzeiDyQVDTxv1z+PXnbj
	NBp3GyQBbsptsNe2deDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wr9UE-00000001EDA-0sPw;
	Tue, 04 Aug 2026 07:22:54 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wr9UD-00000001ED1-1Rt8
	for linux-phy@lists.infradead.org;
	Tue, 04 Aug 2026 07:22:53 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D30F160A59;
	Tue,  4 Aug 2026 07:22:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4BFC71F000E9;
	Tue,  4 Aug 2026 07:22:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785828171;
	bh=PSpfewWeW10lw1dE3Xclc1neq3YTzepdfNkePBi8HuQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=h+Z6LrVPc+GN55cHfYXEbqkgCpBmv2hmHYdIxHoTMSGgeqYJwOad1wHzYERtUM3Ho
	 eIZ2eKcSb11pCk2Afeg0wM1bQMc3GC+0f0fFIGy7NIlsVaBokwrHntqIPg/WB3pReY
	 z6a/XcbTg5SANKpiWnfJiGt8D37QnTyg6/X2iR6WSsKq1gwXfs2rU3MvXjUZOTxFbV
	 itveYZ6QcELsuBerAyLWypdlw/9nAxQVqxj7CIF+U5LKf4Z8Ek157UW3vlbdMH8u1/
	 tSDQMsIBx8AtMMDBfBARDqgz0EQLx82oCzG18YZadQHSJd7gdLz/Y/ymyZ1+cdI/Ds
	 3i1SEiVaPQEXQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 4/7] drm/bridge: aux: Add
 drm_aux_bridge_register_from_node()
To: "Chaoyi Chen" <kernel@airkyi.com>
Cc: dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org, olteanv@gmail.com, vkoul@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260804070730.68-5-kernel@airkyi.com>
References: <20260804070730.68-1-kernel@airkyi.com>
 <20260804070730.68-5-kernel@airkyi.com>
Date: Tue, 04 Aug 2026 07:22:50 +0000
Message-Id: <20260804072251.4BFC71F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIGRybV9hdXhfYnJpZGdl
X3JlZ2lzdGVyX2Zyb21fbm9kZSgpIGFzc2lnbnMgdGhlIHByb3ZpZGVkIGRldmljZSBub2RlIHdp
dGhvdXQgdGFraW5nIGEgcmVmZXJlbmNlLCBsZWFkaW5nIHRvIGEgcmVmZXJlbmNlIGNvdW50IHVu
ZGVyZmxvdyB3aGVuIHRoZSBkZXZpY2UgaXMgcmVsZWFzZWQgb3IgaW5pdGlhbGl6YXRpb24gZmFp
bHMuCi0tCgotLS0gUGF0Y2ggWzRdOiBbUEFUQ0ggdjYgNC83XSBkcm0vYnJpZGdlOiBhdXg6IEFk
ZCBkcm1fYXV4X2JyaWRnZV9yZWdpc3Rlcl9mcm9tX25vZGUoKSAtLS0KY29tbWl0IDU4OWY2YmMy
MGU4NmU0MWZjZDNmYjE3YzAxZWY1MmNlY2VmYThhODIKQXV0aG9yOiBDaGFveWkgQ2hlbiA8Y2hh
b3lpLmNoZW5Acm9jay1jaGlwcy5jb20+Cgpkcm0vYnJpZGdlOiBhdXg6IEFkZCBkcm1fYXV4X2Jy
aWRnZV9yZWdpc3Rlcl9mcm9tX25vZGUoKQoKVGhpcyBjb21taXQgaW50cm9kdWNlcyBkcm1fYXV4
X2JyaWRnZV9yZWdpc3Rlcl9mcm9tX25vZGUoKSB0byBhbGxvdwpzcGVjaWZ5aW5nIHRoZSBvZl9u
b2RlIGNvcnJlc3BvbmRpbmcgdG8gdGhlIGJyaWRnZSwgZXh0ZW5kaW5nIHRoZQpleGlzdGluZyBk
cm1fYXV4X2JyaWRnZV9yZWdpc3RlcigpIGZ1bmN0aW9uYWxpdHkuCgo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vYnJpZGdlL2F1eC1icmlkZ2UuYyBiL2RyaXZlcnMvZ3B1L2RybS9icmlk
Z2UvYXV4LWJyaWRnZS5jCj4gaW5kZXggMWVkMjFhODcxM2JmZC4uMDZhMTQ2NmY0OWJkMiAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2F1eC1icmlkZ2UuYwo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9icmlkZ2UvYXV4LWJyaWRnZS5jClsgLi4uIF0KPiBAQCAtNjIsNyArNjMs
MTAgQEAgaW50IGRybV9hdXhfYnJpZGdlX3JlZ2lzdGVyKHN0cnVjdCBkZXZpY2UgKnBhcmVudCkK
PiAgCWFkZXYtPmRldi5wYXJlbnQgPSBwYXJlbnQ7Cj4gIAlhZGV2LT5kZXYucmVsZWFzZSA9IGRy
bV9hdXhfYnJpZGdlX3JlbGVhc2U7Cj4gIAo+IC0JZGV2aWNlX3NldF9vZl9ub2RlX2Zyb21fZGV2
KCZhZGV2LT5kZXYsIHBhcmVudCk7Cj4gKwlpZiAobnApCj4gKwkJZGV2aWNlX3NldF9ub2RlKCZh
ZGV2LT5kZXYsIG9mX2Z3bm9kZV9oYW5kbGUobnApKTsKCltTZXZlcml0eTogSGlnaF0KRG9lcyB0
aGlzIGNvZGUgbmVlZCB0byB0YWtlIGEgcmVmZXJlbmNlIG9uIG5wIGJlZm9yZSBzZXR0aW5nIGl0
PwoKTG9va2luZyBhdCBkZXZpY2Vfc2V0X29mX25vZGVfZnJvbV9kZXYoKSwgaXQgY29ycmVjdGx5
IGFjcXVpcmVzIGEgcmVmZXJlbmNlCnVzaW5nIG9mX25vZGVfZ2V0KCkuIEhvd2V2ZXIsIGRldmlj
ZV9zZXRfbm9kZSgpIG9ubHkgYXNzaWducyB0aGUgcG9pbnRlcgp3aXRob3V0IHRha2luZyBhIHJl
ZmVyZW5jZS4KCklmIGluaXRpYWxpemF0aW9uIGZhaWxzLCB0aGUgZXJyb3IgcGF0aCB1bmNvbmRp
dGlvbmFsbHkgZHJvcHMgYSByZWZlcmVuY2U6CgoJcmV0ID0gYXV4aWxpYXJ5X2RldmljZV9pbml0
KGFkZXYpOwoJaWYgKHJldCkgewoJCW9mX25vZGVfcHV0KGFkZXYtPmRldi5vZl9ub2RlKTsKCQku
Li4KCkFkZGl0aW9uYWxseSwgZHJtX2F1eF9icmlkZ2VfcmVsZWFzZSgpIHVuY29uZGl0aW9uYWxs
eSBjYWxscyBvZl9ub2RlX3B1dCgpCndoZW4gdGhlIGRldmljZSBpcyByZWxlYXNlZC4KCkNvdWxk
IGFzc2lnbmluZyB0aGUgbm9kZSBoZXJlIHdpdGhvdXQgb2Zfbm9kZV9nZXQoKSBjYXVzZSBhIHJl
ZmVyZW5jZSBjb3VudAp1bmRlcmZsb3cgYW5kIGEgcG90ZW50aWFsIHVzZS1hZnRlci1mcmVlIGZv
ciB0aGUgcHJvdmlkZWQgbm9kZT8KCj4gKwllbHNlCj4gKwkJZGV2aWNlX3NldF9vZl9ub2RlX2Zy
b21fZGV2KCZhZGV2LT5kZXYsIHBhcmVudCk7Cj4gIAo+ICAJcmV0ID0gYXV4aWxpYXJ5X2Rldmlj
ZV9pbml0KGFkZXYpOwo+ICAJaWYgKHJldCkgewoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0
dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDgwNDA3MDczMC42OC0xLWtlcm5lbEBh
aXJreWkuY29tP3BhcnQ9NAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
