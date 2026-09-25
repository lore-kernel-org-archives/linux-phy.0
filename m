Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68CE2C98325
	for <linux-phy@archiver.kernel.org>; Fri, 25 Sep 2026 15:32:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gKei5RQ7A4AA8pY4zcCTHdcebHIGrg//U/NqMpXdGK0=; b=uXVnk9P3LGLv/e
	0xjYlhSIcvqyOXXnIoeoklleudzUjYr0kf0X1gRLzSjU6cku9fx9MalUEUuRReaQ2hNSOySAxzQ4z
	j9R2Igo/ALvUgSeg/m93iJXnXuEYgS29edpfTr6L83apS0yqSCqPMtGkYQIJ5OkHNJk35GaT59Zxy
	x4xhS7EUWGcIfvvdXKhY1j4wIZslvunCJY+kJbgTdQ4LhtASDu554HyA8WDKnGFpnT23ce/WSl+jy
	qWdT2G/qHGUiaqnXZBWtl6Edc18tQkogjfIFgnhnzHcxEPuvkYOfxWWbv2sxFqgYBHztFsdc5Jrb2
	EXlPSGSuUAr1h5RUz6AA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA7ua-0000000Dnyl-0WTg;
	Fri, 25 Sep 2026 15:32:32 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA7uY-0000000DnyL-22jf
	for linux-phy@lists.infradead.org;
	Fri, 25 Sep 2026 15:32:30 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id E788642E55;
	Fri, 25 Sep 2026 15:32:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8795E1F00893;
	Fri, 25 Sep 2026 15:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790350349;
	bh=ahXr8iYLMCrTGMdibdd3fWSZuNO3BxDrBHng23DkL6Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=RcW4JHkVjo86U9vcg6YxHgnyKvA+NAtGNMzXx2kZwZhT61+dzlihBa2BiiYS4tflT
	 hfNoJMdMs463BtFOro0ZYKY+ZnrCRINmyRBShwFGHpb84CD0+oMBy/PAS7aIDXlfWs
	 qS8+uTLup22Z+Rs+L+id+G7BXnxrHMLxOAUbbn5A0EKLxHq+v14hkNvw9Eoj0PNR8S
	 tyG8aBVJO7XlE0yHzx7aCGcsAKGGudickvxZBTFGEb7VkNkupmk8180XvPlEkqt5RW
	 zBuiv+NGQ0L1brDt8F/zhWX3t11eXCXOxJoeXNRtfP3wqlf9lWSDJkiDxijAk8KH8h
	 3LjZQnRkM28KQ==
Date: Fri, 25 Sep 2026 17:32:13 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH 3/6] phy: qcom: qmp-pcie: Add endpoint PHY configuration
 for QCS8300
Message-ID: <tdzyms6ci25zh2sxthg3khyqjvqpsnhpciqmjmbsj5hnzc35er@5fjuieis44ca>
References: <20260921-monaco_ep-v1-0-63c5282fb0db@oss.qualcomm.com>
 <20260921-monaco_ep-v1-3-63c5282fb0db@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260921-monaco_ep-v1-3-63c5282fb0db@oss.qualcomm.com>
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

T24gTW9uLCBTZXAgMjEsIDIwMjYgYXQgMDQ6Mjg6MTRQTSArMDUzMCwgS3Jpc2huYSBDaGFpdGFu
eWEgQ2h1bmRydSB3cm90ZToKPiBNb25hY28gc3VwcG9ydHMgUENJZSBFbmRwb2ludCBtb2RlIG9u
IGJvdGggUENJZSBjb250cm9sbGVycy4gUmV1c2UKPiB0aGUgZXhpc3RpbmcgU0E4Nzc1UCBFbmRw
b2ludCBQSFkgcHJvZ3JhbW1pbmcgZm9yIHRoZSAxNiBHVC9zIHgyIFBIWSBhbmQKPiBhZGQgYSBu
ZXcgMTYgR1QvcyB4NCBFbmRwb2ludCBQSFkgY29uZmlndXJhdGlvbiB3aXRoIHRoZSByZXF1aXJl
ZCBSWAo+IHR1bmluZyBwYXJhbWV0ZXJzLgo+IAoKVGhpcyBzb3VuZHMgbGlrZSB0aGUgUEhZIGlu
aXQgc2VxdWVuY2Ugb25seSB3b3JrcyBmb3IgRW5kcG9pbnQgbW9kZS4gQnV0IHRoZQpzZXF1ZW5j
ZSBsb29rcyB0byBiZSBjb21tb24gZm9yIGJvdGggUkMgYW5kIEVQLCBldmVuIHRob3VnaCBpdCBp
cyBvbmx5IHRlc3RlZAp3aXRoIEVQIG1vZGUuCgo+IFRoaXMgYWxsb3dzIGJvdGggTW9uYWNvIFBD
SWUgY29udHJvbGxlcnMgdG8gb3BlcmF0ZSByZWxpYWJseSBpbgo+IEVuZHBvaW50IG1vZGUuCj4g
Cj4gU2lnbmVkLW9mZi1ieTogS3Jpc2huYSBDaGFpdGFueWEgQ2h1bmRydSA8a3Jpc2huYS5jaHVu
ZHJ1QG9zcy5xdWFsY29tbS5jb20+CgpSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFt
IDxtYW5pdmFubmFuLnNhZGhhc2l2YW1Ab3NzLnF1YWxjb21tLmNvbT4KCi0gTWFuaQoKLS0gCuCu
ruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
