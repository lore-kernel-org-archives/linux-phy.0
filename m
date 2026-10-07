Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7D15CA5FFC
	for <linux-phy@archiver.kernel.org>; Wed,  7 Oct 2026 11:33:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I8WRhJDC0eAWFEvXwCh4SDLg+tDIpcvytFYhwC8fibY=; b=F2vSR6JZVHH8n4
	FWQKFMsFGoe28zgBmD5MjXSpvLl+3EcEQVOPwm9j7AKHEjav9skR3dUqyPg8ohwIBLLDc4ax2AOAl
	9PBm26gSlpxZD5dp2Y+c2u357WnN5cYl8CTrNCHMk9j8bae4lPKs8+CQiPZ78iLaKx3sKhbeMgD7N
	hYQil+09VK1uF7OiXGSPO7CJFsLAstsnx2i1lx48kPgDV90uQ9jSmcN2np+hU6LikyaYYNHtOHnI9
	JNUPkf+RvuxqzXOmyDqgx3ItwsrjpDAob1o5JYZNlJ1LuyetxE9V2xnYM/6P6oMPB8A3mJOEaNwZO
	fE9azVA7MFbkFc8Ok6Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEPtd-00000002KN4-1j2p;
	Wed, 07 Oct 2026 11:33:17 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEPtb-00000002KMN-0YLT
	for linux-phy@lists.infradead.org;
	Wed, 07 Oct 2026 11:33:16 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 697BVNhk2364098
	for <linux-phy@lists.infradead.org>; Wed, 7 Oct 2026 11:33:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rnRfrie7kW8dU2T1uAcEvLq8NNMvKQJZG3o5AFfDelU=; b=bIPME/+yaFa5Wgzk
	TUcNEiMvX+kYVG1Ym02c7L5TxxWdyXt6yXweG3dSfvGbt360GtTNOoFu6Y1UJc5B
	co4tADcrkp6gJAf0d2Yo7u6nVm0uXNGYeE1rn22g9IGpq3rUD/aDAJhnQuIoDU4G
	s6dJDANvoLDtJBJtx2eSmCWQDl1onJlMlCkN7IKhzP+t6g9osbAAhB3/a0O2og4b
	2bdgXQkd09fsLdlhHkP1b+9YT7Jecqxk/s3oiE/24jzh6zNs4gvk2bNznFd0u/qj
	uiKvVDXciTyJ4BcjJMCZG6QFDUYD28MktAf/VNWvtUGrJOyGvGy/uUt2kCKW2lOr
	FrGptw==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h5fw8s56p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 07 Oct 2026 11:33:14 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-88cd731cf24so2956710b3a.0
        for <linux-phy@lists.infradead.org>; Wed, 07 Oct 2026 04:33:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791372794; x=1791977594; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=rnRfrie7kW8dU2T1uAcEvLq8NNMvKQJZG3o5AFfDelU=;
        b=ccvUG6RDPZg9o87RWd7arY1IoFM2pQ4G+zzQTS6YTnniHv5i+iIKXO5u/znDBDZFuF
         xeqO/Qnnf4SGx6UaCiCyjZMqWyf5nYKfCf2NI+6qFJcmjbHhqyd6MJTamHl9ObJ06ww5
         aOgdecUE4NuHt7LJPGf/JhShCwcq4m4G+y9hMuDhh1HK5F17mPaMzOfqR6ePbock/WKz
         qYJsiRaFzwOJ8tYwaZIBL1AdcFwKKjXieAkbiVT0m1DCoc/Tr33Xh/+WfKjIi7zjDdyY
         s83hCxvCNQBq28T4tMru9f7G1eBcbOQJBahJvBK15iYKQD/ryNSQQozVs7DK5XAlAc54
         7kZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791372794; x=1791977594;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=rnRfrie7kW8dU2T1uAcEvLq8NNMvKQJZG3o5AFfDelU=;
        b=JNgHGn1KCAuYFQ5UJNDMhTKyfYXsaNLE6PUXF24vfPY8aOck/kp6+O/FB68imZcfHl
         hoHUcp0uis6SlE2yGks4ZUmbWtz8FjILe6Kb8YH1mDxm+lrSoFJ8/HVriCnNGyCkQFqN
         j714vAc7XWNXY8vEHMZcwToTnvh4vyUbN2bF0I64zwIcV0UZN5NMukTb6lqGKxTLGl8W
         WN/WTBx7LRKIxM8lULyKcf0bRIkzl89r8QKPslunzFALxKNBMqbCH/4IOGt9bDjuSQ/v
         JmYOoQxtwlz7wBV+HiOf5hiRUtE/MnWiWt0taTmfRShcOAn/2HPzTD2lexk5wMx07uda
         dVMQ==
X-Forwarded-Encrypted: i=1; AKwUvBygNIyGwX5Ib5hJWBwP600eVm/C7pmxNjCgiV3svtK4RdPFd9xrUA0pPBt7n8coScLIbNowP6iXQsM=@lists.infradead.org
X-Gm-Message-State: AFuF++kCUoAhsYbgql6QE9wOry3vVYv3MrWuHjownOqkRoviQx5GxZbD
	UC9meR221eSmeXHzQPS9qFEAgoSPceaIalqw+3O1BD2PNHBkQcAiBLr0+J/mf/imhtnLbwJrB4y
	oi/7nN7WABh3lL01+8rtS15qrajkcjKwxZjA4ojGj6QP3oLARXuHiXbA8SryZ+Lj+1ZvA
X-Gm-Gg: AYBFou1T/iinkY6othXaixyPXnsbuGX/4cpzo2sfY6vj1yDpZX2f2b+pdOkZoFm6WZw
	Nm4PBgByRx1xw4IJFgQlMSRzF8wBgqASr2qegeslABcSl2kh23n+DN0Rk22HE/YcqAepRYBD+sZ
	KkhC5UpgJsokIsgySn43YeUrHCZzZ0cVXpJ0vZh3ErD/pZdE2GeY37WO5UoRvKZwjGCZr/hWB9W
	JtTrZu+PBBJZQkq8PjATHx/u4tOkw1K/b00VvmBI0qgWLB4ArT5FhemwFBDFWVaUPmx8lHOii6g
	gwfaEL0QBLUrh23XRh0dG8YIzIMkv5aWj+hf6NpD+EnGVThBE+DoBXeo9CaMFhKuGuOw5cksa75
	ywHXqkNgdylIv6M24WPkLez7GK8hHPd3aOfUmtA==
X-Received: by 2002:a05:6a00:2188:b0:882:6d80:e5ad with SMTP id d2e1a72fcca58-891b0c83960mr1586033b3a.9.1791372793114;
        Wed, 07 Oct 2026 04:33:13 -0700 (PDT)
X-Received: by 2002:a05:6a00:2188:b0:882:6d80:e5ad with SMTP id d2e1a72fcca58-891b0c83960mr1586011b3a.9.1791372792597;
        Wed, 07 Oct 2026 04:33:12 -0700 (PDT)
Received: from [10.218.41.37] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-89188914299sm1203497b3a.15.2026.10.07.04.33.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Oct 2026 04:33:12 -0700 (PDT)
Message-ID: <f9c7bd4a-2e97-43e1-a9bf-295b841ef0a3@oss.qualcomm.com>
Date: Wed, 7 Oct 2026 17:03:02 +0530
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
Content-Language: en-US
From: Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>
In-Reply-To: <zovl7lrhlleflaewk32o4wofr4bzm2bmkdnakev47peijrnkfe@p3ixrxltdpcm>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA3MDA0NSBTYWx0ZWRfX1DaW3YkR4CFN
 JEvm+KFR9nUU+2YF4kfmhkCiYF4GlEdLEqoQJWbD/J7o5vCD/wNZVO/5RTJ4NwD+ckD8iK8uKeN
 yHulvcoI/Rwq7P3ccpQfk/cY9CYBoDA=
X-Proofpoint-ORIG-GUID: 7pCM1bnvzOo7O9dohBQVKcQenqnTJOw7
X-Proofpoint-GUID: 7pCM1bnvzOo7O9dohBQVKcQenqnTJOw7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA3MDA0NSBTYWx0ZWRfX6wgQd/M3Se5H
 KyT9qblAGL8jpOXbTvGKpdc6yj8PZaq8EGTaV2MesVU0DtEXPCRp4yc4camA5tdiMRrBtkIYkcI
 v4XBBp8xJXE7DWGVbhyHSCn5mSzg7bClYhVmKX0JDPKM3zlmyISV8eHVOqcDVsfMXL3O8njAqn9
 mNQDXEibW0uu7c7/S/jmuLXJoIosRnMmh4EMOf445I7B+YKyDtUBHONW6t3AJDNqamCkuIb+OZ+
 fQkzsIs/1wVzKdyxs2LoqRRcs9WL7xhzZNSZ3PEznw4hCVOUK6NIMAFVG6mCmYhdtjw3X+H3X9P
 p00UUONXTW1oBb0GqH5+2I5no3dEpyxQhoC/DiBAAGx6bFoEOM7PEXomHLZFIxOnbEyYdsfPsuv
 RNnrpRCT49llFkNfAq5E14Vy0+lVgwF4kGs1RtKi9a62DjCM0aIYolcOaaaGzEg/uUSOvP9VfEx
 QJWkqIF3zlJbIMT2SIg==
X-Authority-Analysis: v=2.4 cv=Af0kjHXG c=1 sm=1 tr=0 ts=6ac62dfa cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=FIX8ga0CBHvb0ZQaSzQA:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-07_04,2026-10-06_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 clxscore=1015 impostorscore=0 lowpriorityscore=0
 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2610070045
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_043315_184130_54D4365B 
X-CRM114-Status: GOOD (  14.60  )
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



On 10/7/2026 1:18 PM, Dmitry Baryshkov wrote:
> On Wed, Oct 07, 2026 at 11:59:38AM +0530, Pradeep P V K wrote:
>> Add the init sequence tables and config for the UFS QMP phy found in
>> the Glymur SoC.
>>
>> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
>> Acked-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
>> ---
>>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 99 +++++++++++++++++++++++++++++++++
>>  1 file changed, 99 insertions(+)
>>
>> +	.offsets		= &qmp_ufs_offsets_v6,
> 
> So, is it a PHY using v6 offsets, but v7 registers inside?
> 
The QSERDES RX0 register offsets on Glymur SoC are aligned with the v7 register layout offsets.
Therefore, the v7 QSERDES RX0 register offsets are used for Glymur (similar to SM8750).

>> +	.max_supported_gear	= UFS_HS_G5,
>> +
>> +	.vreg_list		= glymur_ufsphy_vreg_l,
>> +	.num_vregs		= ARRAY_SIZE(glymur_ufsphy_vreg_l),
>> +	.regs			= ufsphy_v6_regs_layout,
> 
> v7
> 
>> +};
>> +
>>  static const struct qmp_phy_cfg milos_ufsphy_cfg = {
>>  	.lanes			= 2,
>>  
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
