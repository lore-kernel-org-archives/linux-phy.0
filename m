Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB7A6CA6019
	for <linux-phy@archiver.kernel.org>; Fri,  9 Oct 2026 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SsXyQ0l1bBA/6+fHoxK/k/E3wgKBLH261w3+z1mfTMk=; b=X7lHuZH8wJ5wFn
	XlmL2ASbkgD4wbtZGjrLSuaKlWvBn60xv2V3gEsN0lnG0NaxVJZINthH/rbAXpPnRDYjAnsOqV/Bd
	U9q3zPNxKu0HMVk+u4EcYt4Wi//yy3dqNB/RSk9mFsGfeUXmJxC3CiDfD+woKnax+iasQIJu+tpP/
	FzF7lTb5iUezBRPAEx57KQdRPZYBr0mXhcJewlljt7IbJbT6/V0sehnAuC/5f4jE1L3pXKy0INkDA
	nzRkKLG26b2a8xpSrWR2iS4Rc7eVtpvp3H0ntWoAiEljgyQlhSx9gy2Ptv2NX9vRn9ahtoRBzZEVt
	KKKbN5ZILUqJWLnE8tGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF7if-000000062H9-0yEX;
	Fri, 09 Oct 2026 10:20:53 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF7ib-000000062Gc-1mJQ
	for linux-phy@lists.infradead.org;
	Fri, 09 Oct 2026 10:20:51 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6998KENl906784
	for <linux-phy@lists.infradead.org>; Fri, 9 Oct 2026 10:20:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Gwj9DlboKAnnxG5g7o8KWSRp+dHWnkDcSHLJmL3TOO8=; b=QZdxj3zviA1MoeqX
	vnnU5+AUy+L4g9IPHAfK44SGhgoUqvvHxjabZI5+xG7jK1VZ0gCzFaGpFbOPlO9F
	7vV3jCapXw0YoSNdV1784PukmlqQiA88PfxpreSoniFagM9tgOmswlCGgXmOOaVs
	Wt8g5nQeJq49k0x1mDBXEGW+XM1FrkHcyCN3kFLUVA7Pcfl1mqCk7XNjTTXfSFPn
	xeTMAg0L9IVYCfTYzyqr12K1WaPcuYV5JswsM4VLEx8yK+yQiE5m90YmvdcDRxua
	4D4Ui5uit4FMzjEYW294SQFkROA6fozyuEx/rn2pnTLRj/m1XRNXJJeaQ6OMb4tX
	gTHPVA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h6fmqu6kw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 09 Oct 2026 10:20:47 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-3a7fa5e0442so7775165a91.0
        for <linux-phy@lists.infradead.org>; Fri, 09 Oct 2026 03:20:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791541247; x=1792146047; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Gwj9DlboKAnnxG5g7o8KWSRp+dHWnkDcSHLJmL3TOO8=;
        b=brY/SFy0yv/RefB9maFse8n+s6RkuQnw02GsDewvJhdfq7JkxrLvVzMZXKBwqcKOIx
         Urd+GkqM+SdrrrmxgEXzxa9wRWqptpZrQv3sVl9yhb2UPRrC4f7r3pB7VVaqu/YxY7VO
         +XbSogvSHR6WqUzuBfln60JRdOlbTjDgipy/hjKEyJYbqqHLyHwK0DgFszSZdv7c0zIp
         xSYssJVsy+NpWQxXZozFqWn6U6BKVUs7Z2OWF434y5Sx/4NbiGMRHwnLOUfjePKTTfZp
         k4eFp9IO16kVB2uBCVwBNxc6dYR4Uc0nLfGP/eT40M8e+a/AFCjy0N1S0WPNMv+Z/2OM
         ViPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791541247; x=1792146047;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Gwj9DlboKAnnxG5g7o8KWSRp+dHWnkDcSHLJmL3TOO8=;
        b=J05tvQx75KlursSWzR7zrkmOl3iteuKo6wDdqfjGrePhNO0gvb6GGZXmnRSV4UscEf
         07w1PVVYOgeoG5e05ZzbsZzEEUb7bwHtLCL/zcs9cjBI/MhSTUh+JiC6MDOQa+ItANWK
         6fXbHEZI+OKS2hEcdDqSoGKJBIOtA5G2aztKxHHzy6XMjDnRJLILJ9sZtG3vTWnc1BeU
         miWQTu7IiqkAOWpAfKv4QnD6q7Ll7tEY3qVSM3jE8M2Tb3z+JtKbahXQz4p1KHr0ejJv
         eJtn3572WwRtvqgkRmUKsv5mEGVR/xZuc/6tZ6VPGChutlO9JfIU+JMc4mahJV5EYp3n
         5CaQ==
X-Forwarded-Encrypted: i=1; AKwUvBxijqf/igetQGD4JkYuElvtzNpHm3KnFvGfVZFMHC856/2/MpnsNrcaXt7ZL7/OtjHUD+qrLIWhCK0=@lists.infradead.org
X-Gm-Message-State: AFq9FYJspb1mOe+xOr5FBMfquOH7ozcFSi+yPuj7Kugt9PwPvk9Ep3u2
	9yoLvIPNIyb+J8UMhNp3b38/aj2wZfPoTtVRvvdK5iAasQk/5hrHVOld8yBcZQF4opTLEhFu6yp
	xdg+c5CmpQialwO6BP0r76ocZwf/HPGloQzF+UrwqXk4y2taPPIGpeRaKJZa5FKuOd/e/
X-Gm-Gg: AYBFou3tocSA0QYjzvGjfjcSScJrXd+ACDnmS/oBfKUvvmjjaqMLRgwDWCn8t56+K2Y
	DV5XIo5iFoTPvBqgGi0vVhfyMlmPaF6X/Corv5Pbggoat76NRxQ5ILt5Po9dU+Y8yfsfXfIFjat
	WZH+C1XcozO1LGSKHAVdtYJWr7NoNtrphUzy/KJ6yyHIkPjp0RRv5KsrKadgVAM60jxdvBI3gQB
	6rC9t43pO39tXRRxdBiC34LwDdhlNPxbOSdYEIMFRrkk7v/y9cIat+JrPph2mOxy2QQNxZngh+c
	jDrb03eqSrWS5DBxVoB+bdQlIfgUBbWGWFu3+196eWXMt+VsfEcQd3vKB4h0L9hZCcAZON8Dnof
	j02ifcFqt5Vw++hZSe3TzgyREXsxudQzbqS/E4+Ox
X-Received: by 2002:a17:90b:1847:b0:3a4:f6b0:7de with SMTP id 98e67ed59e1d1-3ab3a90e800mr1364968a91.22.1791541246589;
        Fri, 09 Oct 2026 03:20:46 -0700 (PDT)
X-Received: by 2002:a17:90b:1847:b0:3a4:f6b0:7de with SMTP id 98e67ed59e1d1-3ab3a90e800mr1364937a91.22.1791541246091;
        Fri, 09 Oct 2026 03:20:46 -0700 (PDT)
Received: from [10.217.216.105] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3ab3966dc7dsm1366459a91.2.2026.10.09.03.20.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2026 03:20:44 -0700 (PDT)
Message-ID: <7416dc0a-7b4b-4d26-95bb-7f24e54dd6fe@oss.qualcomm.com>
Date: Fri, 9 Oct 2026 15:50:35 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/5] phy: qcom-qmp-ufs: Add Glymur support
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
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20261007-glymur_ufs_qcb_enablement-v3-0-84cf4f861415@oss.qualcomm.com>
 <20261007-glymur_ufs_qcb_enablement-v3-5-84cf4f861415@oss.qualcomm.com>
 <zovl7lrhlleflaewk32o4wofr4bzm2bmkdnakev47peijrnkfe@p3ixrxltdpcm>
 <f9c7bd4a-2e97-43e1-a9bf-295b841ef0a3@oss.qualcomm.com>
 <p76qp5bhijenec2ygj36dd47uxkeyk6kztccbuhblte5lqn22x@yikvkbipjbae>
 <7e8ea792-2336-4252-beed-7345815b0b90@oss.qualcomm.com>
 <unvey6hlz5ov4flgzza7f3i7nowxym5ik3dd7jkzx3yiqt5xqp@ci3z27we45e2>
Content-Language: en-US
From: Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>
In-Reply-To: <unvey6hlz5ov4flgzza7f3i7nowxym5ik3dd7jkzx3yiqt5xqp@ci3z27we45e2>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA5MDA0MSBTYWx0ZWRfX0TmPkNyqasqw
 G+fUcS9PlpCRLvJRhwqvml+5Zr41vbPIsQIEvM1L9THdDQm+B9yuc33dA6cbse8LMDSws18ELF+
 O/9X1rSwIXUqi1E4w7coWoJT7hPP7m4=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA5MDA0MSBTYWx0ZWRfX0rredRPKlVgw
 wViTlOg0njjKI1CUxY4V7BJUXsDkm8XWR0sE+s1Fa2UWkh759SWBbhR+GoAgUw9M9fIxLNiLuf6
 H7Ku+uz3GS6py+pl9UeEoks6Pj2DbOdm/amD5/TKu9pR2oTZxIidWl8bdxJZHcI8Le4dFWVVwMT
 l5HbdtmLJ3zI35vhunlXdPpsYTpyLqhnXNboThTxvD0AufwbrBSEchJBS90ZzP98o9cMSt1EpaT
 KN9z4FjJIp85KXhiLpNh6KEk50L6R3Gu1iI1299jE6pLz0lH6BxJjbe3OmacunW9JZq5PNM5b8C
 tLBI+pUdLopAt4GZvUGT+iU+eJ7cfxsUOqynjTO7UQEzw6/hhT3DNAp4vDJw0NOoMxRASqMYV5C
 BJ1mPC62S8gxyooCULS7/S196sT9zzAkbZ5UUKOoaIWkOv63447+m806HOfinAsQ3G753nOW9j2
 dgWhhxPLCROSKmJk9Rw==
X-Proofpoint-GUID: pectY1x2JALaG8MiwCAD7muny21v7QlZ
X-Proofpoint-ORIG-GUID: pectY1x2JALaG8MiwCAD7muny21v7QlZ
X-Authority-Analysis: v=2.4 cv=IqCL47/g c=1 sm=1 tr=0 ts=6ac8bfff cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=_d3xwxgixdHQDNbgaEMA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-09_03,2026-10-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 clxscore=1015 suspectscore=0
 adultscore=0 impostorscore=0 priorityscore=1501 lowpriorityscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2610020000
 definitions=main-2610090041
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261009_032049_587349_D122EC07 
X-CRM114-Status: GOOD (  13.38  )
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



On 10/7/2026 9:17 PM, Dmitry Baryshkov wrote:
> On Wed, Oct 07, 2026 at 08:15:39PM +0530, Pradeep Pragallapati wrote:
>>
>>
>> On 10/7/2026 7:13 PM, Dmitry Baryshkov wrote:
>>> On Wed, Oct 07, 2026 at 05:03:02PM +0530, Pradeep Pragallapati wrote:
>>>>
>>>>
>>>> On 10/7/2026 1:18 PM, Dmitry Baryshkov wrote:
>>>>> On Wed, Oct 07, 2026 at 11:59:38AM +0530, Pradeep P V K wrote:
>>>>>> Add the init sequence tables and config for the UFS QMP phy found in
>>>>>> the Glymur SoC.
>>>>>>
>>>>>> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
>>>>>> Acked-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>>>>> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
>>>>>> ---
>>>>>>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 99 +++++++++++++++++++++++++++++++++
>>>>>>  1 file changed, 99 insertions(+)
>>>>>>
>>>>>> +	.offsets		= &qmp_ufs_offsets_v6,
>>>>>
>>>>> So, is it a PHY using v6 offsets, but v7 registers inside?
>>>>>
>>>> The QSERDES RX0 register offsets on Glymur SoC are aligned with the v7 register layout offsets.
>>>> Therefore, the v7 QSERDES RX0 register offsets are used for Glymur (similar to SM8750).
>>>
>>> Mention in the commit message, please.
>> sure, i will mention it.> 
>>>>
>>>>>> +	.max_supported_gear	= UFS_HS_G5,
>>>>>> +
>>>>>> +	.vreg_list		= glymur_ufsphy_vreg_l,
>>>>>> +	.num_vregs		= ARRAY_SIZE(glymur_ufsphy_vreg_l),
>>>>>> +	.regs			= ufsphy_v6_regs_layout,
>>>>>
>>>>> v7
>>>
>>> This still holds.
>>>
>> Do you mean changing ufsphy_v6_regs_layout to ufsphy_v7_regs_layout?
>> If so, no. ufsphy_v6_regs_layout contains the PCS register offsets, and the 
>> PCS register offsets on Glymur are aligned with ufsphy_v6_regs_layout, similar to SM8750.
> 
> => commit message, please.
> 
sure, i will update the commit message in my next patch series.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
