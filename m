Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87865CC6B1F
	for <linux-phy@archiver.kernel.org>; Wed, 14 Oct 2026 09:19:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AUrEqugyCjK0hPsAXhJwX51GxolOQ7800ZGHoKG9pyA=; b=y9lHOsCxOmBMvp
	seWKUFfBn6iNrMcuQwBmLLR2IJBTpkEZfT69YOh2/ubmL/B/jK5C0CTGo5J+lQ+9SibthFtMuheOw
	iJ+mt6osbLdk6/GWYwQ2LFssTq+4MkItkiQjOOXBDrQMw/cJJATiFxd26obDpECw48XdA22IkBzII
	5m4MgjLY/hwssWt51Y9Am7OiubsIoMY1HeAIHZP6mHEF+16/T9A503fBDZRFNgQQlhOhXm8bwgK6Y
	yY1D+Ig2TII+MVeRTRETZ/Y19t7OEbivaQ0Efz73NWqYnkc/0ZhYXAqRu/RT7ZDcOgp4WaqbwtLpj
	vYEM6p5DcLDn8exGgbQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGv92-0000000F0aw-02ob;
	Wed, 14 Oct 2026 09:19:32 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGv8y-0000000F0ZT-31IS
	for linux-phy@lists.infradead.org;
	Wed, 14 Oct 2026 09:19:29 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69E4elsm806697
	for <linux-phy@lists.infradead.org>; Wed, 14 Oct 2026 09:19:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	I9vbNOPgSoW2/s5EmJhhLhQxF1+z/I0nBNc1/Lx6mzA=; b=RZSQxUg8DMWENbz8
	/2tgFMNww2z5LvmzbTrkdYN9ICez/UgIJRwOx/TMVyQvFAjY3qR4Y8Mm9dNGlfat
	A1064UEzfyNvw8PSF2d9hDrnNn23L1YXP7hFAL8Kh5SBc1Sv4q6y6ZPI7mwFxNjH
	m9UsN7zh2CIHVNo5eTvRL7oQAb1E6+3vtAu1tYOdi0E0OuRHHJkvnJ1z1dsZcFFN
	8xHSTAl2DVJwQIxTfEr5veeA6ukArm2e6oXEA3lN/FGyhaIJz0wyAsmrT9TWTZ4y
	yXdXPTtfHdXenKcYL9+rAuaODX1Ac9FAgS8NseC9haHxLCURnbGlLwg3xy9sP1XN
	9opTeg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h9ud6apxd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 14 Oct 2026 09:19:27 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2e605efae40so50491525ad.1
        for <linux-phy@lists.infradead.org>; Wed, 14 Oct 2026 02:19:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791969566; x=1792574366; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=I9vbNOPgSoW2/s5EmJhhLhQxF1+z/I0nBNc1/Lx6mzA=;
        b=MGSiyHNdQbDITT5UezWgDToNnQVVJ107iYfUaUnkMNVZb4zy8Q9erIvUwVgnkBLYQi
         z+4CsNWUbagravIEfv20YIpwSOfmEuC5hJJIzQpd48NPgs3Cowh2vH72kFxZk5uGqSet
         AGiKq7ZkYjriHt8m9umxS0rqFvjvcVzlqADB7b7HR4EiwC50FLdspi9zmz4wP8UsS+KY
         Jnqwfa3d7nZ3y7Lwx/uj351vXchcmeCq/etFCSdfgFyaBbM8PWk0+fy4P4p95BsO0hwD
         kTtY4iO5jeSbc/6ZEGTRajQqakQx0MSjthVdRR7oxM7Jx35fMLWugueny7fj6Cd09Gx5
         qa+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791969566; x=1792574366;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=I9vbNOPgSoW2/s5EmJhhLhQxF1+z/I0nBNc1/Lx6mzA=;
        b=JabFhHeOiPlgNMEbUlNwKZwbIrlHq0JyPTZz4t933C+R2rY/yB0+TykPoZReE72s4c
         HudZHtfr3m7U1fe1qxnfo6eHHzHjMp8cMxjdiRHwhLkGhxFdk9NiVQL0IaSQ388jM2cd
         w/qxe7Bq20m+GHSKGPkLo8FXXjrCp/BEKUeFKbzEyI9pDGU/kyi9tNyyNpt22sXg0Pt0
         nddnFJL9qvbxW+aSKjK0nIBVRtMEuulbJk00m4BI1/p4gkzUZnoUlhjMm+iWeqmrvJ9l
         yr3j1TCemczOjWtr/1iX6FdnPwD0pvx9wNLvP3yzNdPuy5khgIwBf7SWS7oUgyDbSF/C
         lNlA==
X-Forwarded-Encrypted: i=1; AKwUvBxUXGuzNC3lwZHRHdYSc8E8LaRdEHR3U4P45ZbMkixQb+KsTxz7ndbEfWGrbs49doXjCBYh2rE0RNk=@lists.infradead.org
X-Gm-Message-State: AFq9FYKVnPm5pE3JwU1uLLfpeDkHYfrny2Ku7yu8o7f5X8WM9Emo0JzK
	lpNpcTjTFdrO17c2v+u3FIogRi6VSW4crfX/wqGwBfDg7OB0ov9//ycY+YZFfDtiUWjVaA9ml4B
	YpVJTDO37kizNsx+F3rDQS7ibIkWWHlZs1bMdiEMfJOqcn00oGEqu1fjDXcKo9h82T2AcyCnLCW
	jH
X-Gm-Gg: AYBFou3Bo5IgpM/Zf4tKguPbDulQipX/jnM+6+4Y/rqZpkD5eNn1BiK0eEc5ZJIXcKd
	OVxW037/HRpxdwv0PKaipcn0L0MPhjm32TPDrLODwObdbDWbGy+TAswDuLLNW9mjoCDcgjg7Qyx
	oIePMIwNQE8HjWf17rkZLQxF6xNh6uDXe4bLmlHiAfRNy+QgXDJ1XFv+hrOwLeSdgVGE4R7ocRT
	a1yPqClAy0GTv2vISN8obWQej2lQdyraoS8pyYlZvVIYwFCbbM9CLBazRn4Pr+EYlcrZOcvyYfl
	Y/b+EB+GjgRWkv1ZfNUTR445MzMuLDYU5JaWH52iALc6l1m+nztGA2XdXpleCpbzvrM6vvvCFSv
	SjqALYjdmPdOpUeUR1Nx/eJD0cCJk
X-Received: by 2002:a17:902:cec2:b0:2e8:2f95:764d with SMTP id d9443c01a7336-2e842dfd299mr134805505ad.59.1791969566535;
        Wed, 14 Oct 2026 02:19:26 -0700 (PDT)
X-Received: by 2002:a17:902:cec2:b0:2e8:2f95:764d with SMTP id d9443c01a7336-2e842dfd299mr134804985ad.59.1791969565791;
        Wed, 14 Oct 2026 02:19:25 -0700 (PDT)
Received: from [10.204.78.119] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e8422b8202sm64057305ad.51.2026.10.14.02.19.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Oct 2026 02:19:25 -0700 (PDT)
Message-ID: <76ad74bd-e742-428b-b206-9db6cc98f10d@oss.qualcomm.com>
Date: Wed, 14 Oct 2026 14:49:16 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 06/13] drm/msm/dp: Add support for DP controllers on
 Nord
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Ritesh Kumar
 <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
References: <20261012-nord-drv-dt-v2-0-a2ab9af954d2@oss.qualcomm.com>
 <20261012-nord-drv-dt-v2-6-a2ab9af954d2@oss.qualcomm.com>
 <gmsyzeugteg67h5vwzf2y2e7k56eg6aicbonzjl72etgedd5oe@vlizd2npwtn6>
Content-Language: en-GB
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
In-Reply-To: <gmsyzeugteg67h5vwzf2y2e7k56eg6aicbonzjl72etgedd5oe@vlizd2npwtn6>
X-Proofpoint-ORIG-GUID: LXctVopxtYNYwoUBNKz5txP6YIX03HjV
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE0MDAzNiBTYWx0ZWRfXzKnkA19xSg38
 kInjP0ZqkgCDURhnTj5bJxxQpVLjiueEGeMem6vdGYoS/Igb/y8NrqAjB/8U4wRBk4U/K0gDPkH
 TI8RBvNIJxB5T1t6GLxWAXdor0N9cZ8=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE0MDAzNiBTYWx0ZWRfXw1A7Zsl64PIA
 dEM4SOLP/ZS9272UPCopbUCX8dZS6IdtvuzgryWaR8w7TN30+/5NfqDrDWv4htmicFZGz0S21Xj
 96KEEsO8YStmONeAMKe7cmtX8jKw/dozDOnfqf+ZiCpukkqbHjfBNpCYr8ci5Pf/CJ3pv7VvqhV
 4C6WzG/2vBTrPImRDMG706Nq0E8p1b6GBjYq85OErA4TWcBp/0vlsHWzGYLlyTyA62ghztnfTVB
 11hWCIpdWzNUxuyYd7cI98qERsNJPlzuhYp6z9KjH34aGCoxg4XkwQcwNJyr1fb9WAEqvA3E1Hb
 QWmv9/wN4fbr9RqX1t1qN7DCtB7xXf3AQherpzxZwOe/sjGYc+RR6gqtwMa/R0z2rwrQIZs/fvl
 qkCXUssphDePeDXfejiJSyYz121ijL8Jn45wEXFxDWwS9XfpPAUKRtwXuPLcK7v2QkzoxQqSWWY
 84lkwaFOGUFesHaq/Wg==
X-Authority-Analysis: v=2.4 cv=fJ6sTpae c=1 sm=1 tr=0 ts=6acf491f cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=9x1Nq3F55a8nTBbgZHMA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: LXctVopxtYNYwoUBNKz5txP6YIX03HjV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-13_01,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 lowpriorityscore=0 malwarescore=0
 suspectscore=0 adultscore=0 impostorscore=0 phishscore=0 bulkscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610080000
 definitions=main-2610140036
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_021928_805374_C3050D28 
X-CRM114-Status: GOOD (  14.40  )
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


On 10/13/2026 2:48 PM, Dmitry Baryshkov wrote:
> On Mon, Oct 12, 2026 at 07:02:16PM +0530, Nabige Aala wrote:
>> From: Mahadevan P <mahadevan.p@oss.qualcomm.com>
>>
>> Add the Nord DP desc and compatible. Nord is supporting the
>> four DP cotnrollers, two per MDSS instance.
>>
>> Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
>> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
>> ---
>>   drivers/gpu/drm/msm/dp/dp_display.c | 9 +++++++++
>>   1 file changed, 9 insertions(+)
> Why are they not a part of the existing entries? Is it a newer core?
Nord has two MDSS instances, each with two DP controllers. The first 
pair (0x0af54000, 0x0af5c000) is MDSS0 and the second pair (0x08d54000, 
0x08d5c000) is MDSS1 at a different base. No existing table covers this 
combination, So I added a new desc entry for Nord.
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
