Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 346ACCD8CA8
	for <linux-phy@archiver.kernel.org>; Fri, 12 Jun 2026 17:19:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HqN4mpyHxJeohwKE/tBS6VfHwUvhJ0uPNlWjIl4VO9w=; b=RoCTROuQ9c6ZHB
	wLKq5OwDhkeq6GBP4ZNzJaakVt2XnANZr0XGTEXawFjsrW/PI9sXG9at6eymyh+p297CqvxnS1GQx
	7TXY2L6f9JEmlMUIjBmJoR0lX4CoK1tEoI+W0orK2Ej4xyPysTJEBhwcsg3AmBQfmFYuzHVil3NAj
	jjv5mS51THETcjKYk8S3t0SSJGuRSOBxMGkfPXuaV6vED/F6XnjlDvEn3eRPmEcKhpdXc/A4I3rbW
	dymMqXWE5uANKmrbCIjhkfg+2XO0iMCf6merx3i2Bj1gS9xnt2garqKCZXAmQUNabJDhBJDk6bVMC
	/mVQVg2JDKhhsknY2Iew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY5Xo-0000000BL1h-46e8;
	Fri, 12 Jun 2026 17:19:48 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY5Xm-0000000BL1E-3Ugm
	for linux-phy@lists.infradead.org;
	Fri, 12 Jun 2026 17:19:48 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65CGVFbl046340
	for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 17:19:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+God3BGRWfxFPoDCTks9XxJk+bGqwi5qZ/7Vd+kYARU=; b=ZR9ssblJ6aPVHIUx
	P2Cz0TM9MyVxeIhCu3t20i3/FGY/m+zHbvEyILtzONNgvv/o2uSw1E1/axPckAL3
	t9M6CaaO8oxaJc0aw2hS2NZnShsqNoL+v50ehGdxxiKBuGkgzFevwQyhOGXKN4ra
	UYcS9rczffFTMdezCFHxB190VAebSqQ54rKPF+uevuwlYxpNs6P2XFtf2jp/LvAU
	+6BhTZGHfwIWxJXpx8SAwzhDtog0FElROZTKEJvg6ogmBC3JGUG+IT/iOl6a9XxO
	MuZMGVbwrJSgU2/QeeTo2RUPj5llh5Ier+zjHmNfeRJhry3lxhFf6syCFpAKji0/
	eKK31g==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4er76ejuj7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 17:19:45 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-c858e0cbca3so664039a12.2
        for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 10:19:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781284785; x=1781889585; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+God3BGRWfxFPoDCTks9XxJk+bGqwi5qZ/7Vd+kYARU=;
        b=MXRAdwIQ+sbi+K/xDR1z6qdqIfnlnCNo2Fe69wE6WM4BTq9xOlDe3QrMv8Gdb5b19y
         3nRlgLYC3jnlLDphzW/bS4Bq7PC9qNgibW0dRi2pqD+4hzsphQhbndXCoSLF006cKZFc
         BkNQLoeSrIfpHkAyIk1KgXQW2Ys3YnnakakJ4Cgwd0hPQp3JKZtjC6ycM0N2h9sTQJmS
         Of3bctQnpUAXlH3ndtTaEaCTv/rZRaYCxEavGmWIoqRwyLiW8nk+m+All9wknE4WKOwJ
         oW+AUJVHpZItxdtgSDK1GhB3MJl4vfk0RiykPctBdZP3ZxXtkxj2Ho2C6AQys47WQJJ4
         2yRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781284785; x=1781889585;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+God3BGRWfxFPoDCTks9XxJk+bGqwi5qZ/7Vd+kYARU=;
        b=bgR29H5+lCUMMtzuGlgyDXKr2LncgjoAL7a8IhaKxFftGKaFhGPsNAQswXSZXrrJ4E
         ZeraExD5TKt0y+aSc6XwrH82MBoPTKWYETcJ6b+AjN6IGQunXTPisZuxYefS28c6PRwz
         wYsvYq22H+ohw8DzJ1AH+jN1/OVDpe2eNwSgb1IiDM/L64QN9VS90YArPd+eHia9ZQBy
         KJguDWLK/Op0N+TdTvVwSyWfBdfCn8Z9M1g1McGik9fHGm5mi952EViiiOXx+Rk+Oyvm
         Pfl/xo7kS/n4HhxntmjFj+Vrh8/iRl1vAcp5o7TWuL2hcKggdPbE6brFN9qVy3l52hdi
         FRwQ==
X-Forwarded-Encrypted: i=1; AFNElJ9obGJXioezuj+jQtbdS3AnlFKubKIYC4mvwCH7DinjiJlsSyM5t63mdGWmvOIBZzofZWw0tkIAJvY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy1Q/sqowQwzLdEmbg5jlyRs3nBUOG6xhtLRTUmKGRgUbCU3o1p
	c88GI3N4loGqNCby9C95yOdj7fRG1Bcwdwzg/fJpgRoHEE5FcOppiZoOJtQ5P4k7hyuu4bW6+RZ
	9g7T/bnPbSuyj+GsikHZJsIwD7byFrBS2CGDi1tCl9UfpCvY1dJbzusNsJTPEhjrquUA0
X-Gm-Gg: Acq92OF6wJ1lDcx9dHrgrQpARL5PX2zkN/30w6WTslW4RuMwMZfgy26NZ60EEu5M0RM
	h0OdEyuuDhpdwLsrCAA+DfrK6LneBZJB9DSgunYwnFBz9lUFIz74XsiBkPF2R4+3+jxhDoMpthy
	TEp052UVmG16st4QCxUVNJZCmV+rOhzaphVXNWJ0bDubC9LRvghAUr/8DZnU6MqYB29s/vIjrZS
	Bx/Z9RQrQSV+OXKpg3DLys8TG7pNd4xRZM8LhgspRDa+kFvsX0YM7qLxlAQjDh9gk4Tm+S1SwUI
	Ne4GVZYxcMj53Wxtg5dJhG6qTtuID6le1CAYBMrTWOBUC9vbJ9ASU52WxduCTUdwg7FNe7bZ9EA
	z0aHhWSDmUEdyQ0rX2kpDxxuD6HgMHfykx7hUhBaTITGcMqwZ0Do=
X-Received: by 2002:a05:6a21:4d8e:b0:3b3:223f:d3f1 with SMTP id adf61e73a8af0-3b7962bb2e0mr572015637.18.1781284784260;
        Fri, 12 Jun 2026 10:19:44 -0700 (PDT)
X-Received: by 2002:a05:6a21:4d8e:b0:3b3:223f:d3f1 with SMTP id adf61e73a8af0-3b7962bb2e0mr571975637.18.1781284783791;
        Fri, 12 Jun 2026 10:19:43 -0700 (PDT)
Received: from [192.168.29.166] ([49.43.232.97])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c866518677dsm2627178a12.19.2026.06.12.10.19.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Jun 2026 10:19:43 -0700 (PDT)
Message-ID: <d47c504b-1aa8-44fc-831b-d09739b59ea5@oss.qualcomm.com>
Date: Fri, 12 Jun 2026 22:49:32 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/5] arm64: dts: qcom: Introduce Shikra SoC base dtsi
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org, monish.chunara@oss.qualcomm.com,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Monish Chunara <quic_mchunara@quicinc.com>,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Sneh Mankad <sneh.mankad@oss.qualcomm.com>,
        Vishnu Santhosh <vishnu.santhosh@oss.qualcomm.com>,
        Xueyao An <xueyao.an@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20260611-shikra-dt-v5-0-103ed26a8529@oss.qualcomm.com>
 <20260611-shikra-dt-v5-2-103ed26a8529@oss.qualcomm.com>
 <zzveallrfaeaclkes4dvexcxacyyew6mjgar5ctmhevh6ld4c5@caxx3gdr6g6v>
Content-Language: en-US
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
In-Reply-To: <zzveallrfaeaclkes4dvexcxacyyew6mjgar5ctmhevh6ld4c5@caxx3gdr6g6v>
X-Authority-Analysis: v=2.4 cv=O94Jeh9W c=1 sm=1 tr=0 ts=6a2c3fb1 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=g0pf6In4uVe9puqoFIUS9A==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=ZCscK8iRdYwrpkwA4MQA:9 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: o4cTmN523_pSsE8oUY86kGlRegA-WaLY
X-Proofpoint-GUID: o4cTmN523_pSsE8oUY86kGlRegA-WaLY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjEyMDE2MSBTYWx0ZWRfX80ALre97AIs4
 YmhZagbrIpJy6vFwHBsBxpsWQy7EbD+3ofLTBTzBNO/VcZ5LxcNHRJZYZHthLSSFaoWyXRhwEv/
 aJZstOhV+ZATgsWJp8cqPi2WQZI5/BMEoa3TgSGmW21Y1f2QVhj+bzsBx0CUvoUGNuQkBnRFYEz
 tKwhFBeUmvviSf6aEt4Qlp9JalQt5m5xsMkLh/xLU64AILFEpPO/GgoOWByBoIiq+HhNFX7cgqM
 81HQnAEsIvQTG7QULEOvGj0WWo6dwHYA8BpjtdwGtQKKWk1WGaOpkFR2lF8WhEfFh2lQ9Aah6Kv
 BQ2Imk/Kck00uvgbM/+CiJMBspwkDFn8XPafBjG6mYWib+NN0/5fVP93XgK1jWacP15Q8ZZ6eQW
 HNVpgbw2QVN7+MpLbUUpVfa9K1MJRMGL6Vo0Q+s+7fRloAE+tWxF0csf4y2R5UuMwHrxrZA6eHb
 hmI6y6ss76zi//4t6sg==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjEyMDE2MSBTYWx0ZWRfX+C3ugsXtsV+Y
 G2AuiA5AReCDESqs74tTax5Ni5v8Wvitu2eBLUo8qHKkc4gCCQSiNmime9Jt0tddMa+E2mOjxIq
 GdQmFzDdPk46X9fpnPmkKHBoQFCu8is=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-12_02,2026-06-12_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 clxscore=1015 bulkscore=0 adultscore=0
 impostorscore=0 lowpriorityscore=0 phishscore=0 suspectscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606040000
 definitions=main-2606120161
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260612_101946_992606_77F956FD 
X-CRM114-Status: GOOD (  13.41  )
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

On 6/12/2026 1:46 AM, Dmitry Baryshkov wrote:
> On Thu, Jun 11, 2026 at 03:40:09PM +0530, Komal Bajaj wrote:
>> Add initial device tree support for the Qualcomm Shikra SoC,
>> an IoT-focused platform built around a heterogeneous CPU cluster
>> (Cortex-A55 + Cortex-A78C) with RPM-based power and clock management.
>>
>> Enable support for the following peripherals:
>>    - CPU nodes
>>    - Global Clock Controller (GCC)
>>    - RPM-based clock controller (RPMCC) and power domains (RPMPD)
>>    - Interrupt controller
>>    - Top Level Mode Multiplexer (TLMM)
>>    - Debug UART
>>    - eMMC host controller
>>    - System timer and watchdog
>>
>> Co-developed-by: Imran Shaik <imran.shaik@oss.qualcomm.com>
>> Signed-off-by: Imran Shaik <imran.shaik@oss.qualcomm.com>
>> Co-developed-by: Monish Chunara <quic_mchunara@quicinc.com>
>> Signed-off-by: Monish Chunara <quic_mchunara@quicinc.com>
>> Co-developed-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
>> Signed-off-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
>> Co-developed-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
>> Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
>> Co-developed-by: Sneh Mankad <sneh.mankad@oss.qualcomm.com>
>> Signed-off-by: Sneh Mankad <sneh.mankad@oss.qualcomm.com>
>> Co-developed-by: Vishnu Santhosh <vishnu.santhosh@oss.qualcomm.com>
>> Signed-off-by: Vishnu Santhosh <vishnu.santhosh@oss.qualcomm.com>
>> Co-developed-by: Xueyao An <xueyao.an@oss.qualcomm.com>
>> Signed-off-by: Xueyao An <xueyao.an@oss.qualcomm.com>
>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> Signed-off-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/shikra.dtsi | 842 +++++++++++++++++++++++++++++++++++
>>   1 file changed, 842 insertions(+)
>>
>> +
>> +		rpm_msg_ram: sram@45f0000 {
>> +			compatible = "qcom,rpm-msg-ram", "mmio-sram";
>> +			reg = <0x0 0x045f0000 0x0 0x7000>;
>> +
>> +			#address-cells = <1>;
>> +			#size-cells = <1>;
>> +			ranges = <0 0x0 0x045f0000 0x7000>;
> 0x0

ACK

>
>> +
>> +			apss_mpm: sram@1b8 {
>> +				reg = <0x1b8 0x48>;
>> +			};
>> +		};
>> +
>> +		sram@4690000 {
>> +			compatible = "qcom,rpm-stats";
>> +			reg = <0x0 0x04690000 0x0 0x14000>;
>> +		};
>> +
>> +		sdhc_1: mmc@4744000 {
>> +			compatible = "qcom,shikra-sdhci", "qcom,sdhci-msm-v5";
>> +
>> +			reg = <0x0 0x04744000 0x0 0x1000>,
>> +			      <0x0 0x04745000 0x0 0x1000>;
>> +			reg-names = "hc",
>> +				    "cqhci";
>> +
>> +			iommus = <&apps_smmu 0xc0 0x0>;
>> +
>> +			interrupts = <GIC_SPI 348 IRQ_TYPE_LEVEL_HIGH 0>,
>> +				     <GIC_SPI 352 IRQ_TYPE_LEVEL_HIGH 0>;
>> +			interrupt-names = "hc_irq",
>> +					  "pwr_irq";
>> +
>> +			clocks = <&gcc GCC_SDCC1_AHB_CLK>,
>> +				 <&gcc GCC_SDCC1_APPS_CLK>,
>> +				 <&rpmcc RPM_SMD_XO_CLK_SRC>;
>> +			clock-names = "iface",
>> +				      "core",
>> +				      "xo";
>> +
>> +			interconnects = <&system_noc MASTER_SDCC_1 RPM_ALWAYS_TAG
>> +					&mc_virt SLAVE_EBI_CH0 RPM_ALWAYS_TAG>,
> Please align on '&'.

ACK

Thanks
Komal

>
>> +					<&mem_noc MASTER_AMPSS_M0 RPM_ACTIVE_TAG
>> +					&config_noc SLAVE_SDCC_1 RPM_ACTIVE_TAG>;
>> +			interconnect-names = "sdhc-ddr",
>> +					     "cpu-sdhc";
>> +


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
