Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6A8AFF885A
	for <linux-phy@archiver.kernel.org>; Sun, 26 Apr 2026 00:03:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=n4FlubKyFnTo3CO3OhIdnHkrWXhHDXKfiX7YtYLRH4E=; b=zKn5FzQdwzYfU7
	PgaboC43PbE2WPr0fXSw1xjMxH0bsXANmKw5ArROKqNACa+G3Tw3U2NNkdJKCvIllOs2N3ufb2YE6
	sYIGCW3xjfaj9WdRhKwKOmbtDxVBnTSXI/WCfDi82CDk2B+sXpL8tK4skAM/AL7XNa/KGHYZ4t9zE
	jztIUAwA4wlbJraLl6LKqrHt3wQZCYpDEF0iZanMfmkd26jNoLDgopm2wPjQcvHclTnZ/knMsdIdC
	zCcuBpr7VepXobn1JEqr9Zx6EzvHvWa7cybGehY81aX3xsWo6ormxA/524VClgxHMab5VmJ3eEzdy
	K2s42CCXfUTRcth0BAQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGmxw-0000000F5uL-1R7w;
	Sun, 26 Apr 2026 00:03:16 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGmxt-0000000F5tx-2UOL
	for linux-phy@lists.infradead.org;
	Sun, 26 Apr 2026 00:03:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id EED8342D9B;
	Sun, 26 Apr 2026 00:03:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D6804C2BCB0;
	Sun, 26 Apr 2026 00:03:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777161791;
	bh=+O/Umb/ZYAjq527NytNL00ALTjlEFwQ5skbkPFWkgqQ=;
	h=From:To:Cc:Subject:Date:From;
	b=osHy50LniNL4jDtdCNjXKaH6VqEarx3uxf9xps0723ubaAIzirklHlvUUSWhfakip
	 /eWmWFU6J1M2aqL9QqC1XvYtknzXkpnUVMRQKZVHpOcOfrYVhUb/GrUHds4sNH3LnM
	 LpJ2VCzBOGtIPbaJAR98l94bdOBj4axkyk/ks4XcxGFTSwrRPJJBNfGplwnjw1RbVd
	 BInvibsFMpFWxfkjAlKomQB3bX1oUi/4eXMsxBQCmW1D9DRADr8WT5dlp7dWJoq6Jg
	 U83PITy4cW8o5h/nDUF0jInAVUa18JbzK7bm211YhhWoFjJ4qIumbN9XbZIWIK6ioh
	 UhbOTk/jPfV5w==
From: Sasha Levin <sashal@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Thierry Reding <thierry.reding@kernel.org>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Niklas Cassel <cassel@kernel.org>,
	Vidya Sagar <vidyas@nvidia.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-phy@lists.infradead.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] phy: tegra: xusb: Make USB_CONN_GPIO select conditional on GPIOLIB
Date: Sat, 25 Apr 2026 20:03:09 -0400
Message-ID: <20260426000309.54959-1-sashal@kernel.org>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260425_170313_674162_100627D3 
X-CRM114-Status: GOOD (  12.21  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

a2NvbmZpZ2xpbnQgcmVwb3J0czoKCiAgSzAwNjogY29uZmlnIFBIWV9URUdSQV9YVVNCIHNlbGVj
dHMgVVNCX0NPTk5fR1BJTyB3aGljaCBkZXBlbmRzIG9uCiAgICAgICAgR1BJT0xJQiwgYnV0IFBI
WV9URUdSQV9YVVNCIGRvZXMgbm90IGRlcGVuZCBvbiBHUElPTElCCiAgSzAwMjogY29uZmlnIFBI
WV9URUdSQV9YVVNCIHNlbGVjdHMgdmlzaWJsZSBzeW1ib2wgVVNCX0NPTk5fR1BJTwogICAgICAg
IHdoaWNoIGhhcyBkZXBlbmRlbmNpZXMKClVTQl9DT05OX0dQSU8gd2FzIGludHJvZHVjZWQgaW4g
Y29tbWl0IDQ2MDJmM2JmZjI2NiAoInVzYjogY29tbW9uOiBhZGQgVVNCCkdQSU8gYmFzZWQgY29u
bmVjdGlvbiBkZXRlY3Rpb24gZHJpdmVyIikgd2l0aCBhIGhhcmQgZGVwZW5kZW5jeSBvbiBHUElP
TElCLApzaW5jZSBpdCBuZWVkcyBHUElPIHBpbnMgdG8gZGV0ZWN0IFVTQiBjYWJsZSBjb25uZWN0
aW9uIHN0YXRlLgoKQ29tbWl0IGY2NzIxM2NlZTJiMyAoInBoeTogdGVncmE6IHh1c2I6IEFkZCB1
c2Itcm9sZS1zd2l0Y2ggc3VwcG9ydCIpIGFkZGVkCmBzZWxlY3QgVVNCX0NPTk5fR1BJT2AgdG8g
UEhZX1RFR1JBX1hVU0IgdG8gc3VwcG9ydCBVU0Igcm9sZSBzd2l0Y2hpbmcgdmlhCkdQSU8tYmFz
ZWQgZGV0ZWN0aW9uLiBBdCB0aGF0IHRpbWUsIFBIWV9URUdSQV9YVVNCIGRlcGVuZGVkIG9ubHkg
b24KYEFSQ0hfVEVHUkFgLCBhbmQgYm90aCB0aGUgQVJNMzIgYW5kIEFSTTY0IEFSQ0hfVEVHUkEg
S2NvbmZpZyBkZWZpbml0aW9ucwpzZWxlY3QgR1BJT0xJQiwgc28gdGhlIG1pc3NpbmcgZXhwbGlj
aXQgR1BJT0xJQiBndWFyZCB3YXMgbm90IGEgZnVuY3Rpb25hbApwcm9ibGVtIOKAlCBHUElPTElC
IGlzIGFsd2F5cyBhdmFpbGFibGUgd2hlbiBBUkNIX1RFR1JBIGlzIGVuYWJsZWQuCgpMYXRlciwg
Y29tbWl0IDBkNWM5YmM3YzY4MCAoInBoeTogdGVncmE6IFNlbGVjdCBVU0JfQ09NTU9OIGZvcgp1
c2JfZ2V0X21heGltdW1fc3BlZWQoKSIpIGFkZGVkIGBkZXBlbmRzIG9uIFVTQl9TVVBQT1JUYCBi
dXQgc3RpbGwgZGlkIG5vdAphZGRyZXNzIHRoZSBHUElPTElCIGdhcC4KClRoZSBzZWxlY3QgY2Fu
IGZvcmNlIFVTQl9DT05OX0dQSU8gb24gd2l0aG91dCBpdHMgR1BJT0xJQiBkZXBlbmRlbmN5IGJl
aW5nCnNhdGlzZmllZCBpZiB0aGUgS2NvbmZpZyBkZXBlbmRlbmNpZXMgd2VyZSBldmVyIHJlc3Ry
dWN0dXJlZC4gTWFrZSB0aGUKc2VsZWN0IGNvbmRpdGlvbmFsIHdpdGggYHNlbGVjdCBVU0JfQ09O
Tl9HUElPIGlmIEdQSU9MSUJgIHRvIG1ha2UgdGhlCmRlcGVuZGVuY3kgZXhwbGljaXQuIFRoaXMg
bWlycm9ycyBob3cgb3RoZXIgZHJpdmVycyBoYW5kbGUgb3B0aW9uYWwKR1BJTy1kZXBlbmRlbnQg
c2VsZWN0cyB0aHJvdWdob3V0IHRoZSBrZXJuZWwuCgpBc3Npc3RlZC1ieTogQ2xhdWRlOmNsYXVk
ZS1vcHVzLTQtNiBrY29uZmlnbGludApTaWduZWQtb2ZmLWJ5OiBTYXNoYSBMZXZpbiA8c2FzaGFs
QGtlcm5lbC5vcmc+Ci0tLQogZHJpdmVycy9waHkvdGVncmEvS2NvbmZpZyB8IDIgKy0KIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvcGh5L3RlZ3JhL0tjb25maWcgYi9kcml2ZXJzL3BoeS90ZWdyYS9LY29uZmlnCmluZGV4
IDM0MmZiNzM2ZGE0YjEuLmYwNzM0NDE1ZmM5NGMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGh5L3Rl
Z3JhL0tjb25maWcKKysrIGIvZHJpdmVycy9waHkvdGVncmEvS2NvbmZpZwpAQCAtMyw3ICszLDcg
QEAgY29uZmlnIFBIWV9URUdSQV9YVVNCCiAJdHJpc3RhdGUgIk5WSURJQSBUZWdyYSBYVVNCIHBh
ZCBjb250cm9sbGVyIGRyaXZlciIKIAlkZXBlbmRzIG9uIEFSQ0hfVEVHUkEgJiYgVVNCX1NVUFBP
UlQKIAlzZWxlY3QgVVNCX0NPTU1PTgotCXNlbGVjdCBVU0JfQ09OTl9HUElPCisJc2VsZWN0IFVT
Ql9DT05OX0dQSU8gaWYgR1BJT0xJQgogCXNlbGVjdCBVU0JfUEhZCiAJaGVscAogCSAgQ2hvb3Nl
IHRoaXMgb3B0aW9uIGlmIHlvdSBoYXZlIGFuIE5WSURJQSBUZWdyYSBTb0MuCi0tIAoyLjUzLjAK
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
