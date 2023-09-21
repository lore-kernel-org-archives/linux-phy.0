Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1B6FE7107F
	for <linux-phy@archiver.kernel.org>; Thu, 21 Sep 2023 14:26:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hrJkTRZLY26qJCObnY83Wy8uuIDImpXBykSVFNTMzMI=; b=TjGzqh4sOCaYpY
	y6nSpBJWt5Du4tOxfl15zH0B2lx4hbZmNXGpfbKgMBNMdEGEUNLsMCQaa10CqpuzhaUPCYXepDj4m
	TxzY7/7eREni4geTL621n1SMQyGu58ImQMt7muNl2CDgEZgvZfEWC0Tw9mnaea/9unzSzve21+EBd
	EeURDNPDKZNzj7fHRBclGkQ/rovJ9brD9edHP4UtmBtTJCSeop3+CjjMSmVs+P+UemrzZYSVmlVwf
	iX1qRjIQHvbOgBOWk2KGh1uKJL0jEyYbkZx9wws408w9g/91jWpN33B3OmM2kq2bdEnSURyiD2qv4
	DY2RIT/8R/n0IW8jaWcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjKdB-006GIW-1Z;
	Thu, 21 Sep 2023 14:26:13 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjKd9-006GHe-0D
	for linux-phy@lists.infradead.org;
	Thu, 21 Sep 2023 14:26:12 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 87B92601FF;
	Thu, 21 Sep 2023 14:26:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A58EC4E75A;
	Thu, 21 Sep 2023 14:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695306369;
	bh=BBqfjUsfJ3kQ/EhGxEAQtBhKlPx/meeJnKHZzqCeh5k=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=kv6/ltG7KlBF+RvsYEM0RBt+gr4S3JYK6t+QyY7jLcqWayRyREwkguwyfVsLmSPyn
	 21I3sydRTVME+oU5qN7j2ZUyDRT+lV2WOjVLFqupyCv6to4jgLJn2f8EDO+NYkIfFY
	 IJR+eUxIgg3FU6ALEHKyZ4wlMh2nmTROyr7alUtRiApj6yDewtNac0Sht84N1kZMoq
	 189QoqPxJW7Si35SN9SqAyjUEPte4+pJQgqGqvw6DmWc0uC9anPST/xDBFCOdR5k1x
	 9IvwWoDRvbHN5RykV7PhwMB6xMveSYB2iWxSJfMPWNArpUO/Gnqn+Ury3OsPZ3gFUG
	 NqR2cGr1tpdtw==
From: Vinod Koul <vkoul@kernel.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Johan Hovold <johan@kernel.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org
In-Reply-To: <20230823181728.3082946-1-dmitry.baryshkov@linaro.org>
References: <20230823181728.3082946-1-dmitry.baryshkov@linaro.org>
Subject: Re: [PATCH] dt-bindings: phy: qcom,ipq8074-qmp-pcie: fix warning
 regarding reg size
Message-Id: <169530636593.106093.1059911135057813024.b4-ty@kernel.org>
Date: Thu, 21 Sep 2023 16:26:05 +0200
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_072611_141406_86FA1375 
X-CRM114-Status: UNSURE (   6.43  )
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


On Wed, 23 Aug 2023 21:17:28 +0300, Dmitry Baryshkov wrote:
> Fix the 'reg is too long' warning caused by me adding 64-bit address and
> size to the example, while default being 32-bit (cell size equal to 1).
> 
> 

Applied, thanks!

[1/1] dt-bindings: phy: qcom,ipq8074-qmp-pcie: fix warning regarding reg size
      commit: 211de9681195b92709b5d68e07af948b01c8bb9a

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
