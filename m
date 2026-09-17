Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11427C982D0
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 05:13:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fm0WzXmSVKEb/P0QqLmxHZBuDgdN8999Ki7MZNzNO2g=; b=dNDaUOheM5AIRp
	25MQe5x1Xy/32pttW5qPAEZ8ivd4fGCjLamRR70ofmSuPYVYa9KDoPkwEV+YycsI6PMBtVSSlsSb4
	yHZwfNd1+wThJYAh6i9ViiHVsZgwVwK3EWZzaUsgqla5e4v8Tl9bXn8QtE0F0wDoHiRyTCe4yPFr4
	lRTG0Cmjl2U7NjXmfqx+JCfr5crljzPAlNd/NdKUcK9mtNmkeFYclfB+zWX8eq4eh8C5/R9wbr3qi
	NYXyDri0JM3gG1B9qFhiWndc/0lzsKpFHgpGUWu1bBYG8TGZ82YK5H0F7qVO6hlHTwn1yqQbmDna6
	qgNKGul6IEoIGtyQ8RzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x74RH-0000000AabX-2f2q;
	Thu, 17 Sep 2026 05:13:39 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x74RG-0000000AabQ-1TrK
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 05:13:38 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7010960A56;
	Thu, 17 Sep 2026 05:13:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE4361F000FF;
	Thu, 17 Sep 2026 05:13:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789622017;
	bh=uGgS3NrMnS5OPlo2/pV3+r0JyX3qwE8hUTEhqcMecK8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=AgNT356JXnW82O7Cd/5d30SRChL8c01Q0kdU3h38fdWt3kuh++CekcgNr+FBcmdt1
	 kUXCawFxS5oMyDr1Qjr4V3S5caXVHph4EfM0W9q/rC7eW7MKTe2j780kFv6+bmQvs9
	 e/Z2m7/UY2vG6jyx9oA3hmneW6HtUy5PiKjY/J5Wq4WuIAaltNCLjkK+7TUnJMbf8F
	 K8G96mRs6jAlp5xc7SLcSAodjPY9R/PvJuA7hbdQD16TSKGCzSfbFzZNhMLgEkOLXG
	 zSOrBU9xLfZvmsM28t5XNAS1JU76Qh2Ahn0pGpebC0eLNvTssrgEKijRX5sbwnv8Bk
	 3QzbgiesgXvxw==
Date: Thu, 17 Sep 2026 07:13:14 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, Bryan O'Donoghue <bod@kernel.org>, 
	Loic Poulain <loic.poulain@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Felipe Balbi <balbi@ti.com>, linux-arm-msm@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-phy@lists.infradead.org, 
	Krzysztof Kozlowski <krzk@kernel.org>, Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v17 4/5] media: qcom: camss: Add support for PHY API
 devices
Message-ID: <fq5fsbpmxn7s3ttiwxviyvykp2yyvuaykz7nly3orjqpsdof3j@avccg73hbsse>
References: <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v17-0-e2197a3e2551@linaro.org>
 <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v17-4-e2197a3e2551@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v17-4-e2197a3e2551@linaro.org>
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

T24gU3VuLCBTZXAgMDYsIDIwMjYgYXQgMDM6MTc6MDhQTSArMDEwMCwgQnJ5YW4gTydEb25vZ2h1
ZSB3cm90ZToKPiBBZGQgdGhlIGFiaWxpdHkgdG8gdXNlIGEgUEhZIHBvaW50ZXIgd2hpY2ggaW50
ZXJhY3RzIHdpdGggdGhlIHN0YW5kYXJkIFBIWQo+IEFQSS4KPiAKPiBJbiB0aGUgZmlyc3QgaW5z
dGFuY2UgdGhlIGNvZGUgd2lsbCB0cnkgdG8gdXNlIHRoZSBuZXcgUEhZIGludGVyZmFjZS4gSWYg
bm8KPiBQSFlzIGFyZSBwcmVzZW50IGluIHRoZSBEVCB0aGVuIHRoZSBsZWdhY3kgbWV0aG9kIHdp
bGwgYmUgYXR0ZW1wdGVkLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE5paGFsIEt1bWFyIEd1cHRhIDxu
aWhhbC5ndXB0YUBvc3MucXVhbGNvbW0uY29tPgo+IFJldmlld2VkLWJ5OiBMb2ljIFBvdWxhaW4g
PGxvaWMucG91bGFpbkBvc3MucXVhbGNvbW0uY29tPgo+IFJldmlld2VkLWJ5OiBEbWl0cnkgQmFy
eXNoa292IDxkbWl0cnkuYmFyeXNoa292QG9zcy5xdWFsY29tbS5jb20+Cj4gU2lnbmVkLW9mZi1i
eTogQnJ5YW4gTydEb25vZ2h1ZSA8YnJ5YW4ub2Rvbm9naHVlQGxpbmFyby5vcmc+CgpGb3IgdGhl
IFBIWSBwYXJ0LAoKQWNrZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5z
YWRoYXNpdmFtQG9zcy5xdWFsY29tbS5jb20+CgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPg
r43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
