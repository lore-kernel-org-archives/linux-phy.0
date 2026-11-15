Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD059606A881
	for <linux-phy@archiver.kernel.org>; Sun, 15 Nov 2026 19:28:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=rwF3IFdj
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Aav5OoeOwLRhQGUx/MopVPv1eTjFD1YMQcmp1cMMeTU=; b=rwF3IFdj+mEXroz5jnIlfg49z4
	BkooNIF1NH71ZxmziHjwPMzrax31z762jk1D08r0rzHoimP3+2KjREfMz6Q9PqiE7wwr864Aiu6Yp
	KibzhE3VQoR8N+bTEUCaO35uNX8xSDwQBY9HuXIE9Lc4BIJmZcueD7JFbexpuUZsBI2pe+0Vanpll
	yhSE157RsbFObOeqovI9RlZ3CZBZKAKriqXGKhR+S1NAEhGkgm2WX5J983k7wGtYZWcv9iYXzjkr+
	mYYhXEMrWNdYptzymUxTOObDRHwikTiMModfUgLRcJuwzVqgVRibgW/KotA7qIAinJLNLDeK4kxiI
	WzWcwI1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSfth-00000000Nra-2kYs;
	Sun, 15 Nov 2026 19:28:17 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSftg-00000000NrU-2a3c
	for linux-phy@lists.infradead.org;
	Sun, 15 Nov 2026 19:28:16 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C8E6161848;
	Sun, 15 Nov 2026 19:28:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D29B1F000C4;
	Sun, 15 Nov 2026 19:28:10 +0000 (UTC)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v2 1/1] phy: qualcomm: m31-eusb2: Add register
 XCFGI_159_152 for SE0 recovery
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
To: Peter Chen <peter.chen@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Elson Serrao <elson.serrao@oss.qualcomm.com>, 
 Ronak Raheja <ronak.raheja@oss.qualcomm.com>, 
 Wesley Cheng <wesley.cheng@oss.qualcomm.com>, 
 Udipto Goswami <udipto.goswami@oss.qualcomm.com>, 
 Jack Pham <jack.pham@oss.qualcomm.com>, 
 Pratham Pratap <pratham.pratap@oss.qualcomm.com>, 
 Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20261027015545.2758784-1-peter.chen@oss.qualcomm.com>
References: <20261027015545.2758784-1-peter.chen@oss.qualcomm.com>
Date: Sun, 15 Nov 2026 11:28:07 -0800
Message-Id: <179477088797.132702.6764909412562148256.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2666;
 i=manivannan.sadhasivam@oss.qualcomm.com; h=from:subject:message-id;
 bh=CkVV2Z6n887sHlq0y6Nrzi6ogW1akCFY6515LpCrso8=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBq+gfKPwG9ryOEGXLeuMHwXxU0JzlEI+Op9xvr5
 o02zWKbG2mJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCavoHygAKCRBVnxHm/pHO
 9QiBB/9d1C+xOeJntv2ZEA4qL+U2A8rvd+Qi2LaeOrgEaGIBehuvRlFrcfPHZssTYRG5/F+8Iee
 6wIrplH/Z3ZZWtOOn6Gf/KshKcKRiZ30b7XPDQSB5sRFmy+TZMdlMYjrDl06cMFdtIkN0xNv6SF
 IkghtKBRGiE118GbO2J2cyCEzSJmXUqzWyiLxo1+aAvi6ScZYlRiO18XQihDkRwpzkyEoyGzFfM
 42jv6Ilu57qGbzBkw9P3UjQuIIjrnaXxwc8SNwdR7LdVhX82mYdUEKrl4iR8mdvZRoYwgtmsOZh
 zURmrMqkN8YbQH3BHK6EKFxvXS+7RVk/kfu/2OhkxUNVqi6E
X-Developer-Key: i=manivannan.sadhasivam@oss.qualcomm.com; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
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
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 2026-10-26 18:55 -0700, Peter Chen wrote:
> From: Elson Serrao <elson.serrao@oss.qualcomm.com>
> 
> This patch introduces support for the XCFGI_159_152 register to enable a

Avoid using 'This patch'. Once a patch gets merged, it will become a commit.

> hardware-based SE0 recovery mechanism in the M31 PHY when operating in
> host mode.
> 
> During PHY initialization, spurious pulses from external devices can
> interfere with speed negotiation, potentially leading to abnormal
> behavior. To mitigate this, the M31 PHY provides a fail-safe mechanism
> controlled by bit 159 of the XCFGI register.
> 
> When XCFG_SE0_TIMEOUT_EN (bit 159) is set, a hardware counter is
> activated to monitor the SE0 state. If SE0 persists for more than 2.5 ms
> before entering L0 mode, the PHY interprets this as bus inactivity and
> resets the state machine to its default state. After transitioning to
> L0, the PHY resumes normal operation in accordance with the eUSB
> specification.
> 

Please rewrite the commit message in imperative tone.

> Fixes: 9c8504861cc4 ("phy: qcom: Add M31 based eUSB2 PHY driver")
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Elson Serrao <elson.serrao@oss.qualcomm.com>
> Signed-off-by: Peter Chen <peter.chen@oss.qualcomm.com>
> ---
> Changes for v2:
> - Add Fixes and Reviewed-by tags
> - Link to v1: https://lore.kernel.org/all/20261020061811.3127511-1-peter.chen@oss.qualcomm.com/
> 
>  drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
> index 275df38256de..8d954e772585 100644
> --- a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
> +++ b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
> @@ -56,6 +56,9 @@
>  #define USB_PHY_XCFGI_7_0		(0x15c)
>  #define PLL_LOCK_TIME			GENMASK(1, 0)
>  
> +#define USB_PHY_XCFGI_159_152		(0x1a8)
> +#define SE0_TIMEOUT_EN			BIT(7)
> +
>  #define M31_EUSB_PHY_INIT_CFG(o, b, v)	\
>  {				\
>  	.off = o,		\
> @@ -88,6 +91,13 @@ static const struct m31_phy_tbl_entry m31_eusb2_setup_tbl[] = {
>  };
>  
>  static const struct m31_phy_tbl_entry m31_eusb_phy_override_tbl[] = {
> +	/*
> +	 * Set XCFGI[159] to enable SE0 timeout mechanism in M31.
> +	 * This enables a counter which will assume bus inactive if
> +	 * SE0 is more than 2.5ms and reset the state machine to default
> +	 * state.
> +	 */

Any reason on not making use of 80columns for comments?

With these fixed,

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>

- Mani


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
