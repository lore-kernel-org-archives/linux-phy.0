Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3EB606A323
	for <linux-phy@archiver.kernel.org>; Wed, 25 Nov 2026 12:00:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=odgp4pfJ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=c33gkj/k;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=P1LdL9Pa
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=5rkw/ASQrqWD/vClZiExZOIOYw8sx1XLP2UQ4x1/QVE=; b=odgp4pfJD/C36KOcFlPM7jkf9X
	+n8QSGWWrofw/aNtSQmHR1xwq/o9cbo8tps4yRJLBa9ObqRwZwB/xtCGIv1UIos7ZqFPFNV/BXVQ3
	X1tkVwd3fMlEvXSzGqMEYcDge81V38NayW3WdZi7QF2sRTsVyxRI/eSzK0xKN5/2p9RIbHtfjLCu2
	VKnmQB+OXJ9gZbJd8BzkFZiYQiQ3bJ94lbVVsmByajGT7i3G/HKZ0WH4MXuYW5/0KQUpzX1kgkHF2
	KkebrNmjNeFGU+UG6OneumANtDByaotctn201oLDa1cV0KPBB1lHSa0+spb5MrYsb2D5SoyOmMC5G
	vsGPEdVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWBg0-00000009kyv-3vBi;
	Wed, 25 Nov 2026 12:00:40 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWBfx-00000009kxn-1iY3
	for linux-phy@lists.infradead.org;
	Wed, 25 Nov 2026 12:00:39 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AP9mIr02121196
	for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 12:00:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZGmtiss+37jmH+iF3YqbwmD4+9FY1uTsN9kR+qeAjgg=; b=c33gkj/k+xAEBid9
	cfhgRNxHmvmdPnEq4qHSgM9+ksQzj4QTwJXo5Gb3+tuH2AdvABDNf2ReNSrx11BX
	ZvdpJpMdIzJO/r0xRfzYNai16w1ncvLhqanYSJYKEXfleFCzeGyryHkliEifQP+f
	4lXToPQZTfaCwwXbABBr+FvRKF2407zO8Mes+dOLOYb0xY3FJZqTHIwrHpeR6mef
	uX8v6iOwM6zb5T2brTgYzdwdvF9Qh92De+cm2Azq+yPaXKRz/1own6DQ+R9Nno+u
	PSn6w27GkD+e1tWGjtgBcEJMvIHgmKGgwWh3u816mACC7tKBbUwCLZ1hwz3ZBjbU
	oyU99A==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j5vukrpwa-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 12:00:35 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-8b647bbf87aso4378883b3a.2
        for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 04:00:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795608035; x=1796212835; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ZGmtiss+37jmH+iF3YqbwmD4+9FY1uTsN9kR+qeAjgg=;
        b=P1LdL9Pa+1hFXKlHtfA44k87LjTEKw53dmvhszoS5BCvJQv4kEDzt78Vrgd5s3ziV/
         V36/WWIabyGijHDMPpbrUfkP0dG5Sps4AguuX08LgU3/eljKAAie+9OyNchgx3thneJK
         lind3iT5ewH/fHV1iTjgNddogoYl3a71NYpPGHHXdNz0rKbBPT3dpOc9cYc/HmPyO8DM
         CiItd8QFGuDHcyaZd53J4L4Bow5K0kt9RyKx61l8LngEZa0qfDOg52W6sTEmKUrnjxgD
         2dJyUdzGq0oPRz6lzR3TL4Yge+NKUFRWZB/c1MF3EDcdx8xBA7BOhIxYUAbX5LEV36i/
         Nr7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795608035; x=1796212835;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ZGmtiss+37jmH+iF3YqbwmD4+9FY1uTsN9kR+qeAjgg=;
        b=e7fsX6Uh8WP3rPDVP6wMgfj2781pZAT6TIcW1pcloZV3wMnXiPX/Mmf8cQDW9j7oEM
         VI6j+T1/cMD1ICUbvTVEYAZBIverfx9D3bzhTFAHAsHqSVuJJYnJnhlSC9ySZL7N3rE0
         jPk8QDTxR0OqTjdDCa8dfcTS6Dller429QoVRjYxmv0SHeOgML93pRo0x+ULGWbebNR9
         xAZ3o71DehAlDc+wpdPnJNmUuin0ETD4Xs3F7EJYrolxzQMf6foA+AuROmZfA/CwEKyL
         cSbjIJvmThD/6ZUxDE8UA5Jd31M0+Nd11YjVjItNJZqCix95F+hFbZw+Jqzly/6j+7P3
         DGvg==
X-Forwarded-Encrypted: i=1; AL+hErHzLFnjKuFfrBMpnNDOPu52Gos7MjH7K3HintWU0PE9AtVIPm4hVSj+gvDRP5ss9omJpnZmOL31tuQ=@lists.infradead.org
X-Gm-Message-State: APuU4Z+UiWru1xHL/6ok169hcfv3KrBM4FCrXwm7YvTDF0NnrMUtjzAm
	o7/RQ+58/WqZlaMHLSwysAdMZd/1I+T/Pe5guVHm6z710aLmGegfnSLS4MdXl//OnNM5UoXDFww
	Fd2G2OAN8ePKeDsZBn61OnkQpKaKOu8DMzcF25rJZr3K22FeT+M1+WRp4sMAuN3m0bPjr
X-Gm-Gg: AZFdTZdM0S1R4MkHNYruMslVtu8J8oBK8wsK/GjZPw8dhM8Zw65cKeYmc+ikA2T2A7b
	oFyP1a9+8ssBr/CzvTosBFgLLTLO7RgRr50IGTSnnBXqvA/P9cfAtBkkgNP2e6ZQRewXxw+s0jQ
	0YuAQSW+ZdL+eCqfabZ4XlJFLDuYY1Mo8WNZIXL0zOkvXS5J6gihAp/EgtdOEezzvsezW4WrRpv
	0ysfAC5ueIA3W8KXc3iKF8N7JGtQXwFwpVaQkjfxvbJIPlQ+eeVAb/B4Ev7LqKT9zBKGLSJLmPB
	mTtY6DYxE7mQxdk91wSNgTCtAUrB8jPmfggeLvcbXoEkTMok07MEv25FePgn5xrwwlQFtPM4bzz
	Qj0j3NfP8GluQqu9Rk4yzUrsp6Ujojlk1+E14Bg3TqYEXb/NDimmW3e9P98T6Txs5gW/CB1g79N
	PVXQ==
X-Received: by 2002:a05:6a00:1817:b0:8a0:5f63:5521 with SMTP id d2e1a72fcca58-8c8792bef60mr15376383b3a.8.1795608034731;
        Wed, 25 Nov 2026 04:00:34 -0800 (PST)
X-Received: by 2002:a05:6a00:1817:b0:8a0:5f63:5521 with SMTP id d2e1a72fcca58-8c8792bef60mr15376338b3a.8.1795608034103;
        Wed, 25 Nov 2026 04:00:34 -0800 (PST)
Received: from [10.206.111.19] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8c8707792e8sm9045190b3a.7.2026.11.25.04.00.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Nov 2026 04:00:33 -0800 (PST)
Message-ID: <e93eee16-df8d-4d49-ae56-3e6ba9c31167@oss.qualcomm.com>
Date: Wed, 25 Nov 2026 17:30:26 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/3] phy: qcom-mipi-csi2: Add Hawi support
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
References: <20261125-hawi-maili-camss-v5-0-1483b7f68dce@oss.qualcomm.com>
 <20261125-hawi-maili-camss-v5-3-1483b7f68dce@oss.qualcomm.com>
 <15cde6af-0b9f-4a0f-9d21-4e5ca9107a67@oss.qualcomm.com>
Content-Language: en-US
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
In-Reply-To: <15cde6af-0b9f-4a0f-9d21-4e5ca9107a67@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=KfVHIgYD c=1 sm=1 tr=0 ts=6b06cde3 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=zU3wpra9rdAe81a_7icA:9 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-ORIG-GUID: gm_60ksHbGwgJ5fysZw8-rM_O7rf3BYc
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI1MDA0NyBTYWx0ZWRfX36tU+6E6gwRt
 ZsmVrR3qW+AfWX5Aj9j00skr0PuIPE/E88NONsJsa/iSZ5KxjqtGUvlwEuDObR53xr30hg3b84t
 aTDJ//vBT/rO4kqGdLUthP0MBbI5yLo=
X-Proofpoint-GUID: gm_60ksHbGwgJ5fysZw8-rM_O7rf3BYc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI1MDA0NyBTYWx0ZWRfX4uS4F0v9NAEM
 Dqe2MPrxyKN+7JhacKozDXK0KegU3mZjpKgeLEGe2O7rP+MOh/DdZItMEWgLRTfvmSdP90NaRDn
 prBP+0+x2GZXybEOOtPYPubUe/kJKGDN7nqu+v25qiRYg9RZLtPy8XCGMDs0j9/9xQJCxlJklPE
 EDnIWp/ZzTxpa0Y4RIABm3kVj4OoIq+lxr3TxuBrDGRBFpauIaZFM9DJmB35+2EkHfyKRPerRue
 TWNc3C8uKvmamp1yNEMhwrq0pYYL4Eoy/8uHCY7vcH2Utaozd/C4VJVlieBxQAb5Q6XPZAS6OU5
 HD6oA9ZOpeHrr4HRYakZJOxXhYDhmp2xpbAEoUeWPWbrogj8bZ2Rx9q59Zi+YrrrokLhrrTA/69
 ZepMmPyqpMBd0+3eI0o7kMV5eAauWR0/Fn8+k7Vhb7tF2b4T7PpdSTPwFWv6EwdM0sqetRAuzOI
 CKxZWPR4+vkHWEZZmlQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-25_03,2026-11-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 priorityscore=1501 clxscore=1015 bulkscore=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611250047
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_040037_570440_AF3D46F3 
X-CRM114-Status: GOOD (  13.89  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Konrad,

On 25-11-2026 16:23, Konrad Dybcio wrote:
>> diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
>> index ed40934d67eaeba0c6ac7ac75324ac6292fe7d9e..5d91303e0df2e8c5bca3ea8fa2bb831429a8f1ff 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
>> @@ -162,6 +162,126 @@ mipi_csi2phy_lane_regs lane_regs_x1e80100[] = {
>>  	{.reg_addr = 0x0c64, .reg_data = 0x7f, .param_type = CSIPHY_SKEW_CAL},
>>  };
>>  
>> +/* 2nm 2PH 2p5Gbps 4 lane DPHY mode, Kaanapali table with data-lane CTRL0 0x8c */
> nit: 2ph and DPHY are synonymous, if you rename the struct to something
> like lane_regs_hawi_dphy, we no longer need this comment.
ACK

> 
> As for the override, if its meaning is well-known (the difference is bit1
> being set or not), we can add some sort of a booelan override instead of
> duplicating the table, maybe
This is not a boolean difference. Bit 7 enables PGM delay in both
values. The difference is the programmed delay value:
X1E uses 0x0e, Hawi uses 0x0c.

Since this may vary with other PHY tuning values, I would keep the
SoC-specific table.

-- 
Regards,
Nihal Kumar Gupta


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
