Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF2F4C001B0
	for <linux-phy@archiver.kernel.org>; Fri, 11 Aug 2023 08:30:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z4KdcOHsNZV/gb/HSzaurm51ZrjAEF58J907k3+zJNY=; b=1LsO1UWRLh032/
	kliQShrsS0jRH//Fd++pM5FX29YXHQ0I8u8whb5Y1c5O+qqFHxNl4TX0ksc8Q4YqZvi6YlYX8uG9A
	YMjZdrZ7v3mqoAcYpjOb+BXYwMP1Tz7goW8C7nGEGWwubF2P6e/ST2doKXa/PKF2c4bUHk4Lw3qCX
	xQkDTItR/eKDZhutQAvGFQ1/AWJFRogSdG+zFi3XE+Ez3QE4VZAKUKQSkC1TF3tPc9u9IZyPFWfZh
	6+ryzy+v4/m37tB2gfkvqE4PVxV3fdh1aSu9GNZgp8cpKx1PVx6KrUrL5PAOXuqAGmXDK+RchupsR
	Bjs7dpFW/XFsZ6DsHeWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qUNXe-009r47-2G;
	Fri, 11 Aug 2023 08:30:42 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qUNXc-009r2c-1J
	for linux-phy@lists.infradead.org;
	Fri, 11 Aug 2023 08:30:41 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id EC8BB64EDA;
	Fri, 11 Aug 2023 08:30:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C4C4C433C7;
	Fri, 11 Aug 2023 08:30:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691742639;
	bh=2rCSNftBj2l3sZobEVt9yAKRPfz2ibaoTTFNCHd526U=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Fxip8SEP1vpDph1cm3Fq2T3ftEhCQZ2yuT7C+4+7deD4btOXlzOnNQ95IsoFnsBht
	 EDrAfTWelyH9mmkndPwVTee5spDWFZVeetQnn57dozUR+GKbHv++WcA414160Qye9A
	 K2hzNefIgHBQtYg8XMUdWOyuDfXcl8xdEEzlGVdpNxqq/S0ZydPE9WR5bOG5fsXWXC
	 3QHhHIYhPLjemh2actuvaZ9Q71hqvPC0pPM0CtXq3QEL3cykOhSyLmnGgMTsVK0shX
	 DNGsOWHZFJ8HWkihqndi4D93tzH9YTcsmN7AfALL1agRYRYZcyD9e5XmhEdReOoGDF
	 OeIJ4+gy3JvcQ==
From: Vinod Koul <vkoul@kernel.org>
To: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
 conor+dt@kernel.org, abel.vesa@linaro.org, 
 Rohit Agarwal <quic_rohiagar@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <1691415534-31820-1-git-send-email-quic_rohiagar@quicinc.com>
References: <1691415534-31820-1-git-send-email-quic_rohiagar@quicinc.com>
Subject: Re: (subset) [PATCH RESEND v2 0/9] Add pmics supported in
 Qualcomm's SDX75 platform
Message-Id: <169174263722.106197.4875571006403929155.b4-ty@kernel.org>
Date: Fri, 11 Aug 2023 09:30:37 +0100
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230811_013040_487025_8E1C1F06 
X-CRM114-Status: GOOD (  12.64  )
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

[1/9] dt-bindings: phy: qcom,snps-eusb2-repeater: Add compatible for PM7550BA
      commit: aff7625322ceaf32c930ebf43c75db442067a88d

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
