Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 384E5CD8CB2
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 16:32:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8iqubboOgxBJZg4bzwWspHFG+XXAUO9OnoefWqYF9Fk=; b=HfCVDRhGmnEvLs
	p3B2xJ6OKzZ2nOeL9E3cIAOBMuZjDolro6ScDDrcd2noBZ+12netmS1IWuY7snohcMc3AyNm8lTho
	MA/oRVEB20RaO5AytX+/wHL/Rbc9dc9l+UBBjnCO1O6rHcKDadvT1KIcYtBl+g0zo5mzBxlTrdXzJ
	bz9cpOpaNl35N1KpG9+0NXZMKSJ43PZMLry7PtPbZASiBJJCFgE1AYmra+lR+/NSXW8SriO8dGp+g
	o0Rs8jE1erMddZCkeC/GY1h0Y0i4FW6F6HcBWL/UmOzAb1x4nQ+4fUZYL1pftt8rDhz+oX5qP+1Py
	eUZ1BjOCb8SNL2a0K6WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXLqS-000000087DS-3pSf;
	Wed, 10 Jun 2026 16:32:00 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXLqR-000000087DF-42ub
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 16:31:59 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 056584392E;
	Wed, 10 Jun 2026 16:31:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DFF0A1F00893;
	Wed, 10 Jun 2026 16:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781109118;
	bh=8rylpg5/2qRjADTJGQuBR2I2AKuLIqNa59sJOblkAtM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=d1Tm7plbYMqROttw6XwBlHSuFjjVdbSYemoLSRS1zzEsgMn7dViwVWXh81tNaEm+1
	 a8oaGRsxUtbl4T/n++ZN4JTQybVcRsLdcxN6nXkhmuSd+A/zBr81ior37z0lwF6ilQ
	 gUERvMP1WsHTU2MN6qMst4m23cKfBFYuG9m1vEj+kAf208PrvW4eTNzySVju0zeQcM
	 QQIscwLm1+2wKISmmp75wbOBF8Qw+R2ajg9EvlMp9v44zJGQ48kpSwuB7RR9f9CMCa
	 /pZiyrKujORodONlvqHMnghtmvZHgcgJJMcgmE7kXj+xtpj1ypTsZ0FYk0mSMeE0Iq
	 fzxRPP877vFbw==
Date: Wed, 10 Jun 2026 18:31:49 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Bjorn Andersson <andersson@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: phy: sc8280xp-qmp-pcie: Document
 Eliza PCIe phy
Message-ID: <wmcngbykxdbbp7bks4at4voe2fylpeh57hiijwxreu6cdta4vn@evux3scmqn6n>
References: <20260608-eliza-v3-0-9bdeb7434b28@oss.qualcomm.com>
 <20260608-eliza-v3-1-9bdeb7434b28@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260608-eliza-v3-1-9bdeb7434b28@oss.qualcomm.com>
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

T24gTW9uLCBKdW4gMDgsIDIwMjYgYXQgMDI6MTg6MTNQTSArMDUzMCwgS3Jpc2huYSBDaGFpdGFu
eWEgQ2h1bmRydSB3cm90ZToKPiBBZGQgY29tcGF0aWJsZXMgZm9yIHRoZSBFbGl6YSBQQ0llIFFN
UCBQSFkncywgd2hpY2ggc3VwcG9ydHMgR2VuM3gxIGFuZAo+IEdlbjN4MiBjb25maWd1cmF0aW9u
cy4KPiAKPiBSZXZpZXdlZC1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxv
d3NraUBvc3MucXVhbGNvbW0uY29tPgo+IFNpZ25lZC1vZmYtYnk6IEtyaXNobmEgQ2hhaXRhbnlh
IENodW5kcnUgPGtyaXNobmEuY2h1bmRydUBvc3MucXVhbGNvbW0uY29tPgoKQWNrZWQtYnk6IE1h
bml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaUBrZXJuZWwub3JnPgoKLSBNYW5pCgo+IC0tLQo+ICAu
Li4vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxzYzgyODB4cC1xbXAtcGNpZS1waHkueWFt
bCAgICAgICAgIHwgNiArKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQo+
IAo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fj
b20sc2M4MjgweHAtcW1wLXBjaWUtcGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvcGh5L3Fjb20sc2M4MjgweHAtcW1wLXBjaWUtcGh5LnlhbWwKPiBpbmRleCAzYTM1
MTIwYTc3ZWMuLmJlNGJiYzMyNzk4MiAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sc2M4MjgweHAtcW1wLXBjaWUtcGh5LnlhbWwKPiArKysg
Yi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sc2M4MjgweHAtcW1w
LXBjaWUtcGh5LnlhbWwKPiBAQCAtMTYsNiArMTYsOCBAQCBkZXNjcmlwdGlvbjoKPiAgcHJvcGVy
dGllczoKPiAgICBjb21wYXRpYmxlOgo+ICAgICAgZW51bToKPiArICAgICAgLSBxY29tLGVsaXph
LXFtcC1nZW4zeDEtcGNpZS1waHkKPiArICAgICAgLSBxY29tLGVsaXphLXFtcC1nZW4zeDItcGNp
ZS1waHkKPiAgICAgICAgLSBxY29tLGdseW11ci1xbXAtZ2VuNHgyLXBjaWUtcGh5Cj4gICAgICAg
IC0gcWNvbSxnbHltdXItcW1wLWdlbjV4NC1wY2llLXBoeQo+ICAgICAgICAtIHFjb20sa2FhbmFw
YWxpLXFtcC1nZW4zeDItcGNpZS1waHkKPiBAQCAtMTgxLDYgKzE4Myw4IEBAIGFsbE9mOgo+ICAg
ICAgICAgIGNvbXBhdGlibGU6Cj4gICAgICAgICAgICBjb250YWluczoKPiAgICAgICAgICAgICAg
ZW51bToKPiArICAgICAgICAgICAgICAtIHFjb20sZWxpemEtcW1wLWdlbjN4MS1wY2llLXBoeQo+
ICsgICAgICAgICAgICAgIC0gcWNvbSxlbGl6YS1xbXAtZ2VuM3gyLXBjaWUtcGh5Cj4gICAgICAg
ICAgICAgICAgLSBxY29tLGdseW11ci1xbXAtZ2VuNHgyLXBjaWUtcGh5Cj4gICAgICAgICAgICAg
ICAgLSBxY29tLGdseW11ci1xbXAtZ2VuNXg0LXBjaWUtcGh5Cj4gICAgICAgICAgICAgICAgLSBx
Y29tLHFjczgzMDAtcW1wLWdlbjR4Mi1wY2llLXBoeQo+IEBAIC0yMDYsNiArMjEwLDggQEAgYWxs
T2Y6Cj4gICAgICAgICAgY29tcGF0aWJsZToKPiAgICAgICAgICAgIGNvbnRhaW5zOgo+ICAgICAg
ICAgICAgICBlbnVtOgo+ICsgICAgICAgICAgICAgIC0gcWNvbSxlbGl6YS1xbXAtZ2VuM3gxLXBj
aWUtcGh5Cj4gKyAgICAgICAgICAgICAgLSBxY29tLGVsaXphLXFtcC1nZW4zeDItcGNpZS1waHkK
PiAgICAgICAgICAgICAgICAtIHFjb20sZ2x5bXVyLXFtcC1nZW40eDItcGNpZS1waHkKPiAgICAg
ICAgICAgICAgICAtIHFjb20sZ2x5bXVyLXFtcC1nZW41eDQtcGNpZS1waHkKPiAgICAgICAgICAg
ICAgICAtIHFjb20sa2FhbmFwYWxpLXFtcC1nZW4zeDItcGNpZS1waHkKPiAKPiAtLSAKPiAyLjM0
LjEKPiAKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K61
4K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
