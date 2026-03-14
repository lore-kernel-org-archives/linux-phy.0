Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C16D1107BCE9
	for <linux-phy@archiver.kernel.org>; Sat, 14 Mar 2026 09:15:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DIbSx62JumulTZddNquA1Z/k6ZaGgcakPszbSAwvEi4=; b=XAPOziaR9DZYxm
	cmbU1ylj3JMdQrdVAWyOOTLan//r/JLMrqj9VGEzH/n0+CqU5y4LYmuAE43xZHap8VRJ/sJrDRbEZ
	VKpGMjxG6OwX5N28Jj+yLUjHdkpWPSvinEoDz6/f5CwK0ASn5HPxnr0bK16NDWJGhV1kJ/1mIDnH7
	Cgqle0vklNm5oloDvJ5amGQQH1q9rAt5WT4SyhhUUoGIGTxaC3CTUPFn+dDZ9ykbg3N9AeHlkeKAi
	S0+JBH1W1A3C+iLv2XRcAOGv0FftmAH1Q5wP5WD1iiqE++hklym2wOfM1rEZjag/eLDOKmkBDY7KO
	MHgQDj1kixQ1OvkukaIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1L5Y-00000001f12-1yEs;
	Sat, 14 Mar 2026 09:15:16 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1L5W-00000001f0f-1oeW
	for linux-phy@lists.infradead.org;
	Sat, 14 Mar 2026 09:15:15 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62E3o0qF2908015
	for <linux-phy@lists.infradead.org>; Sat, 14 Mar 2026 09:15:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=f6NfFeCZ44uAxGC6xkuX1LYR
	4KtzcqKNkL/S1CI0bos=; b=aW4Goiizs/5Xw0/2FldVoDebgIWrTRnc6eWl17QW
	n/SkpsapqYmgwleIrRKhyq4DSyxlcnw4Qy9V/IkUp2hhDq7+DrZ0gKGVGm7pBNgb
	CbvjPUdMJiNrrq10caZ0OgHuNUFLMYeSeOh7rbqlAR41H1As6ev5MXbtVBdqavHr
	mLNxrKdsslradvlpgesEuFI4MaoeQf7uwX2GLIB5D0+JHf+MRcpRcxkxFqkTYwS/
	8y8DhELRSwQs0exBl9OSCOxvvkYyaDj7QTa8q4m803ZEew6aTuhXzyDjb2v1OIFD
	iP0G5QWexd4fLympWIurfGjsfghAWauSF5/YuGDm5i8bEA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cw043gff3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 14 Mar 2026 09:15:13 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd76ff19d5so1657019885a.0
        for <linux-phy@lists.infradead.org>; Sat, 14 Mar 2026 02:15:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773479713; x=1774084513; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=f6NfFeCZ44uAxGC6xkuX1LYR4KtzcqKNkL/S1CI0bos=;
        b=UYmdL+M4oi5LC3IfZahlNJzI6qeMiUkg7/Ile89e9ck4AgIJdlJscLXc4oOLiEbkLX
         ryZk+nglPzJQ/KDOigc4LSPhCpDKvySblSPNeK+oMb2GSxCQ03jR4+jWM/03Zeh9HLzS
         XWSd7Rs80JuEJjcmt/8P68tRW/948UYKeY92EyWAsfuiQqPKZQh3oDaUbRF0g96KZqKS
         MtM2Z8jRR3yuGI+IxfMwSfGXmEOjGJSw25ZkT94Ow3W2FsLo9mewZhewH05TMuz37R5Y
         8qa9FFghA6237zMDvyeoGlQ5kXwX7aWpVql13RZgVTcSvPE4wBA9QFujqKKsltqsatf/
         7wlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773479713; x=1774084513;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f6NfFeCZ44uAxGC6xkuX1LYR4KtzcqKNkL/S1CI0bos=;
        b=tB5Sb1hPS101MRJ7A9ikdP7sp4T3sADiiOW6uhQAQ0f6CufrEmNI6MQ1V5MrmxfDQK
         PPHnqsl+5u0VIOz/QUu7QBxePeMWFOXH/rvHTHjtJQE0duTzSspRf7JJIPimy9tT3SEA
         UPXViQX+oLv6i8ZzxOwwTPBqqBfVb2i+ge0OvYg5TjUWV3543tYKXtUeSTT4x1YrU71s
         w7J0DsAnYc6aOeBIXDj7cPuw1GznlrwiWgY9jcbZ0WRrfUYmRLIy1lUCm4z6KfyVYld/
         3X+lFDq9ZTSSuft/+CSzToK2/Xg2igl+kMMjxI4meX8AZ3bbTKD5TSVsyrbYlsPRt6H1
         2rHQ==
X-Forwarded-Encrypted: i=1; AJvYcCUJdpwcNi4LqlpefBz4tfRsmECwrynExBxxJ6iAp2Q3GDFvATvv0E5FtboPf1TxNy8d593ALg1qC7Q=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxm+RoXWwxgkWqCkPsrHd4GB56nyQAL9S5aWZ0WzsGuSCtf1hOb
	k0+H+E91Wr0cbAU57bruIXJEaJxXJ0tEuol1ESQxmXK11LNS6OL0noxFMqnkHbU0VTkFGrwaPvl
	/c+BEejf8k6VJQ3aAEvf6pRz/iAuUPrfpYeBJwDCcKuyeZcRRG8GtoXU1KbJBKym4l049
X-Gm-Gg: ATEYQzyxyuXdBjc6IUibwd8u+dqwMS7o2evXO7OjmiQv+anwzAMkGqU8XSk3U0SyZ0W
	KPLxMSwhgJLfR+qSdxufYzhtMzG+dCPvykFF1wFMzBdNWmyw67jR0Rt8U8I2Cc/7KJCOJ71/Ydf
	bagoCZBW7P4SdHsIESMwK9/QeH0L49ntFXtznL+tEgB1M9+oi8zllQBDiqvtaYwJMlN33QHNMaK
	YZQHinRVGywIvSPNqOb1jphfSEQA+YHrXXeP2WZPQK4/dw35qtyRTlro/1eE3P0Hi4QBvpx98Ee
	DP4xf6M5ChtUwg/Kr5tikrKFnZ01f7TodvJhxNm7GiDdsT6hrvPPChHTbinzn7aSH9IJonbp8yz
	8wDyN9yhC1M25M1XXt7ET88FrJNRPpXXA2arwlfgY0hdWdx6jjq7vU1xhfqJHDmtWJfXBjLy5i+
	U9uOvp/ecN6GJ06dAzisKwOh/4hA4w/i+L3rM=
X-Received: by 2002:a05:620a:44ce:b0:8cd:9322:d449 with SMTP id af79cd13be357-8cdb5b49050mr792106385a.56.1773479712949;
        Sat, 14 Mar 2026 02:15:12 -0700 (PDT)
X-Received: by 2002:a05:620a:44ce:b0:8cd:9322:d449 with SMTP id af79cd13be357-8cdb5b49050mr792103385a.56.1773479712485;
        Sat, 14 Mar 2026 02:15:12 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a15636668dsm2055208e87.70.2026.03.14.02.15.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Mar 2026 02:15:09 -0700 (PDT)
Date: Sat, 14 Mar 2026 11:15:07 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Shawn Guo <shengchao.guo@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Abel Vesa <abelvesa@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 5/6] phy: qcom-qmp: Drop unused register headers
Message-ID: <o23x6uvqw734jemgpr6oaemx4linzymy6rdqkreu7d6ktvtd6c@v7l3vnv5ttsv>
References: <20260314051325.198137-1-shengchao.guo@oss.qualcomm.com>
 <20260314051325.198137-6-shengchao.guo@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260314051325.198137-6-shengchao.guo@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE0MDA3MSBTYWx0ZWRfX4c3+5L5HXe9y
 a/ytkFb6tGviKkrOhmPC0kmCVvxL91V1WClMilDwJOQb97dCSJPjRP/UKMxbI95JJ5AKq9dgjs/
 xfjnSuXdb/jD0s898nFemfTyZH+IxX0dMsduHNgyq3yQTicmIqVASl+Y8wgZ0WAEMs6TiLmSu4R
 V2LPhlRlMrAknknV1HmII/7bye3iHmsxzDfhQCWzCLgc1dmjDQPIhzIgl/ywNqtD7C6SaPky/Dw
 JQnHlE77jrrHTyzgtm1r21J/ey6XOGnAzw+eqpAg5KVViQGNx5Fu3TcQuzmN3toR8CieSnnLyuE
 5TGyun9E5O8Vgbmw7qH0B18DwGFajgFvZ9GXE4Y9ZJpu4FVMpBgMEjsJU/2ebLHwhsiyQjWptb2
 JDlOJ9UQqlLCF89sgSg8xkO5o2asS6yFsFIm6WGhsv1Gf1KJGgOxQghdO1EqDwg/nUPS/gQpuFF
 hrKXvcDhDY6TccFiaLg==
X-Proofpoint-GUID: 7kc5gIQaSWVxFps0OfKBhP_AXdHAYtXP
X-Authority-Analysis: v=2.4 cv=fLs0HJae c=1 sm=1 tr=0 ts=69b52721 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=iRVC3UVk7Zq8eYTPAAMA:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: 7kc5gIQaSWVxFps0OfKBhP_AXdHAYtXP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-14_03,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 suspectscore=0 impostorscore=0 clxscore=1015 adultscore=0 spamscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603140071
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260314_021514_483180_5C84842C 
X-CRM114-Status: GOOD (  10.03  )
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

On Sat, Mar 14, 2026 at 01:13:24PM +0800, Shawn Guo wrote:
> None of qcom-qmp drivers uses header qserdes-com or qserdes-txrx-v2.
> Drop them.
> 
> Signed-off-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
> ---
>  .../phy/qualcomm/phy-qcom-qmp-qserdes-com.h   | 140 ------------------
>  .../qualcomm/phy-qcom-qmp-qserdes-txrx-v2.h   |  68 ---------
>  drivers/phy/qualcomm/phy-qcom-qmp.h           |   2 -
>  3 files changed, 210 deletions(-)
>  delete mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com.h
>  delete mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v2.h
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
