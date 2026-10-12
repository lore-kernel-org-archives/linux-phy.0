Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D018ECA9ED1
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 16:18:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dxppFBjkCeK9njHnUrED6lEhyPF+YSPODn0Wm4ifhB8=; b=l6Ti43Pvx1ZxCl
	XyH2DkcJVkLKoox0XvL0SnquNXAGNMjX+t0N6GbZ2CsmCsYzZf0Fui6KJmQsl/d6CiqeDyQdS6Cqh
	uI9vMvaycLEK2ZwFLxwfeoseFCjMUI+6YCeG6RxNFkbHfpp9YJwooPNv7qSKWTNrJxwWKWvDCBifj
	mqxcf3gw3Ml0dUodcxULMZF+e8L3KYvrXNoVaIF4Uw/4ekClbu0gCGRs2Ot+4jyEmdt4qE/NWG6J9
	V+937kdT8lqnpwxty0Deq1hXUkjI92VL1e3ijABdwxjr5WsElyFveVkqLB8maHfPYjZmYKtPtxYnM
	tUmQsWtTQCYiYBccLIVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGIjP-0000000Awlg-2JnW;
	Mon, 12 Oct 2026 16:18:31 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGIjO-0000000AwlF-391b
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 16:18:30 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1EF0540205;
	Mon, 12 Oct 2026 16:18:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A97F1F0089B;
	Mon, 12 Oct 2026 16:18:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791821910;
	bh=ISIVqPCwxeSrPxUki4KKTfyePbLOWnvCPTwUePWGOKk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=NAgIQMopqESraseluVOFxeku6hSrikVu8dqUx8dXtLMpGuxd00W5RAiIoqcudlWFG
	 yZOre8vlS4r515/Peqs7nnCCIU+PATlgNiT1etwYTqNCP1fL8/edBfNCu4/bSgwBvL
	 8qf9MCZLHIgNr4RfFdrHlTmK9fPir8mfIUPcBUanywEG1TU92THZktYvd4eJ74jGJ3
	 HgYOYQBare+5heqzy5EgULGrQPH46yhclekT7Vxag43R1BBpH1f5OjNST9QaRfXYQr
	 sF2tnBs8w7CDBF26/v4Qt4mFtghdTcV/wCuUnsLOBPIts953gXMpdyIEr+IXBck/Mf
	 B3gV3PovHBqAA==
Date: Mon, 12 Oct 2026 21:48:21 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: qcom: Relax required supplies
Message-ID: <as0IMvhSYlJo4IL6@debian>
References: <20260921232603.3129898-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260921232603.3129898-1-robh@kernel.org>
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

T24gTW9uLCBTZXAgMjEsIDIwMjYgYXQgMDY6MjY6MDJQTSAtMDUwMCwgUm9iIEhlcnJpbmcgKEFy
bSkgd3JvdGU6Cj4gRm9yIHRoZSBRVVNCMiBQSFkgYmluZGluZywga2VlcCB0aGUgdGhyZWUgcmVn
dWxhdG9yIHN1cHBsaWVzIHJlcXVpcmVkCj4gZXhjZXB0IGZvciBsZWdhY3kgSVBRNjAxOCBub2Rl
cyB0aGF0IGRvIG5vdCBkZXNjcmliZSB0aGUgYm9hcmQgcmFpbHMuCj4gCj4gQXNzaXN0ZWQtYnk6
IExMTQo+IFNpZ25lZC1vZmYtYnk6IFJvYiBIZXJyaW5nIChBcm0pIDxyb2JoQGtlcm5lbC5vcmc+
Cj4gLS0tCj4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHF1c2IyLXBoeS55YW1s
IHwgMTcgKysrKysrKysrKysrKystLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMo
KyksIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9waHkvcWNvbSxxdXNiMi1waHkueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxxdXNiMi1waHkueWFtbAo+IGluZGV4IDAwMWZkMGNj
Yzk4NS4uMjUxNmVhYjdmNmQzIDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9waHkvcWNvbSxxdXNiMi1waHkueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxxdXNiMi1waHkueWFtbAo+IEBAIC0xNjUsMTIg
KzE2NSwyMyBAQCByZXF1aXJlZDoKPiAgICAtICIjcGh5LWNlbGxzIgo+ICAgIC0gY2xvY2tzCj4g
ICAgLSBjbG9jay1uYW1lcwo+IC0gIC0gdmRkLXN1cHBseQo+IC0gIC0gdmRkYS1wbGwtc3VwcGx5
Cj4gLSAgLSB2ZGRhLXBoeS1kcGRtLXN1cHBseQo+ICAgIC0gcmVzZXRzCj4gIAo+ICBhbGxPZjoK
PiArICAtIGlmOgo+ICsgICAgICBub3Q6Cj4gKyAgICAgICAgcHJvcGVydGllczoKPiArICAgICAg
ICAgIGNvbXBhdGlibGU6Cj4gKyAgICAgICAgICAgIGNvbnRhaW5zOgo+ICsgICAgICAgICAgICAg
IGVudW06IAoKRVJST1I6IHRyYWlsaW5nIHdoaXRlc3BhY2UKIzM1OiBGSUxFOiBEb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20scXVzYjItcGh5LnlhbWw6MTc2OgorICAg
ICAgICAgICAgICBlbnVtOiAkCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqng
r40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdAps
aW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
