Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B612D606A32E
	for <linux-phy@archiver.kernel.org>; Fri, 13 Nov 2026 04:53:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=n7LX8uOQ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=W6dQD+NG;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=gO7duk9P
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=+8n8ZO/yJc7R/UQIwUoBCDS+NTiHsgUYdp9M+iq5WvM=; b=n7LX8uOQFLqJjJqTfpsEtgsKcK
	rYrvBLuCaqjGwi7RdWLr1SUiGW4th64TJ49bt4waY90CtPZ6HmDXs7wLwx1twsWJer7ZSsjq+/AXZ
	5KZMMOgtWBzrB2PV8PVKw+vCQRONU7wMlRxh0Awy+2vnUGcuhc5zH7M8ifDNpvvHoeLtV7TD30uoC
	qZzzy8ELOb5QwHCoFdB4K10xvMhYEl0YQPtBHCePAuB0Gan9EMm3MS93Vj9/bsXbT4kqzpl4VHlFT
	t3KBLUfhB+a9fd1//SXIpD8Jm1RUZTMrkUb43zjUToPaMMh3jF723JFeXqrK6CyKVMsvr0wOS3uM/
	ad4kL2vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRjHb-0000000BejB-1lrN;
	Fri, 13 Nov 2026 04:53:03 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRjHX-0000000BeiT-3Gnp
	for linux-phy@lists.infradead.org;
	Fri, 13 Nov 2026 04:53:02 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AD2KAWg1187006
	for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 04:52:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SQOyNq4wTmVvG1qOL+i4cjxIp55ug7AVmwSdeBhMIlU=; b=W6dQD+NGeIfbalbg
	fBXP1uYaB4rbxVX4V2s/40APqNdHqEZ55y2yBpgduq8h12Ecie9AUadWDYVgM4Ud
	h8nZNeDdPZI6R6uTnuUL7wzY5biXCfn/qtXLaKx0U9MuaotZUi0rmtYpyti9Ag8Z
	M3NwLxYgVNZarjrp8Xt4ML9bbSLBc6HllPp65eLVxZTKWGxdzS1XHOUgWAkRrZ+b
	tE0tCDU/bVCrsnpjai62L9R+ytvnZ1vfwn9Htl0uUctgxNYZzYfzwmzx3/8sbU3S
	pD5PmLq1qmU+2/h3TAXdBdvWNwyjNVaO3ta4LUErbYkRVnTCYe6BYrdQi3P7Alcx
	jVMMbg==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hw9e1c3mv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 04:52:58 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3b08aee6b3eso440765a91.3
        for <linux-phy@lists.infradead.org>; Thu, 12 Nov 2026 20:52:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794545578; x=1795150378; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=SQOyNq4wTmVvG1qOL+i4cjxIp55ug7AVmwSdeBhMIlU=;
        b=gO7duk9PVtqT7+BCoRXV1DraBKR4D6j3NHDdCvMcrIkxsa9QhQ1x4oOPxkfg6JF040
         yHKud4wJnwwo1s+09m/UdXJV2dlqkSVeY+RStafWLT2zNckLVEKhqn2k23Ki0/ZvSlVm
         bBzRB+qKrybNxL4qRqBfEJxhhGDMy0oHbkBexyArOxKc4/1IqathPDycX8fnjlLgyaqI
         zVJ+jzlqcvXy3XmXoytGJkXCIA7Kby1R9ckVHnQMieg5Zta+iKLST15HAMFBYTjmfjyr
         rqqYGfR2xsCwKrP3XlDaPGeZ4BXvH0ABfldDxkLU/E8hEUbf9swvATokLKje3j1oD0LB
         ONrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794545578; x=1795150378;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=SQOyNq4wTmVvG1qOL+i4cjxIp55ug7AVmwSdeBhMIlU=;
        b=rJGE5bR8EILxsO89EL9aGGGkhOgdTy8nCV+5k48t3ajuZLkCo4Dfbn2FGpEd2q7IG3
         gTR+7axzayM17089GVEQ1oM5pWffYon1CQW/dCZGyE5S+LXejg1Z5pxjdCXr+w2CJQw6
         z1CLZB1g/pI1ACDmlY70zC8lnqgav/Tdnjes8cEe0nTKMc1eQ+r5q42HVrl3DPt8VNwm
         Jroig8prrlvqs6A7X9rZTPg6ewfEI1fnNi2lwW4wSDc0xky2OVb5e6uaMUTO5Q0aR0Cr
         9oGAPrr3vY7YgzKvHdCS5j6r7Gg0n+jgc3lEWuM3AG5HFa6q+6ewnuKpwNpeBXO+ZXLR
         3goA==
X-Forwarded-Encrypted: i=1; AL+hErGz2h6qfrFrPxAmkD36Ch5yu9nZBK9Hu2tf5ddalvDiwCPNWs9bfr3cP30Crj0JJgMPFv4gB0M9uMw=@lists.infradead.org
X-Gm-Message-State: APuU4Z/PjE2JaEk07ZqEWk5U2CNyNGF2N8UoNyLZ5PKZg0EDsUowEcsb
	K92vsO8IVjBrsJvNkKVYktJLEiIDicC6NkRDMVjFUDJ0OxU86t4Fcqs5Ro8BZmXw9c7xbr48jq7
	ngHx7V/M78NjN30PNL3k3nKDkEeAroVEI4AKG/obfBkg3WN4VzKS+mDzOWglz8bRzvKic
X-Gm-Gg: AYBFou23HBS0PICz9fLOadMZ4iUSaYHV21Lx5ipei2Gsqdrsek+O8VQ2vnzn4MFKM3S
	VIgHZKm03Z7kan2Z5ywl2WGLTxpCALTVno3l1HoP24bW5aYMrvWLbN34r1N+8RUj2dmDmwa2OA5
	dmzqLZyBtKGR6w6UsXcfQEOmyie61ROKhGqV5CpZw0/jhwTYthVckIEqamg7A+Q5zDlSj+2lrFQ
	Rc36ckyS+7HYApALkKvd0M+s1s2bY3l6ipw55t49dBsEo237ME7zXYjlbNvfUMFIkHIq5Om0y0L
	F6xFuAjJ2gUO9DyKp/MhcUnpqZWlsRwRzDm3Xn6M7Q7XO5cN9Qd7mfsWJkQxa5mFhxYJ9FSFkVq
	3kp5YeTzCcvZ+MKBQIgUXgLOM/rjjOTDh2v3ms1AznrTvyiiSYtyF86i3gX1GiA==
X-Received: by 2002:a17:90b:4e8f:b0:3ac:9c37:942e with SMTP id 98e67ed59e1d1-3b1b0b53e79mr1213795a91.49.1794545577759;
        Thu, 12 Nov 2026 20:52:57 -0800 (PST)
X-Received: by 2002:a17:90b:4e8f:b0:3ac:9c37:942e with SMTP id 98e67ed59e1d1-3b1b0b53e79mr1213777a91.49.1794545577299;
        Thu, 12 Nov 2026 20:52:57 -0800 (PST)
Received: from [10.204.79.100] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b1aec43699sm2343811a91.10.2026.11.12.20.52.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2026 20:52:56 -0800 (PST)
Message-ID: <84eed340-905b-43fa-9c63-135401920e5f@oss.qualcomm.com>
Date: Fri, 13 Nov 2026 10:22:49 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] drm/msm/dp: Remove redundant force_link_train flag
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, mani@kernel.org,
        robin.clark@oss.qualcomm.com, lumag@kernel.org,
        abhinav.kumar@linux.dev, jesszhan0024@gmail.com, sean@poorly.run,
        marijn.suijten@somainline.org, irlied@gmail.com, simona@ffwll.ch,
        Saurabh Anand <saurabh.anand@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        quic_riteshk@quicinc.com, quic_vproddut@quicinc.com,
        quic_mkuntuma@quicinc.com, mahadevan.p@oss.qualcomm.com
References: <20261111104434.2222182-1-naidu.nama@oss.qualcomm.com>
 <20261111104434.2222182-3-naidu.nama@oss.qualcomm.com>
 <gfzdwaeouexratptiktpzodi44x6ztsfttqajzr5wxtrluyqjx@axwlv5jlakcc>
Content-Language: en-US
From: Naidu Nama <naidu.nama@oss.qualcomm.com>
In-Reply-To: <gfzdwaeouexratptiktpzodi44x6ztsfttqajzr5wxtrluyqjx@axwlv5jlakcc>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTEzMDAxOSBTYWx0ZWRfXznsk+G6M7I1d
 pMu+QwXIln9MAhDJrbHWf/uKwh5CLPBD5gBoG3g+wVyVkVJgKIXYxvHjHp4RaJGRaRdvFF0G7S+
 HiSBbCpMWOEFMcH6905AZTFS5GiO26oRRifvNUi7nDuxP30vjyjFpay3ZU4B8vB4TtpZyn3tBmR
 Y1SeNJXxNofF/2GHWy/s4GosEMWz2pIZHjAkPoqGmqohc6XwEFz8zoWLCGjjd78tWStvKV4G9d9
 DuKoOHsR/A07LKSDxUTWeKxbKy7mjUpGdjj3mGaUuXeB22f050l0d7VDgCNajjja4R7sV6Zfswo
 wI5AV/IFCJ30p6D3XZegxigr635e3GrW20Kkq/gVNnhReB31fye2fkmnvZQOqxaHrb9JEB/zk3D
 xELo6fQNve3+wGXLo6qQHeiU2IapbnKE4oKPiRsFbqlCYcDovai4VvdaIgX57pXvO7fRukNwcMm
 GY/Ma5N5HjvU1bwexXA==
X-Proofpoint-GUID: ofudiZiTAYqhunqttcNQqgxjvEUODhWA
X-Proofpoint-ORIG-GUID: ofudiZiTAYqhunqttcNQqgxjvEUODhWA
X-Authority-Analysis: v=2.4 cv=F6fC5ahN c=1 sm=1 tr=0 ts=6af697aa cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=QtFsyhEtc1s9TALtjxMA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTEzMDAxOSBTYWx0ZWRfX1cJEE7qE9K+8
 kz0GmmwXltv29iGto+iOM2aH3vev8LvP/Y0p9cgKtclHWOhO/d8Q9r30NOl2gCYPcyt43dzvWJm
 O9JfTxHS3/hgRLfovlTqsvJrzL73IS4=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-13_01,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 malwarescore=0 spamscore=0 clxscore=1015
 bulkscore=0 phishscore=0 lowpriorityscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611130019
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_205259_941487_43B15AC0 
X-CRM114-Status: GOOD (  12.55  )
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


On 11-11-2026 19:36, Dmitry Baryshkov wrote:
> On Wed, Nov 11, 2026 at 04:13:54PM +0530, naidu nama wrote:
>> From: Saurabh Anand <saurabh.anand@oss.qualcomm.com>
>>
>> force_link_train is always false when passed to
>> msm_dp_ctrl_prepare_stream_on(): the initial link is trained by
>> msm_dp_ctrl_on_link(), and the flag is cleared before stream preparation.
>> For active streams, it is never set.
>>
>> Remove the dead flag and parameter. Stream preparation still retrains
>> when channel equalization is incomplete.
>>
>> Signed-off-by: Saurabh Anand <saurabh.anand@oss.qualcomm.com>
>> ---
>>   drivers/gpu/drm/msm/dp/dp_ctrl.c    | 5 ++---
>>   drivers/gpu/drm/msm/dp/dp_ctrl.h    | 3 +--
>>   drivers/gpu/drm/msm/dp/dp_display.c | 4 +---
>>   3 files changed, 4 insertions(+), 8 deletions(-)
> The same SoB comment.


Sure, I will update in v3.
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
