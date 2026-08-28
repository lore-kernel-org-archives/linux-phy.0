Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC04FC61DD3
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 13:54:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gc4EI/1SVMeRCfF+aBquWQ395s4L6Q4ryTZudhVaGJ4=; b=ybCEdoIvqabQkn
	mDoRzu6Tjz59kUyQwsihHE0cffzE+q1wsbDz3BM2juGYZJLH6V77AS3FdqrWU4W7DBP4ce9uJ4jeh
	PguNxwlutogpG9ljUsFTWMbYfKHcPZqQrAmHTrniJrotkfAYoPKoMtoHADoc2svO5yFMrlQp8mK6m
	6o5bgkcC8p1ZCPkRNzbEhbBNfFItTanxW7x8HTnICTx+Jq0UlrmmYD8gD5nC6xOAxFxrZ3l46cQta
	Oo798fSaBAXt2fPmZgZxrA1g412q/LoCN+lndi0bWhwu7z3Z1RkqIlPacy2O7gcvCnKvO5GMizvpy
	jAccT2Tvbf/M4dIyu9UQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzx2m-00000005vIR-2Sec;
	Fri, 28 Aug 2026 13:54:56 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzx2k-00000005vI0-40VJ
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 13:54:55 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B475642A30;
	Fri, 28 Aug 2026 13:54:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0587F1F000E9;
	Fri, 28 Aug 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787925294;
	bh=96OwOsL1l2yAJqxPI/hni50q62ZN/A7zwClCByUvxj8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=VQh3BmR7i4/ZES0gsv1LafLfH9c2er8iVEg/6p+fSwKDrC1wHW4lsurAnJ+C7ckpX
	 9B+YhVuCsdMF3gsiFkDuOXW+Sv/EVbbDmPmkyL9UNhH1LQVux4XerrjsXpqICNRre7
	 ocbKWaMarFJHTkp1RqGKPTOErLOOdY+Mpf07jhM9urWxQ4kcuE5Z2UAferRlqF3un8
	 PD5KKGn9apxYyjWVAD+ZybKVvkZgjwagM8DbPy3O+A9/Xx9RS4Pf+gVdAxzS1EFPaW
	 Mzvq+X73CGF+aVN4C9CwVTgCMq2OD6l/n18en0QYlvp/0VVdRm8fKI0veh0UYsl33v
	 qO4OBk7hN/wOg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 05/15] drm/bridge: inno-hdmi: Allow the register map
 to come from a parent
To: "Michal Wilczynski" <m.wilczynski@samsung.com>
Cc: mfd@lists.linux.dev, conor+dt@kernel.org, vkoul@kernel.org, devicetree@vger.kernel.org, linux-clk@vger.kernel.org, lee@kernel.org, dri-devel@lists.freedesktop.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, olteanv@gmail.com, robh@kernel.org
In-Reply-To: <20260828-jh7110-clean-send-v2-5-331680c8b9d1@samsung.com>
References: <20260828-jh7110-clean-send-v2-0-331680c8b9d1@samsung.com>
 <CGME20260828134822eucas1p15d7a98e2e05c51aaacaac5e946337d07@eucas1p1.samsung.com>
 <20260828-jh7110-clean-send-v2-5-331680c8b9d1@samsung.com>
Date: Fri, 28 Aug 2026 13:54:53 +0000
Message-Id: <20260828135454.0587F1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVW5pbml0aWFsaXpl
ZCB2YXJpYWJsZSAndmFsJyBpcyByZXR1cm5lZCBpZiByZWdtYXBfcmVhZCgpIGZhaWxzCi0tCgpj
b21taXQgYTZiZjc5NjYzNTQ5OWZmOGNlYzk0YTFmYjg3ZjBlNWU0ZmM2Njg5NwpBdXRob3I6IE1p
Y2hhbCBXaWxjenluc2tpIDxtLndpbGN6eW5za2lAc2Ftc3VuZy5jb20+Cgpkcm0vYnJpZGdlOiBp
bm5vLWhkbWk6IEFsbG93IHRoZSByZWdpc3RlciBtYXAgdG8gY29tZSBmcm9tIGEgcGFyZW50CgpU
aGlzIGNvbW1pdCB1cGRhdGVzIHRoZSBpbm5vLWhkbWkgZHJpdmVyIHRvIHVzZSBhIHJlZ21hcCBz
dXBwbGllZCBieSB0aGUKcGFyZW50IGRldmljZSBpZiBhdmFpbGFibGUsIGZhbGxpbmcgYmFjayB0
byBtYXBwaW5nIGl0cyBvd24gcmVzb3VyY2UKb3RoZXJ3aXNlLiBUaGlzIGFsbG93cyBzaGFyaW5n
IHRoZSByZWdpc3RlciBzcGFjZSBvbiBTb0NzIHdoZXJlIHRoZSBIRE1JCmNvbnRyb2xsZXIgZG9l
cyBub3QgZXhjbHVzaXZlbHkgb3duIHRoZSByZWdpc3RlciB3aW5kb3cuCgo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2lubm8taGRtaS5jIGIvZHJpdmVycy9ncHUvZHJtL2Jy
aWRnZS9pbm5vLWhkbWkuYwo+IGluZGV4IDEyZmQyMDhkNWU4NTIuLmViYzUwOTNmMTNhYzQgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9pbm5vLWhkbWkuYwo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9icmlkZ2UvaW5uby1oZG1pLmMKClsgLi4uIF0KCj4gQEAgLTQ3MCwxMSAr
NDcxLDIzIEBAIHN0YXRpYyBpbnQgaW5ub19oZG1pX2ZpbmRfcGh5X2NvbmZpZyhzdHJ1Y3QgaW5u
b19oZG1pICpoZG1pLAo+ICAKPiAgc3RhdGljIGlubGluZSB1OCBoZG1pX3JlYWRiKHN0cnVjdCBp
bm5vX2hkbWkgKmhkbWksIHUxNiBvZmZzZXQpCj4gIHsKPiArCXUzMiB2YWw7Cj4gKwo+ICsJaWYg
KGhkbWktPnJlZ21hcCkgewo+ICsJCXJlZ21hcF9yZWFkKGhkbWktPnJlZ21hcCwgb2Zmc2V0ICog
NCwgJnZhbCk7Cj4gKwkJcmV0dXJuIHZhbDsKCltTZXZlcml0eTogTWVkaXVtXQpEb2VzIHRoaXMg
cmV0dXJuIHVuaW5pdGlhbGl6ZWQgc3RhY2sgbWVtb3J5IGlmIHJlZ21hcF9yZWFkKCkgZmFpbHM/
CgpJZiByZWdtYXBfcmVhZCgpIGZhaWxzIChlLmcuLCBkdWUgdG8gYW4gb3V0LW9mLWJvdW5kcyBv
ZmZzZXQsIGRpc2FibGVkCmNsb2NrLCBvciBvdGhlciByZWdtYXAgY29uZmlndXJhdGlvbiBpc3N1
ZXMpLCBpdCByZXR1cm5zIGEgbmVnYXRpdmUgZXJyb3IKY29kZSBhbmQgZG9lcyBub3QgcG9wdWxh
dGUgdmFsLiBUaGUgZnVuY3Rpb24gYXBwZWFycyB0byBpZ25vcmUgdGhlIHJldHVybgp2YWx1ZSBh
bmQgYmxpbmRseSByZXR1cm5zIHRoZSB1bmluaXRpYWxpemVkIHN0YWNrIHZhcmlhYmxlLiBDYWxs
ZXJzIHRoYXQKdXNlIHRoaXMgdmFsdWUgZm9yIGhhcmR3YXJlIGxvZ2ljIG1pZ2h0IGJlaGF2ZSBl
cnJhdGljYWxseSBpZiByYW5kb20gc3RhY2sKZGF0YSBpcyBpbnRlcnByZXRlZCBhcyByZWdpc3Rl
ciBjb250ZW50cy4KCj4gKwl9Cj4gKwo+ICAJcmV0dXJuIHJlYWRsX3JlbGF4ZWQoaGRtaS0+cmVn
cyArIChvZmZzZXQpICogMHgwNCk7Cj4gIH0KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRw
czovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA4Mjgtamg3MTEwLWNsZWFuLXNlbmQtdjIt
MC0zMzE2ODBjOGI5ZDFAc2Ftc3VuZy5jb20/cGFydD01CgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
