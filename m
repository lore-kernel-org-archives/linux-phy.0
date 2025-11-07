Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE35ACCF9F8
	for <linux-phy@archiver.kernel.org>; Fri,  7 Nov 2025 11:45:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ddlYr2F9Bu77qpWbRyp53QSPrkBKXq0oJFYJk8d7AU=; b=Pt5yUgfbFyN4VC
	buP+yHTNPhAhpOIbpGto4kuUIzTYkarknkvcAYayMeKSy7wEXgCzMbtCMC+pIPFqUKeWSKAM6PEEW
	8Ltk9ssOHxFWlj8aDk06bpevvgsITEnb/NR6Kdv+vhB2+yLomdDbTVGXajL9PRNH5VHX/n999Xqsn
	hA2ghniCqMbXDg05SWsVf+tTmC521FB5NJlbuQzj4R6ARGIWDA9rVnOofd0PV+2vW1/1jMJj5Hep3
	ifhfw9j1UbUgNqIJpRMDj5fcKCzZlnvh/BdCAzrDHkYADh08fR+0V0ELI0u17aj/omfwX5qfOddG5
	8/lP6JLz+zEsS4TSnjPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHKuP-0000000HE9B-1ws0;
	Fri, 07 Nov 2025 11:45:37 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHKuN-0000000HE95-2N1Y
	for linux-phy@lists.infradead.org;
	Fri, 07 Nov 2025 11:45:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 99006618FD;
	Fri,  7 Nov 2025 11:45:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0458BC116B1;
	Fri,  7 Nov 2025 11:45:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762515934;
	bh=izDt0p7345JaRE7QPi4vAH1RGCVddKUk9lJ7ECKLP2o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Tf2n5etWb7ZB0uyhL9KX1WJMrI8iz3X4UloiD5SaZevZEsHmX7vZvHJQq/7lFiOMs
	 LZ4x0F1xojYcPEztReGlpQ+Ann+bdqm2sZ/i1gsKyDRMuPRgEb6Q27o4t6OidiE15C
	 7DJpoN9uMT9pUhPOgYtrzFul37DZ2eonLqS9tjUKp0x+T4p3eQtb6o8fGUwJKGVQFE
	 vGByKDBpHCaPlM4vgtADSGOjrkhjoim/kNMU6XzVcwgO1a7a+OUcJeifNDK9jg5MXy
	 wAW/viwcwEIeKFa7DzJa9fnSGuVrq/wCwqZyJCllt1rs/MT+i1jqsosqlAU1Uce4+e
	 RuYY0XlZnWWbQ==
Date: Fri, 7 Nov 2025 17:15:14 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com, lpieralisi@kernel.org, 
	kwilczynski@kernel.org, bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org, 
	kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com, 
	quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
Subject: Re: [PATCH v14 1/5] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Update pcie phy bindings for qcs8300
Message-ID: <q3naavmyhk3ksvrtdvt7jmfwfvf666souckek356tfp3olqsxl@t65dsp5hxoeu>
References: <20251024095609.48096-1-ziyue.zhang@oss.qualcomm.com>
 <20251024095609.48096-2-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251024095609.48096-2-ziyue.zhang@oss.qualcomm.com>
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

T24gRnJpLCBPY3QgMjQsIDIwMjUgYXQgMDU6NTY6MDVQTSArMDgwMCwgWml5dWUgWmhhbmcgd3Jv
dGU6Cj4gVGhlIGdjY19hdXhfY2xrIGlzIG5vdCByZXF1aXJlZCBieSB0aGUgUENJZSBQSFkgb24g
cWNzODMwMCBhbmQgaXMgbm90Cj4gc3BlY2lmaWVkIGluIHRoZSBkZXZpY2UgdHJlZSBub2RlLiBI
ZW5jZSwgbW92ZSB0aGUgcWNzODMwMCBwaHkKPiBjb21wYXRpYmlsaXR5IGVudHJ5IGludG8gdGhl
IGxpc3Qgb2YgUEhZcyB0aGF0IHJlcXVpcmUgc2l4IGNsb2Nrcy4KPiAKPiBSZW1vdmVkIHRoZSBw
aHlfYXV4IGNsb2NrIGZyb20gdGhlIFBDSWUgUEhZIGJpbmRpbmcgYXMgaXQgaXMgbm8gbG9uZ2Vy
Cj4gdXNlZCBieSBhbnkgaW5zdGFuY2UuCj4gCj4gRml4ZXM6IGU0NmU1OWI3N2E5ZSAoImR0LWJp
bmRpbmdzOiBwaHk6IHFjb20sc2M4MjgweHAtcW1wLXBjaWUtcGh5OiBEb2N1bWVudCB0aGUgUUNT
ODMwMCBRTVAgUENJZSBQSFkgR2VuNCB4MiIpCj4gU2lnbmVkLW9mZi1ieTogWml5dWUgWmhhbmcg
PHppeXVlLnpoYW5nQG9zcy5xdWFsY29tbS5jb20+CgpBY2tlZC1ieTogTWFuaXZhbm5hbiBTYWRo
YXNpdmFtIDxtYW5pQGtlcm5lbC5vcmc+CgotIE1hbmkKCj4gQWNrZWQtYnk6IFJvYiBIZXJyaW5n
IChBcm0pIDxyb2JoQGtlcm5lbC5vcmc+Cj4gUmV2aWV3ZWQtYnk6IEpvaGFuIEhvdm9sZCA8am9o
YW4rbGluYXJvQGtlcm5lbC5vcmc+Cj4gLS0tCj4gIC4uLi9waHkvcWNvbSxzYzgyODB4cC1xbXAt
cGNpZS1waHkueWFtbCAgICAgICAgIHwgMTcgKystLS0tLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNo
YW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxzYzgyODB4cC1xbXAt
cGNpZS1waHkueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNv
bSxzYzgyODB4cC1xbXAtcGNpZS1waHkueWFtbAo+IGluZGV4IDExOWI0ZmYzNmRiZC4uZDk0ZDA4
NzUyY2VjIDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9w
aHkvcWNvbSxzYzgyODB4cC1xbXAtcGNpZS1waHkueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxzYzgyODB4cC1xbXAtcGNpZS1waHkueWFtbAo+
IEBAIC01NSw3ICs1NSw3IEBAIHByb3BlcnRpZXM6Cj4gIAo+ICAgIGNsb2NrczoKPiAgICAgIG1p
bkl0ZW1zOiA1Cj4gLSAgICBtYXhJdGVtczogNwo+ICsgICAgbWF4SXRlbXM6IDYKPiAgCj4gICAg
Y2xvY2stbmFtZXM6Cj4gICAgICBtaW5JdGVtczogNQo+IEBAIC02Niw3ICs2Niw2IEBAIHByb3Bl
cnRpZXM6Cj4gICAgICAgIC0gZW51bTogW3JjaG5nLCByZWZnZW5dCj4gICAgICAgIC0gY29uc3Q6
IHBpcGUKPiAgICAgICAgLSBjb25zdDogcGlwZWRpdjIKPiAtICAgICAgLSBjb25zdDogcGh5X2F1
eAo+ICAKPiAgICBwb3dlci1kb21haW5zOgo+ICAgICAgbWF4SXRlbXM6IDEKPiBAQCAtMTc4LDYg
KzE3Nyw3IEBAIGFsbE9mOgo+ICAgICAgICAgIGNvbXBhdGlibGU6Cj4gICAgICAgICAgICBjb250
YWluczoKPiAgICAgICAgICAgICAgZW51bToKPiArICAgICAgICAgICAgICAtIHFjb20scWNzODMw
MC1xbXAtZ2VuNHgyLXBjaWUtcGh5Cj4gICAgICAgICAgICAgICAgLSBxY29tLHNhODc3NXAtcW1w
LWdlbjR4Mi1wY2llLXBoeQo+ICAgICAgICAgICAgICAgIC0gcWNvbSxzYTg3NzVwLXFtcC1nZW40
eDQtcGNpZS1waHkKPiAgICAgICAgICAgICAgICAtIHFjb20sc2M4MjgweHAtcW1wLWdlbjN4MS1w
Y2llLXBoeQo+IEBAIC0xOTUsMTkgKzE5NSw2IEBAIGFsbE9mOgo+ICAgICAgICAgIGNsb2NrLW5h
bWVzOgo+ICAgICAgICAgICAgbWluSXRlbXM6IDYKPiAgCj4gLSAgLSBpZjoKPiAtICAgICAgcHJv
cGVydGllczoKPiAtICAgICAgICBjb21wYXRpYmxlOgo+IC0gICAgICAgICAgY29udGFpbnM6Cj4g
LSAgICAgICAgICAgIGVudW06Cj4gLSAgICAgICAgICAgICAgLSBxY29tLHFjczgzMDAtcW1wLWdl
bjR4Mi1wY2llLXBoeQo+IC0gICAgdGhlbjoKPiAtICAgICAgcHJvcGVydGllczoKPiAtICAgICAg
ICBjbG9ja3M6Cj4gLSAgICAgICAgICBtaW5JdGVtczogNwo+IC0gICAgICAgIGNsb2NrLW5hbWVz
Ogo+IC0gICAgICAgICAgbWluSXRlbXM6IDcKPiAtCj4gICAgLSBpZjoKPiAgICAgICAgcHJvcGVy
dGllczoKPiAgICAgICAgICBjb21wYXRpYmxlOgo+IC0tIAo+IDIuMzQuMQo+IAoKLS0gCuCuruCu
o+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
