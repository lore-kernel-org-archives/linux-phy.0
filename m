Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C834C5AC82
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 11:56:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Wt+MgGFrxA688Vxwp60kxYAG9RbcBl1Inw0r16I5ME=; b=iuRpmc4phb9KhU
	UM9/Fjf+99arVfAlSC4zXzxMTEJ8EahdFc+Xz4+u0nEfClfJrId0t9u2kNq25MYYcEfuQi1TW0u6Y
	AhdiuFjfG3tsLLzBmS8yRO1VMUgK0BE/6fzFCbK0/QjsYN5Obxev4OzlAYMO0tofj5XsI4Sz46x4h
	BrrkGU2HbihW1PF8VLe7kz3C2TPz2cy3xHM22PMwakmyb0UhO5byJ5tTBcOLwXxmmTN8dQ+6wB/ue
	3YrXh2flIYaSfD91Gbo6ojt0VWkniINEb8qXNK9bPyosppAf6YmeUvkB+BY2xN3aLA9x/NX03wB3L
	O7wF3whDi40Z31bv1raA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOcW-0000000BgKR-3BTf;
	Mon, 10 Aug 2026 11:56:44 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOcU-0000000BgKJ-42EZ
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 11:56:43 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1BD5260052;
	Mon, 10 Aug 2026 11:56:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 949081F00A3A;
	Mon, 10 Aug 2026 11:56:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786363001;
	bh=fWImWeNvQrGFxghidMcsgY4EnYILAlnxWZzcqDX2Iek=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=S56NeaopXYHSBhShCEHN9CyClUe+1a+mtUUtcq0Lke4SGIE5iQFQpmdnFYIuAO+45
	 urnurPD1Y+ObpR5ffJFP6MhYSHFGNdDBmMCt0DWGWxhIltWJ9bFE33wWKQhfOpQVmC
	 L9+MkttboHFNVo+HxyH3+El62vbnCte51UOcmZOJda4puTTU4Tpa/waUv9z/sMdyDy
	 yhaXboLW30uZAgOvXvXpARUUferAVuLYTh+6iFPWNEVMDsBiLHSSZ+IZ47jV9UfxTx
	 GEvgh0BKJYy/Wxpc25e+OpbguueOJlWs8e5NSmeXGabdKcmOcAyiT7bx0nJ52xxSP7
	 abXmReNhUMpHw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 08/10] phy: qcom-ipq806x-usb: support the MSM8974 SS PHY
 parameters
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>
Cc: neil.armstrong@linaro.org, robh@kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, vkoul@kernel.org
In-Reply-To: <20260810-msm8974-usb3-v1-8-1a47e1185524@oss.qualcomm.com>
References: <20260810-msm8974-usb3-v1-0-1a47e1185524@oss.qualcomm.com>
 <20260810-msm8974-usb3-v1-8-1a47e1185524@oss.qualcomm.com>
Date: Mon, 10 Aug 2026 11:56:38 +0000
Message-Id: <20260810115639.949081F00A3A@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFVuY29uZGl0aW9uYWwg
bW9kaWZpY2F0aW9uIG9mIHNoYXJlZCBJUFE4MDZ4IEhTIFBIWSBpbml0aWFsaXphdGlvbiBpbnRy
b2R1Y2VzIGEgaGFyZHdhcmUgcmVncmVzc2lvbiBhbmQgY29udHJhZGljdHMgdGhlIGNvbW1pdCBt
ZXNzYWdlLgotIFtMb3ddIFRoZSBQSFlfUEFSQU1fQ1RSTDFfTUFTSyBtYWNybyBpcyBsZWZ0IGFz
IHVudXNlZCBkZWFkIGNvZGUuCi0tCgotLS0gUGF0Y2ggWzhdOiBbUEFUQ0ggMDgvMTBdIHBoeTog
cWNvbS1pcHE4MDZ4LXVzYjogc3VwcG9ydCB0aGUgTVNNODk3NCBTUyBQSFkgcGFyYW1ldGVycyAt
LS0KY29tbWl0IGJhODJjYjc0MWE1NzY3MmZkODExMzU0MjUyMGQ1MTAxMDRjMjI0ZDIKQXV0aG9y
OiBEbWl0cnkgQmFyeXNoa292IDxkbWl0cnkuYmFyeXNoa292QG9zcy5xdWFsY29tbS5jb20+Cgpw
aHk6IHFjb20taXBxODA2eC11c2I6IHN1cHBvcnQgdGhlIE1TTTg5NzQgU1MgUEhZIHBhcmFtZXRl
cnMKClRoaXMgY29tbWl0IGFkZHMgcGxhdGZvcm0gZGF0YSBmb3IgdGhlIE1TTTg5NzQgY29tcGF0
aWJsZSBpbiB0aGUgSVBRODA2eCBVU0IKUEhZIGRyaXZlci4gSXQgbW9kaWZpZXMgcWNvbV9pcHE4
MDZ4X3VzYl9zc19waHlfaW5pdCgpIHRvIHVzZSBkeW5hbWljIFNTIFBIWQpwYXJhbWV0ZXJzIGlu
c3RlYWQgb2YgaGFyZGNvZGluZyBJUFE4MDZ4LXNwZWNpZmljIHZhbHVlcy4gVGhpcyBlbnN1cmVz
IHRoZQpjb3JyZWN0IGxhdW5jaCBhbXBsaXR1ZGVzIGFyZSB1c2VkIGZvciBNU004OTc0LgoKW1Nl
dmVyaXR5OiBIaWdoXQpEb2VzIHRoaXMgY29kZSB1bmNvbmRpdGlvbmFsbHkgYXBwbHkgdGhlIGFj
dGl2ZS1sb3cgY2xhbXAgZGlzYWJsZSBiaXQ/Cgpkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNv
bS1pcHE4MDZ4LXVzYi5jOnFjb21faXBxODA2eF91c2JfaHNfcGh5X2luaXQoKSB7Cgl2YWwgPSBI
U1VTQl9DVFJMX0RQU0VIVl9DTEFNUCB8IEhTVVNCX0NUUkxfRE1TRUhWX0NMQU1QIHwKCQlIU1VT
Ql9DVFJMX1JFVEVOQUJMRU4gIHwgSFNVU0JfQ1RSTF9DT01NT05PTk4gfAoJCUhTVVNCX0NUUkxf
T1RHU0VTU1ZMRF9DTEFNUCB8IEhTVVNCX0NUUkxfSURfSFZfQ0xBTVAgfAoJCUhTVVNCX0NUUkxf
VVRNSV9PVEdfVkJVU19WQUxJRCB8IEhTVVNCX0NUUkxfVVRNSV9DTEtfRU4gfAoJCUhTVVNCX0NU
UkxfQ0xBTVBfRU4gfCBIU1VTQl9DTEFNUF9NUE1fRFBTRV9ETVNFX0VOX04gfAoJCXBoeV9kd2Mz
LT5kcnZkYXRhLT5mc2VsOwogICAgLi4uCgl3cml0ZWwodmFsLCBwaHlfZHdjMy0+YmFzZSArIEhT
VVNCX1BIWV9DVFJMX1JFRyk7CiAgICAuLi4KfQoKVGhpcyBjb21wbGV0ZWx5IG92ZXJ3cml0ZXMg
dGhlIFBIWV9DVFJMIHJlZ2lzdGVyIGZvciBhbGwgcGxhdGZvcm1zLiBDYW4gdGhpcwppbnRyb2R1
Y2UgYSBoYXJkd2FyZSByZWdyZXNzaW9uIGZvciBvbGRlciBJUFE4MDZ4IGhhcmR3YXJlIGJ5IHNl
bmRpbmcgYW4KdW5pbnRlbmRlZCBhY3RpdmUtbG93IGNsYW1wLWRpc2FibGUgYml0PwoKQWxzbywg
ZG9lcyB0aGlzIGNvbnRyYWRpY3QgdGhlIGNvbW1pdCBtZXNzYWdlJ3MgY2xhaW0gdGhhdCBNU004
OTc0IG11c3Qgbm90Cm92ZXJ3cml0ZSB0aGUgd2hvbGUgUEhZX0NUUkwgcmVnaXN0ZXI/CgpGaW5h
bGx5LCBhcmUgdGhlcmUgcmVkdW5kYW50LCBkdXBsaWNhdGVkIGJpdCBkZWZpbml0aW9ucyBmb3Ig
QklUKDI2KSBpbiB0aGUKc2FtZSBmaWxlPwoKZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20t
aXBxODA2eC11c2IuYyB7CiAgICAuLi4KI2RlZmluZSBIU1VTQl9DTEFNUF9NUE1fRFBTRV9ETVNF
X0VOX04JQklUKDI2KQogICAgLi4uCn0KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3F1YWxj
b21tL3BoeS1xY29tLWlwcTgwNngtdXNiLmMgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNv
bS1pcHE4MDZ4LXVzYi5jCj4gaW5kZXggODZlOGU4NjlhNzQzZi4uMzVhYmU5YWUwNTQyOSAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1pcHE4MDZ4LXVzYi5jCj4g
KysrIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20taXBxODA2eC11c2IuYwpbIC4uLiBd
Cj4gQEAgLTQzMywxOCArNDM4LDIyIEBAIHN0YXRpYyBpbnQgcWNvbV9pcHE4MDZ4X3VzYl9zc19w
aHlfaW5pdChzdHJ1Y3QgcGh5ICpwaHkpCj4gIAkgKiBUWF9ERUVNUEhfM181REIgWzEzOjhdIHNl
dCBiYXNlZCBvbiBTb0MgdmVyc2lvbgo+ICAJICogTE9TX0JJQVMgWzc6M10gdG8gOQo+ICAJICov
Cj4gLQlkYXRhID0gcmVhZGwocGh5X2R3YzMtPmJhc2UgKyBTU1VTQl9QSFlfUEFSQU1fQ1RSTF8x
KTsKPiAtCj4gLQlkYXRhICY9IH5QSFlfUEFSQU1fQ1RSTDFfTUFTSzsKCltTZXZlcml0eTogTG93
XQpJcyB0aGUgUEhZX1BBUkFNX0NUUkwxX01BU0sgbWFjcm8gbGVmdCBhcyB1bnVzZWQgZGVhZCBj
b2RlIG5vdyB0aGF0IGl0cyB1c2FnZQpoYXMgYmVlbiByZW1vdmVkIGhlcmU/Cgo+IC0KPiAtCWRh
dGEgfD0gUEhZX1BBUkFNX0NUUkwxX1RYX0ZVTExfU1dJTkcoMHg2ZSkgfAo+IC0JCVBIWV9QQVJB
TV9DVFJMMV9UWF9ERUVNUEhfNkRCKDB4MjApIHwKPiAtCQlQSFlfUEFSQU1fQ1RSTDFfVFhfREVF
TVBIXzNfNURCKHBoeV9kd2MzLT50eF9kZWFtcF8zXzVkYikgfAo+IC0JCVBIWV9QQVJBTV9DVFJM
MV9MT1NfTEVWRUwoMHg5KSB8Cj4gLQkJUEhZX1BBUkFNX0NUUkwxX0xPU19CSUFTKDB4MCk7Cj4g
KwltYXNrID0gUEhZX1BBUkFNX0NUUkwxX1RYX0ZVTExfU1dJTkdfTUFTSyB8Cj4gKwkgICAgICAg
UEhZX1BBUkFNX0NUUkwxX1RYX0RFRU1QSF8zXzVEQl9NQVNLIHwKPiArCSAgICAgICBQSFlfUEFS
QU1fQ1RSTDFfTE9TX0xFVkVMX01BU0sgfAo+ICsJICAgICAgIFBIWV9QQVJBTV9DVFJMMV9MT1Nf
QklBU19NQVNLOwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYv
Iy9wYXRjaHNldC8yMDI2MDgxMC1tc204OTc0LXVzYjMtdjEtMC0xYTQ3ZTExODU1MjRAb3NzLnF1
YWxjb21tLmNvbT9wYXJ0PTgKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
