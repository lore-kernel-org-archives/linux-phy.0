Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34494606A327
	for <linux-phy@archiver.kernel.org>; Tue, 27 Oct 2026 15:46:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=bBhC2mG6;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=leemhuis.info header.i=@leemhuis.info header.a=rsa-sha256 header.s=key2 header.b=bjaTcbZX
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=VFhs1+6kWmC1POjBQznkP+YKZOSts95LyOPmYUUqH4o=; b=bBhC2mG69QK3HnnYcpQq7XiQRD
	Pg8sDBBy5+I21HmnlZnmmavzxfr6+88FqSZ1jnD3L4fOIZ6l7CSlnYMUd2Cjn4zPWF2Hv4xoVWlhL
	kKlWuu/jBMyNvAqnjyPKri9uGH/XL6wQtfYpyIhzqifvwMMX7eGxiV+BfxjiXRPIQQWSDGuc2LDf8
	/QM2QRBqoVqY/qmX/zTMoFNs+HKRt6YP4j4tWXimw/CT94TwYa4Nbtyi7gzc6xS17j2spQSfQE74U
	yAUbmc5AMml9YhuT8rkfbNjFNsBMJoU13+uofdTfr+3bVPmEB0uQbxxckvVSIe3xeYDy3DBzPw595
	Urk5OdTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLjNd-00000005GOM-3FGZ;
	Tue, 27 Oct 2026 15:46:29 +0000
Received: from relay.yourmailgateway.de ([185.244.194.184])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLjNZ-00000005GNl-3gpZ
	for linux-phy@lists.infradead.org;
	Tue, 27 Oct 2026 15:46:27 +0000
Received: from relay01-mors.netcup.net (localhost [127.0.0.1])
	by relay01-mors.netcup.net (Postfix) with ESMTPS id 4jDZbb0pTXz9VQW;
	Tue, 27 Oct 2026 16:46:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=leemhuis.info;
	s=key2; t=1793115979;
	bh=qA56k+l6ygj3dxRxpHulwfQ4k+iK1ctd1p0EB6vaya0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=bjaTcbZXSFZBGYT+VgmIJ/IrtNpBGAPO1hSj7XfOR81PfE5tjcWz/xJB3aJbrRsGh
	 gBIJ6+1h1kZlArXr2PyqmOjWBal4NpZfI7O/GJMVwKbYAOZewDqX9sHCQiPDQGS+xy
	 7v7apsgpkoRdJjJLdjG1/MLxaq2wIuHjKR4bAcgwzPNoCbhYDKHJXw5BfbSZLOUZL7
	 2ZwXEh8KXsquon7se3heCb3YkI/aaH0K6r8sd1qoAJIxEmeTKo7iha0H9GzdQq2XAi
	 qUXdutCKXFEcLdRkysC2IuSiH/D+8vx3lXhsm5XVDHITVP+W2TFmBMyY01ZI0+JJhd
	 c2oxCqpq7B2pw==
Received: from policy01-mors.netcup.net (unknown [46.38.225.35])
	by relay01-mors.netcup.net (Postfix) with ESMTPS id 4jDZbb0594z7wyS;
	Tue, 27 Oct 2026 16:46:19 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at policy01-mors.netcup.net
X-Spam-Score: -2.898
X-Spam-Level: 
X-Spam-Status: No, score=-15.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
Received: from mxe9fb.netcup.net (unknown [10.243.12.53])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by policy01-mors.netcup.net (Postfix) with ESMTPS id 4jDZbY4ZVLz8tgg;
	Tue, 27 Oct 2026 16:46:17 +0100 (CET)
Received: from [IPV6:2a02:8108:8984:1d00:a0cf:1912:4be:477f] (unknown [IPv6:2a02:8108:8984:1d00:a0cf:1912:4be:477f])
	by mxe9fb.netcup.net (Postfix) with ESMTPSA id 63A4B5F9A9;
	Tue, 27 Oct 2026 16:46:12 +0100 (CET)
Authentication-Results: mxe9fb;
        spf=pass (sender IP is 2a02:8108:8984:1d00:a0cf:1912:4be:477f) smtp.mailfrom=regressions@leemhuis.info smtp.helo=[IPV6:2a02:8108:8984:1d00:a0cf:1912:4be:477f]
Received-SPF: pass (mxe9fb: connection is authenticated)
Message-ID: <f6a49cbb-e000-4dcf-8b3b-61c3b8d934a9@leemhuis.info>
Date: Tue, 27 Oct 2026 16:46:11 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] Revert "phy: qcom: qmp-pcie: Skip PHY reset if already
 up"
To: Michael Burch <me@michaelburch.net>, Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
 Qiang Yu <qiang.yu@oss.qualcomm.com>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Abel Vesa <abel.vesa@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Hans de Goede <johannes.goede@oss.qualcomm.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 regressions@lists.linux.dev
References: <20261013-qmp-pcie-skip-reset-revert-v1@michaelburch.net>
From: Thorsten Leemhuis <regressions@leemhuis.info>
Content-Language: de-DE, en-US
In-Reply-To: <20261013-qmp-pcie-skip-reset-revert-v1@michaelburch.net>
X-PPP-Message-ID: <179311597306.3027950.18122320877360707537@mxe9fb.netcup.net>
X-Rspamd-Server: rspamd-worker-8404
X-Rspamd-Queue-Id: 63A4B5F9A9
X-NC-CID: TK5HGlw3Xoaqm2/+aKVlhXK+Ovvd/LwoOIt8v2NblzjQxquySck=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_084626_367300_ED58AE50 
X-CRM114-Status: GOOD (  29.93  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 10/13/26 16:22, Michael Burch wrote:
> This reverts commit 910b828b22b7b91054b3bd4be676a017444b0e00.

What happened to this regression fix? Is this still needed? And if it
is: is this on the way to 7.4-rc1? Looks like it fell through the
cracks, but well, it's easy to miss something from the outside.

Ciao, Thorsten
> That commit skips the no-csr reset assert/deassert (and the 200-300us
> settle) whenever the bootloader already brought the PCIe QMP PHY up:
> 
>   skip_reset = qmp->skip_init &&
>                !qphy_checkbits(pcs, cfg->regs[QPHY_PCS_STATUS],
>                                cfg->phy_status);
> 
> and states its own assumption explicitly: "This relies on the assumption
> that when skip_init is enabled and the PHY is reported as up, the
> bootloader has already configured the PHY correctly and the link is in a
> usable state."
> 
> That assumption does not hold on the Dell XPS 13 9345 (X1E80100).  UEFI
> boots from the NVMe behind pcie6a, so the PHY is always already started
> when Linux takes over, skip_init is true, and the reset is skipped.  The
> link then never retrains and the root port comes up with no endpoint:
> 
>   qcom-pcie 1bf8000.pcie: Device found, but not active
>   pci 0006:00:00.0: [17cb:0111] type 01 class 0x060400 PCIe Root Port
>   (no 0006:01:00.0, no nvme at all)
> 
> "Device found, but not active" is dw_pcie_wait_for_link() reporting LTSSM
> stuck in POLL.Active/POLL.Compliance -- receiver detected, training never
> completes -- so the machine cannot find its root filesystem and drops to
> a dracut emergency shell.  v7.2 is unaffected because it always performed
> the reset.
> 
> The commit was applied on its own as patch 1/4 of "PCI: qcom: Add link
> retention support"; 2/4-4/4 have not landed. Without them,
> qcom_pcie_host_init() still asserts PERST# and resets the controller
> before qcom_pcie_phy_power_on(), so the link is down while
> QPHY_PCS_STATUS still reports the bootloader's state, and the skip's
> precondition never holds. Revert it until the rest of the series lands.
> 
> Fixes: 910b828b22b7 ("phy: qcom: qmp-pcie: Skip PHY reset if already up")
> Signed-off-by: Michael Burch <me@michaelburch.net>
> ---
> Reproduced today with Fedora's stock 7.3.0-0.rc7.58 kernel: the NVMe
> never enumerates and boot stops in dracut. It was first seen here on
> the stock 7.3.0-0.rc2 kernel. Every 7.3 build I have made with this
> revert finds the NVMe (Gen4 x4 link up); the latest are v7.3-rc6 based.
> Applying 2/4-4/4 of the original series on top of -rc2 also boots, but
> only with clk_ignore_unused here. This applies to v7.3-rc7 and to
> linux-phy fixes.
> 
> Qiang Yu's "PCI: qcom: Align PHY init sequence with HPG" carries the
> same skip into the new phy_ops::reset. I'm replying there separately.
> 
> #regzbot introduced: 910b828b22b7
> 
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 31 ++++++++----------------
>  1 file changed, 10 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index da83358c97ea..17c53ae62fac 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -5677,7 +5677,6 @@ static int qmp_pcie_init(struct phy *phy)
>  	struct qmp_pcie *qmp = phy_get_drvdata(phy);
>  	const struct qmp_phy_cfg *cfg = qmp->cfg;
>  	void __iomem *pcs = qmp->pcs;
> -	bool skip_reset;
>  	int ret;
>  
>  	/*
> @@ -5693,9 +5692,6 @@ static int qmp_pcie_init(struct phy *phy)
>  		qphy_checkbits(pcs, cfg->regs[QPHY_START_CTRL], SERDES_START | PCS_START) &&
>  		qphy_checkbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], cfg->pwrdn_ctrl);
>  
> -	skip_reset = qmp->skip_init && !qphy_checkbits(pcs, cfg->regs[QPHY_PCS_STATUS],
> -							    cfg->phy_status);
> -
>  	if (!qmp->skip_init && !cfg->tbls.serdes_num) {
>  		dev_err(qmp->dev, "Init sequence not available\n");
>  		return -ENODATA;
> @@ -5719,16 +5715,14 @@ static int qmp_pcie_init(struct phy *phy)
>  		}
>  	}
>  
> -	if (!skip_reset) {
> -		ret = reset_control_assert(qmp->nocsr_reset);
> -		if (ret) {
> -			dev_err(qmp->dev, "no-csr reset assert failed\n");
> -			goto err_assert_reset;
> -		}
> -
> -		usleep_range(200, 300);
> +	ret = reset_control_assert(qmp->nocsr_reset);
> +	if (ret) {
> +		dev_err(qmp->dev, "no-csr reset assert failed\n");
> +		goto err_assert_reset;
>  	}
>  
> +	usleep_range(200, 300);
> +
>  	if (!qmp->skip_init) {
>  		ret = reset_control_bulk_deassert(cfg->num_resets, qmp->resets);
>  		if (ret) {
> @@ -5777,11 +5771,8 @@ static int qmp_pcie_power_on(struct phy *phy)
>  	void __iomem *pcs = qmp->pcs;
>  	void __iomem *status;
>  	unsigned int mask, val;
> -	bool skip_reset;
>  	int ret;
>  
> -	skip_reset = qmp->skip_init && !qphy_checkbits(pcs, cfg->regs[QPHY_PCS_STATUS],
> -							    cfg->phy_status);
>  	/*
>  	 * Write CSR register for PHY that doesn't support no_csr reset or has not
>  	 * been initialized.
> @@ -5805,12 +5796,10 @@ static int qmp_pcie_power_on(struct phy *phy)
>  	if (ret)
>  		return ret;
>  
> -	if (!skip_reset) {
> -		ret = reset_control_deassert(qmp->nocsr_reset);
> -		if (ret) {
> -			dev_err(qmp->dev, "no-csr reset deassert failed\n");
> -			goto err_disable_pipe_clk;
> -		}
> +	ret = reset_control_deassert(qmp->nocsr_reset);
> +	if (ret) {
> +		dev_err(qmp->dev, "no-csr reset deassert failed\n");
> +		goto err_disable_pipe_clk;
>  	}
>  
>  	if (qmp->skip_init)
> 
> base-commit: 24a19b953e2a3d0ea5a8c4951a0ab8f32720c907


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
