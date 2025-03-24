Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 684E7C3600E
	for <linux-phy@archiver.kernel.org>; Mon, 24 Mar 2025 19:56:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TgjC+awx6UOSUeJkbGNnV+tvKh6znVjgAYvnkGSWfq0=; b=QobIOC/c1hqauw
	5Q+978EQT8Cx7/Bgo1KPbdOrylDferV4tHhIyG1+AaF/JPIrckzpTzWeP0gx+uVoa6dbOmpUUYWwK
	v1AdLYU8AkkbUlAmfnFwViAtAta75kmVfU4f54+6s06Ftz7gAbcDyvsikaRon6H6frCpouThzT7cJ
	jnilnWVvNWLgWv8kpO72P+fllxAWE3G+UkyRatVR6mRlBcuxXXZDkMq9Wvhxy9dqaAAULZ3bRLsep
	BdL0aDz2ezVmZPtz1YKxvym+zQAolqjGh29Qdl8eWLs7cK2tpbqzfsPEzsbJw+HknOTL4inALhT/8
	BOjnGMzz05y79teJnGsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1twnuX-000000047y9-0f5R;
	Mon, 24 Mar 2025 19:56:37 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1twnep-000000046K1-0bbQ
	for linux-phy@lists.infradead.org;
	Mon, 24 Mar 2025 19:40:24 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52O9PPE3007605
	for <linux-phy@lists.infradead.org>; Mon, 24 Mar 2025 19:40:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SXkQDm5kLEwRx/9skftTv0348QA9ONLJ31YS8DxZVvM=; b=GT3qJCzTmLqmm0bj
	uJsjLBe2dbGCV9zX2nagOBGDEapytOchxqjstr1CoyO+0cZ7CxkebFlp4jz+qWYY
	yi50H2x5ZJ0CghHV5WJFaOoN11J+Asqc1B8LkQWdKyeLFZxUe7rU3GF0sqYF4jAE
	LyTO939T7GRLCk4L99nVbwUm9Twh/n4EdDQ4Aqx/PyWYNa/0wTdkSIoZyX49HDlI
	BSjvhW7vl8V5fIqRSwK03LYe3Jebm0ufKfpcediLIw8a0ToXwImW3qYCGvKMRWjM
	up3F3qSpI3gpfqmrkXifU9koVpdXStVOC1Rnfpzk2Yrbr0HQEfG2g5F/sLF/wOCk
	nBvt3A==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45hnyjdavb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 24 Mar 2025 19:40:22 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6ece15fd50fso4190776d6.0
        for <linux-phy@lists.infradead.org>; Mon, 24 Mar 2025 12:40:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742845221; x=1743450021;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SXkQDm5kLEwRx/9skftTv0348QA9ONLJ31YS8DxZVvM=;
        b=p/Grgi0Cx2m9xOR6N+uLXH65dFAImfoDuTY0cNvAQjqfbLpeS0Gn3TzLIQP3bQbpN4
         DafD+Mseub0fwQgvqTTn4mjq8o6l5pZeKDPDs2tA8igyNr0BSbE+HcWE5c/Kzx+jHxzX
         QPFyebKT1Ip03UTu9bb8tKBG46ikesveVduQ5X9CAlFDOiXTCHwzEYyZFJxb7/KSwwFM
         pq4FriaV+jKDPJ3GS2Ju4r6qLQHapFDdlKeN2N4RERvCjCyC2e0zKafSaPPTjAEf2pJS
         AVJZbDXqEMCgIl8WTewFHdNms7RSMcXvJYuVY+PfJ99L9Vy+t+zChVoybyy45cByim+6
         Ru4w==
X-Forwarded-Encrypted: i=1; AJvYcCUaMEjVvauXmff+gP7Jhl4XMh0tYReJygSPjUsdRl5Kxfmy7LdJnruBcmErZ1SvwJw92fg42YS6b54=@lists.infradead.org
X-Gm-Message-State: AOJu0YzB9lQZFHV046b7cw8EGPwf8HWrbW1EGjVqIthnPQy8O/PLhrgT
	BrAXbs4+whbhhqZNCIIY204GUWCY1VQveSS1nHPcoHliEm/31oxEm5HB2XO2KiQwzSxB0AheLDi
	WnrDGRCUu2DVX5vv4MLO9Zu+84oB+bnT5i9ycMmc0lYc6/wJopgvWIgTRcxls9GAT
X-Gm-Gg: ASbGnctKgz64azSyteKQ7JqX72hgzCWFDAMSxC97HdqUS4X4XqamVXTG7ukIPnOKJvn
	zmVAcg1Meg47JZicJ7PAQq9IxYXg7ytGOOh1gX5dlFDTX0/9Bq9oIdxyCG2+ydgi9CUZJprS85i
	iiQn3yEFI90yfQJqTr/L+dPTO6JAvy1ABi7wOfozLUEoN1vyFQ14iiBDlXUXv5Mu9pHfvMSPWWI
	6QKqQrobA8QqrQ2JSAPcZxLV2+gCr/fOGD08bJ5IdhGCgbSDqAqvAREKp1ewv+M0JP9yBW9mv8C
	tDkkVRDBTlQrLVQqFfUwdMhFyBxJsjUd5jE2fDTjRqw9BDLVSdr6tWtfyc+0JsF+PhLTXg==
X-Received: by 2002:a05:6214:d46:b0:6e8:9f7e:8116 with SMTP id 6a1803df08f44-6ed0c13c39fmr1497276d6.5.1742845221027;
        Mon, 24 Mar 2025 12:40:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEFQUXqX98PoTYrIeAXqtc65qYw2xYP7aqUrMBdk906XfKx3SNLE/xosilvypduLiXYKvY6Tg==
X-Received: by 2002:a05:6214:d46:b0:6e8:9f7e:8116 with SMTP id 6a1803df08f44-6ed0c13c39fmr1496986d6.5.1742845220449;
        Mon, 24 Mar 2025 12:40:20 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5ebccf879casm6659504a12.27.2025.03.24.12.40.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Mar 2025 12:40:20 -0700 (PDT)
Message-ID: <5b7bb606-c763-4243-808e-5a1dd2f5b17e@oss.qualcomm.com>
Date: Mon, 24 Mar 2025 20:40:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 5/6] arm64: dts: qcom: ipq5018: Add PCIe related nodes
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Praveenkumar I <quic_ipkumar@quicinc.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        george.moussalem@outlook.com, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Nitheesh Sekar <quic_nsekar@quicinc.com>,
        Varadarajan Narayanan <quic_varada@quicinc.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        20250317100029.881286-2-quic_varada@quicinc.com,
        Sricharan R <quic_srichara@quicinc.com>
References: <20250321-ipq5018-pcie-v6-0-b7d659a76205@outlook.com>
 <20250321-ipq5018-pcie-v6-5-b7d659a76205@outlook.com>
 <a4n3w62bg6x2iux4z7enu3po56hr5pcavjfmvtzdcwv2w4ptrr@ssvfdrltfg5y>
 <6fa2bd30-762b-4a3a-b94f-8798c027764a@quicinc.com>
 <ys56uezoe7uuhsvtejnptjuluvphpidg5tzx2d4x3bi6pan7aa@en3rx3llns5s>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <ys56uezoe7uuhsvtejnptjuluvphpidg5tzx2d4x3bi6pan7aa@en3rx3llns5s>
X-Authority-Analysis: v=2.4 cv=Ybu95xRf c=1 sm=1 tr=0 ts=67e1b526 cx=c_pps a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=UqCG9HQmAAAA:8 a=KKAkSRfTAAAA:8 a=Hb4tMjJCnwUsYDbdA0gA:9
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 7JuDpmDUqhoBIEgBXm-jWvFr_nLMiRLK
X-Proofpoint-ORIG-GUID: 7JuDpmDUqhoBIEgBXm-jWvFr_nLMiRLK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-24_06,2025-03-21_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 impostorscore=0
 suspectscore=0 mlxlogscore=999 priorityscore=1501 spamscore=0
 lowpriorityscore=0 mlxscore=0 malwarescore=0 bulkscore=0 clxscore=1015
 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503240140
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250324_124023_194315_19EEC14C 
X-CRM114-Status: GOOD (  17.87  )
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

On 3/24/25 12:36 PM, Dmitry Baryshkov wrote:
> On Mon, Mar 24, 2025 at 04:48:34PM +0530, Praveenkumar I wrote:
>>
>>
>> On 3/24/2025 1:26 PM, Manivannan Sadhasivam wrote:
>>> On Fri, Mar 21, 2025 at 04:14:43PM +0400, George Moussalem via B4 Relay wrote:
>>>> From: Nitheesh Sekar<quic_nsekar@quicinc.com>
>>>>
>>>> Add phy and controller nodes for a 2-lane Gen2 and
>>> Controller is Gen 3 capable but you are limiting it to Gen 2.
>>>
>>>> a 1-lane Gen2 PCIe bus. IPQ5018 has 8 MSI SPI interrupts and
>>>> one global interrupt.
>>>>
>>>> Signed-off-by: Nitheesh Sekar<quic_nsekar@quicinc.com>
>>>> Signed-off-by: Sricharan R<quic_srichara@quicinc.com>
>>>> Signed-off-by: George Moussalem<george.moussalem@outlook.com>
>>> One comment below. With that addressed,
>>>
>>> Reviewed-by: Manivannan Sadhasivam<manivannan.sadhasivam@linaro.org>
>>>
>>>> ---
>>>>   arch/arm64/boot/dts/qcom/ipq5018.dtsi | 234 +++++++++++++++++++++++++++++++++-
>>>>   1 file changed, 232 insertions(+), 2 deletions(-)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/qcom/ipq5018.dtsi b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
>>>> index 8914f2ef0bc4..d08034b57e80 100644
>>>> --- a/arch/arm64/boot/dts/qcom/ipq5018.dtsi
>>>> +++ b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
>>>> @@ -147,6 +147,40 @@ usbphy0: phy@5b000 {
>>>>   			status = "disabled";
>>>>   		};
>>>> +		pcie1_phy: phy@7e000{
>>>> +			compatible = "qcom,ipq5018-uniphy-pcie-phy";
>>>> +			reg = <0x0007e000 0x800>;
>>>> +
>>>> +			clocks = <&gcc GCC_PCIE1_PIPE_CLK>;
>>>> +
>>>> +			resets = <&gcc GCC_PCIE1_PHY_BCR>,
>>>> +				 <&gcc GCC_PCIE1PHY_PHY_BCR>;
>>>> +
>>>> +			#clock-cells = <0>;
>>>> +			#phy-cells = <0>;
>>>> +
>>>> +			num-lanes = <1>;
>>>> +
>>>> +			status = "disabled";
>>>> +		};
>>>> +
>>>> +		pcie0_phy: phy@86000{
>>>> +			compatible = "qcom,ipq5018-uniphy-pcie-phy";
>>>> +			reg = <0x00086000 0x800>;
>>>> +
>>>> +			clocks = <&gcc GCC_PCIE0_PIPE_CLK>;
>>>> +
>>>> +			resets = <&gcc GCC_PCIE0_PHY_BCR>,
>>>> +				 <&gcc GCC_PCIE0PHY_PHY_BCR>;
>>>> +
>>>> +			#clock-cells = <0>;
>>>> +			#phy-cells = <0>;
>>>> +
>>>> +			num-lanes = <2>;
>>>> +
>>>> +			status = "disabled";
>>>> +		};
>>>> +
>>>>   		tlmm: pinctrl@1000000 {
>>>>   			compatible = "qcom,ipq5018-tlmm";
>>>>   			reg = <0x01000000 0x300000>;
>>>> @@ -170,8 +204,8 @@ gcc: clock-controller@1800000 {
>>>>   			reg = <0x01800000 0x80000>;
>>>>   			clocks = <&xo_board_clk>,
>>>>   				 <&sleep_clk>,
>>>> -				 <0>,
>>>> -				 <0>,
>>>> +				 <&pcie0_phy>,
>>>> +				 <&pcie1_phy>,
>>>>   				 <0>,
>>>>   				 <0>,
>>>>   				 <0>,
>>>> @@ -387,6 +421,202 @@ frame@b128000 {
>>>>   				status = "disabled";
>>>>   			};
>>>>   		};
>>>> +
>>>> +		pcie1: pcie@80000000 {
>>>> +			compatible = "qcom,pcie-ipq5018";
>>>> +			reg = <0x80000000 0xf1d>,
>>>> +			      <0x80000f20 0xa8>,
>>>> +			      <0x80001000 0x1000>,
>>>> +			      <0x00078000 0x3000>,
>>>> +			      <0x80100000 0x1000>,
>>>> +			      <0x0007b000 0x1000>;
>>>> +			reg-names = "dbi",
>>>> +				    "elbi",
>>>> +				    "atu",
>>>> +				    "parf",
>>>> +				    "config",
>>>> +				    "mhi";
>>>> +			device_type = "pci";
>>>> +			linux,pci-domain = <0>;
>>>> +			bus-range = <0x00 0xff>;
>>>> +			num-lanes = <1>;
>>>> +			max-link-speed = <2>;
>>> This still needs some justification. If Qcom folks didn't reply, atleast move
>>> this to board dts with a comment saying that the link is not coming up with
>>> Gen3.
>>>
>>> - Mani
>> The IPQ5018 PCIe controller can support Gen3, but the PCIe phy is limited
>> Gen2 and does not supported Gen3.
>> Hence, it is restricted using the DTSI property.
> 
> Ideally this needs to be negotiated between the PCIe host and PHY
> drivers.

Would it not fall back automatically?

In any case, I'm fine with this, so long as there's a comment above it

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
