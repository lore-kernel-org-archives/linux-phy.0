Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34937C35274
	for <linux-phy@archiver.kernel.org>; Thu, 21 Dec 2023 17:16:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BktPMAVWONhbjWN3zwNkq5tuIxYy8E6WcJHMKQH+YQU=; b=yrCxZc3N19rvxi
	y7XATq72BdxVlQllKhniYa9Ikg16Ul8DymThdWTEyIoXmhkehIWyy7IaPB/9AZg2YXtTgH8YTpdx0
	V8CiVEJhExXhypDURHvwYlRk6ya1y/EtDPMZzyfUiB9F0N9Z2mVhcVlkATDa8kQ8DvFhZR7RraXWG
	zgXI2oyPQtRrpGoO0fOKBo9xPrwSRYVosT9KBWesePpgvPGdmU39LR5jC3QfY/mIO7Xgha3b2qQyH
	tQjUBWi8427lvqjHGqlIE8zstarJyDkRFls/yIAH7F669KX0z4iJlMjs1K085yA0+tS2gwrhny8pl
	r+H+w9NPOmV/Ju9pqhMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGMel-003bl0-30;
	Thu, 21 Dec 2023 17:16:23 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGMeY-003bfG-0Q
	for linux-phy@lists.infradead.org;
	Thu, 21 Dec 2023 17:16:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 74894CE1FF6;
	Thu, 21 Dec 2023 17:16:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C645C433C9;
	Thu, 21 Dec 2023 17:16:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703178967;
	bh=n70baIvcjor/mK5/3mzrSLuCYGgvXxOtzRttt3oI4zE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=nF/GnY0iQR/v5v4WY1QhEdxmtX6J/BZ7ieUxm6JRjD+Du4JZ6esROdyzX9tg7+rOu
	 mR3K+0W/r0QO7u7eBZ4GVvjNCWKXiHi+ptura7DWKVdvqDzThZdl71fK/urkOzGb5m
	 TQ32kb7B6OYB0Yrydoq4drhyECS60WXTmEQfqYc13w5jjMzcqrHuDprGeCHNr1FS1Y
	 o+Pb3glUGOucsXXtbcbUziuwAhjARC/sy4dhaK/D4jngcd2n0s2Rj3BMBoCU5w7JfO
	 RSs+3O+kxBX2Xn/TPgCz2+Bhkjqxfa2l+5iZ2F6EYGD6LQFzuYaC4qzvXsYJ0cXUrU
	 ZeguFuEFQibhQ==
From: Vinod Koul <vkoul@kernel.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20231122-phy-qualcomm-eusb2-x1e80100-v2-1-3ba9a8e5ade4@linaro.org>
References: <20231122-phy-qualcomm-eusb2-x1e80100-v2-1-3ba9a8e5ade4@linaro.org>
Subject: Re: [PATCH v2] dt-bindings: phy: qcom: snps-eusb2: Document the
 X1E80100 compatible
Message-Id: <170317896370.712473.16155097082641260373.b4-ty@kernel.org>
Date: Thu, 21 Dec 2023 22:46:03 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_091610_343130_0EB453F2 
X-CRM114-Status: UNSURE (   4.41  )
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


On Thu, 07 Dec 2023 14:49:10 +0200, Abel Vesa wrote:
> Add the X1E80100 compatible to the list of supported PHYs.
> 
> 

Applied, thanks!

[1/1] dt-bindings: phy: qcom: snps-eusb2: Document the X1E80100 compatible
      commit: ec80c175c096eb752d581ef0aafb12ed46010b2a

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
