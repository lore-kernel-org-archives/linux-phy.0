Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73248C79F99
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 11:09:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/SYm37GTzpCusWom1Kpg96dOxNulgFLAwmhzOOP6+Ck=; b=ebAkDh50KvI4I1
	kMnpeuNuUiuK7j88GJYh1zxqvkmlEk8RfhQYINU38AV2nGhUEytoTefR279aiFwu+VZy+FfmGXbu4
	sPZMGzUmpbzBGI+sSf4KVG2OLx2tBarsGOuRb8q4bC93/YJ67T4KTehD5Xy6ycNmmnNw7HThi7RWg
	j26B9T9TjEgLyIFV1FSNFZ/vEEuj6UsBGPJ86fKef197povpW4G69Sn6gAToNp35jlQDQGhps1MDI
	W6/jaRmh7/+wto2VRrnRqVl1qpVv2r/lJ1eTWDsQqCSmLPPoVUYhqIUWGy6Kj3VYECbyaXjfkyHp8
	aE/F2zZvclwRwuao97yA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3XDm-00000006bqd-08Su;
	Mon, 07 Sep 2026 11:09:06 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3XDl-00000006bqX-1IvQ
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 11:09:05 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id E97CE4041D;
	Mon,  7 Sep 2026 11:09:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 168EA1F00AC4;
	Mon,  7 Sep 2026 11:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788779344;
	bh=MKOffp+QRUepLWRx3cEKj7QDgchxuXLg4xrZKZeAQ5g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=QFRA5riBpCuv+vbNl+CkpgU7Oa5X4VL7v9uTgFdKCsZE/uRkdgQ3Xchga9OTq1Wac
	 YtiFJ2aLjhWoWSpxJe1p+HuSMe64AiMJdr5UYfe5taeKhqkFCTr8NYZ3l8EbjIgieI
	 UKRM5G447uSAfGKO5u7Vknv3OzaY9BoPPzSDXhqs/87j5yu2OOyPTonxZ1tAjdoseK
	 lp+qd5YdoqFJTo5mkQGrlRPG7iZdm96qK5N07Zd0mnEab/NNYUCcZ5XgmfuX/bID1Z
	 ANOIT+jvFy2SbnggH+HKeVdecXy86Vxptl34doTAGx/RbrLBWbzmU0PY3kbhbw5/ER
	 VkXRpyZvpaQzg==
Date: Mon, 7 Sep 2026 13:08:55 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: george.moussalem@outlook.com
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Praveenkumar I <praveenkumar.i@oss.qualcomm.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>, 
	Nitheesh Sekar <quic_nsekar@quicinc.com>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v3 02/12] dt-bindings: phy:
 qcom,ipq5332-uniphy-pcie-usb3: Document the IPQ5018 USB3 PHY
Message-ID: <fkbmx5yyp65mp2qknnd2lbde5scfmr5dpbox5x4j4fu6uahtnl@mxx45aqojrg6>
References: <20260825-ipq5018-usb3-v3-0-39be0955a6aa@outlook.com>
 <20260825-ipq5018-usb3-v3-2-39be0955a6aa@outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260825-ipq5018-usb3-v3-2-39be0955a6aa@outlook.com>
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

T24gVHVlLCBBdWcgMjUsIDIwMjYgYXQgMDQ6Mzc6MTlQTSArMDQwMCwgR2VvcmdlIE1vdXNzYWxl
bSB2aWEgQjQgUmVsYXkgd3JvdGU6Cj4gRnJvbTogR2VvcmdlIE1vdXNzYWxlbSA8Z2VvcmdlLm1v
dXNzYWxlbUBvdXRsb29rLmNvbT4KPiAKPiBEZXNjcmliZSB0aGUgVVNCMyBQSFkgZm91bmQgaW4g
dGhlIElQUTUwMTggU29DIHNvIGFkZCB0aGUgY29tcGF0aWJsZQo+IHN0cmluZyBmb3IgaXQgYXMg
d2VsbCBhcyB0aGUgcmVxdWlyZWQgcmVzb3VyY2VzIChjbG9ja3MgYW5kIHJlc2V0cykuCj4gCj4g
VGhlIFBDSWUgYW5kIFVTQiBwaHlzaWNhbCBwYWRzIGFyZSBtdXhlZCBhbmQgc2VsZWN0aW9uIGlz
IGRvbmUgdmlhIGEKPiBjb250cm9sIHJlZ2lzdGVyIGluIFRDU1IuIEJ5IGRlZmF1bHQsIFBDSWUg
bW9kZSBpcyBzZWxlY3RlZCwgaGVuY2UgbWFrZQo+IHRoZSBwcm9wZXJ0eSBmb3IgVVNCIG11eCBz
ZWxlY3Rpb24gcmVxdWlyZWQuCj4gCj4gSW4gYWRkaXRpb24sIHRoZSBQSFkgcmVxdWlyZXMgYSA1
ViBzdXBwbHkgZm9yIFVTQjMgbW9kZSBvcGVyYXRpb24uCj4gCj4gU2lnbmVkLW9mZi1ieTogR2Vv
cmdlIE1vdXNzYWxlbSA8Z2VvcmdlLm1vdXNzYWxlbUBvdXRsb29rLmNvbT4KPiAtLS0KPiAgLi4u
L3BoeS9xY29tLGlwcTUzMzItdW5pcGh5LXBjaWUtdXNiMy1waHkueWFtbCAgICAgfCAyNCArKysr
KysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAyNCBpbnNlcnRpb25zKCspCj4g
Cj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNv
bSxpcHE1MzMyLXVuaXBoeS1wY2llLXVzYjMtcGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20saXBxNTMzMi11bmlwaHktcGNpZS11c2IzLXBoeS55YW1s
Cj4gaW5kZXggMGQ5ZDBmYjQwNWI2Li4xY2Q1MzkyYTFhMGYgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLGlwcTUzMzItdW5pcGh5LXBjaWUt
dXNiMy1waHkueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9w
aHkvcWNvbSxpcHE1MzMyLXVuaXBoeS1wY2llLXVzYjMtcGh5LnlhbWwKPiBAQCAtMTgsNiArMTgs
NyBAQCBwcm9wZXJ0aWVzOgo+ICAgIGNvbXBhdGlibGU6Cj4gICAgICBlbnVtOgo+ICAgICAgICAt
IHFjb20saXBxNTAxOC11bmlwaHktcGNpZS1waHkKPiArICAgICAgLSBxY29tLGlwcTUwMTgtdW5p
cGh5LXVzYjMtcGh5Cj4gICAgICAgIC0gcWNvbSxpcHE1MzMyLXVuaXBoeS1wY2llLXBoeQo+ICAK
PiAgICByZWc6Cj4gQEAgLTkzLDYgKzk0LDI5IEBAIGFsbE9mOgo+ICAgICAgICByZXF1aXJlZDoK
PiAgICAgICAgICAtIG51bS1sYW5lcwo+ICAKPiArICAtIGlmOgo+ICsgICAgICBwcm9wZXJ0aWVz
Ogo+ICsgICAgICAgIGNvbXBhdGlibGU6Cj4gKyAgICAgICAgICBjb250YWluczoKPiArICAgICAg
ICAgICAgZW51bToKPiArICAgICAgICAgICAgICAtIHFjb20saXBxNTAxOC11bmlwaHktdXNiMy1w
aHkKPiArICAgIHRoZW46Cj4gKyAgICAgIHByb3BlcnRpZXM6Cj4gKyAgICAgICAgY2xvY2tzOgo+
ICsgICAgICAgICAgaXRlbXM6Cj4gKyAgICAgICAgICAgIC0gZGVzY3JpcHRpb246IHVzYjMgcGlw
ZSBjbG9jawo+ICsgICAgICAgICAgICAtIGRlc2NyaXB0aW9uOiB1c2IzIGNmZyBhaGIgY2xvY2sK
PiArICAgICAgICByZXNldHM6Cj4gKyAgICAgICAgICBpdGVtczoKPiArICAgICAgICAgICAgLSBk
ZXNjcmlwdGlvbjogdXNiMyBwaHkgcmVzZXQKPiArICAgICAgICAiI2Nsb2NrLWNlbGxzIjoKPiAr
ICAgICAgICAgIGNvbnN0OiAwCj4gKyAgICAgICAgIiNwaHktY2VsbHMiOgo+ICsgICAgICAgICAg
Y29uc3Q6IDAKCmNsb2NrLWNlbGxzIGFuZCBwaHktY2VsbHMgYXJlIGFscmVhZHkgcGFydCBvZiB0
aGUgdG9wIGxldmVsICdyZXF1aXJlZCcKY29uc3RyYWludC4KCi0gTWFuaQoKLS0gCuCuruCuo+Cu
v+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
