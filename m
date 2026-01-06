Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D213C47BF2
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jan 2026 14:11:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zMGAghgFokz0iMq9ZlGt3lL0a4XDSWnQ6LK5xvahXeA=; b=ntwpvHKT4yb4pS
	a5eJ8RnnwhnLNrF8ysUlf5josyL9ri0njQy5gMiDRiTEJPcQQGeykw0HbzrKPDXmLRGIAY6yU4cgl
	y6Pnwu9DInX0xFXHaEgJcedmkakM6Ia7pzsyomAs/1HxsGBXe0JxCn/BMNFsabZA5NL4p0fTZGiRy
	1ckxeV6tTabLaW2BTfLaTsSFpjWl+f8HuoLCouFb7z/j/0zc9gJQOKK+roC7X51UBKdZc63e/K3jF
	+fO7Z/6dexDHNcq8LZ4fBnAt9FF5OGNd63JVjfndOMpKnt4RkUF+OVj7y9oKbWRe9ZJfykd1gzOwh
	wrPMyuIPnUkh7dYnJXXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd7mr-0000000DG5V-3lvb;
	Tue, 06 Jan 2026 14:11:53 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd7mo-0000000DG52-3SXN
	for linux-phy@lists.infradead.org;
	Tue, 06 Jan 2026 14:11:52 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 606Aiu0X3271952
	for <linux-phy@lists.infradead.org>; Tue, 6 Jan 2026 14:11:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	C6oOMkFH1icyX+oG4Y2/26sOMMPItpGKJI0jnUs3F/U=; b=LmNdD/guSW5DSi4s
	1w3S3tW1ZHT8h4PRC2IQEMhcklzJJTm4Zm4VQJdjFtQsMzyuXsNNAWQib8pEWAaW
	VanOTmQyhxO38IdghxIGegGHgAKZbZY/CMwyRnEKjqmdkeSMhrMTPwKMp1dCMoDK
	HcbNudAz5aiexv/ZYsIJhXcZ7/QgBmjAS1vd5Y04cR1VmdnXHffVWJLwY4R6PVXa
	kK1uPA4eJumFcYDjzBsZsiRXd6IHgnM9p8aQjmcEIwlpruOn1cbu7tl4VMHJtwYm
	am7gC1weHxGvRQQHaCLmZusYVlOhH8QYMeRvI7rQd3V5Fawzdehx37cE45kVKKs2
	nabjRw==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgfv03hfy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 06 Jan 2026 14:11:50 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b99763210e5so1968856a12.3
        for <linux-phy@lists.infradead.org>; Tue, 06 Jan 2026 06:11:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767708709; x=1768313509; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=C6oOMkFH1icyX+oG4Y2/26sOMMPItpGKJI0jnUs3F/U=;
        b=e/G+hoT152AgW3lenjXiLUo7Fyqm64luK6WwGXQERLwzivza293ei0W17zHgb/bG2v
         03/5FlUdqmx8d4mWjgPGYldBOLr9DDh4qAQd8DCsQiWqhMhodgM7WRQ2OmNshnyu9XEn
         FvoFIKMBCEuU0f3f1kolj1HpEAvf9A+fq7OoL2N7VDTue911Qh+9jstA8WpIcD/Uhluj
         1SfDLDxiyKAWaXJBvftG2TC6HGO2lpAxP+Yoe9LgsxTDqoIiBPScTjRjSm+goiRL+psA
         RhALbSubuHZc0yeboDrh4k8/y4SZgbp+9vdhTM3cPkZ6rXXkmLHPYqA1d2OeQ346P739
         Eqcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767708709; x=1768313509;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C6oOMkFH1icyX+oG4Y2/26sOMMPItpGKJI0jnUs3F/U=;
        b=nkF2Shea9NorYFn32tVwc740LnJhZZ2mFiLAMFzFSf0sKMpZIkQjjzpcGwIYDTSFgw
         Rc79Kn6O4A9T/Zs1EkzYbQTjwIx0x100vOisT3x00A7SK0nWuxuAQiDa8x9Vv3m6Ud+o
         vDHhJrE/adi0lAOrRIiafhpnqkBxFo+GvLq19qXfHJY5Shk7tv7YBzUh720s8ZPvJ1qw
         P8/K+QcRvi9/Rlnns/lVnlb6+3yElwghz9toYZt6XRCM69Ug5+dH5EyQSEffqd29tJNw
         hPIxHU1M2XHfZ3MVLDbXA/tAGvTaGmy1XIo/QhrOYGreTqSm0aUY04+7o+1zHx6AGByA
         EpBg==
X-Forwarded-Encrypted: i=1; AJvYcCXu1Lags8oFpH44C3Byz/yFXtkKhF/x8Z7paMCcrnAYH0EHFchTd3r0TQTMBSEms6XflXd4FuGcqiM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw2FrcY7WbLzdNPsQ1vHtcc7TpPS2WKBjUPu7Vfbt6Dpy/HUVCp
	EpNxZ+OMZCMiGLhHvuAq+SU+lR9xmqfbAWfsVlUA50B2n3ygpXewcUqP57Mb2wzA34nOc5lmBC3
	eoHSZ0L8Q+kcrYnQDihnP3rSll0RmPSFykUhvsPqVbWpovMxdDV19ftusmug8CGWufkzglpA1Mn
	io
X-Gm-Gg: AY/fxX6aKsT+bwVk0A4rgPJZJNthGBkmzEWDav0zn6Yp7rUmmuYMGpyprPT8s7Fq/w3
	1FI5U6WTXlm1F6SLF65aLHzSXPhqBF8wKhWNH0NlKwLXWJmXTSfyRsT5hMkSM65Ze77ZA6kv8DB
	6MDQaj89/WLUK+pCsBBTFfLq40GHfwjNo18ghS+CI7cEFmjWC2CNFnH5sBCfTIRP6xGC7rik3g0
	0aozKqmPPlqcK52qyC0nUn5i9fd/yqD1iSACy1643d6DBooOmYW2YGOEwysR5jIJwN79kHVOz1v
	KhyMnIlrTu6xc9FKBgvx8SB/sHfc/AENhv0CxVuaEmzFjrTfOCnSENNvbUbvvopOCq6PvPBVQJ6
	gTu+//wEnfxlg8vDvgaExSnqS3zbO6kcH1KsBwNqbnv/yg7P5EkA=
X-Received: by 2002:a05:6a20:9193:b0:366:14af:9bb8 with SMTP id adf61e73a8af0-389823e669bmr2747148637.66.1767708709190;
        Tue, 06 Jan 2026 06:11:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHkNJzHueZJopbOADbo0HQYswpQnnoxRAE8m7ARtjucQr/D5znXt4T4E4ZptoObFHwYrocHNw==
X-Received: by 2002:a05:6a20:9193:b0:366:14af:9bb8 with SMTP id adf61e73a8af0-389823e669bmr2747114637.66.1767708708558;
        Tue, 06 Jan 2026 06:11:48 -0800 (PST)
Received: from [10.217.216.105] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c4cc9e7e8afsm2568498a12.29.2026.01.06.06.11.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jan 2026 06:11:48 -0800 (PST)
Message-ID: <01468d87-0e2f-4328-89d7-d1fa6952d355@oss.qualcomm.com>
Date: Tue, 6 Jan 2026 19:41:41 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 3/4] arm64: dts: qcom: hamoa: Add UFS nodes for
 x1e80100 SoC
To: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        Konrad Dybcio
 <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
References: <20260105144643.669344-1-pradeep.pragallapati@oss.qualcomm.com>
 <20260105144643.669344-4-pradeep.pragallapati@oss.qualcomm.com>
 <7gi7sh5psh5v4y5mrbgln6j2cjeu5mogdw2n3a6znjtqyjcyuk@kxpe566v57p3>
 <e396bef2-e5bf-4e6d-98f4-37977d5d93ec@oss.qualcomm.com>
 <dbkrbec6t2agwk2swe7olz6zkhyphpbcl7dpmlwie4esvbbvro@s7ybpmaod3d5>
Content-Language: en-US
From: Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>
In-Reply-To: <dbkrbec6t2agwk2swe7olz6zkhyphpbcl7dpmlwie4esvbbvro@s7ybpmaod3d5>
X-Authority-Analysis: v=2.4 cv=e9YLiKp/ c=1 sm=1 tr=0 ts=695d1826 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=i9k5oBss9a2rpNCq0dQA:9 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-GUID: YgcKeqwQ1JEET-yPnv_muFgMNApNFhoc
X-Proofpoint-ORIG-GUID: YgcKeqwQ1JEET-yPnv_muFgMNApNFhoc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDEyMyBTYWx0ZWRfXx90zsieWvv6w
 wjoPZMJtQJLVr8mTKWRxKScEBF4uf8WjlkLo3OIbVhrYOSJFBkcyBJ3EuMEPvkUlGFFGCW3wTDe
 tEEwWRIjAlgzkyF4Y9S3yz//EDwB304XyOctxCvkbwKksVeVwsUHFZ84LhU0eQfe/2uKU8YoEpn
 pSaysDqmXkcDKxJyEP5ZSnCiNvt44a9zF8aSQtRbWYEHokhEo3M8ITXKKYyOfl0/6cE7YBW8umX
 bz1JdrT6Q9vJY2vAGqh5SiopxT4hU4Uk5exxbK8eTztrJGkaq1OH5OVKRNmDbk7YBb1op6cQ/Mx
 iClWUwqfE/1SckOZL3NkcPuO3zsRESrL9tha40KfEVQGSjO4bISODIS+s0/N4Vv4Vikazv1hnW0
 xmYPYmtgC7cDE/MlS5RpaKf/2efBwTaG5Ncs0FAyukA9WgF41qmpyjQNDYOgfm8XLxLx8ziL5wn
 Kpj8AB0MKMo7pPs2qxA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 priorityscore=1501 phishscore=0 malwarescore=0
 suspectscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060123
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_061150_878869_47083ADF 
X-CRM114-Status: GOOD (  18.30  )
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



On 1/6/2026 7:22 PM, Manivannan Sadhasivam wrote:
> On Tue, Jan 06, 2026 at 06:30:05PM +0530, Pradeep Pragallapati wrote:
>>
>>
>> On 1/6/2026 1:36 PM, Manivannan Sadhasivam wrote:
>>> On Mon, Jan 05, 2026 at 08:16:42PM +0530, Pradeep P V K wrote:
>>>> Add UFS host controller and PHY nodes for x1e80100 SoC.
>>>>
>>>
>>> Minor nits below. With those fixed,
>>>
>>> Reviewed-by: Manivannan Sadhasivam <mani@kernel.org>
>>>
>>>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>>> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
>>>> Reviewed-by: Taniya Das <taniya.das@oss.qualcomm.com>
>>>> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
>>>> ---
>>>>    arch/arm64/boot/dts/qcom/hamoa.dtsi | 123 +++++++++++++++++++++++++++-
>>>>    1 file changed, 120 insertions(+), 3 deletions(-)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
>>>> index f7d71793bc77..33899fa06aa4 100644
>>>> --- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
>>>> +++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
>>>> @@ -835,9 +835,9 @@ gcc: clock-controller@100000 {
>>>>    				 <0>,
>>>>    				 <0>,
>>>>    				 <0>,
>>>> -				 <0>,
>>>> -				 <0>,
>>>> -				 <0>;
>>>> +				 <&ufs_mem_phy 0>,
>>>> +				 <&ufs_mem_phy 1>,
>>>> +				 <&ufs_mem_phy 2>;
>>>>    			power-domains = <&rpmhpd RPMHPD_CX>;
>>>>    			#clock-cells = <1>;
>>>> @@ -3848,6 +3848,123 @@ pcie4_phy: phy@1c0e000 {
>>>>    			status = "disabled";
>>>>    		};
>>>> +		ufs_mem_phy: phy@1d80000 {
>>>> +			compatible = "qcom,x1e80100-qmp-ufs-phy",
>>>> +				     "qcom,sm8550-qmp-ufs-phy";
>>>> +			reg = <0x0 0x01d80000 0x0 0x2000>;
>>>> +
>>>> +			clocks = <&rpmhcc RPMH_CXO_CLK>,
>>>> +				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
>>>> +				 <&tcsr TCSR_UFS_PHY_CLKREF_EN>;
>>>> +
>>>> +			clock-names = "ref",
>>>> +				      "ref_aux",
>>>> +				      "qref";
>>>> +			resets = <&ufs_mem_hc 0>;
>>>> +			reset-names = "ufsphy";
>>>> +
>>>> +			power-domains = <&gcc GCC_UFS_MEM_PHY_GDSC>;
>>>> +
>>>> +			#clock-cells = <1>;
>>>> +			#phy-cells = <0>;
>>>> +
>>>> +			status = "disabled";
>>>> +		};
>>>> +
>>>> +		ufs_mem_hc: ufs@1d84000 {
>>>
>>> ufshc@
>> ok, i will update in the next patchset.
>>>
>>>> +			compatible = "qcom,x1e80100-ufshc",
>>>> +				     "qcom,sm8550-ufshc",
>>>> +				     "qcom,ufshc",
>>>> +				     "jedec,ufs-2.0";
>>>
>>> Drop jedec compatible as Qcom UFS controller cannot fallback to generic ufshc
>>> driver.
>> "jedec,ufs-2.0" was set to const in dt-bindings, dropping now will lead to
>> dtbs_check failures. is it ok, if i continue with it ?
> 
> I was implying that you need to drop it from both binding and dts. It was
> incorrect from the start anyway, so there is no ABI breakage. But make sure you
> justify it in the description.
> 
sure, i will update in my next patchset.

> - Mani
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
