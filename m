Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 993B2D3EE6E
	for <linux-phy@archiver.kernel.org>; Thu, 22 Jan 2026 14:53:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4sc/7epXOGe/tqZiq/RAglzdZzmpvNyYEIBDjfHfJb8=; b=RQSDJRniKsqEmI
	/NT73cpEO/mpP9th4WLs4RBf6VFGrl8LfaIR/Rw4DhBu9uWgN85DEKInR5t6bNVJj+Zw9mQvnvRU8
	uAFhouUNP3SiNMe57f4Lll7Ufj+sDoLmIWOtWgOG16vm1BQrQ1VbcS7cJJYWmi55FgKKiWFULHlb3
	+0ah2SXQJC7a8GFhM8PtGWl1KBDYRTCXRFpj/FEeI+/HpIxOD07HwXVKYHHVWFvkglW00NBpOtAUz
	ZP6Ub610FRe04DOh+G5it26Ei0fyMCQbvhiFi0O+oFSyAtU5yF/wgwaf32akrUebZ5ICmYGXiL56d
	7Pvn6Hd3g8cUTUDtWx3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viw3h-00000007Ggh-1ZJg;
	Thu, 22 Jan 2026 14:53:17 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viw3f-00000007Gfs-0892
	for linux-phy@lists.infradead.org;
	Thu, 22 Jan 2026 14:53:16 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60M96Gfb3463156
	for <linux-phy@lists.infradead.org>; Thu, 22 Jan 2026 14:53:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xxtDo5SgwuWHnRwxfuO2BKsV2aCWWPlFFHbTYu0ds58=; b=LFUzgVV6p90vmtzi
	YRYKd8eD0/XUcAxS8k1dPFQ4wvA6P/1qvypvd8mTW+gqh7Uz65b3liHfx/xI3jCk
	+KMzxpHM1a2VBGHfqo5rzzFnmQQYjB6WGbSbYcnYwLQ0UEplhOtLWXYm/Yumdj69
	SnW2+PFkDNMK7TG1RQHkihXjECVHH44rthE2QJPBXRa763x5md2WOhwQ10+ERjyW
	Ug0Yjsx69u46pD3lhSTnkpAJ4Kv5RrkDaWL+pnowG9MDv5C5IfCmVdOZLWZ3rF9p
	rzLmWryWVFalKDYEkFQJjOSNRx+gqvlZkW8/X9IMS89+C/I2bSKZZTr7UR8zwy37
	JwMuZw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bu06547dh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 22 Jan 2026 14:53:13 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c6b137e066so33772585a.2
        for <linux-phy@lists.infradead.org>; Thu, 22 Jan 2026 06:53:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769093593; x=1769698393; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xxtDo5SgwuWHnRwxfuO2BKsV2aCWWPlFFHbTYu0ds58=;
        b=gFW7ut5aWa9terG29oEFM4fZ+m5nG9X1BsuMt/tWz6+7Ga+aW29hugCXtkHPHQgvjN
         AJl8WlxuT2S0qxLBCYHqxOjwxvPN7T0EBpTBdDUJ8CvVGmytRgzOG89pcoQC/UjIQuzc
         fb7R/QZQpXwc/MDapc2bJJCnFYa5Y0zw+kiiAtEcoxsYAfIeA1LyK5g3466MI/0sRN/G
         xOSxbBdRysEOphtq2YQpTakt/tyN0eWW1K8AgAuT5HMg31BOw1o8QbAHmL0f6WlhEhUs
         kphA/pzizIs02/KtQ0uCqZosu5YW7aksiqPr3oPyB5DahGyqhpny2f6UzJXCebURc590
         3Mfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769093593; x=1769698393;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xxtDo5SgwuWHnRwxfuO2BKsV2aCWWPlFFHbTYu0ds58=;
        b=YEVr2HQTWmTLI9B0Vr5/1O9BkyJ4zLyLGzDEg1mMVzX4oenH33TJz4UteWkiwVzqWW
         /tidSdg4U2Krqu70bT16ANV+aDoofebeVKl0ir1D7tIVMFHX7ZE1MMM+GvpqrJJnM1sP
         nh5qPLfHQ/5jgW2pY3Vz4vN0+8rTK7dNFCWVKjYcyoAoxzOU5Zo6G6ps8htdl5ov/1Sp
         +zDBC7SPYtBAce5jemvBOYBXn+hUJ/Ehp2D5TCzZa84R8UpG9HzwXe+NjpsCh9pmXuAw
         RJOuH/W15LbHFU4ci6476TXNAx0Gb4iyL8cBnMmg/zh0przB7jURQkoqQSQ4p7/HJgHh
         eCHg==
X-Forwarded-Encrypted: i=1; AJvYcCV4kWQqr9uTcKr6x89y9wkO00Uj+HZPEl6/BfHTmmRYSadS5xyQNEG5mk7gPLx0mkHYzVyxq5TdxMQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YzrBeg0leFdKkUUHJNwZl+HUfNgbe2aQkd9/7JS/7pINK8Ej39N
	vnc7dyzTbVUw8d0cbTsD2aEitV/XdUdg8ZOEpsT8Bf8OIWvq5Df0PvATKlWLeI6WPyCW0T/BeeX
	EvrqwAX1W+5uHABN/ymWNwakhnIQt2Tx8jCL136VQSaLEr9p6ntaz/h8Udgm4PZpPuYW8
X-Gm-Gg: AZuq6aIphNmV5v0zru+YdwLhATA7wCOWBBKVnRDGqd4fDZgCnS8bpAHc637SeIodBMQ
	Oy1wpWDfd9mS+RqipSH3kXMEKNIQnbWDilos4GrYfEXP6MXkWOHsI1a1465dn9V1SPZHCIyneK0
	hMi7IJcaE8ECReoWLigetTZusEXZ13yy05FDXJ73fH/jrK0hLi8D4oMq6rXMIYqgj+TBN97MlTu
	x5zwBw5YsDvzaceBna+O9k1Zfveu+eUwopRY5R6ctw4rcrJJQcpBH3+IyT+CH26M2WR4AeJiJIV
	MXbNf8PvEggoAbGkbS1QX39smMBGqtBKAcFwLOWjDDamgMDJLMYFLPT7wHqC+P7JREf49VXT66Z
	0jfYoyg9uut8UoTYZ28ASNMRjR6cwI1Bsqkof1NbwkkD0WVfpryWIDWufB0mr0PzkoC4=
X-Received: by 2002:a05:620a:44c1:b0:8c5:2b02:83ee with SMTP id af79cd13be357-8c6a678095bmr2263857985a.6.1769093592812;
        Thu, 22 Jan 2026 06:53:12 -0800 (PST)
X-Received: by 2002:a05:620a:44c1:b0:8c5:2b02:83ee with SMTP id af79cd13be357-8c6a678095bmr2263855585a.6.1769093592348;
        Thu, 22 Jan 2026 06:53:12 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-658029e060asm4209135a12.21.2026.01.22.06.53.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Jan 2026 06:53:11 -0800 (PST)
Message-ID: <c4ce3928-fbc2-46f4-a54a-0fc12b86c7a9@oss.qualcomm.com>
Date: Thu, 22 Jan 2026 15:53:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/6] phy: qcom: qmp-usbc: Prevent unnecessary PM
 runtime suspend at boot
To: Loic Poulain <loic.poulain@oss.qualcomm.com>, vkoul@kernel.org,
        kishon@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        dmitry.baryshkov@oss.qualcomm.com, neil.armstrong@linaro.org
References: <20260121142827.2583-1-loic.poulain@oss.qualcomm.com>
 <20260121142827.2583-4-loic.poulain@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260121142827.2583-4-loic.poulain@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=HOHO14tv c=1 sm=1 tr=0 ts=697239d9 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=vtxEUVkT7waMBiOsAPUA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: efDTuS-OGEccPyOFSwywTRXt0KkO93sn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIyMDExMyBTYWx0ZWRfX7MDrUwT+nboY
 sW4WdUIYiqc4XMdKdNXzRALDzaMPdAXGAy65LChN7urYjPRbgnLDRVcOTryJJQK9HwM1r9h+lcu
 qJoDaH5Jj4rAviGe1zYjqeSgHnThmYozxGLSRiGT9hCotlNeRoMyhqpY+j762VXeJyQuifZ4yw1
 N6eFMEUEaSPl5/F4zuzcGr43a5zEnEga/9V93Xlou1G0Yp5J4w8HbfrKBIv3u0qRojY7wevnE1V
 mHWuHTrAwNEOgsLGedWnrq/JUuyUkyer9XeIcgWJHgZh+bZUysDfuhj0FQzXAYnYWQ/8RrtOJ/A
 BkjPbydO5MPBwpiqO2AewRzBR7NA5fOkN4eeoYpoPalWnebW4Tx+s35fJQ8V6LErEUD3ElfRys5
 bcNnQ1c5vZbKm/Je2on7X5QzprsnNFdcrNHpO/x9TLXiu/8tKzSUD7nYGJpIKjUtk9+6KC9zfvf
 tBnrQhj/783l4iLGYgg==
X-Proofpoint-GUID: efDTuS-OGEccPyOFSwywTRXt0KkO93sn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-22_02,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 adultscore=0 impostorscore=0 malwarescore=0
 spamscore=0 bulkscore=0 suspectscore=0 clxscore=1015 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601220113
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260122_065315_291661_72C774E8 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
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

On 1/21/26 3:28 PM, Loic Poulain wrote:
> There is a small window where the device can suspend after
> pm_runtime_enable() and before pm_runtime_forbid(), causing an
> unnecessary suspend/resume cycle while the PHY is not yet registered.
> 
> Move pm_runtime_forbid() before pm_runtime_enable() to eliminate
> this race.
> 
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
