Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43261C83F10
	for <linux-phy@archiver.kernel.org>; Thu, 31 Aug 2023 11:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TtpkvLkLzChbW/vRQqWHZLPf4/r+GbloGmlHgmSAi/E=; b=NqH3zvDAuBZLwz
	ZIoBP52P+NkSbIj/jO6AiR5p1ZDBXi5bEogm3rTYtLnyiYPQXUqB/z6DfuB1H9mQVGyOd+NtwegxC
	fWHjaZzpUscBQtGfBEbwHI6aXIi7PFPf7X4P4Q+227SskFCBknA+b4EQpmkX5RtgwwvloKOKGDqsJ
	cQDh3UumMmQWjxb0HB37vspSXZ6kFyxqg8vVkGq4ys8RNTqQem7wXZBkIUvF+WLr8EBKuFKb4jVIr
	Ju15bx/XoA/+quKkqT/M0k8ZwC77Aw2SWiIlIYw+19f9vqGn3SXi4x0ypddrMt65GTs96Ioptyil9
	ycQxyPH2D22yu8PlhItQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbgFs-00FEvB-38;
	Thu, 31 Aug 2023 11:54:32 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbgFp-00FEts-0y;
	Thu, 31 Aug 2023 11:54:31 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 37VAtKpV008861;
	Thu, 31 Aug 2023 11:54:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=ln9W+1/tu6jELF7c4HBDDM3MPqq7CJqkt6tbQ7JY83o=;
 b=p6fc+shQMUcWFavaImcygl3gjfV3d0O58i2F9WbE05gE77HyPIGFdDb1LwH5tX/1+XD+
 3nxEozJ5JlJUlr3RabnfaDbzHjPodyyCiwd8upXav8APiresAGEK7/REg5e2Ib2KkkyS
 QRiekHai4ViQDBCx6aOA8DqCVzW/rYvrfPs1o/hN9lNKkHb65RBZK2U3viAY7kr/OnQl
 id0PSnHPbOcXh3kbHBoJasZMLbOj7IS9kU/ezm8YNj+j8cq1cczUDHEDScfutwanta9p
 +SfzEi3QEB9ksAW1qRXpiWdWheNJ9gSPJrcLgdWVGbYpUC5GtGthDA67b2U1A3n6VP3Z Qw== 
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3st4p3jf8m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 31 Aug 2023 11:54:08 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 37VBs6oY026563
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 31 Aug 2023 11:54:06 GMT
Received: from [10.201.3.91] (10.80.80.8) by nalasex01c.na.qualcomm.com
 (10.47.97.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.30; Thu, 31 Aug
 2023 04:53:59 -0700
Message-ID: <73879012-581d-47fb-b741-577c90b31dfb@quicinc.com>
Date: Thu, 31 Aug 2023 17:23:55 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/9] dt-bindings: phy: qcom,uniphy: Rename ipq4019 usb PHY
 to UNIPHY
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: <robert.marko@sartura.hr>, <luka.perkov@sartura.hr>, <agross@kernel.org>,
        <andersson@kernel.org>, <konrad.dybcio@linaro.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <catalin.marinas@arm.com>,
        <will@kernel.org>, <p.zabel@pengutronix.de>, <arnd@arndb.de>,
        <geert+renesas@glider.be>, <nfraprado@collabora.com>,
        <rafal@milecki.pl>, <peng.fan@nxp.com>, <quic_wcheng@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <quic_varada@quicinc.com>
References: <20230829135818.2219438-1-quic_ipkumar@quicinc.com>
 <20230829135818.2219438-2-quic_ipkumar@quicinc.com>
 <CAA8EJpqA-poJ9=XKJa2s=yZUGbBbgOqgiDC-q9skJzBqLux84g@mail.gmail.com>
From: Praveenkumar I <quic_ipkumar@quicinc.com>
In-Reply-To: <CAA8EJpqA-poJ9=XKJa2s=yZUGbBbgOqgiDC-q9skJzBqLux84g@mail.gmail.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: he6N0M1o3_Z22uLQBnvrl5asdGQTJkbv
X-Proofpoint-GUID: he6N0M1o3_Z22uLQBnvrl5asdGQTJkbv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-31_09,2023-08-31_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 impostorscore=0 mlxscore=0 clxscore=1015 suspectscore=0 mlxlogscore=999
 lowpriorityscore=0 phishscore=0 spamscore=0 adultscore=0 bulkscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2308100000 definitions=main-2308310106
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230831_045429_489336_D327A923 
X-CRM114-Status: GOOD (  17.75  )
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


On 8/29/2023 7:49 PM, Dmitry Baryshkov wrote:
> On Tue, 29 Aug 2023 at 16:59, Praveenkumar I <quic_ipkumar@quicinc.com> wrote:
>> UNIPHY / Combo PHY used on various qualcomm SoC's are very similar to
>> ipq4019 PHY. Hence renaming this dt-binding to uniphy dt-binding and
>> can be used for other qualcomm SoCs which are having similar UNIPHY.
>>
>> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
>> ---
>>   .../phy/{qcom-usb-ipq4019-phy.yaml => qcom,uniphy.yaml}  | 9 +++++++--
>>   1 file changed, 7 insertions(+), 2 deletions(-)
>>   rename Documentation/devicetree/bindings/phy/{qcom-usb-ipq4019-phy.yaml => qcom,uniphy.yaml} (78%)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom-usb-ipq4019-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,uniphy.yaml
>> similarity index 78%
>> rename from Documentation/devicetree/bindings/phy/qcom-usb-ipq4019-phy.yaml
>> rename to Documentation/devicetree/bindings/phy/qcom,uniphy.yaml
>> index 09c614952fea..cbe2cc820009 100644
>> --- a/Documentation/devicetree/bindings/phy/qcom-usb-ipq4019-phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/qcom,uniphy.yaml
>> @@ -1,13 +1,18 @@
>>   # SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>>   %YAML 1.2
>>   ---
>> -$id: http://devicetree.org/schemas/phy/qcom-usb-ipq4019-phy.yaml#
>> +$id: http://devicetree.org/schemas/phy/qcom,uniphy.yaml#
>>   $schema: http://devicetree.org/meta-schemas/core.yaml#
>>
>> -title: Qualcom IPQ40xx Dakota HS/SS USB PHY
>> +title: Qualcomm UNIPHY
> We know that UNIPHY was a common design / IP block used for APQ8064
> SATA and MSM8974 DSI and HDMI PHYs. Is this the same design, or was
> the name reused by the Qualcomm for some other PHYs?
> Several latest generations have USB QMP PHYs which are called 'uni-phy'.
This PHY is build on top of QCA Uniphy 22ull. A combo PHY used between 
USB Gen3 / PCIe Gen3 controller.
It is different from USB QMP PHYs.

- Praveenkumar
>>   maintainers:
>>     - Robert Marko <robert.marko@sartura.hr>
>> +  - Praveenkumar I <quic_ipkumar@quicinc.com>
>> +
>> +description:
>> +  UNIPHY / COMBO PHY supports physical layer functionality for USB and PCIe on
>> +  Qualcomm chipsets.
>>
>>   properties:
>>     compatible:
>> --
>> 2.34.1
>>
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
