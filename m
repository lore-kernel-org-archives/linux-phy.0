Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B06CEC0219D
	for <linux-phy@archiver.kernel.org>; Fri,  7 Feb 2025 22:56:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tU+4elVy0kuuqGvCjQw1XDdgWbGF8wnPDc8U9j3sb6Y=; b=SzeC8g3oFDBrhB
	M+/x+EsgtUDwfHxRwYDOilOZZFJmWDWWXyt8ZtFdEYYEzJvt/cO5/DxrV6JvOidng/FVxx91qbQu3
	61eBhCA759U6Mp9y//fymrTh3yJSbEl2ZYFhv5PpKLRnf6Y9kDP4Z2S1J0Gg7HuAFx3oyIq2ZnXzL
	X9GmUZwmmEurMahO5SCumewyiCbS9M9wUkkrGxT6YsvQcSvETM726ilCq93kqkMMafqO6nv91gxrO
	LyAM7A2OMsu0/qjGiyOm/AcuP3OahiKKc7g15ZBE9iE1JYUETNRXFW2fhp3apd2eIAZ7FODHEanlI
	fP5k+LH3DI71jKC6ImXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgXGu-0000000BSJx-0ZXS;
	Fri, 07 Feb 2025 22:56:28 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgX85-0000000BRN1-2QvM
	for linux-phy@lists.infradead.org;
	Fri, 07 Feb 2025 22:47:22 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 517Hgcvo014951
	for <linux-phy@lists.infradead.org>; Fri, 7 Feb 2025 22:47:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GSfrT82LSQv1cmL5Q6NuLOzNcusRp2aoe4uqa6zAbDk=; b=hZ+oJS/wbJgwqJBl
	nyf2cAtw3hj0J0dYY+QaMuFSG6sVkBGmKo5JSCgv+HNmXu+OCOm6LVDnAOIDrNBk
	Zwnm3lvIhAka2ikEuLSrVlsB9YPq8CSW/gvN77nvjIzZp8p7P0WLDFoCqkze23Mu
	HkazSrVSCvVr3/dyrggSKeQo4UVWWLK66NrMTE2W158jd018dNEpHwZNMMLVEAyQ
	XSJXAdUns4rHpOR40ZBDOV30M+Bn9OOZTs1vcByoQS3kFMdkOxNHV/X7GEjPz52y
	zbx1XO/hME/l/sN8b98DlnrpHvLBJOxHyd4BDWo9iBX4p417t/j5R8s8Yg5xsUWh
	ffZF+w==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44npt18m8j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 07 Feb 2025 22:47:20 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4679af4d6b7so3795841cf.0
        for <linux-phy@lists.infradead.org>; Fri, 07 Feb 2025 14:47:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738968439; x=1739573239;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GSfrT82LSQv1cmL5Q6NuLOzNcusRp2aoe4uqa6zAbDk=;
        b=eZ6WRgankv8W5Gh3oGdAzUJGpKR2X5OHpj3YxFb/1GHemq/ptBj4ASR4W0mI4ttdsv
         AU2+/RZ6E7MEs7hrxiCMNSedsXzBxXhHdJpacgORgqDnkfzFsV5p5GrAT32ZHxorHhjf
         KSKCtHflXjlCnwqlG9/1F1rtJmnXAuNa8xDv1l8TlswJwDqNFchGqhh1e+m2rtHs0LXT
         ANc8Zipn+RjCWoGV2bXdslH8F8Ec9Szf+YtGqoH+YlF75vUZ6SjZwq1h+dOThtWYUysg
         iFyKWVzRDcN6fa/yKktsZcODwzfktfNZp6PiDHRPgWp6r9W0yrPpye+syRTdfuFny9hI
         XtZw==
X-Forwarded-Encrypted: i=1; AJvYcCUCWUZNpZS4hOWKkAqxjvNEQryPJEDk7H/as59luW4aEKkjmmmgosdFiYnowV0H7o4Xrtw19MAsT+E=@lists.infradead.org
X-Gm-Message-State: AOJu0YxqZF4UgC/OdfuqYzzC6bdw5EraplUaQDOkItcfn67KWXFhPR15
	6is6u2g7WvOY3BlTQavEXtBZKFtD+nqLr1F/GkhNAgP2t5q8uKJ0isGEInVwA374QFzWDI75BG+
	51W9mETiniAVpqr2X3UlTQEO5bmYFarR9QqDIWmc+mg1oQEAfQKjYzDYtQLisMnis
X-Gm-Gg: ASbGncvq/AoK9TZ8QnJ5JTVgdytQHaAR3uP1eE/SJvXadmRKCCzG4rMDKQMVocieV90
	lKXj86QiynRCwgZYQSqBVriQ7xb6eBDwO7z2PyM6Xqxaos/smCus7DCHzyM9adDVe0Iqd5P9w/D
	uv0PnJCTWkgOxYVZ+ptoTomTBKoWfpEuqx4j7VrX9qaWo94tdXtSJ0BJfPaCE+EYMQF2BzG2EZ4
	dU4G9rXP+kQwDA03efyJZUMINq06wM1OJTF1Zv+kgMXQ+8YD7gSyXzuL8YARBJz+ZuZiySW3BQT
	ZfqLY1cxu1zYcFptPTy7O2ZPGH7LH3IsXDJUEfpvG4UCQsy5ohMe2MkNZoo=
X-Received: by 2002:a05:622a:1b87:b0:467:6bbf:c1ab with SMTP id d75a77b69052e-471679c7d79mr29186591cf.3.1738968438842;
        Fri, 07 Feb 2025 14:47:18 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGSsJAkiNdMntxbj6WaJ97FcSyVaatuMmgkKKnf1mFsTb8a3C0KJ8abaktCJbg7NroLAnIrZA==
X-Received: by 2002:a05:622a:1b87:b0:467:6bbf:c1ab with SMTP id d75a77b69052e-471679c7d79mr29186181cf.3.1738968438388;
        Fri, 07 Feb 2025 14:47:18 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dcf1b7ad6fsm3197436a12.18.2025.02.07.14.47.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2025 14:47:17 -0800 (PST)
Message-ID: <c6352263-8329-4409-b769-a22f98978ac8@oss.qualcomm.com>
Date: Fri, 7 Feb 2025 23:47:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/5] Add UFS support for SM8750
To: Melody Olvera <quic_molvera@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
        Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
        Trilok Soni <quic_tsoni@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, Nitin Rawat <quic_nitirawa@quicinc.com>,
        Manish Pandey <quic_mapa@quicinc.com>
References: <20250113-sm8750_ufs_master-v1-0-b3774120eb8c@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250113-sm8750_ufs_master-v1-0-b3774120eb8c@quicinc.com>
X-Proofpoint-GUID: 6BxXlt1iIEOy-1HcrYKmD8lz08GuY6wA
X-Proofpoint-ORIG-GUID: 6BxXlt1iIEOy-1HcrYKmD8lz08GuY6wA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-07_10,2025-02-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 lowpriorityscore=0 priorityscore=1501 clxscore=1015 mlxlogscore=999
 spamscore=0 mlxscore=0 adultscore=0 impostorscore=0 phishscore=0
 suspectscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502070172
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250207_144721_645882_34A73521 
X-CRM114-Status: GOOD (  13.45  )
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

On 13.01.2025 10:46 PM, Melody Olvera wrote:
> Add UFS support for SM8750 SoCs.
> 
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
> Nitin Rawat (5):
>       dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Document the SM8750 QMP UFS PHY
>       phy: qcom-qmp-ufs: Add PHY Configuration support for SM8750
>       dt-bindings: ufs: qcom: Document the SM8750 UFS Controller
>       arm64: dts: qcom: sm8750: Add UFS nodes for SM8750 SoC
>       arm64: dts: qcom: sm8750: Add UFS nodes for SM8750 QRD and MTP boards

You still need the same workaround 8550/8650 have in the UFS driver
(UFSHCD_QUIRK_BROKEN_LSDBS_CAP) for it to work reliably, or at least
that was the case for me on a 8750 QRD.

Please check whether we can make that quirk apply based on ctrl
version or so, so that we don't have to keep growing the compatible
list in the driver.

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
