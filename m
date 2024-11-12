Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6F7DD32D9A
	for <linux-phy@archiver.kernel.org>; Tue, 12 Nov 2024 11:50:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YdXe+StO5ry6urYgwkH2p1FOV/20VWJwU/lLNip71GM=; b=OgqkHV7fs8CwHL
	yUE0M83i6yuHr9hDstIXy04hnePr1WEOqQ3gN0cpIsiIZd6MR/Ix70FacPV+X5RXbzSx7d6CsIjH4
	Tm8shJNwuIm2PPeY1lXp7dnpuuYXBcRQdsJPx2S93ZbCvuQkdMDosyntALbrNaBEzWFqgQIbbYJ3/
	S6DkxOF61F4wFyeH1ZBPLOUDcVhZaqG+bn2YMezVf70B3DupdpiU1/ojRH0YeNmE46BtOSusGXoAt
	tQyaYfLTorNSUnaikMlnKL42bouJpZmQZdWqe6UI8woZc6auoyoqxpVhZt7zf1gyNyrogrhRNFm6x
	JJMuQz0Ss/Wf+d763yfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tApPK-00000003HuJ-2Akv;
	Tue, 12 Nov 2024 11:50:06 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAonr-00000003AlR-48WJ
	for linux-phy@lists.infradead.org;
	Tue, 12 Nov 2024 11:11:25 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AC9etWq024930
	for <linux-phy@lists.infradead.org>; Tue, 12 Nov 2024 11:11:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	h5t7dc7G/jjBr8WlAlwPdc9LxkWltx2aKpkt9Hv6dQE=; b=hDVYOCMljcutU6aD
	8Gb/mUCrLbmjZiCK842u2yTxArjKNi46LwoR9896VHV3ouz8NuH0ywr116Yj+w/E
	8L1lAzvMd/qUNEJWFAY/ryzqU5X61MkrQRRnKHfMTyzFeXTOcsLIxJO5PEiTqhe4
	4YeFX7B+enlqVqUZgzIrBBTiKiTWSwEScXAplLJfwVOGk+RrkP7Nj37H8dbxLrwA
	lE7N27biVnwatQZPY1HM2oO6xDtk8MyE1o02DLpI5lHGFPeSY+GfUNV53vxum6sK
	piMKpWMB9mQxQZRdHl881BBuNyFdirgyKyTdnksfOAFPebxKZHHY5hg4nvywq5h+
	GDD6Rw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42v4kqr7cy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 12 Nov 2024 11:11:22 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6cbe993f230so1551616d6.3
        for <linux-phy@lists.infradead.org>; Tue, 12 Nov 2024 03:11:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731409881; x=1732014681;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=h5t7dc7G/jjBr8WlAlwPdc9LxkWltx2aKpkt9Hv6dQE=;
        b=CI6vLTWobP6BIz7o+5NkopAqisHy/u1/ZNPhN8qv9vyDdQpZGIolkf8478+FvMQG0W
         LHntntVLOBUpOZRkmSxzlUk7bhc3NVXea2EOG9WCRJZYEgPooP6AG3SZ7QV1Cu5gsNw0
         Ywq5JZXcmKHPl14Mu61MTT7LuP4b18z1Ho1p0tsMDXTYS49nbhzJtPhRhPYIawtIafyg
         CRgIzcFrOJQcNGO07zkVciLDtbm13w/fpdVMWzj37fbink4C/9HSJJ3ftYLc9frkPGU7
         obrSlPdS7s7YwQgC/4thrcyMg47dT+bGrfcczQnSt/2VE7x50a9yRPEgp1r+7aknKZ63
         CS8g==
X-Forwarded-Encrypted: i=1; AJvYcCWUFav1EoNXSkaVThpUJQyjg+59YOz4Xrh2lSD9Rjj82prz9JH/LNlhiGXErqSwSsthyybCUV5CNJA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzk16wxvLKvQjlgI3I9VG7yHv/adnF4TUcriCoYuFAT+nJ+Abn+
	adYtv3fHOHhMkolHo7EUvWACuXMAWq282q8DNMoIAEB7VZOjDHK2Nv8/yzQmSEM4ZPR/Pf0uAu8
	Wrb88XCvWCfSDrPBArl5klec7ZWOHbdOV6pLgPo9MiHlJGacUQhw+NaCPUqr0Vtid
X-Received: by 2002:a05:620a:24c5:b0:7a9:a632:3fdf with SMTP id af79cd13be357-7b331e616abmr930877385a.13.1731409881278;
        Tue, 12 Nov 2024 03:11:21 -0800 (PST)
X-Google-Smtp-Source: AGHT+IECna4oHPwSQGVlcKMRTsp1CXWFFwVbPJfw844hm3cc6KdClilnMMxBnVcLsnfGr7SMHpmrpA==
X-Received: by 2002:a05:620a:24c5:b0:7a9:a632:3fdf with SMTP id af79cd13be357-7b331e616abmr930875985a.13.1731409880912;
        Tue, 12 Nov 2024 03:11:20 -0800 (PST)
Received: from [192.168.123.190] (public-gprs527294.centertel.pl. [31.61.178.255])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9ee0def4b5sm710246366b.146.2024.11.12.03.11.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Nov 2024 03:11:20 -0800 (PST)
Message-ID: <a10193c1-a89f-45ed-afbf-ab75b3a4ba43@oss.qualcomm.com>
Date: Tue, 12 Nov 2024 12:11:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qcom-qmp: Fix register name in RX Lane config of
 SC8280XP
To: Krishna Kurapati <quic_kriskura@quicinc.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <quic_bjorande@quicinc.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Mantas Pucka <mantas@8devices.com>, Abel Vesa <abel.vesa@linaro.org>,
        Komal Bajaj <quic_kbajaj@quicinc.com>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, quic_ppratap@quicinc.com,
        quic_jackp@quicinc.com, stable@vger.kernel.org
References: <20241112092831.4110942-1-quic_kriskura@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241112092831.4110942-1-quic_kriskura@quicinc.com>
X-Proofpoint-ORIG-GUID: NNydleyQDRBYCRsmW978N7nyNWX7BjM1
X-Proofpoint-GUID: NNydleyQDRBYCRsmW978N7nyNWX7BjM1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 impostorscore=0
 adultscore=0 priorityscore=1501 lowpriorityscore=0 phishscore=0
 malwarescore=0 spamscore=0 clxscore=1015 mlxscore=0 mlxlogscore=653
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411120091
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_031124_187716_EB1D5A59 
X-CRM114-Status: UNSURE (   9.71  )
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



On 12-Nov-24 10:28, Krishna Kurapati wrote:
> In RX Lane configuration sequence of SC8280XP, the register
> V5_RX_UCDR_FO_GAIN is incorrectly spelled as RX_UCDR_SO_GAIN and
> hence the programming sequence is wrong. Fix the register sequence
> accordingly to avoid any compliance failures. This has been tested
> on SA8775P by checking device mode enumeration in SuperSpeed.
> 
> Cc: <stable@vger.kernel.org>
> Fixes: c0c7769cdae2 ("phy: qcom-qmp: Add SC8280XP USB3 UNI phy")
> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> ---

Good catch!

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
