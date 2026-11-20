Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD110606A326
	for <linux-phy@archiver.kernel.org>; Fri, 20 Nov 2026 15:07:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=H+CSoSlp;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.a=rsa-sha256 header.s=korg header.b=iqxN36ev
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=EJJHtdMofpNNysuGrdJWG85YRN5kXAdhdDCzWzhfKNQ=; b=H+CSoSlpFMNEQwmPevoiuXauu7
	eeq63ZpXoinSalA7SjosL8FYAv1wXlbNwWIhj+Fp5CKhrYSzrMYaDXtG5U3X6Lo5drKJZ2Cvpwc2P
	ptGmsBmFzY3ksWcSpj3EjNLx6TA1gLLqajbhIO1S0KYlDlGNtWl+nc4af9z0HmM9XooDFyBNwHFap
	SAWu2nLoBdaXrzuZ/do7fLFq+m4pQKSk8Xa+4/YEPrWwQMiDEbkOOYizfDNBiq/SLtPJGQlpwx/pV
	TCBhzG1KPYf94K/dlQn29VncxDGTS2ed/EvKV3wI23FgdlgwCGteXQcQa+mDXQQgHVOhNgbQaTA9+
	cvl6Il0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUQD3-0000000FMSl-0ooP;
	Fri, 20 Nov 2026 15:07:29 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUQD0-0000000FMS3-1f7c
	for linux-phy@lists.infradead.org;
	Fri, 20 Nov 2026 15:07:28 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 6EF8560FA0;
	Fri, 20 Nov 2026 15:07:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E38B81F000CF;
	Fri, 20 Nov 2026 15:07:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linuxfoundation.org;
	s=korg; t=1795187244;
	bh=apbOSjev7HKZm4LBe6IqAKdUKgP4Z7eK2DCBfu34NMM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=iqxN36evFfI+bIDlZv7napilDVpgOR4zkZpmTtD/6MZoePpmTlv8QTOxj44mVCI0y
	 yQJDlYU8tlfOcbtSC9N6p5udPIrtHNNtXMkF0JW8aLMRbCLJEW5v3J3IlH8UWibUco
	 1Qk0GOV6ZNMJMGOG1Jdhu5IlcOhObeWGCbAExlbQ=
Date: Fri, 20 Nov 2026 16:07:21 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Joonhoe Kim <26rote@gmail.com>
Cc: Thinh.Nguyen@synopsys.com, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
	heikki.krogerus@linux.intel.com, abel.vesa@oss.qualcomm.com,
	abelvesa@kernel.org, wesley.cheng@oss.qualcomm.com,
	krishna.kurapati@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
	dmitry.baryshkov@oss.qualcomm.com, neil.armstrong@linaro.org,
	val@packett.cool, balaji.kalkonda@oss.qualcomm.com,
	tvlad744@gmail.com, effeffe99@gmail.com,
	prashanth.k@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
	peter.chen@oss.qualcomm.com, tapas.rana@oss.qualcomm.com,
	vkoul@kernel.org, linux-phy@lists.infradead.org,
	linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/2] usb: dwc3: qcom: Use the UTMI clock as PIPE clock
 in DisplayPort-only modes
Message-ID: <2026112017-flyover-grape-cee7@gregkh>
References: <20261119124558.1548-1-26rote@gmail.com>
 <20261119124558.1548-3-26rote@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261119124558.1548-3-26rote@gmail.com>
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
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Thu, Nov 19, 2026 at 09:45:58PM +0900, Joonhoe Kim wrote:
> With DisplayPort pin assignment C or E the QMP USB3-DP combo PHY gives
> all four lanes to DisplayPort and powers its USB PCS down. The
> controller can still run USB 2.0, e.g. for the hub of a USB-C monitor.
> Keeping the pipe clock branch enabled, as commit f546912bcac6 ("phy:
> qcom: qmp-combo: Move pipe_clk on/off to common") does, is not enough on
> Kaanapali. The next xHCI reset in this mode times out ("Host halt
> failed, -110"), and USB stops working until the cable is replugged.
> 
> Register the glue as a Type-C mode switch when the node has the
> "mode-switch" property. Select the UTMI clock as PIPE clock in DP-only
> modes, as "qcom,select-utmi-as-pipe-clk" does statically.
> typec_mux_set() calls the switches in the order of the connector's
> ports. Port 0 (HS, the controller) comes before port 1 (SS, the PHY).
> So the controller switches before the PHY powers its USB side down.
> 
> The safe and USB states can come with the DisplayPort altmode, so only
> the modal states with the DisplayPort SVID count as DisplayPort. Pin
> assignment C or E always selects the UTMI clock. Go back to the PIPE
> clock when a USB state follows the safe state. A change from C/E to
> D/F while DisplayPort is active keeps the UTMI clock: the PHY may keep
> DP-only mode then, and the UTMI clock still runs USB 2.0 if it does
> not.
> 
> Read the selected clock back from QSCRATCH, as on some SoCs it loses
> its contents in system suspend.
> 
> The mux callback does not resume the glue. From the start of a
> runtime or system suspend until the core has resumed, the callback only
> records the state. The resume paths apply it before the core resumes,
> and again once the core has resumed or when the suspend fails.
> 
> The mux needs the Type-C class, so depend on TYPEC || TYPEC=n as
> PHY_QCOM_QMP_COMBO does, and do not register the mux without it. With
> the arm64 defconfig (TYPEC=m) this builds the glue, including
> dwc3-qcom-legacy, as a module.
> 
> Signed-off-by: Joonhoe Kim <26rote@gmail.com>
> ---
> v4:
> - mutex_lock()/mutex_unlock() where nothing returns early (Krzysztof)
> - Leave the probe code as it was apart from the new argument (Krzysztof)
> v3:
> - Rebase on Filippo Falezza's "usb: dwc3: qcom: Restore UTMI PIPE clock
>   on resume" and use its utmi_as_pipe_clk
> - Compare with the clock selected in QSCRATCH, not a cached value
> - Check the safe state before the altmode: the safe and USB states can
>   come with the DisplayPort altmode (Sashiko)
> - Always select the UTMI clock for pin assignment C or E (Sashiko)
> - Do not resume the glue from the mux callback. From the start of a
>   runtime or system suspend until the core has resumed, only record the
>   state; apply it before and after the core resumes, and when the
>   suspend fails (Sashiko)
> - Leave the clock select alone on nodes without a mux
> - Only record the state once remove has started
> v2:
> - Switch back to the PIPE clock from the mux callback, not on a role
>   change (Sashiko)
> - Keep dp_only while DisplayPort is active, as the PHY keeps its mode
> - Defer the clock switch to resume while suspended for system sleep
> - Depend on TYPEC || TYPEC=n, skip the mux without CONFIG_TYPEC (Sashiko)
> 
>  drivers/usb/dwc3/Kconfig     |   1 +
>  drivers/usb/dwc3/dwc3-qcom.c | 150 ++++++++++++++++++++++++++++++++---
>  2 files changed, 138 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/usb/dwc3/Kconfig b/drivers/usb/dwc3/Kconfig
> index 18169727a..282f366de 100644
> --- a/drivers/usb/dwc3/Kconfig
> +++ b/drivers/usb/dwc3/Kconfig
> @@ -132,6 +132,7 @@ config USB_DWC3_QCOM
>  	depends on ARCH_QCOM || COMPILE_TEST
>  	depends on EXTCON || !EXTCON
>  	depends on OF
> +	depends on TYPEC || TYPEC=n
>  	default USB_DWC3
>  	help
>  	  Some Qualcomm SoCs use DesignWare Core IP for USB2/3
> diff --git a/drivers/usb/dwc3/dwc3-qcom.c b/drivers/usb/dwc3/dwc3-qcom.c
> index f4ce035d4..d80c7ee39 100644
> --- a/drivers/usb/dwc3/dwc3-qcom.c
> +++ b/drivers/usb/dwc3/dwc3-qcom.c
> @@ -19,6 +19,9 @@
>  #include <linux/iopoll.h>
>  #include <linux/usb/hcd.h>
>  #include <linux/usb.h>
> +#include <linux/usb/typec_altmode.h>
> +#include <linux/usb/typec_dp.h>
> +#include <linux/usb/typec_mux.h>
>  #include "core.h"
>  #include "glue.h"
>  
> @@ -82,6 +85,13 @@ struct dwc3_qcom {
>  	bool			is_suspended;
>  	bool			pm_suspended;
>  	bool			utmi_as_pipe_clk;
> +	bool			dp_active;
> +	bool			dp_only;
> +	bool			mux_deferred;
> +	bool			mode_switch;
> +	/* protects dp_active, dp_only and mux_deferred */
> +	struct mutex		pipe_clk_lock;
> +	struct typec_mux_dev	*mux;
>  	struct icc_path		*icc_path_ddr;
>  	struct icc_path		*icc_path_apps;
>  
> @@ -336,16 +346,19 @@ static void dwc3_qcom_enable_interrupts(struct dwc3_qcom *qcom)
>  		dwc3_qcom_enable_port_interrupts(&qcom->ports[i]);
>  }
>  
> -static void dwc3_qcom_select_utmi_clk(struct dwc3_qcom *qcom)
> +static void dwc3_qcom_select_utmi_clk(struct dwc3_qcom *qcom, bool utmi)

What does that bool mean?  That's going to be a pain, please make this 2
functions so you know what is happening when you call it.


>  {
> -	/* Configure dwc3 to use UTMI clock as PIPE clock not present */
>  	dwc3_qcom_setbits(qcom->qscratch_base, QSCRATCH_GENERAL_CFG,
>  			  PIPE_UTMI_CLK_DIS);
>  
>  	usleep_range(100, 1000);
>  
> -	dwc3_qcom_setbits(qcom->qscratch_base, QSCRATCH_GENERAL_CFG,
> -			  PIPE_UTMI_CLK_SEL | PIPE3_PHYSTATUS_SW);
> +	if (utmi)
> +		dwc3_qcom_setbits(qcom->qscratch_base, QSCRATCH_GENERAL_CFG,
> +				  PIPE_UTMI_CLK_SEL | PIPE3_PHYSTATUS_SW);
> +	else
> +		dwc3_qcom_clrbits(qcom->qscratch_base, QSCRATCH_GENERAL_CFG,
> +				  PIPE_UTMI_CLK_SEL | PIPE3_PHYSTATUS_SW);
>  
>  	usleep_range(100, 1000);
>  
> @@ -353,6 +366,39 @@ static void dwc3_qcom_select_utmi_clk(struct dwc3_qcom *qcom)
>  			  PIPE_UTMI_CLK_DIS);
>  }
>  
> +static bool dwc3_qcom_utmi_clk_selected(struct dwc3_qcom *qcom)
> +{
> +	return readl(qcom->qscratch_base + QSCRATCH_GENERAL_CFG) &
> +	       PIPE_UTMI_CLK_SEL;
> +}
> +
> +static void dwc3_qcom_update_pipe_clk(struct dwc3_qcom *qcom)
> +{
> +	lockdep_assert_held(&qcom->pipe_clk_lock);
> +
> +	if (qcom->mode_switch && !qcom->utmi_as_pipe_clk &&
> +	    qcom->dp_only != dwc3_qcom_utmi_clk_selected(qcom))
> +		dwc3_qcom_select_utmi_clk(qcom, qcom->dp_only);
> +}
> +
> +static void dwc3_qcom_defer_mux(struct dwc3_qcom *qcom)
> +{
> +	mutex_lock(&qcom->pipe_clk_lock);
> +	qcom->mux_deferred = true;
> +	mutex_unlock(&qcom->pipe_clk_lock);
> +}
> +
> +static void dwc3_qcom_undefer_mux(struct dwc3_qcom *qcom)
> +{
> +	guard(mutex)(&qcom->pipe_clk_lock);
> +
> +	if (qcom->is_suspended)
> +		return;
> +
> +	qcom->mux_deferred = false;
> +	dwc3_qcom_update_pipe_clk(qcom);
> +}
> +
>  static int dwc3_qcom_suspend(struct dwc3_qcom *qcom, bool wakeup)
>  {
>  	u32 val;
> @@ -413,7 +459,11 @@ static int dwc3_qcom_resume(struct dwc3_qcom *qcom, bool wakeup)
>  	 * clock ("failed to enable ep0out").
>  	 */
>  	if (qcom->utmi_as_pipe_clk)
> -		dwc3_qcom_select_utmi_clk(qcom);
> +		dwc3_qcom_select_utmi_clk(qcom, true);
> +
> +	mutex_lock(&qcom->pipe_clk_lock);

Why no guard() use here?



> +	dwc3_qcom_update_pipe_clk(qcom);
> +	mutex_unlock(&qcom->pipe_clk_lock);
>  
>  	/* Clear existing events from PHY related to L2 in/out */
>  	for (i = 0; i < qcom->num_ports; i++) {
> @@ -446,6 +496,54 @@ static irqreturn_t qcom_dwc3_resume_irq(int irq, void *data)
>  	return IRQ_HANDLED;
>  }
>  
> +static int dwc3_qcom_mux_set(struct typec_mux_dev *mux,
> +			     struct typec_mux_state *state)
> +{
> +	struct dwc3_qcom *qcom = typec_mux_get_drvdata(mux);
> +	bool dp = state->mode >= TYPEC_STATE_MODAL && state->alt &&
> +		  state->alt->svid == USB_TYPEC_DP_SID;
> +
> +	mutex_lock(&qcom->pipe_clk_lock);

guard()?


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
