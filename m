Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9399E909AE
	for <linux-phy@archiver.kernel.org>; Tue, 17 Feb 2026 15:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dxO5TdP07eAtdI6QCytcRMyZoiPozDGfXGTOERUHj+A=; b=tGi9FsSjQDzMgp
	bRG9ZzZ+D5fabSFs2o9QDaOWMVwa3j69LytVu3icWLBdNzfBd33vWoXqDyvAIr1T+DS9XdPWkof1Q
	yitEmShdpX95V7GMDubDOJpfdFheEMxqN5HMkmJG8VynGdN8xIQsTBnwAzbnWyhBoKO68LHNFUnSk
	cLq4wrJMMTgv01Fs+wwazT6BTF/mWBZ1OcbsxlDiEFHIJBX1CXmUrLNOoCOGqhfUfsKoKUZQUOUbF
	MUGaLghrFQRDC2TLVDk1w2AB4FdsHnMHrdm19mNC9qXrQR+3s+lVrHK0ZEFWzwT7NbMGin5NjHBlF
	enbHEFAV3sKK0PIXAyIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vsMzX-00000008VY1-1C0i;
	Tue, 17 Feb 2026 15:27:59 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vsMzT-00000008VXV-2QB0
	for linux-phy@lists.infradead.org;
	Tue, 17 Feb 2026 15:27:57 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61HEbv8l2111587
	for <linux-phy@lists.infradead.org>; Tue, 17 Feb 2026 15:27:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	whxYKANKm92NTQe3U5bbMwJVwvxRY7Nwp/5V4KisjpY=; b=iYiDwYyRS4JgKO2e
	qp5Se3Eb1my+jt/D6HitwY+DwYs9yfil0w7xPTCI2+JVEHAzV/m8TGzpH4tGkc5i
	6s+Xmmj8uGGOE/zRT5coyAXQsPF4QmSqWHcIeWgkGAA9ZwulLHoPG0QPM2oQ178a
	AhNYzTtZzqR6sT8Gv6qJeKM+8nBuD1uhkfopk7zBHfGFvfOj2wnR8SlsjH6qmlta
	REz3nYU4mrAbftmTC2Kx3xo68gTuBh0DhlYlpZuUyw9RIdhqv1ylT+IvAVFS1+/o
	7ZbpEE32/or3Gc5oznKGa7izsZNtB+AGxPZY6zVVRkiV/fV6RbfVabmw+SQe6ugA
	AL7ZQA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cchv4hjmj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 17 Feb 2026 15:27:53 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-8954b9b5da7so31833686d6.2
        for <linux-phy@lists.infradead.org>; Tue, 17 Feb 2026 07:27:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771342072; x=1771946872; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=whxYKANKm92NTQe3U5bbMwJVwvxRY7Nwp/5V4KisjpY=;
        b=O5FO8o2YhwUtzWMa/kKofeWLNcb1Ta0OYosidYJ2abjK9fEeo8zQsvEX8ynSHcub6W
         9AhhmNihnDdA6br4u3INQeqot5pen7UQxSubWTjmXiNSX6M1Hi5DktpiJhrdjMGBs7Gj
         L+w+BvFMEnzuiawZ/SxAUkXJ1OTUGjB0lqkrt1QiPpcjjF13avODJ+ylqZlBL3ne8RiA
         sThceq91VqybV4BBD2YmSiDQTMs/XTqPhd9UVs8QEJkKZi7RW3AoA9Z7bOCw+aLJgVpu
         fnqQlWl/nyhzi9IUL3RaqoOvUm/rffH4CSHMwKZLStczjnfAXeT6onbJYV90thYvczRZ
         A4gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771342072; x=1771946872;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=whxYKANKm92NTQe3U5bbMwJVwvxRY7Nwp/5V4KisjpY=;
        b=NbFdp6aoaTKxVTNQtrGuBvSnAS/7c/W1MnojlrazAS54bid0sJX18GMV2boumCIe2W
         LGv/VkSycEYVdzV5OYfS7amCd+v7lbPxN0JusW1TFp4EdFm90L9siomXCM8DtQQ/amX7
         j2iXj53QDZRNTWfjvmKId1HOn/5xn0ApvlOLIA/KBec5PLSw4HFYX6z92BQ+IfgCwhJo
         JIBN+tGpZA/lHazxJQpBBLwz4teGdEBOqHBZnzn3wC3pVEx+pHdobvijT9ZxksW+Kp+b
         meitsskHs1X8B54Bnk4QWLI3h8H9JIt7bFG2CZO03jVGeaQCgwdo4uWZxboX3NWLneFI
         2sew==
X-Forwarded-Encrypted: i=1; AJvYcCVuK8MjymE84XHH5N4vLYeRmcA/2calm0NtBv9HfgpwZqz0LXx8cmWRrA2CqUamU4bw03dv4nDB0KA=@lists.infradead.org
X-Gm-Message-State: AOJu0YwoPnWOcZKDRBT8pzcxiDmflAIg2sj1Qa4H1SNGRYSLVkXH/7xO
	pVE/2FCf0Wct+432Ll+beKwN6mBgavODkCJcNtD+vWlrZJvNNg5+BQkV8PkOQOA6IlPTcN7zOQz
	oE1UxVOrbQYCuCMixvD2FVKs4UXCHjBqNuQiVgEgojDFkyhwnhQVGIkIcanRABAWFp8LB
X-Gm-Gg: AZuq6aJCIhdkNr8TMfBUuYvXqWbM0zQlvoOuubgvRoMIV5DjMH65EB4tNAYQZE0mr+a
	A1mNL9IOt6yxOxq7elmG2HEEeJFu7u4M2G0teeOQg0PrF8Bx2NwUb1rPdiQA+7GgpcdH9t/nYdj
	bCABIJ+hMWtThMZQan9CmxD5I/IGyu8H68Q6PtHgaIZ9BlSJUpAHllD9SjDUVB1BzGazoze1K07
	g8GHyDoHo2XbuQjGySQphWnrft5oTML1oxstbRJUTcOXC4WT7ettL6boMr0W7UdgRAI6MUhx21l
	3t8qhYEvXrLjv7Vm2WaeP/U033ID5XIrtKuVacEe8cTXI881HaotJCWGJTZ/l9tLor3UpT6eyGL
	bGDuZivdMXE9JIZAsW5DE4O+x69JGtKGNYNKGJSqZwyMfOf9EZVs5+uFhUdn3wuDTQ9WM9Nf6BU
	nodiw=
X-Received: by 2002:a05:6214:55c6:b0:894:a36b:f7df with SMTP id 6a1803df08f44-8973480967fmr136773026d6.8.1771342072466;
        Tue, 17 Feb 2026 07:27:52 -0800 (PST)
X-Received: by 2002:a05:6214:55c6:b0:894:a36b:f7df with SMTP id 6a1803df08f44-8973480967fmr136772716d6.8.1771342071941;
        Tue, 17 Feb 2026 07:27:51 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc762b672sm365802566b.41.2026.02.17.07.27.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Feb 2026 07:27:51 -0800 (PST)
Message-ID: <e110546e-dd18-4ebe-9281-adfbdde98d7a@oss.qualcomm.com>
Date: Tue, 17 Feb 2026 16:27:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [bug report] phy: qcom: qmp-usbc: Add QCS615 USB/DP PHY config
 and DP mode support
To: Dan Carpenter <dan.carpenter@linaro.org>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <aYXvBGVdwXTrJNio@stanley.mountain>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aYXvBGVdwXTrJNio@stanley.mountain>
X-Authority-Analysis: v=2.4 cv=eYAwvrEH c=1 sm=1 tr=0 ts=699488f9 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=VwQbUJbxAAAA:8 a=neJFtHvG76LURI-aSOcA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDEyNSBTYWx0ZWRfXzw/498AkbVz6
 6SqVfTxsxczXaxOmPGXi6NkyT2KTrIcec7OVjGatJsqxmlmU73xzzlOiRm9X0XaqYwYo6oNPicI
 OhYu2PwmJA5xdJZqU0+dVBe65FR6TEIH53LD+JcF6q3ZzOl01OzSbUjZpOIMLhMkMLXZpZIpmeL
 qMvh6ndW87vE9Eo8JO0VCDNAiVKYpGvC5ZK3WBQ3N6S3oa5i8xpE3jnrl6xYHJOtKV1tUi2KuTd
 hjZOetEacYpTh9XVc8A2BLZOanxVvioe9ZYSSJDT8yUVgkL1+QAXPZRZVa8tdKGKW6Gk8nsGKOS
 HJpjnCODUr6jFS1bvrqOw8YM3dkkPg2k67paaYUzK5IePGCs57gfmsdbr9nZjyYAatQwrnz4wlc
 rqiSkjmJzVKSLPfzAodXStxbQk76bdsEAkqxMCfLArAj0RHGQp/9qYLiW1vY948jBSLK2l5rTKm
 xg6XjAO2oNasqi4Sexw==
X-Proofpoint-GUID: 9d0nHkGk1ESFjooH87X7pumNYHml1DNv
X-Proofpoint-ORIG-GUID: 9d0nHkGk1ESFjooH87X7pumNYHml1DNv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_02,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 suspectscore=0 priorityscore=1501 malwarescore=0
 phishscore=0 impostorscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170125
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260217_072755_650002_8C252058 
X-CRM114-Status: GOOD (  13.00  )
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

On 2/6/26 2:39 PM, Dan Carpenter wrote:
> [ Smatch checking is paused while we raise funding.  #SadFace
>   https://lore.kernel.org/all/aTaiGSbWZ9DJaGo7@stanley.mountain/ -dan ]
> 
> Hello Xiangxu Yin,
> 
> Commit 81791c45c8e0 ("phy: qcom: qmp-usbc: Add QCS615 USB/DP PHY
> config and DP mode support") from Dec 15, 2025 (linux-next), leads to
> the following Smatch static checker warning:
> 
> 	drivers/phy/qualcomm/phy-qcom-qmp-usbc.c:803 qmp_v2_configure_dp_swing()
> 	index hardmax out of bounds '(*cfg->swing_tbl)[v_level]' size=4 max='4' rl='0-4'
> 
> drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
>     777 static int qmp_v2_configure_dp_swing(struct qmp_usbc *qmp)
>     778 {
>     779         const struct qmp_phy_cfg *cfg = qmp->cfg;
>     780         const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
>     781         void __iomem *tx = qmp->dp_tx;
>     782         void __iomem *tx2 = qmp->dp_tx2;
>     783         unsigned int v_level = 0, p_level = 0;
>     784         u8 voltage_swing_cfg, pre_emphasis_cfg;
>     785         int i;
>     786 
>     787         if (dp_opts->lanes > 4) {
>     788                 dev_err(qmp->dev, "Invalid lane_num(%d)\n", dp_opts->lanes);
>     789                 return -EINVAL;
>     790         }
>     791 
>     792         for (i = 0; i < dp_opts->lanes; i++) {
>     793                 v_level = max(v_level, dp_opts->voltage[i]);
>     794                 p_level = max(p_level, dp_opts->pre[i]);
>     795         }
>     796 
>     797         if (v_level > 4 || p_level > 4) {
> 
> These should be >= 4 instead of >.
> 
>     798                 dev_err(qmp->dev, "Invalid v(%d) | p(%d) level)\n",
>     799                         v_level, p_level);
>     800                 return -EINVAL;
>     801         }
>     802 
> --> 803         voltage_swing_cfg = (*cfg->swing_tbl)[v_level][p_level];
>                                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> This is a 4x4 array.

Thanks Dan for the report

Xiangxu, are you planning to send a patch to address that?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
