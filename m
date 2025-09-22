Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DB5DCAC5A7
	for <linux-phy@archiver.kernel.org>; Mon, 22 Sep 2025 11:33:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Aaenz9yrfVUb9pczwbemxZVXKrlIK32VvS7uA+r+AyI=; b=l25ApI2fUymUqu
	UI4mKiu3y0VkLzDddyQ1a33/5jX77JPPMwsrxWlN+Af/fuRqfwOLiM+H0LBbuVcSctAXynCw7dAC/
	xAKAdY536D04VXRk9STXJbIoNZcE8S7S5XjsE3E/1jh6S3DJO6RjJkjqwETXxFEwSUNdUHNj+Ekd2
	X3uzLyVF839sHRsxPW9DkC3umT8w9758ORRdz4PBh97ZPNvJxRFKFnATVaCM2PME2xzNL/5DsSOVu
	+hHudQJDHwamyAjZO5zHr8t4jsjGvw+8Wo9lyWQy55FVXEhpOs/cXFSPPeRjJiMsakiaNRipawz/v
	Oha7XLKC/upuZ9ZtSgrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0enl-0000000ADaM-0xQN;
	Mon, 22 Sep 2025 11:33:49 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0eni-0000000ADZE-2b1r
	for linux-phy@lists.infradead.org;
	Mon, 22 Sep 2025 11:33:47 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58M8xM55009803
	for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 11:33:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8ny3tRDGyVpQC4SF6j/gk9PZ+S1uMs0oLN9O/oVrvh8=; b=RFl7+RoVThr85vGk
	0pq84J2kUfPoEE3WsNh6VQcoF4kb8m2Z72K5ej3yZCzlaicskMi9BVCeN+AUwxt1
	maMW7IHkViPYAXSrvKlt3G8y8eswCIT5/+Jhvi+08bQoJtAQB3J1K7tsLcBnlO/r
	uO0dEFeC5s05UDFPUQl/QxFe1XN1psGPHiCo0fcYOAOUaItSHLkOoiQoXfJKQ7f/
	0QZGJhEANzPFktT2Ik7fCZUzgYdl+kQHmjf8S86CC08zyN9bfehARY4q/WVGU6Mm
	YAh024zFm/pDMktZtYjzHzxCTDk7uoSkG2NVvroSVEqb1M0ypux5ePtG+JYMyCC2
	dukhcQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499mn7ck24-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 11:33:45 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2698ede62c2so13805595ad.1
        for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 04:33:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758540824; x=1759145624;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8ny3tRDGyVpQC4SF6j/gk9PZ+S1uMs0oLN9O/oVrvh8=;
        b=MC5NrOHWAEuxzkrjtAOyFyvHmVzCjNYWIV1S+aoybF7/UfWdNmtD2sxhWxgC9a05Br
         RCx1uxU9SeYvxJby7/HmHfY5vOAUTgmtwJIb4FHCLumYKVCkqiP6eyHKQKaIwBx5yKe3
         Vn9kazc6KNGIBXDI4sI0EnZopzkOrsYpZ9Xkch7Knw96eeSAsCgQ1+IshnXJR5o2Emj2
         86HDWQedwcyoGD8JEhK7FGfO1sVFilDa6LEltdB83w8OaVhtjgG0mrdMqXYTEPCFHYPu
         ygd9ARUF4Df7Bn72JQL40Zxwxqh6WV0J27mtPZODP/Q6WD9pdgEzJfcOMcZFxpLJBj1p
         0NHw==
X-Forwarded-Encrypted: i=1; AJvYcCX2VDriMT0sLwnyNVFdqU8Maxya+M3/MBpIw6lvQwRkO6JQ6N3Y/UoGCHHCI7Y/yvRb6JM4JdRy3Ew=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyzvs8xC3g5wLKRspYW9mqYnrlyP+z7kmiA8URZ1LeCLVRrdAJs
	LXG5+4J8/F5bv2zUfqLSq55mbccSEz/DYpQfaS/KiWBWi1oD80IUjt7dV0ENNTw1Httezy/s8sS
	eMAONzfPj9zR3517RVqv7bCaFiBx4vBhHnu4nwH8l41u7kyvPD/3mXwxysH9JKsn6oncC
X-Gm-Gg: ASbGncvryrFndOyPGLEqwEsk+vqsOLdY6dsnAPikuc0WC0ocYdnccCC5WFeBQzIYHhG
	WZhjDbKhN4ch+DG79BYTiEQ/urMNpKgDlnx3zzZsRMZBkcewGjDH3LX6JMtB+T78DleXXt0Rvvt
	i3pNZ8X5X2ezBjZ4psYhnSntk/uKPt1usAoSEGxCF8fnvCuBhFfC7JcObuGDL+uLUQtKEZJU1+N
	mc9ERV6IudSziaNP8UchvhdZwitCL6BIEG5sWM1BChSJXaN+PLSjBew7gxD4S8YCZk110awEcrt
	7MPAxvQQbU64aYO4KVrncTk4B2Ja1fxlec+irmC4ytJ/8W/+8tFq/dce5bE98kTddM34N5Izc4X
	EHH3tZnu2303KKeFa28E2BCxaAmSzEAjvdrs=
X-Received: by 2002:a17:903:110c:b0:266:914a:2e7a with SMTP id d9443c01a7336-269ba50450bmr97852875ad.6.1758540824160;
        Mon, 22 Sep 2025 04:33:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFDHH9Jnyu/wz0+fPUoAUMxFXs1lC0P7l4A/wqHWPTtDgp9+q8Jyik+xPio2B0P/RaEWdFbmg==
X-Received: by 2002:a17:903:110c:b0:266:914a:2e7a with SMTP id d9443c01a7336-269ba50450bmr97852675ad.6.1758540823742;
        Mon, 22 Sep 2025 04:33:43 -0700 (PDT)
Received: from [10.133.33.111] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33060828031sm13050240a91.26.2025.09.22.04.33.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Sep 2025 04:33:43 -0700 (PDT)
Message-ID: <f53fd974-f3a9-4efa-8cca-ff639d75196f@oss.qualcomm.com>
Date: Mon, 22 Sep 2025 19:33:36 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 07/14] phy: qcom: qmp-usbc: Move USB-only init to
 usb_power_on
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
 <20250919-add-displayport-support-for-qcs615-platform-v5-7-eae6681f4002@oss.qualcomm.com>
 <zjegjucwluzzh2x56mn7dpk4ocmbdrhyvubkxprpiuko5cifvv@ygvbal3vpssv>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <zjegjucwluzzh2x56mn7dpk4ocmbdrhyvubkxprpiuko5cifvv@ygvbal3vpssv>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAzMyBTYWx0ZWRfXyVa+wR370YYs
 7pYEzVzRHfLhCxuIBaOIxlT2bdimLZK7MWWl0t9XFLwPL81yNdsFci0tvB6h4ZBW+URo7aR5SpO
 jILoPtzcr8AggdWgupXA6pQoDHHlt0lZmFOlT9r2109IHUbVEJx+M8NX9NzyUZVydg5noQUfKaI
 jXrD9RGpuNhFYiBjB7uwL5ORCNrD92J/6hHh9Abj0H6rqkikfFuEsA2p5lKzgslVe83DQj1AY9H
 tDCxikb7OYvqSgary2DGo1nUhNqVpd7lKMbiKy1tlvzGc9ImSDcGf1RsKcst6HKk4mYecJUzwrL
 Ra+A25Wr0AE1Xz6Y/MY4e/F6bSmcOAdIN1r+ZSScud0SWVdffqkJN7CFnUCG27khUB9Eu5VeZTQ
 LM4EDAYd
X-Proofpoint-GUID: qgL7y6nwWar9maCs-pXGJc5Wr9gNNBSc
X-Proofpoint-ORIG-GUID: qgL7y6nwWar9maCs-pXGJc5Wr9gNNBSc
X-Authority-Analysis: v=2.4 cv=EZrIQOmC c=1 sm=1 tr=0 ts=68d13419 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=MW-FMpQjATtQXXRqn1QA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_01,2025-09-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 phishscore=0 suspectscore=0 priorityscore=1501
 impostorscore=0 bulkscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509200033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_043346_785024_E614FEE9 
X-CRM114-Status: GOOD (  14.12  )
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


On 9/20/2025 2:48 AM, Dmitry Baryshkov wrote:
> On Fri, Sep 19, 2025 at 10:24:24PM +0800, Xiangxu Yin wrote:
>> Move USB-only register setup from com_init to qmp_usbc_usb_power_on,
>> so it runs only for USB mode.
>
> Please rewrite the commit message to start from the problem description.
>
> With that fixed:
>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>

Ack.


>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>> ---
>>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 22 ++++++++++------------
>>  1 file changed, 10 insertions(+), 12 deletions(-)
>>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
