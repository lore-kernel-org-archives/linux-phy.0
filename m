Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50755C44529
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jul 2026 13:32:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ucLWBLr6QIIXxuii2919VQdlnkg5tRtoIhx/11v4u/Q=; b=hMLJTKdnCd5OAK
	np3sPpyzKjN+3KGqabIsRDTOdgGZiYxgEv1o39EiXu81tXX7CKHHCLW78O3wJx2ELjquuePnSMmo8
	7kIJzEKmztu7WVqGTbDDCN09BejJPd6kjThqVvlgOXeYIG0l6PAYxdzFcJ7XUzutsXTlVrQ9jh0Kz
	cWxrAhvAocgYAFKlwazt7+HCQJaPi7VUyMrXYrgZ7ybAud/qr9aVInQi8dIUCFndl4DVKvgcvWmja
	OYKrrBhnkm7kRyBNE+3Prgu7/qkFbUrXHW2foGqwnX8DdTdSw+/dDAgiwQKYMEiH96IO+pBs7oHj5
	sjpN0eSKs0t7Heyu+C7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmAaQ-00000009Wro-2C9n;
	Tue, 21 Jul 2026 13:32:42 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmAaN-00000009Wr7-3iFu
	for linux-phy@lists.infradead.org;
	Tue, 21 Jul 2026 13:32:41 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66LDMI7D1793882
	for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 13:32:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=5Md4f0+Xv4Zzq0lKW9IFlBD6
	/JswUoehfefY9+RsgtE=; b=JaJVThjpyU69ta3k38IZFtMTax+h4LmfMZMZS8oS
	MsoagmjNzPjGX6BPOV7tUUbLx/A+S04E7W1a4FmhzZEkary9ywsqVJie0bU8E5OT
	ZF0xTC0+iHdT15sp86vKVK6zO8G4BGC3lBqSbjzzzIXsJx+/dunIS2gyFe1serHR
	Te1rvaK1iu8z2bDM4HkB2p0uHaxCRoUr4CvaoNpFgCbmhCOGDn5kR4wTLjgPvzQl
	L8B5lwQ+z7elnMF4DwrKrPTE4MjwevbMRBGelG2Yxnyg4UqkbxdNjT4ml+ICrdEn
	VHzhwaNXeOrokYDfxyXxJ01te4g4jUrEWOSIsuAeEUPa2A==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fj1se2ecy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 13:32:38 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-744c204396cso8623206137.2
        for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 06:32:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784640757; x=1785245557; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=5Md4f0+Xv4Zzq0lKW9IFlBD6/JswUoehfefY9+RsgtE=;
        b=LNda9wpbO8I2SpK2f9qLLI3QdRqVmzG0HX2pyq3QTjAyYvj26IiJW13idHHS3/o3M5
         oBSRpX3ety3q2aZxWmu6TOyIAjGsjg9pG6+JZth4WHejNR5aS3Nj1PzYof3/IbL+koDx
         umByFXv6gUK8STkhSZfac9Mr1ddnLMJoxbdAHkclLUbMlDCJ7b5ZA5mSZm1YxcDQCE8R
         My1Nanr2gkDetgrfCHpr8iKp0q2cTGo/zIRw1oObjW9xYTt7AfdySLRzUPE/+bAihAxp
         XAxS48Cvo2avpiU4tnAhN9xTVhw+gjbc7Y6TPDQF2AhWg/hnCSCh7nxuHlcCCswDnHsc
         vOIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784640757; x=1785245557;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=5Md4f0+Xv4Zzq0lKW9IFlBD6/JswUoehfefY9+RsgtE=;
        b=Cmny9db1bG/pI/m/Vig8SKlpc5cQTSqAwCiFN7I5/tjpXRxefsANbkYoVDBlr9Wpdy
         F8vpUYa151OVvSbpSYo8dpIPMScrOGp6TcU+LpS4P3cfx0yL5s1bVFs2oAS+saxjmYI4
         tueoeuGe7/pu2XpPeC5GIC3O3KieuclheInY/8dziBnkOgquOAv9uKWchuE0v8buy+kT
         vPFREQsHf+tptORYvHB2ZvTF9esNNVa43JEm+UEZwCpQiGNyP4I31KPB0UzZQ9iewLxl
         i+6rc5f4f1KqYO1rVmmM/2OoudUqEQ7XFRyUSlfEheThe+scAp5xlP4OZfmPjhdcR88k
         fYlA==
X-Forwarded-Encrypted: i=1; AHgh+RqN3P+ULNEMlCSCkmkFMtmTvRHBZ4Qzbd4GZpe8GBV80siOVfKUS1fYwRoGsuPCQ+wvRV5VXU0Hh+Y=@lists.infradead.org
X-Gm-Message-State: AOJu0YwwSogHOriKhshmMj1iZFSW5oLxayQ2GGOcgZ3jueYEMZlF8OZ2
	Ve6aGGzkQTnagQ3ujZw7MwCKwzu3VCi36J7ok2U5jMhA69+e7R56bicBlloYn8jGRCbHx5e2KCZ
	4fZ7wZLqVOYS3/dan35O9WBb8MdjsD+fxwlEpyc+KnOfUGEjFL2Hvf27GzzUG3OZKDxwE
X-Gm-Gg: AR+sD13RWhI0mFPqxnmVNQjLmX3BaHeIa2nKmnMko+lVvCQZDg/m/QK3ZtD2V7VAYSg
	vxzH+WAUBc6W+iD83mNuD1mV2AQvYElbU8SF1G8PeAFqfX4Ub71pCUN0Ta/+GemuQ2j+LyUkCWK
	y7wng2hzfvbkpE4gLeRN4G/ooIBA7NKiX2jG0SmLfs2O0DlyCrIcuEqwECXQh39nFRRexmtKgRM
	GURua3EGoV4UbRvU7xxnzzLvjyXwH3ZbZLyvbdVsbRJ1bVhAgcTkfDtsqiHcmNRsAcfmD3ckXl0
	cu4NSlQtNI2U81ADPUrH1ZercdNBatyhsUKyFe48IBPc4LFhSdyFd3AFszW4wGbmGixZV2iEo2f
	poBEQeO46tvUnuIxrQOCO6d37KDdfDhaSqAmedifc01oVqI9ZqRI+ZeFlingOhyj8qiIHYq8X5B
	79i933PSiEvnuuiw==
X-Received: by 2002:a05:6102:b0a:b0:73e:9fae:5845 with SMTP id ada2fe7eead31-747531315acmr6448933137.0.1784640756770;
        Tue, 21 Jul 2026 06:32:36 -0700 (PDT)
X-Received: by 2002:a05:6102:b0a:b0:73e:9fae:5845 with SMTP id ada2fe7eead31-747531315acmr6448891137.0.1784640755956;
        Tue, 21 Jul 2026 06:32:35 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b291da5938sm2972262e87.31.2026.07.21.06.32.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jul 2026 06:32:34 -0700 (PDT)
Date: Tue, 21 Jul 2026 16:32:31 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: Re: [PATCH v5 2/5] phy: qcom: qmp-usbc: Prevent unnecessary PM
 runtime suspend at boot
Message-ID: <4nd4f7bfliwumptfr2uykm4x5kyqd2gy7oputk7q57yu4g55df@4i5nzxl44i7p>
References: <20260721-qcom-usb-phy-fix-null-v5-0-a181e2adbd2d@oss.qualcomm.com>
 <20260721-qcom-usb-phy-fix-null-v5-2-a181e2adbd2d@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260721-qcom-usb-phy-fix-null-v5-2-a181e2adbd2d@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 5xF1xacJDg7O9E8wNTQd5NQZ_qAAx8Wy
X-Authority-Analysis: v=2.4 cv=TIZ1jVla c=1 sm=1 tr=0 ts=6a5f74f6 cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=JfrnYn6hAAAA:8
 a=EUspDBNiAAAA:8 a=X2BsbLyNcjRDPuEeZYgA:9 a=CjuIK1q_8ugA:10
 a=gYDTvv6II1OnSo0itH1n:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIxMDE0NCBTYWx0ZWRfX7YLH3AM/Axno
 jbN/MP36CKaMBV2UaAW66jmQIMDNzx4pEHD+jRAXwBlbQJ97UVu4z+Qc1VZub+COxogCqk4pemy
 uoiL2y4fG8t37trkVMmxPgIqEaNd9KU=
X-Proofpoint-GUID: 5xF1xacJDg7O9E8wNTQd5NQZ_qAAx8Wy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIxMDE0NCBTYWx0ZWRfXx6EmbZ7APX+f
 qMktI4Zcsy4EQ7l9CIWISkdCuw2RHJAtxrxnClMN7PujKePYfwgDaNTVW/FuvWbbvlQixrc07FE
 5orcbekG0Wrm8acbLeGkGAST7XJ9FNCWYxhUVCm3Ha70D7OrohLqbFI2TVfWJuR+CTOlu0WMz8L
 LMWpHGMjPqVvxwXujTa6hNLhRE5qFBWnF+OY6IuY9A5bzuoCmKHqSN93YMsUz0xM9JK+xJezWFV
 jn7IbZeqUfTu0PduNqgyueiynqwl61SF9JSA4DD/YTM0L8d2gq6vV1BE/ossWbgbq8S25aKjcg4
 dlWZ452DyxIXL5XSL7ikzsX6/OxcRnTrFhSxImuEbTzni2xnVgX/C3zzJ359/+8UHM5oI11Ka19
 RBgsKgT1A22dkRMgYCG0BK7B9G8A12OAD/qbFxAYytL5C7o1qb9HxJckgC2eLSfNxjWDHgXYZ+8
 1jVIUlc0O9p41cE7gDw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-21_02,2026-07-20_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 malwarescore=0 bulkscore=0 suspectscore=0 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607210144
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_063240_065562_478CAF81 
X-CRM114-Status: GOOD (  28.21  )
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

On Tue, Jul 21, 2026 at 03:05:46PM +0200, Loic Poulain wrote:
> Runtime PM has to be enabled before creating the PHYs, since phy_create()
> only enables runtime PM on the PHY devices if it is already enabled on
> this parent device. This opens a small window where the device can be
> runtime suspended after pm_runtime_enable() and before the later
> pm_runtime_forbid(), causing an unnecessary suspend/resume cycle while
> the PHYs are not yet registered.
> 
> Take a runtime PM usage reference with pm_runtime_get_noresume() before
> enabling runtime PM and release it once the PHYs have been created to
> prevent the device from being runtime suspended during that window.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 18 ++++++++++++++----
>  1 file changed, 14 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> index ab3055bb5b0c198832ae06dfcd04fd34395e271d..4317224070fd8dec98090e9200ac7d0e97265979 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> @@ -1959,10 +1959,16 @@ static int qmp_usbc_probe(struct platform_device *pdev)
>  	if (ret)
>  		goto err_node_put;
>  
> +	/*
> +	 * Enable runtime PM before creating the PHYs, phy_create() only enables
> +	 * it on the PHY devices if already enabled on the parent. Hold a usage
> +	 * reference so callbacks cannot run until the PHY is ready.
> +	 */
> +	pm_runtime_get_noresume(dev);
>  	pm_runtime_set_active(dev);
>  	ret = devm_pm_runtime_enable(dev);
>  	if (ret)
> -		goto err_node_put;
> +		goto err_pm_put;
>  	/*
>  	 * Prevent runtime pm from being ON by default. Users can enable
>  	 * it using power/control in sysfs.
> @@ -1971,13 +1977,13 @@ static int qmp_usbc_probe(struct platform_device *pdev)
>  
>  	ret = qmp_usbc_register_clocks(qmp, np);
>  	if (ret)
> -		goto err_node_put;
> +		goto err_pm_put;
>  
>  	qmp->usb_phy = devm_phy_create(dev, np, &qmp_usbc_usb_phy_ops);
>  	if (IS_ERR(qmp->usb_phy)) {
>  		ret = PTR_ERR(qmp->usb_phy);
>  		dev_err(dev, "failed to create PHY: %d\n", ret);
> -		goto err_node_put;
> +		goto err_pm_put;
>  	}
>  
>  	phy_set_drvdata(qmp->usb_phy, qmp);
> @@ -1987,17 +1993,21 @@ static int qmp_usbc_probe(struct platform_device *pdev)
>  		if (IS_ERR(qmp->dp_phy)) {
>  			ret = PTR_ERR(qmp->dp_phy);
>  			dev_err(dev, "failed to create PHY: %d\n", ret);
> -			goto err_node_put;
> +			goto err_pm_put;
>  		}
>  		phy_set_drvdata(qmp->dp_phy, qmp);
>  	}
>  
> +	pm_runtime_put(dev);

Should be _put_sync() ?

> +
>  	of_node_put(np);
>  
>  	phy_provider = devm_of_phy_provider_register(dev, qmp_usbc_phy_xlate);
>  
>  	return PTR_ERR_OR_ZERO(phy_provider);
>  
> +err_pm_put:
> +	pm_runtime_put_noidle(dev);

Why is it _noidle()?

>  err_node_put:
>  	of_node_put(np);
>  	return ret;
> 
> -- 
> 2.34.1
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
