Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56A92C3ABC3
	for <linux-phy@archiver.kernel.org>; Fri,  9 May 2025 12:39:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=psShm1CHneX8EWaHEI7FMDF2GXEFUOQwA8has3On4ew=; b=Rr0mO5gbRJEYpd
	ym2QFtVB9VllxelAJdHyb8OckibrKbJ+SExgbySnvjQbt9CQyeAKk4pOzEmDv3HB/317hISrJC3eW
	TOYaOXbzDfjvGe1qOy4ljZef9WFroOqW4loK61vLvGEFJywLzV//m1AyssHC4b6fNHi+g2iiobmCr
	b6NVGTl6aWCK+Ac4gSoRb4ZGh5DJ+jk/SmHg5s/qc8VsAfd3I4bBntVIHc5zJec5f1vJ24Y7o46Jb
	LPuhG6yAdGsJtZloJRIYZYj2O63ZigcfbI6SjzfmwJRQqjyHHLo5VsLjKHJtGqcOVQR1QI+pt7VmJ
	BGE8wsiVKRljyS37pFpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDN0p-00000003cBE-3CMF;
	Fri, 09 May 2025 12:39:35 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDM1F-00000003RsF-3bR6
	for linux-phy@lists.infradead.org;
	Fri, 09 May 2025 11:35:59 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 549AmMSa002489
	for <linux-phy@lists.infradead.org>; Fri, 9 May 2025 11:35:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	clpGEQdwMWcHuVX1s2S+PQJLA4E0hBPTvMUFRssmFE4=; b=aAD2UEUjR0E5eUUc
	NtEkzdPATHCH3c90bsbbi4K5NgQftUd9kPGnopjSYTILXe1flpgQ/v0ieg7FHqZf
	G0cn7icUQiV8Jy6TzEM3nCs5aUz6AWV3wNXgit1O8deAK1dmq9c78Mu1SI/8zsNW
	p3aZEj2MwS8J5UDWtOVlC5nh38OEgFLMVwmevV9AEu/v0oVHJtLvhgQjc77439Xx
	l3Xq9SK/taKrJw8P8sFaVm20C9HKK/oThsATHMoe1o9uKQ3NT1dd93pJcKbaeshR
	Xq5lVFJ2CcXQr0GG3rFAK5v6906GY7UHzUxWyMZE+vPNtanuY8MACiiTtwk3CwCB
	B1Y1qQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46gnp5cfk7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 09 May 2025 11:35:56 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-49452798bd4so1595371cf.1
        for <linux-phy@lists.infradead.org>; Fri, 09 May 2025 04:35:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746790556; x=1747395356;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=clpGEQdwMWcHuVX1s2S+PQJLA4E0hBPTvMUFRssmFE4=;
        b=ma88ApCe7JsCxEBKagNEbWWGCBrCdcwGkc9rRxkg8nvvHzTNkkRbEIMPv/VVyrXJhb
         oLsBNK24YVLPv4GKYbd0FgyoKg4ldGk2ZPFpVz7vQMZPT1/KaF2+my6LCCx+ITScwwTu
         nsY/EESG27SJALLLPI2eicCynwYjDiY9twgj18KrrWJp5/IyeG3ZOwZ7cUhSfV2BDZwK
         9OhyCMfLUa6b5ZkX9u5rgRPkEpAkhhUljPXrQ7Mkv5MbrPBJsc25lUMMlShS00MVCVrX
         l1idXWZy1RaKYV/N76T5uEKbP2UIXix1z91hiQA+6G0xZw2B+SJw0RLUnHlFNfhxob0H
         99rA==
X-Forwarded-Encrypted: i=1; AJvYcCX3WmLvB5yOolWNGW0FQrkypVUdkgoYF5IPqteiUYt65MvWdwl+55QzGPx2ShJjQErP3P/VFhYu7EI=@lists.infradead.org
X-Gm-Message-State: AOJu0YwDfarxRf1j+xmYMu9tkGwPEoE/oHMc3bC1Jol39BN4zKOn7i5i
	Lt46qZmA9pIjesMeEjqccpM2LKhuy5ERnMG0o/2K0KrnYT1JMX1Et+EQ0bfTePWaegQYOMBWZxp
	95lwldn+o+Jt7DDeFwjJHCGE10U8Dh9j8uQ2vNC2qFzJDD+lnciWoZ4kFeNZyaDij
X-Gm-Gg: ASbGncvWTTNo2viUltMeykMTiCqN5/NU+pi44qqFdxGqX/3UEnG7BrqKMNqRb4sK+WP
	O+Z8eiLshPaOaqRwn2Kr078gc+16o1kg0NIO8hyujAXxey9YT0H1B825EfD9QyRXZDv//vX0u8Z
	MwWswIMwSt5VEBQDfbffrLvDKQqalniLQFCgje2eMugFh8W3Pjp8VyR48B1hqwgNaN7UC3U91Gk
	gF8np1TV6Wbh1yAODKE7POvXqY+HjLznpZR48pybZPMETxEExK3g2Y1dYAFhXmJWdW47UhndXo/
	q157ZoDt5voNLiI3hnL9DUmtyG2cvrBUi+o8/wNXOu12X5XS7YZUJpOzqxJKRhg704Y=
X-Received: by 2002:ac8:5f49:0:b0:474:e213:7480 with SMTP id d75a77b69052e-494527f40dcmr13254011cf.15.1746790555651;
        Fri, 09 May 2025 04:35:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEQrKt5+ENDzVyZIaPC6bM/I1w4UI11+gCCI1inxl4cHyjOu66kgARpVBcFs8jbdIp2WkVnDQ==
X-Received: by 2002:ac8:5f49:0:b0:474:e213:7480 with SMTP id d75a77b69052e-494527f40dcmr13253771cf.15.1746790555168;
        Fri, 09 May 2025 04:35:55 -0700 (PDT)
Received: from [192.168.65.105] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad21947b26bsm137062266b.86.2025.05.09.04.35.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 May 2025 04:35:54 -0700 (PDT)
Message-ID: <780d84ca-4004-41ef-a9ae-17532053f8a5@oss.qualcomm.com>
Date: Fri, 9 May 2025 13:35:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V4 09/11] scsi: ufs: qcom : Refactor phy_power_on/off
 calls
To: Nitin Rawat <quic_nitirawa@quicinc.com>, vkoul@kernel.org,
        kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
        bvanassche@acm.org, andersson@kernel.org, neil.armstrong@linaro.org
Cc: quic_rdwivedi@quicinc.com, quic_cang@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org
References: <20250503162440.2954-1-quic_nitirawa@quicinc.com>
 <20250503162440.2954-10-quic_nitirawa@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250503162440.2954-10-quic_nitirawa@quicinc.com>
X-Authority-Analysis: v=2.4 cv=XL0wSRhE c=1 sm=1 tr=0 ts=681de89c cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=ItZO8zVqQjmK9ylnveIA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: BWRtl2vo6KURZTQRfKcKqLq0EYjMcq7N
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA5MDExMiBTYWx0ZWRfX2aeNAlEMMxLC
 dCXngspKCq5Ok9YlVeY4zChfqi9w5AtcrkPYyDoP6xNz7EA4rB2MsY/fQ74LVJPtb5VM/HCkr8I
 ukCP18DYDmA0Rho7V/DXHV9T2lLdTqm9Ao3TuJwJDhuG5dUOCa0nRdII9nocaw2k3skpG+LtDda
 4VW/Ld+KNljJnnIHDyb9VAQSmbtFFmTCCuKJ3dVKa07YQHPh9Fbjm04LFSQ9K5zOFpkVnbbNatg
 RE82ZkvCMCthpfVAJwtMhmOdS9btRyQE1N7/43qmRULgh3yehao72Xg13jsBMgLKFAmfXcCJln8
 kx9U/4rlvtZ6r40u5YqZF6s1IwhvrFB+Ze3s5EKi4GS1RE6pBzpd0omUjEV3B5Rgom/ORZKxOI1
 w8dWg75auDLUflFy0FdPOuc4rDHTpMVQXh7+kOa5mxt6DdflJFLuahB1sn8TDxppEKg1UBUC
X-Proofpoint-ORIG-GUID: BWRtl2vo6KURZTQRfKcKqLq0EYjMcq7N
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-09_04,2025-05-08_04,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxscore=0 clxscore=1015 lowpriorityscore=0 suspectscore=0
 mlxlogscore=999 malwarescore=0 adultscore=0 priorityscore=1501 bulkscore=0
 spamscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505090112
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250509_043558_021741_AB118A75 
X-CRM114-Status: GOOD (  27.77  )
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

On 5/3/25 6:24 PM, Nitin Rawat wrote:
> Commit 3f6d1767b1a0 ("phy: ufs-qcom: Refactor all init steps into
> phy_poweron") removes the phy_power_on/off from ufs_qcom_setup_clocks
> to suspend/resume func.
> 
> To have a better power saving, remove the phy_power_on/off calls from
> resume/suspend path and put them back to ufs_qcom_setup_clocks, so that
> PHY regulators & clks can be turned on/off along with UFS's clocks.
> 
> Since phy phy_power_on is separated out from phy calibrate, make
> separate calls to phy_power_on and phy_calibrate calls from ufs qcom
> driver.
> 
> Co-developed-by: Can Guo <quic_cang@quicinc.com>
> Signed-off-by: Can Guo <quic_cang@quicinc.com>
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> ---
>  drivers/ufs/host/ufs-qcom.c | 55 ++++++++++++++++---------------------
>  1 file changed, 23 insertions(+), 32 deletions(-)
> 
> diff --git a/drivers/ufs/host/ufs-qcom.c b/drivers/ufs/host/ufs-qcom.c
> index 2cd44ee522b8..ff35cd15c72f 100644
> --- a/drivers/ufs/host/ufs-qcom.c
> +++ b/drivers/ufs/host/ufs-qcom.c
> @@ -639,26 +639,17 @@ static int ufs_qcom_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op,
>  	enum ufs_notify_change_status status)
>  {
>  	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
> -	struct phy *phy = host->generic_phy;
>  
>  	if (status == PRE_CHANGE)
>  		return 0;
>  
> -	if (ufs_qcom_is_link_off(hba)) {
> -		/*
> -		 * Disable the tx/rx lane symbol clocks before PHY is
> -		 * powered down as the PLL source should be disabled
> -		 * after downstream clocks are disabled.
> -		 */
> +	if (!ufs_qcom_is_link_active(hba))

so is_link_off and !is_link_active are not the same thing - this also allows
for disabling the resources when in hibern8/broken states - is that intended?

>  		ufs_qcom_disable_lane_clks(host);
> -		phy_power_off(phy);
>  
> -		/* reset the connected UFS device during power down */
> -		ufs_qcom_device_reset_ctrl(hba, true);
>  
> -	} else if (!ufs_qcom_is_link_active(hba)) {
> -		ufs_qcom_disable_lane_clks(host);
> -	}
> +	/* reset the connected UFS device during power down */
> +	if (ufs_qcom_is_link_off(hba) && host->device_reset)
> +		ufs_qcom_device_reset_ctrl(hba, true);

similarly this will not be allowed in hibern8/broken states now

>  
>  	return ufs_qcom_ice_suspend(host);
>  }
> @@ -666,26 +657,11 @@ static int ufs_qcom_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op,
>  static int ufs_qcom_resume(struct ufs_hba *hba, enum ufs_pm_op pm_op)
>  {
>  	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
> -	struct phy *phy = host->generic_phy;
>  	int err;
>  
> -	if (ufs_qcom_is_link_off(hba)) {
> -		err = phy_power_on(phy);
> -		if (err) {
> -			dev_err(hba->dev, "%s: failed PHY power on: %d\n",
> -				__func__, err);
> -			return err;
> -		}
> -
> -		err = ufs_qcom_enable_lane_clks(host);
> -		if (err)
> -			return err;
> -
> -	} else if (!ufs_qcom_is_link_active(hba)) {
> -		err = ufs_qcom_enable_lane_clks(host);
> -		if (err)
> -			return err;
> -	}
> +	err = ufs_qcom_enable_lane_clks(host);
> +	if (err)
> +		return err;
>  
>  	return ufs_qcom_ice_resume(host);
>  }
> @@ -1042,6 +1018,8 @@ static int ufs_qcom_setup_clocks(struct ufs_hba *hba, bool on,
>  				 enum ufs_notify_change_status status)
>  {
>  	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
> +	struct phy *phy = host->generic_phy;
> +	int err;
>  
>  	/*
>  	 * In case ufs_qcom_init() is not yet done, simply ignore.
> @@ -1060,10 +1038,22 @@ static int ufs_qcom_setup_clocks(struct ufs_hba *hba, bool on,
>  				/* disable device ref_clk */
>  				ufs_qcom_dev_ref_clk_ctrl(host, false);
>  			}
> +			err = phy_power_off(phy);

a newline to separate the blocks would improve readability> +			if (err) {
> +				dev_err(hba->dev, "%s: phy power off failed, ret=%d\n",
> +					__func__, err);
> +					return err;

please indent the return statement a tab earlier so it doesn't look
like it's an argument to dev_err()

putting PHY calls in the function that promises to toggle clocks could
also use a comment, maybe extending the kerneldoc to say that certain
clocks come from the PHY so it needs to be managed together

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
