Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F7BDCD343F
	for <linux-phy@archiver.kernel.org>; Fri, 15 May 2026 11:18:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jGGGFfBhOzN+gJXoe1YPLI5bEw9/FDb4M3+6ZJGMDek=; b=PRqL7qAgNx/mrE
	lqOWvjLK5ZFm3swZns3bD+KMcKjsbWSgKYA/MoKO5VrGeflgrAVrwRSP+mQAeyrHyLVyWp6enPPEd
	p/9Ywi36WkVPTo/WS+zcbUH0phw3u+YrPe+15NvTmdobEE7cD/X/7172bcwQ0Rln2rCSAyJdpWG1A
	7IBo2vSxZ4DNTi4QyyybETyafmchXfnRqmdc11c1FSTDqJbAA1gWFs0AqIrOLMG/kw6vzAyxUPshV
	A/p4fbb5XN+Tak+bENke//oFMCBLPveQM+Z5rhVWm98PENJeX9qTjnYUlI+ZR2sipl4Ynd7nOIuyq
	ucnC/bPeG2vDsnUYgoVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNqYo-00000008A2U-3pN7;
	Fri, 15 May 2026 11:18:31 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNqYm-00000008A1g-0hdo
	for linux-phy@lists.infradead.org;
	Fri, 15 May 2026 11:18:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 7525143D7F;
	Fri, 15 May 2026 11:18:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1623C2BCB0;
	Fri, 15 May 2026 11:18:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778843907;
	bh=Qvq+yZ6oQmdKTw/RDlarw/2JemWDqSh4Pgg/OrCDjgU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=rdE6kJks7nCUNQR3B15jYFjANEDQlb0gzDtuR9trXBSSZ6syrdBZYQbqjB+dVPUby
	 DsypAIYFqHrBCNfWfipvPVD46htEsEJ1idvA4XiJCD77TXSdKttvnIBB+hhGf3Huh2
	 Xb12yiyykDQdRfjgz4uhyNcmPoKYKIPB1MteTKDCKZBiO2r/nJsCGEGZz7CDxEPpIL
	 Q7T7JncJgPSOw/BM8JA7AC/G1r4c0Mq6Zy2OdbReMJhT8LXbbaTNXhN0mFUSTPH+ht
	 Fsjg8IHs6ZSJE5lqYroHAgfz7YzI/s7YbVnU98aKp/uRLx/lyjAaoxWB71JO3l62Ki
	 RA9ffziDNgqjA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/5] dt-bindings: usb: qcom,dwc3: Add ipq5210 to USB
 DWC3 bindings
To: "Varadarajan Narayanan" <varadarajan.narayanan@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, olteanv@gmail.com
In-Reply-To: <20260515-usb2phy-v1-3-5f8338d466bf@oss.qualcomm.com>
References: <20260515-usb2phy-v1-3-5f8338d466bf@oss.qualcomm.com>
Date: Fri, 15 May 2026 11:18:26 +0000
Message-Id: <20260515111826.F1623C2BCB0@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_041828_253599_FFE0F55E 
X-CRM114-Status: UNSURE (   7.20  )
X-CRM114-Notice: Please train this message.
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
YXRpYmxlIHN0cmluZyBgcWNvbSxpcHE1MjEwLWR3YzNgIGlzIGFkZGVkIHRvIHRoZSB0b3AtbGV2
ZWwgYGNvbXBhdGlibGVgIGxpc3QgYnV0IGlzIG9taXR0ZWQgZnJvbSB0aGUgYGFsbE9mYCBjb25k
aXRpb25hbCBibG9ja3MgdGhhdCBlbmZvcmNlIGRldmljZS1zcGVjaWZpYyBjb25zdHJhaW50cy4K
LS0KCmNvbW1pdCBmN2YwMGQ2MmU4YTI3YWJjYWI3ODM1MTg0NDI1Y2U5YTMxZjFiMmMzCkF1dGhv
cjogVmFyYWRhcmFqYW4gTmFyYXlhbmFuIDx2YXJhZGFyYWphbi5uYXJheWFuYW5Ab3NzLnF1YWxj
b21tLmNvbT4KCmR0LWJpbmRpbmdzOiB1c2I6IHFjb20sZHdjMzogQWRkIGlwcTUyMTAgdG8gVVNC
IERXQzMgYmluZGluZ3MKICAgIApVcGRhdGUgZHQtYmluZGluZ3MgdG8gYWRkIGlwcTUyMTAgdG8g
VVNCIERXQzMgY29udHJvbGxlciBsaXN0LgoKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi9xY29tLGR3YzMueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy91c2IvcWNvbSxkd2MzLnlhbWwKPiBpbmRleCBhN2Y1ODExNGMwMmU4
Li5mOGUwODE5YmU4OTRiIDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy91c2IvcWNvbSxkd2MzLnlhbWwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvdXNiL3Fjb20sZHdjMy55YW1sCj4gQEAgLTI2LDYgKzI2LDcgQEAgcHJvcGVy
dGllczoKPiAgICAgICAgLSBlbnVtOgo+ICAgICAgICAgICAgLSBxY29tLGlwcTQwMTktZHdjMwo+
ICAgICAgICAgICAgLSBxY29tLGlwcTUwMTgtZHdjMwo+ICsgICAgICAgICAgLSBxY29tLGlwcTUy
MTAtZHdjMwoKU2hvdWxkIHRoaXMgbmV3IGNvbXBhdGlibGUgc3RyaW5nIGFsc28gYmUgYWRkZWQg
dG8gdGhlIGFsbE9mIGNvbmRpdGlvbmFsIGJsb2Nrcwp0aGF0IGVuZm9yY2UgY29uc3RyYWludHMg
Zm9yIHJlbGF0ZWQgaGFyZHdhcmU/CgpTaW1pbGFyIGdlbmVyYXRpb25zIGxpa2UgaXBxNTAxOCBh
bmQgaXBxNTMzMiBlbmZvcmNlIGNsb2NrIGFuZCBpbnRlcnJ1cHQKbGltaXRzIGZ1cnRoZXIgZG93
biBpbiB0aGUgZmlsZToKCmFsbE9mOgogIC0gaWY6CiAgICAgIHByb3BlcnRpZXM6CiAgICAgICAg
Y29tcGF0aWJsZToKICAgICAgICAgIGNvbnRhaW5zOgogICAgICAgICAgICBlbnVtOgogICAgICAg
ICAgICAgIC0gcWNvbSxpcHE1MDE4LWR3YzMKICAgICAgICAgICAgICAtIHFjb20saXBxNTMzMi1k
d2MzCiAgICB0aGVuOgogICAgICBwcm9wZXJ0aWVzOgogICAgICAgIGludGVycnVwdHM6CiAgICAg
ICAgICBtYXhJdGVtczogMwoKRG9lcyBpcHE1MjEwIHNoYXJlIHRoZXNlIGNvbnN0cmFpbnRzLCBh
bmQgc2hvdWxkIGl0IGJlIGFkZGVkIHRvIHRoZSBhcHByb3ByaWF0ZQpjb25kaXRpb25hbHM/Cgot
LSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIw
MjYwNTE1LXVzYjJwaHktdjEtMC01ZjgzMzhkNDY2YmZAb3NzLnF1YWxjb21tLmNvbT9wYXJ0PTMK
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
