Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94493C624D2
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 12:38:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+bFv0Mp46o2LLTC/QPxZ9g2zkMzohCFWN2FGtVz6E54=; b=a1m3xxxJ92IYPg
	82+pEKap7LPSSMbtn+Pt2Rh3051ZgGKTzsy/ev86ZKNRJ8QHU9E2/oWnlIbcl5qOiyBroHgUBHHa6
	0jsNU7qvRKM8oSchs5ONTy1sH6AKmjLwPy+Bw5shkv5G1y/yC89WNO5g16ehYXHbMm5uF6GaEQ+sU
	WNX1Q72N2yDw/XyxiqNj4Hc/DVvZYpjMSxZMaZuAVRIkK2lRmNGq3s+FuTHil26HJLQ28W1VomUNs
	ORToKh5t57YF/pSxvC4teuRoOaK7yG8u+rNPHFAlctnA0OwD6sKRwu1pf9GVG0ITXyi2c/lDaXHkn
	xPvYGwoiUtf9lgWLMFDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Nkw-0000000C7s1-0kqZ;
	Tue, 01 Sep 2026 12:38:26 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Nku-0000000C7rd-3EhY
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 12:38:24 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 486AD42E2F;
	Tue,  1 Sep 2026 12:38:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE1CA1F00A3D;
	Tue,  1 Sep 2026 12:38:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788266303;
	bh=VeNGPjKZBwOymK8viHv5YP5uFkAwxTsnF5fOnCaEBp8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Om+/qkcle2hsEcibWMtideHU/g+6AD5l2d+o94kh9jtBZJgoqo4rsAYyCa68Xe2Tk
	 eTa0wpqF4AcXfUIyO1NfiZFy14Me/dyMnY0zm42sOK9WAt6Cnl5u9GNH8ILe4HwAl/
	 9LDBqRqqSKm2hkzKH2CrfimZCwbh96e0/vcCdVq7CXqxFwzbY5hjLntmCPbryqvKAM
	 Kja/5PhDfrYFNgYGHy8vDTw2kqSS+x4CIsXNk4UJynGlRrcZx3EHSDdxz51fgNg534
	 dLjSfJ/d6CKPT6xqdnDwnKUTRphP2mjYhJ27I5BQyAhOeib17BZtVjW5Ja70sqTepg
	 vj6ZWq8gBrzpA==
Date: Tue, 1 Sep 2026 14:38:02 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, usb4-upstream@oss.qualcomm.com, 
	Raghavendra Thoorpu <rthoorpu@qti.qualcomm.com>, Mika Westerberg <westeri@kernel.org>, 
	Sven Peter <sven@kernel.org>, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v4 2/5] phy: core: Define TBT phy_mode
Message-ID: <qbzp7sohhokldn5vt5cika77rkqnvqvwadx4bcpyqagyts2cn2@xsdp3gnqiqkk>
References: <20260820-topic-usb4phy-v4-0-aec9d2cb31f6@oss.qualcomm.com>
 <20260820-topic-usb4phy-v4-2-aec9d2cb31f6@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260820-topic-usb4phy-v4-2-aec9d2cb31f6@oss.qualcomm.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gVGh1LCBBdWcgMjAsIDIwMjYgYXQgMDQ6MjQ6MTFQTSArMDIwMCwgS29ucmFkIER5YmNpbyB3
cm90ZToKPiBGcm9tOiBLb25yYWQgRHliY2lvIDxrb25yYWQuZHliY2lvQG9zcy5xdWFsY29tbS5j
b20+Cj4gCj4gVGhlcmUgZXhpc3QgT1MtYWNjZXNzaWJsZSBVU0I0IGFuZCBUaHVuZGVyYm9sdCBQ
SFlzIHRoYXQgbmVlZCBzcGVjaWZpYwo+IGNvbmZpZ3VyYXRpb24uIERlZmluZSBhIG5ldyBwaHlf
bW9kZSBmb3IgdGhlbS4KPiAKPiBDdXJyZW50bHksIFVTQjQgYW5kIFRCVDMgYXJlIGRlZmluZWQg
YXMgc3VibW9kZXMsIGJlY2F1c2UgdGhleSdyZSBxdWl0ZQo+IGRpc3RpbmN0LCBtb3N0IHZpc2li
bHkgaW4gdGhlIGVsZWN0cmljYWwvYW5hbG9nIGFzcGVjdHMgKHNsaWdodGx5Cj4gZGlmZmVyZW50
IGZyZXF1ZW5jaWVzLCB0aW1pbmdzLCBldGMuKS4gVGhpcyByZXN1bHRzIGluIGEgbmVlZCB0byBt
YWtlCj4gdGhlIFBIWSBhd2FyZSBvZiB0aGUgYWN0dWFsIG1vZGUgbmVlZGVkIChhdCBsZWFzdCBp
biB0aGUgUXVhbGNvbW0KPiBpbXBsZW1lbnRhdGlvbiwgYnV0IEkgYmVsaWV2ZSB0aGF0J2xsIGJl
IGEgZ2VuZXJhbCBuZWVkKS4KPiAKPiBOZXdlciB2ZXJzaW9ucyBvZiBUQlQgYXJlIGJhc2ljYWxs
eSBzdXBlcnNldHMgb2YgVVNCNCB3aXRoIGhpZ2hlcgo+IGhvc3Qtc2lkZSByZXF1aXJlbWVudHMs
IHNvIHRoZXNlIGFyZSBub3QgZGVmaW5lZC4gVGhpcyBjYW4gYWx3YXlzIGJlCj4gY2hhbmdlZCBh
cyBuZWNlc3NhcnkuCj4gCj4gUmV2aWV3ZWQtYnk6IERtaXRyeSBCYXJ5c2hrb3YgPGRtaXRyeS5i
YXJ5c2hrb3ZAb3NzLnF1YWxjb21tLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBLb25yYWQgRHliY2lv
IDxrb25yYWQuZHliY2lvQG9zcy5xdWFsY29tbS5jb20+CgpSZXZpZXdlZC1ieTogTWFuaXZhbm5h
biBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1Ab3NzLnF1YWxjb21tLmNvbT4KCi0g
TWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXg
rq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
