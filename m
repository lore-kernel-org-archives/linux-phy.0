Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40A34C98321
	for <linux-phy@archiver.kernel.org>; Fri, 25 Sep 2026 15:23:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fttxzzht1PzmNu3XawmfegN86Dr2wCQmlYSRy/rKF48=; b=pm3A1Gmazm6Tk0
	z+6JlYC4O7a+xB4oy6m5+zeu6Bpa5DYPuX352rceDz7JzyNXCd6koSLQ8ra1tQs4abdKBOg6BVpWL
	woBoBKWucXnwX2yJPmw7Y4q2iOL318xJNDtMrM5J1ihKZgoSJPozrgVsrt19CNgxoB3va6YuJYIWV
	YEvXMD0W0F3ujiUAtF+hvAhICPEs7oaZs1MykCxXDvOno0rPCoAsqtDsKAYWDrwnzVKc6Vbsmt83l
	GOjLhVnRm9SkEurP60hpIjnwUr8zVg5oOVGF5Swr8sC3pyzAiTpRFq8bH++r5NwtT81CkvIfpEKl6
	R3lasdwN4eB7dgJWxWQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA7lf-0000000DlyS-41qK;
	Fri, 25 Sep 2026 15:23:19 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA7lf-0000000Dly9-0cIT
	for linux-phy@lists.infradead.org;
	Fri, 25 Sep 2026 15:23:19 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 5F5A360136;
	Fri, 25 Sep 2026 15:23:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F15BC1F000FF;
	Fri, 25 Sep 2026 15:23:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790349798;
	bh=kANBcDB93ekcXy8yI3BeOtertVshNaMZPmStPqf4cgI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=BxJ7jdQGXHEFCGpvRSvy6X4RbrF+w+/idYZYlZDWY3IkIj+8XU7+vaMNIs6u85Sqk
	 FApFK4LsozIcAJ+tR/cRE6YJIq1uhICKpnGhkPjS8IVw29P1NzYdQ8whr7zYFMT0ks
	 sDaEG3lTrtpiwXBQQfvDX3NOyUYF4K4mHR8ETlR1nubSnb3o9mcxYr9nNeWLJOIr8O
	 mh4ebSKnw4Eo2ucS4LcTM24aVBwJ1ckFYsZHpccQ6ldklagEpzPEcN30pLYIcfm9mq
	 VUaJkLylpyv4P+Cpk55tUgdqHoPOn29LhpZN4rlMFBrvyWroSqh/gXNFhCqwq/CVKD
	 lCKuI3wxtk15g==
Date: Fri, 25 Sep 2026 17:23:02 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Bjorn Andersson <andersson@kernel.org>, 
	Maxime Chevallier <maxime.chevallier@bootlin.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	shengchao.guo@oss.qualcomm.com, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH v4 5/6] phy: qcom: qmp-pcie: Refactor common multiphy
 handling
Message-ID: <kcatb2mcwqb64lk5afcq7dfn5mxmzd4d4ertblsryjilv373hb@ivbibuq7byma>
References: <20260921-nord-v4-0-ed05c6e09240@oss.qualcomm.com>
 <20260921-nord-v4-5-ed05c6e09240@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260921-nord-v4-5-ed05c6e09240@oss.qualcomm.com>
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

T24gTW9uLCBTZXAgMjEsIDIwMjYgYXQgMTE6MDc6MTNBTSArMDUzMCwgS3Jpc2huYSBDaGFpdGFu
eWEgQ2h1bmRydSB3cm90ZToKPiBSZXVzZSB0aGUgZXhpc3RpbmcgcG9ydCByZXNvdXJjZSBhcnJh
eXMgZm9yIEdseW11ciByZWdpc3RlciByZWdpb25zLAo+IHBvd2VyIGRvbWFpbnMsIGFuZCBOT0NT
UiByZXNldHMgaW5zdGVhZCBvZiBtYWludGFpbmluZyBkdXBsaWNhdGUKPiBHbHltdXItc3BlY2lm
aWMgbGlzdHMuCj4gCj4gQXR0YWNoIGVhY2ggUEhZIGluc3RhbmNlJ3MgcG93ZXIgZG9tYWlucyB0
byB0aGUgZGV2aWNlIGNyZWF0ZWQgZm9yIHRoYXQKPiBQSFkuIFRoaXMgZW5zdXJlcyB0aGF0IHRo
ZSBhc3NvY2lhdGVkIEdEU0NzIGFyZSBtYW5hZ2VkIHdpdGggdGhlCj4gbGlmZXRpbWUgb2YgdGhl
IGluZGl2aWR1YWwgUEhZIGRldmljZSByYXRoZXIgdGhhbiB0aGUgcGFyZW50IG11bHRpcGh5Cj4g
cGxhdGZvcm0gZGV2aWNlLgo+IAo+IFZhbGlkYXRlIHRoZSBjbG9jay1vdXRwdXQtbmFtZXMgcHJv
cGVydHkgYmVmb3JlIHVzaW5nIGl0cyBjb3VudCBmb3IKPiBhbGxvY2F0aW9uLCBhbmQgdXNlIGEg
Z2VuZXJpYyBtb2R1bGUgZGVzY3JpcHRpb24uCj4gCj4gU2lnbmVkLW9mZi1ieTogS3Jpc2huYSBD
aGFpdGFueWEgQ2h1bmRydSA8a3Jpc2huYS5jaHVuZHJ1QG9zcy5xdWFsY29tbS5jb20+CgpSZXZp
ZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1Ab3Nz
LnF1YWxjb21tLmNvbT4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDg
rprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
