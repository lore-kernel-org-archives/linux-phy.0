Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 253D4E7107F
	for <linux-phy@archiver.kernel.org>; Thu, 21 Sep 2023 14:29:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tCnZTDnZN7ci6425L8fIFdF934cffckHxZqLZggoHMo=; b=JDJpDqVZKBKQNt
	tg7kxTeS7IJBImmNwY0dRhSrNCHK0j9N87Q9mEnVoassODq4logLFle87zuHExmqrt01xnV8dbFf1
	9qvXFD/C2wTT7N1m2W+OeUXIhw4Nk2Kg7btuLpDY6isrHJ4fIrrrZTknFmnV99g2pZssfPAGnjl4N
	o7jhozTt3/Ul2/dvHUCqKxK0nQGpwCq7UIrzuEkukb33yKzhoi21qlEHKSyxGOWC/N+zHD6l9tAHF
	YV0jgMl3pUXqd+WczKAFgFk2I1WRBU4HeC/leKkGLYSgfdU11MBNmE0V9Eqn+HBi0Qj7gXABYjZoo
	4FB7gV7FIMr3MHkTOpyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjKgT-006H7N-2Y;
	Thu, 21 Sep 2023 14:29:37 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjKgQ-006H1s-1F
	for linux-phy@lists.infradead.org;
	Thu, 21 Sep 2023 14:29:35 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 0D72BB820D9;
	Thu, 21 Sep 2023 14:29:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9743C4E758;
	Thu, 21 Sep 2023 14:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695306566;
	bh=i7yPeuk2Yj5yCsGwQ+SXnhbxyv502egxjv2oc9SFNmE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=PCZ16C3C4Dbv8TEe8702mLOtUgACJfVB5x0outhchQVYNtesPJMUye/gHbkGDyXR+
	 P5ZVpxRfVNMZBl8VLIC59dERUnVdSsBy/EMkIZ2dV/PMqV0TIBS45ofEPTHtbdezB3
	 5Jb2qJZCTea3xOZ9eIwZtcTpH2hJyY0lrdE+r7M4k7Fykm0cGcI6l3ELkhtmOVuJ0T
	 Qfvb0QTm2Az1/rQuYtFXs7JKSmXl5THRc86wn7o8tfQgOqI/zAd4SAquhHygZPS7yE
	 CNPanpj9Q3Br/q8g+SLoDG/lxaw61miuswZ0ImVGlF6SQFjxW6RDK/wX0fv99xAJ2l
	 WmgeNvrRlPWkQ==
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
In-Reply-To: <20230824211952.1397699-1-dmitry.baryshkov@linaro.org>
References: <20230824211952.1397699-1-dmitry.baryshkov@linaro.org>
Subject: Re: (subset) [PATCH v3 00/16] phy: qcom-qmp-usb: convert to newer
 style of bindings
Message-Id: <169530656347.106263.14330882289989442266.b4-ty@kernel.org>
Date: Thu, 21 Sep 2023 16:29:23 +0200
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_072934_581833_2E33E1C9 
X-CRM114-Status: UNSURE (   7.84  )
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


On Fri, 25 Aug 2023 00:19:36 +0300, Dmitry Baryshkov wrote:
> Reviewing several patchsets for newer platforms made it clear that
> having two styles of QMP PHY bindings causes confusion. Despite binding
> documents having notes telling that old bindings should be used for
> older platforms, it is too easy to attempt adding new platform with
> older QMP PHY binding. Thus let's have just a single documented style of
> bindings.
> 
> [...]

Applied, thanks!

[01/16] dt-bindings: phy: migrate QMP USB PHY bindings to qcom,sc8280xp-qmp-usb3-uni-phy.yaml
        commit: 15c83637402c3654dbc7aac368119c3809a119fa
[02/16] phy: qcom-qmp-usb: simplify clock handling
        commit: 7233090aba54d82a1ed64f125b32c3ac0b91803c
[03/16] phy: qcom-qmp-usb: rework reset handling
        commit: fcf63482f6a9d383f04e409bc50f00eecb74ae73
[04/16] phy: qcom-qmp-usb: make QPHY_PCS_MISC_CLAMP_ENABLE access conditional
        commit: 6e9402261e8c85ec386b473ce3738d6e9d3e5013
[05/16] phy: qcom-qmp: move PCS MISC V4 registers to separate header
        commit: dc32762214e4bb683bfb21dcb4ade10e27e11c6d
[06/16] phy: qcom-qmp-usb: populate offsets configuration
        commit: 2be22aae6b18326426443d6c0cc9ac6985183a89

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
