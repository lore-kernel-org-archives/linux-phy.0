Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB5EEC4332F
	for <linux-phy@archiver.kernel.org>; Mon,  5 Dec 2022 19:57:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kJXSBxEZ1ycIZUR/JZvz2KwQYo1qmAhVynxG3uomfYo=; b=r8LE5aQ9TzsTQpms84By+lZt2b
	OwZ6ahxMoEsVUG2dXY/7oj38gD9MAlIFWSJwZeb3bSVmonrJI1ADwvLIjZq2TCQs17rdldUKbi0GV
	KNi2xUBaXqwjJYiyVWqZF880YYQpTuevRyo4oTkDtJluAXypHFrP0N4/pQP7qu/EvixUGLbm/3v3R
	allzcEQk1limlHo5pB6F6E6acljZ47czkpEh1rHAOi+TdVbMWlNxfbvrLIRPz2TZBWxcnBm/fgULy
	UsrihXWHVySNQ+2S3AiihoMYFs7DRGY3MQD7nA+GrAA6cdLxMiQNm8F9i5qJtKOFapV3EylTtBXvT
	hWnZd8ZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2Hau-009ltE-D3; Mon, 05 Dec 2022 19:57:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2Has-009lsc-Hg
	for linux-phy@lists.infradead.org; Mon, 05 Dec 2022 19:57:39 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 2B5JlTO4009094;
	Mon, 5 Dec 2022 19:57:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=date : from : to :
 cc : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=qcppdkim1; bh=mJaizdTflZ9fNDW50Jnh2x2j8AnArQaBZlh7CenVXIU=;
 b=QEFfCGgSRTDBctF+TGpLaVAntVvpd+WxphFrrUTTGGxpoFFppR5MOmc0sgdSMAM+VR6P
 gbg9rCj+UftPypn35FAJ3tuXGpYOyLdxxFlCBdz1UsVVtM8oz8Yh+6SlOG9+zYUGDbx8
 XKDcLN4kJw7SHmiVDxXjy+cN/zTYFa325tzJHVTwT98TtlHRlgk+fbIRZte020eshRHM
 7YwlbPqDh2aaJ75/HKmwjcOK+dY+COS3YX7DXAsglFx6xxvb0HDVF7Hq+vvUBJTPoeBI
 jI3KRQriuP+9PyjCxWoO45vsKZT1l8dChwsbKQaQXN4ILpHafdLMeSFYs/SNGRahn59W 7A== 
Received: from nasanppmta02.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3m7xp8n4n9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 05 Dec 2022 19:57:30 +0000
Received: from nasanex01a.na.qualcomm.com (corens_vlan604_snip.qualcomm.com [10.53.140.1])
	by NASANPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 2B5JvT0p004254
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 5 Dec 2022 19:57:29 GMT
Received: from asutoshd-linux1.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.36; Mon, 5 Dec 2022 11:57:29 -0800
Date: Mon, 5 Dec 2022 11:57:28 -0800
From: Asutosh Das <quic_asutoshd@quicinc.com>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
CC: <martin.petersen@oracle.com>, <jejb@linux.ibm.com>, <andersson@kernel.org>,
        <vkoul@kernel.org>, <quic_cang@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-scsi@vger.kernel.org>,
        <dmitry.baryshkov@linaro.org>, <ahalaney@redhat.com>,
        <abel.vesa@linaro.org>, <alim.akhtar@samsung.com>,
        <avri.altman@wdc.com>, <bvanassche@acm.org>
Subject: Re: [PATCH v4 16/23] scsi: ufs: ufs-qcom: Use dev_err_probe() for
 printing probe error
Message-ID: <20221205195728.GE15334@asutoshd-linux1.qualcomm.com>
References: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org>
 <20221201174328.870152-17-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221201174328.870152-17-manivannan.sadhasivam@linaro.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: Yg0jTjvMsd87H4FEoFDgJEhuVSR6blnf
X-Proofpoint-GUID: Yg0jTjvMsd87H4FEoFDgJEhuVSR6blnf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.923,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-12-05_01,2022-12-05_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 clxscore=1015
 phishscore=0 lowpriorityscore=0 suspectscore=0 spamscore=0
 priorityscore=1501 mlxlogscore=999 malwarescore=0 bulkscore=0
 impostorscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2210170000 definitions=main-2212050166
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_115738_614235_FB527860 
X-CRM114-Status: GOOD (  13.59  )
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

On Thu, Dec 01 2022 at 09:45 -0800, Manivannan Sadhasivam wrote:
>Make use of dev_err_probe() for printing the probe error.
>
>Reviewed-by: Andrew Halaney <ahalaney@redhat.com>
>Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>---
> drivers/ufs/host/ufs-qcom.c | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
>
Reviewed-by: Asutosh Das <quic_asutoshd@quicinc.com>



>diff --git a/drivers/ufs/host/ufs-qcom.c b/drivers/ufs/host/ufs-qcom.c
>index 8bb0f4415f1a..38e2ed749d75 100644
>--- a/drivers/ufs/host/ufs-qcom.c
>+++ b/drivers/ufs/host/ufs-qcom.c
>@@ -1441,9 +1441,9 @@ static int ufs_qcom_probe(struct platform_device *pdev)
> 	/* Perform generic probe */
> 	err = ufshcd_pltfrm_init(pdev, &ufs_hba_qcom_vops);
> 	if (err)
>-		dev_err(dev, "ufshcd_pltfrm_init() failed %d\n", err);
>+		return dev_err_probe(dev, err, "ufshcd_pltfrm_init() failed\n");
>
>-	return err;
>+	return 0;
> }
>
> /**
>-- 
>2.25.1
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
