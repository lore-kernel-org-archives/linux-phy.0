Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2ED76FF8864
	for <linux-phy@archiver.kernel.org>; Wed, 29 Apr 2026 07:29:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fODAWv76GcrGbkWbHKj7bA/TGXi4+RsZywsIdQEzu6A=; b=Mvaf1RIVbv83er
	iZ63pIlcmz5vauCTBiXGlu265EGQJGEMK704BmtsYFaAD3UruIQmpnbquDAVXdTH45j2K0JuqRQRu
	LfIPqifJId0DsrDXfEsZzFx7+jkvT/yu68hh6iQY2aCOt4RklSOn6b2UOdGlec3Rvztrj/0/+ijCQ
	SiMIs34oj727C41jwXnSyWafsE6VxPwjSIervUuuGzskH2wKrfTAgEYjYw8n8nPT2mRYooTw5iCro
	pJahMNRDAPvSCP/IJw3KUB0zDCOIqqcPh0SXik6FSjEA+ho/zPRwouCVhEi8+MDT4zkZudAilhvP6
	5eyGYj7TlChS9QgHnReA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHzM2-000000039gD-2sbU;
	Wed, 29 Apr 2026 07:29:06 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHzM0-000000039fb-3dTU
	for linux-phy@lists.infradead.org;
	Wed, 29 Apr 2026 07:29:06 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63T0o5oV2007838
	for <linux-phy@lists.infradead.org>; Wed, 29 Apr 2026 07:29:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vZS5IKfeim46O0kOx4wtbnE1w4xKhmH/WYNeMSKk7vI=; b=pIpLHBN45STyaJvA
	lHiOwPg05MsjFjAR42LEkLxtfXCLpkPwZqi2lwdihpWRKe0lqitEXfQSBo0sJdZv
	dRKR+TdSREJLmYu+ql3Y55fHHCGPcFHZw9PHBFaaJ7x/d6QoXG7qR2sCCbksDaL8
	Qzg0Az+65C0qQ1g/nG6Ub76g+bXNaq2Rkjc6bjFoITYhgDqc331Uh5Gyv+tkK/Jk
	gqxpBfdIAcYQIiDTfyd+kFt8ogA28zYBPtcObQfEC4NPwR8lKnTFK84FkAPlc0TP
	vAxXN9N2svJduRal/ofnZ6vz741kiHD3WQ6C1wHWN4LFIo6+ySHMb0uyACD71r/0
	1SaKcQ==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4du7sx98ss-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 29 Apr 2026 07:29:03 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-2d93379001eso30585738eec.1
        for <linux-phy@lists.infradead.org>; Wed, 29 Apr 2026 00:29:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777447742; x=1778052542; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vZS5IKfeim46O0kOx4wtbnE1w4xKhmH/WYNeMSKk7vI=;
        b=bpHEy/PtxFwXJqVDMnvrdT1Ae2S4M3SvHaA42hCiYNpg7eQ1z5hRorg6/P1gVEa/Bg
         H7od3THj2vCH+nOkIixJPs51JtcE32B3hz/c8wHVVqdEj+vRmiUOESoG2jk5OWGVM5PH
         d1y99EbdeTvyAywy0W9mteqUssZIRhhGLL8ZIkr1eQ+ODKjrsCKrrNlGvWKSBHhsjurX
         k/OA23vt2sbcukjkWStGLVzb0ypml2VbMogKzR12ob2Puw0eRWN7br+JBSR/hElHRgjb
         p+coxC0qTNovffJIV5BgFGuKQKBzJk5Dv0J1oaa0iL2C6cPptL69mJgFrCCBLd+CCEa0
         Yv5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777447742; x=1778052542;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vZS5IKfeim46O0kOx4wtbnE1w4xKhmH/WYNeMSKk7vI=;
        b=FjYbrqzUwg6HQXk92Aoeq2bX1Mi1jt/6muVHt8NySMc3+NfA3EbSqL5/Qb71RS746x
         8HIVc4bp2cWnxdvtbMoiTBCnnKpsvwewuN0yHIMWza7WrQs0LqEWVXnAWI6hkGmdHih/
         rBxq5f0AkB/rLC7Wq6GzyMq9KMx1IBNP4Xy5iz4BweUhZHLyIm9ztaBI6i4qE65XeNql
         w7pDk3NnDe0IH+aJP2nl9qiSPwtteOK5XdOlTX9Ownx1pKv6zFnkjXD7ZjhZ+FELcif1
         L/10yiByB9MIH6Uir7EtDSHGYC36xYtNvBROGJA0igPY0FQqjGYKLxIWzDUte/xqWoJ/
         ZCTA==
X-Forwarded-Encrypted: i=1; AFNElJ/guQzgKFXEvFZvPLz6baWJ68n9aiDZqplUrpkbDFQ7BogYUt5oLauz3W/uCokCZAZPgJKHC8zNkJg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz46V+P/tGMjXTFj/7hKEroavZhkb+MZNyLsrjIrfban3a0i6La
	xLz4fa4zb5EAL1/8lZEFAAjpQ/IVJEvP0LRLvD/gVP7vQKkgBNTSmjS6nuEdFC6wJoXcd1M7fW7
	g8GQVFxbRkGinZJRVKy9NoZq4NZ8dDdKYa773TUFiwc8wgvct7dXsUDmgyzo1QyLrXkJY
X-Gm-Gg: AeBDiesGvI0/YfmJwBvRLq79x4+efFs8i4/3joL7So9rF2GHvDdGu7deVOrk7xAzwx7
	bY16V2e0qCUpZDiL0+DRuSeNE6SwAAW6fE+cxoBt9/KK4zUj7Ah2mLH4TscPVOO6dNB05tfhkLw
	Qv9JOuNwq7MF9OIcHTfSj0pWt1TYDreykBSwiil1haFgeRnK2QbacI73gnzhruZilZPQsMPlrxB
	w7ClOG5pl1CjZbEHPOk8OjwBRKonV4JvWQoOQIPZUNPSH5FAt7dKl59fIInIrmZoIGL11B7mjEQ
	yVpfVZ+jiichVAb/mB773P/u+pDuIhYXmkPM6sv0j1QSqK89AD5eNy3SfjvLObOlQjh0R0h9ted
	krm/p4YKCtLktBdN7tPAlVoGl8xdBVRKwfpMsrdgMMTYBHuY0W83rNfRHBRR+pANTCEo2s8WbxS
	L32ZALxXfkDBfs
X-Received: by 2002:a05:7300:238f:b0:2de:6fac:f666 with SMTP id 5a478bee46e88-2ed0a118364mr3139731eec.27.1777447742299;
        Wed, 29 Apr 2026 00:29:02 -0700 (PDT)
X-Received: by 2002:a05:7300:238f:b0:2de:6fac:f666 with SMTP id 5a478bee46e88-2ed0a118364mr3139710eec.27.1777447741601;
        Wed, 29 Apr 2026 00:29:01 -0700 (PDT)
Received: from [10.110.80.19] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2ed1bf8e281sm1158944eec.9.2026.04.29.00.29.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Apr 2026 00:29:01 -0700 (PDT)
Message-ID: <1f803f25-5f90-4f09-8634-5f27946eb295@oss.qualcomm.com>
Date: Wed, 29 Apr 2026 00:28:59 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] phy: qualcomm: qmp-combo: Add support for Hawi SoC
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: vkoul@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, robh@kernel.org,
        neil.armstrong@linaro.org, gregkh@linuxfoundation.org,
        konrad.dybcio@oss.qualcomm.com, abel.vesa@oss.qualcomm.com,
        wesley.cheng@oss.qualcomm.com, krzysztof.kozlowski@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260427214217.2735240-1-ronak.raheja@oss.qualcomm.com>
 <20260427214217.2735240-5-ronak.raheja@oss.qualcomm.com>
 <s6ortwyjjoq6lsxjjykbbshg2rczchtol4ntmxipcrsqufvsby@whwxtlnn74id>
Content-Language: en-US
From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
In-Reply-To: <s6ortwyjjoq6lsxjjykbbshg2rczchtol4ntmxipcrsqufvsby@whwxtlnn74id>
X-Proofpoint-GUID: ClSwv6COAVv7Y5LbWJgRcHs9mSrfNUU3
X-Authority-Analysis: v=2.4 cv=eeANubEH c=1 sm=1 tr=0 ts=69f1b33f cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=XcaHRVNlpVRLYJM2DHQA:9 a=QEXdDO2ut3YA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI5MDA3MyBTYWx0ZWRfX/XwDv87XyX9o
 qndH3TSk+PzDS+CTFRkP0mKo4V/Gm8TaM9uhiXDPs3n6HCmgaCUoRt17ahdDGpGtYidRLkBEphQ
 30+tr3Oy3/GKmfDYksAvQCi16epxTkHYphxanjV9Xpu0vr4rgikmX4WcxZNpzPIyYt+jmU4nAYl
 FLMF4LDDlj5Q1qtAbwLjn/tO/yilLVAz6HMYsTe48ZFQRgetMVMsyYZrHUVLPwxORn6HbDs2HE9
 ol3FPfIIW38cW6RFO3awtLGx6ip2YGaPI6kNw2uQ553Mr4Ofj1kazrq4E+QhGymmfIavJ6chE0q
 1F6k5A5nwTfvxmrnf44NIV4L8/n/5FXnEt08YgqMGKzjWOjV/TgzMOxzJrypirOlB8pa47EuYxg
 q2iHy3vlGgvtDpIHRPuZdTNZAnae3I/aak370MIxxnWldT06tTrC1oDEvmLfK85EfENuCKx3zc5
 x6ELcp5EzB1vrwyOdWg==
X-Proofpoint-ORIG-GUID: ClSwv6COAVv7Y5LbWJgRcHs9mSrfNUU3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-28_05,2026-04-28_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 clxscore=1015 malwarescore=0 impostorscore=0
 phishscore=0 suspectscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604290073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260429_002905_053790_0BBCF9AB 
X-CRM114-Status: GOOD (  21.72  )
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


On 4/28/2026 4:40 AM, Dmitry Baryshkov wrote:
> On Mon, Apr 27, 2026 at 02:42:17PM -0700, Ronak Raheja wrote:
>> Add support for the USB3-DP combo PHY found on Hawi platform.
>>
>> The QMP PHY for Hawi uses QSERDES V10 register layouts. Add the required
>> PHY sequences from the hardware programming guide and new V10 register
>> header files. Also add a new v10 offset structure to incorporate the new
>> COM AON register module.
> 
> Was this tested with the DP too or did you test only the USB part?
> 

Only USB was tested. DP support will be added in a follow-up patch
once the MDSS nodes are ready for Hawi.

>>
>> Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> ---
>>  .../phy/qualcomm/phy-qcom-qmp-com-aon-v10.h   |  15 ++
>>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 231 +++++++++++++++++-
>>  .../phy/qualcomm/phy-qcom-qmp-dp-phy-v10.h    |  15 ++
>>  .../phy/qualcomm/phy-qcom-qmp-pcs-aon-v10.h   |  13 +
>>  .../phy/qualcomm/phy-qcom-qmp-pcs-usb-v10.h   |  19 ++
>>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10.h   |  34 +++
>>  .../qualcomm/phy-qcom-qmp-qserdes-com-v10.h   |  89 +++++++
>>  .../qualcomm/phy-qcom-qmp-qserdes-txrx-v10.h  |  89 +++++++
>>  drivers/phy/qualcomm/phy-qcom-qmp.h           |   5 +
>>  9 files changed, 506 insertions(+), 4 deletions(-)
>>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-com-aon-v10.h
>>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-dp-phy-v10.h
>>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v10.h
>>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v10.h
>>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10.h
>>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v10.h
>>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v10.h
>>
>> @@ -2198,6 +2368,7 @@ struct qmp_combo_offsets {
>>  	u16 dp_txa;
>>  	u16 dp_txb;
>>  	u16 dp_dp_phy;
>> +	u16 aon_toggle;
> 
> Are there (or will there) be any other regs? Is it just one-register
> space?
> 

The COM AON block has 3 registers: USB3_AON_TOGGLE_ENABLE (0x00),
DP_AON_TOGGLE_ENABLE (0x04), and DUMMY_STATUS (0x08). Only the first
two are currently used.

>>  };
>>  
>>  struct qmp_phy_cfg {
>> @@ -2705,6 +2895,27 @@ static const struct qmp_phy_cfg x1e80100_usb3dpphy_cfg = {
>>  	.regs			= qmp_v6_n4_usb3phy_regs_layout,
>>  };
>>  
>> +static const struct qmp_phy_cfg hawi_usb3dpphy_cfg = {
>> +	.offsets		= &qmp_combo_offsets_v10,
>> +
>> +	.serdes_tbl		= hawi_usb3_serdes_tbl,
>> +	.serdes_tbl_num		= ARRAY_SIZE(hawi_usb3_serdes_tbl),
>> +	.tx_tbl			= hawi_usb3_tx_tbl,
>> +	.tx_tbl_num		= ARRAY_SIZE(hawi_usb3_tx_tbl),
>> +	.rx_tbl			= hawi_usb3_rx_tbl,
>> +	.rx_tbl_num		= ARRAY_SIZE(hawi_usb3_rx_tbl),
>> +	.pcs_tbl		= hawi_usb3_pcs_tbl,
>> +	.pcs_tbl_num		= ARRAY_SIZE(hawi_usb3_pcs_tbl),
>> +	.pcs_usb_tbl		= hawi_usb3_pcs_usb_tbl,
>> +	.pcs_usb_tbl_num	= ARRAY_SIZE(hawi_usb3_pcs_usb_tbl),
>> +
>> +	.regs			= qmp_v10_usb3phy_regs_layout,
>> +	.reset_list		= msm8996_usb3phy_reset_l,
>> +	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
>> +	.vreg_list		= qmp_phy_vreg_l,
>> +	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> 
> No DP counterpart and no mention of it in the commit message.
> 

The DP configuration will be added in a follow-up patch once the MDSS
nodes are ready for Hawi.

Thanks,
Ronak

>> +};
>> +
>>  static const struct qmp_phy_cfg sm6350_usb3dpphy_cfg = {
>>  	.offsets		= &qmp_combo_offsets_v3,
>>  
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
