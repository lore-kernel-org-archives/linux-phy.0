Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E91ED78326
	for <linux-phy@archiver.kernel.org>; Mon,  2 Dec 2024 14:26:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=46ZtTWVPx1OMLVs3vwsQf95jFSSbjhPUHAx+L+fxpCw=; b=LYTTQXLCC6BQXz
	kr3VmndkR9YSts1MC8YVNqNDeupwmtccnsECaxgZr3dQcLfdaV4p/uzzP0nOE3aa0FKtHbL5G9YMf
	2/6hkLq81qmEOlEa+n/3VMzDJeOCh4YBN9YpiBqAJbaaVJ3Nu8hiaPgOkVPXK9bWyAXPv8TiJ5rYi
	2EfYvBj/Gy0/Ek3BLgpQWypDGhlmWFCHD12knpexPMVwLknVa8Irysf5meghtXHPlfzYuRARptmlJ
	5hk6s/cK2HOteuEvAwTBSdgdt1jdWZ0zI4+Wq3JISAbmJKtxIZsfiXeTbW/ZmEANCNwmnta21wTs6
	65ZpHs1W8IwIc7gIjs9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tI7NU-00000006Q5h-2XHK;
	Mon, 02 Dec 2024 14:26:20 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tI7NR-00000006Q4v-4B4h
	for linux-phy@lists.infradead.org;
	Mon, 02 Dec 2024 14:26:19 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B28gfnY003967
	for <linux-phy@lists.infradead.org>; Mon, 2 Dec 2024 14:26:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	C9+aPPZFAJemDOGMrrzpUMQVAlKiCGsFemq1XONcpZk=; b=akdzHQk2JJvu6c+o
	cnFE7I42krUUOtwqd6rQMddEcSyZd066KzphvS2c5B8jHDcf8YX5ToDEA/uDVnt6
	hWGds3Ugt3t7R9qfBjptMG7h2noyxlp4Ese/lk4TC5iDt1Ip7ZaqZ3Dbd1uwVSNe
	Yf1fdh74no9Uc3h98tFdTt3NSQws5xi5geUPf1pDYGD4MoUONLk60xfR8bfHfKmQ
	KmZzIRxZfUeG+UQLOB3XBC3owX97GqPJjTarEcsQ/PRE3ZaY7Syg3kkCXqo7ztCC
	4WWR5SAGdxobqnE6fC50Fciu8kPSLUJCtWLZh0uayWxFFcQUvBYOThAWt0Ocdf7q
	YDzpmw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 437rded84j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 02 Dec 2024 14:26:16 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6d88a5bb5e6so7516546d6.2
        for <linux-phy@lists.infradead.org>; Mon, 02 Dec 2024 06:26:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733149575; x=1733754375;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=C9+aPPZFAJemDOGMrrzpUMQVAlKiCGsFemq1XONcpZk=;
        b=OqBnVHT40/Dw2EpHvOOIRdUdp3AQC5Fo6USUAUcn3wpZ+F1kQ+ZVhuY+dB1z+ySyBX
         GOHJKsT+kOzT594XKYbazCqaJTZrkS24rbNyp60v5w7I6qrC+ELauzo+5OLDv1xTn0lG
         OOYYEg7cpEWlyEUiaWaXlqWO/krHRXAUZH1oKg1AVhd4JpCAMImkb11ffoBmLZLiyouQ
         DWMpM1jMo/iJTRwhuzytB7rG50duWPCjgrkBZOzPkhWhTebrcwLnnt/jEk1e+7CxruzF
         a1JmNugXOifZJfVub2UYtWKJG9VL7oS27tmLDSF9MvOrZc6ZAuYIkFSAUvc30wRDAimJ
         yo+A==
X-Forwarded-Encrypted: i=1; AJvYcCXKhhy+5WbKjoATomUH/AEbM69PUTnxtQXxhDhzOfZ2WuMWprY+OnmVHBpY92m75RGeRAe/Pt377So=@lists.infradead.org
X-Gm-Message-State: AOJu0YwSjgNZJAf2/uejzGAGAX/G33n+kEUK4GJl3vcbtfhPnDRYbG8I
	uSPw7E95mqvzGLypuoByBTtCUT0V0LLmKtewOQqi/ZKmK3UK1yHDgws/fUPqanGQZIUiIHncFK/
	csfoniu3tfaWJThjjkKh1b0+Tfjt+AYc7vnkE2qDn+aAlYhQ2JaTN1csoI7grOJoR
X-Gm-Gg: ASbGncsq37Ch3qBu00rxSvtMLvT4bnXgdrD/P4P72c1lMq8lqL+hjLFTJs17GsQzt0X
	HE3AxJ1TFx+YBguMjR3U0qMHEYnefeeeeahMKrP8iY3d82AQz7NlncMZ1Fw8qvaGd3e9X8ema+x
	y8lG1d1tFiSEzMzmE3/SrLkGnFBLxwhaC1h9eKolI5wTb855b16oYTP+oNyYjX56mPcuQ0jYrJ8
	TYo4U3fMYuoKUQUihuofw/o1e/to4alRE07Tf8naxciOfqC/NA/xBMBZRs2inJqC4IxaMVcGLTW
	D9DHc830Yqk8jUYmkS3OM74sbgVP/WI=
X-Received: by 2002:ac8:5f46:0:b0:466:85eb:6114 with SMTP id d75a77b69052e-466b34eb098mr142606581cf.4.1733149575120;
        Mon, 02 Dec 2024 06:26:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEks5Q89gw/Ra65Tb+SUhB7kvtV72Gy/kgkC1JbMoRUkpqIZ4f3DHNc/WA4iENdSFUUHOA4+w==
X-Received: by 2002:ac8:5f46:0:b0:466:85eb:6114 with SMTP id d75a77b69052e-466b34eb098mr142606291cf.4.1733149574666;
        Mon, 02 Dec 2024 06:26:14 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa599800a6dsm515436666b.90.2024.12.02.06.26.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Dec 2024 06:26:14 -0800 (PST)
Message-ID: <25873cef-2871-46c0-a764-9b5ee85e9a58@oss.qualcomm.com>
Date: Mon, 2 Dec 2024 15:26:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/6] arm64: dts: qcom: qcs615: enable pcie for qcs615
 platform dts
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>, vkoul@kernel.org,
        kishon@kernel.org, robh+dt@kernel.org,
        manivannan.sadhasivam@linaro.org, bhelgaas@google.com, kw@linux.com,
        lpieralisi@kernel.org, quic_qianyu@quicinc.com, conor+dt@kernel.org,
        neil.armstrong@linaro.org, andersson@kernel.org,
        konradybcio@kernel.org
Cc: quic_tsoni@quicinc.com, quic_shashim@quicinc.com,
        quic_kaushalk@quicinc.com, quic_tdas@quicinc.com,
        quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com, kernel@quicinc.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        Krishna chaitanya chundru <quic_krichai@quicinc.com>
References: <20241122020305.1584577-1-quic_ziyuzhan@quicinc.com>
 <20241122020305.1584577-7-quic_ziyuzhan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241122020305.1584577-7-quic_ziyuzhan@quicinc.com>
X-Proofpoint-ORIG-GUID: 0op3aJO7Ws5M7ByNkn1JAzYQd-Xp46r3
X-Proofpoint-GUID: 0op3aJO7Ws5M7ByNkn1JAzYQd-Xp46r3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 mlxscore=0
 adultscore=0 malwarescore=0 mlxlogscore=782 phishscore=0 suspectscore=0
 impostorscore=0 clxscore=1015 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412020124
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_062618_040058_6DEEEE0B 
X-CRM114-Status: UNSURE (   9.18  )
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

On 22.11.2024 3:03 AM, Ziyue Zhang wrote:
> From: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> 
> Add platform configurations in devicetree for PCIe, board related
> gpios, PMIC regulators, etc.
> 
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
