Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61E31C433FE
	for <linux-phy@archiver.kernel.org>; Fri, 11 Nov 2022 09:29:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nKuoXPqm+V00eujptbATZtXY4IYioSMvIKhcJ04qOBo=; b=Z49Efxs22ukBFw
	B3Wxw4s2l7/OtRajjlTQYQmB+T2/aW2WTScixhJAhvykuMZ43R8OnGj5E7JcbVzEUdkCXoAfnQZ0+
	hF9ZfhmjnMxvb3W7sls/sRmytMeEHv9bT4ikLXaQvEVtv8ak14BO0P85cGtJ/aDRNX+voUCZB/P6d
	WDN1H/CGkqwYlTjrt198MlyiASblr8ztF4Xy0SV1eB+SHzgBjyK5JChXslxWFACQhwrePYjnOkwgy
	Op1dgwJgtcyyPpo2Ygo3IsnXptnL8FtCAzYAJG459NgnF+7RqZIK9IlMdPv67/RsKcla28qPUpCeK
	sznJRp/Uel5p1MXUa4xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otQLZ-00EarT-N8; Fri, 11 Nov 2022 09:29:13 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otQLX-00Ear5-Ti
	for linux-phy@lists.infradead.org; Fri, 11 Nov 2022 09:29:13 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8460661F13;
	Fri, 11 Nov 2022 09:29:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5669C433D6;
	Fri, 11 Nov 2022 09:29:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668158951;
	bh=tbFXzrgZcLvWGkQWi50aw7qsYZUHqfE43WL2OltpPEA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BeXZ2pEbNkbabI9elHe03WsBQ5bPZ7Kq8H7vpvJlxlQaeh7pBzTQ3Ynfvwi41yzHO
	 fg3L4UgapLb2qC70zIoncrmtuR0ttBl0u72N5LyB4geEUSavJRs/NyWFrvI2hcpSi2
	 9/1Ve08mSKHL4xEC3RZL/nCtDIlgnEVOjozMJMyb/mE+DygQQcDJU7X2JinaDosThE
	 xHQgpAM1qOaA2mjOrHmeJUuHcYJmqyKgSH745vBFJnOWBEX1odF2uDfyYpKqcDMovy
	 s7CjWwkrTKhehJ2NbKwjzsY4JKXtoe6sMIpoZd9NUn4LYjaim8XTYEW5D26XGqJqQ0
	 c5WactmUeLOuA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1otQL4-0002qC-SI; Fri, 11 Nov 2022 10:28:42 +0100
Date: Fri, 11 Nov 2022 10:28:42 +0100
From: Johan Hovold <johan@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 04/14] phy: qcom-qmp-combo: restructure PHY creation
Message-ID: <Y24Vyn8o1VkUecKY@hovoldconsulting.com>
References: <20221111092457.10546-1-johan+linaro@kernel.org>
 <20221111092457.10546-5-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221111092457.10546-5-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_012912_008919_0065955D 
X-CRM114-Status: UNSURE (   9.67  )
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

On Fri, Nov 11, 2022 at 10:24:47AM +0100, Johan Hovold wrote:
> In preparation for supporting devicetree bindings which do not use child
> nodes, move the PHY creation to probe() proper and parse the serdes,
> dp_com and dp_serdes resources in a dedicated legacy devicetree helper.
> 
> Signed-off-by: Johan Hovold <johan@kernel.org>

Please drop this first stray SoB line when applying (or I'll remove it
for v2).

> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
