Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC054C2FC0E
	for <linux-phy@archiver.kernel.org>; Thu, 17 Aug 2023 09:55:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qFBvwStaY27YLW+QtTuXVg5R1yeNFjdw+GxPDYFflSw=; b=NTbQSCkA8IrUvc
	4eGgvuXXxfrWr3W3IetXiOJrEUIKuOs9LZoc/ogZ5aKBSVTpwcLV6pzL0EtgnUOubJgxop4QxaFGw
	1ey360SbFT5na/ETCkYaPr0rigmmHdOBoGxMtt6vEU2w4jrxnaBJrQgFhTz8qXuZRCbDKlrlz8iFM
	3KNJwo38+kRDqluomSdPbnumZwBlU1XBCvzOWJ0taLb3kahhiE0622aLfQTRcGDJ5F3dIPeCGvlWm
	K7xnZRE/PWIadnxV6zv2apJN36/3o4ejOwI1xMBdy0IdmrwdAktTlcVsXxEqrpFt19MefwHke2SL5
	ptMAEYuI6qCFhqIQ7dgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWZj2-005z2q-1K;
	Thu, 17 Aug 2023 09:55:32 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWZj0-005z2J-0o
	for linux-phy@lists.infradead.org;
	Thu, 17 Aug 2023 09:55:31 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 7F84A613FB;
	Thu, 17 Aug 2023 09:55:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02C3CC433C8;
	Thu, 17 Aug 2023 09:55:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692266128;
	bh=Jt1IVMEO12SiYr/MXa/1Iyn6WVoKlE732yrn6kSKBfQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=X8qLudAXEGb8mmebPPfhm88szkQuogS10zDeybtFUflcm2q+qxgrEfZbcEnLeRwb4
	 1S9Hco5Vdx6HMl2fUzHleP0FWwwH7Hu1Kh+1AyFLuuAcBVrtIDkc2DQeEri25Xb63R
	 dghmFIZlhezcDX4ftaJ9NS9MFX3DiXk+LVTq0iGQ7KvUD8F8w75DHD9hw7E9WMMUfT
	 V0C9BOdq4Ex25ieGwh4jEMyraDoBb6DOU1Le1k+y6dwZwXnayf7B+DPN87jHS3Qyrz
	 AKgAqoWEOsOo/QGYfRTFsxT6o1E2Mtnw5Yk5t5XTW8USRhAmZls9YZKgJ7XbjllwFS
	 V2b1dcEzLadyg==
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
In-Reply-To: <20230731105759.3997549-1-dmitry.baryshkov@linaro.org>
References: <20230731105759.3997549-1-dmitry.baryshkov@linaro.org>
Subject: Re: (subset) [PATCH v2 00/13] phy: qcom-qmp-pcie: convert to newer
 style of bindings
Message-Id: <169226612462.81413.17837739728017368201.b4-ty@kernel.org>
Date: Thu, 17 Aug 2023 15:25:24 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230817_025530_342426_3A89A51F 
X-CRM114-Status: UNSURE (   8.06  )
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


On Mon, 31 Jul 2023 13:57:46 +0300, Dmitry Baryshkov wrote:
> Reviewing several patchsets for newer platforms made it clear that
> having two styles of QMP PHY bindings causes confusion. Despite binding
> documents having notes telling that old bindings should be used for
> older platforms, it is too easy to attempt adding new platform with
> older QMP PHY binding. Thus let's have just a single documented style of
> bindings.
> 
> [...]

Applied, thanks!

[01/13] dt-bindings: phy: migrate QMP PCIe PHY bindings to qcom,sc8280xp-qmp-pcie-phy.yaml
        commit: 1c42a5f4e84b217aa44747079aae9ba26c29e328
[02/13] phy: qcom-qmp-pcie: simplify clock handling
        commit: c4b46cdfc9ef4cd003ee52bb0a2b3c43ed26cd60
[03/13] phy: qcom-qmp-pcie: populate offsets configuration
        commit: 64adc0bf06ad5855da5a02b9653fb7cfda289c50

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
