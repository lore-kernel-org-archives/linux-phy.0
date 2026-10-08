Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B04DFCA6015
	for <linux-phy@archiver.kernel.org>; Thu,  8 Oct 2026 22:50:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iv9ZDjFimG1T062rzIFlWK43uOOl/i32CI04BZKap/A=; b=aU6ubMhD7IAasu
	ulIU4hP+YHZL6Avk7qSCzys9GUFE7ArOHyxP7/cAF8hkKAxaWkXuWhDPrj1o3b2NYxvsv1u1PRA/Z
	sVC8EQqcUHg9LiWCOD0Lby59MVvB1SkeovHMAJIxEb0Trxn8daMfSg+vGlTw2T+9WrPIc7z1D4J9N
	SjuCw88axdtMsPjb+SY/gIIwcwhzhyc2NbzYAy3T/Teq/38FhLeill19VR2ikfoI9UkzvLQmIwSqj
	3n9UZm2iPP7AOik8YItbVlHLXoV9ARVR+w8ZW9RUNTzoUuPSGg81HOP++7BSvp6o8hKHY9gUOLjUq
	Shd7IgfcuBSVWubZBhjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEwwg-000000058pV-0zec;
	Thu, 08 Oct 2026 22:50:38 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEwwe-000000058pN-0DWA
	for linux-phy@lists.infradead.org;
	Thu, 08 Oct 2026 22:50:37 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 7CA2C40C0A;
	Thu,  8 Oct 2026 22:50:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1E4C1F000FF;
	Thu,  8 Oct 2026 22:50:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791499835;
	bh=+7NYvexsY1Mja0UinOFt/bXxRiqJHlbpWvtEz6Zstx8=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=mK+YqSRn7fkjR4QPjex+l7Lt94hHh8q2w51vbrNTzrhNnmPJ90a/F83u5UMD+sWIo
	 LI/rTr5G8N2FKaJr+xrroEqQGy2cqejpZPMZEDGNxGc1wTI7OZDBxu5mHqptuJWUlp
	 y8SnGq4GKts7zS9FE1pUdh8M/OCEzx4CnUsWnPyE0HGt1sGtQuDfbr9sliQZmHnWaN
	 MUyt1J31RoLC7fHcmbElvKHAiX6x4K45kk6tdmzmApJlpb76VPvFuZVW/hy4bBkffK
	 kzWP50iW/MfKjweQtPWhwVLlWb89noryIZu645Pc7/9kHm7Dl5sL5bosIwqhTMMoAw
	 Dw3wrPrAdyU5Q==
MIME-Version: 1.0
Subject: Re: [PATCH v19 08/12] media: qcom: camss: vfe: Add support for VFE
 1080
From: bod@kernel.org
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Cc: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Loic Poulain <loic.poulain@oss.qualcomm.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>, 
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, jeyaprakash.soundrapandian@oss.qualcomm.com, 
 Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>, 
 Atiya Kailany <atiya.kailany@oss.qualcomm.com>
In-Reply-To: <20261008-kaanapali-camss-v19-8-b2c583ef50e0@oss.qualcomm.com>
References: <20261008-kaanapali-camss-v19-0-b2c583ef50e0@oss.qualcomm.com>
 <20261008-kaanapali-camss-v19-8-b2c583ef50e0@oss.qualcomm.com>
Date: Thu, 08 Oct 2026 23:50:27 +0100
Message-Id: <179149982796.2596899.756044515233442982.b4-reply@b4>
X-Mailer: b4 0.17-dev-e5aa4
X-Developer-Signature: v=1; a=openpgp-sha256; l=15114; i=bod@kernel.org;
 h=from:subject:message-id; bh=xAaecHgP6fGWXXN7TJu+cBHOZb1EYwBjtQtjQJELUAw=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqyB40XJWy3JAThkJGybqgcAXjv7YpzdL9X9AC+
 vpwbwAzoHOJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCasgeNAAKCRAicTuzoY3I
 OrLdEACIHf4u4fX8ym8SWrhHJdppcTdKQDP19aBoBYH8qNYKZKeobYEuwSeCqci8KotrYuS/Y/D
 UsoNTrrc8LK+6KBkv0eVmmoTniYNAgb57KlNsE4MgmnIstH16qyt8HsjpObk2hLA427OXhwmq48
 F62+CvGvDKIZG5j2L3Xc3/zf4uIeW8qL38p+StZZSV0rAiojmWtneAGzD2eDDs/eMCNwyUSR5dx
 DkvxeRU6qjGgZ7HTiaRoCB/1+9VKN21DO1+b6Flx//XtiiXUGNd6LC0vUciSbWq0Waf0s6nZleD
 sNw9UGyyFRhpb4KxV3Yt072yCbUYxhS/KRoo9e9cLEbskkYloTL/0CM7+0bpS9DUrVGryfb4Qmf
 IbO0pkfUtpoKjXjb9SGIU/hZiWBAUHB2qrfXL9Jf6dqzS0Sn5LKiogIw+PHWyvk0FyyYNx+YyiT
 dY572Or0wfGQmtgvGX6o+QOzfc9JOCs5PzRQ2Ou8UjIVI51PQsTgwdTR/wZ2OuRmWy2y71931zh
 kLhgofm+auJEN7OUmBSZHCD1PcV4Ckt8PK0mzGNLrY+oJyn2IFQg0uuZcZqqvHrsYY2Sg/RZPCx
 HurNAHU17jAFElI/7A63Prkbdue+tTbrfpCRJXG3MxUzqopkmA8YiEwZYCO3FqrLR6EdwtlOhWm
 5oQ4XLI461hHAWQ==
X-Developer-Key: i=bod@kernel.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
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

On 2026-10-08 00:14 -0700, Hangxiang Ma wrote:
> Add support for the VFE (Video Front End) 1080 found on Kaanapali SoC.
> 
> In the Kaanapali camera subsystem, the front-end blocks are referred to
> as TFEs (Thin Front Ends). This driver continues to use the VFE naming
> in some places to preserve consistency with the existing code and avoid
> unnecessary renaming. Support is currently limited to three output lines,
> matching the constraints of the CAMSS framework.
> 
> Kaanapali requires REG_UPDATE and AUP_UPDATE to be issued only after all
> CSID configuration has completed. In addition, the number of AUP_UPDATE
> requests must match the number of buffers queued to the write master
> while it is being enabled.
> 
> Although real-time TFE traffic is routed through RT_CAMNOC, both
> camnoc_rt_axi and camnoc_nrt_axi clocks must be enabled. This ensures
> that the PDX_NOC, which sits downstream of both RT and NRT NOCs, exits
> reset in a fully idle state.
> 
> Co-developed-by: Atiya Kailany <atiya.kailany@oss.qualcomm.com>
> Signed-off-by: Atiya Kailany <atiya.kailany@oss.qualcomm.com>
> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> ---
>  drivers/media/platform/qcom/camss/Makefile         |   1 +
>  drivers/media/platform/qcom/camss/camss-vfe-1080.c | 197 +++++++++++++++++++++
>  drivers/media/platform/qcom/camss/camss-vfe.c      |   9 +-
>  drivers/media/platform/qcom/camss/camss-vfe.h      |   2 +
>  drivers/media/platform/qcom/camss/camss.c          | 153 ++++++++++++++++
>  5 files changed, 360 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/media/platform/qcom/camss/Makefile b/drivers/media/platform/qcom/camss/Makefile
> index 218ba3a95939..42a14e8fe1b7 100644
> --- a/drivers/media/platform/qcom/camss/Makefile
> +++ b/drivers/media/platform/qcom/camss/Makefile
> @@ -26,6 +26,7 @@ qcom-camss-objs += \
>  		camss-vfe-340.o \
>  		camss-vfe-480.o \
>  		camss-vfe-680.o \
> +		camss-vfe-1080.o \

Can't say I'm 1000000% clear on when reg_update() is supposed to happen in
the flow of the logic you have here.

I'm a bit suspicious of adding a new flag which skips the update but
assumes some other bit of code executes later and does that update.

Can you explain this some more please.

>  		camss-vfe-gen1.o \
>  		camss-vfe-gen3.o \
>  		camss-vfe-vbif.o \
> diff --git a/drivers/media/platform/qcom/camss/camss-vfe-1080.c b/drivers/media/platform/qcom/camss/camss-vfe-1080.c
> new file mode 100644
> index 000000000000..016857cd1025
> --- /dev/null
> +++ b/drivers/media/platform/qcom/camss/camss-vfe-1080.c
> @@ -0,0 +1,197 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * camss-vfe-1080.c
> + *
> + * Qualcomm MSM Camera Subsystem - VFE (Video Front End) Module 1080
> + *
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +#include <linux/interrupt.h>
> +#include <linux/io.h>
> +#include <linux/iopoll.h>
> +
> +#include "camss.h"
> +#include "camss-vfe.h"
> +
> +/* VFE-1080 Bus Register Base Addresses */
> +#define BUS_REG_BASE				(vfe_is_lite(vfe) ? 0x800 : 0x1000)
> +
> +#define VFE_BUS_WM_CGC_OVERRIDE			(BUS_REG_BASE + 0x08)
> +#define		WM_CGC_OVERRIDE_ALL			(0x7FFFFFF)
> +
> +#define VFE_BUS_WM_TEST_BUS_CTRL		(BUS_REG_BASE + 0x128)
> +
> +#define VFE_BUS_WM_CFG(n)			(BUS_REG_BASE + 0x500 + (n) * 0x100)
> +#define		WM_CFG_EN				BIT(0)
> +#define		WM_VIR_FRM_EN				BIT(1)
> +#define		WM_CFG_MODE				BIT(16)
> +#define VFE_BUS_WM_IMAGE_ADDR(n)		(BUS_REG_BASE + 0x504 + (n) * 0x100)
> +#define VFE_BUS_WM_FRAME_INCR(n)		(BUS_REG_BASE + 0x508 + (n) * 0x100)
> +#define VFE_BUS_WM_IMAGE_CFG_0(n)		(BUS_REG_BASE + 0x50C + (n) * 0x100)
> +#define		WM_IMAGE_CFG_0_DEFAULT_WIDTH		(0xFFFF)
> +#define VFE_BUS_WM_IMAGE_CFG_2(n)		(BUS_REG_BASE + 0x514 + (n) * 0x100)
> +#define		WM_IMAGE_CFG_2_DEFAULT_STRIDE		(0xFFFF)
> +#define VFE_BUS_WM_PACKER_CFG(n)		(BUS_REG_BASE + 0x518 + (n) * 0x100)
> +
> +#define VFE_BUS_WM_IRQ_SUBSAMPLE_PERIOD(n)	(BUS_REG_BASE + 0x530 + (n) * 0x100)
> +#define VFE_BUS_WM_IRQ_SUBSAMPLE_PATTERN(n)	(BUS_REG_BASE + 0x534 + (n) * 0x100)
> +
> +/* VFE lite has no such registers */
> +#define VFE_BUS_WM_FRAMEDROP_PERIOD(n)		(BUS_REG_BASE + 0x538 + (n) * 0x100)
> +#define VFE_BUS_WM_FRAMEDROP_PATTERN(n)		(BUS_REG_BASE + 0x53C + (n) * 0x100)
> +
> +#define VFE_BUS_WM_MMU_PREFETCH_CFG(n)		(BUS_REG_BASE + 0x560 + (n) * 0x100)
> +#define VFE_BUS_WM_MMU_PREFETCH_MAX_OFFSET(n)	(BUS_REG_BASE + 0x564 + (n) * 0x100)
> +
> +/*
> + * IFE write master client IDs
> + *
> + * VIDEO_FULL			0
> + * VIDEO_DC4_Y			1
> + * VIDEO_DC4_C			2
> + * VIDEO_DC16_Y			3
> + * VIDEO_DC16_C			4
> + * DISPLAY_DS2_Y		5
> + * DISPLAY_DS2_C		6
> + * FD_Y				7
> + * FD_C				8
> + * PIXEL_RAW			9
> + * STATS_AEC_BG			10
> + * STATS_AEC_BHIST		11
> + * STATS_TINTLESS_BG		12
> + * STATS_AWB_BG			13
> + * STATS_AWB_BFW		14
> + * STATS_AF_BHIST		15
> + * STATS_ALSC_BG		16
> + * STATS_FLICKER_BAYERRS	17
> + * STATS_TMC_BHIST		18
> + * PDAF_0			19
> + * PDAF_1			20
> + * PDAF_2			21
> + * PDAF_3			22
> + * RDI0				23
> + * RDI1				24
> + * RDI2				25
> + * RDI3				26
> + * RDI4				27
> + *
> + * IFE Lite write master client IDs
> + *
> + * RDI0			0
> + * RDI1			1
> + * RDI2			2
> + * RDI3			3
> + * GAMMA		4
> + * STATES_BE		5
> + */
> +#define RDI_WM(n) ((vfe_is_lite(vfe) ? 0x0 : 0x17) + (n))
> +
> +static void vfe_wm_start(struct vfe_device *vfe, u8 wm, struct vfe_line *line)
> +{
> +	struct v4l2_pix_format_mplane *pix =
> +		&line->video_out.active_fmt.fmt.pix_mp;
> +
> +	wm = RDI_WM(wm);
> +
> +	/* no clock gating at bus input */
> +	writel(WM_CGC_OVERRIDE_ALL, vfe->base + VFE_BUS_WM_CGC_OVERRIDE);
> +
> +	writel(0x0, vfe->base + VFE_BUS_WM_TEST_BUS_CTRL);
> +
> +	writel(ALIGN(pix->plane_fmt[0].bytesperline, 16) * pix->height >> 8,
> +	       vfe->base + VFE_BUS_WM_FRAME_INCR(wm));
> +	writel((WM_IMAGE_CFG_0_DEFAULT_WIDTH & 0xFFFF),
> +	       vfe->base + VFE_BUS_WM_IMAGE_CFG_0(wm));
> +	writel(WM_IMAGE_CFG_2_DEFAULT_STRIDE,
> +	       vfe->base + VFE_BUS_WM_IMAGE_CFG_2(wm));
> +	writel(0, vfe->base + VFE_BUS_WM_PACKER_CFG(wm));
> +
> +	/* no dropped frames, one irq per frame */
> +	if (!vfe_is_lite(vfe)) {
> +		writel(0, vfe->base + VFE_BUS_WM_FRAMEDROP_PERIOD(wm));
> +		writel(1, vfe->base + VFE_BUS_WM_FRAMEDROP_PATTERN(wm));
> +	}
> +
> +	writel(0, vfe->base + VFE_BUS_WM_IRQ_SUBSAMPLE_PERIOD(wm));
> +	writel(1, vfe->base + VFE_BUS_WM_IRQ_SUBSAMPLE_PATTERN(wm));
> +
> +	writel(1, vfe->base + VFE_BUS_WM_MMU_PREFETCH_CFG(wm));
> +	writel(0xFFFFFFFF, vfe->base + VFE_BUS_WM_MMU_PREFETCH_MAX_OFFSET(wm));
> +
> +	writel(WM_CFG_EN | WM_CFG_MODE, vfe->base + VFE_BUS_WM_CFG(wm));
> +}
> +
> +static void vfe_wm_stop(struct vfe_device *vfe, u8 wm)
> +{
> +	wm = RDI_WM(wm);
> +	writel(0, vfe->base + VFE_BUS_WM_CFG(wm));
> +}
> +
> +static void vfe_wm_update(struct vfe_device *vfe, u8 wm, u32 addr,
> +			  struct vfe_line *line)
> +{
> +	wm = RDI_WM(wm);
> +	writel(addr >> 8, vfe->base + VFE_BUS_WM_IMAGE_ADDR(wm));
> +
> +	dev_dbg(vfe->camss->dev, "wm:%d, image buf addr:0x%x\n", wm, addr);
> +}
> +
> +static void vfe_reg_update(struct vfe_device *vfe, enum vfe_line_id line_id)
> +{
> +	int port_id = line_id;
> +
> +	camss_reg_update(vfe->camss, vfe->id, port_id, false);
> +}
> +
> +static inline void vfe_reg_update_clear(struct vfe_device *vfe,
> +					enum vfe_line_id line_id)
> +{
> +	int port_id = line_id;
> +
> +	camss_reg_update(vfe->camss, vfe->id, port_id, true);
> +}
> +
> +static const struct camss_video_ops vfe_video_ops_1080 = {
> +	.queue_buffer = vfe_queue_buffer_v2,
> +	.flush_buffers = vfe_flush_buffers,
> +};
> +
> +static void vfe_subdev_init(struct device *dev, struct vfe_device *vfe)
> +{
> +	vfe->video_ops = vfe_video_ops_1080;
> +}
> +
> +static void vfe_global_reset(struct vfe_device *vfe)
> +{
> +	vfe_isr_reset_ack(vfe);
> +}
> +
> +static irqreturn_t vfe_isr(int irq, void *dev)
> +{
> +	/* nop */
> +	return IRQ_HANDLED;
> +}
> +
> +static int vfe_halt(struct vfe_device *vfe)
> +{
> +	/* rely on vfe_disable_output() to stop the VFE */
> +	return 0;
> +}
> +
> +const struct vfe_hw_ops vfe_ops_1080 = {
> +	.global_reset = vfe_global_reset,
> +	.hw_version = vfe_hw_version,
> +	.isr = vfe_isr,
> +	.pm_domain_off = vfe_pm_domain_off,
> +	.pm_domain_on = vfe_pm_domain_on,
> +	.reg_update = vfe_reg_update,
> +	.reg_update_clear = vfe_reg_update_clear,
> +	.subdev_init = vfe_subdev_init,
> +	.vfe_disable = vfe_disable,
> +	.vfe_enable = vfe_enable_v2,
> +	.vfe_halt = vfe_halt,
> +	.vfe_wm_start = vfe_wm_start,
> +	.vfe_wm_stop = vfe_wm_stop,
> +	.vfe_buf_done = vfe_buf_done,
> +	.vfe_wm_update = vfe_wm_update,
> +};
> diff --git a/drivers/media/platform/qcom/camss/camss-vfe.c b/drivers/media/platform/qcom/camss/camss-vfe.c
> index 2680a9914765..3acef6ba97dc 100644
> --- a/drivers/media/platform/qcom/camss/camss-vfe.c
> +++ b/drivers/media/platform/qcom/camss/camss-vfe.c
> @@ -353,6 +353,7 @@ static u32 vfe_src_pad_code(struct vfe_line *line, u32 sink_code,
>  	case CAMSS_8550:
>  	case CAMSS_8650:
>  	case CAMSS_8775P:
> +	case CAMSS_KAANAPALI:
>  	case CAMSS_X1E80100:
>  		switch (sink_code) {
>  		case MEDIA_BUS_FMT_YUYV8_1X16:
> @@ -525,7 +526,8 @@ int vfe_enable_output_v2(struct vfe_line *line)
>  
>  	spin_lock_irqsave(&vfe->output_lock, flags);
>  
> -	ops->reg_update_clear(vfe, line->id);
> +	if (ops->reg_update_clear)
> +		ops->reg_update_clear(vfe, line->id);

What's this ? Modification to the VFE core for a callback you guys have - enumerated.

If this is to be treated as optional then, submit a patch justifying that
change as a standalone thing.
 
>  	if (output->state > VFE_OUTPUT_RESERVED) {
>  		dev_err(vfe->camss->dev,
> @@ -552,7 +554,9 @@ int vfe_enable_output_v2(struct vfe_line *line)
>  		output->gen2.active_num++;
>  		ops->vfe_wm_update(vfe, output->wm_idx[0],
>  				   output->buf[i]->addr[0], line);
> -		ops->reg_update(vfe, line->id);
> +
> +		if (!vfe->res->reg_update_after_csid_config)
> +			ops->reg_update(vfe, line->id);
>  	}
>  
>  	spin_unlock_irqrestore(&vfe->output_lock, flags);
> @@ -2013,6 +2017,7 @@ static int vfe_bpl_align_rdi(struct vfe_device *vfe)
>  	case CAMSS_8550:
>  	case CAMSS_8650:
>  	case CAMSS_8775P:
> +	case CAMSS_KAANAPALI:
>  	case CAMSS_X1E80100:
>  		ret = 16;
>  		break;
> diff --git a/drivers/media/platform/qcom/camss/camss-vfe.h b/drivers/media/platform/qcom/camss/camss-vfe.h
> index ae9dad353a37..118cac5daf37 100644
> --- a/drivers/media/platform/qcom/camss/camss-vfe.h
> +++ b/drivers/media/platform/qcom/camss/camss-vfe.h
> @@ -133,6 +133,7 @@ struct vfe_isr_ops {
>  
>  struct vfe_subdev_resources {
>  	bool is_lite;
> +	bool reg_update_after_csid_config;
>  	u8 line_num;
>  	bool has_pd;
>  	char *pd_name;
> @@ -248,6 +249,7 @@ extern const struct vfe_hw_ops vfe_ops_170;
>  extern const struct vfe_hw_ops vfe_ops_340;
>  extern const struct vfe_hw_ops vfe_ops_480;
>  extern const struct vfe_hw_ops vfe_ops_680;
> +extern const struct vfe_hw_ops vfe_ops_1080;
>  extern const struct vfe_hw_ops vfe_ops_gen3;
>  
>  int vfe_get(struct vfe_device *vfe);
> diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
> index 261e6c837dd4..5cd9641fea94 100644
> --- a/drivers/media/platform/qcom/camss/camss.c
> +++ b/drivers/media/platform/qcom/camss/camss.c
> @@ -156,6 +156,157 @@ static const struct camss_subdev_resources csid_res_kaanapali[] = {
>  	}
>  };
>  
> +/* In Kaanapali, CAMNOC requires all CPAS_TFEX clocks
> + * to operate on any TFE Full.
> + */
> +static const struct camss_subdev_resources vfe_res_kaanapali[] = {
> +	/* VFE0 - TFE Full */
> +	{
> +		.clock = { "gcc_axi_hf", "cpas_ahb", "cpas_fast_ahb",
> +			   "vfe0_fast_ahb", "vfe0",
> +			   "cpas_vfe0", "cpas_vfe1", "cpas_vfe2",
> +			   "camnoc_rt_axi", "camnoc_nrt_axi", "qdss_debug_xo" },
> +		.clock_rate = { { 0 },
> +				{ 0 },
> +				{ 0 },
> +				{ 0 },
> +				{ 360280000, 480000000, 630000000, 716000000,
> +				  833000000 },
> +				{ 0 },
> +				{ 0 },
> +				{ 0 },
> +				{ 200000000, 300000000, 400000000, 480000000 },
> +				{ 0 },
> +				{ 0 } },
> +		.reg = { "vfe0" },
> +		.interrupt = { "vfe0" },
> +		.vfe = {
> +			.line_num = 3,
> +			.is_lite = false,
> +			.reg_update_after_csid_config = true,
> +			.has_pd = true,
> +			.pd_name = "ife0",
> +			.hw_ops = &vfe_ops_1080,
> +			.formats_rdi = &vfe_formats_rdi_845,
> +			.formats_pix = &vfe_formats_pix_845
> +		}
> +	},
> +	/* VFE1 - TFE Full */
> +	{
> +		.clock = { "gcc_axi_hf", "cpas_ahb", "cpas_fast_ahb",
> +			   "vfe1_fast_ahb", "vfe1",
> +			   "cpas_vfe0", "cpas_vfe1", "cpas_vfe2",
> +			   "camnoc_rt_axi", "camnoc_nrt_axi", "qdss_debug_xo" },
> +		.clock_rate = { { 0 },
> +				{ 0 },
> +				{ 0 },
> +				{ 0 },
> +				{ 360280000, 480000000, 630000000, 716000000,
> +				  833000000 },
> +				{ 0 },
> +				{ 0 },
> +				{ 0 },
> +				{ 200000000, 300000000, 400000000, 480000000 },
> +				{ 0 },
> +				{ 0 } },
> +		.reg = { "vfe1" },
> +		.interrupt = { "vfe1" },
> +		.vfe = {
> +			.line_num = 3,
> +			.is_lite = false,
> +			.reg_update_after_csid_config = true,
> +			.has_pd = true,
> +			.pd_name = "ife1",
> +			.hw_ops = &vfe_ops_1080,
> +			.formats_rdi = &vfe_formats_rdi_845,
> +			.formats_pix = &vfe_formats_pix_845
> +		}
> +	},
> +	/* VFE2 - TFE Full */
> +	{
> +		.clock = { "gcc_axi_hf", "cpas_ahb", "cpas_fast_ahb",
> +			   "vfe2_fast_ahb", "vfe2",
> +			   "cpas_vfe0", "cpas_vfe1", "cpas_vfe2",
> +			   "camnoc_rt_axi", "camnoc_nrt_axi", "qdss_debug_xo" },
> +		.clock_rate = { { 0 },
> +				{ 0 },
> +				{ 0 },
> +				{ 0 },
> +				{ 360280000, 480000000, 630000000, 716000000,
> +				  833000000 },
> +				{ 0 },
> +				{ 0 },
> +				{ 0 },
> +				{ 200000000, 300000000, 400000000, 480000000 },
> +				{ 0 },
> +				{ 0 } },
> +		.reg = { "vfe2" },
> +		.interrupt = { "vfe2" },
> +		.vfe = {
> +			.line_num = 3,
> +			.is_lite = false,
> +			.reg_update_after_csid_config = true,
> +			.has_pd = true,
> +			.pd_name = "ife2",
> +			.hw_ops = &vfe_ops_1080,
> +			.formats_rdi = &vfe_formats_rdi_845,
> +			.formats_pix = &vfe_formats_pix_845
> +		}
> +	},
> +	/* VFE3 - IFE Lite */
> +	{
> +		.clock = { "gcc_axi_hf", "cpas_ahb", "cpas_fast_ahb",
> +			   "vfe_lite_ahb", "vfe_lite",
> +			   "cpas_vfe_lite", "camnoc_rt_axi",
> +			   "camnoc_nrt_axi", "qdss_debug_xo" },
> +		.clock_rate = { { 0 },
> +				{ 0 },
> +				{ 0 },
> +				{ 0 },
> +				{ 266666667, 400000000, 480000000 },
> +				{ 0 },
> +				{ 200000000, 300000000, 400000000, 480000000 },
> +				{ 0 },
> +				{ 0 } },
> +		.reg = { "vfe_lite0" },
> +		.interrupt = { "vfe_lite0" },
> +		.vfe = {
> +			.line_num = 3,

The line count on the lites looks wrong here.
---
bod


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
