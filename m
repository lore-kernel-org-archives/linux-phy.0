Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C793CAC587
	for <linux-phy@archiver.kernel.org>; Fri, 12 Sep 2025 01:25:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=375JyVT7L1iO0UGHV00vYG4tMNYQB41SLE3umLV3cWY=; b=Zf5O3bu2k0yUd5
	9uruwXHKcsONVZFU4zuIvv+r7G/sjP+PL1fyQe7MrQGHy/e8KJ4Tk0C/OlainTUf/m/oJcbNo8aMQ
	OEAfrp2TdktYe2QxVKcc0nPNicGcC77g42cb2lQ63hWq6eLk9+VjYma44Kl6UA+hZPiS+sl4QKxTc
	UX+v0r2ndNJxDh6J6ue1/ZAIHzO9irAF8qM+O3edDOU/JgUr6xAYxX85JC8S3JKZCCZTWjKQ0vfxX
	21EWneXnfBUICuahLL6E23ePwUbMjDWw/ET3HtpOjd7IjpRlbLafMDifIsz3Eln4qS0dwWHjbgfWo
	fXy7yhv1hJOfnEpFyRVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwsXN-00000006IJI-3sFF;
	Fri, 12 Sep 2025 01:25:17 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwsXL-00000006II2-21Z5
	for linux-phy@lists.infradead.org;
	Fri, 12 Sep 2025 01:25:16 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58BJ4Y9A008859
	for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 01:25:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=YsVWw194ZI1CWoyM8/QckT8m
	npp2FjAIPhrizuJH+a4=; b=kIcq5BvASDc27V0NaYPfTm2i8yEDFW+b0Y6Z2LX0
	gr9e+Mqnd/HS5R3jxQD/Ls7HOhSCQkUJ4tru+b8ktksPedSj3GLp2RQFi8fNKmcQ
	d7ilTtTwLSOUpW/ajBHQ/USOOdTXARBj+BxFUdp09XFgV4u5QAjGeqb4D9cVV05Q
	CHqSX1pZUDE3wn6OZpwAdjy90Lw7zAQLAiCdlDqTP3NCUYajvzKU0Um7aGqEifyh
	DMYPMHKSVRp1MinW8wT5YfdMa4BtgTsA7lMmyZMvXprg7JoBJ8l5o0bzTJ2nNVPL
	7DHJokCJ/LR+sTPTsovbuXEdE5MXjqFmR5ZrH1646bW+dQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490aapt2u7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 01:25:14 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b60d5eca3aso37498801cf.0
        for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 18:25:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757640313; x=1758245113;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YsVWw194ZI1CWoyM8/QckT8mnpp2FjAIPhrizuJH+a4=;
        b=DoSoP00g8Wrq5isxn8ACboE3YgB8X2cchhL4osKBulcelsCz+xFhJRtAVOsgw1uWFE
         91Hx8wU4HZW6Ol2rzizdCV4/SYT0TvVktebQSTxIqnKX0zoVHnKUwv1znE20eWPSoWhy
         nZyBrUW1rbRXE6PXFaDqZsQ5B8Ef271kta67WXYFBltI3qXAlof0EdoIeB08dJHPbmBy
         uFEro+HDw0jAYXq4JpeuJ/jMWDrP0xfoL76xLFwMgY2/E25qPYZ51UiJZHwfxfcS4S+I
         rhCiTpGw5tSrX1asZnD8EHbyifirOWg562xOKDBljWTzAeaCqOWWSNj4WE2+HuUDX7y9
         1XHg==
X-Forwarded-Encrypted: i=1; AJvYcCXQsTtRV/krHg+zkuk4rdmDrnBTfwGi/VcL8dNEACj4852d7JJgoTuod+G0TF+2YKsjB5/gfYkDKtw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyp8fwISFZVbSc1EzPSGSgn+sBKeBINUCXbvAZIXZE1HiuAL7la
	MpQ1Q41lyEHsw3GSAI0mBF57wX0F6BfxJr9fEgnCDorNZhGXKmZhJEEgNUgcP7BZvSFi1W6lMjy
	NSi29p40VRDlG/MJfm0XBqsn00dykBVcLuGonlZdOFn5uiYKmqFez/jPFuJJdMw4Me9sO
X-Gm-Gg: ASbGnctoqbJP5haAkPULoVUpDLQewBZPnkRMN0la4LXxX8TVAm+DXkYSMK1gH9FpMPg
	ws11l2DskSNJbePd6WVAa9oixeZaRRu/IoFBsLZ55ojFQXP5QDz+TZLvWkIoATA+LC3+hEDqG9m
	zxpnpzWdGi5ie6tbZXyBbp4c7MmQQIjl8xr1yb86mxjkDAjGceTKEQGF86YwrNZTq8XttSxNp15
	0jxT6SJnKGcg44FDQgo5gfRHM0reK/BN0gdu+vrNiqavzbuFYgWtAclSZIFttgRRWvkxnchySxC
	Vk0Hy+2HFQ+OyyFKzxmyW+RuMX8XNtg8JyXzJ6bD0o99XD47XJFlVbxhRgoIw9UXWEZvhumjbiO
	EXSqwpFERYrYVeoAwzMz5FWeoSpkrTanjpcxX3H2NpWpBps2hHLhE
X-Received: by 2002:ac8:5a0d:0:b0:4b5:e7e4:ba6c with SMTP id d75a77b69052e-4b77d16e805mr17533721cf.67.1757640313614;
        Thu, 11 Sep 2025 18:25:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGeSzyRo5fxlQ1s5PZqzWjlXyF7vQvka83jPrQMx8jrzjabtE8ps+uhPSg0QScYf/gUsEIfSA==
X-Received: by 2002:ac8:5a0d:0:b0:4b5:e7e4:ba6c with SMTP id d75a77b69052e-4b77d16e805mr17533221cf.67.1757640313085;
        Thu, 11 Sep 2025 18:25:13 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e5c692d10sm786907e87.8.2025.09.11.18.25.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 18:25:12 -0700 (PDT)
Date: Fri, 12 Sep 2025 04:25:10 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v4 05/13] phy: qcom: qmp-usbc: Add regulator init_load
 support
Message-ID: <qpcdlcxvu4avnpc2yebrjaptxcckp3jtk3gdrsdssi5pg2yjap@76a2o2bw6gea>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
 <20250911-add-displayport-support-for-qcs615-platform-v4-5-2702bdda14ed@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250911-add-displayport-support-for-qcs615-platform-v4-5-2702bdda14ed@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=eMETjGp1 c=1 sm=1 tr=0 ts=68c3767a cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=mlQFcmInbWeDH1iYaCEA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: Dzym9hmF-sFa9xWitK7JZB1dkxgTX77M
X-Proofpoint-ORIG-GUID: Dzym9hmF-sFa9xWitK7JZB1dkxgTX77M
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAwMCBTYWx0ZWRfX9RHR4KmYWqBa
 XHd9jGFW0rEi4E/YQwcYlFJDPaj9k+DjCKP+9xGbm97mcvc5WjnVBReeTVG1lwMYGAGrXnR7Ola
 CN41WwEcDMg76U+KSQR0MU3nImZUm+wxvg4il6R7883nD6wVPPJJorBNSy66hC2aKImqmchIspU
 rO199ZzrYsSn5/b4nQxw/dmdJ09of3J4sXRcyJLqyil9bE6KRDQ0vSdH3MyuBlC7g8QaH8piZAJ
 dLAeBz5htKGNbzZ+sGowqzqQvzBeWik/faF7NC22P3FN3DziPdZip2H0EQ8tKeWL1bRLl1BZCM7
 U0QsBlVs3jpKimt6ZvFgJ5t/4FuFIy2ULj98pPRP/N+2jWiS533AWsb+aceKDBx2YkUdQMMEOSH
 9GDqlr33
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-11_04,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 malwarescore=0 clxscore=1015 adultscore=0
 bulkscore=0 phishscore=0 spamscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509060000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250911_182515_650289_D5667D8D 
X-CRM114-Status: GOOD (  14.15  )
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

On Thu, Sep 11, 2025 at 10:55:02PM +0800, Xiangxu Yin wrote:
> QMP USBC PHY drivers previously did not set init_load_uA for regulators,
> which could result in incorrect vote levels. This patch introduces
> regulator definitions with proper init_load_uA values based on each
> chip's power grid design.
> 
> QCS615 USB3 PHY was previously reusing qcm2290_usb3phy_cfg, but its
> regulator requirements differ. A new qcs615_usb3phy_cfg is added to
> reflect the correct settings.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 70 +++++++++++++++++++-------------
>  1 file changed, 41 insertions(+), 29 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
