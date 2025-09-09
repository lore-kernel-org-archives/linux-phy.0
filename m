Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF4A1CAC582
	for <linux-phy@archiver.kernel.org>; Tue,  9 Sep 2025 17:14:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XrGPlVzXnEf6VswqH9CIfE+Fxk7fAxvjvrsQ7zTA0fY=; b=g9ffnrU7CCRCl0
	Wv/ZxV9cMoYVxAIPH02VLmWFzkzbPOyZ8j0Uoejw+iHU1C5jzA7t8xAJg8ncBlym0nb7o6kuNuzY0
	rcbV0SBbOkHOPX2lMDd4gKuglhRTt7kIYVA2p95Fc8iPZvbpF4ET0MjMbQqTBZclQj26FpndHin//
	L+FoHWxsrAXZkKruL/kKV+E4jQF9zPIqTkR2PV3iZ/7KhHy9wnt0IJat4B7sZA80V+lWrm6PAufyj
	lxuUnRJU+M7UxGjqupcbRw0NH6BLr27s5UtGQB57RQG7NAQhJFyOhrH0LwkFyubUOKjv8N/Mix3Ls
	0v75TraUlya7I4XWhEAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw1vA-00000008mfP-1ln2;
	Tue, 09 Sep 2025 17:14:20 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvwHM-00000006ddK-1o81
	for linux-phy@lists.infradead.org;
	Tue, 09 Sep 2025 11:12:53 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5899M35U002332
	for <linux-phy@lists.infradead.org>; Tue, 9 Sep 2025 11:12:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=M9znp73XyVo8U1TpZOW4OBtp
	RYA4woIw+OLOhqqO3cQ=; b=FRKv1ZB87y1M/oF4ZEp1XPRLMZuxo8qzDytkd9dc
	/oz57l4HCdW/kVw5UOgKmTPh/Z0uAzsypvRAQHfCx2FhrztGBQ/WGG8xs/TdEhIL
	pBpwzMVgJCcVM76s+cjyLDAA8hmSK3byPu3rvKHNAp6qpSNrSZukvXaOlPu4eLUz
	/OMCVTxOn59h0IHU1ZPCEVmrbyNlZsHei/7e4lqvthxAFx81WCsPkWxheQCifoMp
	ik8DA8L4BUQvAVOu4a+UqeSBGLxRPJsosrQIP+yx5nK6WKJ49CPac4y+2XTI/YIa
	Un6x3T6wxnescOS3NIPh4vjmzeey/yWuFajqsNporbml/A==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490dqfyu51-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 09 Sep 2025 11:12:51 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-70fa9206690so110282676d6.0
        for <linux-phy@lists.infradead.org>; Tue, 09 Sep 2025 04:12:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757416370; x=1758021170;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M9znp73XyVo8U1TpZOW4OBtpRYA4woIw+OLOhqqO3cQ=;
        b=wmQ4iQogLSDqXTJsKfqaWCpEKQALg5wDbmK91+6ytKpRNIrX5Bfg99Js9KrobAvdU5
         ticemAyi9oScHppe7aPuw+nUdbAHhxPynF6VZfa0eswkRHJuN05W8O4kMZIj6QqI7cTL
         AYREbSfUFX9iSriKT6ZosqT7TDp2ztOR5K1s1/21wycGdKvmnmWJdoIBbUvTE6hrcKWe
         Y0SDsbZPJZNGjbx5eQvGPWmvhlJ5NghQnCh+4+pXwY3yUjYBmpQiERNDyBBV+Nh1aTer
         NMwkIq7n7zNc4Fx8vDYwP1UkLZdbl2Zgemnm0ss8rJNJEfAPJ8hwYgTtk462QOKZDqey
         Ngqg==
X-Forwarded-Encrypted: i=1; AJvYcCVn2LlpM/ZfncabfyfNE+Dynk3dIacfotMBODm88vIG6z8tJVxBSTrWKD48JOaiO5tZ/JZVN89KKpE=@lists.infradead.org
X-Gm-Message-State: AOJu0YzCx7vVA8epZxcBE5C8wx8N3Eqzg2Z7QcJTr2Nmr6Tnf1ZliPOx
	MOCYvLZzi4Gy1gQQkoqT6pEF29O+z3Dd6j484gBm+kBzsUS+C/vkLWDXpXuJfRPDkU2mKBNWshq
	cgvN4HGTcBJd1/okmG8yMD9xAKn90Ie/yYgOs8ryUa6+jOlBE28vlkUQ0ftuLoxQXZEUh
X-Gm-Gg: ASbGncupem+Ob5zIu8NeqNd4m1lzteLzD60jeH1snLPZgnqj0QK3b83pqauK6RR9+Ww
	/M9mzGkuVS7aKGCuB9IzUQgGX9Sm/GVMoZsPIbD8MrDrNRPFB9+t5+2IvHHdekzKfNjWH9Zmh/n
	nzKP5gn3vo3YaKGfbyVOWVyMQl6TplppD+1aqwSc57I5EkIdCAswgGWMGyZ/8gnuhG3UtPzEyNS
	B6ob531RINgzVTXz7Uf37fpijt8mWKmqTmWBWEkVr9AKbELFV83y/B4rnViBNW+KSUsJxuk6R6E
	+49JyXWTNsYMzEsNhR3cZ1IZzGV2UzVFAvH8V3lC7HAvTQbg6+4JcQyN9FmEVu+7r08l5MYzNUp
	5Af7QVbjXBarF9K/g9HaQHY09h3P6f4r15pnfPtV2HYO7tY0GWmbt
X-Received: by 2002:a05:6214:509b:b0:70d:bcf0:7c12 with SMTP id 6a1803df08f44-72bbf21116emr132264916d6.10.1757416369952;
        Tue, 09 Sep 2025 04:12:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFihv061/0IeKHM/2H1vKgpbFBruOQN320dQw48xcHjkKFPI/ERP986jbIwJuh5jmZLJF3Log==
X-Received: by 2002:a05:6214:509b:b0:70d:bcf0:7c12 with SMTP id 6a1803df08f44-72bbf21116emr132264416d6.10.1757416369335;
        Tue, 09 Sep 2025 04:12:49 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5681795eac6sm454789e87.92.2025.09.09.04.12.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 04:12:48 -0700 (PDT)
Date: Tue, 9 Sep 2025 14:12:46 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/3] phy: qcom: edp: Add Glymur platform support
Message-ID: <3bo2xr3jb3hrzsetjzd62dmcif2biizvoanxwtyhr2dmkb4g7x@dgrcvzujcwgq>
References: <20250909-phy-qcom-edp-add-glymur-support-v2-0-02553381e47d@linaro.org>
 <20250909-phy-qcom-edp-add-glymur-support-v2-3-02553381e47d@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250909-phy-qcom-edp-add-glymur-support-v2-3-02553381e47d@linaro.org>
X-Proofpoint-ORIG-GUID: ngHGYzkSFC7U7B6p67lJSGax10kGoiDP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzNSBTYWx0ZWRfX3J8ioK42spzI
 VeiF3JlGjF2zhFPNO8M1M/koIEnVDEi462p1PjDRvDtBiYXE3KvtDiAGUXDdNY2BsKWQP4qEJ2J
 e+o4h+7JRSWehFBr2CopaktaUElWXGXSDQKy2Is7mUcrwKDjqKXdnptQqv65ulUkNVFEnc6Y0rA
 m1ZCfqT8Uk6qekxqeWqYtL40N7TnHTJZ9/M7HuD7Hfn4CwWv5H5c1AkJTqWHkW37/R+bh5qftLI
 Z7ooS+C+CVG1+W8gRebDme9q0lrMCQurHhlzopBKilo/JPDPfBVLuGl7g4whj1o7rz0QXakrtcs
 vwQECrTPspoIjCaBdR3rwMB4zwoMPdszDsKccn7BtoU9sYA3diETBCo265B0fKdBrqorOeIU/nJ
 LGMOyy5f
X-Proofpoint-GUID: ngHGYzkSFC7U7B6p67lJSGax10kGoiDP
X-Authority-Analysis: v=2.4 cv=N8UpF39B c=1 sm=1 tr=0 ts=68c00bb3 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=r658mG_ugU-Z7oAIEg0A:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-09_01,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 malwarescore=0 clxscore=1015 bulkscore=0
 suspectscore=0 priorityscore=1501 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060035
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_041252_473192_4D35D507 
X-CRM114-Status: GOOD (  20.88  )
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

On Tue, Sep 09, 2025 at 01:07:28PM +0300, Abel Vesa wrote:
> The Qualcomm Glymur platform has the new v8 version
> of the eDP/DP PHY. So rework the driver to support this
> new version and add the platform specific configuration data.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 242 ++++++++++++++++++++++++++++++++++--
>  1 file changed, 235 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> index ca9bb9d70e29e1a132bd499fb9f74b5837acf45b..b670cda0fa066d3ff45c66b73cc67e165e55b79a 100644
> --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> @@ -26,13 +26,15 @@
>  #include "phy-qcom-qmp-qserdes-com-v4.h"
>  #include "phy-qcom-qmp-qserdes-com-v6.h"
>  
> +#include "phy-qcom-qmp-dp-qserdes-com-v8.h"
> +
>  /* EDP_PHY registers */
>  #define DP_PHY_CFG                              0x0010
>  #define DP_PHY_CFG_1                            0x0014
>  #define DP_PHY_PD_CTL                           0x001c
>  #define DP_PHY_MODE                             0x0020
>  
> -#define DP_AUX_CFG_SIZE                         10
> +#define DP_AUX_CFG_SIZE                         13

If it differs from platform to platform, do we need to continue defining
it?

Also, if the AUX CFG size has increased, didn't it cause other registers
to shift too?

>  #define DP_PHY_AUX_CFG(n)                       (0x24 + (0x04 * (n)))
>  
>  #define DP_PHY_AUX_INTERRUPT_MASK		0x0058
> @@ -76,6 +78,7 @@ struct phy_ver_ops {
>  	int (*com_power_on)(const struct qcom_edp *edp);
>  	int (*com_resetsm_cntrl)(const struct qcom_edp *edp);
>  	int (*com_bias_en_clkbuflr)(const struct qcom_edp *edp);
> +	int (*com_clk_fwd_cfg)(const struct qcom_edp *edp);
>  	int (*com_configure_pll)(const struct qcom_edp *edp);
>  	int (*com_configure_ssc)(const struct qcom_edp *edp);
>  };

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
