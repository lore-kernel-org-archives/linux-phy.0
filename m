Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDA1DC982C4
	for <linux-phy@archiver.kernel.org>; Wed, 16 Sep 2026 14:48:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ionlqcfKdpdfrTVjImA6UyoyxehMmK+/dPzGoc30G2A=; b=JmU6FgNVyY5CKn
	/dlye8UMJZPdtro/EsBcfCWRwoC+4D1h2La797eOHngPcGvC0ih+n6MmqbrcUzi+r5JWr4yBmpTL6
	d91dtrGxeE6NoeojO0+dLp+SY8mkYtfEA7XQhDxyQA47OZyqvNBOoEh2ap2AaCRF/a/n9V8alXaaO
	WJUxzHumNAdA6LZYum+QNnE0GlhUfCv7L2HnkJjZXiLofP8eJkBZRN+9kS+cRlVtIuaqZ3zjx9Aj8
	pERjGPZnpX7JR4DfzP7OlGAcg48e1fUuWd+kgGJfNVV2cSMPFZJSrbXgEREN+OABCbBBcp107jBRu
	oGl7GsGHeE6EjiWWqPAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6qw1-00000009T7e-495i;
	Wed, 16 Sep 2026 14:48:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6qvz-00000009T75-3Da5
	for linux-phy@bombadil.infradead.org;
	Wed, 16 Sep 2026 14:48:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=F3Zk5y/DSVzAwqyVWlk3wiBDRckqt0orU3V64+Tdiko=; b=WRlRTUCGeIDY4k2DvW8H7uU0nO
	4qMp2eIotmGZHVAm6KM7tU9CnSoamJtg6WMKf7ufzwp7dIV0wgNiotsJsXsaRT4ZQMb+oROLLfYp2
	8LNG3vgK+7tcvXuvG9Ak58U7H8P+WqBJSSrk0vKLS8RswarFlq0SlTqTWjv837BA1FwGCHKqtpwrg
	Z90DDzr0+bZth8c6pKkuXD0LLOfMFOmP38ts0eZrG2BJESaLWK4Q36KJ+CMHvk81oywTYjL49A/uU
	i8JHBBts2uVSixQ+2PUqtqO93UDjfn9hOVCSNkZdPT0P64eNSluakT2zvykQXv6ZR2Yd2++yTJiGI
	Q6c6rgpg==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x6qvw-00000007zrx-0W3f
	for linux-phy@lists.infradead.org;
	Wed, 16 Sep 2026 14:48:26 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68GEYYOh2279340
	for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 14:48:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	F3Zk5y/DSVzAwqyVWlk3wiBDRckqt0orU3V64+Tdiko=; b=CErg3NHQ5/A/gFRM
	XuajNl4sOMsDLEvcvDIi7rL9Qd1vv0elLFlcPo0LmQ8RkEMZ79zQWnrZLF/Ccg4L
	53GC9x5kt0KOmWuCAcha8+5wIwDPBdu1CCXUORNoaK3su25gPyxmvL8f2WFkCuFd
	/FiBIE06xo8AyCZejnTFclez9AkxSbAekThQ5KqAlwtyWKdNkzWUg4OCstKwZJYV
	hKuQVkDj86IKHP7UGNMPTDClimSEJ3+kloI9QTrIjxJX+Dvv9ZrNaYomMPSw9IjB
	2xV2+YmrLF+HODBeZu5cluxFJzbvpLZhD65WNigavO+tS0qvNvJvO0Akm18wtRsl
	WISxXw==
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com [209.85.161.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gqthnrrmb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 14:48:07 +0000 (GMT)
Received: by mail-oo1-f72.google.com with SMTP id 006d021491bc7-6c1538bc4c0so3550204eaf.0
        for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 07:48:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789570081; x=1790174881; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=F3Zk5y/DSVzAwqyVWlk3wiBDRckqt0orU3V64+Tdiko=;
        b=XiDn1f4ZYBkyAdLl//56QDhcQe5ToprsRBlNmorXT4ktS/kxOWyFhrsYouBTfpg3WU
         gDK9PlxQkFXQVvWB5r4U59U10w6ZXHrm9UmdMPM5F8C6jLhAJNBKXTxnztlTG995ay41
         8/gzWzWTvrrXdgWp6O9ujX6xjYQnL8JWVCZqjFMpVeuguMxldNGO/ILRnpYP/ygbcrYX
         DsQn6g3x9qsYUlL2wfs8Wh493T6ypBYmbbFiiqSImYVJEnzzw96crm4uvUYKJFsZoxLX
         tfWis/j920HiunnctVx8tj3U4cKpQgv3FtFAAwGXXLTKreDZ9j1Ef4YPWAfc4rhPrk0Q
         Q4VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789570081; x=1790174881;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=F3Zk5y/DSVzAwqyVWlk3wiBDRckqt0orU3V64+Tdiko=;
        b=o/rU8V3FgL2Qnf4cHszhx80Iq/pNDK8KoA5yxxGUqPZPHsOk+hr7R2T03vosSF3uhS
         5otWDzadifCwU/+yNo7Lfq7LcTa1dUMlruQ0kfbQdu2uc84zgCrGDKSfaFGy9IANo6sv
         8mcYNvhJCWvLH+vp2zTuTcM1KU6x4O52sulfzfL6RxbbJH9LiaSjJF/isAxJpzJxM0U7
         WU8C4F78aEkioKyKX8CV350BHzi4VAhMgt+NHkXG5dukS01+rMM7ZZyDxaBxY7x5x6yV
         1g1V2RiND0z3kJVLS3NX4toiHqTliHLYuyhD6wWIbVXN2XKcWWwu1mgzbRsz9F0SqsX1
         /geg==
X-Forwarded-Encrypted: i=1; AKwUvBz1IaHnokQBOJcAhd8+S4zHlIDfbzj2cZq9WljcDrTlYjCNPIhFw3cG0Oo/dU3jPakDkpdQ8ismGp0=@lists.infradead.org
X-Gm-Message-State: AFuF++kpdTSHU8on7CJ/HxMXoTknWqAhOjTKeF1QrK2q5+UpMz2L92NV
	+Rg7EXb9Hwy2E/l6Ytueww+vXQiFRDWAjC5LTcrbQRmiGXZYBJPjZaNnmbrX8m9w4HlSLfG9Uyz
	YANjVgmEFROXp1WAhoZRxHlnucMw9m3+6+wxRKuMu6VJokCsp+QB4ZYmvsFzFw9/BL8An
X-Gm-Gg: AYBFou3tmkVEufT/cvYWR4vKymwFNrGugPV5ZKcfwjBgCgU0VJSAmYsA2+AEOLNx2jL
	FLmVEllzaGTDeC8ZiC3cZnldd51hkJzlc7i/Q1Tzc+fqg7D//rKysKyeRpFHGl8O1y/7QXmm64U
	jX1ikEWrP/+AT1vjpu4F1j7C5InKZNdvtudiUG4SHVqlF5juWg3p8hSZSVFYCNWtXYMeqnCS14+
	/B5fyHuX1Ui/rXxXaPEBuIEENZKlGuMnik2g7QZIyOTH9c/rmNJrez8dx3/bf0munV4dFAxI3lb
	bw8303F6eg8unE1JkYuZRXGiE16mcLbiTHXP2oRoFu2ZcMhIUHMPMW1jrBKiUgMT4phnhI0GPsf
	HzcCMpMtftbztZqZtd8l2bFqswi8dflPNTlg5e811
X-Received: by 2002:a05:6820:308f:b0:6b1:afca:5c78 with SMTP id 006d021491bc7-6c7d39f91e0mr2890672eaf.32.1789570081239;
        Wed, 16 Sep 2026 07:48:01 -0700 (PDT)
X-Received: by 2002:a05:6820:308f:b0:6b1:afca:5c78 with SMTP id 006d021491bc7-6c7d39f91e0mr2890645eaf.32.1789570080802;
        Wed, 16 Sep 2026 07:48:00 -0700 (PDT)
Received: from [10.216.41.130] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-33bf5b030aesm8554016eec.26.2026.09.16.07.47.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Sep 2026 07:48:00 -0700 (PDT)
Message-ID: <109d7c44-f58a-4462-bdf9-7c22759b4569@oss.qualcomm.com>
Date: Wed, 16 Sep 2026 20:17:51 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] arm64: dts: qcom: glymur: Add UFS nodes
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@sandisk.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        gopikrishna.garmidi@oss.qualcomm.com, jagadeesh.kona@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        sibi.sankar@oss.qualcomm.com, Taniya Das <taniya.das@oss.qualcomm.com>
References: <20260911-glymur_ufs_qcb_enablement-v1-0-b9fc5e2ee99a@oss.qualcomm.com>
 <20260911-glymur_ufs_qcb_enablement-v1-3-b9fc5e2ee99a@oss.qualcomm.com>
 <381607db-0e7e-4d27-a992-64cd722c23fc@oss.qualcomm.com>
Content-Language: en-US
From: Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>
In-Reply-To: <381607db-0e7e-4d27-a992-64cd722c23fc@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: WgRDE6Z8CzHcl-LoV7tsDVq_pybH6r8x
X-Authority-Analysis: v=2.4 cv=IsKL47/g c=1 sm=1 tr=0 ts=6aaaac27 cx=c_pps
 a=wURt19dY5n+H4uQbQt9s7g==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=GD_5qw-SCA1CiScccr0A:9 a=QEXdDO2ut3YA:10
 a=-UhsvdU3ccFDOXFxFb4l:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE2MDE5OSBTYWx0ZWRfXxivSdYJGS7Am
 HFoZwsQ+PRyxxVkKLMkNaS5F30XEO1OZdBQLx3UkN69jLNbiQn09H+1pV3pd1KygjnD6OVy+Vzb
 4KAHAUuFpZrq/poy8mgr+Z2WV5oDwsuUhZ3CG60GPmwH/hNYC9zUTM4zKPQyIDiweuOOivJlZhO
 2o2vgkqwZfWY3rWfaAS6he9wOyrhf/GzY3pZGRf4VNS6LFnDL/l74BphXcbz9Ipt5oi3SHv4+XE
 eRT+u3YQTEyw4ytZo3a8VgusEO8ek+zBL/H+KaXfH9vBYMj5mORTBWfPq+/oNy7pVMHqFI+/ovM
 M/B5h3oFw/xaO60LXoWEM879Ifu+mZC1F/yz0ksjsbuT5y9TcQe6xheJcS5rnG/QnxAWKAxtau4
 zltn5xMhGNrJlnvTeivMX0b+OtWJ5mHtPDHIMdgXhziaZrxHQSJN+54GFAevYoxmezw6L98dem/
 7bzUXU10PdHwQdHbBjA==
X-Proofpoint-GUID: WgRDE6Z8CzHcl-LoV7tsDVq_pybH6r8x
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE2MDE5OSBTYWx0ZWRfX0MwHaOedWXoQ
 JuUKHW/ce0T04jrf3Z2UUScEzJq/IK59DOQTJI01Y9sGGansrqncKCNRk7LQTSXHr5/xiW/UEEW
 I+EIaviSKWu7aBOPA2oKEr0xlM0eop4=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-16_02,2026-09-16_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 bulkscore=0 priorityscore=1501 lowpriorityscore=0
 adultscore=0 impostorscore=0 phishscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609160199
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260916_154825_354403_6ACA6133 
X-CRM114-Status: GOOD (  17.54  )
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



On 9/14/2026 2:44 PM, Konrad Dybcio wrote:
> On 9/11/26 6:47 PM, Pradeep P V K wrote:
>> Add UFS PHY and UFS host controller nodes for Glymur SoC.
>>
>> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
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
> 
> The comment is no useful, please drop it
sure, i will remove it in my next patchset.>
> 
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
> s/shares/share
ok, i will change this in my next patchset.>
>> +				 <&tcsr TCSR_PCIE_4_CLKREF_EN>;
>> +
>> +			clock-names = "ref",
>> +				      "ref_aux",
>> +				      "qref";
>> +
>> +			resets = <&ufs_mem_hc 0>;
>> +			reset-names = "ufsphy";
>> +
>> +			#clock-cells = <1>;
>> +			#phy-cells = <0>;
>> +
>> +			status = "disabled";
>> +		};
>> +
>> +		ufs_mem_hc: ufshc@1d84000 {
>> +			compatible = "qcom,glymur-ufshc",
>> +				     "qcom,ufshc",
>> +				     "jedec,ufs-2.0";
>> +			reg = <0x0 0x01d84000 0x0 0x3000>,
>> +			      <0x0 0x01da0000 0x0 0x15000>;
>> +
>> +			reg-names = "std",
> 
> Stray \n above
>
sure, will remove it in my next patchset version.
> [...]
> 
>> +			ufs_opp_table: opp-table {
>> +				compatible = "operating-points-v2";
>> +
>> +				opp-100000000 {
>> +					opp-hz = /bits/ 64 <100000000>,
>> +						 /bits/ 64 <0>,
>> +						 /bits/ 64 <0>,
>> +						 /bits/ 64 <100000000>,
>> +						 /bits/ 64 <0>,
>> +						 /bits/ 64 <0>,
>> +						 /bits/ 64 <0>,
>> +						 /bits/ 64 <0>;
>> +					required-opps = <&rpmhpd_opp_low_svs>;
>> +				};
>> +
>> +				opp-403000000 {
> 
> There's another (201.5 MHz) OPP at SVS
>
acknowledged, i will add it in my next patchset.
> Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
