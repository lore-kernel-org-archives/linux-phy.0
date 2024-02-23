Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A181C5478C
	for <linux-phy@archiver.kernel.org>; Fri, 23 Feb 2024 11:49:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gAfruu+uLmy8Ba4EyfHJtebLGHkzdKfByY+LgyldomE=; b=2xvCf/hj9eB2Y/
	2o7n3bdPSPy8kFuD1AOaxdKR+QgHPDaxqsURuK31QEVu4UMJMnHH/p7z1hWPST9PUQJZO/rZ2iYfQ
	iwXH+9D8Y1nn34HDIkMg+yfZpCGWtCG1ZlOql6InYAzpf+4t4icq6aXyaMCH8rLVlLj/vhlugDF2E
	g7xYTVYH/1pEh3uAyM73Xm0N4J7Jyknr+/G7hXtpbbUTrzJM8voZUE8S948ZqToCXpcpYEy4Yo0Bn
	fY7RqJ0jEHQMQRTiC4lCZWAGjvuxRM4PbMmTEVSxakf8Xkbt0aXX3IvJrocfju+El5cu/cuNGrCP0
	Gujdwb9rBPTpB5clbLEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdU3W-00000009DIf-3IDx;
	Fri, 23 Feb 2024 11:49:30 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdU3S-00000009DFv-0Bzq
	for linux-phy@lists.infradead.org;
	Fri, 23 Feb 2024 11:49:28 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 41N6xRJR006731;
	Fri, 23 Feb 2024 11:49:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=qcppdkim1; bh=Mh7jc07pcOIykuea9G2Hj
	9dHxtwoWsG+W3aQTol0rs0=; b=B1O1+HYsQ0wVXeDVssDAUfo2gpOolZh/QU2h8
	RbdjKVHmC1JtBHgj7QiO4DVGNAgWj9Gk9/46KR2Zm05hp6lVU/jiBsmR6+wDr1Z7
	McUm19Ja2O3iezOsmnG7vDjHhWzwIjE6FEPXPYwiheKrb//525o4H7CmM5nnKd0c
	O3ynMs65Ftso5vatgU04STh1L2lB1bh5+QWlUnJ+Gf1Dqs+fc2SVDXcV9+XzNoTF
	8ha/0286yfOj82DyU4t70UviIkTwHWCHk1o4PmLxJeseQQHyfmzaeO/5gVqOb6mO
	7xJVXevPOaFSCX/nTWbkz16rSsn4D6Rz3ADT253K+Xq9uey5w==
Received: from nasanppmta02.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3weedkspaq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 23 Feb 2024 11:49:11 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 41NBnAYu032725
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 23 Feb 2024 11:49:10 GMT
Received: from hu-varada-blr.qualcomm.com (10.80.80.8) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Fri, 23 Feb 2024 03:49:07 -0800
Date: Fri, 23 Feb 2024 17:19:03 +0530
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: Gabor Juhos <j4g8y7@gmail.com>
CC: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio
	<konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        "Kishon Vijay
 Abraham I" <kishon@kernel.org>,
        Sricharan Ramabadhran
	<quic_srichara@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] phy: qcom: m31: match requested regulator name with dt
 schema
Message-ID: <ZdiGL/TryPVrbDWp@hu-varada-blr.qualcomm.com>
References: <20240220-phy-qcom-m31-regulator-fix-v1-1-7675b4a916b3@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240220-phy-qcom-m31-regulator-fix-v1-1-7675b4a916b3@gmail.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: BHtyA4R3RzExzDv_YuGE59WkAnu706b0
X-Proofpoint-GUID: BHtyA4R3RzExzDv_YuGE59WkAnu706b0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-22_15,2024-02-23_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 malwarescore=0 clxscore=1011 lowpriorityscore=0 mlxlogscore=999
 phishscore=0 suspectscore=0 spamscore=0 adultscore=0 mlxscore=0
 bulkscore=0 priorityscore=1501 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2402120000 definitions=main-2402230084
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240223_034926_359834_E1A62F32 
X-CRM114-Status: GOOD (  22.21  )
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

On Tue, Feb 20, 2024 at 08:13:47PM +0100, Gabor Juhos wrote:
> According to the 'qcom,ipq5332-usb-hsphy.yaml' schema, the 5V
> supply regulator must be defined via the 'vdd-supply' property.
> The driver however requests for the 'vdda-phy' regulator which
> results in the following message when the driver is probed on
> a IPQ5018 based board with a device tree matching to the schema:
>
>   qcom-m31usb-phy 5b000.phy: supply vdda-phy not found, using dummy regulator
>   qcom-m31usb-phy 5b000.phy: Registered M31 USB phy
>
> This means that the regulator specified in the device tree never
> gets enabled.
>
> Change the driver to use the 'vdd' name for the regulator as per
> defined in the schema in order to ensure that the corresponding
> regulator gets enabled.
>
> Fixes: 08e49af50701 ("phy: qcom: Introduce M31 USB PHY driver")
> Signed-off-by: Gabor Juhos <j4g8y7@gmail.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-m31.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-m31.c b/drivers/phy/qualcomm/phy-qcom-m31.c
> index c2590579190a..9d84858ba1db 100644
> --- a/drivers/phy/qualcomm/phy-qcom-m31.c
> +++ b/drivers/phy/qualcomm/phy-qcom-m31.c
> @@ -297,7 +297,7 @@ static int m31usb_phy_probe(struct platform_device *pdev)
>  		return dev_err_probe(dev, PTR_ERR(qphy->phy),
>  				     "failed to create phy\n");
>
> -	qphy->vreg = devm_regulator_get(dev, "vdda-phy");
> +	qphy->vreg = devm_regulator_get(dev, "vdd");
>  	if (IS_ERR(qphy->vreg))
>  		return dev_err_probe(dev, PTR_ERR(qphy->phy),
>  				     "failed to get vreg\n");
>
> ---
> base-commit: b401b621758e46812da61fa58a67c3fd8d91de0d
> change-id: 20240220-phy-qcom-m31-regulator-fix-97555a4650b1

Reviewed-by: Varadarajan Narayanan <quic_varada@quicinc.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
