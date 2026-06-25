Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46009CDE000
	for <linux-phy@archiver.kernel.org>; Thu, 25 Jun 2026 17:58:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8kPtnoGjgzIK0JnMa9C4CcmCPELKtja/PlmU5vfHVRs=; b=vmOKwpHDrhT+EU
	kS3EKNyxJKpzjxQDuk0qML8zIIWULdpP8akoVMzYsPBPgcOn/3NThv9sGehzld3wNXfU67Icqij4v
	oW/Y3xhwpk9U+slj0dekPo8s+cdlVi5DjZhRdXC0FdZGbjnqr4M8pBul08uv8NW+sSWvlLxgGcTXc
	qEJHvaFy1WJYMNyKsFTCr9fRpIP1KFg9qttfQ4LZvcRZ2vmBpMPbT1Gnf/gdOpiVylCmlZVRwvFdz
	zFHkY1F3XbRyir8EFr8dbvXazsQ3ZYELiJJQ+n1O60LMXhEoPu3WjW1TecrUvmuvJzo/k+Qw2Yjtl
	TGOoKtBugyyZlNezBGtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcoLV-00000009eQf-1fms;
	Thu, 25 Jun 2026 17:58:37 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcoLU-00000009eQV-2ocq
	for linux-phy@lists.infradead.org;
	Thu, 25 Jun 2026 17:58:36 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D3A3360098;
	Thu, 25 Jun 2026 17:58:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC26D1F000E9;
	Thu, 25 Jun 2026 17:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782410315;
	bh=LFxr+kkazsL5eaKgPpO7yTdT4eGb9hozazGeuujrHdA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Mj4Hf1uWMfCeXBS7WjMGsYsLy6gnKsv0LuRU3fMYjVsxyRcHD9ZNF0T6p5KZ0MXRq
	 5Su/oBjQiRrqMIGLxlXeFO8haHYYlsoavbq+95jz4n8SvxQcX2Pb7JAHD+/NAYgIsc
	 8Ryyk0NfeG96FPGXYgnLrZOWNz8ZrL1ba3e5RJESSR7sLZHmgkbqHdEEq3YhiWDlKE
	 rCIhOVHPbSLUXi5w5qvncktev3vZ1qZb0vTRsemXaJdEPh4rLXYOxdbJjTAhAVLIHd
	 I8X8MICUrxZtzwpMgPG08S6phivnYWZdN58pG66aCh1zAcMCYJu+nyjPd/7KbI61zX
	 DRNZYSD0b7OtQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 06/27] phy: rockchip: usbdp: Drop seamless DP
 takeover
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: conor+dt@kernel.org, robh@kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, olteanv@gmail.com, devicetree@vger.kernel.org
In-Reply-To: <20260625-rockchip-usbdp-cleanup-v7-6-38eb3cf654fd@collabora.com>
References: <20260625-rockchip-usbdp-cleanup-v7-0-38eb3cf654fd@collabora.com>
 <20260625-rockchip-usbdp-cleanup-v7-6-38eb3cf654fd@collabora.com>
Date: Thu, 25 Jun 2026 17:58:33 +0000
Message-Id: <20260625175834.AC26D1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFVuY29uZGl0aW9uYWxs
eSBkaXNhYmxpbmcgdGhlIERQIFBIWSBkdXJpbmcgcHJvYmUgY2FuIGNhdXNlIGEgZmF0YWwgYnVz
IHN0YWxsIGlmIHRoZSBib290bG9hZGVyIGxlZnQgdGhlIGRpc3BsYXkgcGlwZWxpbmUgYWN0aXZl
LgotLQoKY29tbWl0IGM5MTVkMDU2NWQyYmZlNjg1MWVhMjVkMGY3ZDA5OWY3MGEyMjcwM2YKQXV0
aG9yOiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4K
CnBoeTogcm9ja2NoaXA6IHVzYmRwOiBEcm9wIHNlYW1sZXNzIERQIHRha2VvdmVyCgpUaGlzIGNv
bW1pdCByZW1vdmVzIHNlYW1sZXNzIERQIHRha2VvdmVyIHN1cHBvcnQgYnkgdW5jb25kaXRpb25h
bGx5IGRpc2FibGluZwp0aGUgRFAgUEhZIGR1cmluZyBpbml0aWFsIHN0YXR1cyBjaGVja3MuIEl0
IGFpbXMgdG8gcHJldmVudCBjbG9jayByZXNvdXJjZQpsZWFrcyBvbiBtb2R1bGUgcmVtb3ZhbCBz
aW5jZSB0aGUgRFJNIHN0YWNrIGRvZXMgbm90IHlldCBzdXBwb3J0IHNlYW1sZXNzCnRha2VvdmVy
LgoKQ2xvc2VzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1waHkvMjAyNjA2MTIxNjQx
MDcuQzdEQjIxRjAwMEU5QHNtdHAua2VybmVsLm9yZy8KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
cGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jIGIvZHJpdmVycy9waHkvcm9ja2NoaXAv
cGh5LXJvY2tjaGlwLXVzYmRwLmMKPiAtLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9j
a2NoaXAtdXNiZHAuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11
c2JkcC5jCj4gQEAgLTkzOSw5ICs5MzksOSBAQCBzdGF0aWMgaW50IHJrX3VkcGh5X2dldF9pbml0
aWFsX3N0YXR1cyhzdHJ1Y3QgcmtfdWRwaHkgKnVkcGh5KQo+ICAKPiAgCXJlZ21hcF9yZWFkKHVk
cGh5LT5wbWFfcmVnbWFwLCBDTU5fTEFORV9NVVhfQU5EX0VOX09GRlNFVCwgJnZhbHVlKTsKPiAg
CWlmIChGSUVMRF9HRVQoQ01OX0RQX0xBTkVfTVVYX0FMTCwgdmFsdWUpICYmIEZJRUxEX0dFVChD
TU5fRFBfTEFORV9FTl9BTEwsIHZhbHVlKSkKPiAtCQl1ZHBoeS0+c3RhdHVzID0gVURQSFlfTU9E
RV9EUDsKPiAtCWVsc2UKPiAtCQlya191ZHBoeV9kaXNhYmxlKHVkcGh5KTsKPiArCQlkZXZfZGJn
KHVkcGh5LT5kZXYsICJTdGFydGVkIHdpdGggRFAgUEhZIHByZS1lbmFibGVkOyBzZWFtbGVzcyB0
YWtlb3ZlciB1bnN1cHBvcnRlZFxuIik7Cj4gKwo+ICsJcmtfdWRwaHlfZGlzYWJsZSh1ZHBoeSk7
CgpbU2V2ZXJpdHk6IEhpZ2hdCldpbGwgdGhpcyB1bmNvbmRpdGlvbmFsIGNhbGwgdG8gcmtfdWRw
aHlfZGlzYWJsZSgpIGNhdXNlIGEgZmF0YWwgYnVzIHN0YWxsCmlmIHRoZSBib290bG9hZGVyIGxl
ZnQgdGhlIGRpc3BsYXkgcGlwZWxpbmUgYWN0aXZlPwoKSWYgdGhlIGJvb3Rsb2FkZXIgbGVhdmVz
IHRoZSBEUCBQSFkgZW5hYmxlZCBhbmQgc3RyZWFtaW5nIGZvciBhIHNwbGFzaApzY3JlZW4sIHRo
ZSBWaWRlbyBPdXRwdXQgUHJvY2Vzc29yIChWT1ApIGlzIGFjdGl2ZWx5IHB1c2hpbmcgcGl4ZWxz
IHRvIHRoZQpQSFkgYW5kIGRlcGVuZGluZyBvbiBpdHMgY2xvY2tzLgoKQnkgc2h1dHRpbmcgZG93
biB0aGUgUEhZLCBjdXR0aW5nIGl0cyBjbG9ja3MsIGFuZCBhc3NlcnRpbmcgcmVzZXRzIGhlcmUK
YmVmb3JlIHRoZSBWT1AgaXMgc3RvcHBlZCwgdGhlIFZPUCBjb3VsZCBzdGFsbCB0aGUgQVhJIGJ1
cyB3aGVuIGl0cwpkb3duc3RyZWFtIHNpbmsgYWJydXB0bHkgc3RvcHMuIFRoaXMgY2FuIGxlYWQg
dG8gYW4gYXN5bmNocm9ub3VzIGV4dGVybmFsCmFib3J0IChTRXJyb3IpIG9yIGEgY29tcGxldGUg
c3lzdGVtIGhhbmcuCgpFdmVuIHdpdGhvdXQgc2VhbWxlc3MgRFJNIHRha2VvdmVyIHN1cHBvcnQs
IHNob3VsZCB0aGUgUEhZIHJlbWFpbiBlbmFibGVkCnVudGlsIHRoZSBEUk0gZHJpdmVyIGdyYWNl
ZnVsbHkgdGVhcnMgZG93biB0aGUgZGlzcGxheSBwaXBlbGluZSBpbiB0aGUKY29ycmVjdCBoYXJk
d2FyZS1tYW5kYXRlZCBvcmRlciAoVk9QIGZpcnN0LCB0aGVuIFBIWSk/Cgo+ICAKPiAgCXJldHVy
biAwOwo+ICB9CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8j
L3BhdGNoc2V0LzIwMjYwNjI1LXJvY2tjaGlwLXVzYmRwLWNsZWFudXAtdjctMC0zOGViM2NmNjU0
ZmRAY29sbGFib3JhLmNvbT9wYXJ0PTYKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
