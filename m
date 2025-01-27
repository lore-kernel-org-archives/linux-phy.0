Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 760E1C02188
	for <linux-phy@archiver.kernel.org>; Mon, 27 Jan 2025 10:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3I6hXQHeHnBywFJuVzJYySWEiaeVUARkM0DayLRh4TI=; b=1H38fls5DPKkaJ
	anFmVUwMIClnlIqCqxVMFji69F7WNnq+H7dkNXKis6AybPlQ83CcK+dXlwhDfFPhmVyEeHitXVFtN
	Iru4CGtfDOXHNXCMZnllAvX6O+jOkbd+09vIFkVg2bBPJ8q/lNjpATbP7envDYnScVB0uhdmLNQqk
	OFNCOecSyHXXH0z2nQDvCBku7WZeqGrScVSaLDMcKe/T5JHnBUs8+/3/BL0lbbAyRlnL2/KWexUfQ
	NR4CRzxHb8+CeFtwHN0eQCK9W12JfNMlwKovhKMiWIqtGbjpbXLnJ17cdBcTdYKFsiM9oXECGj81S
	fHZfOSQpkN4RA/jJq3+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tcMRQ-000000028ig-43x8;
	Mon, 27 Jan 2025 10:34:04 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tcMRG-000000028g5-2YUa
	for linux-phy@lists.infradead.org;
	Mon, 27 Jan 2025 10:33:55 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50R0FCRu021393
	for <linux-phy@lists.infradead.org>; Mon, 27 Jan 2025 10:33:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XO2U/FigudNpheyHXoXOoPHFQtk40Wecm2MIHQ46a/o=; b=IgfXBgRuoBpyzHLm
	87T/vhiyRMqeaMA8yDAoh2daETixNkgOlovwRezDOvWS62leBJ6onvmyP8/2W2Vs
	yaPhQkqGsrP0OxTjrYJ97Bius2/8L/kiC+YlOfB5g+/F8fD4KsgPJKlgd1hN4URI
	wesiJdh/lGXLr8P+/20hVMv4Nogm3FANwqXW6TJ3uzJVyQDlO6f0rbDIItiUCSI+
	VOqOvWf+tiZsRKwysHBwobzu8bkC9JklHyePd9urGKC/u2hhPAl3UHLFi6Q/JPuI
	IoX2MRce2lT9eOU1Wqo6SYE498VlswjJeDMNGJQG8dhUXuOR995TqiEGMuRHaez9
	w4/bmA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44dhu9hthk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 27 Jan 2025 10:33:50 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-46b3359e6deso11555031cf.2
        for <linux-phy@lists.infradead.org>; Mon, 27 Jan 2025 02:33:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737974029; x=1738578829;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XO2U/FigudNpheyHXoXOoPHFQtk40Wecm2MIHQ46a/o=;
        b=ZoEN1g0MTE1knurUOeI8bdyasgqRBMAO8ybR6Up/RNJ0bOO+N6b7wtwukGTeTkcotQ
         BQBuyHgOk9OKEQsoLVC10LUgsx0sa5Z+0cUyZYB3BojcVvOq70PP0aBByMYSHyymuXsj
         abvB20oL+ZgEOT8fipuJrzD/Wk1/eiMHwNtSzkARh2DHcvtAr108Rl1bmHIWIyBh9AiQ
         0bWfcE5XyRX8l8gCz3KQj0M1JjqHvR3yU5s0P+WLBtWi/P15S4Tt6+9jHP8PzU16Ujd0
         ZyErn/q13E/4Ag7rizTOox3/Zze1TY45Q6KmmlR5G3KD3eqaZUuPHbvbZE8dX+5CfYYG
         Okcg==
X-Forwarded-Encrypted: i=1; AJvYcCXI2LKhY6fTUZDRfx87YIXCRCpSfg8hDVZBZOqqROBf8pmh7TOm5zvM2YPii3cc9JWJsxdQCukpoIM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw5jSJRH/KWElHaoHjQkKp/6E562c8b5bwAJFsPQNIqnL2v24xB
	k0PnEfV0syVP8AW99kybN8wie/LAo33KIbnVoI9G4Q8hQctDDmW3kkyaVGt7KxhggmC0LFDdMvk
	lglghQNrQ+h+OHnnZWHSQcAaSm/hV2cq+1WhFbhLT8TKQD/ocOmMbxNW4FOYej9um
X-Gm-Gg: ASbGncsVk42QYjJ5ntYiM16Y4zWA9NYI27HB2L2yCruX98wlGzETPKiMGTdC2AkQ6A+
	Q/jIma5ys7Kp/minrEujbQFqn3ar1n7qVpmV48PfsToDZI+7kCuTTZDe2LKnHXrSmhnk66obWRR
	LTGyBz+4wiZEz46p7QfsJkNZOaCr/psJ78a89oh3MjZY9151BjQVJeLjXNtyYxsa26VExF1HIbN
	PkQurWp3LnnJxOWPS7dsxNTcCDp70SMw1WjWL6sNfMXGJHvwEqsg+TH6U0yL4D2mwEPzlGRFuJ7
	FRQKMaEEw9iXvu0DTAxdEzPefuWOi+SJRXhUaez0Xymo1pael21hbFCdRUM=
X-Received: by 2002:a05:622a:1803:b0:464:af83:ba34 with SMTP id d75a77b69052e-46e12b66e5amr244210431cf.10.1737974028799;
        Mon, 27 Jan 2025 02:33:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IESlsEC/uSt6b1mkLIn8XmnzDYv15ZT2kv/xQfb7JQbhSlZz5OYDm9Co0pS+uRxerAZbiUQAQ==
X-Received: by 2002:a05:622a:1803:b0:464:af83:ba34 with SMTP id d75a77b69052e-46e12b66e5amr244210171cf.10.1737974028369;
        Mon, 27 Jan 2025 02:33:48 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab67b28ad13sm513244266b.41.2025.01.27.02.33.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jan 2025 02:33:47 -0800 (PST)
Message-ID: <e697cc99-e96b-4e84-8b70-23c5ef015a0d@oss.qualcomm.com>
Date: Mon, 27 Jan 2025 11:33:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 4/7] arm64: dts: qcom: ipq9574: Reorder reg and
 reg-names
To: Varadarajan Narayanan <quic_varada@quicinc.com>, bhelgaas@google.com,
        lpieralisi@kernel.org, kw@linux.com, manivannan.sadhasivam@linaro.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, p.zabel@pengutronix.de,
        dmitry.baryshkov@linaro.org, quic_nsekar@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
References: <20250122063411.3503097-1-quic_varada@quicinc.com>
 <20250122063411.3503097-5-quic_varada@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250122063411.3503097-5-quic_varada@quicinc.com>
X-Proofpoint-GUID: eCg-RHcI5yT68LUDbEdu-TQ8iV2DAl18
X-Proofpoint-ORIG-GUID: eCg-RHcI5yT68LUDbEdu-TQ8iV2DAl18
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-27_04,2025-01-27_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 impostorscore=0
 phishscore=0 adultscore=0 mlxlogscore=999 suspectscore=0 malwarescore=0
 clxscore=1015 mlxscore=0 lowpriorityscore=0 bulkscore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2501270084
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250127_023354_660991_6A349AB9 
X-CRM114-Status: GOOD (  16.83  )
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

On 22.01.2025 7:34 AM, Varadarajan Narayanan wrote:
> The 'reg' & 'reg-names' constraints used in the bindings and dtsi
> are different resulting in dt_bindings_check errors. Re-order
> them to address following errors.
> 
> 	arch/arm64/boot/dts/qcom/ipq9574-rdp449.dtb: pcie@20000000: reg-names:0: 'parf' was expected
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq9574.dtsi | 52 +++++++++++++++++----------
>  1 file changed, 34 insertions(+), 18 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> index 942290028972..d27c55c7f6e4 100644
> --- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> @@ -876,12 +876,16 @@ frame@b128000 {
>  
>  		pcie1: pcie@10000000 {
>  			compatible = "qcom,pcie-ipq9574";
> -			reg =  <0x10000000 0xf1d>,
> -			       <0x10000f20 0xa8>,
> -			       <0x10001000 0x1000>,
> -			       <0x000f8000 0x4000>,
> -			       <0x10100000 0x1000>;
> -			reg-names = "dbi", "elbi", "atu", "parf", "config";
> +			reg = <0x000f8000 0x4000>,
> +			      <0x10000000 0xf1d>,
> +			      <0x10000f20 0xa8>,
> +			      <0x10001000 0x1000>,
> +			      <0x10100000 0x1000>;

The unit address (the one after '@' in the node definition) is supposed to
match the first 'reg' entry. So you need to update that and reorder the
nodes accordingly.

Krzysztof, is this acceptable to pick up given the reg entries are being
shuffled around?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
