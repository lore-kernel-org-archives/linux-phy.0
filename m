Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6893CCA1002
	for <linux-phy@archiver.kernel.org>; Thu,  4 Sep 2025 12:04:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pALzTkTH3cjjCFR++/e+V4ROWqyzS4ax6ZV2io0lcxg=; b=mHcx5L+6AiV5C+
	MTifdH8dM1jpJj18KXZ9tm3Zj7eTyOD9q/++1a/5s/aKh5A99FIBiV1p9t1Z4zWDd2cHDSJFQ/8/1
	/g0LqrDJCSxFy9/MeT0J2hJltjTyN2wis6CzFOMttU0mumDsIv60ajKuOn9gvqk55JMREEtNMYdw4
	IdIfuWm/c1+pVaYl1NGlFwyF/FTezIG91hK6d85NeQ0uZcPWy+PG6DlHky5LbNkB067aK+PtIlNpj
	d4rRSm4WMApGpJHt/TPzzOIuu2/gDeodDTiBEtXRx/OJe/Nulw1xYlDWhv4UPEfGbGAc22mp9gstY
	5gfd/SfAHxOHTpiQPJkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu8hZ-0000000BQh6-0SOX;
	Thu, 04 Sep 2025 12:04:29 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu7VM-0000000B001-3fWF
	for linux-phy@lists.infradead.org;
	Thu, 04 Sep 2025 10:47:50 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5849X7bW022976
	for <linux-phy@lists.infradead.org>; Thu, 4 Sep 2025 10:47:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sLHQFn6pkMnsAa57RfPomE4K+Un5vLqC03X20SdqDEQ=; b=L8UprB7/oErcgVda
	zKHYwOzjome2tvY4NfHJAWGpY7G+0exIFWN2ZkVyhPP8XRDKv4KTnyNqIL8xKs0v
	nw57QFoAMxeCKT38V8Hatw3UpFmF9zTEyjDDtaGHo2pmCOnsfc8coJ2AeqD0QwrX
	XL/KzBGeTLvCR9ofY7ULvAfMOB8Q+HlMpqemaXcG7Eo511B3UdHI2aHYuOpXXEkQ
	arLY7Nj9MOxmDbINYQEVC6Q6e7E9RMoi6yBi58p+yoepOxl7pvt8Sa0JkbUTXAtY
	n7wQviY+8q/ed3m1aVUltLDbpDQIm4PL7qGf5GbxjgqkdOIcD3Ldatr6U46Z57R1
	fKgYcw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48uq0eqb16-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 04 Sep 2025 10:47:48 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b32216a52cso2218521cf.2
        for <linux-phy@lists.infradead.org>; Thu, 04 Sep 2025 03:47:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756982867; x=1757587667;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sLHQFn6pkMnsAa57RfPomE4K+Un5vLqC03X20SdqDEQ=;
        b=XX9qOqvKxPPr7d5KayvSCd6QNfeBNllpRBudfSqUJEPbd8Dd4FrU+AjCOCWRDywagU
         i1MoppB9qGCybeQ3LC3OL+migwjncsqnp3y7/ua71nqwbn9EGOAAK9KuzJ2mrjV0onf9
         znoK/1Uk7R3uCJWyn1V/uOLCv5XThH/VF01lqKXke8dB0C3QaxYHeXV4EwtFioGNP5aK
         t+mo4/Q17u44ijJVIScR4H+OddN/CSReYV7MHOHjreObJF4xfWjmu+iKYtMiyJv+Dv64
         RGkCcStnPbI0ZtIYY/zotNnmZ3krDX1HSJhuVWCahv7CR0cC6pU2wRJ43A1bKEYvaeYQ
         kO2w==
X-Forwarded-Encrypted: i=1; AJvYcCV3Yn1MR1NbrgDqDH0md+hZx+mrfGNOUXWr1hRNYJchbKZpYkqcUuU/DXY+kvYI7GMWrYmivx/gL60=@lists.infradead.org
X-Gm-Message-State: AOJu0YyrpeDhYdMN2G/YxvIY3CiuAZELabwUVBV4yHXzVV5Ej7jEKSoM
	Bz9NwsqybB6+mH9ENWR8b7mxiPOsZOGvhuF2nrv7ki4Jzi4XTfkE9RBmipHFJhnoo992f1K1Hzs
	ZO1u4AqXUupj78Jk+IOCKJRfLsZpp1HPaN34wdTI10BGrcIEJtNad7ZoE/Ibl8/QGn9rF
X-Gm-Gg: ASbGnct6tMbw1LL5IgNACq6b542+Yx2szUVyIp5oEV1jdI7EgaXvAWVmDPIEwbocc81
	2EY96mCn5yxkrzeDOxGF2adXQ4HyFUDw8ueP9lqHGw7Ff7c7qer3LKQKw/MNehGTxhDNs+ogV9D
	5xxLnTD3WUWhPWaTLzuNfxKWfXfBoMCg84mriXbAgGZd403e7pAOUJh9IAKgWX9UbUuO/KJUnpc
	hwu/4w/QTyknk0t1DIgpTq/Bf6AI14q+AlU0uaBU6dGd36KR4bhU5WdGASNylDlVamO8zDBUW+x
	imYMG6ThYljGKzpLQxI+VAdeqRq+DpJPuCG2SXYZKiZ73NHfTiTo67LrZwDlzeiQAIbyZucchE3
	Z1Kxl8hONbvToY1VDzPcnmA==
X-Received: by 2002:a05:622a:1a04:b0:4b4:95d0:ffd3 with SMTP id d75a77b69052e-4b495d11860mr34284961cf.1.1756982866903;
        Thu, 04 Sep 2025 03:47:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGXASXN0Fwg00LcigTqQaOYYWJNuiGp81igsFg+arEoNr/lKhb7mhDv0j6dJtANX8BbKakqPA==
X-Received: by 2002:a05:622a:1a04:b0:4b4:95d0:ffd3 with SMTP id d75a77b69052e-4b495d11860mr34284721cf.1.1756982866457;
        Thu, 04 Sep 2025 03:47:46 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61cfc51e109sm14011468a12.41.2025.09.04.03.47.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Sep 2025 03:47:45 -0700 (PDT)
Message-ID: <bf5e7ea2-9f0f-4d83-a567-028ffbe184bf@oss.qualcomm.com>
Date: Thu, 4 Sep 2025 12:47:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] phy: qcom-qmp: qserdes-com: Add some more v8 register
 offsets
To: Abel Vesa <abel.vesa@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250904-phy-qcom-edp-add-glymur-support-v1-0-e83c6b9a145b@linaro.org>
 <20250904-phy-qcom-edp-add-glymur-support-v1-2-e83c6b9a145b@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250904-phy-qcom-edp-add-glymur-support-v1-2-e83c6b9a145b@linaro.org>
X-Proofpoint-GUID: tV4G0fwquF-MbfkfLKsDxaNb0rdzaEuI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAwNCBTYWx0ZWRfX4i8kAnRMSuyH
 qfC85rL31+phrdnTG3JGDWcDyX7YokS4+sjLuFjveGB0L630EHJLneGDIT2KZs6sS67OqX6/Vr+
 QshwMED8cC70+iZEKLQHMMRczk7J/MIuj7/ZHlXJfEDNFLuLtMTygdFFD8Rshx6hLcVP0arADjy
 NkILqog/DHCu4mSMYNthOiZ1dtz0S4CvXEwANRX+VpMD33P87/5XQKnRpNFhIc1zf60gLBwpPPI
 ZYlcIUkoYSTuo3b45t+KmRVHMspCP9OWV/eunjhT6B+hTkuLKCpiWlNrDlBXPOYibXwvjkABPZ2
 Pu96DpItjC9+HnOK0D5OZrOf+KmNDh38w7+FoUSg3oTmiwi+oAJmWFJvtTiTlyTbNnKC9HAft4b
 sIRCpYlp
X-Proofpoint-ORIG-GUID: tV4G0fwquF-MbfkfLKsDxaNb0rdzaEuI
X-Authority-Analysis: v=2.4 cv=ea09f6EH c=1 sm=1 tr=0 ts=68b96e54 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=0CiQ1jBnox6ZqaB-0zAA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 clxscore=1015 malwarescore=0 phishscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300004
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250904_034748_919415_EDAC5B5F 
X-CRM114-Status: GOOD (  10.63  )
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

On 9/4/25 8:55 AM, Abel Vesa wrote:
> Add the missing v8 register offsets needed by the eDP/DP PHY driver.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---

+ a couple folks that I talked to about this lately

Please create a separate header for this, Glymur contains multiple
"v8"/"v8.x" PHYs that are not identical to one another (or vs ones
present on different SoCs), even if advertising that revision

It may be a partial match, but there are also stark differences

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
