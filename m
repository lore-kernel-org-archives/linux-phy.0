Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E900EEB64DC
	for <linux-phy@archiver.kernel.org>; Tue, 11 Jul 2023 07:45:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9UaZqSJ3o9aWQ5PgYBp+JJG+WttUeh2TfQ4BI6YBeKU=; b=wFRBkajKzmgr94
	683nGOEHtui3w+UHz6dHq/FB9CHMqzcixTv8EEP1pfrmWhJcfVkRbuLX17XoUxZ1HQbnUgx2NC7WD
	9Ys2fDPz+Spspl9bGhNDt5JsL7nVRta7yq3R3JJ4vzWdMGyr0p0ZeaSBHyLBGhFpxxqpRSspChY5f
	uh5qOg35qK+jfW87fhhqiGbcKpDs+lhePUWyMRsAYtRgOB+/dKl3rj59ptU5zLnl+yJHYIiSTrHSG
	akiwGM1ER960fPPcgd5rzJtLeNS8i7ycNTQm8WfWQUB7V4TI3lqNDmspeMRQ51SVaoJrbA+CNZe2A
	1qWR+ZGeReeJHz+q3ojA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ83a-00E1Pu-1u;
	Tue, 11 Jul 2023 07:45:10 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ83W-00E1N2-29
	for linux-phy@lists.infradead.org;
	Tue, 11 Jul 2023 07:45:07 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 3C99061362;
	Tue, 11 Jul 2023 07:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 699D7C433C7;
	Tue, 11 Jul 2023 07:45:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689061505;
	bh=TtqMpM4hW9AyV/Tt+Gydfd5XB5pw625KQ3mnbG3pd44=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=qPjCG+heQ/6Lr135KxiYrFt07VW7BfjXXzHEfKRbDcx8eFfxVfBoF67MpxEKYYALP
	 mKzZQAzfXWH78LKfbO27R2FHXSfGxsC0qBXX1fz5CIkq3vxAzVbtBdz0v37cjPPdhM
	 0Ux4AJvyLrfZlUHtspdwEh2pdzPQV6BK6Z0gjMzu8HFQ7NGYhn6M74oAJhC8wLgwZy
	 MqpOylsvpUVqJP5deghUAC1Rdckwpuo+Vvv12UQsDwGRPPPUM4gaWL6vbkU4fNtUyr
	 Vaqn8lqzLbgxppmjXISmqiqEQdF0WFao1iiV2Nw9IUlVpK1RUwB0AyRuQ8ZvHlJ1WC
	 3IoJu2ivsK4Og==
From: Vinod Koul <vkoul@kernel.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 freedreno@lists.freedesktop.org
In-Reply-To: <20230621153317.1025914-1-dmitry.baryshkov@linaro.org>
References: <20230621153317.1025914-1-dmitry.baryshkov@linaro.org>
Subject: Re: [RESEND PATCH 0/7] phy: qcom: qmp-combo: rework register
 access
Message-Id: <168906150192.189433.12057457685611728687.b4-ty@kernel.org>
Date: Tue, 11 Jul 2023 13:15:01 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_004506_750520_3F9141C4 
X-CRM114-Status: UNSURE (   9.66  )
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


On Wed, 21 Jun 2023 18:33:10 +0300, Dmitry Baryshkov wrote:
> For some reason I used the wrong script to send this patchset, resend it
> including proper (linux-phy & maintainers) recipients.
> 
> The patch at [1], which added another function just to have v4 vs v6
> register address difference prompted me to take a look at the combo PHY
> driver. We already have mechanism, register layout descriptions, for
> coping with register address differences, which I ignored while adding
> v4 support. It looks like nowadays this has exploded somehow, resulting
> inseveral almost-identicatical functions.
> 
> [...]

Applied, thanks!

[1/7] phy: qcom: qmp-combo: correct bias0_en programming
      commit: 8fa60f5ab940ba732644c996c3570b78b10b8fdc
[2/7] phy: qcom: qmp-combo: reuse register layouts for more registers
      commit: 211ddf1d89cfb6be8aead2092c95bb285bf790b6
[3/7] phy: qcom: qmp-combo: reuse register layouts for even more registers
      commit: 01f363f4eb0c0c35aa88a0ff2a329c4d88dc1da0
[4/7] phy: qcom: qmp-combo: reuse register layouts for some more registers
      commit: 245fa640ea46ad430cd962351fef0618f71ffda9
[5/7] phy: qcom: qmp-combo: drop similar functions
      commit: f4ed3532ca7422811083d15a204f91b8f5f8b49a
[6/7] phy: qcom: qmp-combo: drop qmp_v6_dp_aux_init()
      commit: 8e4137dc4eac0982aeb4f3fd103598a41c4f165d
[7/7] phy: qcom: qmp-combo: extract common function to setup clocks
      commit: 315a1a400d9c6533823e3e3af9b07cb4d0555f77

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
