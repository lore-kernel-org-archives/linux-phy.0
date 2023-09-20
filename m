Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16F85C04AAF
	for <linux-phy@archiver.kernel.org>; Wed, 20 Sep 2023 17:10:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CUmDaSC6r7qoyxomVuhmWAi7PwWNkjy7T0EH4W7zkrQ=; b=fi+ssH/kIi71Ai
	4GAZMBLdlVY+/9s1qFJpEM713UFk8fhK77J++CdPxkPgiSXZULA5zaMcKW7bBHHV/tUQ5mBZzgIvk
	JiVUwvPdgI/Xb0sO8vaChBm3ApAuz2K33wpqI44yleBP9X47NZUuwyzeILJUj/mwvDCb3TlpOjBWj
	bcH67JvSeYD5dHPpe3FIj5HSreA29wFcw7AnpawDgervzDGRdFas6G/T677WQ0Fn0n3sS9TZFKDeV
	1RbK6sLYEkuNC49p9BnfjbrDTlzErRojz72N+JfaVh7pmuBaIgjNiKJFWUDPcvOb933UwJl3SrYTo
	SBWqEvRzb5TV3GBAdwgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qj0iM-003hhc-0S;
	Wed, 20 Sep 2023 17:10:14 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qj0iK-003hgK-09
	for linux-phy@lists.infradead.org;
	Wed, 20 Sep 2023 17:10:13 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 589C361D4C;
	Wed, 20 Sep 2023 17:10:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39327C433C7;
	Wed, 20 Sep 2023 17:10:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695229811;
	bh=KP9IcaiHNhAMnTzX+ZBEk7bOQS90xvHRMfHmkZfCs4A=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=TCqQckW883n+AiYIVWcDftPSvpKx/VWm7ewtENRzz0zuS5sDra2vBGnEvaZgFm4TR
	 gnx3+8a6r/OkibNQ3e+bKDtWIYkzSf28XiHYDt89dUNQXPrnjsNhV5VQqg5WzErGxT
	 agqWwyxrcYMXBFk0cxXSd0NfQWrWd/Ge8NDl+45zrVeroX5uFG21/fTLqLbY5aggLZ
	 5l4NT0bTshCLqahbqt9GAuxrDxbCQbtI6sD5jD5YhG6Y/IQwV8E6vnW8IGwmYGTwh/
	 p3EdqihTR3tRrszNH3/RJ9EjU4NhnHha2m3BOyk537AIfY/uO9/REWg5yYYKksXn46
	 sRrBKEzUDFdGg==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH v3 00/18] phy: qcom-qmp-pcie: convert to newer style of bindings
Date: Wed, 20 Sep 2023 10:13:59 -0700
Message-ID: <169523004940.2665018.6127381308126268052.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230820142035.89903-1-dmitry.baryshkov@linaro.org>
References: <20230820142035.89903-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230920_101012_162286_16DEA6DD 
X-CRM114-Status: UNSURE (   9.04  )
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


On Sun, 20 Aug 2023 17:20:17 +0300, Dmitry Baryshkov wrote:
> Reviewing several patchsets for newer platforms made it clear that
> having two styles of QMP PHY bindings causes confusion. Despite binding
> documents having notes telling that old bindings should be used for
> older platforms, it is too easy to attempt adding new platform with
> older QMP PHY binding. Thus let's have just a single documented style of
> bindings.
> 
> [...]

Applied, thanks!

[18/18] ARM: dts: qcom-sdx55: switch PCIe QMP PHY to new style of bindings
        commit: bb56cff4ac0347fe5adb57659ceab338da7f8559

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
