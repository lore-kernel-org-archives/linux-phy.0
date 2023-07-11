Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 439A3EB64DD
	for <linux-phy@archiver.kernel.org>; Tue, 11 Jul 2023 07:44:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sSM/33zHTgygVaAM2NwP4CrPIxzOoBXF418ALHmPyP4=; b=DdoKSpSUXnMGso
	l3k3ygFl10Pbwpek5d7Q3U3ElHHJUtgfe3DuktZqYYUz9+VxL6ztBD5a0Ps2hia5eZ1sW+geGEAPS
	5bxmZl4xUGGgK1Gt5QQYEbSIfRgxbjOw8LmVAEajDyI8DgGMiQrRrWf1T9UjTDlIfuFC/rXXiOIgJ
	IBh+tlxMxGgJRvkCNxPMPW37Bbj+0XVXCN22tISb2575JfdcRszn3IPN4MyJxH6FDDyiG/19wbCK0
	UvQH4z/az2YSgVkVs1pQ0kpd+Psi+gnDwk3/yC2PX9xyLS9rJooZgYMIbqACLaTGrTbDg1rC8yi6t
	pcddMGe5y7NVXHBE9b7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ83M-00E1Iq-2z;
	Tue, 11 Jul 2023 07:44:56 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ83K-00E1Hs-1q
	for linux-phy@lists.infradead.org;
	Tue, 11 Jul 2023 07:44:55 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 292836135B;
	Tue, 11 Jul 2023 07:44:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CC6EEC433C8;
	Tue, 11 Jul 2023 07:44:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689061493;
	bh=pB0rG4ntgY2g1W4cjzD/VOc9Al+3H7tP1ehB61j/7mU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=uNbWPYFDX8cqeRZ1MGQHX1vNEDpzjr2atblodo/tKcSwRDnQzDBw8uEFsVtTmTfkl
	 MrdR1i3UjCiwcrgQBh+zqIqtLeK5lynGGfI0YlCqq4Nv+Ps9F+b+FF5Nr95FrbeGPw
	 D3KUPyMEXFVWNNO6ZHszCm5BUpqMJ+kWJ7fO+ShrSued36WlkzQL6GfXn91o4+F4gQ
	 XYtxl4UWIklBAtYGW4+dmVfrr7dwgpD/BSAaOOEGR4GvWcUxTZnaqE/03RH7jQbbX3
	 z9FTpH4jEvVgD4RiQPQ1hhzQltYiJkgy1AO+3sAL71QjIwa2JKzJsr8co6mQOFlQfr
	 BiqC5CeXUFhkg==
From: Vinod Koul <vkoul@kernel.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
In-Reply-To: <20230531023415.1209301-1-dmitry.baryshkov@linaro.org>
References: <20230531023415.1209301-1-dmitry.baryshkov@linaro.org>
Subject: Re: [PATCH v3 0/5] phy: qcom-qmp-usb: split away legacy USB+DP
 code
Message-Id: <168906148935.189433.9157580042783820391.b4-ty@kernel.org>
Date: Tue, 11 Jul 2023 13:14:49 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_004454_647891_AA63BEC4 
X-CRM114-Status: UNSURE (   9.88  )
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


On Wed, 31 May 2023 05:34:10 +0300, Dmitry Baryshkov wrote:
> While working on the QMP binding cleanup, I noticed that USB QMP driver
> supports both simple USB PHYs (which should be updated) and USB-only
> part of USB+DP PHYs (which are largely legacy and don't need to be
> updated). To ease further cleanup perform a quick cleanup of the last
> remaining USB+DP PHY (on sm8150 platform) and split the legacy codepath
> from the USB QMP PHY driver.
> 
> [...]

Applied, thanks!

[1/5] dt-bindings: phy: qcom,sc7180-qmp-usb3-dp-phy: add sm8150 USB+DP PHY
      commit: b484e246a21433daaabd8678347c96f8339bf818
[2/5] phy: qcom-qmp-combo: add support for the USB+DP PHY on SM8150 platform
      commit: 4daee20877df04b96bc36752acdc41dfc581b34c
[3/5] arm64: dts: qcom: sm8150: turn first USB PHY into USB+DP PHY
      (no commit info)
[4/5] dt-bindings: phy: qcom,msm8996-qmp-usb3-phy: drop legacy bindings
      commit: c30d437e92d20741a6db7ece024e15a0f5af6bcc
[5/5] phy: qcom-qmp-usb: split off the legacy USB+dp_com support
      commit: 770025644d971229c86fb97796268b8363c2c70a

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
