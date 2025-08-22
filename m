Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78823CA0FE1
	for <linux-phy@archiver.kernel.org>; Fri, 22 Aug 2025 11:48:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h62CL8dkXj8giI20pYEQaAelzzZFeqPNcbsMrhcfi20=; b=gFnHBtK283SD4o
	VvOazOdUHw1pl6U1Fao3ND0adPitDhSt7aNq8DjdbEfqHSoBqURrKXp0JGveLsv19J0+iII95khZ5
	a0Pkj6LueqnvRX941YxAHIJI6vBZ6YdxzHxKR9bst+IV2FZgKLhoalb6U6q3dyGP1ZHV8IuWtrI0d
	vI5S/qcJGZecn3SfapjlJQl6MXkNKCANjcOhrd/aPqD/QUUxJ8KXY0UJvwmQvY7Qpe8fHihlCb+g4
	h/DzLq/U2HCvC9OurzRIQFtYppbhbDmSNNUqijwSbwRqK8EvzsEteS15KD9RYHh4ARTYzmki4B9Gz
	pWZG12vsNhUKThSA5DMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upQGK-00000002NWq-0cOv;
	Fri, 22 Aug 2025 11:48:52 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upLZm-00000001jrp-2Cbq
	for linux-phy@lists.infradead.org;
	Fri, 22 Aug 2025 06:48:39 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57M6GxEH005474
	for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 06:48:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wt7rxN5hrf2QPuy6mxcJXvWkksap7MeXMIyW8r0g2eE=; b=mKgQV9n1vTRZQ6/l
	ZmTEHvaDDWuplAmg+x+xQzrZWj7Q23cyJFazU3pCcvmYGX3IWW6xyIVNx2OKHBGb
	jWBWFhvfckHXnOrvurHn4GQ7DbqrMgwYADmJKhhAo+dvBvhD5tN6S5Dcme12cG1y
	QADsZ0sb66OXBbG923zTVl10ni7Jx7Fb+S4J8ezHu0hPd9FY3gOGcOmWJDhAprrq
	9WAY9zYCrTC8DPW2Pv7lLhDwEqVA7Mqj9nCcP/NmTZ1w9nr+rvyYO2r9dx4NeHzf
	CLum0i0zw+iX+nSY99LC2lg/gYa+TSC+OrgR2xy0pqXn6Hd/cNP2UA0gGT1uNzn5
	7w0iYQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52cr3wm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 06:48:38 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-244582b5f43so4787005ad.3
        for <linux-phy@lists.infradead.org>; Thu, 21 Aug 2025 23:48:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755845317; x=1756450117;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wt7rxN5hrf2QPuy6mxcJXvWkksap7MeXMIyW8r0g2eE=;
        b=md5zsOhS39T+VATm6gfkVxXYfIl0KANilWNFiRZDb6s7kk+uagdezEM29oCh2Ro326
         XFgzh0uTgUp44bz6CkUyPJ2Jh+d41xyarWWxtdwnPDf6xj4eIqu4X1haHhtcYpNRY9nH
         /ip1+zewLvXNFCUp9pIgj8lokFnO/nfrGdW7qsd12RpXS/SYuRy1U0JTYfWlLgOyavNj
         ja6uqR9yA8+6C8/CpnlsbQ1yNKklUIEPhiqpMOFRoRdfIdgxSv2Njzd8+XhGCCa++4DG
         MHielHC7tcV1+25K+4DARVBoKECI5lt9SZY26ujnMzR4YdgqBC3oXTDBVR9Ju7O0hjaX
         6njA==
X-Forwarded-Encrypted: i=1; AJvYcCUhQ37I7E2hu246c91TEidOXZlvpQXsP6vbZliQ9+zewpPPYfMUmia5G8vPy/jjQNwwczX7ApqDnRQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YwKa1jfbkPZPrZYG4/Tb9k7OAyMEKB0tPH6mzcDK7n9HeI3iO0G
	Kk5AY74J1kRDaNpfcDuzgDf6iAg4Lm0RqgG7TJzyjqVtw4LlN4zNQYTt6rpbMC65uNchpf2K2xe
	9llTsO6sGKS/yU1hNpIPZrvop0fra1VPde6ukioCqqxW6rcLNKV/UbnvGfxxj6KYQm1jZ
X-Gm-Gg: ASbGncu7akosL9yvgZrDBnon+TMuvoJkRQFQKTkblmQ7n+2XiWxrtKet8EsucO/R0Zk
	kUUGp9nxGDicbbW1Sh5PVHTjN6LmkN6j0HHkLTV8A1/7bS9qJ4JiBWZnPSvR6K7erEFj7mQDsPN
	wCV2b94awTmkx/xohHrGWnKuMGidhrRGX2minep90qh47/6wlrHTuBDgVWYqREj1vrM/zKh58mw
	ZWNc0zJQIMBiRKcJHTv7TOjPdr84QS/4BURel2Ntxf2+X7EsYyddOAaFTijhCun2fRXL13J7MX2
	hHDt8gpvm0GScAxMm19R4i7qCCEatILPCxibm5KkFFBnovAZ3N4qsRIntcOa9JbUBIsmgKb4Gj/
	ZbDXiL864Y2JFbtF1S17oHhGefkM65Q==
X-Received: by 2002:a17:903:189:b0:242:d237:e20b with SMTP id d9443c01a7336-2462ee3033amr16553785ad.4.1755845317136;
        Thu, 21 Aug 2025 23:48:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH61Dg+R7H0dG6DmZ19hrTFC03VFv8xBO0r6XYbjTLMp1iwo0A+Wvhyyylwysjt+0wtsntd1w==
X-Received: by 2002:a17:903:189:b0:242:d237:e20b with SMTP id d9443c01a7336-2462ee3033amr16553585ad.4.1755845316681;
        Thu, 21 Aug 2025 23:48:36 -0700 (PDT)
Received: from [10.133.33.119] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-245ed51c027sm74231315ad.148.2025.08.21.23.48.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Aug 2025 23:48:36 -0700 (PDT)
Message-ID: <dd3c9cc4-3b4a-4321-88ab-933909b6da87@oss.qualcomm.com>
Date: Fri, 22 Aug 2025 14:48:28 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 02/14] dt-bindings: phy: Add QMP USB3+DP PHY for QCS615
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, fange.zhang@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-2-a43bd25ec39c@oss.qualcomm.com>
 <tlilctwavwqw6oy46l5fote2pa6f4hdy2im6meo56cjaawba3a@a42bwbbfnsuw>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <tlilctwavwqw6oy46l5fote2pa6f4hdy2im6meo56cjaawba3a@a42bwbbfnsuw>
X-Proofpoint-GUID: __zdCOIOoPE-N9PpiZmdfiTg1bo-maLv
X-Proofpoint-ORIG-GUID: __zdCOIOoPE-N9PpiZmdfiTg1bo-maLv
X-Authority-Analysis: v=2.4 cv=Xpij+VF9 c=1 sm=1 tr=0 ts=68a812c6 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8
 a=VwQbUJbxAAAA:8 a=bGlgfQEnYdfhEoguRucA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX3+UsUAM7svKA
 tUOYBhi8I8Fv0RXaCtgFSQlIITUS1kxvG2DksTnzeML3HOm/Y1ZDEWfSPV2ubBRkOpzi1R2mqOv
 hnkqejD2JY3U6Kh+qe+ibA8Mp++FUn1wuhIS25wBNIEte3m+lRfMAQVUyd8S3OaGlOqp9EsuiaQ
 KtWxNR+Cl+TDr66XmvSQmyJThVdCPyjgCvS3rie4UMWGWmEMRED6jZw8g9knEXu080MQVsLLto8
 ZlcnTJeRsvoJBDrdS8StcWiyDp0qddGWm4gJYIQbuO1XX6SQ3zm59bQhM4O1eToGMtNKMVDD07U
 Q2WN0C0yiic7SoKUpzmosAfvYttK4SHNH4o+N9igZSL2cByWrTahO8mqwGEcDCHXpLptlB79/6z
 TNr3bVXXV/Sh/1SkEchzmy/ylzsIvQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_02,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 bulkscore=0 impostorscore=0
 adultscore=0 spamscore=0 phishscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_234838_574066_F1510A50 
X-CRM114-Status: GOOD (  17.33  )
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


On 8/20/2025 7:37 PM, Dmitry Baryshkov wrote:
> On Wed, Aug 20, 2025 at 05:34:44PM +0800, Xiangxu Yin wrote:
>> Add device tree binding documentation for the Qualcomm QMP USB3+DP PHY
>> on QCS615 Platform. This PHY supports both USB3 and DP functionality
>> over USB-C, with PHY mode switching capability. It does not support
>> combo mode.
>>
>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>> ---
>>  .../bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml   | 108 +++++++++++++++++++++
>>  1 file changed, 108 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml
>> new file mode 100644
>> index 0000000000000000000000000000000000000000..c2b1fbab2930f0653f4ddb95f7b54d8fe994f92d
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml
>> @@ -0,0 +1,108 @@
>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/phy/qcom,qcs615-qmp-usb3dp-phy.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Qualcomm QMP USB3-DP PHY controller (DP, QCS615)
>> +
>> +maintainers:
>> +  - Vinod Koul <vkoul@kernel.org>
>> +
>> +description:
>> +  The QMP PHY controller supports physical layer functionality for both
>> +  USB3 and DisplayPort over USB-C. While it enables mode switching
>> +  between USB3 and DisplayPort, but does not support combo mode.
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - qcom,qcs615-qmp-usb3-dp-phy
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  clocks:
>> +    maxItems: 2
> Missing GCC_USB2_SEC_PHY_AUX_CLK and GCC_USB2_SEC_PHY_PIPE_CLK


Ok, will fix in next patch.


>> +
>> +  clock-names:
>> +    items:
>> +      - const: cfg_ahb
>> +      - const: ref
>> +
>> +  resets:
>> +    maxItems: 2
>> +
>> +  reset-names:
>> +    items:
>> +      - const: phy_phy
>> +      - const: dp_phy
>> +
>> +  vdda-phy-supply: true
>> +
>> +  vdda-pll-supply: true
>> +
>> +  "#clock-cells":
>> +    const: 1
>> +    description:
>> +      See include/dt-bindings/phy/phy-qcom-qmp.h
>> +
>> +  "#phy-cells":
>> +    const: 1
>> +    description:
>> +      See include/dt-bindings/phy/phy-qcom-qmp.h
>> +
>> +  qcom,tcsr-reg:
>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>> +    items:
>> +      - items:
>> +          - description: phandle to TCSR hardware block
>> +          - description: offset of the VLS CLAMP register
>> +      - items:
>> +          - description: phandle to TCSR hardware block
>> +          - description: offset of the DP PHY mode register
>> +    description: Clamp and PHY mode register present in the TCSR
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - clocks
>> +  - clock-names
>> +  - resets
>> +  - reset-names
>> +  - vdda-phy-supply
>> +  - vdda-pll-supply
>> +  - "#clock-cells"
>> +  - "#phy-cells"
>> +  - qcom,tcsr-reg
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/clock/qcom,qcs615-gcc.h>
>> +    #include <dt-bindings/clock/qcom,rpmh.h>
>> +
>> +    phy@88e8000 {
>> +      compatible = "qcom,qcs615-qmp-usb3-dp-phy";
>> +      reg = <0x88e8000 0x2000>;
>> +
>> +      clocks = <&gcc GCC_AHB2PHY_WEST_CLK>,
>> +               <&gcc GCC_USB3_SEC_CLKREF_CLK>;
>> +      clock-names = "cfg_ahb",
>> +                    "ref";
>> +
>> +      resets = <&gcc GCC_USB3PHY_PHY_SEC_BCR >,
>> +               <&gcc GCC_USB3_DP_PHY_SEC_BCR>;
>> +      reset-names = "phy_phy",
>> +                    "dp_phy";
>> +
>> +      vdda-phy-supply = <&vreg_l11a>;
>> +      vdda-pll-supply = <&vreg_l5a>;
>> +
>> +      #clock-cells = <1>;
>> +      #phy-cells = <1>;
>> +
>> +      qcom,tcsr-reg = <&tcsr 0xbff0>,
>> +                      <&tcsr 0xb24c>;
>> +    };
>>
>> -- 
>> 2.34.1
>>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
