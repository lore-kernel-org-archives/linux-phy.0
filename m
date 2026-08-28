Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE884C61DCB
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 12:14:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IqPsDHpaRe5ypQqRI0QZp+20l+sL3AFPV3EQBdoeW/8=; b=Pp4fOF2FlOz/0M
	YPrQ4lgu8o24+OXkWQDBa9lq4d+guwof0izpMddiumlaAMktFb6JNSfcW6GfUBLHRW1/cqqS4jJoE
	ozlwWQgjmH8opLvunRu/H61IyibcfpgBln/dJwt7T4EA/R9cEX1sW9qT1fOysg9tXSDoV6QIfqgxG
	8rlGGJVwfRAPBrS2Qp2/nSZ3fIrXDNUUDBV8IZonGC8y/yqj7m5thvZbKTZ9t9e3j9SjcRCJiQDQ9
	PMetrfYZuL8vHb2nH4yMNSYCEznHT5pKdsy33LdgCu7/leTK8lKbPqyY9vgRi5cRkJYqGSvFiri5E
	t4V7f6bg8JB+73BhIMrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzvTv-00000005iRZ-2IpQ;
	Fri, 28 Aug 2026 12:14:51 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzvTt-00000005iQu-27ca
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 12:14:50 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67SA7EFR2725202
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 12:14:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xH52WhtMhlm9EBJU0K2TWO5ErvgRLEO02V2yZlYd28w=; b=bDVUqtO9YBGTJi5T
	2JSarYqcIOAT+XIQ1SwdDfqpcMPbg0/WXY/ptB4WfMZ74bUOuzTKIaydxkxyXnM+
	valspoeotA50tTTUfi1nEfGgFzFgcfbCuZUxALvBbhm94XJf6BVAUE4dXC++MO0C
	QqgWFzhz5PfmV/Twk64zTBOyzBNwMh8vdUjRYdx4GoTvcMjjTUczkDsDCarjMvmY
	undo7pHT5mSZk1AXIC3bufnyofABZrz8KmdT4BElntX2FPoHZRjGc1nwZlYkWHva
	LAZ1AURINuqIcAecMuEufHoDvUriHQ4XkLgQjv0HBfPDAUag9qwOWhK6P/787cKg
	znPzKA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gb7eh0mvx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 12:14:48 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-52ea38b1e7eso1694111cf.3
        for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 05:14:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787919288; x=1788524088; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=xH52WhtMhlm9EBJU0K2TWO5ErvgRLEO02V2yZlYd28w=;
        b=Jxexb9uMC2ZYMfr0hc+cp1tRek+tY+XczcS3QMKH4/ECtW+63ALpNSEsPcqN2S1HJv
         Ym286ZEjviQNLItl6QWCe0KLICscwbySdWBYjDT6ake4i19TpCfCItqlUYYRsa9lh5I+
         AA9JUEeZz1krAHBJfnHLw8nGIJOC/i89Y1CNvZDOM7jgqB3/cU/UcMDkzjl0jiOJ3i25
         o5v7/cqLytIXhn2MxT0vCgLm5E8nzz0GYFEpTgePMGYwUlyPtY3yaImsX2vksHkBQB5H
         jLRljtFm7Y2xUSqAkkWvKyc+vpErUKk9A1bbdL+QXWYP62YOu2KkPqUOpnTcr61ai5XD
         yIcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787919288; x=1788524088;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=xH52WhtMhlm9EBJU0K2TWO5ErvgRLEO02V2yZlYd28w=;
        b=HPI18qQcFRIxFFDNiygdra/NHZDJgBYdH618pWtntPOMCnM7Zj92ezIgA7PSpp6h+x
         jm/qt2uuHC6nDbGwp84KNpS+jz0beegx/KfV/49Q5kaW0QySjO70n5KLNLtvOAcAneas
         xlMFHj4WlBundLmNH9SzrCUnRFdX03ri5pUcdrK83c3BiZYmKB2wM8iDg5b5PiO0+V3+
         CbOKGr7ghMjXaukYIE0yeBIgCBR/7CEXsFUOUkngfB/09K6XBcnL9IonRSLwWh6Uje2/
         y5TZgmgol9NilQ4NrBySRxgQp2vStcaEusRZSNcZu1oLNuNt78eKNnZRFm927SZDIiwn
         PG1g==
X-Forwarded-Encrypted: i=1; AHgh+RpNr0bWwnOaMy58amilTWiSrTRlCjQOlx1qM1zOVzaT5uvzlBKPngENe1VH4cjo4+Zd2ByiZ8nviQM=@lists.infradead.org
X-Gm-Message-State: AFuF++lZdh/u/shVCIef481dPtXTms+ePLLGLCyQUuHqsz7iJLFeMjqp
	9wXMdDk+im+L/ICIn00j8ySnx8+ZseB3z/JsvAq8xpZCCfk+Mc8YvtCxdUnQsUFuw283ZelLhta
	GQAlEnR1wBXEK5XLW2TcXN7KZQCpqwDifBCbmrCAKSPqme8oM4Ca7KBvrPOOxeFHQhWEL
X-Gm-Gg: AR+sD12dJrkpT/AoBC7M0OrQJrlHYPF5TjhkOyG00QExAjVKbJA7K18MoRdW2ZQvyWF
	bLuqjUjrsGvOmyKAiAZfl7WfojlW7GF4sFbCzqpIybJ3QvyR/ZAQC7xTSLPsYxHCUD07WLMw0CX
	IPUQNqsMSYZ4kp6DWZj8jUrQ0xQPO0W6RTtQU0KzHk9n/Wj9MogUOeSuBHLRmb1KQHGaYxlTOFL
	yUbVY8zGgJFPc5menI1q7Qubn4urRsJOT/nSrtpKKDabqLu0iXWB4kig1ixHiLd+W292B7P2N+m
	kHWRzsTdlRl6E0S55BA+X8yHXyYSg7GmbynljrGuf25RTR+LPR68Y71ZEChcg+PLvKG2XcG0RkZ
	scSdP0cG3BXHdpI7d6SMKN/w=
X-Received: by 2002:ac8:7f4f:0:b0:517:6162:daf5 with SMTP id d75a77b69052e-52fb95f4e1amr48354361cf.3.1787919287549;
        Fri, 28 Aug 2026 05:14:47 -0700 (PDT)
X-Received: by 2002:ac8:7f4f:0:b0:517:6162:daf5 with SMTP id d75a77b69052e-52fb95f4e1amr48348971cf.3.1787919282051;
        Fri, 28 Aug 2026 05:14:42 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c255f1b2074sm74098266b.38.2026.08.28.05.14.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Aug 2026 05:14:41 -0700 (PDT)
Message-ID: <afe45689-7f32-4a15-a7b8-1f8e855104fd@oss.qualcomm.com>
Date: Fri, 28 Aug 2026 14:14:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] phy: qualcomm: qmp-combo: Rework DP PHY runtime
 configuration
To: Nabige Aala <nabige.aala@oss.qualcomm.com>, Vinod Koul
 <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
References: <20260828-glymur-phy-v3-v3-0-8e73ce7c4636@oss.qualcomm.com>
 <20260828-glymur-phy-v3-v3-4-8e73ce7c4636@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260828-glymur-phy-v3-v3-4-8e73ce7c4636@oss.qualcomm.com>
X-Proofpoint-GUID: c3wiiz5mfB_n9LzPXQQuNrzcUYI9QFD8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI4MDEwNSBTYWx0ZWRfX7QGZMQUa2vmK
 Imc4YcWhgcyRmK1JYdcWljg0t1ZkGDiKFTVpf9tQc8pKWMQQYthlv0De2UtZKWLeNWGFsebpg9h
 NyNuZ6NWCk7dNv6w1PWOoefi6m6OwRmooLm9d0vCwgUnMXqHX8/L0c3GZz8ITkvCaLfl+JttO+N
 1/VHkwcS3wBcJvcbklaVKj2a8LyXigSSQBqU8zn3U7cv7xpo+u4x9vqDLhve/gtL994PR8KaqDO
 GQ6L4ARkqxVVU/JYmCcRmPpzzFqjgVJiBJCL+bGZCjqSz12e41/FnwMtgVD1NYMw9JUc447/Y8q
 8WwUSf/KKz/ghAxOKxUmVkWrkUt3gavzaZ+OFk3gl+zTrBkIVbbZxWrFsuFJ56oyGGI2+UFk+Xi
 I9ABHDgHkzkBGPMA7JCvfE5YKKOJhVvYE1c0VGfgQr6mvpMWoKNHZ0qm+d3kTCTBPFW3yz9HZpZ
 cGUhFMM9ikUMe6FrIEw==
X-Proofpoint-ORIG-GUID: c3wiiz5mfB_n9LzPXQQuNrzcUYI9QFD8
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI4MDEwNSBTYWx0ZWRfX3gq0FUEonQGn
 3CU/3cmkuc/6HTsv0TYTPangyuoch8k9KQYrh0pnEGLrRVaqgPKY2VdE7cik53pPjjQgcK8d0vk
 MonI/wicOLNHu2x3gbiKsd/RSef5NUk=
X-Authority-Analysis: v=2.4 cv=RoP16imK c=1 sm=1 tr=0 ts=6a917bb8 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=lS0QMqM3BESs-n2QcPcA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-28_03,2026-08-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 phishscore=0 suspectscore=0 impostorscore=0
 malwarescore=0 spamscore=0 bulkscore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608280105
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260828_051449_559945_EE223F32 
X-CRM114-Status: GOOD (  10.68  )
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

On 8/28/26 11:43 AM, Nabige Aala wrote:
> From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> 
> Rework the DP PHY runtime configuration by:
> - Extracting common DP PHY initialization sequence into
>   qmp_combo_configure_dp_phy_common() function that is shared
>   between qmp_v456_configure_dp_phy() and qmp_v8_configure_dp_phy()
> - Adding dp_aux_cfg2 field to qmp_phy_cfg structure to store the
>   hardware-specific AUX_CFG2 register value
> - Defining named constants (QSERDES_DP_PHY_AUX_CFG2_V456 and
>   QSERDES_DP_PHY_AUX_CFG2_V8) for better code readability
>   and maintainability
> - Adding validation check to ensure dp_aux_cfg2 is properly
>   configured for all hardware variants
> - Updating qmp_v8_dp_aux_init() with corrected power-down control and
>   bias enable settings
> - Modifying qmp_v8_configure_dp_clocks() to add VCO divider programming
>   and update auxless/LFPS timing parameters
> - Refining qmp_v8_configure_dp_phy() with updated driver enable values,
>   TSYNC override sequence, and additional status checks for proper
>   PHY lock verification
> 
> Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
> ---

qmp_combo_configure_dp_mode() needs to be updated to ignore reverse state
on Glymur

cfg->configure_dp_phy()'s return value is currently ignored, let's fix
that too

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
