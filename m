Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5472BC282EC
	for <linux-phy@archiver.kernel.org>; Tue, 18 Mar 2025 19:50:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cxpFl9g7+B4JFnWujF3Y5gjNmiBDYGYXB2/WeIxYsY4=; b=TxRQZAxEHR/jjJ
	p4wJBorjF4vRzKQc922yvoqPb1HJCT9KsFq0TfF4EA6e8sqmvEnCjGqBXXO/+hugduEKW/qszwEQb
	MX+M3RO88FcCn821tR/RPb/9ciPmnOPMhkSSmW+Q4nkfJH5u1rU/baGmv9bEg5b6WEDDU6L+gSbgd
	4LREkVnhnn80tyqVSadYFYt6ijaGbn9E1//4Uv6/Vu9MXjqLDtrYocK+7TaLc0HQDSp/XCbehyWeF
	sK9BL2siH3r5ob6tE1KbDeEn/6EH08sdMaIIwMrf/HRtINPTZKrmd//dCa+K5MZIN4lKGvCLHY/FO
	8q88g7yImsNFKqEdzpTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tucxH-00000006xOH-054A;
	Tue, 18 Mar 2025 19:50:27 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tucxF-00000006xO2-2PvY
	for linux-phy@lists.infradead.org;
	Tue, 18 Mar 2025 19:50:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id A3B5161559;
	Tue, 18 Mar 2025 19:50:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 286C5C4CEDD;
	Tue, 18 Mar 2025 19:50:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742327424;
	bh=6hdO58MKH0BNWV5qZxIKRDwcvWh3JUfmzbEUrW588jQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=M/uwAorbadYZhvpOulGkbKMAZnuLmRS39MAamq2u0wcbPOnOFChWEhfrO7qr3g4gz
	 31ztOikGwpRqeHy2VKAJvE17FZZV4uhsndRrdO1UWWzIe5QN5L3Sf2buNAAQTjlSuk
	 TPn/0QPLSEyfMBQlUy3ittCYTqhtnH1oypNE600II4ZWmFkolrotXsuepAju3t1+ad
	 j8YO6bXrshN9yM7Et4FaZ8S/piffKOn0VX6DMF04iWyryXNei/4+HlinblDYWFRfA6
	 Gz5CrcNmYp2ez7RHwn3Edv2SE4eus0CKyhcAaoaJaRH+IAPuXtcDRQoA+3nO6rsFN/
	 zL+BWGrp0kS3w==
Date: Tue, 18 Mar 2025 14:50:21 -0500
From: Bjorn Andersson <andersson@kernel.org>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org, 
	James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com, konrad.dybcio@oss.qualcomm.com, 
	quic_rdwivedi@quicinc.com, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org, Can Guo <quic_cang@quicinc.com>
Subject: Re: [PATCH V2 6/6] scsi: ufs: host : Introduce phy_power_on/off
 wrapper function
Message-ID: <jx6t2745x3swbfiqwsii5xdumhpanc435ooucrg2nlyl22llho@epleg24suedr>
References: <20250318144944.19749-1-quic_nitirawa@quicinc.com>
 <20250318144944.19749-7-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250318144944.19749-7-quic_nitirawa@quicinc.com>
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

On Tue, Mar 18, 2025 at 08:19:44PM +0530, Nitin Rawat wrote:
> Introduce ufs_qcom_phy_power_on and ufs_qcom_phy_power_off wrapper
> functions with mutex protection to ensure safe usage of is_phy_pwr_on
> and prevent possible race conditions.
> 

Please describe the problem properly here. Are you introducing the mutex
because there is a problem, or because you want to be "safe"?

Why is it "refcounted", is the calling code paths no longer in sync? How
long has the current implementation been broken?

Regards,
Bjorn

> Co-developed-by: Can Guo <quic_cang@quicinc.com>
> Signed-off-by: Can Guo <quic_cang@quicinc.com>
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> ---
>  drivers/ufs/host/ufs-qcom.c | 44 +++++++++++++++++++++++++++++++------
>  drivers/ufs/host/ufs-qcom.h |  4 ++++
>  2 files changed, 41 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/ufs/host/ufs-qcom.c b/drivers/ufs/host/ufs-qcom.c
> index 5c7b6c75d669..8f80724e64b9 100644
> --- a/drivers/ufs/host/ufs-qcom.c
> +++ b/drivers/ufs/host/ufs-qcom.c
> @@ -421,6 +421,38 @@ static u32 ufs_qcom_get_hs_gear(struct ufs_hba *hba)
>  	return UFS_HS_G3;
>  }
> 
> +static int ufs_qcom_phy_power_on(struct ufs_hba *hba)
> +{
> +	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
> +	struct phy *phy = host->generic_phy;
> +	int ret = 0;
> +
> +	guard(mutex)(&host->phy_mutex);
> +	if (!host->is_phy_pwr_on) {
> +		ret = phy_power_on(phy);
> +		if (!ret)
> +			host->is_phy_pwr_on = true;
> +	}
> +
> +	return ret;
> +}
> +
> +static int ufs_qcom_phy_power_off(struct ufs_hba *hba)
> +{
> +	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
> +	struct phy *phy = host->generic_phy;
> +	int ret = 0;
> +
> +	guard(mutex)(&host->phy_mutex);
> +	if (host->is_phy_pwr_on) {
> +		ret = phy_power_off(phy);
> +		if (!ret)
> +			host->is_phy_pwr_on = false;
> +	}
> +
> +	return ret;
> +}
> +
>  static int ufs_qcom_power_up_sequence(struct ufs_hba *hba)
>  {
>  	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
> @@ -449,7 +481,7 @@ static int ufs_qcom_power_up_sequence(struct ufs_hba *hba)
>  		return ret;
> 
>  	if (phy->power_count) {
> -		phy_power_off(phy);
> +		ufs_qcom_phy_power_off(hba);
>  		phy_exit(phy);
>  	}
> 
> @@ -466,7 +498,7 @@ static int ufs_qcom_power_up_sequence(struct ufs_hba *hba)
>  		goto out_disable_phy;
> 
>  	/* power on phy - start serdes and phy's power and clocks */
> -	ret = phy_power_on(phy);
> +	ret = ufs_qcom_phy_power_on(hba);
>  	if (ret) {
>  		dev_err(hba->dev, "%s: phy power on failed, ret = %d\n",
>  			__func__, ret);
> @@ -1017,7 +1049,6 @@ static int ufs_qcom_setup_clocks(struct ufs_hba *hba, bool on,
>  				 enum ufs_notify_change_status status)
>  {
>  	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
> -	struct phy *phy = host->generic_phy;
>  	int err;
> 
>  	/*
> @@ -1037,7 +1068,7 @@ static int ufs_qcom_setup_clocks(struct ufs_hba *hba, bool on,
>  				/* disable device ref_clk */
>  				ufs_qcom_dev_ref_clk_ctrl(host, false);
>  			}
> -			err = phy_power_off(phy);
> +			err = ufs_qcom_phy_power_off(hba);
>  			if (err) {
>  				dev_err(hba->dev, "phy power off failed, ret=%d\n", err);
>  					return err;
> @@ -1046,7 +1077,7 @@ static int ufs_qcom_setup_clocks(struct ufs_hba *hba, bool on,
>  		break;
>  	case POST_CHANGE:
>  		if (on) {
> -			err = phy_power_on(phy);
> +			err = ufs_qcom_phy_power_on(hba);
>  			if (err) {
>  				dev_err(hba->dev, "phy power on failed, ret = %d\n", err);
>  				return err;
> @@ -1233,10 +1264,9 @@ static int ufs_qcom_init(struct ufs_hba *hba)
>  static void ufs_qcom_exit(struct ufs_hba *hba)
>  {
>  	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
> -	struct phy *phy = host->generic_phy;
> 
>  	ufs_qcom_disable_lane_clks(host);
> -	phy_power_off(phy);
> +	ufs_qcom_phy_power_off(hba);
>  	phy_exit(host->generic_phy);
>  }
> 
> diff --git a/drivers/ufs/host/ufs-qcom.h b/drivers/ufs/host/ufs-qcom.h
> index d0e6ec9128e7..3db29fbcd40b 100644
> --- a/drivers/ufs/host/ufs-qcom.h
> +++ b/drivers/ufs/host/ufs-qcom.h
> @@ -252,6 +252,10 @@ struct ufs_qcom_host {
>  	u32 phy_gear;
> 
>  	bool esi_enabled;
> +	/* flag to check if phy is powered on */
> +	bool is_phy_pwr_on;
> +	/* Protect the usage of is_phy_pwr_on against racing */
> +	struct mutex phy_mutex;
>  };
> 
>  struct ufs_qcom_drvdata {
> --
> 2.48.1
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
