Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29357C27C40
	for <linux-phy@archiver.kernel.org>; Thu, 24 Aug 2023 11:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kiODVtPgmLJ1pniEmdql6o19A1kEm67++rz7UfscnRU=; b=MryojHODHocFeP
	4aUENApNAzFBHKhIJGSdLZlV+hh6IvSXm4JqUdsuy1bzf6+cmP0VNELX8rUQt/msZRFimLc9b9fDU
	lrW8Q3/3Kq8HoGoVPt4vnrngK77ayOgLjWkAdpBOzvCyNutv4DJZBMM8HTnZvMaKJZocRc15K4d3M
	SYYA0OaoQVDCy8WPr9miV9aDz9tQQd6getpBBXVPK8rzcrppV4lg2bEUdRi8s2QStn4gmaOs/JCNS
	6S/JCcAiy1JmO15kYkpLaV696QWHslbxucft58xu4R2dLvNqoYMYo8s4uOCo5VpDa0dLNMiemitZt
	sgq1X1f0WPzXOEMJZfCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZ8aB-002ymA-2L;
	Thu, 24 Aug 2023 11:32:59 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZ8a8-002ylh-10
	for linux-phy@lists.infradead.org;
	Thu, 24 Aug 2023 11:32:57 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 37OAnRNl022037;
	Thu, 24 Aug 2023 11:32:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=date : from : to :
 cc : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=qcppdkim1; bh=0QaVNxjiNjG5EwCHQtuXcZmwx/t3Lh1mN2Puh1m1cWQ=;
 b=JajH69YDqWA8s8fHQbhTOtiNoaRd46lbpqVJfF0nkca+o024MFOszUATl24NTxhKtpQK
 91vkb2gkmxZ6W7wcJrKfVRGj5B4yC8v5lbPR5ZtO7v+HXHfH7/Ri/c/N7awMVVxX4V7x
 khm4JUwvIP4eAdW0BkLKSZohdtevriBYAaVf59QxQ8Ye5US4SzOdz5QXl74BoLskoY4z
 3621fjkr/TjC1Vm6YxdNMHttxCyegrfCqU4A53mLIp9j9eStD75k1azGh9i16+8cADrU
 o+5ge32mqQ2RSqtP1YrdOKUVVh/Iyy+HvwHLAkeDvRhcFD+JrK9UvoQXQJX1R3Agz0i1 rA== 
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3snxtarxqp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 24 Aug 2023 11:32:47 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 37OBWkem005617
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 24 Aug 2023 11:32:46 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.36; Thu, 24 Aug 2023 04:32:44 -0700
Date: Thu, 24 Aug 2023 17:02:40 +0530
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: Yang Yingliang <yangyingliang@huawei.com>
CC: <linux-phy@lists.infradead.org>, <linux-arm-msm@vger.kernel.org>,
        <andersson@kernel.org>, <vkoul@kernel.org>
Subject: Re: [PATCH -next] phy: qcom: phy-qcom-m31: fix wrong pointer pass to
 PTR_ERR()
Message-ID: <20230824113240.GB15057@varda-linux.qualcomm.com>
References: <20230824091345.1072650-1-yangyingliang@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230824091345.1072650-1-yangyingliang@huawei.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: 8RT5FMWAcYhkrVEwbV8Yop1BeouDaYdH
X-Proofpoint-GUID: 8RT5FMWAcYhkrVEwbV8Yop1BeouDaYdH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-24_08,2023-08-24_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 adultscore=0
 priorityscore=1501 lowpriorityscore=0 suspectscore=0 bulkscore=0
 impostorscore=0 clxscore=1011 malwarescore=0 mlxscore=0 spamscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2308100000 definitions=main-2308240094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230824_043256_356915_119979B0 
X-CRM114-Status: GOOD (  19.67  )
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

On Thu, Aug 24, 2023 at 05:13:45PM +0800, Yang Yingliang wrote:
> It should be 'qphy->vreg' passed to PTR_ERR() when devm_regulator_get() fails.
> 
> Fixes: 08e49af50701 ("phy: qcom: Introduce M31 USB PHY driver")
> Signed-off-by: Yang Yingliang <yangyingliang@huawei.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-m31.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-m31.c b/drivers/phy/qualcomm/phy-qcom-m31.c
> index ed08072ca032..99d570f4142a 100644
> --- a/drivers/phy/qualcomm/phy-qcom-m31.c
> +++ b/drivers/phy/qualcomm/phy-qcom-m31.c
> @@ -256,7 +256,7 @@ static int m31usb_phy_probe(struct platform_device *pdev)
>  
>  	qphy->vreg = devm_regulator_get(dev, "vdda-phy");
>  	if (IS_ERR(qphy->vreg))
> -		return dev_err_probe(dev, PTR_ERR(qphy->phy),
> +		return dev_err_probe(dev, PTR_ERR(qphy->vreg),
>  						"failed to get vreg\n");

Reviewed-by: Varadarajan Narayanan <quic_varada@quicinc.com>

Thanks
Varada

>  
>  	phy_set_drvdata(qphy->phy, qphy);
> -- 
> 2.25.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
