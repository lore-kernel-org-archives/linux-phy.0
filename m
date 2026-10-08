Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D08FCA6007
	for <linux-phy@archiver.kernel.org>; Thu,  8 Oct 2026 01:58:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sFl7X6C+pXZEmAolX9eW8g8T2cUNdGOb16rppcPpJXg=; b=3yE50TRkEBX2MB
	H5/ZF2uVOMuZ9Dg75qrIZSc2DSbgOfOuLdTQDBQTMLQP5AJZ7HlKCn8NyZEiyOnLzO+XhRVy6nkIH
	uKYNzjNRWBSECw7y/lFssp2KQCCALZ2QB/r/CePyWVAqnfEfJl13qYgz1lof0iOEW+VTo77CmT6tc
	vYp+sTgMZrDM7EF6sD2qZ25DISPqoTMphSEoRaPGr2wfBV+ID6MsT1mmuemXCRPtvFx8v/q5JGO8Y
	S+s/nSIe+Lf4oFcs++AOgZdQobd5O2dBqPTxKP47SlzTWB18EqCczAHkiNRfpqgdPhc7WPtuqgaAJ
	+Y7aRS3jqFZWZasgItbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEdP3-00000003NdE-2ypX;
	Thu, 08 Oct 2026 01:58:37 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEdP2-00000003Nd6-2SiJ
	for linux-phy@lists.infradead.org;
	Thu, 08 Oct 2026 01:58:36 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 16F5A432AB;
	Thu,  8 Oct 2026 01:58:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F6311F000FF;
	Thu,  8 Oct 2026 01:58:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791424716;
	bh=vQnGJ+C1sN32AfGgrQoHVj6yJ95PC8XLu+MQxPG/bxM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=msakGurT+cpVrZwU5dXOEX1qlDUeByUe6mvChOWsY74YG1+HkyjKBaxOEDBT42v54
	 6f+itUQCbjC2PLoDL/c8/dHI8y56kaYn0X8G4AiA+d01Oa4V7qdkgdcQfhD56NQslq
	 di0Nlg+AeY/vzcZIP9PjQ6XIImQPUVybjk7rV8espxu7fpxIpw8Buguyg6zZ4tr7rm
	 bXMI5vDOwF4AB0kq7vKXpTAZo90ljCxXKr2A6N+gQl3scPjcxGRTGV68/528u3UCfn
	 Y7Jn3o/4PJpne/t68dpc3QTuFFJG5BHe0bPmHFYMUKLJqtc4kIptFY1fWsHsMGqfVj
	 3+KQrjlNO/PHg==
Message-ID: <sashiko-outbox-163502@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/3] dt-bindings: phy: qcom,snps-eusb2-phy: Add Nord bus
 clock
To: "Shawn Guo" <shengchao.guo@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, robh@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20261008015017.3359804-3-shengchao.guo@oss.qualcomm.com>
References: <20261008015017.3359804-1-shengchao.guo@oss.qualcomm.com>
 <20261008015017.3359804-3-shengchao.guo@oss.qualcomm.com>
Date: Thu, 08 Oct 2026 01:58:35 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gZHQtYmluZGluZ3M6
IGZhbGxiYWNrIGluY29tcGF0aWJpbGl0eSBmb3IgcWNvbSxub3JkLXNucHMtZXVzYjItcGh5Ci0t
Cgpjb21taXQgZmRlMjdlMTVkZTkxMmFmMmEzN2EzODNhMjNhMGY5NjRiYzcyOWJmMgpBdXRob3I6
IFNoYXduIEd1byA8c2hlbmdjaGFvLmd1b0Bvc3MucXVhbGNvbW0uY29tPgoKZHQtYmluZGluZ3M6
IHBoeTogcWNvbSxzbnBzLWV1c2IyLXBoeTogQWRkIE5vcmQgYnVzIGNsb2NrCgpUaGlzIHBhdGNo
IGFsbG93cyBhbiBvcHRpb25hbCBzZWNvbmQgYnVzIGNsb2NrIGZvciB0aGUgQUhCMlBIWSBicmlk
Z2UuCkl0IHJlcXVpcmVzIHRoaXMgY2xvY2sgc3BlY2lmaWNhbGx5IGZvciBxY29tLG5vcmQtc25w
cy1ldXNiMi1waHksIHdoaWxlCmtlZXBpbmcgb3RoZXIgY29tcGF0aWJsZXMgbGltaXRlZCB0byB0
aGUgc2luZ2xlIHJlZiBjbG9jay4KCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9waHkvcWNvbSxzbnBzLWV1c2IyLXBoeS55YW1sIGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHNucHMtZXVzYjItcGh5LnlhbWwKPiBpbmRl
eCA5MzFjZDBlN2QyOTdlLi42N2YyYTU4N2U2NWNjIDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxzbnBzLWV1c2IyLXBoeS55YW1sCj4gKysr
IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHNucHMtZXVzYjIt
cGh5LnlhbWwKClsgLi4uIF0KCj4gQEAgLTc3LDYgKzgxLDI0IEBAIGFsbE9mOgo+ICAgICAgICBy
ZXF1aXJlZDoKPiAgICAgICAgICAtIHJlc2V0cwo+ICAKPiArICAtIGlmOgo+ICsgICAgICBwcm9w
ZXJ0aWVzOgo+ICsgICAgICAgIGNvbXBhdGlibGU6Cj4gKyAgICAgICAgICBjb250YWluczoKPiAr
ICAgICAgICAgICAgY29uc3Q6IHFjb20sbm9yZC1zbnBzLWV1c2IyLXBoeQo+ICsgICAgdGhlbjoK
PiArICAgICAgcHJvcGVydGllczoKPiArICAgICAgICBjbG9ja3M6Cj4gKyAgICAgICAgICBtaW5J
dGVtczogMgo+ICsgICAgICAgIGNsb2NrLW5hbWVzOgo+ICsgICAgICAgICAgbWluSXRlbXM6IDIK
W1NldmVyaXR5OiBNZWRpdW1dClNpbmNlIE5vcmQgcmVxdWlyZXMgYW4gYWRkaXRpb25hbCBidXMg
Y2xvY2sgZm9yIHJlZ2lzdGVyIGFjY2VzcywgaXMgaXQKdHJ1bHkgYmFja3dhcmQgY29tcGF0aWJs
ZSB3aXRoIHRoZSBzbTg1NTAgZmFsbGJhY2s/CgpDdXJyZW50bHksIHByb3BlcnRpZXM6Y29tcGF0
aWJsZSByZXF1aXJlcyBOb3JkIHRvIHVzZSB0aGUgc204NTUwIGZhbGxiYWNrOgoKcHJvcGVydGll
czoKICBjb21wYXRpYmxlOgogICAgb25lT2Y6CiAgICAgIC0gaXRlbXM6CiAgICAgICAgICAtIGVu
dW06CiAgICAgICAgICAgICAgLSBxY29tLG5vcmQtc25wcy1ldXNiMi1waHkKICAgICAgICAgICAg
ICAuLi4KICAgICAgICAgIC0gY29uc3Q6IHFjb20sc204NTUwLXNucHMtZXVzYjItcGh5CgpJZiBh
biBvbGRlciBrZXJuZWwgdXNlcyB0aGUgZmFsbGJhY2sgZHJpdmVyIHRvIHByb2JlIHRoZSBOb3Jk
IGhhcmR3YXJlLCBpdAp3aWxsIG9ubHkgZW5hYmxlIHRoZSByZWYgY2xvY2suIFRoaXMgd2lsbCBs
ZWF2ZSB0aGUgQUhCMlBIWSBicmlkZ2UgY2xvY2sKZGlzYWJsZWQsIGxlYWRpbmcgdG8gcmVnaXN0
ZXIgYWNjZXNzIHRpbWVvdXRzICgtMTEwKSBkdXJpbmcgcHJvYmUuCgpTaG91bGQgcWNvbSxub3Jk
LXNucHMtZXVzYjItcGh5IGJlIHJlbW92ZWQgZnJvbSB0aGUgc204NTUwIGZhbGxiYWNrIGxpc3QK
c2luY2UgaXQgY2Fubm90IGJlIHNhZmVseSBkcml2ZW4gYnkgdGhlIHNtODU1MCBkcml2ZXI/Cgot
LSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIw
MjYxMDA4MDE1MDE3LjMzNTk4MDQtMS1zaGVuZ2NoYW8uZ3VvQG9zcy5xdWFsY29tbS5jb20/cGFy
dD0yCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
