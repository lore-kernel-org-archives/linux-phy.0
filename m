Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45B6EEB64DA
	for <linux-phy@archiver.kernel.org>; Wed,  5 Jul 2023 08:26:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x8CAjnJY+IT8oL0m9CAWrW8gNTK+44Rx/OKx1eAlE/E=; b=B+G6HWz/wFb2Of
	8JPWNfpeYaNsE7/cET1LPQpJXjYvQdxsZeyjojKlY+MAS9vHsoIEEE9y6lhXXtHszs3j0kI2WY+QQ
	vvCySXQs2snT3Q/Z1HQg2zueMrGEjXt5AYLh62zlWHomVUscP+WE40DFJ/F6Bc1jTgLwyZqCUnLo0
	XwmTOEh5CqS8Z06DqEIgcnbIUWSSpHzwhe+4ErnIiojpcY/OaLX7f3lOf4ic6ykWg0Ls0w3a43u/1
	n9OB9JbNDkNLAPKkRIU+ntEF2qX9XzBD7QBwPwsuXL7nF5BYfM53wkuwzJFjngo6bm70/hXUrxL0t
	ZRtOZZ45Nhtxw9d38N8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGxqb-00FCtn-34;
	Wed, 05 Jul 2023 08:26:49 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGxqa-00FCtL-0i
	for linux-phy@lists.infradead.org;
	Wed, 05 Jul 2023 08:26:49 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 98FD961483;
	Wed,  5 Jul 2023 08:26:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39E69C433C8;
	Wed,  5 Jul 2023 08:26:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688545607;
	bh=vbVB+2RsUlsWIw6dl4Q4bSyMWzFos1EUXHH6bK3/yy4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ACz0NMoLXOYC827FB2f9E8fs7GHHqax4xUJr2SkTX50NGlbcLbFamx+mc5pMJ3G4h
	 nNa153G8FGm0ANZRn7cJv2elOBQ1zqVKnStGP59VRjczwArQAdulm/QyAdXyD1UlJm
	 WUEWBMUkcGr76YKChfhn4RhHFcEIKoeGN4kt1Dqlp8eBA9O39vLFm5Nyw5a+JJAQD/
	 GS1JVdpRy8Gtml2v/sPosrA7MHdRA7XLp8uOishmw77FjVD+fcJJDrFTSC56ufP5OR
	 Zp5fq0sr6MJ5Yx2FMoUTt37B5lAgdl2PFjJhAEjCbav+XjEbOWmL+P7ZnZ09W/Wnvo
	 Bp0YpdDZVEcvA==
Date: Wed, 5 Jul 2023 13:56:29 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	konrad.dybcio@linaro.org, quic_shazhuss@quicinc.com,
	quic_nitegupt@quicinc.com, quic_ramkri@quicinc.com,
	quic_nayiluri@quicinc.com,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v1 2/6] dt-bindings: phy: qcom,qmp: Add sa8775p QMP PCIe
 PHY
Message-ID: <20230705082629.GB11854@thinkpad>
References: <1688545032-17748-1-git-send-email-quic_msarkar@quicinc.com>
 <1688545032-17748-3-git-send-email-quic_msarkar@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1688545032-17748-3-git-send-email-quic_msarkar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230705_012648_337205_BC18589E 
X-CRM114-Status: GOOD (  13.08  )
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

T24gV2VkLCBKdWwgMDUsIDIwMjMgYXQgMDE6NDc6MDdQTSArMDUzMCwgTXJpbm1heSBTYXJrYXIg
d3JvdGU6Cj4gQWRkIGRldmljZXRyZWUgWUFNTCBiaW5kaW5nIGZvciBRdWFsY29tbSBRTVAgUENJ
ZSBQSFkKPiBmb3IgU0E4Nzc1cCBwbGF0Zm9ybS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBNcmlubWF5
IFNhcmthciA8cXVpY19tc2Fya2FyQHF1aWNpbmMuY29tPgo+IC0tLQo+ICAuLi4vcGh5L3Fjb20s
c2M4MjgweHAtcW1wLXBjaWUtcGh5LnlhbWwgICAgICAgfCAxOSArKysrKysrKysrKysrKysrKyst
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4g
ZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxz
YzgyODB4cC1xbXAtcGNpZS1waHkueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9waHkvcWNvbSxzYzgyODB4cC1xbXAtcGNpZS1waHkueWFtbAo+IGluZGV4IGEwNDA3ZmM3
OTU2My4uOTMwOTA2NmJmY2VlIDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9waHkvcWNvbSxzYzgyODB4cC1xbXAtcGNpZS1waHkueWFtbAo+ICsrKyBiL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxzYzgyODB4cC1xbXAtcGNp
ZS1waHkueWFtbAo+IEBAIC0yMyw2ICsyMyw4IEBAIHByb3BlcnRpZXM6Cj4gICAgICAgIC0gcWNv
bSxzbTgzNTAtcW1wLWdlbjN4MS1wY2llLXBoeQo+ICAgICAgICAtIHFjb20sc204NTUwLXFtcC1n
ZW4zeDItcGNpZS1waHkKPiAgICAgICAgLSBxY29tLHNtODU1MC1xbXAtZ2VuNHgyLXBjaWUtcGh5
Cj4gKyAgICAgIC0gcWNvbSxzYTg3NzVwLXFtcC1nZW40eDItcGNpZS1waHkKPiArICAgICAgLSBx
Y29tLHNhODc3NXAtcW1wLWdlbjR4NC1wY2llLXBoeQoKU2FtZSBjb21tZW50IGFzIHBhdGNoIDEu
CgotIE1hbmkKCj4gIAo+ICAgIHJlZzoKPiAgICAgIG1pbkl0ZW1zOiAxCj4gQEAgLTMwLDcgKzMy
LDcgQEAgcHJvcGVydGllczoKPiAgCj4gICAgY2xvY2tzOgo+ICAgICAgbWluSXRlbXM6IDUKPiAt
ICAgIG1heEl0ZW1zOiA2Cj4gKyAgICBtYXhJdGVtczogNwo+ICAKPiAgICBjbG9jay1uYW1lczoK
PiAgICAgIG1pbkl0ZW1zOiA1Cj4gQEAgLTM5LDYgKzQxLDcgQEAgcHJvcGVydGllczoKPiAgICAg
ICAgLSBjb25zdDogY2ZnX2FoYgo+ICAgICAgICAtIGNvbnN0OiByZWYKPiAgICAgICAgLSBjb25z
dDogcmNobmcKPiArICAgICAgLSBjb25zdDogcGh5X2F1eAo+ICAgICAgICAtIGNvbnN0OiBwaXBl
Cj4gICAgICAgIC0gY29uc3Q6IHBpcGVkaXYyCj4gIAo+IEBAIC0xMzYsNiArMTM5LDIwIEBAIGFs
bE9mOgo+ICAgICAgICAgIGNsb2NrLW5hbWVzOgo+ICAgICAgICAgICAgbWluSXRlbXM6IDYKPiAg
Cj4gKyAgLSBpZjoKPiArICAgICAgcHJvcGVydGllczoKPiArICAgICAgICBjb21wYXRpYmxlOgo+
ICsgICAgICAgICAgY29udGFpbnM6Cj4gKyAgICAgICAgICAgIGVudW06Cj4gKyAgICAgICAgICAg
ICAgLSBxY29tLHNhODc3NXAtcW1wLWdlbjR4Mi1wY2llLXBoeQo+ICsgICAgICAgICAgICAgIC0g
cWNvbSxzYTg3NzVwLXFtcC1nZW40eDQtcGNpZS1waHkKPiArICAgIHRoZW46Cj4gKyAgICAgIHBy
b3BlcnRpZXM6Cj4gKyAgICAgICAgY2xvY2tzOgo+ICsgICAgICAgICAgbWluSXRlbXM6IDcKPiAr
ICAgICAgICBjbG9jay1uYW1lczoKPiArICAgICAgICAgIG1heEl0ZW1zOiA3Cj4gKwo+ICAgIC0g
aWY6Cj4gICAgICAgIHByb3BlcnRpZXM6Cj4gICAgICAgICAgY29tcGF0aWJsZToKPiAtLSAKPiAy
LjM5LjIKPiAKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/
4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
