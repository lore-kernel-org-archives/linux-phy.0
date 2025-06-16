Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D96BC71155
	for <linux-phy@archiver.kernel.org>; Mon, 16 Jun 2025 12:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gqEbAdE2nYvDG0ZzfmDtUkPHpypNezWznfmP9YV/14c=; b=q7SC+411Sez268
	7v6/l1UI+zwoiKj5GT1ca7NQQ7JqbXes2ho66Djk2C/WmQ2AXr0JX7UKTdGa/B1DsDx2fReBKStjU
	8BcwyrXHrxcRd+diONCxLN0BDk+MUlGlyZ2wFRT2WXCvS6leWMOjACElFsr9RlBfUgMXjiq6eeZQv
	RY02NHo4nBfM1CR42Fbp/6wJDovp5P4SlEJScTm5ZM/BJIYxbHTfCRq9B38CGYxiVcDPBpwlfrS2w
	DHRPsQGo125YPDT/ItGs8JvWuxtPLwDY9wvN7HBzelti4fC9DfdwuALOv2diMpXfUpwTHiubRutkE
	+0jiwkR80hfLVK+cEN3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR9Kc-00000004RJD-0V16;
	Mon, 16 Jun 2025 12:52:58 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR8GS-00000004EjW-3cGQ
	for linux-phy@lists.infradead.org;
	Mon, 16 Jun 2025 11:44:37 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55G8dhq0013131
	for <linux-phy@lists.infradead.org>; Mon, 16 Jun 2025 11:44:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aBwqXHaqOGLYdlWyP5aCWSTDntNxsctiiIHM3sIcSwE=; b=k7iYKOZDjeXvftUZ
	VcALSh6MEOv7Ws+8QQMfj6hShQ1cOCO0aAmoBlLrHaBr+u0FaQYtxsTiMugkxAp/
	zn/NaEg+D5Odva3c+e9YiJx3ORTAGELltdL0orhh1ogbEosFqMMYfSgECKGnvz06
	7YZnzDoXYTQgRCr2jt7hsQOFLLDZYOwyoPvxS3/j2iqvbEBlQUiDA7wTje0MtvOz
	+9w8SSC4mR9KmoOh0CeGMvCHl3b7LYb+z7i9V0TrUisEXu7FYHofMmMect8sCg9l
	Xgf7CfSuDk8VxSYDKbvA7lLG8vzbftMsGXQN/KzNQcKpcE9Vk8SXZA1SY9+lbF9K
	J+JMNA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4792c9v9q8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 16 Jun 2025 11:44:35 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4a5ae436badso8926171cf.2
        for <linux-phy@lists.infradead.org>; Mon, 16 Jun 2025 04:44:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750074275; x=1750679075;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aBwqXHaqOGLYdlWyP5aCWSTDntNxsctiiIHM3sIcSwE=;
        b=hwS8/cnc0HQ4DLN0/IXob7b078O3MAy1pF99O5+9gEtCAmDyhLyWBggJss4S1P8y8O
         5KEXUJt9cj1SIztTbxcbzuZI5ZAJQJXvEiGDQVad5t7yy693ALr5KD6rPVjFsjmf14pl
         tij8z62QDNqqqOD8TUfxtwi+phPQEdiJNng5poTUHtNSg1jvWLCr2cpZ4a3JigGdEBOJ
         g+s9RJ1A+Lb0WaY/L18WD4jEc3KuFZoZkXQymFhgQtsfgketp94si/nzDG7By/4couX3
         lJLu3d6RS8D+WCSRxsOW+TDmgSHuN6rK2dDYtZnMwseg3Yb6OmaAQz36ryaJWRC1hLeF
         4HAg==
X-Forwarded-Encrypted: i=1; AJvYcCXZjuK5eTMQtEOpelkSLBgZhPJ3RjBnHf8evg09+/j7EdESjus585FZXJPQSnAQFUoo9msNMIY1K0Q=@lists.infradead.org
X-Gm-Message-State: AOJu0YyY1HfkM7LnsQMMQY7TR6bnmEd9gWMlDcB7ugoTgMz/6E1QhoeH
	bXgdlAtv6U8aVzq+sE1Nu54dCtEuh7Q59AwBSCHx5RLo3KaItOTvpEa6WX57pj8t9ABIXmMz7c4
	73iFS+U/+7P+8ESN6AUNi6n+gGjJTBKSC27+OkZA2O7LGUY/e7NJSGpKKCqoE2nxFU4q+
X-Gm-Gg: ASbGncukAMCxjFMGf9vp5pPgIhUkXTFBwTRbPgnClApU4OfPkwxAg1rZ/3lg91WP61b
	D5Ezq2tlPHX+6r9M6nxEW6FCM6S2JFR/3yqp/5mjzuISmsuaob1/KOyBTa2cKNlfapqcZYBm1GT
	in/KQRoxE4CqSzyoT1ZYdBik4pPk1yRmdx+Mq2mof1Jtdb5+yAly32qs7Hzb88kJ1GLdM89aZGN
	W/uAcxeLMHJGzV1UArPZiW7ntsSSHbBt9yz5pj8/NOkaaSxPZhiuRGLi0th2d5njQe6PriIXYhA
	UDJzVlq+tjv8zpuHk0bzl8C/flFE099uPuFLuWSb8gLck1rgLtQUmqB2i5+yCJyurpIoY/Cnve3
	1VnU=
X-Received: by 2002:ac8:5f53:0:b0:47a:ecd7:6714 with SMTP id d75a77b69052e-4a73c5a460bmr56637141cf.9.1750074274657;
        Mon, 16 Jun 2025 04:44:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFLYGv6rn1SzgWDD2ehrxqokbIF+2wTCG5SWoRKjsh1D8V6/aT4j9BPofzMk3ijGeS/grAFJA==
X-Received: by 2002:ac8:5f53:0:b0:47a:ecd7:6714 with SMTP id d75a77b69052e-4a73c5a460bmr56637041cf.9.1750074274262;
        Mon, 16 Jun 2025 04:44:34 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6097ad640bcsm332234a12.25.2025.06.16.04.44.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Jun 2025 04:44:33 -0700 (PDT)
Message-ID: <bdb171c3-5395-414a-88cf-eb002af96804@oss.qualcomm.com>
Date: Mon, 16 Jun 2025 13:44:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] phy: qualcomm: phy-qcom-eusb2-repeater: Don't
 zero-out registers
To: Luca Weiss <luca.weiss@fairphone.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250616-eusb2-repeater-tuning-v1-0-9457ff0fbf75@fairphone.com>
 <20250616-eusb2-repeater-tuning-v1-2-9457ff0fbf75@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250616-eusb2-repeater-tuning-v1-2-9457ff0fbf75@fairphone.com>
X-Proofpoint-GUID: skQFUP2nqVTJSkCkxutGiC4Eg7I8gTiU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE2MDA3MiBTYWx0ZWRfX0aUcOMFzIanv
 k9VWFWDLaBc6DL9WmJDss5hOzgxwefn7ZTSfCzOodrp9vlWyh1fn2n8BY6Nzq4rKwd+qjGt3MNT
 IiVbbpNH02lbK/ntGO9iTaUdpvhBtMPBMz+GgbCKHaazrF5XVNko/UZv43nt5clyIWz5oyH4sJx
 GLhLCiFhwBHC+ZzPTEg+LJ/BpmtaKM5HZeMcVpltbhTQwATWr52CkAhPpfU/SWE0nECv6g0a5DY
 IpdvxpeLqFbJe/dRVNG/mUCDjxCH9KSIDi9UI0v9fWqMvWz1XlNKQXKiie8D4ARtAAIB7ppqU/v
 hyh4iiI9YxlwI6F//LAuEzyZKyIQs42eueYkswqxZip3rgcx5q4DqSalGecR1YwUalSA+eCGozv
 GzIbiFOaBJqRu6Q1vH7DgosVucjuXLF3JMOmGQQIN7iox5sG59KWIDvjZts1ZpxFJkVHGK5z
X-Proofpoint-ORIG-GUID: skQFUP2nqVTJSkCkxutGiC4Eg7I8gTiU
X-Authority-Analysis: v=2.4 cv=etffzppX c=1 sm=1 tr=0 ts=685003a4 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8
 a=cispc58g6-s63dKQH_wA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-16_05,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 adultscore=0 spamscore=0 malwarescore=0
 priorityscore=1501 suspectscore=0 phishscore=0 mlxlogscore=919
 lowpriorityscore=0 bulkscore=0 mlxscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506160072
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_044436_910407_8B28D11E 
X-CRM114-Status: GOOD (  11.82  )
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

On 6/16/25 11:45 AM, Luca Weiss wrote:
> Zeroing out registers does not happen in the downstream kernel, and will
> "tune" the repeater in surely unexpected ways since most registers don't
> have a reset value of 0x0.
> 
> Stop doing that and instead just set the registers that are in the init
> sequence (though long term I don't think there's actually PMIC-specific
> init sequences, there's board specific tuning, but that's a story for
> another day).
> 
> Fixes: 99a517a582fc ("phy: qualcomm: phy-qcom-eusb2-repeater: Zero out untouched tuning regs")
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Riiight I thought this was effectively reverted already..

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
