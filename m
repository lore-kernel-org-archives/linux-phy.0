Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28AADCD8CB9
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 12:25:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VWy/kolT4N7oqf3TPIalUTABYn9hd1hu2q+LtqaldU0=; b=K52fZoDVBoEy6+
	LenosiQrOjZM1fNaE/FGOFK8uiCfeuR3sgoi/frf2fISHJzRvXBDFsDBlCBCZJ744CqWH7xsEeQUv
	7LcrZnWQXOB1XLCe09uZDHfGVZUxA6pExcR7W4Lx6NFXdxBg4W+lme4W6jM9VTXiXaXI0JBnfP6W4
	rm8z9ZPcIveEJwYUhqkWV6gDPHs+CvOuFP50j6Jq2tVYvYh1sLQ6X6+Y1vDL6maKPcEXEKjKDuoBa
	HeLnYYb0d0qKCMhrWlN6asP0LAEh9pR+obwp3GoPn5ksR+XiZM9aXQlC9Xrq5WflHNqt2pg53bbkJ
	qnkYOcUCucG27lOOoQeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXHzZ-00000007dQq-3qO1;
	Wed, 10 Jun 2026 12:25:09 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXHzY-00000007dQh-3K5P
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 12:25:08 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 401556008A;
	Wed, 10 Jun 2026 12:25:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8AA091F00893;
	Wed, 10 Jun 2026 12:25:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781094308;
	bh=B35Umq57HQiE8ceFOZtAc6XbXgMcFQ6f57w9rBxG3PU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=WrDcvp909kUHB2CXXAlTql4SHJG7N0Ln+Ul0vvO16/XNFsRM059C43+vXhN+fPfnv
	 vVewR2//DXXUdZRgP8HP34+3veCNvKwJu5KKlxsd6Wn25LAhhtaE5Al/gMebuQ0Gh6
	 7CXa+R6yfBKpimpweXH9tZrprV/Di/vfsoUqzJbPVWMtj7p4lGohYW8zAdc3W9EHts
	 z/p/HA24rGPUGPODCE8/cFyYiM/YzkYPILj/+QRuoB5Zxr2cjWnpoQSKI49HsPCdWc
	 Q8oL055tIKbLmlUAI5KGdRAD5FRh7d8T75Jwh2cvAAmgy2YO8NkFQFQhDK/lnTf3a+
	 cy7IGTr/9/rHw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/4] dt-bindings: phy: qcom,qusb2: Straighten out SM6125
 and MSM8996
To: "Konrad Dybcio" <konradybcio@kernel.org>
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, olteanv@gmail.com, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260610-topic-8996_61x5_qusb2phy-v1-1-d7135980e78f@oss.qualcomm.com>
References: <20260610-topic-8996_61x5_qusb2phy-v1-1-d7135980e78f@oss.qualcomm.com>
Date: Wed, 10 Jun 2026 12:25:07 +0000
Message-Id: <20260610122507.8AA091F00893@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gRHJpdmVyL1NjaGVt
YSBNaXNtYXRjaDogRHJpdmVyIHVuY29uZGl0aW9uYWxseSByZXF1ZXN0cyAndmRkJyByZWd1bGF0
b3Igd2hpbGUgc2NoZW1hIHJlbW92ZXMgaXQgZm9yIE1TTTg5OTYKLS0KCmNvbW1pdCAzZTI4YTJj
MDQyNTI3MmJhNjgxOGIwZGNhNWYxZDA0YjAwYTAwNjYyCkF1dGhvcjogS29ucmFkIER5YmNpbyA8
a29ucmFkLmR5YmNpb0Bvc3MucXVhbGNvbW0uY29tPgoKZHQtYmluZGluZ3M6IHBoeTogcWNvbSxx
dXNiMjogU3RyYWlnaHRlbiBvdXQgU002MTI1IGFuZCBNU004OTk2CgpUaGlzIGNvbW1pdCBhZGRz
IGEgc3BlY2lmaWMgY29tcGF0aWJsZSBzdHJpbmcgZm9yIFNNNjEyNSB3aXRoIGFuIFNNNjExNQpm
YWxsYmFjay4gSXQgYWxzbyB1cGRhdGVzIHRoZSBNU004OTk2IGJpbmRpbmdzIHRvIHJlcXVpcmUg
cG93ZXIgZG9tYWlucwphbmQgb3BlcmF0aW5nIHBlcmZvcm1hbmNlIHBvaW50cyBpbnN0ZWFkIG9m
IGEgdmRkLXN1cHBseS4KCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9waHkvcWNvbSxxdXNiMi1waHkueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9waHkvcWNvbSxxdXNiMi1waHkueWFtbAo+IGluZGV4IDM5ODUxYmE5ZGU0MzYu
LjgwN2Q2NGFlZTU0N2MgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3BoeS9xY29tLHF1c2IyLXBoeS55YW1sCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHF1c2IyLXBoeS55YW1sCgpbIC4uLiBdCgo+IEBAIC0x
ODIsNiArMTkwLDIyIEBAIGFsbE9mOgo+ICAgICAgICAgIHFjb20scHJlZW1waGFzaXMtd2lkdGg6
IGZhbHNlCj4gICAgICAgICAgcWNvbSxoc2Rpc2MtdHJpbS12YWx1ZTogZmFsc2UKPiAgCj4gKyAg
IyBPbiBNU004OTk2LCBWREQgaXMgc3VwcGxpZWQgdmlhIHRoZSBNWCBwb3dlciBkb21haW4KPiAr
ICAtIGlmOgo+ICsgICAgICBwcm9wZXJ0aWVzOgo+ICsgICAgICAgIGNvbXBhdGlibGU6Cj4gKyAg
ICAgICAgICBjb25zdDogcWNvbSxtc204OTk2LXF1c2IyLXBoeQo+ICsgICAgdGhlbjoKPiArICAg
ICAgcmVxdWlyZWQ6Cj4gKyAgICAgICAgLSBwb3dlci1kb21haW5zCj4gKyAgICAgICAgLSByZXF1
aXJlZC1vcHBzCj4gKyAgICBlbHNlOgo+ICsgICAgICBwcm9wZXJ0aWVzOgo+ICsgICAgICAgIHBv
d2VyLWRvbWFpbnM6IGZhbHNlCj4gKyAgICAgICAgcmVxdWlyZWQtb3BwczogZmFsc2UKPiArICAg
ICAgcmVxdWlyZWQ6Cj4gKyAgICAgICAgLSB2ZGQtc3VwcGx5CgpbIC4uLiBdCgo+IEBAIC0xOTYs
MTAgKzIyMCwxMyBAQCBleGFtcGxlczoKPiAgICAgICAgICAgICAgICAgICA8JmdjYyBHQ0NfUlgx
X1VTQjJfQ0xLUkVGX0NMSz47Cj4gICAgICAgICAgY2xvY2stbmFtZXMgPSAiY2ZnX2FoYiIsICJy
ZWYiOwo+ICAKPiAtICAgICAgICB2ZGQtc3VwcGx5ID0gPCZwbTg5OTRfbDI4PjsKCltTZXZlcml0
eTogTWVkaXVtXQpEb2VzIHRoaXMgcmVtb3ZhbCBvZiB2ZGQtc3VwcGx5IGZvciBNU004OTk2IGNy
ZWF0ZSBhIG1pc21hdGNoIHdpdGggdGhlCmV4aXN0aW5nIHF1c2IyIGRyaXZlcj8KCkxvb2tpbmcg
YXQgcXVzYjJfcGh5X3Byb2JlKCkgaW4gZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcXVz
YjIuYywgdGhlCmRyaXZlciB1bmNvbmRpdGlvbmFsbHkgcmVxdWVzdHMgYWxsIHJlZ3VsYXRvcnMg
ZGVmaW5lZCBpbgpxdXNiMl9waHlfdnJlZ19uYW1lcywgd2hpY2ggaW5jbHVkZXMgdGhlIHZkZCBz
dXBwbHk6Cgpkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xdXNiMi5jOnF1c2IyX3BoeV9w
cm9iZSgpCiAgICBudW0gPSBBUlJBWV9TSVpFKHFwaHktPnZyZWdzKTsKICAgIGZvciAoaSA9IDA7
IGkgPCBudW07IGkrKykKICAgICAgICBxcGh5LT52cmVnc1tpXS5zdXBwbHkgPSBxdXNiMl9waHlf
dnJlZ19uYW1lc1tpXTsKCiAgICByZXQgPSBkZXZtX3JlZ3VsYXRvcl9idWxrX2dldChkZXYsIG51
bSwgcXBoeS0+dnJlZ3MpOwoKSWYgYSBkZXZpY2UgdHJlZSBvbWl0cyB2ZGQtc3VwcGx5IHRvIGZv
bGxvdyB0aGlzIG5ldyBzY2hlbWEgaW50ZW50LCB3aWxsCnRoZSBkcml2ZXIgZmFpbCB0byBwcm9i
ZSB3aXRoIC1FTk9ERVYgb3IgbG9nIGFuIHVud2FudGVkIHdhcm5pbmcgd2hlbgpmYWxsaW5nIGJh
Y2sgdG8gYSBkdW1teSByZWd1bGF0b3I/IAoKU2hvdWxkIHRoZSBkcml2ZXIgYmUgdXBkYXRlZCB0
byBoYW5kbGUgdGhlIHZkZCByZWd1bGF0b3IgYXMgb3B0aW9uYWwgZm9yCmhhcmR3YXJlIHZhcmlh
bnRzIHRoYXQgdXNlIHBvd2VyIGRvbWFpbnM/Cgo+ICAgICAgICAgIHZkZGEtcGxsLXN1cHBseSA9
IDwmcG04OTk0X2wxMj47Cj4gICAgICAgICAgdmRkYS1waHktZHBkbS1zdXBwbHkgPSA8JnBtODk5
NF9sMjQ+OwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9w
YXRjaHNldC8yMDI2MDYxMC10b3BpYy04OTk2XzYxeDVfcXVzYjJwaHktdjEtMC1kNzEzNTk4MGU3
OGZAb3NzLnF1YWxjb21tLmNvbT9wYXJ0PTEKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
