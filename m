Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64410C32793
	for <linux-phy@archiver.kernel.org>; Wed, 24 Aug 2022 01:08:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OYk+xN9son0rGCLUWmE2vxdCd4neyLSQFdb7rFcI5dE=; b=yfe0SeFZosyNIx
	93gYIEmKkOVEoaGL/hPV3k01xUMK+dLZYgq1XA5H+0eab3jStjWAl9SdF0r9bkI2Kkbcsv8wTNiae
	+e9JOfzoLH9r52zQTz1pBm1hj7uN2obnX2f6OTimvAW9bwQrJ27roRA5hAVgSp0G0UCeO4g0R5vyA
	VEIzR7dZkaGPS1FxjE0Emb1AqclPd/KU/Kv1+6kz+CH/A4wsd2MLlvVCEdVkdXk5oqCkkr8/Dd0aU
	YvbZIZGLXbrn7hFHo+qS61xE6ZGR/HC4cHczh277JgzVot67FrMB7B0jeI4cop7ZSy46SboXPiDr0
	rRpNE5MLHb5fX3XguUtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQesx-009iIx-Kh; Wed, 24 Aug 2022 01:08:47 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQesv-009iHg-64
	for linux-phy@lists.infradead.org; Wed, 24 Aug 2022 01:08:46 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 27NNMrgB012726;
	Wed, 24 Aug 2022 01:08:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=ju8dreiFKv/nF4Pg7D54M/P9AU5w7rPzGS86cxTfih8=;
 b=aEQSPedbk/cpZ2HypBdJ4M9AXlc/MITgp5nZfOxIHRKrjvwbpZqEwYIIElELUHDCETp9
 6mUtcrJJp66hK3OdLaPXKissmS6V23b+viHRdZHrKmmF+FRf4ByYv+xPSdLZmiVEMiGo
 gjJX87xbE3pHsXwqq2njUjScNvtSLxSREsjmF9ZrgA+aEDPWI80TbpPzJlVjMbTNVVQG
 F+9BS9esPfK1ZPkPJ1F8MkeRpZ0OWLF2pp0kFSevHb/wRpgFz9/3PbYkqvMVSackiHQg
 w41BEj9nh3e2rFiVI8Y0KUMnfpKaq1w9m/ZnL8HYzPEeT49VvkocEAihnNTJ/VcsmCw8 9w== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3j52pk9ck8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 24 Aug 2022 01:08:28 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 27O18SKM000468
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 24 Aug 2022 01:08:28 GMT
Received: from [10.111.161.24] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.29; Tue, 23 Aug
 2022 18:08:25 -0700
Message-ID: <31faa17e-b521-9f83-2701-12bf8fd76e4b@quicinc.com>
Date: Tue, 23 Aug 2022 18:08:23 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: [PATCH v3 2/3] drm/msm/hdmi: make hdmi_phy_8996 OF clk provider
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross
	<agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Clark
	<robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Rob Herring
	<robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
CC: Stephen Boyd <swboyd@chromium.org>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, <linux-arm-msm@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
        <freedreno@lists.freedesktop.org>,
        Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
        <linux-phy@lists.infradead.org>
References: <20220704161148.814510-1-dmitry.baryshkov@linaro.org>
 <20220704161148.814510-3-dmitry.baryshkov@linaro.org>
From: Abhinav Kumar <quic_abhinavk@quicinc.com>
In-Reply-To: <20220704161148.814510-3-dmitry.baryshkov@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: VdkGr2Ow7ViAMVnUT2LLdGJVNYnO4IOO
X-Proofpoint-ORIG-GUID: VdkGr2Ow7ViAMVnUT2LLdGJVNYnO4IOO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-08-23_10,2022-08-22_02,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011
 lowpriorityscore=0 adultscore=0 priorityscore=1501 malwarescore=0
 bulkscore=0 phishscore=0 impostorscore=0 mlxlogscore=999 spamscore=0
 suspectscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2207270000 definitions=main-2208240001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220823_180845_288694_ACA6E713 
X-CRM114-Status: GOOD (  24.38  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



On 7/4/2022 9:11 AM, Dmitry Baryshkov wrote:
> On MSM8996 the HDMI PHY provides the PLL clock to the MMCC. As we are
> preparing to convert the MSM8996 to use DT clocks properties (rather
> than global clock names), register the OF clock provider.
> 
> While we are at it, also change the driver to use clk_parent_data rather
> parent_names to setup a link to the XO clock.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
> ---
>   drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c | 25 +++++++++++++-----------
>   1 file changed, 14 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c b/drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c
> index b06d9d25a189..4dd055416620 100644
> --- a/drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c
> +++ b/drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c
> @@ -691,15 +691,13 @@ static const struct clk_ops hdmi_8996_pll_ops = {
>   	.is_enabled = hdmi_8996_pll_is_enabled,
>   };
>   
> -static const char * const hdmi_pll_parents[] = {
> -	"xo",
> -};
> -
>   static const struct clk_init_data pll_init = {
>   	.name = "hdmipll",
>   	.ops = &hdmi_8996_pll_ops,
> -	.parent_names = hdmi_pll_parents,
> -	.num_parents = ARRAY_SIZE(hdmi_pll_parents),
> +	.parent_data = (const struct clk_parent_data[]){
> +		{ .fw_name = "xo", .name = "xo_board" },
> +	},
> +	.num_parents = 1,
>   	.flags = CLK_IGNORE_UNUSED,
>   };
>   
> @@ -707,8 +705,7 @@ int msm_hdmi_pll_8996_init(struct platform_device *pdev)
>   {
>   	struct device *dev = &pdev->dev;
>   	struct hdmi_pll_8996 *pll;
> -	struct clk *clk;
> -	int i;
> +	int i, ret;
>   
>   	pll = devm_kzalloc(dev, sizeof(*pll), GFP_KERNEL);
>   	if (!pll)
> @@ -735,10 +732,16 @@ int msm_hdmi_pll_8996_init(struct platform_device *pdev)
>   	}
>   	pll->clk_hw.init = &pll_init;
>   
> -	clk = devm_clk_register(dev, &pll->clk_hw);
> -	if (IS_ERR(clk)) {
> +	ret = devm_clk_hw_register(dev, &pll->clk_hw);
> +	if (ret) {
>   		DRM_DEV_ERROR(dev, "failed to register pll clock\n");
> -		return -EINVAL;
> +		return ret;
> +	}
> +
> +	ret = devm_of_clk_add_hw_provider(dev, of_clk_hw_simple_get, &pll->clk_hw);
> +	if (ret) {
> +		DRM_DEV_ERROR(dev, "%s: failed to register clk provider: %d\n", __func__, ret);
> +		return ret;
>   	}
>   
>   	return 0;

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
