Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61B2CCD5BA4
	for <linux-phy@archiver.kernel.org>; Tue, 19 May 2026 12:37:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FFW1HhrRDVZHbo7KcAu8qj0Fg0eFNUHiFZ46qVyP6Ms=; b=4dy56PI9bxS5f9
	55mCSsZlLjQhAW9x9xJVT4dgvwP+89N+r/C2mVaUr3iWMIdllXmQrjGIEXbTFaPpU6DTc5SNYdcEr
	CZdOv3eBeYx6E9WSZuxlgcmmeHbs3BzX3tKdIegMdFzPLIOZ+LHg4X9+VGKpR6BOXYVlMp2Y8wwFK
	PUjy5aFm6CNmQeyLG0H7Ig7WnGNxa256GQB2Kz8nNattLVEwc4urFxZQa+8ESJ29BAnIK3JkHUmZ+
	yX1Qf/UnCEbyy9NTza4wANnHpYOaiQGDJpyyCc+8pf2qz+9e8EqHCQfX6PaJFnm7GkV/ixALCaCCC
	cBFOQBVdcewyp7X1yJYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPJhd-00000001UsW-3rHX;
	Tue, 19 May 2026 12:37:41 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPJhc-00000001Us7-3Xro
	for linux-phy@lists.infradead.org;
	Tue, 19 May 2026 12:37:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id DBF4C60126;
	Tue, 19 May 2026 12:37:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD9C3C2BCB3;
	Tue, 19 May 2026 12:37:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779194259;
	bh=L7JK1gcKM7XKCe2n937PVWSkpUHU1UiF00vrV9Zwo6Y=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=DR0cpmWsBNZkSY1Qee+OrGjSjCkE5x0PAejExelgF9Q00nX/RzFC1mix48USvW7DN
	 XfpwoYgLBDLp3I1yY16Z0nxOyiFVBzJYacpcls2cW/EeRXh8bc3nToDPn0qhn8+lUu
	 1Fw7/yLH9Wv3DbSp7HnyK/YzetMDlJ6UnRkD3ZN5KDMku9XhYZ4hD0+zot87C/20TZ
	 SeSUgICnnhm5NUpIGA+wM5yHZDNAOMXq8/b+y+J/VUqQax1Brd0qa+14R0YuimGDEk
	 UM7g9Gabq4B1a1bn7gexgKK1M8WH4xaIfhA9AVucxE7VLeuj4MsKN2WeE2IuO2m04j
	 BknMjvNjEqHZg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 5/5] arm64: dts: qcom: Add Shikra EVK boards
To: "Komal Bajaj" <komal.bajaj@oss.qualcomm.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, olteanv@gmail.com
In-Reply-To: <20260519-shikra-dt-v2-5-c01b90fb4395@oss.qualcomm.com>
References: <20260519-shikra-dt-v2-5-c01b90fb4395@oss.qualcomm.com>
Date: Tue, 19 May 2026 12:37:37 +0000
Message-Id: <20260519123738.BD9C3C2BCB3@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIHNoaWtyYS1jcXMtZXZr
LmR0cyBpbmNvcnJlY3RseSBpbmNsdWRlcyB0aGUgbW9kZW0tZW5hYmxlZCBTb00gZHRzaSBmaWxl
IChzaGlrcmEtY3FtLXNvbS5kdHNpKSBpbnN0ZWFkIG9mIGl0cyBjb3JyZXNwb25kaW5nIENRUyBk
dHNpIGZpbGUuCi0tCgpjb21taXQgZjI1MDAyZDZiZTdlZjc1ZjRmNWUyZGQ1ZjMyZTQ1YTIyZjA2
ZmMwMQpBdXRob3I6IEtvbWFsIEJhamFqIDxrb21hbC5iYWphakBvc3MucXVhbGNvbW0uY29tPgoK
YXJtNjQ6IGR0czogcWNvbTogQWRkIFNoaWtyYSBFVksgYm9hcmRzCgpUaGlzIGNvbW1pdCBhZGRz
IGRldmljZSB0cmVlcyBmb3IgdGhlIFNoaWtyYSBFVksgcGxhdGZvcm0sIGNvbWJpbmluZyBkaWZm
ZXJlbnQKU2hpa3JhIFNvTSB2YXJpYW50cyB3aXRoIGEgY29tbW9uIGNhcnJpZXIgYm9hcmQuIEl0
IGludHJvZHVjZXMgdGhyZWUgc3BlY2lmaWMKRVZLIGJvYXJkIGNvbmZpZ3VyYXRpb25zOiBDUU0g
KHdpdGggbW9kZW0pLCBDUVMgKG5vIG1vZGVtKSwgYW5kIElRUyAobm8KbW9kZW0pLCBhbG9uZyB3
aXRoIGEgc2hhcmVkIGNvbW1vbiBpbmNsdWRlIGZpbGUuCgo+IGRpZmYgLS1naXQgYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3Fjb20vc2hpa3JhLWNxcy1ldmsuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0
cy9xY29tL3NoaWtyYS1jcXMtZXZrLmR0cwo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXgg
MDAwMDAwMDAwMDAwMC4uZWU0NjBkOGM2YTg3Nwo+IC0tLSAvZGV2L251bGwKPiArKysgYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL3Fjb20vc2hpa3JhLWNxcy1ldmsuZHRzCj4gQEAgLTAsMCArMSw2MSBA
QAo+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogQlNELTMtQ2xhdXNlCj4gKy8qCj4gKyAq
IENvcHlyaWdodCAoYykgUXVhbGNvbW0gVGVjaG5vbG9naWVzLCBJbmMuIGFuZC9vciBpdHMgc3Vi
c2lkaWFyaWVzLgo+ICsgKi8KPiArCj4gKy9kdHMtdjEvOwo+ICsKPiArI2luY2x1ZGUgInNoaWty
YS1jcW0tc29tLmR0c2kiCgpUaGUgY29tbWl0IG1lc3NhZ2Ugc3RhdGVzIHRoYXQgc2hpa3JhLWNx
cy1ldmsuZHRzIHBhaXJzIHdpdGggdGhlIENRMjM5MFMgU29NCndoaWNoIGhhcyBubyBtb2RlbSBz
dXBwb3J0LiBEb2VzIHRoaXMgaW5jb3JyZWN0bHkgaW5jbHVkZSB0aGUgbW9kZW0tZW5hYmxlZApT
b00gZmlsZSBpbnN0ZWFkIG9mIGl0cyBjb3JyZXNwb25kaW5nIENRUyBkdHNpIGZpbGU/CgpJbmhl
cml0aW5nIHRoZSBoYXJkd2FyZSBkZXNjcmlwdGlvbiBvZiB0aGUgQ1FNIGJvYXJkIG1pZ2h0IGxl
YWQgdG8gaW5jb3JyZWN0CmJlaGF2aW9yLCBzdWNoIGFzIHdhc3RlZCByZXNlcnZlZC1tZW1vcnkg
YWxsb2NhdGlvbnMsIG9yIHBvdGVudGlhbCBwcm9iZQpmYWlsdXJlcyB3aGVuIHRoZSBrZXJuZWwg
YXR0ZW1wdHMgdG8gaW5pdGlhbGl6ZSB0aGUgbm9uLWV4aXN0ZW50IG1vZGVtLgoKPiArI2luY2x1
ZGUgInNoaWtyYS1ldmsuZHRzaSIKPiArCj4gKy8gewo+ICsJbW9kZWwgPSAiUXVhbGNvbW0gVGVj
aG5vbG9naWVzLCBJbmMuIFNoaWtyYSBDUVMgRVZLIjsKPiArCWNvbXBhdGlibGUgPSAicWNvbSxz
aGlrcmEtY3FzLWV2ayIsICJxY29tLHNoaWtyYS1jcXMtc29tIiwgInFjb20sc2hpa3JhIjsKClsg
Li4uIF0KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0
Y2hzZXQvMjAyNjA1MTktc2hpa3JhLWR0LXYyLTAtYzAxYjkwZmI0Mzk1QG9zcy5xdWFsY29tbS5j
b20/cGFydD01CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
