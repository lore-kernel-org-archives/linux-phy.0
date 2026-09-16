Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22770C982C4
	for <linux-phy@archiver.kernel.org>; Wed, 16 Sep 2026 14:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c+Ea2OArklYop18h+Y8noQMHgISHLR22wEgqCgqIiJU=; b=YzMetD/y1vrdpM
	IgWHosjjHtXhuS2Lya0317sxvZA+vn0vVIoMJj+13mJSxJYMdRuCXiAGTF7hTTHMDT43/uwi/PGBL
	Se1SucG/25HamVZDsJ4G0CktIUBDoUvsrvzaFuR29WeBtZxj3DZDzAJJ5glCV31wkrK+fVsxRke0G
	P2OokF2TOBds4SO9t4nOzOAowDs9sBSD7ymjlF1mnC/aLDSDcvXdmdl57AWiBbHluMWuhX6Wxb0SN
	yQF4UGlgSfLGewxzWWPIDgh7/JAJYLysBvK6Ocx8xLRVvfIj3hOY7APaDKRE9lW0R+X7fpn2NC2BO
	08Z/+/x+oLGme18KZwIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6qwD-00000009T9G-2U76;
	Wed, 16 Sep 2026 14:48:41 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6qwA-00000009T8u-20XL
	for linux-phy@lists.infradead.org;
	Wed, 16 Sep 2026 14:48:40 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68GEYch63902507
	for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 14:48:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MClUT4TtavLkI7XCoEvk0+UCbwWQqhP2+uEc+y3ikwQ=; b=mt/+REEc4uj4Arpu
	s7vtuKUSHba5OAClDsfs6CGNm7/nRvrLP0LgtOa9LE4hRVDHvWtuulEZB6LY4sGS
	VtQS7D2mFYeOIJ2JbJ8vUBuWnFVxmOHco4w/XwSpWOEDQHDJyewbAvY1FsvWC9bC
	4houCnKE1u9gz2etICFZDjqsmCgU8jDvH2EROJtWI9R+AUYpZAdSxnNwna7yLoNK
	1mOiNUGKpMaq2zP4xluLwWZLy59+zViuX9ww0ADgX5Gi7cEJmE10Dv8ibdEvuxRW
	YdxBLiKNMtymqHT8hZ0g1NWP0O5gBIfe0mn9GE+bzND71F/iL9APNSfeyQuUlScg
	kOmUzA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gqpu2srjg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 14:48:37 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2d001671a54so109922685ad.2
        for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 07:48:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789570117; x=1790174917; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=MClUT4TtavLkI7XCoEvk0+UCbwWQqhP2+uEc+y3ikwQ=;
        b=BavgKNCqVNJWEbm02J33NTWEdrr0c2ui2gCR+J78CZRoXzdzcK2uaqvEswwxhuTt8i
         qrk8PKwpgMkWv4T1+yW/T5edZq9MeoqUPfhM7J9PIXqMIgn0hF7p7qXUaGvm1LniecWA
         pMu5HpdWO4zsMUoZsIjcHNcXMlwoVJxyKb2ntFBiuZDq5IcHlTqPWf4QYvZNzrHBgTR4
         vmvNMKSBwovG7HozozkQLLUoM8IOIBg1k4gS2mcMW+X5yMWovblDw5ex3QCaJTK1Vvdg
         0CuKIn6mxvrLZnLvoUfJyXwtqiQZKzy5mX44k1r+WWvSaQBuYSEVO8gRWenCXrGw181X
         o8sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789570117; x=1790174917;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=MClUT4TtavLkI7XCoEvk0+UCbwWQqhP2+uEc+y3ikwQ=;
        b=KXceYS5/zwr5HfluMze0CZwbxSzrLTYDErMXMkvdWbf/73i9n7fU5/EiNxQKBQgGBw
         2LSkngh8dhtCZGbpUD+7mNAviQaoxwSn0JiKbp3rvRQSxp5s86s6Mcub2R3kUQU5uqbv
         eQzSD1Bu+uVCP65E6NM+0vVtUIJQkU4TIXdPsEyT47XudjbSGrnA7fA9YvoOKblqtVAH
         Bdbym5ARI74fmR8G42rvuuX7DmA1Dv6TryJ6aLU1tvSRh7mhGsDM1NL3ODc6E4Hfoq0O
         Jx3u95sq+kp4qCIBgO0cFQRjm59SMZrtAzt4tJnt7ZhtJcbr8T/gWYEZIYvoEqzQsE0m
         6Qaw==
X-Forwarded-Encrypted: i=1; AKwUvByzRO5rqpOKVBqxNoi+rOphf0d8ES5LUWf9XqRYxigepJvobWdDbeV9f461IqwkhqU5yI0wblmQVPQ=@lists.infradead.org
X-Gm-Message-State: AFuF++nExOeH3l7220bck/Tka7IL32FtBafEaGIsWHPqBhuk/z6iK0jK
	Avfof0S5+BdhxBbZI1bmxSVjC/O0QA2+xefHm+a8LW+xxXB4kzOhwDCv8i+3TLK0vLUsHx9VUEf
	drxaFj+rTCH2wPLIor3saEY7gMJo7DWKUjBSWxWHZcfLd6LH8GK4J3YBDHbM8MLv8sbKM
X-Gm-Gg: AYBFou0CbnI11dBlUrA+rdOVQh4LpJ2jT/ryZD17ov0DPYd4AOEpqGhUlJwThLofp9o
	ArFL4mGLkVYHtXt3KUr3giLG1KSml5rYTOq8azm+oG2+d0scEgfyYqOu3JeJo9Di8gGMETMwejX
	Yt22SD/J2ptVE8/t49aJdpR14Vk9F5gApqz+smkoHA/3qXmooN3APABjuadht/7cKht/gevPsXw
	UelAVswcKX1FTayVYU9dxmk1Q2SXOYoiUftjmSDnj01Do53VVJlU7/XXOSqbP+Z+53/H9Eu9qVs
	TCdFo/XT8BLtliS8YVNNbgWg1jA4iTCIWNqvXI7nz0cOGoh6NmnN2Zb4V+1CHn4/1DH/rS6enkd
	vL0M/ggsjRnDsLCjxxqu5/8+pxhMyt+kbLVN9cq1t
X-Received: by 2002:a17:902:d582:b0:2d8:d4d0:7932 with SMTP id d9443c01a7336-2dd8e7aa6eemr64251375ad.22.1789570116624;
        Wed, 16 Sep 2026 07:48:36 -0700 (PDT)
X-Received: by 2002:a17:902:d582:b0:2d8:d4d0:7932 with SMTP id d9443c01a7336-2dd8e7aa6eemr64250545ad.22.1789570116191;
        Wed, 16 Sep 2026 07:48:36 -0700 (PDT)
Received: from [10.216.41.130] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2dd89f02fc2sm13008905ad.59.2026.09.16.07.48.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Sep 2026 07:48:35 -0700 (PDT)
Message-ID: <db1414fd-2202-4dd6-a420-7dc505b91f77@oss.qualcomm.com>
Date: Wed, 16 Sep 2026 20:18:28 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] arm64: dts: qcom: glymur: Add UFS nodes
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
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
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        gopikrishna.garmidi@oss.qualcomm.com, jagadeesh.kona@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        sibi.sankar@oss.qualcomm.com, Taniya Das <taniya.das@oss.qualcomm.com>
References: <20260911-glymur_ufs_qcb_enablement-v1-0-b9fc5e2ee99a@oss.qualcomm.com>
 <20260911-glymur_ufs_qcb_enablement-v1-3-b9fc5e2ee99a@oss.qualcomm.com>
 <chmhun7dqj5flvbkzpsoz3pdbjrcbplel5rqfvj3fc6ztaw2sa@4o55fods7yaf>
Content-Language: en-US
From: Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>
In-Reply-To: <chmhun7dqj5flvbkzpsoz3pdbjrcbplel5rqfvj3fc6ztaw2sa@4o55fods7yaf>
X-Proofpoint-ORIG-GUID: mrrVh7jwC58WO4jCMMiw7oukRGhhwehg
X-Authority-Analysis: v=2.4 cv=NelzRGD4 c=1 sm=1 tr=0 ts=6aaaac45 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=VTBryuNdlAkkI53dnxMA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: mrrVh7jwC58WO4jCMMiw7oukRGhhwehg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE2MDE5OSBTYWx0ZWRfX23htthNVkC4U
 XrJJHOrRkOPLIq4LtArA6wH5SWCdM2PVzvgDOysXGl4kw356F6fB8DWWcxI4H6gZUmWYN+uSPKj
 aETcV+Ry2IHMJvbyewyHrgnb8QYFggucPHyO6+a3YWlNdKyIsYVQBUqWZ01BKGgXrh1oABdnojA
 HUxreWujr6VZ+JwNGRDv8fBb3IFFhnj9+5QO72s26c4mdyP4wP+TqXKqf/FGG762Z08E9e89vJQ
 g/xH0kx/qMWe++/h/ma0MOYQOvROokNGNpfW7FSh+PxIKB5rhplHrEctg6MPXjAwC0FnV/liSRv
 9VFf0hsiDAOxRynTKNLhMemKPifpw4jDX/Kix+3WuD2Jiilp3VPB5e4QwG+IaM6bfihmVOETfPq
 rqVnkQbCS15yan9i5FvFMptOdfZ6NzAnNjfz2yWuipR+dCVecztv4PSG+C+p6qUgHCZ73nHoOCr
 Er+68cR4VsEwk4lrQOw==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE2MDE5OSBTYWx0ZWRfX7Lc3kz7Xlavv
 gVJ9WFwhIx4w6ADAAah8E+4rzELaZBZzW03EM+iEHFbpIARB86B3ke+FmUHaAw42SbYUrQ6Di3F
 xV/WIZWPp2NxDeO9A/1cj4UJiRxB8cg=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-16_02,2026-09-16_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 impostorscore=0 spamscore=0 clxscore=1015
 bulkscore=0 malwarescore=0 suspectscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609160199
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260916_074839_450744_088C28B3 
X-CRM114-Status: GOOD (  16.06  )
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



On 9/14/2026 7:36 PM, Abel Vesa wrote:
> On 26-09-11 22:17:07, Pradeep P V K wrote:
>> Add UFS PHY and UFS host controller nodes for Glymur SoC.
>>
>> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
> 
> One nit below.
> 
> With Konrad's comments addressed, I think it looks good, so:
> 
> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> 
>> ---
>>   arch/arm64/boot/dts/qcom/glymur.dtsi | 114 ++++++++++++++++++++++++++++++++++-
>>   1 file changed, 111 insertions(+), 3 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
>> index 624a9edd602c..7bbc804ed340 100644
>> --- a/arch/arm64/boot/dts/qcom/glymur.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
>> @@ -812,9 +812,9 @@ gcc: clock-controller@100000 {
>>   				 <0>,				/* QUSB4 1 PHY RX 1 */
>>   				 <0>,				/* QUSB4 2 PHY RX 0 */
>>   				 <0>,				/* QUSB4 2 PHY RX 1 */
>> -				 <0>,				/* UFS PHY RX Symbol 0 */
>> -				 <0>,				/* UFS PHY RX Symbol 1 */
>> -				 <0>,				/* UFS PHY TX Symbol 0 */
>> +				 <&ufs_mem_phy 0>,		/* UFS PHY RX Symbol 0 */
>> +				 <&ufs_mem_phy 1>,		/* UFS PHY RX Symbol 1 */
>> +				 <&ufs_mem_phy 2>,		/* UFS PHY TX Symbol 0 */
>>   				 <&usb_0_qmpphy QMP_USB43DP_USB3_PIPE_CLK>,
>>   				 <&usb_1_qmpphy QMP_USB43DP_USB3_PIPE_CLK>,
>>   				 <&usb_2_qmpphy QMP_USB43DP_USB3_PIPE_CLK>,
>> @@ -4103,6 +4103,114 @@ rng: rng@10c3000 {
>>   			reg = <0x0 0x010c3000 0x0 0x1000>;
>>   		};
>>   
>> +		ufs_mem_phy: phy@1d80000 {
>> +			compatible = "qcom,glymur-qmp-ufs-phy";
>> +			reg = <0x0 0x01d80000 0x0 0x2000>;
>> +
>> +			clocks = <&rpmhcc RPMH_CXO_CLK>,
>> +				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
>> +				 /* UFS and PCIE4 shares the same clkref on glymur */
> 
> On top of Konrad's comment, I'd drop the "on glymur" part entirely here.
sure, i will remove it in my next patchset.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
