Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2CA5C5CFDB
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 09:51:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TkuqJkNk5JRb4H6BICiSFMeVo+mvXhivYo+fnOxMQNw=; b=tBIx3s5p5Jn0kn
	N0CN86uolspXXq6N2c74ErvXbMskCJ6TLtKAgxuMyjN+MICXntnyxKuhkW9/Y7hqniQgOwQgR6bMW
	WtzpkN1kFswRqNg6g6J6Gr7/ntbvf0dIXggghp6OWvi13B8PNuQeU2tg4dHHsHUTt71yvobLP8G8c
	dc/mJVI+B19z0BcnQcCl4NJtiDqoLY6ixscr/Ph0ElRPkA+FAhaQzP8HkfS/kws8GXpr/kclQHy9v
	gSL9QsafZzLpzhP5ZWfjo0cxdQ9tKr2p6cCh8Trr+/beEiFST1yd7hfeaBw/cOTaddRYEvOD7zlRM
	0ay9ggM4GB7U2Sv7WNdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu5ch-0000000Fogb-0Nl3;
	Wed, 12 Aug 2026 09:51:47 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu5cf-0000000FogJ-3g9C
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 09:51:46 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 7B53E439D8;
	Wed, 12 Aug 2026 09:51:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2AE71F00A3A;
	Wed, 12 Aug 2026 09:51:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786528305;
	bh=UKIehMH39W++hJqkMr0V6sFz8zeZKfwtHjPjQARHT70=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=n5iymvMxjMom/yTet7dpJTzN8q0IuIJxG/XagiSLBJUM2mNTHIklVVW3c7o2F56t3
	 maLWxkHK7kdNvQpDt+6Nt5IjvI/jK209JN7IZjVtpcL7y557E4v6g1NPR2t33O/j/w
	 ttMEXn+2CZolTPIA6z4W28Th24VvuLl3LdXKfex1d291Oxi2Fg0zymHCdlybZM3UcZ
	 /GfrFbT6Q2CHyW5F3XNpbXcXKhDhHZVnMD7Xa00t6/CwC4d/KZJljoxXjDlvD/ZP1x
	 HFjjbIsZKegOAcpTZ0fVRgCEJTXNx5gOH9D6ny1/+92KQHpMwBKNofNrNlgOs8SQU3
	 lxiF05cv2rP2w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 07/14] dt-bindings: usb: qcom,snps-dwc3: Add clocks
 for USB3 on Qualcomm IPQ5018
To: "George Moussalem" <george.moussalem@outlook.com>
Cc: olteanv@gmail.com, linux-phy@lists.infradead.org, robh@kernel.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org, vkoul@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260812-ipq5018-usb3-v2-7-8f355d7ff0ef@outlook.com>
References: <20260812-ipq5018-usb3-v2-0-8f355d7ff0ef@outlook.com>
 <20260812-ipq5018-usb3-v2-7-8f355d7ff0ef@outlook.com>
Date: Wed, 12 Aug 2026 09:51:44 +0000
Message-Id: <20260812095144.E2AE71F00A3A@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gRFQgc2NoZW1hIGJh
Y2t3YXJkIGNvbXBhdGliaWxpdHkgdmlvbGF0aW9uOiBxY29tLGlwcTUwMTgtZHdjMyBtYW5kYXRl
cyBleGFjdGx5IDYgY2xvY2tzLCBicmVha2luZyBleGlzdGluZyBIaWdoLVNwZWVkIGNvbmZpZ3Vy
YXRpb25zLgotLQoKLS0tIFBhdGNoIFs3XTogW1BBVENIIHYyIDA3LzE0XSBkdC1iaW5kaW5nczog
dXNiOiBxY29tLHNucHMtZHdjMzogQWRkIGNsb2NrcyBmb3IgVVNCMyBvbiBRdWFsY29tbSBJUFE1
MDE4IC0tLQpjb21taXQgNTJkNDRkNTc0OWU0Nzg1MzBkZDAxNzhmNTQzYjJhMTUxZWZhOWQ2OApB
dXRob3I6IEdlb3JnZSBNb3Vzc2FsZW0gPGdlb3JnZS5tb3Vzc2FsZW1Ab3V0bG9vay5jb20+Cgpk
dC1iaW5kaW5nczogdXNiOiBxY29tLHNucHMtZHdjMzogQWRkIGNsb2NrcyBmb3IgVVNCMyBvbiBR
dWFsY29tbSBJUFE1MDE4CgpUaGlzIGNvbW1pdCBhZGRzIHN1cHBvcnQgZm9yIHRoZSBhdXggYW5k
IGxmcHMgY2xvY2tzIGZvciB0aGUgUXVhbGNvbW0KSVBRNTAxOCBTb0MgaW4gdGhlIHNucHMtZHdj
MyBkZXZpY2UgdHJlZSBiaW5kaW5ncy4gSXQgY3JlYXRlcyBhIG5ldwpjb25kaXRpb25hbCBibG9j
ayB0byBzcGVjaWZ5IHRoZXNlIGV4dHJhIGNsb2NrcyBhbmQgcmVtb3ZlcyB0aGUgY29tcGF0aWJs
ZQpzdHJpbmcgZnJvbSBhIHNoYXJlZCBjb25maWd1cmF0aW9uLgoKPiBkaWZmIC0tZ2l0IGEvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi9xY29tLHNucHMtZHdjMy55YW1sIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi9xY29tLHNucHMtZHdjMy55YW1s
Cj4gaW5kZXggZTU5ZmJmYzFhZjcxYi4uZTNlMjJhYzg0NjJkZSAxMDA2NDQKPiAtLS0gYS9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNiL3Fjb20sc25wcy1kd2MzLnlhbWwKPiAr
KysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNiL3Fjb20sc25wcy1kd2Mz
LnlhbWwKPiBAQCAtMTgxLDYgKzE4MSwyNiBAQCBhbGxPZjoKPiAgICAgICAgICAgICAgLSBjb25z
dDogc2xlZXAKPiAgICAgICAgICAgICAgLSBjb25zdDogbW9ja191dG1pCj4gIAo+ICsgIC0gaWY6
Cj4gKyAgICAgIHByb3BlcnRpZXM6Cj4gKyAgICAgICAgY29tcGF0aWJsZToKPiArICAgICAgICAg
IGNvbnRhaW5zOgo+ICsgICAgICAgICAgICBlbnVtOgo+ICsgICAgICAgICAgICAgIC0gcWNvbSxp
cHE1MDE4LWR3YzMKPiArICAgIHRoZW46Cj4gKyAgICAgIHByb3BlcnRpZXM6Cj4gKyAgICAgICAg
Y2xvY2tzOgo+ICsgICAgICAgICAgbWluSXRlbXM6IDYKCltTZXZlcml0eTogTWVkaXVtXQpXaWxs
IHRoaXMgYnJlYWsgZHRic19jaGVjayBmb3IgZXhpc3RpbmcgSGlnaC1TcGVlZCBvbmx5IGRldmlj
ZSB0cmVlcz8KClRoZSBjb21taXQgbWVzc2FnZSBub3RlcyB0aGVzZSBuZXcgY2xvY2tzIGFyZSBv
bmx5IHJlcXVpcmVkIGZvciBVU0IKU3VwZXItU3BlZWQgc3VwcG9ydCwgYnV0IHNldHRpbmcgbWlu
SXRlbXMgdG8gNiBpbiB0aGUgYWxsT2YgY29uZGl0aW9uYWwKYmxvY2sgZm9yIHFjb20saXBxNTAx
OC1kd2MzIGluCkRvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91c2IvcWNvbSxzbnBz
LWR3YzMueWFtbCBtYW5kYXRlcyBhbGwgNgpjbG9ja3MgZm9yIGV2ZXJ5IGRldmljZSB0cmVlIHVz
aW5nIHRoaXMgY29tcGF0aWJsZSBzdHJpbmcuCgpTaW5jZSBvbGRlciBjb25maWd1cmF0aW9ucyBv
bmx5IHByb3ZpZGUgNCBjbG9ja3MsIHRoZXkgd2lsbCBmYWlsIHNjaGVtYQp2YWxpZGF0aW9uLgoK
U2hvdWxkIG1pbkl0ZW1zIGJlIHNldCB0byA0IHRvIHByZXNlcnZlIGJhY2t3YXJkIGNvbXBhdGli
aWxpdHk/Cgo+ICsgICAgICAgICAgbWF4SXRlbXM6IDYKPiArICAgICAgICBjbG9jay1uYW1lczoK
PiArICAgICAgICAgIGl0ZW1zOgo+ICsgICAgICAgICAgICAtIGNvbnN0OiBjb3JlCj4gKyAgICAg
ICAgICAgIC0gY29uc3Q6IGlmYWNlCj4gKyAgICAgICAgICAgIC0gY29uc3Q6IHNsZWVwCj4gKyAg
ICAgICAgICAgIC0gY29uc3Q6IG1vY2tfdXRtaQo+ICsgICAgICAgICAgICAtIGNvbnN0OiBhdXgK
PiArICAgICAgICAgICAgLSBjb25zdDogbGZwcwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0
dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDgxMi1pcHE1MDE4LXVzYjMtdjItMC04
ZjM1NWQ3ZmYwZWZAb3V0bG9vay5jb20/cGFydD03CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
