Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F16C606A324
	for <linux-phy@archiver.kernel.org>; Mon,  2 Nov 2026 09:13:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=pS6ZcH3/;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=cZQjO3hw;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=WIPHYRxa
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=/i1ijB85VdppKCbArY+2ijwz1ljrJP0bDvlVM9IQxwI=; b=pS6ZcH3/2x7+4prVHA6XeNfyeY
	Gy7cv5iiexIqlmfrhHgZ6AFKUnYzZ1TfDrQLuGT5I52nYyGSDkH2qxvvPY6GiC6k7f/0IpW7FNch8
	GX0fTvaMXMIfoiEDdSmD3/QcYuqB3hDBAQz67M7OR+S/DX4r4PYo8zlifVs/oUn4WkeYoF29eL1s/
	SupBxNiZfW/kembePbMKNaDylO6SIL8QAkJtCYmjIoeyaE9gw11TSFLDMis+BnIGKES3ZA9C9lc+b
	5NkPdpwvoXJw0Q4FbdZzpQEbv9FRGKhpbpQ/KQ+aNIMtnV+pmwVbJddXUACbQ4VdyTgkc8cq5WTGB
	8hPQP/7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNo68-0000000FxEb-3cAG;
	Mon, 02 Nov 2026 09:13:00 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNo65-0000000FxDb-0SAi
	for linux-phy@lists.infradead.org;
	Mon, 02 Nov 2026 09:12:58 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A29A628213981
	for <linux-phy@lists.infradead.org>; Mon, 2 Nov 2026 09:12:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YuANGxMXB18zd3C6yO64dyenoMbuafZrLrdBNYEuS8E=; b=cZQjO3hw3nLs9dH/
	zSZV9+cgwxZAkEUaGEvBXzh/nOZyind3r8cQZEGYw2hzPJI232zX9ODU2MGqKIlM
	ma0z0l8zvC8ICQqrEzzWnCzmeLhoR3oBwPLGRJzQF05HDuz2tdKx+QHv44SxC9MP
	3XtFf4EeySzCImYOrWpbzaxTLbn0D0pb0oXEAlaPCxxpM60HAdghgzp1A75rXsGA
	9VWbacfWzQ4UeXEDcWTByyY8sd0hDQ58vvaHcY1vdC42pUt8ncFzQkwPoplSnj1N
	GOCAwy3GL/l3vQjWaXnlT2DXX4pBay68dxy80DjxzaBPWLJiBVZFK/TRMZafaHNC
	CClp0Q==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hpmf1rtkn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 09:12:56 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-cd60e4e8bc3so1706972a12.1
        for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 01:12:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793610776; x=1794215576; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=YuANGxMXB18zd3C6yO64dyenoMbuafZrLrdBNYEuS8E=;
        b=WIPHYRxa1F6thzAzxzFGfHKyhrm2lLOJBWp8lDoQqI4DAktMpq+qTO91euhfBlaJpu
         fv80PZptfEJz4SMAeeKtXzdchjhfL45R/bOmmDuCEp3JU/vr9D6pfHZU8iI6gxAXQBJm
         0YYRwNhhKjintNdzoIhmQD563cpb56IADV655edZuR9FTjBhC2vU51cKxMyILSo/c5NY
         aEw7ZKEDi5rnHd8N64UEMhQY3tItPkYNFRdZEbMo4AsQZYKXB6tAtMXeBH+ecmPzg3ev
         qz0TAXiedaOvD+2ZT2v7x0bWrxBP5k2auc8BJ840XdAwkF6XGI5jwHs1nCrfPAsbXpfg
         gGPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793610776; x=1794215576;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=YuANGxMXB18zd3C6yO64dyenoMbuafZrLrdBNYEuS8E=;
        b=UqMu0ceRzGIdipSLG563SdjcbwT6D2R+7Dpn7nvWRME3/isST3+NntH/wUwDd9cjtL
         aCbX/2MEPLaGh5LVmtUUC1HufdfalRN9mrpM2k//Tzwl6Y0F8xxjp6CNgWuI7JFdxxsa
         wbbg+o4O7fEh3UVfDIix1BLXZXgW5PXhIN0HSek3Cs6kEnCGaxoBXhPkZNunJKQzIh7o
         gcldDOEZeo3ZMOKnkhn+AxNEmPIyoHwyeVWDEtp/BhhbfdOgb3FlFQucJGcMJeaLc29t
         B6vx4rbDXF3ufkzZ80HLvvIqtHPyF/lS1GGXve+44XdiK6KY7BE5Pe/Yi0ukwKeZxFQj
         jRbw==
X-Forwarded-Encrypted: i=1; AKwUvBzsIkKfOY3X5g8L4XQjDb6cGL6likwzqqtN4OvvyOL9i8hx4RIc3NdGNHBsb+T3HyQzK0D1i7MUG5Y=@lists.infradead.org
X-Gm-Message-State: AFq9FYK615yE+4e54PktPhmm4o+jUS49SyAtF3/+dcASaAqoLD1qA/Oz
	kjDzjmVb1nNa82cbbrH6RmMV67rrJ5HczHWqNiu60fhdToWQ5tuDP2Yzony2mETOSmC0S4G85DH
	7lLryDFVHSpgoBXlVHyuPKOLh+ggxCMUYXB3mVhjkiyd57IkGXYY6/r0PqUEUnQ3/KHh0
X-Gm-Gg: AYBFou3ZmnnDMtcZMaXaFmYfziNCcGuYPIRLeT/Z4tQBVrCtytNClcV+Y8RDn3sM2VH
	uyhwOfJopsIP0bLYMq0Apre9FOVL6Mo6mcRi/d+BLJeCwxrW3cQcEvqBRvZLcmQf0MxmR946WGv
	plDLRgmI/2JQmi3TDUwyAEe4GPKGC9mbu/kQfHD2IutoteM3+Ber12UP9SiK6feNl9xW/+htc6u
	Edvn7AqrWG4iCJimrHokrHR/rGxfdf8rRd9B8/82N+ZpqMYo6DMnwg0ba88X4jWMd7Tx5BX/zIL
	mlzc6agHQY8PGwSYqX4tiD/iS/B+wNyHjjBF96pb00kV5Mow4snznflLd2Z/qrtNOlzkI4BHcIi
	jjGWBNN2TTkQJ3tfx5l7qPMa7c4g8hcX5bbpdde/cStWnu9bYoZVW16zzRvvXZTQqJ1v94/Nz9s
	ldv3y9REMlbHty6O0ihevQq5U3xYa9RhGY
X-Received: by 2002:a05:6300:48e:b0:3e2:afda:c37d with SMTP id adf61e73a8af0-3e928dfa35amr6749590637.60.1793610775629;
        Mon, 02 Nov 2026 01:12:55 -0800 (PST)
X-Received: by 2002:a05:6300:48e:b0:3e2:afda:c37d with SMTP id adf61e73a8af0-3e928dfa35amr6749561637.60.1793610775138;
        Mon, 02 Nov 2026 01:12:55 -0800 (PST)
Received: from [10.239.96.176] ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cdb096b7ba2sm2983347a12.8.2026.11.02.01.12.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Nov 2026 01:12:54 -0800 (PST)
Message-ID: <387c4b13-718b-45c5-905c-31c8e441f759@oss.qualcomm.com>
Date: Mon, 2 Nov 2026 17:12:48 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v23 03/15] phy: qcom-mipi-csi2: Add Kaanapali support
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
References: <20261028-kaanapali-camss-v23-0-95f250b18612@oss.qualcomm.com>
 <20261028-kaanapali-camss-v23-3-95f250b18612@oss.qualcomm.com>
 <z3oqnmse3plnnntqwxrpi4xozyuxn6a47qc54agspwuzb4djqz@hzz3lbcmkvlv>
Content-Language: en-US
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
In-Reply-To: <z3oqnmse3plnnntqwxrpi4xozyuxn6a47qc54agspwuzb4djqz@hzz3lbcmkvlv>
X-Proofpoint-ORIG-GUID: QjVb3p_5WK_CanOfA4of0_xCjtL7nOqq
X-Authority-Analysis: v=2.4 cv=bNaDs/+Z c=1 sm=1 tr=0 ts=6ae85418 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=x06h-Ri-Sg6DD3z3xmEA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTAyMDAzNiBTYWx0ZWRfX8at0EF7gTrUD
 WMtB60FJV95rFGDOU+kCO+HDOaYFeJ7wa4lLVqJ2exenK90LjFKXAEP5rbBO7YZC87pSosrqyKJ
 fJSIQn7xR4RxD3WgALuFZCCRvQi0YXD52jB/L5qOas4o5Yi6H/4nC2a3wZFdj71jTW1rcQVbULR
 rzcojzOstCcYP7l/KtyEMR5yIVzTxq7IVIFYCJpxdYNyGYgCBVlzGPjkIYPB4pmLyMqtGy+6qWX
 SjWIYysiDJEDpno+wsmr7/Zwv6ICXL6XfOOpJxIet1YFQHVhXQ6DzQibRdoBDGSHhPaOWa9ZS/B
 dKm5eZdzRY9lmxaR1qj3JVlIgVFGGKbwmehMAbgYxV+qlZyB/ArFc9dr1tUrgVNU8xUSrrC5LCr
 RAKC7Wzq72vIQ7FFpKLPeuVI+Xgwl+W81nev/vW298lYqLXcrHDu9Hq6+H6Dz4JyzLeSWWzb1/9
 jFrY6D4FyzVMLI2efNA==
X-Proofpoint-GUID: QjVb3p_5WK_CanOfA4of0_xCjtL7nOqq
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTAyMDAzNiBTYWx0ZWRfX93/o/4gD2GNh
 wbIrWX1vK8MTW/MoYFX3TKOmX4YCFwa+d7WuBm+Sl0/5QBnAwt19BJp7G5wnwen9Lp/A4WdoqWh
 3zwAcc0SqYjCgtSPLeAaDSNNa1uOi3E=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-02_03,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 spamscore=0 lowpriorityscore=0 phishscore=0
 priorityscore=1501 adultscore=0 suspectscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610300000 definitions=main-2611020036
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_011257_158855_6434C953 
X-CRM114-Status: GOOD (  16.02  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 10/28/2026 11:26 PM, Abel Vesa wrote:
> On 26-10-28 08:20:37, Hangxiang Ma wrote:
>> Add the Kaanapali 3nm configuration for the standalone CSI2 DPHY
>> driver, including the Kaanapali common status offset and power domain.
>>
>> Reviewed-by: Bryan O'Donoghue <bod@kernel.org>
>> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 16 ++++++++++++++++
>>   drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c     |  1 +
>>   drivers/phy/qualcomm/phy-qcom-mipi-csi2.h          |  1 +
>>   3 files changed, 18 insertions(+)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
>> index 8cd331cfb4b3..658a39463104 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
>> @@ -389,3 +389,19 @@ const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_4nm_x1e = {
>>   	.genpds = x1e_genpds,
>>   	.num_genpds = ARRAY_SIZE(x1e_genpds),
>>   };
>> +
>> +const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_3nm_kaanapali = {
>> +	.ops = &phy_qcom_mipi_csi2_ops_3ph_1_0,
>> +	.reg_info = {
>> +		.init_seq = lane_regs_x1e80100,
>> +		.lane_array_size = ARRAY_SIZE(lane_regs_x1e80100),
>> +		.common_regs_offset = 0x1000,
>> +		.common_status_offset = 0x138,
>> +	},
>> +	.supply_names = (const char **)x1e_supplies,
>> +	.num_supplies = ARRAY_SIZE(x1e_supplies),
>> +	.clk_names = (const char **)x1e_clks,
>> +	.num_clk = ARRAY_SIZE(x1e_clks),
>> +	.genpds = x1e_genpds,
>> +	.num_genpds = ARRAY_SIZE(x1e_genpds),
>> +};
>> diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
>> index c0a4fa20eaf0..aff9e66f0352 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
>> @@ -444,6 +444,7 @@ static int phy_qcom_mipi_csi2_probe(struct platform_device *pdev)
>>   
>>   static const struct of_device_id phy_qcom_mipi_csi2_of_match_table[] = {
>>   	{ .compatible	= "qcom,x1e80100-csi2-phy", .data = &mipi_csi2_dphy_4nm_x1e },
>> +	{ .compatible	= "qcom,kaanapali-csi2-phy", .data = &mipi_csi2_dphy_3nm_kaanapali },
> 
> Nit: Shouldn't we sort by compatible here?
> 
> The rest looks good to me, so:
> 
> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

ACK. Thanks for pointing this out.

---
Best Regards,
Hangxiang

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
