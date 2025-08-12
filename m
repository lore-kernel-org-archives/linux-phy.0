Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF7C9CA0EDB
	for <linux-phy@archiver.kernel.org>; Tue, 12 Aug 2025 20:33:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ypxou/ofWqhsBPHbD39EVMLjR9MGuWPuwjyb59s8ziM=; b=agaVkTix4kvLiM
	k0zNIobJT5ODv4C6cv/QId7LYJUFuZwBne+K9le1bMiFqwLvDTPSeMK1h5KaHR7Zm6akNYcAOjswH
	uLjx0VtCg+5dG7rrPhMY+RGQC9G1EtweDxB1wbABrGQlrIgEe8dJmOXfqbrtO7916enT37fNHjZbv
	XqmUtdcxNzIagAB4oUTPJ/CeuhyxGYRZ1OhEvNlK3H7lKTRMyD2CQFP85aLDOlVI0bOGrSta2SZM3
	5KFHf02eZVLoy0tt1KcIMAV8zZAiX097clcz7Mg4ubV+En5Y6ZLDGOIY+Y+h1VMp9ljhleJg2n4Nz
	R7aEUAdMotbs5N2mhxhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulvgN-0000000BwnU-1zzo;
	Tue, 12 Aug 2025 20:33:19 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uls39-0000000BS0j-2ES1
	for linux-phy@lists.infradead.org;
	Tue, 12 Aug 2025 16:40:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id E5C9C60054;
	Tue, 12 Aug 2025 16:40:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 318FAC4CEF0;
	Tue, 12 Aug 2025 16:40:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755016834;
	bh=c0imZ72TUJ70OzV/83zxsZL4bXqGEF0O9JOXyLfWMgY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=WDGo2CNWD1Bi+gY3wt+qreis05jO5RimzwXEGs3acdX6RAtHFtlQuV4lEyAZSyS/R
	 zWRqi351ysteb4BfND75gZkKyRcItV6BvEoGa9/2FsjIYm5/YnhXeach63vNJiw1Z6
	 F74DVKTxRMMSOh3qWAEKeaywAzVPYCHjZSW7h4VV8YBgry5Xh9lf+pVoGT/M06o8LW
	 LHmDOyKO9JjG7AHaXNSj10nUs9NeGTypfiqLeARh4qs4V/tg8Hlhw8MH+JMTJjJaAA
	 o3z/VQ3staVVr1j3uNMC7IW43prPdg6aJk53cS/lGek5OOFtu8DwtdUgM2IaqcXI+8
	 OL1elNUz5QZ9g==
From: Vinod Koul <vkoul@kernel.org>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
 krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com, 
 mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org, 
 bhelgaas@google.com, johan+linaro@kernel.org, kishon@kernel.org, 
 neil.armstrong@linaro.org, abel.vesa@linaro.org, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
 linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com, 
 quic_krichai@quicinc.com, quic_vbadigan@quicinc.com, 
 Ziyue Zhang <quic_ziyuzhan@quicinc.com>
In-Reply-To: <20250725102231.3608298-1-ziyue.zhang@oss.qualcomm.com>
References: <20250725102231.3608298-1-ziyue.zhang@oss.qualcomm.com>
Subject: Re: (subset) [PATCH v7 0/3] pci: qcom: drop unrelated clock and
 add link_down reset for sa8775p
Message-Id: <175501682675.633066.14367700051268770361.b4-ty@kernel.org>
Date: Tue, 12 Aug 2025 22:10:26 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Fri, 25 Jul 2025 18:22:28 +0800, Ziyue Zhang wrote:
> This series drop gcc_aux_clock in pcie phy, the pcie aux clock should
> be gcc_phy_aux_clock. And sa8775p platform support link_down reset in
> hardware, so add it for both pcie0 and pcie1 to provide a better user
> experience.
> 
> Have follwing changes:
>   - Update pcie phy bindings for sa8775p.
>   - Document link_down reset.
>   - Remove aux clock from pcie phy.
>   - Add link_down reset for pcie.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Update pcie phy bindings
      commit: aac1256a41cfbbaca12d6c0a5753d1e3b8d2d8bf

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
