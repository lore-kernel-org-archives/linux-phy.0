Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26E74C761AF
	for <linux-phy@archiver.kernel.org>; Thu, 30 Mar 2023 07:10:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/sn5G6Ax+I2/ijVbL8759Bl8PtcpeUxPO8bQS/7RhDs=; b=u/foDM45PHbgxJ
	rNYMM3qFhTCL8M2hCq7xbG/pchq/odVrQvdM3MF2Rt+h9RGyllNn2tKW6+odyrLsmJAvxYKfQ/XOP
	geoqvtJd6HiOK+mCkoELMZateN55RSlq9qgNhoUJO7UvG7Xd6GjsXOV767zxSGQs3U5xSOVmiC1bY
	oqULSiHVON9ZzfsNkO9zMfkPHHxmJgIEENrwg8Ecg47qphevppVnK2TDccpvEtozq9DvNijW6Fa1i
	Krpb0Jqk2SO4S43QjjYVbQlQx2bUy+dE/8KGdOfCkQZYZ8XiuaA567mdnIw+fQVvuyT3idoPCAKEf
	XM79WofnbFOl0RPoiAOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phmQh-002rWb-2b;
	Thu, 30 Mar 2023 07:10:39 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phmQe-002rVX-2A
	for linux-phy@lists.infradead.org;
	Thu, 30 Mar 2023 07:10:38 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32U2pkdx006462;
	Thu, 30 Mar 2023 07:10:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=date : from : to :
 cc : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=qcppdkim1; bh=5fX5B9Q2BVkwuM7B9UYaH7QjBXrTk5UeN4scDRz2vRw=;
 b=G2nJ5oTWYcWQZLg7f5c084VFO0cQV+HQ302xW9B8K/gPYzSI4hjNER4BQCT2EldPFJvm
 XotNLtHUqcKx/wMQtIZ4ztgEXWm5T6Bu37wycw4BlB4Y/qE69hu2JBw4L1L4u5qEGZJY
 EmVb36uM7NMlTI5F02GZNIqp26bYLAixcAalLDm04EnOrKCJJW07CQDGOqbfytvB+Mm9
 pTtcO9d14plNbOzsAzgXBCsH9a2JFguor3zT51Y5WPOzxt1zqYSjb/9zFJJfXMFKx3LN
 fnXP7RDxrMYoXw/BJrU1m/zFb2MpY36V8Kv0E+GJvpneQfN1Kz7bsiW5YDP0jSuOphri lQ== 
Received: from nasanppmta02.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3pmpbm2hs0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 30 Mar 2023 07:10:30 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 32U7ASBD007377
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 30 Mar 2023 07:10:28 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Thu, 30 Mar 2023 00:10:22 -0700
Date: Thu, 30 Mar 2023 12:40:17 +0530
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <gregkh@linuxfoundation.org>,
        <mturquette@baylibre.com>, <sboyd@kernel.org>,
        <quic_wcheng@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-usb@vger.kernel.org>,
        <linux-clk@vger.kernel.org>
Subject: Re: [PATCH v4 2/8] dt-bindings: phy: qcom,qmp-usb: Add IPQ9574 USB3
 PHY
Message-ID: <20230330071016.GB13508@varda-linux.qualcomm.com>
References: <cover.1679909245.git.quic_varada@quicinc.com>
 <4a21defe3320eb11d0e43bc7f02b3168ecefd458.1679909245.git.quic_varada@quicinc.com>
 <3d49b4b0-587c-f7e5-4122-65b3e9f11583@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3d49b4b0-587c-f7e5-4122-65b3e9f11583@linaro.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 87ChGyKcncQbXYejQSX4iRceP-vTJx2Y
X-Proofpoint-ORIG-GUID: 87ChGyKcncQbXYejQSX4iRceP-vTJx2Y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-30_02,2023-03-30_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 spamscore=0
 clxscore=1015 suspectscore=0 bulkscore=0 malwarescore=0 lowpriorityscore=0
 mlxlogscore=999 adultscore=0 phishscore=0 priorityscore=1501
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2303300056
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_001036_841951_B5DEBB6D 
X-CRM114-Status: GOOD (  16.91  )
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

On Mon, Mar 27, 2023 at 01:02:52PM +0300, Dmitry Baryshkov wrote:
> On 27/03/2023 12:30, Varadarajan Narayanan wrote:
> >Add dt-bindings for USB3 PHY found on Qualcomm IPQ9574
> >
> >Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> >---
> >  Changes in v4:
> >	- Remove constraints not applicable to IPQ9574
> >  Changes in v3:
> >	- Update other mandatory fields to accomodate IPQ9574
> >  Changes in v2:
> >	- Updated sections missed in previous patch
> >---
> >  .../bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml    | 25 ++++++++++++++++++++--
> >  1 file changed, 23 insertions(+), 2 deletions(-)
> >
> >diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
> >index e81a382..aa5b58c 100644
> >--- a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
> >+++ b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
> >@@ -21,6 +21,7 @@ properties:
> >      enum:
> >        - qcom,ipq6018-qmp-usb3-phy
> >        - qcom,ipq8074-qmp-usb3-phy
> >+      - qcom,ipq9574-qmp-usb3-phy
> >        - qcom,msm8996-qmp-usb3-phy
> >        - qcom,msm8998-qmp-usb3-phy
> >        - qcom,qcm2290-qmp-usb3-phy
> >@@ -122,8 +123,6 @@ required:
> >    - clock-names
> >    - resets
> >    - reset-names
> >-  - vdda-phy-supply
> >-  - vdda-pll-supply
>
> Same questions as for the qusb2 PHY. How is the PHY powered?

It is powered by always on regulators. Will create fixed
regulators and assign them to these.

Thanks
Varada

> >  additionalProperties: false
>
> --
> With best wishes
> Dmitry
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
