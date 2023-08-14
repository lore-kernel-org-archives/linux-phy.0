Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8671C001DB
	for <linux-phy@archiver.kernel.org>; Mon, 14 Aug 2023 03:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/rgcnU1ly6fCXmX6leHD80G094frB0/hATN2MjBb8Zo=; b=f6h2IrA/xZdIiY
	fG+StDPcvTbgyG66HJuuGiUR284mSjhxR+HBYqdpQCUAsjU094cWt0i/FNihea7O1scVrUd9wHcos
	TSSq2a905lupc6OhEiA2GOeSb9B11Mrbjb6VCUm3VnechNL9w2cK9mgrahPnBm1FrZMQkuwnVI7Kv
	KWChGVk0PK+kyjYA/TbzRmzaLEnCeyst5dTIYcro8HtqAUtTff/KCB6wFE9Y0/jg2zWsCUmg7Vgdr
	akulZDjcIZzcQwR0ijkh+f+AoEsE0+G7jMZeL/GpFoBM4cA5Fsd++xPX1abP6/sbiEhQSryx5S4sa
	najzCDOTl7uC3aa+4qJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qVOCj-00G4iQ-15;
	Mon, 14 Aug 2023 03:25:17 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qVOCh-00G4i1-2L
	for linux-phy@lists.infradead.org;
	Mon, 14 Aug 2023 03:25:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4381C62832;
	Mon, 14 Aug 2023 03:25:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7E48C433C7;
	Mon, 14 Aug 2023 03:25:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691983514;
	bh=HLH386a9SZPtK73nRr4aIDALjI8TGn0kUdlj2ARlonE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=fsnVclABUujHo+IMyj0E7aCm82O7DRvu/UfzchEByDPSiHZBCMiQ6ai57BkIhOklp
	 Lj97qZ982tq1g6aLcwDcoLld1qQLDBNnv/6InodfRvDsEx8gzB6bKKywfx4SYzludK
	 PiF3n9CYEzZbIn5/57CoJ5I86zVhx5iMuyUKoOT8O4iYp2TcS7iFtSU6S8fbDsLZS/
	 HZ0YK1hMChXdBPqd+HtpdBS0uED5YBkVEnw7feZm9Ln2gRhK2aYMQdH7Y3CC0GxkZl
	 d9Jqes64HG9pp1QREmvWhIHaNVjMLfcd5TGKgz2np9sf3gEcQuGdkPFadO0Z2AAMy+
	 WipfVdCq096jA==
From: Bjorn Andersson <andersson@kernel.org>
To: agross@kernel.org,
	konrad.dybcio@linaro.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	abel.vesa@linaro.org,
	Rohit Agarwal <quic_rohiagar@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: (subset) [PATCH RESEND v2 0/9] Add pmics supported in Qualcomm's SDX75 platform
Date: Sun, 13 Aug 2023 20:27:43 -0700
Message-ID: <169198364312.2443702.8623911561594047426.b4-ty@kernel.org>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <1691415534-31820-1-git-send-email-quic_rohiagar@quicinc.com>
References: <1691415534-31820-1-git-send-email-quic_rohiagar@quicinc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230813_202515_808715_AE3701CB 
X-CRM114-Status: GOOD (  14.40  )
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


On Mon, 07 Aug 2023 19:08:45 +0530, Rohit Agarwal wrote:
> Changes in v2:
>  - Added compatible for pm7550ba for eusb2 repeater and used it in DT.
>  - Addressed some minor comments from Konrad to add fixes tag, labels
>    and update the labels
> 
> This series add support of pmics that are found in SDX75 platform and
> add the corresponding regulators in the IDP platform as well.
> It also parallely updates the pmic found in SDX65 to PM7250b and add pinctrl
> support for the same pmic chip.
> This series is based on the new header inclusion[1] and movement of the
> regulators level from rpmpd to rpmhpd[2].
> This series can be picked after successfully picking [2] and [3] as [1] has
> already been applied.
> 
> [...]

Applied, thanks!

[6/9] ARM: dts: qcom: sdx65-mtp: Update the pmic used in sdx65
      commit: f636d6c356b339b0d29eed025f8bf9efcb6eb274

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
