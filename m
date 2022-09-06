Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19113ECAAD3
	for <linux-phy@archiver.kernel.org>; Tue,  6 Sep 2022 03:03:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aE12xakTnJWwAM3fPQLDFZqtnroIKWdAYJUs2krhT4k=; b=G5O6sPPMt243P8
	apURyfW8EjQF/mAVmG2CkG4/0uWCm+sg8f8NHcqaBVB+tqdO5JKX9GhuzTfp9gSsUeY4Qrn4iHEsJ
	78gFlQ3XC2fTsvpEM6E4+5TxIwysxpBdU6aBuwE9M9TO2Yo1JjRA4X7d1j3E7fwplO1IqdFHq+pFN
	qsHQueTWWKZrF2PyyT4w8FRHSAEMRkT2CqT++HaXtHCgs3qIRsM+7tqmgVSz2tww9pp2A/HaBskeX
	0+CyxhuY8tDfvzdwp6TOYylDSIzYMK1nNYitMJJYjH9LbEcnPVa5uPVxDk5GwXj+oc9g8SxyWzA1T
	Z4Hea6X29k2cp3MPUUaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVOri-002N39-Ck; Tue, 06 Sep 2022 03:03:06 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVOrd-002Mx4-5Q
	for linux-phy@lists.infradead.org; Tue, 06 Sep 2022 03:03:04 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 28620mUK018111;
	Tue, 6 Sep 2022 03:02:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=Tc6EpNFZm+9NHdKjj0VbkY8yZPYUDinr4yfonAuofRQ=;
 b=IAnvaksPMtnVdIIMrni6mKp4WGSJOyD2ZCJEokA4bvyhrpm9llahutfH3bmEENuKn0gC
 j5L4wCUsIJlg9w2NIyOdJHFQ869u1H/+VnRmvU7+3bP2GgKXu7zOxHidI6slP5+CoKbh
 fI7xvj/rD8OwQ2D38xtXXty4wKH16HFzaqmRKYIM7GdcCvH6bO1QKmlmRpIrcKFei0Jn
 qFuS8SSy5+z5PsPDMKxoB31dNBS/f5Po4fH/TohXJ7yKWiTURHw3XCPLjTYXUK2er99H
 J5EW+g5GhK4zJ25jiErlvwXiOvJ97SG1XFY08AG5doYbPVKKTy8alVvucnR9eZ6QN0uM TQ== 
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3jby58wj5r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 06 Sep 2022 03:02:45 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 2862mYOw024803
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 6 Sep 2022 02:48:34 GMT
Received: from [10.216.11.219] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.29; Mon, 5 Sep 2022
 19:48:26 -0700
Message-ID: <4e5bc823-0a98-da39-9f01-af819ee675ef@quicinc.com>
Date: Tue, 6 Sep 2022 08:18:19 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v12 2/3] phy: qcom-snps: Add support for overriding phy
 tuning parameters
Content-Language: en-US
To: Bjorn Andersson <andersson@kernel.org>
CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring
	<robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson
	<bjorn.andersson@linaro.org>,
        Vinod Koul <vkoul@kernel.org>, Wesley Cheng
	<quic_wcheng@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Philipp Zabel
	<p.zabel@pengutronix.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Doug Anderson <dianders@chromium.org>, <devicetree@vger.kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-usb@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <quic_pkondeti@quicinc.com>, <quic_ppratap@quicinc.com>,
        <quic_vpulyala@quicinc.com>
References: <1662201048-26049-1-git-send-email-quic_kriskura@quicinc.com>
 <1662201048-26049-3-git-send-email-quic_kriskura@quicinc.com>
 <20220906024552.lob5k4q3iyagyo5e@baldur>
From: Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>
In-Reply-To: <20220906024552.lob5k4q3iyagyo5e@baldur>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: Xul-_ViYEhCSAQikk6TYI23VuJ3TYYmm
X-Proofpoint-GUID: Xul-_ViYEhCSAQikk6TYI23VuJ3TYYmm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-09-06_01,2022-09-05_03,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 impostorscore=0
 lowpriorityscore=0 spamscore=0 malwarescore=0 adultscore=0
 priorityscore=1501 mlxscore=0 phishscore=0 clxscore=1015 suspectscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2207270000 definitions=main-2209060013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_200301_281207_CDC7BBBF 
X-CRM114-Status: GOOD (  15.10  )
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



On 9/6/2022 8:15 AM, Bjorn Andersson wrote:
> On Sat, Sep 03, 2022 at 04:00:47PM +0530, Krishna Kurapati wrote:
> [..]
>> +static void qcom_snps_hsphy_read_override_param_seq(struct device *dev)
>> +{
>> +	struct device_node *node = dev->of_node;
>> +	s32 val;
>> +	int ret, i;
>> +	struct qcom_snps_hsphy *hsphy;
>> +	const struct override_param_map *cfg = of_device_get_match_data(dev);
> 
> Given that you don't have any .data specified for the other compatibles
> (which is fine), cfg would be NULL here and below loop would attempt to
> access NULL[0].prop_name and crash.
> 
> Please add a check for !cfg and just return here.
> 
> With that I think the series looks good.
> 
> Regards,
> Bjorn
My bad. Missed this before. Thanks for pointing it out.
Will push updated changes.

Thanks,
Krishna,

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
