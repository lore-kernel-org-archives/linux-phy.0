Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13A26C7EE2A
	for <linux-phy@archiver.kernel.org>; Fri, 12 May 2023 09:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mSlJUcVg2ckodBZQrvLFLnWECxaWZ3h6xgGgMKsM+zE=; b=bModNzp0RHQAfT
	mCd/uuYVfu3+qaMvuPsCO9fVErdQ5/oT2bGMwE7jyMjuM1x7PK+jNmJRFHRVI7Nxo2kmBp6BVY8Y0
	VKYDt90jSOb1M01p3fHNOAga2y1h47X61psedvZDlJs7T1KNZid0EO6QgwIbVdHMGhYqXyVAC1Ibu
	aAasCyuOU53CbFLRle5Nrc+WoZqi970JSCo60B1F1wxoNTx8fkEyoZsIlNot209sFrOtMd6SJ3Pcc
	1ZoCYhCYiP61gN9jb1go9PJAT97AX493VTKfF60vDEyjRbaxLCLniYeLaMqwBncG3iui+agSjUa4Z
	S0rtMgoyqCnaFY9mue0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxOyV-00BRfh-2N;
	Fri, 12 May 2023 09:22:07 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxOyS-00BReM-04
	for linux-phy@lists.infradead.org;
	Fri, 12 May 2023 09:22:05 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id C477D6543B;
	Fri, 12 May 2023 09:22:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E743FC433EF;
	Fri, 12 May 2023 09:22:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683883322;
	bh=R04Are6haFhQwucOhj2F4qhuwwMNUbEeyjwYPt/f22M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=shRIZB9hp7oiDFvvFrhaDsw6O4deS791uNEke8YVMdPgxCCG6xXZUAChxhB82JK93
	 8yOdKwvT50V103s1samccfrt0zVl0Jx4vaJS+hyoGvSOf3F34yOPQRAlRrDiZHTHoA
	 Th6Q7xMOYDOLDgTOeZcz6NA1NLyA4uFP+x6x4HzsCxowh63GMRogBg9zx/eo0OaZSQ
	 byqe1ERrbksuMII2dy662LCvCrUUFQjeqeSsDEpBO9rEFSU6ymjOyoMtLvqY8r9spU
	 Cy8OGlthwwI9UOa3Xjuk3XhuJNw0YtkrNAR0mHVa6z6IxASDqEoxYdby3smB1yIqtN
	 ZZc/eNTYnkNxw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1pxOyq-0002uv-HM; Fri, 12 May 2023 11:22:29 +0200
Date: Fri, 12 May 2023 11:22:28 +0200
From: Johan Hovold <johan@kernel.org>
To: Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Abel Vesa <abel.vesa@linaro.org>,
	Steev Klimaszewski <steev@kali.org>,
	Johan Hovold <johan+linaro@kernel.org>
Subject: Re: [PATCH v2 4/8] phy: qcom-qmp-combo: Introduce orientation
 variable
Message-ID: <ZF4FVBcnWlvKF_DP@hovoldconsulting.com>
References: <20230510031930.1996020-1-quic_bjorande@quicinc.com>
 <20230510031930.1996020-5-quic_bjorande@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230510031930.1996020-5-quic_bjorande@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_022204_162946_359EA0EF 
X-CRM114-Status: GOOD (  16.82  )
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

On Tue, May 09, 2023 at 08:19:26PM -0700, Bjorn Andersson wrote:
> In multiple places throughout the driver code has been written in
> prepration for handling of orientation switching.
> 
> Introduce a typec_orientation in qmp_combo and fill out the various
> "placeholders" with the associated logic. By initializing the
> orientation to "normal" this change has no functional impact, but
> reduces the size of the upcoming introduction of dynamic orientation
> switching.
> 
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
> Tested-by: Abel Vesa <abel.vesa@linaro.org>
> Tested-by: Steev Klimaszewski <steev@kali.org>
> Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on HDK8450
> Tested-by: Johan Hovold <johan+linaro@kernel.org>	# X13s
> ---
> 
> Changes since v1:
> - X-mas in qmp_combo_configure_dp_mode()
> 
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 54 +++++++++++++----------
>  1 file changed, 30 insertions(+), 24 deletions(-)
 
>  static bool qmp_combo_configure_dp_mode(struct qmp_combo *qmp)
>  {
> +	bool reverse = qmp->orientation == TYPEC_ORIENTATION_REVERSE;

Nit: I still think parentheses around the right-hand side would improve
readability.

> +	const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
>  	u32 val;
> -	bool reverse = false;

> @@ -2235,7 +2236,7 @@ static int qmp_v4_configure_dp_phy(struct qmp_combo *qmp)
>  {
>  	const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
>  	u32 bias0_en, drvr0_en, bias1_en, drvr1_en;
> -	bool reverse = false;
> +	bool reverse = qmp->orientation == TYPEC_ORIENTATION_REVERSE;

Same here and below.

And maintaining reverse xmas style throughout the driver would be nice
for consistency too.

>  	u32 status;
>  	int ret;

Looks good otherwise:

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
