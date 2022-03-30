Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66447C4167D
	for <linux-phy@archiver.kernel.org>; Wed, 30 Mar 2022 16:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W48hU+zxfLV9P9BzYeZ97FLFByHDP6BHqbBDrKra1so=; b=bs1Wr0yx3X8Jj8
	irVWONZKImkhXqVJBuLqoe7ezUtoKW9JwFYnsDfC1HI4PXwInpwmlJXCnwJBYSGTv/2oKZPlv1Yg4
	C5rGdZhJLHcP6ee9hC+VQ6/ypOM+Z9ecs4TEXF3JGxNNug+Hkd25s/3iwIedzC+3wqtYrJDTFyAYu
	XGqWYeLwIGTmC4XwBdhRZwORLoTQimTmkbgZ7oR/l3uPJicTVm9cV2C3RyGXzHMlDCyPcjup3b1WX
	CjK2lx/FAPsTbU0FwMqxaLlqsM6C+22a454WZwE8/7AbZB8Ld1Gzl1FnkdXUjVq79caHU77AICc18
	2yU56tgI/MJMG6VXL1KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZbTo-00GseK-Sk; Wed, 30 Mar 2022 16:47:32 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZbTm-00Gscg-BA
 for linux-phy@lists.infradead.org; Wed, 30 Mar 2022 16:47:31 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id D8A56617D4;
 Wed, 30 Mar 2022 16:47:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19633C340EE;
 Wed, 30 Mar 2022 16:47:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1648658849;
 bh=XcUY+3+TSV7tfrriu0LhCoDXFIocpHFKF4vtcCJFNhE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=smoaRWX+WA+tuy1FOMpkA4tFQ/k3yn1ADSMIe/+DTk9DUzN2tPCuY/4S/LB1ll1vb
 1fjJkgYQ8JkS2RmXnDDSbClhqerjSBunmK++s63sd9zpi6YtWlpdksnPOjjGaoPlE2
 zQI9e7cLA1kvYo3nwAANA3IA1CmPfWUasUzwGs4gkqJfYr5fEHlIftBwL49g13HzGA
 1yASSQo60IE51aU6QCmCn50a4FmK/snx9pOo7WWFXeYAJFgwAuczZVEDmJpMn2tLFS
 uDZiIYrcRoqWpfxiGGrGZ1rJ/NCBi3DEhjjputcygf3HVzBj5wu9Nl9ZaghkbET9Rw
 JDpBki4fDUAfw==
Date: Wed, 30 Mar 2022 09:47:26 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Lars-Peter Clausen <lars@metafoo.de>, Michael
 Hennerich <Michael.Hennerich@analog.com>, Jonathan Cameron
 <jic23@kernel.org>, Olivier Moysan <olivier.moysan@foss.st.com>, Arnaud
 Pouliquen <arnaud.pouliquen@foss.st.com>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Georgi Djakov <djakov@kernel.org>, Ulf
 Hansson <ulf.hansson@linaro.org>, Thierry Reding
 <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, "David
 S. Miller" <davem@davemloft.net>, Paolo Abeni <pabeni@redhat.com>, Kishon
 Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Mark Brown
 <broonie@kernel.org>, Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>, Dmitry Osipenko
 <digetx@gmail.com>, linux-iio@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-mmc@vger.kernel.org, linux-tegra@vger.kernel.org,
 netdev@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: Fix incomplete if/then/else schemas
Message-ID: <20220330094726.2132ff69@kernel.org>
In-Reply-To: <20220330145741.3044896-1-robh@kernel.org>
References: <20220330145741.3044896-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_094730_472533_BE01F0B9 
X-CRM114-Status: UNSURE (   9.93  )
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

On Wed, 30 Mar 2022 09:57:41 -0500 Rob Herring wrote:
> A recent review highlighted that the json-schema meta-schema allows any
> combination of if/then/else schema keywords even though if, then or else
> by themselves makes little sense. With an added meta-schema to only
> allow valid combinations, there's a handful of schemas found which need
> fixing in a variety of ways. Incorrect indentation is the most common
> issue.
> 
> Cc: Lars-Peter Clausen <lars@metafoo.de>
> Cc: Michael Hennerich <Michael.Hennerich@analog.com>
> Cc: Jonathan Cameron <jic23@kernel.org>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Olivier Moysan <olivier.moysan@foss.st.com>
> Cc: Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Georgi Djakov <djakov@kernel.org>
> Cc: Ulf Hansson <ulf.hansson@linaro.org>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Jonathan Hunter <jonathanh@nvidia.com>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Jakub Kicinski <kuba@kernel.org>

Acked-by: Jakub Kicinski <kuba@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
