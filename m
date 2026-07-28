Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0923EC531F9
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jul 2026 10:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MqJIYOMBKPTfpRCPFBOLAOt/xQUk41g71yM73rsBIVQ=; b=NZflXe5ptxWo0S
	YUchUH0gsi2BgFlD2jErilLBhCtMkYA1/W/2OVEW2mniBPsNyWY3I727nqCsxa2HRtxKI5SQDZzwU
	7M83N0wbIEhgaeATfwozQT8Xz7emB3E+u8Nd3Bpg3UEKBazM94m9KVdqRCLfzTeGSltXuiPqoIhTc
	4eDiH4mdPrxd20kJNl7AgHtRT/JKH1feDYKBiBOx8BPmnRsO4Xe96mEOhmpWykois4hQlSeWzG+x3
	zD7c3Sp397y7QlFXuTwMbFqmYp8AGVLTcFlNZtc0n7PzSW1EYGIYuJTfIGLD3qfjVQdetxCJ7l4IC
	HetPwXCzj1e5EEJgd0OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woetg-00000004wi2-1n0L;
	Tue, 28 Jul 2026 10:18:52 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woete-00000004whv-2bCq
	for linux-phy@lists.infradead.org;
	Tue, 28 Jul 2026 10:18:50 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 4098340088;
	Tue, 28 Jul 2026 10:18:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A581D1F000E9;
	Tue, 28 Jul 2026 10:18:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785233928;
	bh=5v+IuzVrb1HoJs5cUntZRspFCkDkXzZfZPwaeHJlO7M=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=M/cxOxfmtYPz7+bMwBKQD6y8wWY51BsqRspJQ3BUTxBoFOkGPSuOEN/seVZ1w874B
	 fZdq/vNHxeqwz6STL6HlpKDnJD8pmbgtsnvhvQyu06S80GYXfnWxPEncedYn0Xhbfw
	 n1x6EFDUjikRy/EA6J3qMYrG/wqNsT/46MaRhlxQFji8Nu9o+Ab3L8lYBY7qnU04A1
	 TyAX9UqzSx5QLZ3tS1y1OkrOz4IE213IGxj6hjCDni8dg4T89WCBMqeexpXC/6OxeS
	 i4+tVUdIMj46RonnjS+mD+S4WuaoA1OCV+hAdt38rR6fURf3R1ZcA1rNzioC9trjk/
	 m5DtOspYpIeLg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/5] dt-bindings: phy: qcom,qmp-usb3-dp: Extend X1E
 description for USB4
To: "Konrad Dybcio" <konradybcio@kernel.org>
Cc: robh@kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20260728-topic-usb4phy-v2-1-5d9dd5149ec7@oss.qualcomm.com>
References: <20260728-topic-usb4phy-v2-0-5d9dd5149ec7@oss.qualcomm.com>
 <20260728-topic-usb4phy-v2-1-5d9dd5149ec7@oss.qualcomm.com>
Date: Tue, 28 Jul 2026 10:18:47 +0000
Message-Id: <20260728101847.A581D1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gTWlzc2luZyBgbWF4SXRl
bXM6IDRgIGNvbnN0cmFpbnQgZm9yIGBjbG9jay1uYW1lc2AgaW4gdGhlIGZhbGxiYWNrIGBub3Q6
YCBjb25kaXRpb25hbCBibG9jay4KLS0KCi0tLSBQYXRjaCBbMV06IFtQQVRDSCB2MiAxLzVdIGR0
LWJpbmRpbmdzOiBwaHk6IHFjb20scW1wLXVzYjMtZHA6IEV4dGVuZCBYMUUgZGVzY3JpcHRpb24g
Zm9yIFVTQjQgLS0tCmNvbW1pdCA5NTkxODIzODUxNGZkYzg2YTk4NTcyNWE0MzcxYzY4ZjU1N2Fl
ZGEzCkF1dGhvcjogS29ucmFkIER5YmNpbyA8a29ucmFkLmR5YmNpb0Bvc3MucXVhbGNvbW0uY29t
PgoKZHQtYmluZGluZ3M6IHBoeTogcWNvbSxxbXAtdXNiMy1kcDogRXh0ZW5kIFgxRSBkZXNjcmlw
dGlvbiBmb3IgVVNCNAoKVGhpcyBjb21taXQgZXh0ZW5kcyB0aGUgWDFFIFVTQjQzRFAgUEhZIGJp
bmRpbmcgdG8gYWxsb3cgYSBmaWZ0aCBjbG9jawooUDJSUjJQKSByZXF1aXJlZCBmb3IgVVNCNCBt
b2RlLiBJdCB1cGRhdGVzIHRoZSB0b3AtbGV2ZWwgY2xvY2stbmFtZXMKY29uc3RyYWludCBhbmQg
YWRkcyBjb25kaXRpb25hbCBibG9ja3MgZm9yIHNwZWNpZmljIGNvbXBhdGlibGUgc3RyaW5ncy4K
Cj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNv
bSxzYzgyODB4cC1xbXAtdXNiNDNkcC1waHkueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9waHkvcWNvbSxzYzgyODB4cC1xbXAtdXNiNDNkcC1waHkueWFtbAo+IC0tLSBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxzYzgyODB4cC1xbXAt
dXNiNDNkcC1waHkueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9waHkvcWNvbSxzYzgyODB4cC1xbXAtdXNiNDNkcC1waHkueWFtbAoKWyAuLi4gXQoKPiBAQCAt
MTg3LDIxICsxODIsNTkgQEAgYWxsT2Y6CgpbIC4uLiBdCgo+ICsgIC0gaWY6Cj4gKyAgICAgIG5v
dDoKPiArICAgICAgICBwcm9wZXJ0aWVzOgo+ICsgICAgICAgICAgY29tcGF0aWJsZToKPiArICAg
ICAgICAgICAgY29udGFpbnM6Cj4gKyAgICAgICAgICAgICAgZW51bToKPiArICAgICAgICAgICAg
ICAgIC0gcWNvbSx4MWU4MDEwMC1xbXAtdXNiMy1kcC1waHkKPiArICAgICAgICAgICAgICAgIC0g
cWNvbSxzYzcxODAtcW1wLXVzYjMtZHAtcGh5Cj4gKyAgICAgICAgICAgICAgICAtIHFjb20sc2Rt
ODQ1LXFtcC11c2IzLWRwLXBoeQo+ICsgICAgdGhlbjoKPiAgICAgICAgcHJvcGVydGllczoKPiAg
ICAgICAgICBjbG9ja3M6Cj4gICAgICAgICAgICBtYXhJdGVtczogNAo+ICAgICAgICAgIGNsb2Nr
LW5hbWVzOgo+IC0gICAgICAgICAgbWF4SXRlbXM6IDQKPiArICAgICAgICAgIGl0ZW1zOgo+ICsg
ICAgICAgICAgICAtIGNvbnN0OiBhdXgKPiArICAgICAgICAgICAgLSBjb25zdDogcmVmCj4gKyAg
ICAgICAgICAgIC0gY29uc3Q6IGNvbV9hdXgKPiArICAgICAgICAgICAgLSBjb25zdDogdXNiM19w
aXBlCgpbU2V2ZXJpdHk6IExvd10KRG9lcyB0aGlzIG9taXNzaW9uIG9mIG1heEl0ZW1zOiA0IGZv
ciBjbG9jay1uYW1lcyBhbGxvdyBhbiB1bmNvbnN0cmFpbmVkCmZpZnRoIGNsb2NrIG5hbWUgdG8g
c2lsZW50bHkgcGFzcyB2YWxpZGF0aW9uPwoKU2luY2UgdGhlIHRvcC1sZXZlbCBjbG9jay1uYW1l
cyBwcm9wZXJ0eSB3YXMgdXBkYXRlZCB0byBtYXhJdGVtczogNSwgcmVwbGFjaW5nCm1heEl0ZW1z
OiA0IHdpdGggYW4gaXRlbXMgYXJyYXkgaW4gdGhpcyBmYWxsYmFjayBibG9jayB3aXRob3V0IHJl
dGFpbmluZwptYXhJdGVtczogNCBtZWFucyB0aGUgc2NoZW1hIGluaGVyaXRzIHRoZSA1LWl0ZW0g
bGltaXQuCgpBIGRldmljZSB0cmVlIHdpdGggNCBjbG9ja3MgYnV0IDUgY2xvY2stbmFtZXMgZm9y
IGEgbm9uLVgxRS9TQzcxODAvU0RNODQ1CnZhcmlhbnQgd291bGQgcGFzcyB2YWxpZGF0aW9uLgoK
LS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8y
MDI2MDcyOC10b3BpYy11c2I0cGh5LXYyLTAtNWQ5ZGQ1MTQ5ZWM3QG9zcy5xdWFsY29tbS5jb20/
cGFydD0xCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
