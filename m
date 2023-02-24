Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28BD8C64ED8
	for <linux-phy@archiver.kernel.org>; Fri, 24 Feb 2023 08:23:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qh9urU0UnV8BCc+RP/gqii9IZC2W+QBV6jUBM1hNL4M=; b=QsNDsImEcdzybS
	5SiZemB5lGT36zcLaRn4SyduAlDU6xOFPafZvOpc6hoJUCzodlYhLbdRYTktEsDcU7dDUtwp2hQr/
	ZIWVsrT7gXtO0ObX1XdDLULb0g/Qx2ZBI4PsDoIg1oSiV53evlBEYlaDg8YNDXCPqtJrTOaRV0s7u
	waDGG/eR7sDu333JYZRspsrsyiKexsIikHhOy5v6yoqliL9+gkX77mU7aZnrvrlLzn9oEm8U3QOhv
	MzyTODq4YJoRS8H47+m7NhLvB+BuOvBZXlc5AnZPR1waVZF7/IPdDfPFwk0g9s09nDkHG0lRm20V8
	2HdLUOEDG5O9QDj8McKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVTMy-001WBU-Gt; Fri, 24 Feb 2023 08:23:56 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVTMv-001WAS-Dv
	for linux-phy@lists.infradead.org; Fri, 24 Feb 2023 08:23:54 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 6346F6182E;
	Fri, 24 Feb 2023 08:23:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5EBF7C433EF;
	Fri, 24 Feb 2023 08:23:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677227030;
	bh=egpj4R6Nk7pdXQzDojnEiQJzr0p1Wl3gveqprerB2C4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=J3KCgR4XlKEqGoeRXnUX0YHSXn+wA6L1gxqk3IaPoH6Yb8Fh5tYZvMwQmFWbPV5gH
	 AurR25V+xbgCocaBRWXUB5R6xn9oTNZbvDnS5ofctBaFFqBDZfl588ukBixn1M27Hq
	 6lI71jYSr+YYANAcwWn0AeuhlpZ3Kaq+3b9PKJPP3bhWa4ohfPnd4uqNeZDoo4sEeG
	 ptuRLIkaMVx05+tPtIydPlcBh54QfceDaUUBhVyA2RO+J9EZ0fLlpvm6rkd/WDt5YV
	 ELNUMvsJxFfze8w6E2kEtocCfbCc932+hiVs/F08p9BCD5b55RD7HP6VWKf+v4tjEV
	 8z0pCG+XMtzFw==
Date: Fri, 24 Feb 2023 13:53:32 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Devi Priya <quic_devipriy@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
	lpieralisi@kernel.org, kw@linux.com, robh@kernel.org,
	bhelgaas@google.com, krzysztof.kozlowski+dt@linaro.org,
	vkoul@kernel.org, kishon@kernel.org, mturquette@baylibre.com,
	sboyd@kernel.org, mani@kernel.org, p.zabel@pengutronix.de,
	svarbanov@mm-sol.com, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-clk@vger.kernel.org, quic_srichara@quicinc.com,
	quic_gokulsri@quicinc.com, quic_sjaganat@quicinc.com,
	quic_kathirav@quicinc.com, quic_arajkuma@quicinc.com,
	quic_anusha@quicinc.com
Subject: Re: [PATCH 1/7] dt-bindings: PCI: qcom: Add IPQ9574 specific
 compatible
Message-ID: <20230224082332.GA5443@thinkpad>
References: <20230214164135.17039-1-quic_devipriy@quicinc.com>
 <20230214164135.17039-2-quic_devipriy@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230214164135.17039-2-quic_devipriy@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230224_002353_590422_BEC1483B 
X-CRM114-Status: GOOD (  14.03  )
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

T24gVHVlLCBGZWIgMTQsIDIwMjMgYXQgMTA6MTE6MjlQTSArMDUzMCwgRGV2aSBQcml5YSB3cm90
ZToKPiBEb2N1bWVudCB0aGUgY29tcGF0aWJsZSBmb3IgSVBROTU3NAo+IAoKWW91IGRpZG4ndCBt
ZW50aW9uIGFib3V0IHRoZSAibXNpLXBhcmVudCIgcHJvcGVydHkgdGhhdCBpcyBiZWluZyBhZGRl
ZApieSB0aGlzIHBhdGNoLgoKPiBTaWduZWQtb2ZmLWJ5OiBEZXZpIFByaXlhIDxxdWljX2Rldmlw
cml5QHF1aWNpbmMuY29tPgo+IC0tLQo+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcWNv
bSxwY2llLnlhbWwgICAgfCA3MiArKysrKysrKysrKysrKysrKystCj4gIDEgZmlsZSBjaGFuZ2Vk
LCA3MCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3Fjb20scGNpZS55YW1sIGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9xY29tLHBjaWUueWFtbAo+IGluZGV4IDg3
MjgxN2Q2ZDJiZC4uZGFiZGYyNjg0ZTJkIDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9wY2kvcWNvbSxwY2llLnlhbWwKPiArKysgYi9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3Fjb20scGNpZS55YW1sCj4gQEAgLTI2LDYgKzI2LDcg
QEAgcHJvcGVydGllczoKPiAgICAgICAgICAgIC0gcWNvbSxwY2llLWlwcTgwNjQtdjIKPiAgICAg
ICAgICAgIC0gcWNvbSxwY2llLWlwcTgwNzQKPiAgICAgICAgICAgIC0gcWNvbSxwY2llLWlwcTgw
NzQtZ2VuMwo+ICsgICAgICAgICAgLSBxY29tLHBjaWUtaXBxOTU3NAo+ICAgICAgICAgICAgLSBx
Y29tLHBjaWUtbXNtODk5Ngo+ICAgICAgICAgICAgLSBxY29tLHBjaWUtcWNzNDA0Cj4gICAgICAg
ICAgICAtIHFjb20scGNpZS1zYTg1NDBwCj4gQEAgLTQ0LDExICs0NSwxMSBAQCBwcm9wZXJ0aWVz
Ogo+ICAKPiAgICByZWc6Cj4gICAgICBtaW5JdGVtczogNAo+IC0gICAgbWF4SXRlbXM6IDUKPiAr
ICAgIG1heEl0ZW1zOiA2Cj4gIAo+ICAgIHJlZy1uYW1lczoKPiAgICAgIG1pbkl0ZW1zOiA0Cj4g
LSAgICBtYXhJdGVtczogNQo+ICsgICAgbWF4SXRlbXM6IDYKPiAgCj4gICAgaW50ZXJydXB0czoK
PiAgICAgIG1pbkl0ZW1zOiAxCj4gQEAgLTEwNSw2ICsxMDYsOCBAQCBwcm9wZXJ0aWVzOgo+ICAg
ICAgaXRlbXM6Cj4gICAgICAgIC0gY29uc3Q6IHBjaWVwaHkKPiAgCj4gKyAgbXNpLXBhcmVudDog
dHJ1ZQo+ICsKPiAgICBwb3dlci1kb21haW5zOgo+ICAgICAgbWF4SXRlbXM6IDEKPiAgCj4gQEAg
LTE3Myw2ICsxNzYsMjcgQEAgYWxsT2Y6Cj4gICAgICAgICAgICAgIC0gY29uc3Q6IHBhcmYgIyBR
dWFsY29tbSBzcGVjaWZpYyByZWdpc3RlcnMKPiAgICAgICAgICAgICAgLSBjb25zdDogY29uZmln
ICMgUENJZSBjb25maWd1cmF0aW9uIHNwYWNlCj4gIAo+ICsgIC0gaWY6Cj4gKyAgICAgIHByb3Bl
cnRpZXM6Cj4gKyAgICAgICAgY29tcGF0aWJsZToKPiArICAgICAgICAgIGNvbnRhaW5zOgo+ICsg
ICAgICAgICAgICBlbnVtOgo+ICsgICAgICAgICAgICAgIC0gcWNvbSxwY2llLWlwcTk1NzQKPiAr
ICAgIHRoZW46Cj4gKyAgICAgIHByb3BlcnRpZXM6Cj4gKyAgICAgICAgcmVnOgo+ICsgICAgICAg
ICAgbWluSXRlbXM6IDUKPiArICAgICAgICAgIG1heEl0ZW1zOiA2Cj4gKyAgICAgICAgcmVnLW5h
bWVzOgo+ICsgICAgICAgICAgbWluSXRlbXM6IDUKPiArICAgICAgICAgIGl0ZW1zOgo+ICsgICAg
ICAgICAgICAtIGNvbnN0OiBkYmkgIyBEZXNpZ25XYXJlIFBDSWUgcmVnaXN0ZXJzCj4gKyAgICAg
ICAgICAgIC0gY29uc3Q6IGVsYmkgIyBFeHRlcm5hbCBsb2NhbCBidXMgaW50ZXJmYWNlIHJlZ2lz
dGVycwo+ICsgICAgICAgICAgICAtIGNvbnN0OiBhdHUgIyBBVFUgYWRkcmVzcyBzcGFjZQo+ICsg
ICAgICAgICAgICAtIGNvbnN0OiBwYXJmICMgUXVhbGNvbW0gc3BlY2lmaWMgcmVnaXN0ZXJzCj4g
KyAgICAgICAgICAgIC0gY29uc3Q6IGNvbmZpZyAjIFBDSWUgY29uZmlndXJhdGlvbiBzcGFjZQo+
ICsgICAgICAgICAgICAtIGNvbnN0OiBhZ2dyX25vYyAjUENJZSBhZ2dyX25vYwoKV2h5IGRvIHlv
dSBuZWVkIHRoaXMgcmVnaW9uIHVubGlrZSBvdGhlciBTb0NzPyBJcyB0aGUgZHJpdmVyIG1ha2lu
ZyB1c2Ugb2YgaXQ/CgpUaGFua3MsCk1hbmkKCj4gKwo+ICAgIC0gaWY6Cj4gICAgICAgIHByb3Bl
cnRpZXM6Cj4gICAgICAgICAgY29tcGF0aWJsZToKPiBAQCAtMzY1LDYgKzM4OSwzOSBAQCBhbGxP
ZjoKPiAgICAgICAgICAgICAgLSBjb25zdDogYWhiICMgQUhCIFJlc2V0Cj4gICAgICAgICAgICAg
IC0gY29uc3Q6IGF4aV9tX3N0aWNreSAjIEFYSSBNYXN0ZXIgU3RpY2t5IHJlc2V0Cj4gIAo+ICsg
IC0gaWY6Cj4gKyAgICAgIHByb3BlcnRpZXM6Cj4gKyAgICAgICAgY29tcGF0aWJsZToKPiArICAg
ICAgICAgIGNvbnRhaW5zOgo+ICsgICAgICAgICAgICBlbnVtOgo+ICsgICAgICAgICAgICAgIC0g
cWNvbSxwY2llLWlwcTk1NzQKPiArICAgIHRoZW46Cj4gKyAgICAgIHByb3BlcnRpZXM6Cj4gKyAg
ICAgICAgY2xvY2tzOgo+ICsgICAgICAgICAgbWluSXRlbXM6IDYKPiArICAgICAgICAgIG1heEl0
ZW1zOiA2Cj4gKyAgICAgICAgY2xvY2stbmFtZXM6Cj4gKyAgICAgICAgICBpdGVtczoKPiArICAg
ICAgICAgICAgLSBjb25zdDogYWhiICAjIEFIQiBjbG9jawo+ICsgICAgICAgICAgICAtIGNvbnN0
OiBhdXggICMgQXV4aWxpYXJ5IGNsb2NrCj4gKyAgICAgICAgICAgIC0gY29uc3Q6IGF4aV9tICMg
QVhJIE1hc3RlciBjbG9jawo+ICsgICAgICAgICAgICAtIGNvbnN0OiBheGlfcyAjIEFYSSBTbGF2
ZSBjbG9jawo+ICsgICAgICAgICAgICAtIGNvbnN0OiBheGlfYnJpZGdlICMgQVhJIGJyaWRnZSBj
bG9jawo+ICsgICAgICAgICAgICAtIGNvbnN0OiByY2huZwo+ICsgICAgICAgIHJlc2V0czoKPiAr
ICAgICAgICAgIG1pbkl0ZW1zOiA4Cj4gKyAgICAgICAgICBtYXhJdGVtczogOAo+ICsgICAgICAg
IHJlc2V0LW5hbWVzOgo+ICsgICAgICAgICAgaXRlbXM6Cj4gKyAgICAgICAgICAgIC0gY29uc3Q6
IHBpcGUgIyBQSVBFIHJlc2V0Cj4gKyAgICAgICAgICAgIC0gY29uc3Q6IHN0aWNreSAjIENvcmUg
U3RpY2t5IHJlc2V0Cj4gKyAgICAgICAgICAgIC0gY29uc3Q6IGF4aV9zX3N0aWNreSAjIEFYSSBT
bGF2ZSBTdGlja3kgcmVzZXQKPiArICAgICAgICAgICAgLSBjb25zdDogYXhpX3MgIyBBWEkgU2xh
dmUgcmVzZXQKPiArICAgICAgICAgICAgLSBjb25zdDogYXhpX21fc3RpY2t5ICMgQVhJIE1hc3Rl
ciBTdGlja3kgcmVzZXQKPiArICAgICAgICAgICAgLSBjb25zdDogYXhpX20gIyBBWEkgTWFzdGVy
IHJlc2V0Cj4gKyAgICAgICAgICAgIC0gY29uc3Q6IGF1eCAjIEFVWCBSZXNldAo+ICsgICAgICAg
ICAgICAtIGNvbnN0OiBhaGIgIyBBSEIgUmVzZXQKPiArCj4gICAgLSBpZjoKPiAgICAgICAgcHJv
cGVydGllczoKPiAgICAgICAgICBjb21wYXRpYmxlOgo+IEBAIC02ODEsNiArNzM4LDE2IEBAIGFs
bE9mOgo+ICAgICAgICAgIC0gaW50ZXJjb25uZWN0cwo+ICAgICAgICAgIC0gaW50ZXJjb25uZWN0
LW5hbWVzCj4gIAo+ICsgIC0gaWY6Cj4gKyAgICAgIHByb3BlcnRpZXM6Cj4gKyAgICAgICAgY29t
cGF0aWJsZToKPiArICAgICAgICAgIGNvbnRhaW5zOgo+ICsgICAgICAgICAgICBlbnVtOgo+ICsg
ICAgICAgICAgICAgIC0gcWNvbSxwY2llLWlwcTk1NzQKPiArICAgIHRoZW46Cj4gKyAgICAgIHJl
cXVpcmVkOgo+ICsgICAgICAgIC0gbXNpLXBhcmVudAo+ICsKPiAgICAtIGlmOgo+ICAgICAgICBu
b3Q6Cj4gICAgICAgICAgcHJvcGVydGllczoKPiBAQCAtNjkzLDYgKzc2MCw3IEBAIGFsbE9mOgo+
ICAgICAgICAgICAgICAgICAgLSBxY29tLHBjaWUtaXBxODA2NHYyCj4gICAgICAgICAgICAgICAg
ICAtIHFjb20scGNpZS1pcHE4MDc0Cj4gICAgICAgICAgICAgICAgICAtIHFjb20scGNpZS1pcHE4
MDc0LWdlbjMKPiArICAgICAgICAgICAgICAgIC0gcWNvbSxwY2llLWlwcTk1NzQKPiAgICAgICAg
ICAgICAgICAgIC0gcWNvbSxwY2llLXFjczQwNAo+ICAgICAgdGhlbjoKPiAgICAgICAgcmVxdWly
ZWQ6Cj4gLS0gCj4gMi4xNy4xCj4gCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCu
muCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
