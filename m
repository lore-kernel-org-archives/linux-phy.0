Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8579DC7618E
	for <linux-phy@archiver.kernel.org>; Mon, 24 Apr 2023 05:24:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=74jQ0eTQcwMnXmAjDrlXPK9XVYmfXVqKiGcrFxsXxR4=; b=h/BX2EOBfeywW8
	i/ljadQQigiWc5/lmRmk/G3BMCGGfKmyClkXjb1Q1JvYIEpH9H5+winaBew17IMy3UUb54guRIj7B
	faxwukYuMNg8Lgn7Mh6lA8EWKx/zt1nmFZBGfFols6RjCRKRQ7AQKSURSUrdL8UDFfvfSCi/xKFUt
	EL4ImkVVmrZ4ki5GZu4zfTuXLJNcdyj59OmRFNRUMQPsdCSrKpGHyO7A33SuEDAEe9JD7btNK+xIE
	QcO0V+qBZMFTYQgEvXOttRZh0Fuif3wmlI40li+tu0D2dTg8tOqDfTwe3WRISeYUYYkrCLJcZ0WEr
	HLZsgaLT6eJKLrCA7h7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pqogm-00FMhT-0O;
	Mon, 24 Apr 2023 05:24:36 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pqogj-00FMgt-2a
	for linux-phy@lists.infradead.org;
	Mon, 24 Apr 2023 05:24:35 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 33O4gdvx028544;
	Mon, 24 Apr 2023 05:24:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=date : from : to :
 cc : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=qcppdkim1; bh=LaWl1S+PXsR1xtwUdfUOSm3pr8sZXB8zPkYY3h/eMVs=;
 b=oXj5A8P+JBgOK6ySP5cFk/yrPPmsQxmqR5mf06+zkvLBWQe2RELFCgWRl7ANafRdqs01
 842Xk3dRaOOcoFeFLKOL8XqOayOGpWJQQAxX28TbBP0Ve3vm28us5ivnagnp4DYIyMDd
 4vecbDJM4DrIzp/XP0mRBK0A0m6Z85GAzGg5oLd9g9khueAcE//WXp3w2WqVicffXtd9
 xFTIBwF0WWxnNEuEueKEJer9yx4qljxx/HNxxkVMRzjQpVk9ldvFq8oUIJcYJX+j02r7
 PVBbCiOGLuXx0WE+EiEvOv7S14qLs1R+L5zmCHq9+/yd6r5WTNPJt+sNyKOnyXN6+jKa TQ== 
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3q48h3agdh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 24 Apr 2023 05:24:20 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 33O5OJSf032322
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 24 Apr 2023 05:24:19 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Sun, 23 Apr 2023 22:24:13 -0700
Date: Mon, 24 Apr 2023 10:54:09 +0530
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, <agross@kernel.org>,
        <andersson@kernel.org>, <konrad.dybcio@linaro.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <gregkh@linuxfoundation.org>,
        <mturquette@baylibre.com>, <sboyd@kernel.org>,
        <quic_wcheng@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-usb@vger.kernel.org>,
        <linux-clk@vger.kernel.org>
Subject: Re: [PATCH v8 2/8] dt-bindings: phy: qcom,qmp-usb: Add IPQ9574 USB3
 PHY
Message-ID: <20230424052408.GA21232@varda-linux.qualcomm.com>
References: <cover.1680693149.git.quic_varada@quicinc.com>
 <1efa9a64499767d939efadd0aef897ac4a6e54eb.1680693149.git.quic_varada@quicinc.com>
 <b9763bee-c0c8-86be-14de-2ed077b1f1d5@linaro.org>
 <20230421101345.GB5813@varda-linux.qualcomm.com>
 <6750910d-22a0-7bed-f163-db57424133c6@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6750910d-22a0-7bed-f163-db57424133c6@linaro.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: 3ysVaDMeimyH8j0RhMm42s1CkrAxm7sM
X-Proofpoint-GUID: 3ysVaDMeimyH8j0RhMm42s1CkrAxm7sM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-04-24_02,2023-04-21_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=935 mlxscore=0
 adultscore=0 priorityscore=1501 impostorscore=0 bulkscore=0 clxscore=1015
 lowpriorityscore=0 malwarescore=0 phishscore=0 suspectscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2303200000
 definitions=main-2304240049
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230423_222433_984526_50C0F13A 
X-CRM114-Status: GOOD (  20.63  )
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

On Fri, Apr 21, 2023 at 05:19:58PM +0300, Dmitry Baryshkov wrote:
> On 21/04/2023 13:13, Varadarajan Narayanan wrote:
> >On Thu, Apr 06, 2023 at 09:42:31AM +0200, Krzysztof Kozlowski wrote:
> >>On 05/04/2023 13:41, Varadarajan Narayanan wrote:
> >>>Add dt-bindings for USB3 PHY found on Qualcomm IPQ9574
> >>>
> >>>Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> >>>---
> >>>  Changes in v8:
> >>>	- Update clock names for ipq9574
> >>>
> >>>  Changes in v6:
> >>>	- Made power-domains optional
> >>>
> >>>Note: In the earlier patch sets, had used the (legacy)
> >>>specification available in qcom,msm8996-qmp-usb3-phy.yaml. Moved
> >>>to newer specification in qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> >>>---
> >>>  .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml        | 43 +++++++++++++++++++---
> >>>  1 file changed, 37 insertions(+), 6 deletions(-)
> >>>
> >>>diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> >>>index 16fce10..e902a0d 100644
> >>>--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> >>>+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> >>>@@ -16,6 +16,7 @@ description:
> >>>  properties:
> >>>    compatible:
> >>>      enum:
> >>>+      - qcom,ipq9574-qmp-usb3-phy
> >>>        - qcom,sc8280xp-qmp-usb3-uni-phy
> >>>
> >>>    reg:
> >>>@@ -25,11 +26,7 @@ properties:
> >>>      maxItems: 4
> >>>
> >>>    clock-names:
> >>>-    items:
> >>>-      - const: aux
> >>>-      - const: ref
> >>>-      - const: com_aux
> >>>-      - const: pipe
> >>>+    maxItems: 4
> >>>
> >>>    power-domains:
> >>>      maxItems: 1
> >>>@@ -60,7 +57,6 @@ required:
> >>>    - reg
> >>>    - clocks
> >>>    - clock-names
> >>>-  - power-domains
> >>
> >>Power domains are required. Commit msg does not explain why this should
> >>be now optional.
> >
> >Since IPQ9574 doesn't have power switches couldn't provide power-domains details.
> >So, had to make it optional to pass 'make dtbs_check'.
>
> This should be a part of the commit message, so that the next developer
> understands your intentions without going to mail archives.

Thanks for the feedback. Have posted v9 that includes the above
in commit message.

https://lore.kernel.org/lkml/b00042df41420ac337703ca99ac7876c46552946.1682092324.git.quic_varada@quicinc.com/

Thanks
Varada

> >>Best regards,
> >>Krzysztof
> >>
>
> --
> With best wishes
> Dmitry
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
