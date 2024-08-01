Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4330EC3DA4A
	for <linux-phy@archiver.kernel.org>; Thu,  1 Aug 2024 06:55:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ACLmrGp5J7dk6QCCUUB2PEyjrT52j/QySF96Q9zn2AI=; b=tPXk3xsM+Hsx6U
	jPBGxWvICzB9CEbGiZbpYcWOXhj8PN8owE/X9ZVMO67ViIfWcaLUT1W2+vFpGeN1kKaekz79SvK8U
	sVp+/yKITMBXaILBW5vg9+z032XNaMzHOWex/5/DGq3lw8Sr0HMzqLmkaSHIJ1wSDMrTxCcgQZyQ/
	KpONdCrquQkcZcuVaXDRegxqfmww+ZE3+a2p5DxhiirebRBVh8NZYoa2O1K4s+wUuo7RjTaU3pgoL
	sQBy7YocKTwI2lfJ8kR8SnGC0u02OkFYFQrWwmQmbxtmPpX5iQFaCVstLdjcun2NC/SK3GqC5nFsV
	oQenZLl2vdrOF1dJwVxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZPiM-00000004575-42ee;
	Thu, 01 Aug 2024 06:55:06 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZPiL-0000000456W-18Cj
	for linux-phy@lists.infradead.org;
	Thu, 01 Aug 2024 06:55:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9902C6279B;
	Thu,  1 Aug 2024 06:55:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D71DFC4AF0A;
	Thu,  1 Aug 2024 06:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722495304;
	bh=HOKNNnybr8vVI+CenbuRHSy81M/wqIhPpxRQv9NWUoY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=d9kiV361GzPZKR5XC0GAwJInrK5PlMk4VKb6GpKn61lZtw/FdY8aVZZVg+i7zk+O8
	 KOo1FJZwsDy1cXt1znBqm6pqjlYnQ9dRsEaJy9S1KzxxMkU/AXpoX5Uw/dxVcUnTVn
	 YT554rTNpJvU/kg8JRJpSOSe0kLJPvAbSe0nppGwdEPWNLyaSn/VuOK8R+ePvZxdm2
	 9z97fPncxIhLi9IHPotLj80NaatGpOF/eOmTxZ6b2ubG5oJUyKFfIc4gNlckpxYnvC
	 2+AUmGvn0fiDTyIOFjtsUxo3xBRjmIqssK63kzus/in1zrLVEhv/xldS8pAlTwMXZp
	 D2HxiqXgiIExg==
From: Vinod Koul <vkoul@kernel.org>
To: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Rayyan Ansari <rayyan.ansari@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Rob Herring <robh@kernel.org>
In-Reply-To: <20240715130854.53501-1-rayyan.ansari@linaro.org>
References: <20240715130854.53501-1-rayyan.ansari@linaro.org>
Subject: Re: [PATCH 0/2] Convert Qualcomm SATA PHY bindings to dtschema
Message-Id: <172249530042.256913.13518178288820179470.b4-ty@kernel.org>
Date: Thu, 01 Aug 2024 12:25:00 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_235505_395137_45070266 
X-CRM114-Status: UNSURE (   7.60  )
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


On Mon, 15 Jul 2024 14:01:05 +0100, Rayyan Ansari wrote:
> The following patches:
> - Convert the old apq8064 and ipq806x text bindings, to a new unified
>   qcom,sata-phy binding in yaml.
> - Remove reg-names from the SATA PHY node in apq8064.dtsi to conform to
>   the bindings
> 
> Thanks,
> Rayyan
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: phy: qcom,sata-phy: convert to dtschema
      commit: 4bf8b462f84dd81c5938341a5468c3b669dbb1af
[2/2] ARM: dts: qcom: apq8064: drop reg-names on sata-phy node
      (no commit info)

Best regards,
-- 
Vinod Koul <vkoul@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
