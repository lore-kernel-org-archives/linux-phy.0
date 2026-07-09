Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1041CC43458
	for <linux-phy@archiver.kernel.org>; Thu,  9 Jul 2026 19:35:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sxc/793uQXquZaJxIWt0L4614sYltiCvCXaa6qwx1pI=; b=hHfWvQhu70NhA1
	Mb3IQms9u0REXcFZHubb5syfnmVK78+BxfPj1/XvkTvMOHsqQO7MRYaZ09jszzQm3Vwt/f+9yyr9T
	W12LRx0y0I3+ip/UTlROvpseR9/pYxm5PqfooiYEYiTd8GUzuXyGNFUHe3Mkqe5Sp/rvITluXCNTS
	aLVm+BysqZRxCIpAx2C5VaLU0d6Xee5C5wpoZZMCs6jQGZuPvgrjKFdBaNaXIEFER4foAyfdQioWn
	8tfp65Wr/c4I3FHtA9Y4p7dl6r+NIlH6sr8nmHocLYcM/mhPomnT7FImWGBmUznPTRiQWq1m60bbr
	2+UgiDc26Pmb4QCuVfuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whuWl-00000003Tur-3Tmk;
	Thu, 09 Jul 2026 19:35:19 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whuWk-00000003TuW-1KbL
	for linux-phy@lists.infradead.org;
	Thu, 09 Jul 2026 19:35:18 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id DFD5E43A1F;
	Thu,  9 Jul 2026 19:35:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 52B1B1F000E9;
	Thu,  9 Jul 2026 19:35:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783625717;
	bh=KdPym2xiaUT1pfCT2Mz1W1YaeXtHAZ3K+dbcH4NtUb4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=GptAQ2xB6Puzk2rTRtWlyI5AKFmcr0kfBdQLMTJ3tg/31V5PNRPQfuco7q8GR8oNc
	 LnR6HR5O2S4NEgRBnut/SzsTtCZI6Mv31UFFMRdEdDkbg5z/h8lLs0fRc+CERqYDo/
	 dQqHrGtlEeJB3DasD6XaVGis6b8abnuG+MiQBKP15G2XnJ5mlXPT5n64oss51a3c54
	 kw/kyeaayhDQBLWr2F3i1ihH2dKHc2hf8rsh9wSh8L0nP8oXJr5bpLECfDtJvmftMI
	 X17ea3IKjVP5m6dRN8004kxeJxLYDUlLhMS1XCP7KtUVlfrQQk+E9fXMifalRumDPJ
	 K9F/6bxhbx0Gg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 28/36] phy: rockchip: usbdp: Only enable USB3 when
 not in high-speed mode
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, robh@kernel.org
In-Reply-To: <20260709-rockchip-usbdp-cleanup-v11-28-a149ac60f76c@collabora.com>
References: <20260709-rockchip-usbdp-cleanup-v11-0-a149ac60f76c@collabora.com>
 <20260709-rockchip-usbdp-cleanup-v11-28-a149ac60f76c@collabora.com>
Date: Thu, 09 Jul 2026 19:35:16 +0000
Message-Id: <20260709193517.52B1B1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBUaGUgVVNCMyBwb3J0IGlzIHVuY29uZGl0aW9uYWxseSBkaXNhYmxlZCBkdXJpbmcg
UEhZIHJlLWluaXRpYWxpemF0aW9uIGJ1dCBuZXZlciByZS1lbmFibGVkLCBwZXJtYW5lbnRseSBi
cmVha2luZyBVU0IzIGZ1bmN0aW9uYWxpdHkgYWZ0ZXIgYSBtb2RlIGNoYW5nZS4KLS0KCi0tLSBQ
YXRjaCBbMjhdOiBbUEFUQ0ggdjExIDI4LzM2XSBwaHk6IHJvY2tjaGlwOiB1c2JkcDogT25seSBl
bmFibGUgVVNCMyB3aGVuIG5vdCBpbiBoaWdoLXNwZWVkIG1vZGUgLS0tCmNvbW1pdCBmNDJkMDZj
NmQxMjRmZTk4ZWFiODk2NDc2MDg4NGRlOGYxNzBkMzA0CkF1dGhvcjogU2ViYXN0aWFuIFJlaWNo
ZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+CgpwaHk6IHJvY2tjaGlwOiB1c2Jk
cDogT25seSBlbmFibGUgVVNCMyB3aGVuIG5vdCBpbiBoaWdoLXNwZWVkIG1vZGUKCkVuc3VyZSB0
aGF0IFVTQjMgbW9kZSBpcyBub3QgYWNjaWRlbnRseSBlbmFibGVkIGR1cmluZyBQSFkgcmUtaW5p
dApmb3Igc3lzdGVtcyB0aGF0IGFyZSBjb25maWd1cmVkIGFzIGhpZ2gtc3BlZWQgb25seSB2aWEg
RFQuCgpDbG9zZXM6IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9tZXNzYWdlLzIwMjYwNjI2MjEyNDI0
LkMyMTVFMUYwMDBFOSU0MHNtdHAua2VybmVsLm9yZwoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9w
aHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9w
aHktcm9ja2NoaXAtdXNiZHAuYwo+IC0tLSBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2Nr
Y2hpcC11c2JkcC5jCj4gKysrIGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVz
YmRwLmMKPiBAQCAtMTAwOSw3ICsxMDA5LDcgQEAgc3RhdGljIGludCBya191ZHBoeV9wb3dlcl9v
bihzdHJ1Y3QgcmtfdWRwaHkgKnVkcGh5LCB1OCBtb2RlKQo+ICAJCWlmIChyZXQpCj4gIAkJCXJl
dHVybiByZXQ7Cj4gIAo+IC0JCWlmICh1ZHBoeS0+bW9kZSAmIFVEUEhZX01PREVfVVNCKQo+ICsJ
CWlmICghdWRwaHktPmhzICYmIHVkcGh5LT5tb2RlICYgVURQSFlfTU9ERV9VU0IpCj4gIAkJCXJr
X3VkcGh5X3UzX3BvcnRfZGlzYWJsZSh1ZHBoeSwgZmFsc2UpOwo+ICAJCXVkcGh5LT5waHlfbmVl
ZHNfcmVpbml0ID0gZmFsc2U7Cj4gIAl9IGVsc2UgaWYgKHVkcGh5LT5waHlfbmVlZHNfcmVpbml0
KSB7Cj4gIAkJcmtfdWRwaHlfdTNfcG9ydF9kaXNhYmxlKHVkcGh5LCB0cnVlKTsKPiAgCQl1ZGVs
YXkoMTApOwo+ICAKPiAgCQlyZXQgPSBya191ZHBoeV9pbml0KHVkcGh5KTsKPiAgCQlpZiAocmV0
KQo+ICAJCQlyZXR1cm4gcmV0Owo+ICAJCXVkcGh5LT5waHlfbmVlZHNfcmVpbml0ID0gZmFsc2U7
Cj4gIAl9CgpbU2V2ZXJpdHk6IEhpZ2hdClRoaXMgaXMgYSBwcmUtZXhpc3RpbmcgaXNzdWUsIGJ1
dCBkb2VzIHRoaXMgbWlzc2luZyByZS1lbmFibGVtZW50IHBlcm1hbmVudGx5CmJyZWFrIFVTQjMg
ZnVuY3Rpb25hbGl0eSBhZnRlciBhIG1vZGUgY2hhbmdlPwoKSWYgdGhlIFBIWSBpcyBhbHJlYWR5
IGFjdGl2ZSBhbmQgYSBtb2RlIGNoYW5nZSBvY2N1cnMgKHN1Y2ggYXMgcGx1Z2dpbmcKaW4gYSBE
UCBtb25pdG9yIG9yIGEgVHlwZS1DIGNhYmxlIGZsaXApLCB1ZHBoeS0+cGh5X25lZWRzX3JlaW5p
dCBpcyBzZXQKdG8gdHJ1ZS4KCldoZW4gcmtfdWRwaHlfcG93ZXJfb24oKSBpcyBzdWJzZXF1ZW50
bHkgY2FsbGVkLCB0aGUgVTMgcG9ydCBpcyBkaXNhYmxlZAppbiB0aGlzIGJyYW5jaCB0byBhdm9p
ZCB4SENJIFNFcnJvcnMsIGJ1dCB0aGVyZSBpcyBubyBjb3JyZXNwb25kaW5nIGNhbGwgdG8Kcmtf
dWRwaHlfdTNfcG9ydF9kaXNhYmxlKHVkcGh5LCBmYWxzZSkgdG8gcmVzdG9yZSBpdCBhZnRlciBy
a191ZHBoeV9pbml0KCkKY29tcGxldGVzLgoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBz
Oi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDcwOS1yb2NrY2hpcC11c2JkcC1jbGVhbnVw
LXYxMS0wLWExNDlhYzYwZjc2Y0Bjb2xsYWJvcmEuY29tP3BhcnQ9MjgKCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
