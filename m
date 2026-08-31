Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0EF7C61DD3
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 23:35:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4RzynvegKwq6J6+/M5F7X2mFasQUTZMMGNT7DbINmU0=; b=FFtg8nvGVD+15D
	4eitxcNrQPmmumTDwTZs/V7nW3LVV3PFCaLSoBWyCV9dfEU5eFhmyoj8PMvCcaRWL0vOBf4H4UcHb
	xdcgF3SpxrvAjMHp0SLEvtTIvl7iRiwpQabQ/Z+/HIpeA7RGxuW0OtZYzvFdbAPstY/mqeA5JAoPu
	IajZMOf+Tm/bVuecYW6aCiJb4t+T8IJZ+52ySlNSSFzheZ0BOaaE88xQVPAVtzZ0ldSWXUQ+40TgG
	Nsk/wnrPEePjR9YFd1G0EPkNUouYTNr/HOVDDiMhcoJIjR4lN6jz5s8DNll+v+83Qkpfk1E5FhAuu
	GGtFMxZZMAGbzGkxKx1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1BXE-0000000AfeJ-1l4F;
	Mon, 31 Aug 2026 23:35:28 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1BXC-0000000Afe8-1o81
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 23:35:26 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C1B19601DE;
	Mon, 31 Aug 2026 23:35:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA4681F000E9;
	Mon, 31 Aug 2026 23:35:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788219325;
	bh=g9I3Oo7PhjFlWmSSidw0playH4A3ME8hXe8Tj1GcN0E=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ZJYwG6DZvr8En9vM39ymPkh5a3PU/av/z4VzlWXKWfPd5CeGFc8fhDolMqZO83XFw
	 BBv3rZh/tAf5DCYZQGfwrWuHWRU7+INDiBM1niBiw/AfizlcJqGsAw+5DkUye6KJnq
	 D/kTrAmm8kH2mzUJ/wUB5OwG1AhkmTo9z6MjdrGr998i8FPUqDCB/2R70B7CPxiF/o
	 SXpY/lYFpyYAcz7VeUzk8UVNRe6xyb1Jj9/txyrnY6wk4iIzPa/LQImrz+ghHd7WaM
	 GklBnbe+QFj1FJATFP9TY1ecU4hmClnHMgbv0xtWy3XX8r/R01HM97laUIkxaGo8r2
	 67HPLMvoLNTSQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 1/6] dt-bindings: dma: ti,cppi41: Convert to DT
 schema
To: "Bhargav Joshi" <j.bhargav.u@gmail.com>
Cc: linux-phy@lists.infradead.org, dmaengine@vger.kernel.org, conor+dt@kernel.org, vkoul@kernel.org, Frank.Li@kernel.org, robh@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, devicetree@vger.kernel.org
In-Reply-To: <20260901-ti-am33-usb-v3-1-5e15c617d2e9@gmail.com>
References: <20260901-ti-am33-usb-v3-0-5e15c617d2e9@gmail.com>
 <20260901-ti-am33-usb-v3-1-5e15c617d2e9@gmail.com>
Date: Mon, 31 Aug 2026 23:35:24 +0000
Message-Id: <20260831233524.DA4681F000E9@smtp.kernel.org>
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
MyBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIGBpbnRlcnJ1
cHRzYCBwcm9wZXJ0eSBpcyBub3QgbWFya2VkIGFzIHJlcXVpcmVkIGZvciB0aGUgYHRpLGRhODMw
LWNwcGk0MWAgaGFyZHdhcmUgdmFyaWFudCwgYWxsb3dpbmcgaW5jb21wbGV0ZSBub2RlcyB0byBw
YXNzIHNjaGVtYSB2YWxpZGF0aW9uLgotIFtMb3ddIE1pc3NpbmcgcHJvcGVydHkgdHlwZSBkZWZp
bml0aW9ucyBmb3IgZGVwcmVjYXRlZCBjdXN0b20gcHJvcGVydGllcyBgI2RtYS1jaGFubmVsc2Ag
YW5kIGAjZG1hLXJlcXVlc3RzYC4KLSBbTG93XSBUaGUgdW5pdCBhZGRyZXNzIGluIHRoZSBleGFt
cGxlIG5vZGUgbmFtZSBkb2VzIG5vdCBtYXRjaCB0aGUgZmlyc3QgYHJlZ2AgYWRkcmVzcy4KLS0K
CmNvbW1pdCBlZmU1MmYzNDY4OGE5Zjg1YmQ3M2VkNmQ4MGFmMmUxMTA3YmUxNGJhCkF1dGhvcjog
QmhhcmdhdiBKb3NoaSA8ai5iaGFyZ2F2LnVAZ21haWwuY29tPgoKZHQtYmluZGluZ3M6IGRtYTog
dGksY3BwaTQxOiBDb252ZXJ0IHRvIERUIHNjaGVtYQogICAgClRoaXMgY29tbWl0IGNvbnZlcnRz
IHRoZSBUSSBDUFBJIDQuMSBETUEgY29udHJvbGxlciB0ZXh0IGJpbmRpbmdzIHRvIERUCnNjaGVt
YS4gSXQgbWVyZ2VzIHRpLGFtMzM1OS1jcHBpNDEgYW5kIHRpLGRhODMwLWNwcGk0MSBpbnRvIGEg
c2luZ2xlIHNjaGVtYQphbmQgYWRkcyB1bmRvY3VtZW50ZWQgcHJvcGVydGllcyBsaWtlIHBvd2Vy
LWRvbWFpbnMgdG8gbWF0Y2ggZXhpc3RpbmcgZGV2aWNlCnRyZWUgdXNhZ2UuCgo+IGRpZmYgLS1n
aXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZG1hL3RpL3RpLGNwcGk0MS55
YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2RtYS90aS90aSxjcHBpNDEu
eWFtbAo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwMC4uYThjMjhl
OGFkYTA3Mgo+IC0tLSAvZGV2L251bGwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvZG1hL3RpL3RpLGNwcGk0MS55YW1sCj4gQEAgLTAsMCArMSwxMDkgQEAKWyAuLi4g
XQo+ICsgIHBvd2VyLWRvbWFpbnM6Cj4gKyAgICBtYXhJdGVtczogMQo+ICsKPiArICAiI2RtYS1j
aGFubmVscyI6Cj4gKyAgICBkZXNjcmlwdGlvbjogRGVwcmVjYXRlZCwgdXNlIGRtYS1jaGFubmVs
cyBpbnN0ZWFkLgo+ICsgICAgZGVwcmVjYXRlZDogdHJ1ZQo+ICsKPiArICAiI2RtYS1yZXF1ZXN0
cyI6Cj4gKyAgICBkZXNjcmlwdGlvbjogRGVwcmVjYXRlZCwgdXNlIGRtYS1yZXF1ZXN0cyBpbnN0
ZWFkLgo+ICsgICAgZGVwcmVjYXRlZDogdHJ1ZQoKW1NldmVyaXR5OiBMb3ddCkFyZSB0aGUgI2Rt
YS1jaGFubmVscyBhbmQgI2RtYS1yZXF1ZXN0cyBjdXN0b20gcHJvcGVydGllcyBtaXNzaW5nIGEg
dHlwZQpkZWZpbml0aW9uPwoKVGhlIHNjaGVtYSB0b29sIHN0cmljdGx5IHJlcXVpcmVzIGFsbCBw
cm9wZXJ0aWVzIHRoYXQgZG8gbm90IG1hdGNoIGNvcmUKcmVnZXggcGF0dGVybnMgdG8gaGF2ZSBh
biBleHBsaWNpdCB0eXBlIHZpYSBhIHJlZmVyZW5jZS4gV2l0aG91dCBhIHR5cGUKZGVmaW5pdGlv
biwgZG9lcyB0aGlzIHJlZ3Jlc3Npb24gY2F1c2Ugc2NoZW1hIHZhbGlkYXRpb24gdG8gZmFpbCB3
aGVuCmNoZWNraW5nIHRoZSBiaW5kaW5ncz8KCj4gKwo+ICtyZXF1aXJlZDoKPiArICAtIGNvbXBh
dGlibGUKWyAuLi4gXQo+ICthbGxPZjoKPiArICAtICRyZWY6IC9zY2hlbWFzL2RtYS9kbWEtY29u
dHJvbGxlci55YW1sIwo+ICsgIC0gaWY6Cj4gKyAgICAgIHByb3BlcnRpZXM6Cj4gKyAgICAgICAg
Y29tcGF0aWJsZToKPiArICAgICAgICAgIGNvbnRhaW5zOgo+ICsgICAgICAgICAgICBjb25zdDog
dGksYW0zMzU5LWNwcGk0MQpbIC4uLiBdCj4gKyAgICBlbHNlOgo+ICsgICAgICBwcm9wZXJ0aWVz
Ogo+ICsgICAgICAgIHJlZzoKPiArICAgICAgICAgIG1heEl0ZW1zOiAzCj4gKyAgICAgICAgcmVn
LW5hbWVzOgo+ICsgICAgICAgICAgaXRlbXM6Cj4gKyAgICAgICAgICAgIC0gY29uc3Q6IGNvbnRy
b2xsZXIKPiArICAgICAgICAgICAgLSBjb25zdDogc2NoZWR1bGVyCj4gKyAgICAgICAgICAgIC0g
Y29uc3Q6IHF1ZXVlbWdyCgpbU2V2ZXJpdHk6IE1lZGl1bV0KU2hvdWxkIHRoZSBpbnRlcnJ1cHRz
IHByb3BlcnR5IGJlIG1hcmtlZCBhcyByZXF1aXJlZCBpbiB0aGlzIGVsc2UgYmxvY2sgZm9yCnRo
ZSB0aSxkYTgzMC1jcHBpNDEgaGFyZHdhcmUgdmFyaWFudD8KCklmIGluY29tcGxldGUgbm9kZXMg
cGFzcyBzY2hlbWEgdmFsaWRhdGlvbiB3aXRob3V0IGFuIGludGVycnVwdHMgcHJvcGVydHksCndv
bid0IHRoaXMgcmVncmVzc2lvbiBjYXVzZSB0aGUgZHJpdmVyIHByb2JlIHRvIGZhaWwgd2hlbiBp
dCBhdHRlbXB0cyB0byBwYXJzZQphbmQgbWFwIHRoZSBpbnRlcnJ1cHQ/Cgo+ICsKPiArdW5ldmFs
dWF0ZWRQcm9wZXJ0aWVzOiBmYWxzZQo+ICsKPiArZXhhbXBsZXM6Cj4gKyAgLSB8Cj4gKyAgICBk
bWEtY29udHJvbGxlckA3NDAyMDAwIHsKPiArICAgICAgICBjb21wYXRpYmxlID0gInRpLGFtMzM1
OS1jcHBpNDEiOwo+ICsgICAgICAgIHJlZyA9IDwweDQ3NDAwMDAwIDB4MTAwMD4sCgpbU2V2ZXJp
dHk6IExvd10KSXMgdGhlIHVuaXQgYWRkcmVzcyBpbiB0aGUgZG1hLWNvbnRyb2xsZXJANzQwMjAw
MCBub2RlIG5hbWUgbWlzbWF0Y2hlZCB3aXRoCnRoZSBmaXJzdCByZWcgYWRkcmVzcz8KClRoZSBu
b2RlIG5hbWUgdXNlcyA3NDAyMDAwLCBidXQgdGhlIGZpcnN0IHJlZ2lzdGVyIGFkZHJlc3MgaXMg
MHg0NzQwMDAwMC4KV2lsbCB0aGlzIGZvcm1hdHRpbmcgcmVncmVzc2lvbiBjYXVzZSBhIGNvbXBp
bGVyIHdhcm5pbmcgd2hlbiB0aGUgZXhhbXBsZXMgYXJlCmV2YWx1YXRlZD8KCi0tIApTYXNoaWtv
IEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA5MDEtdGkt
YW0zMy11c2ItdjMtMC01ZTE1YzYxN2QyZTlAZ21haWwuY29tP3BhcnQ9MQoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
