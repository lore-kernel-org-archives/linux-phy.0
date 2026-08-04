Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAAEDC55838
	for <linux-phy@archiver.kernel.org>; Tue,  4 Aug 2026 12:30:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BD6SYXMHnJhykbuwM2aB15RuzRuJh55IAQZ+Wrg4Q64=; b=e5zrb7L+IuKxAC
	H2h7KBZTuWid37OXvNZI75is2f5remeZd2DcDrn2+2oJBEREHsO5dWLJ/a/QNrqY/537U4NxZ9eJ3
	zHHTRsG/v2sLXPDtmI7cm29DXQSq2WkvP0ISdqs2kXfYq7zYcCRTUIPOFW9nnbZc5fhAS+P08FhcZ
	1+l4hW3cgwfP6mJGwoFENRbIE+VhvyaLQKgm1vCWQAIRactVz4y6X/4U1+2uE7yUSGfNtenuPN2xX
	375WaIoOfTDVM9Clb1eH0CRCSeEnGJ/DXOLVYkCI+eSG8PUlfnc8Xe7Ri7IuTxUAWLO/6CvjHWSnU
	KfRyyJdbiemqOxner8vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrEHi-00000001oc3-0hRS;
	Tue, 04 Aug 2026 12:30:18 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrEHh-00000001obh-0ePK
	for linux-phy@lists.infradead.org;
	Tue, 04 Aug 2026 12:30:17 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 6C86D42A5E;
	Tue,  4 Aug 2026 12:30:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D3CFB1F00A3A;
	Tue,  4 Aug 2026 12:30:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785846613;
	bh=YZyYMwAilSfRsoeRrSre9NzMRcJElUCmK32uucO4mRw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=l3InYoRBXv4DxNdDigLXpXTYr6gNIop20ge2jfuXy7O2nhNtgi5gQ6B3lngjk2xvW
	 NH46QT0PpXUnDuBkLtUI4iiySqIfMb8+lBucmxmzDtTnut6K+mbnn4vUqJmLySuMQv
	 lUnTNInT6lyBmIiB7o912K3lsopGkmDK8Jm2jE+HTHcC5QQGXAY/tlb6WEWt8rMeDB
	 Z6LDmDRXHCfMinD+c2fFVPHb+39nhN8WjzqOqRV+oA3wdMzJLwScOnT/GD2ASVp4/k
	 BL9ZUqbF8vnuo5ZEEEpjJLZcc98bvTQBJ82VlHAFIaho3qjItW9cdrWss8BZx8C9Ip
	 V8PkyiM+v3OMg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH V4 2/2] arm64: dts: qcom: Enable SD card for Shikra EVK
To: "Monish Chunara" <monish.chunara@oss.qualcomm.com>
Cc: vkoul@kernel.org, robh@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org
In-Reply-To: <20260804122054.3462145-3-monish.chunara@oss.qualcomm.com>
References: <20260804122054.3462145-1-monish.chunara@oss.qualcomm.com>
 <20260804122054.3462145-3-monish.chunara@oss.qualcomm.com>
Date: Tue, 04 Aug 2026 12:30:11 +0000
Message-Id: <20260804123012.D3CFB1F00A3A@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gUmVkdW5kYW50IGFuZCBp
bmNvcnJlY3RseSBvcmRlcmVkIGAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvZ3Bpby9ncGlvLmg+YCBp
biBib2FyZCAuZHRzIGZpbGVzLgotLQoKLS0tIFBhdGNoIFsyXTogW1BBVENIIFY0IDIvMl0gYXJt
NjQ6IGR0czogcWNvbTogRW5hYmxlIFNEIGNhcmQgZm9yIFNoaWtyYSBFVksgLS0tCmNvbW1pdCA3
YTlhMzdhNWUxZTk5ZmEwMGExNzVhNjgzNzk2OWNhMjUxY2JiMGQzCkF1dGhvcjogTW9uaXNoIENo
dW5hcmEgPG1vbmlzaC5jaHVuYXJhQG9zcy5xdWFsY29tbS5jb20+Cgphcm02NDogZHRzOiBxY29t
OiBFbmFibGUgU0QgY2FyZCBmb3IgU2hpa3JhIEVWSwoKRW5hYmxlIFNEIGNhcmQgZm9yIFNoaWty
YSBDUVMsIENRTSBhbmQgSVFTIEVWSyB2YXJpYW50cy4gQ29uZmlndXJlIHRoZQp2bW1jL3ZxbW1j
IHJlZ3VsYXRvcnMgYW5kIGdwaW8tYmFzZWQgY2FyZCBkZXRlY3Rpb24gZm9yIGVhY2ggYm9hcmQK
dmFyaWFudC4KCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zaGlrcmEt
Y3FtLWV2ay5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2hpa3JhLWNxbS1ldmsuZHRz
Cj4gaW5kZXggMGE1MmFiOWI3YTRjMy4uOGU0NjU2YTUxMzcxZiAxMDA2NDQKPiAtLS0gYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL3Fjb20vc2hpa3JhLWNxbS1ldmsuZHRzCj4gKysrIGIvYXJjaC9hcm02
NC9ib290L2R0cy9xY29tL3NoaWtyYS1jcW0tZXZrLmR0cwo+IEBAIC03LDYgKzcsNyBAQAo+ICAK
PiAgI2luY2x1ZGUgInNoaWtyYS1jcW0tc29tLmR0c2kiCj4gICNpbmNsdWRlICJzaGlrcmEtZXZr
LmR0c2kiCj4gKyNpbmNsdWRlIDxkdC1iaW5kaW5ncy9ncGlvL2dwaW8uaD4KCltTZXZlcml0eTog
TG93XQpXb3VsZCBpdCBiZSBiZXR0ZXIgdG8gbW92ZSB0aGlzIGluY2x1ZGUgZGlyZWN0aXZlIGlu
dG8gc2hpa3JhLWV2ay5kdHNpPwoKU2luY2Ugc2hpa3JhLWV2ay5kdHNpIGlzIHRoZSBmaWxlIHRo
YXQgYWN0dWFsbHkgdXNlcyBHUElPX0FDVElWRV9MT1csIHBsYWNpbmcKdGhlIGluY2x1ZGUgaGVy
ZSBhZnRlciBzaGlrcmEtZXZrLmR0c2kgaXMgcHJvY2Vzc2VkIG1lYW5zIGl0IGNhbm5vdCBzYXRp
c2Z5CnRoZSBtYWNybyBkZXBlbmRlbmN5IGRpcmVjdGx5LiBUaGUgYnVpbGQgb25seSBzdWNjZWVk
cyBiZWNhdXNlIHRoZSBwcmVjZWRpbmcKU09NIGluY2x1ZGUgYWxyZWFkeSBoYXBwZW5zIHRvIGlu
Y2x1ZGUgZ3Bpby5oLgoKWyAuLi4gXQo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L3Fjb20vc2hpa3JhLWV2ay5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NoaWtyYS1l
dmsuZHRzaQo+IGluZGV4IDZlYjQxODRmNzY0MjIuLjE3N2E1OTljZDJjMjQgMTAwNjQ0Cj4gLS0t
IGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NoaWtyYS1ldmsuZHRzaQo+ICsrKyBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcWNvbS9zaGlrcmEtZXZrLmR0c2kKPiBAQCAtOSw2ICs5LDE3IEBAICZx
dXB2M18wIHsKPiAgCXN0YXR1cyA9ICJva2F5IjsKPiAgfTsKPiAgCj4gKyZzZGhjXzIgewo+ICsJ
cGluY3RybC0wID0gPCZzZGMyX2RlZmF1bHQgJnNkYzJfY2FyZF9kZXRfbj47Cj4gKwlwaW5jdHJs
LTEgPSA8JnNkYzJfc2xlZXAgJnNkYzJfY2FyZF9kZXRfbj47Cj4gKwlwaW5jdHJsLW5hbWVzID0g
ImRlZmF1bHQiLCAic2xlZXAiOwo+ICsKPiArCW5vLXNkaW87Cj4gKwluby1tbWM7Cj4gKwo+ICsJ
Y2QtZ3Bpb3MgPSA8JnRsbW0gODkgR1BJT19BQ1RJVkVfTE9XPjsKCltTZXZlcml0eTogTG93XQpT
aG91bGQgc2hpa3JhLWV2ay5kdHNpIGluY2x1ZGUgPGR0LWJpbmRpbmdzL2dwaW8vZ3Bpby5oPiBk
aXJlY3RseSB0bwpwcm92aWRlIHRoZSBkZWZpbml0aW9uIGZvciBHUElPX0FDVElWRV9MT1cgdXNl
ZCBoZXJlPwoKPiArfTsKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28u
ZGV2LyMvcGF0Y2hzZXQvMjAyNjA4MDQxMjIwNTQuMzQ2MjE0NS0xLW1vbmlzaC5jaHVuYXJhQG9z
cy5xdWFsY29tbS5jb20/cGFydD0yCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
