Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8EA1CD5BC8
	for <linux-phy@archiver.kernel.org>; Tue, 26 May 2026 09:37:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uHRuw3NnK6AgBGarx8knCCOAtWjgfyWSFGEmakjDT8E=; b=r2wDQtP5rbR7ld
	OxV3Mg3DwI1iBYLEQn2QAck0tqCVjYx2d/vHQRzVDIIpr9y1AZb+jxKwpy4spWSBbU/Z/VvKQ8XOZ
	ZIJ8Yu7o7Rrsti1ZWAlDSHQEeBhhZbb8Zq7JlUi08/iiA/ELv8fB5DOIwsawKAFicJ0q/95y0XAeG
	8LKDBy2wTAns+uQzE4HG5Wf/WwiRYccVT70D0zr7MDmztB9s0/hS+T9V/2LQ3c3YnFKKp6RBjZqKE
	xtYn59XRZilmBCRgiYRx1zbIJi+ZorJHqKey5Pfn/F9MRHLoLHymwzLEN2jl1kn4r1mejB32ryQpz
	x3K/pBvtRfsgoCSuGAPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRoDj-00000001XYd-1b44;
	Tue, 26 May 2026 09:37:07 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRoDi-00000001XYF-0RMC
	for linux-phy@lists.infradead.org;
	Tue, 26 May 2026 09:37:06 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7B8396008A;
	Tue, 26 May 2026 09:37:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DFFD71F000E9;
	Tue, 26 May 2026 09:37:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779788225;
	bh=5YVj5p6nDzAUgvsCP3gk/NVlrFiDlp9L2KIsR5vlaik=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=gQcCFQSw/MDOnvUOOQXh0JcTxiIk2PuxPYbK33ra0GzfJICC1MwMnU2+3v2siKK3m
	 /rlGz0sFzL36V1JKZT5oA3+hYKUv6b+czwx6fasJm0iHWZBO4NJsyMX4czkmWcvee/
	 Yu+kbzXCQYUBwh9vOwk597tD/RMrMpoU1qojMgt6R9PZ9rnDWZ1+lw4UJYviztio7v
	 CukDQYY/lVFVhKFI5y8YvIMboOzpr4EAMRsKWI7JG3CHW9ef/CT0e6YqYXXxH0QCw5
	 N186yayuNAPnEFpNaDm4Lb3JqJSZPzKQzhoMBABg8phFdXEi5fjI/nknIeKTPEb32f
	 wVmgpcp46Uu3g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/3] scsi: ufs: qcom: dt-bindings: Document the Hawi
 UFS controller
To: palash.kambar@oss.qualcomm.com
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, vkoul@kernel.org, olteanv@gmail.com
In-Reply-To: <20260526090956.2340262-3-palash.kambar@oss.qualcomm.com>
References: <20260526090956.2340262-3-palash.kambar@oss.qualcomm.com>
Date: Tue, 26 May 2026 09:37:04 +0000
Message-Id: <20260526093704.DFFD71F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIG5ldyBjb21w
YXRpYmxlIHN0cmluZyBgcWNvbSxoYXdpLXVmc2hjYCB3YXMgb21pdHRlZCBmcm9tIHRoZSBleGlz
dGluZyBgaWYtdGhlbmAgY29uZGl0aW9uYWwgYmxvY2sgdGhhdCBlbmZvcmNlcyB0aGUgTUNRIHJl
Z2lzdGVyIGNvbnN0cmFpbnRzLgotLQoKY29tbWl0IDZjYTg1Y2VlMzA5NDMxMDA4MWYwOTg4MWI0
ZDZkNmE5ZTk4N2IzMjcKQXV0aG9yOiBQYWxhc2ggS2FtYmFyIDxwYWxhc2gua2FtYmFyQG9zcy5x
dWFsY29tbS5jb20+CgpzY3NpOiB1ZnM6IHFjb206IGR0LWJpbmRpbmdzOiBEb2N1bWVudCB0aGUg
SGF3aSBVRlMgY29udHJvbGxlcgogICAgCkRvY3VtZW50IHRoZSBVRlMgQ29udHJvbGxlciBvbiB0
aGUgSGF3aSBQbGF0Zm9ybS4KCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy91ZnMvcWNvbSxzbTg2NTAtdWZzaGMueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy91ZnMvcWNvbSxzbTg2NTAtdWZzaGMueWFtbAo+IGluZGV4IGYyODY0
MWM2ZTY4ZmUuLjNkZTAwYWZmYTRjNjQgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL3Vmcy9xY29tLHNtODY1MC11ZnNoYy55YW1sCj4gKysrIGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Vmcy9xY29tLHNtODY1MC11ZnNoYy55YW1sClsg
Li4uIF0KPiBAQCAtMjcsNiArMjgsNyBAQCBwcm9wZXJ0aWVzOgo+ICAgICAgaXRlbXM6Cj4gICAg
ICAgIC0gZW51bToKPiAgICAgICAgICAgIC0gcWNvbSxlbGl6YS11ZnNoYwo+ICsgICAgICAgICAg
LSBxY29tLGhhd2ktdWZzaGMKPiAgICAgICAgICAgIC0gcWNvbSxrYWFuYXBhbGktdWZzaGMKPiAg
ICAgICAgICAgIC0gcWNvbSxzbTg2NTAtdWZzaGMKPiAgICAgICAgICAgIC0gcWNvbSxzbTg3NTAt
dWZzaGMKCltTZXZlcml0eTogTWVkaXVtXQpTaG91bGQgcWNvbSxoYXdpLXVmc2hjIGFsc28gYmUg
YWRkZWQgdG8gdGhlIGFsbE9mIGNvbmRpdGlvbmFsIGJsb2NrIHRoYXQKZW5mb3JjZXMgdGhlIE1D
USByZWdpc3RlciBjb25zdHJhaW50cz8KCklmIHRoZSBuZXcgY29tcGF0aWJsZSBzdHJpbmcgc2hh
cmVzIHRoZSBzYW1lIGNvbnN0cmFpbnRzIGFzIHByZXZpb3VzCmdlbmVyYXRpb25zLCBkZXZpY2Ug
dHJlZSBjb25maWd1cmF0aW9ucyB3aXRoIG9ubHkgb25lIHJlZ2lzdGVyIHJlZ2lvbiBjb3VsZApz
aWxlbnRseSBwYXNzIHNjaGVtYSB2YWxpZGF0aW9uLgoKTG9va2luZyBhdCB0aGUgZXhpc3Rpbmcg
Y29uZGl0aW9uYWwgYmxvY2sgbG93ZXIgZG93biBpbiB0aGUgZmlsZToKCmFsbE9mOgogIC0gJHJl
ZjogcWNvbSx1ZnMtY29tbW9uLnlhbWwKICAtIGlmOgogICAgICBwcm9wZXJ0aWVzOgogICAgICAg
IGNvbXBhdGlibGU6CiAgICAgICAgICBjb250YWluczoKICAgICAgICAgICAgZW51bToKICAgICAg
ICAgICAgICAtIHFjb20sZWxpemEtdWZzaGMKICAgIHRoZW46CiAgICAgIHByb3BlcnRpZXM6CiAg
ICAgICAgcmVnOgogICAgICAgICAgbWluSXRlbXM6IDIKICAgICAgICByZWctbmFtZXM6CiAgICAg
ICAgICBtaW5JdGVtczogMgoKRG9lcyB0aGlzIGlmLXRoZW4gYmxvY2sgbmVlZCB0byBiZSB1cGRh
dGVkIHRvIGluY2x1ZGUgdGhlIG5ldyBjb21wYXRpYmxlCnN0cmluZyBzbyB0aGUgdmFsaWRhdGlv
biByZW1haW5zIGNvbXBsZXRlPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2Fz
aGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDUyNjA5MDk1Ni4yMzQwMjYyLTEtcGFsYXNoLmthbWJh
ckBvc3MucXVhbGNvbW0uY29tP3BhcnQ9MgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
