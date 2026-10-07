Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C184CA5FFC
	for <linux-phy@archiver.kernel.org>; Wed,  7 Oct 2026 11:00:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C9yLubqXeLYxJU2ILHrDxZccr0r1S8faFVu7KSIyclU=; b=QY/u4elSXzxF4o
	/QTlEd723gpGJvM1Cj/T1MuMpyYtg21kh8+LHuLzon6a/shC2L592Ha/dyj9JkhX6EUTnSMMH2ohU
	yNkrHT0MjKNDsydo9EMKtkKMBbLWhIl1d2MLL/RXPoyRrYKGMMdBtc4Nhfr/UtUdjSsgW4AbCb8Wu
	d5/bMptYH8OxAef/QpT8CpK0IFJgblo4nApLR6ImatzB6gtW0p1MPG2zvhQ8jxuPDLLcobTJJkpua
	Dz+Vo00zhU2s7oi0sdxCiZ7r5V3nX4omsPz/e0syupxE7XUHxEac2NAO+NAynkZd1V1rVRP13QRcd
	6eVeJVel8rBx850gJ/pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEPNp-00000002Fwx-0gtk;
	Wed, 07 Oct 2026 11:00:25 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEPNn-00000002FwN-1xxG
	for linux-phy@lists.infradead.org;
	Wed, 07 Oct 2026 11:00:24 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6977jfH91873620
	for <linux-phy@lists.infradead.org>; Wed, 7 Oct 2026 11:00:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Snd8Nbf+SiQhM0aPYxj0+20rz+GkPAR7nvSsrKWQQBo=; b=oU1AcnTuBUKPMdOX
	9jSWS530HrKrixtTyv3jinPa15dqNfDFg7UkF4MI8j56piw+vwI3Q1KmAw9K1Mxr
	WjsEdeiT1mCL0IH3bSTjABJ7mzknGXYBmCKEZ5HkYmg3bC4uXH2nTZyo/TlgspJJ
	SCyIvFNOdDcWsrRZjZ4WArTrfFZ2r9bNRA3xZFayD1ICpr8Yywi0QmJlg2qpVbf/
	v/iMMOtxB3Ar+XDIl2MCqkeMm2pgB8FCgD4QOQcDhnh61/Fhdzry/8RInu9jTrO7
	SycpXpktNObg3gZzDyBv92HTka/JRNjn20Lt9fQKDQg8mrft8HiBcD0ITOykMCFR
	JY0MWA==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h5fw8s1qn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 07 Oct 2026 11:00:22 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-cc1eb205d31so4433668a12.2
        for <linux-phy@lists.infradead.org>; Wed, 07 Oct 2026 04:00:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791370822; x=1791975622; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Snd8Nbf+SiQhM0aPYxj0+20rz+GkPAR7nvSsrKWQQBo=;
        b=b7P+raI8bznuVvwsZZBLAj1MeGla6LqBY6c1Um97Lscprx+dWXlOGyunuttYYx3AO1
         Jf4mzwtAuWsfJ+TAji2f08boNIxKXjP2TNJr5HkqXy65cFMDCFnsfV0EP7CqwtIBSBSt
         saq4D4G+isQvh6xUTwgRp03E+bZzZCwGVfhI9oPvkbxWRciNFAzdqIdQlyqPCJkMu7oB
         TKdcMJw2yNO1yVczfuMBvPtjUgy1vx7GLYfuhaqMkaLIYsK4v/EXQTYxjujgDJMg2mSl
         hdwtEiLnAsu6206TUGKSTsuZg5Bl4LxlVqfgMzDvNYIVwgO2wkDUeWWE4F8nLDuZ4lKc
         La0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791370822; x=1791975622;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Snd8Nbf+SiQhM0aPYxj0+20rz+GkPAR7nvSsrKWQQBo=;
        b=jxfK/6OqO7Msc5YrizoZkBZx0H9ljwxlKJQhMW4+r9/XRrq2UByp0hQhBWNLMxjLTi
         M6WDe65kCpuiBFsPLl7GoMgcka9mSqT+BiH2I7uzxS5Us2NMv8cMElTNVQ+GW1ZOXaTg
         dv3GIWn7KX6b1PCef+uAMSgbuF1mxeXHqJrTQI+lBHX0I3rHG7jIa7+SoEtcpJZ9EVer
         OQOdVFgCvm9wjBFjMFTIvn50ILIuHe6WLXW5fSkZrOkz+cKbO0fl5Qln+TQk61nl287V
         /yrKO37kVvD6DXqe5IeUTo0Cji7pCtM8BYXDIzcPR7OpcZsq0sY6sddjyQstBc/cdrCb
         S0xA==
X-Forwarded-Encrypted: i=1; AKwUvBxRAvXuU6lz0ANHXygFLYC/Bkf7oWTXYZRg0vRcNhKGAYHrYOa/azIn205BCBi2kZulLHYCZ2Ru3Ew=@lists.infradead.org
X-Gm-Message-State: AFq9FYLobmql9nZhWXSNqKPnHVuBJcuVJWu9co+SUAoJHP/7pqiK8XBR
	/Rcj89U8auIwlsMbIfPqiZZ6toURMTWFcmZTOBbIf7vguamkG9aGHx3hQARKw0REsVlnvesOjbO
	caDOUPY8bHFYmyVrvBfa0tUK+ZnZcu2W5oDVM3yxxYEntSJAc5rqgcnboXtJBXrT1zuwB
X-Gm-Gg: AYBFou1tQoioqln47OCs7mGIBhMxYH7g9Ed2TfQkPivjtPV9nJ+0ZOMdoGWmGDob2IF
	WDunYC94D7fjVxSz60qyTNkS+ee7BNRB0dshf1gb+mdDV8T9hOlwgFBt5RGXbqS/eFerMnn+AKF
	NzCLZhygrtc4zlK+C3BdbvZFabLA191I9z22Eu4qlgqf4qDvzPoT6lqlXNaPyBc5VZAhjn4rC0T
	Iq+qUHWYaPX2SLQv/E9WpZF+Wcbnw1Xkq/9Zj+vlI2PIxtlSvY6BZEXBrZMxufmqBaFwzIaLram
	zuCg5M8XzFRGOWyFL42jU81S4RJZ32lYnMd5iLOKzNVQBgzRAZJ9/14FT9KHIpKTpincpz+IhMb
	0qRHSg+gAC0bOeOz0J2R0mlYn3vWfF4rVixcRPagO
X-Received: by 2002:a17:90b:5887:b0:3a7:250:386e with SMTP id 98e67ed59e1d1-3a8a07404admr1701797a91.22.1791370821877;
        Wed, 07 Oct 2026 04:00:21 -0700 (PDT)
X-Received: by 2002:a17:90b:5887:b0:3a7:250:386e with SMTP id 98e67ed59e1d1-3a8a07404admr1701772a91.22.1791370821390;
        Wed, 07 Oct 2026 04:00:21 -0700 (PDT)
Received: from [10.217.216.105] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cd0a92d5ebesm1232959a12.12.2026.10.07.04.00.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Oct 2026 04:00:20 -0700 (PDT)
Message-ID: <297690cb-64d8-4e7d-9d97-66680f6a2b99@oss.qualcomm.com>
Date: Wed, 7 Oct 2026 16:30:12 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/5] arm64: dts: qcom: glymur: Add UFS nodes
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@sandisk.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        gopikrishna.garmidi@oss.qualcomm.com, jagadeesh.kona@oss.qualcomm.com,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        nitin.rawat@oss.qualcomm.com, sibi.sankar@oss.qualcomm.com,
        Taniya Das <taniya.das@oss.qualcomm.com>
References: <20261007-glymur_ufs_qcb_enablement-v3-0-84cf4f861415@oss.qualcomm.com>
 <20261007-glymur_ufs_qcb_enablement-v3-3-84cf4f861415@oss.qualcomm.com>
 <a5p5gszuadvnvqcwffg6y55khdfhacwhegaxmmiwm72sfid6ex@cdwuo6sdmkgy>
Content-Language: en-US
From: Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>
In-Reply-To: <a5p5gszuadvnvqcwffg6y55khdfhacwhegaxmmiwm72sfid6ex@cdwuo6sdmkgy>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA3MDA0MyBTYWx0ZWRfX3b+c1Dvt24Ta
 qMYsAqy5bGHx/oIAwU0bwGLlCtwpYWAVI8cOzatLqmOpBZhPDGcCM9oJJbpzbXPSwK4RGfZknGo
 XolCpl/YXyl6tDQsqu+zG4KokhiYaNM=
X-Proofpoint-ORIG-GUID: fZ6xlG6nkKpmesBNBqIkxnUXhcCZRiAF
X-Proofpoint-GUID: fZ6xlG6nkKpmesBNBqIkxnUXhcCZRiAF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA3MDA0MyBTYWx0ZWRfXwCbCdACgwIlV
 /d5+NVB6UW/UHO3kQLiSwXQt0obXkj62Gs1tz0VaH8I0cAx2I9/d48UHiEQQEXxm6lsxvrhvIA5
 7VoGdyKV9zHj0h6hcP5+CKyxNJ1FheiHjIq3al0EstOo6JcKCkAD/8t36A6QpDXctCja1Kv1YTi
 XWh1891Fu0k+ZGtZGHfQi5GdfCmgGoWPldmwsZ+UIlKcofYSX2aDHdR9TnNiE2ceQne6ouByoNM
 v1SFtF7m7lFZmTEPMP740CFvMEdi+kti8jNm8o6syNxWFXV9eyiHAa282PWEZZYq/o5ft9Yy3xO
 nGYW8aw3iHRmP3F3ZRPeHPp62jsaqcQVukAYuMTeC2FqEC49ctajoTbDTj48nz8BUHWdoJGDUQH
 kp3jTkosHYHvQOYQxj2wJu0r3dxQwudZB9EgzBBvpLTNxU8bP1yjfCE4LZSy3QVmfnjFzGubS+s
 5lRVB7itQHrm8pK+D6Q==
X-Authority-Analysis: v=2.4 cv=Af0kjHXG c=1 sm=1 tr=0 ts=6ac62646 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=SwwKY9vyf4oML-p5yksA:9 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-07_03,2026-10-06_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 clxscore=1015 impostorscore=0 lowpriorityscore=0
 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2610070043
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_040023_517658_770DF396 
X-CRM114-Status: GOOD (  17.27  )
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



On 10/7/2026 1:13 PM, Dmitry Baryshkov wrote:
> On Wed, Oct 07, 2026 at 11:59:36AM +0530, Pradeep P V K wrote:
>> Add UFS PHY and UFS host controller nodes for Glymur SoC.
>>
>> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
>> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
>> ---
>>  arch/arm64/boot/dts/qcom/glymur.dtsi | 125 ++++++++++++++++++++++++++++++++++-
>>  1 file changed, 122 insertions(+), 3 deletions(-)
>>
>> @@ -4102,6 +4102,125 @@ rng: rng@10c3000 {
>>  			reg = <0x0 0x010c3000 0x0 0x1000>;
>>  		};
>>  
>> +		ufs_mem_phy: phy@1d80000 {
>> +			compatible = "qcom,glymur-qmp-ufs-phy";
>> +			reg = <0x0 0x01d80000 0x0 0x2000>;
>> +
>> +			clocks = <&rpmhcc RPMH_CXO_CLK>,
>> +				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
>> +				 /* UFS and PCIE4 share the same clkref */
>> +				 <&tcsr TCSR_PCIE_4_CLKREF_EN>;
>> +
>> +			clock-names = "ref",
>> +				      "ref_aux",
>> +				      "qref";
>> +
>> +			resets = <&ufs_mem_hc 0>;
>> +			reset-names = "ufsphy";
> 
> power-domains = <&gcc GCC_UFS_PHY_GDSC> ? Or is there
> GCC_UFS_MEM_PHY_GDSC, which is simply not described in gcc?
> 
> If there are none, it should be reflected in the DT bindings, together
> with the explanation in the commit message.
> 
Yes, Glymur SoC does not support UFS PHY GDSC. Sure, i will update the DT-bindings accordingly and include the explanation in the commit of next patch series.

>> +
>> +			#clock-cells = <1>;
>> +			#phy-cells = <0>;
>> +
>> +			status = "disabled";
>> +		};
>> +
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
