Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B357C25B41
	for <linux-phy@archiver.kernel.org>; Mon, 23 Oct 2023 06:29:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h6ft+2VngboySeyn2YlI8Dt7ItqdrMPb76Xi8P4RuKc=; b=W9SqA7NrhpkxLH
	eJc1hvQ1WrN/Xwz4o9j5vyZQZXuKFRY+R+Mkn5GOQ6smtCjKPIOhLAKi5svMncE5dS4MLkVTsRpvs
	0Xh2N38vo1hfm069GJ7UJfkfZevY6w/jBSc4yMO7mOIVoQQVXa81SqSo8P87rjlFOeBO155PXCHNO
	vZVw/txOJw2xjzJMmHIoZAjfL8AwcW3GPvIBc+s5Vzd64uBLfb5C0HqjVAbrZcBHh3JMgsRjVh1NP
	TKvTd0+lVEeWqHIBgqMILCuo9F3TsofFz+sqx/LQAsspjRuNtog9mTBNZAFvHfDNEg8Jg7J7ay92J
	iv2K3nc4YSyoOvFNKamA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1quoRA-006XDJ-36;
	Mon, 23 Oct 2023 06:29:16 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1quoR8-006XCk-13
	for linux-phy@lists.infradead.org;
	Mon, 23 Oct 2023 06:29:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 45298CE1DA9;
	Mon, 23 Oct 2023 06:29:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 876F3C433CC;
	Mon, 23 Oct 2023 06:29:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698042551;
	bh=UzV9yMbqCPVXQQpeocsDp/J2O4jHQPgJtVBvMmlCVgE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=djO/kBUSwTiAuTbMrLkHAxEYombleyFJ5H0cXRy+NqKXFFKldm36vRKzb5Oq27ZiI
	 QGUDqrhTz0vpyypORVsCJbtANVnA5DXx3w+bNBf+sA3tyDCpOisZfz5JDoT8pbKlIo
	 v9x94mFT9OJ9DMW1lUFin06ARQK/znad3ytk06n4YgpXylSAAlV0mP8veyPda4X3Zc
	 PYIgHt16MZabGCzD4rgFgn+ivN+IgrRkWxsi9CeTU4ntui+oEYQUfhnULXs2mcXAQY
	 QZu4jhpilDbkTRt/gCze99F4AFZI7aZNOpvrUEHsa3VUktcyoS471szjbAo1WbRAOW
	 xhj7SkZXVnIOw==
From: Vinod Koul <vkoul@kernel.org>
To: agross@kernel.org, andersson@kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
 konrad.dybcio@linaro.org, mani@kernel.org, 
 Mrinmay Sarkar <quic_msarkar@quicinc.com>
Cc: quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com, 
 quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com, 
 dmitry.baryshkov@linaro.org, robh@kernel.org, quic_krichai@quicinc.com, 
 quic_vbadigan@quicinc.com, quic_parass@quicinc.com, 
 Bjorn Helgaas <bhelgaas@google.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-pci@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, mhi@lists.linux.dev, 
 linux-phy@lists.infradead.org
In-Reply-To: <1697715430-30820-1-git-send-email-quic_msarkar@quicinc.com>
References: <1697715430-30820-1-git-send-email-quic_msarkar@quicinc.com>
Subject: Re: (subset) [PATCH v3 0/5] arm64: qcom: sa8775p: add support for
 EP PCIe
Message-Id: <169804254205.383714.18423881810869732517.b4-ty@kernel.org>
Date: Mon, 23 Oct 2023 11:59:02 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231022_232914_545693_9C4F31B8 
X-CRM114-Status: UNSURE (   9.13  )
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


On Thu, 19 Oct 2023 17:07:05 +0530, Mrinmay Sarkar wrote:
> This series adds the relavent DT bindings, new compatible string,
> update PHY, add support to EPF driver and add EP PCIe node in dtsi
> file for ep pcie0 controller.
> 
> v2 -> v3:
> - removed if/then schemas, added minItems for reg,
>   reg-bnames, interrupt and interrupt-names instead.
> - adding qcom,sa8775p-pcie-ep compitable for sa8775p
>   as we have some specific change to add.
> - reusing sm8450's pcs_misc num table as it is same as sa8775p.
>   used appropriate namespace for pcs.
> - remove const from sa8775p_header as kernel test robot
>   throwing some warnings due to this.
> - remove fallback compatiable as we are adding compatiable for sa8775p.
> 
> [...]

Applied, thanks!

[3/5] phy: qcom-qmp-pcie: add endpoint support for sa8775p
      commit: 8e11a94e15a49221510dd4737a70c8dd56eb9678

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
