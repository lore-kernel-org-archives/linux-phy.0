Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6EEDECA9ED0
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 08:56:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NlcgorUzKR8NS4Elg6jD/EnOfOJ6ap8kTNlfDOMtcsE=; b=OOah3AM/OlAuv4
	PGQsqPALZaZaAdgdMtnPFtu9xvZeJArrV8+U9gyi4eD89JuX+xIJDKl7hRoHiJfcFbkO9DLw2WQTu
	DmMhYoGyHQ+riLYLlgdZfIwYbqKbvz7M1dq7pT0LYC8I69qP7pAcgsj0wC+/0S7xKhIrqLxZUePut
	U+vAubgJMLudg5SfdMOmAxyaiwmvF2dOuysLex7cTFKcljOWShW7X7hDhh2f2K5zUZWEKdJcW4iME
	Jbh9iUTk1BHxzbeJVN5v4iPSc0EFmUJlaqIdQhk8gaEDy1kh1e44d1iDIr6dZQehLH2qI/2AZAQ6U
	KpjZD+pyXmUq71uQormA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGBpG-0000000A07B-0fPw;
	Mon, 12 Oct 2026 08:56:06 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGBpC-0000000A06C-3R0r
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 08:56:03 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 4723840BD4;
	Mon, 12 Oct 2026 08:56:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 137E71F0089B;
	Mon, 12 Oct 2026 08:55:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791795362;
	bh=X6lNe2RmuHX5NISOUi9IFEz0sbex5xlvxvCryta/tds=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ME51KbxM66N5jJnpcjn40lI7a4b8iZVOkRD0YU5poBgxbs4l/F+D5I1Nq0gqlnhId
	 OzS1zoi4rVdabngnRzhI8QKux/8keL2rYCbcQnPpzdDel7p9YLBrXhLK8jbN2b05a+
	 0WR9aARxKOtmFXCFcdLkTC0SAjONwZnitA239Tm0VxdKnvUER4E55UXz/jqfYl6nb1
	 k2/4bTCkeDw9yX6O1ur0W3R8NHPHuZqkBsEv2Q1j7AHZTsvuvbx4IXXeorDc7CCqMj
	 BcXYvwkr+9fYfewZuqByNd6imYzxj/E2gluwqpUXw6FzhVdOe2F6MslsBabHbi1Iuj
	 Df5ECdrQxJ2WA==
Date: Mon, 12 Oct 2026 14:25:51 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Iskren Chernev <me@iskren.info>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Bjorn Andersson <andersson@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: Re: [PATCH v2 2/5] phy: qcom-qusb2: Fix SM6115 init sequence
Message-ID: <asygiJawldi3vzoM@debian>
References: <20260903-topic-8996_61x5_qusb2phy-v2-0-4c3f980a4560@oss.qualcomm.com>
 <20260903-topic-8996_61x5_qusb2phy-v2-2-4c3f980a4560@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260903-topic-8996_61x5_qusb2phy-v2-2-4c3f980a4560@oss.qualcomm.com>
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

T24gVGh1LCBTZXAgMDMsIDIwMjYgYXQgMDQ6MjU6MjlQTSArMDIwMCwgS29ucmFkIER5YmNpbyB3
cm90ZToKPiBGcm9tOiBLb25yYWQgRHliY2lvIDxrb25yYWQuZHliY2lvQG9zcy5xdWFsY29tbS5j
b20+Cj4gCj4gSSBkb24ndCBrbm93IHdoZXJlIHRoZSBleGlzdGluZyBvbmUgY2FtZSBmcm9tLCBi
dXQgaXQncyBhcHBhcmVudGx5Cj4gd3JvbmcsIGFjY29yZGluZyB0byBib3RoIGRvY3MgYW5kIGEg
ZG93bnN0cmVhbSBEVCBbMV0uIEZpeCBpdCB1cC4KPiAKPiBUaGUgdXBkYXRlZCB2YWx1ZXMgYWxz
byBoYXBwZW4gdG8gbWF0Y2ggU002MTI1LCB3aGljaCB3aWxsIGFsbG93IHVzCj4gdG8gZml4IHRo
YXQgcGxhdGZvcm0gdG9vLgo+IAo+IFsxXSBodHRwczovL2FuZHJvaWQuZ29vZ2xlc291cmNlLmNv
bS9rZXJuZWwvbXNtLWV4dHJhL2RldmljZXRyZWUvKy9yZWZzL2hlYWRzL2FuZHJvaWQtbXNtLWJy
YW1ibGUtNC4xOS1hbmRyb2lkMTEtcXByMS9xY29tL2JlbmdhbC11c2IuZHRzaSMxNDUKPiAKPiBG
aXhlczogNzc1NmYxZDYzNjllICgicGh5OiBxY29tLXF1c2IyOiBBZGQgY29uZmlndXJhdGlvbiBm
b3IgU000MjUwIGFuZCBTTTYxMTUiKQo+IFJldmlld2VkLWJ5OiBEbWl0cnkgQmFyeXNoa292IDxk
bWl0cnkuYmFyeXNoa292QG9zcy5xdWFsY29tbS5jb20+Cj4gUmV2aWV3ZWQtYnk6IEFiZWwgVmVz
YSA8YWJlbC52ZXNhQG9zcy5xdWFsY29tbS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogS29ucmFkIER5
YmNpbyA8a29ucmFkLmR5YmNpb0Bvc3MucXVhbGNvbW0uY29tPgoKUmV2aWV3ZWQtYnk6IE1hbml2
YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQG9zcy5xdWFsY29tbS5jb20+
CgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/
4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
