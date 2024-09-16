Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D434DC3ABB2
	for <linux-phy@archiver.kernel.org>; Mon, 16 Sep 2024 23:31:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NLCRevWbVizM7nSnmWoTrt7SNmjQacPUuWAcZ7060nE=; b=1bR+u7glDxyJsS
	79fWEu72TfUMrnxOCxKgVU93kk8TH57pcbIyMs5oQ0fiC6Tl9gN4ALrcS4sUl7HIY43wa6+Pce1Sn
	q9Bzy2PQWn2vcziGWlN4sS0XmqA6iBGarTJcvLMeIsw8zMgZ+ZoYzvOBrh6MllAOPYpSHQLfORvg2
	wYHLEKjcMHjdbw292bBpw+bsMCBV/JraLJSeMiZ/5czp4bBYrZLXDrmdM1BqgLd6l0bAGoq3sRuyA
	BhYU705vMHykTXlbB1ZtnkvXVE5gdno9Tyh5bNQ+Gu7CsGBCVn5tvql0WP5IRVrpKIiGZc/56o/4R
	pxguqmuNOc85sf9TgYeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sqLBx-000000055Cg-22m9;
	Mon, 16 Sep 2024 23:31:37 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sqLBv-000000055CK-2hSh
	for linux-phy@lists.infradead.org;
	Mon, 16 Sep 2024 23:31:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 703555C05D1;
	Mon, 16 Sep 2024 23:31:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F290FC4CEC4;
	Mon, 16 Sep 2024 23:31:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726529494;
	bh=NlrtveBbkVytJ0mYOxanL6NWYuPRN/Wu9c5bSft5Czw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=n5EUpS/pv5Y+xIrHurU3ysZxyCyUXx9zG/k3kdX7VJVIrtEJlvYUkPYk8A48+J4kI
	 cQQgijcK/srW2qjIzlpPY/d+PkFsZP7rA6Nz6Muq4AKBSecjbGEJ1Mm+Ppb6h1pyZz
	 7TAZF2EEVSTFut9dq2NjGOPUL7bOhynANAQGfzWbIUacfsf9OKNv3oi0/uX8Nd8Uoh
	 ud9uU2eozt7T2fEQ9CJ/XuC5pFnANshDinlk30kImT2E1nnxHfblGkCx1DP6VJnohk
	 QWxQFQadFXrxJKWBuGkTH3JawWmznKceFjssp6zLjctbvxCNikuQlF7jJHOnEnuz54
	 g9nyn/bAKf69Q==
Message-ID: <d182614c-d6d3-4dde-8faf-d89142ad41d1@kernel.org>
Date: Tue, 17 Sep 2024 01:31:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: qcom: x1e80100: fix PCIe4 and PCIe6a PHY
 clocks
To: Johan Hovold <johan+linaro@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>,
 Rajendra Nayak <quic_rjendra@quicinc.com>,
 Sibi Sankar <quic_sibis@quicinc.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20240916082307.29393-1-johan+linaro@kernel.org>
 <20240916082307.29393-3-johan+linaro@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konradybcio@kernel.org>
In-Reply-To: <20240916082307.29393-3-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240916_163135_758455_E6280879 
X-CRM114-Status: UNSURE (   5.87  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 16.09.2024 10:23 AM, Johan Hovold wrote:
> Add the missing clkref enable and pipediv2 clocks to the PCIe4 and
> PCIe6a PHYs.
> 
> Fixes: 5eb83fc10289 ("arm64: dts: qcom: x1e80100: Add PCIe nodes")
> Cc: stable@vger.kernel.org	# 6.9
> Cc: Abel Vesa <abel.vesa@linaro.org>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---

I reckon you split it like you day so that it's easier to backport..

Reviewed-by: Konrad Dybcio <konradybcio@kernel.org>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
