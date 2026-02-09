Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 938B2E81BBB
	for <linux-phy@archiver.kernel.org>; Mon,  9 Feb 2026 13:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZpiC2WhItqLLsEIdleZJu2jPfdklFdaUxmaQbNJTZTA=; b=YStcxpGT65a8lP
	fZvy7VoLwO5wLEqmdbu63O+8sJMHW1yXd9D4hnnSC2aKM7GcqFoglw5JJ+6jWdSLm2YVexozFX7wy
	WJz/8QMM4WO+t4VleSnwlM31Bga5F1cNVMXYBS+w1B5cWNThX7UIGk0iaw4fq5ia9I4FSO19zcKTw
	zZae0QKUlU4sh88t83xR71iYXoh1TYTLRlfIJlukZPR8CVDy8JcMVlrnGEWKY/yX8A4/f8QTnspsy
	dVRxLE6ENg+/feltbDyvrK5gtQVZx9vvFkrxp11OMcn1zy40ooKt6yq3EP84Tg/CWpwgbbTCuEvzr
	j7YTLSSVOdyJkcq54brQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpRAR-0000000FQPY-3NjO;
	Mon, 09 Feb 2026 13:19:07 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpRAN-0000000FQOU-0JLG
	for linux-phy@lists.infradead.org;
	Mon, 09 Feb 2026 13:19:05 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 619BbUss3349352
	for <linux-phy@lists.infradead.org>; Mon, 9 Feb 2026 13:19:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=4OFU6emgi2Br2ZMoR1rOPKjB
	D5ztXikTIpwBIs6JuFU=; b=XXhi+RhnXCLsr1GyuNsoPvgagB6kPYiZoHPSQC5h
	fI2Kf4ToR2fbl5k30SeRdhyIEwzxEmsLodhrDl4BfSeWqr094U2XhfgIlAZbnr8K
	+qudGVulUL7Uf9pQXmL2RJgxeDL3oVyrqSZd1/gVqoKFcfSzEL7a50C1qzkYAj8k
	2Dyj2PQ+sQRtsfFjEerBLKYmhzYVkB/bxUFrotv9smQqdV8XuRlkYhyM7+kF9635
	2lAoPwr2PmL3TeLA6MGjib+0HdQfkLEPaJyfRXb4K7ZzxDkgl6pXiXp7CaOcXRf3
	RIlFR+w/jim+rdJnf4lspX+5EVOLiCKnFsPpuqDNm3Dx9g==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c79cy1gtc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 09 Feb 2026 13:19:01 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-5f53b7f1341so2103226137.0
        for <linux-phy@lists.infradead.org>; Mon, 09 Feb 2026 05:19:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770643141; x=1771247941; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4OFU6emgi2Br2ZMoR1rOPKjBD5ztXikTIpwBIs6JuFU=;
        b=D9mONUQfc4R/QTwuR30eUoadb1UhKhbmznQ5qkRGLLbCVXig0Jz0sZwXBBA2gEBFmv
         hdVJd+oY0nFdfss1utSmc58O6Nm/6zgLcRR2i9yFUoFPfdZV4m+vCaCUEFu83KtLuW+U
         7t6GcxL+/k6u9T8rFmNz+Zy0ipzM0tFwNoLLgfPqx+p8G9dRPOqke7lfhXo0kPHSL0Gp
         NHf/KQZJlpb/jYe4SH5twhIJULIeNssR5WID28FpCs2yb726w3C3k4iR9H4zUhCmU4XM
         h6ysTdmAMJBmqE9JjE7HKCH8BT92cNUngNTzl2IxCzM6jdxEkchZZp41IkLWXSjvtTA6
         Fvfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770643141; x=1771247941;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4OFU6emgi2Br2ZMoR1rOPKjBD5ztXikTIpwBIs6JuFU=;
        b=APJpjOzhe46csR7U6ayQ//ROiz0sUp21PbvvGs/rUL8FH+VXUvGTUPcNI5g4/3fCaC
         eEfKnoyzbJmwfZ+xLBhcnMR76+uMOgTdY51VKFskfmAwS/ogLghPKoQ0/otJT+DVciKS
         SeEUAnqpaQbrvHGIZM1/+PJZoaZSvRMqwnnUAqmq9JNvU/EWAxvNOwW3gwkis37bcMMM
         4OSXkz3wBrG/kvsu4Ds1G7TM6H6SLghXI7CdhtfQUL894Vu1+jy0cII4IdIPorPkXxHs
         uPXgLeNIyIUC//A1MnVQbxTVAlu9wwJWSN6s+LxcdA5GQIh0iq8Le7aYwC9J48nsHkCS
         fZvA==
X-Forwarded-Encrypted: i=1; AJvYcCU14KytiNaPmYB3NkL9Pnapb9z/sFqZ8+mh4OFF4ufG1vOcQUogErrC6ANBi3kw5WpoINnQyseQ06k=@lists.infradead.org
X-Gm-Message-State: AOJu0YxcLg04kAZxcv1DTcvZnIBK1+ZcZ2XscaHOBBoI4mNQkDY3rYVJ
	3w8XEFGStdBck1b9wWTPNKKnO748+WH9HW/NuT4kEYszhLzSzcXIoLZ5iYmpMaSRm9JiXOE6e7x
	OARacQNvtvawlGy6Zu/FRtK9X3/qUu8oieTYn8Y7bEQXZVI2ANkZQ95mRQtVdFdrhrrSa
X-Gm-Gg: AZuq6aIFwMgJAIGFvWA1TA3kWOEKlDN4KxRNntQcqA9HYKdqTXXZyUqMfws3IFtMjYi
	fG0TUwJVbptQVj2XHU8QPTXhlDjo6YBlLy8Y4hOZKHvGulVhuu2p0J+JZj1JIeupvS8z9lvuSkR
	+QcScrRbQH3Sy0C9+X3sHvvL7vuPJJJYIgk/IJd9fTmLRl4tEAa3HnXqPqjryMkUADNg8EZIgzt
	wZS313TfzGFjsItPYSWHrQvO5R0EkKMRWfnscW7Dro8zZl2s9TgZhacm4j3I9iSQb3jm9D4AeOp
	xmWFgWML2HA/KwJv72rcYRxUHSDmsO0lx1nBH5FsAqZs6VX2P0oqUzJVVBTGQ+agkSnIX4U8rGv
	su4qfpCcRJ+EMugoaVo0qhrEpMywhGAF995ABAg3qWIH4MgjAqMBx1jz9NxGvMW2l7Kt3cQrhFL
	9Zu65+IrzTMPGZqWrqBQL0qk0=
X-Received: by 2002:a05:6102:3a12:b0:5f0:2451:5f5 with SMTP id ada2fe7eead31-5fae8a16753mr2624749137.7.1770643140946;
        Mon, 09 Feb 2026 05:19:00 -0800 (PST)
X-Received: by 2002:a05:6102:3a12:b0:5f0:2451:5f5 with SMTP id ada2fe7eead31-5fae8a16753mr2624733137.7.1770643140502;
        Mon, 09 Feb 2026 05:19:00 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e44cf6feasm2652133e87.7.2026.02.09.05.18.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 05:18:59 -0800 (PST)
Date: Mon, 9 Feb 2026 15:18:58 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: vkoul@kernel.org, kishon@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com, Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: Re: [PATCH v3 4/5] phy: qcom: qmp-usb-legacy: Prevent unnecessary PM
 runtime suspend at boot
Message-ID: <hm2tashsvxvdkfipk5bojwoo2cfk4ifvodgwphgrdxz6g6iq3u@62ub34jnxbz3>
References: <20260205160240.748371-1-loic.poulain@oss.qualcomm.com>
 <20260205160240.748371-5-loic.poulain@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260205160240.748371-5-loic.poulain@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: GP6Wk4awUdKq6N_LONay094VYJIp6ByP
X-Proofpoint-GUID: GP6Wk4awUdKq6N_LONay094VYJIp6ByP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDExMSBTYWx0ZWRfX8lIYEDXlSGDy
 oUHY+hdePSOd57xOaHi4Aq/puHwbQ15f/zeOjr1aMGNWlwX8IzYytyaLy+ede/N3lsunIqbUS37
 FeGl3JBPBtetxovx8BlyBXW3rMWcaskQvch4asRDHmAaGCnZ6GMOsQ1LsFgRZuUpRMPspEPl+fN
 WTJJc/9h9ZRtPabvORDQvurEVXWqimOQMGiHPHQ0qxoS1Ku/UnjuLt0zM6LxDJEbteBQjc5nia+
 gV+rce5UjJi3OdXSpwmJ1REc22hOBaHYwvlPuV0S8IBnPZZghULCny2GZnIZffJJDyYcZ6EoGmq
 wOtHDGG2Fjesid6NZiBgH2QyLFrYSNmoHULOzdoPClnIPO+wnHcNYGvWajJ4FTt+qz6dnYc2Oeh
 gcswhzBFbwIxVJudwEgfoDS3WPIod+ErRsS3NwdNs8CLyl/YB2ZF5XIQTKsB+a4H67oWiR/qzDN
 GhBkLKe6eE/P0VrbvRA==
X-Authority-Analysis: v=2.4 cv=EtvfbCcA c=1 sm=1 tr=0 ts=6989dec5 cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=b7NUgUE6t-UYR0nikDAA:9 a=CjuIK1q_8ugA:10 a=-aSRE8QhW-JAV6biHavz:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 malwarescore=0 clxscore=1015 lowpriorityscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602090111
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_051903_299186_7330F134 
X-CRM114-Status: GOOD (  14.87  )
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

On Thu, Feb 05, 2026 at 05:02:39PM +0100, Loic Poulain wrote:
> There is a small window where the device can suspend after
> pm_runtime_enable() and before pm_runtime_forbid(), causing an
> unnecessary suspend/resume cycle while the PHY is not yet registered.
> 
> Move pm_runtime_forbid() before pm_runtime_enable() to eliminate
> this race.
> 
> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
