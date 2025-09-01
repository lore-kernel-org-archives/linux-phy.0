Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D82FCA100C
	for <linux-phy@archiver.kernel.org>; Mon,  1 Sep 2025 23:13:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BUhaIqDtuX5IAnOBTPVFSnpAhpa+dIQ+yk/5c9399+s=; b=BWLDKeLrck4PZd
	upqWfIL1cBMm3732T7QBs6FtDBV3c3SGqjXUZyUK+gvnq4yYV8xANLE52Nwet98l83uGJbSotQSMs
	R9OL5YMrqsjIGjIYOuYaeNelfkRVcSs3LtnyL8n5bsw84lc7QG7upE6bScNxjkD3SWgeFLFbyxVC5
	Nv/GQBPKfGmXyN38BXq7PwsnCS5v5icnjc1mudXu1CqkHJSkBmt9SZXzBcWiKFHRYz08rvU97C89M
	CDijccM+pagjkqKrWLexvItOauaa4qgZZumr9ouU7LXuGwB8yosYIwIdWuWZay+9BwL7prmHXgHSx
	O0VrrIstsOVVrQ9MP88A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utDhv-0000000EFLi-2IZT;
	Mon, 01 Sep 2025 23:13:03 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ut7wp-0000000DOEp-3NDF
	for linux-phy@lists.infradead.org;
	Mon, 01 Sep 2025 17:04:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 853084516A;
	Mon,  1 Sep 2025 17:04:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2CCEC4CEF1;
	Mon,  1 Sep 2025 17:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756746243;
	bh=uznjV6GNtsUeaw8/qZ8vz+/Qm7K/KuRh7317nxeEPLU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=fFfWtwLzE3P+Mt49+YmZCC4AOAq9O2gFL5m3JARScjkvB1ukfrvR47IpCM+hADOqW
	 fngm/6eVS8jp4T93IcSEF46eGhpWvx3CS5nq+Gr3CuTLczvlnn5kwpSjJuz0tcaQcO
	 A8UKT8OjBwJaCxWXaHdG3gykZrx4Cu9vufEJe0t63g7+CBnhb/NEhGkrtuOFy+Wdhb
	 IHujTtco+R/xtMgRvq4mw7kywIzqioxgZ/27AqWSsVz7zLA7p4nlXlxpvkWZ7q04U5
	 mHEJXntqlNDt7X8t3XhaiLuOYZKXZcTUv3WTUzxEyAEwezXKM8yXcQrFsi/8TT+acd
	 O/yLS65LONKew==
From: Vinod Koul <vkoul@kernel.org>
To: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Wenbin Yao <quic_wenbyao@quicinc.com>, Qiang Yu <qiang.yu@oss.qualcomm.com>, 
 Manivannan Sadhasivam <mani@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>
In-Reply-To: <20250821-phy-qcom-qmp-pcie-nocsr-fix-v3-1-4898db0cc07c@linaro.org>
References: <20250821-phy-qcom-qmp-pcie-nocsr-fix-v3-1-4898db0cc07c@linaro.org>
Subject: Re: [PATCH v3] phy: qcom: qmp-pcie: Fix PHY initialization when
 powered down by firmware
Message-Id: <175674623951.175374.7267419073491468594.b4-ty@kernel.org>
Date: Mon, 01 Sep 2025 22:33:59 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250901_100403_870856_915F6B7A 
X-CRM114-Status: UNSURE (   6.99  )
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


On Thu, 21 Aug 2025 10:01:47 +0200, Stephan Gerhold wrote:
> Commit 0cc22f5a861c ("phy: qcom: qmp-pcie: Add PHY register retention
> support") added support for using the "no_csr" reset to skip configuration
> of the PHY if the init sequence was already applied by the boot firmware.
> The expectation is that the PHY is only turned on/off by using the "no_csr"
> reset, instead of powering it down and re-programming it after a full
> reset.
> 
> [...]

Applied, thanks!

[1/1] phy: qcom: qmp-pcie: Fix PHY initialization when powered down by firmware
      commit: 6cb8c1f957f674ca20b7d7c96b1f1bb11b83b679

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
