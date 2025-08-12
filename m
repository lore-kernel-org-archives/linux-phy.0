Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1114CCA0EC4
	for <linux-phy@archiver.kernel.org>; Tue, 12 Aug 2025 16:18:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r7UsU1kF144bwoOfvPbCTZ1TEMhDCUMSRxCatQNdd8Q=; b=kGbZyDomquwr98
	CMCHkYecO4/kj0V1Yn8HiUP/MqtBZK5dkZ0f/ZjLeWpYztKjKDMdJxva5Of3JgoBsza7XlbGUa8DP
	km09wGkfm//kKOuewFTjJKm9kE26BTvE9Q3NuvWSH/INOteY7OJu3DL8LDHSLC7xOXfDIFNjpI2yf
	3ZMKMs16B8D+4uSb7nyrlYAkBMW5m3HZC5DWDuimaTid2Qt83w20DCu5/WXsYNnqegX0aU0Oh39+v
	vgmfy6c/DfNCK+vYvaKLXYloJ0xCHOpEdfhLqnmE0QMIZaMdjzA6h1QyEFp8LqB/5xcfiBMp1F+mY
	8HqYDHBbLxF8YSVnH54A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulrhg-0000000BHGS-2Cdv;
	Tue, 12 Aug 2025 16:18:24 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ullYQ-0000000AQSv-2hgK
	for linux-phy@lists.infradead.org;
	Tue, 12 Aug 2025 09:44:27 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57C4TuQt028799
	for <linux-phy@lists.infradead.org>; Tue, 12 Aug 2025 09:44:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uVjk2bmpZceirDyJ5lxPbhkNfa1iK7XMzWGsFKMIYyI=; b=dLhZToN+ZMidVA/h
	gBMZDgcc2b7zbnX0BAbXgnMiQupk9yUh/7UiN422qSlI50qcnhhcVdU2TT7xFp1S
	2hgi4RJJHnBkhukUQDCdOcBnkuWXhdY+ikpsd79SeyzG11rY6O+N4un+HCvLtZBD
	Tr2nd7uvjoQdfm9NHdVqVu+PgpPpx1taRB/fkmwevmkDmBbs0XEy82lIlJTYwZA+
	jFEZBM6L+vvSPesOayKFU5ilMusBe6vIAsizZxbLvPNAEnBJI469vURZUCMR3xl1
	wL2ivSfukJ1ve6c0jrzusBxhe9l0aLDLBs82vBgZGaTjypC2jSvP9DslkazCrru6
	Gq+i1Q==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dw9sqt5v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 12 Aug 2025 09:44:26 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4abc1e8bd11so17791951cf.3
        for <linux-phy@lists.infradead.org>; Tue, 12 Aug 2025 02:44:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754991865; x=1755596665;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uVjk2bmpZceirDyJ5lxPbhkNfa1iK7XMzWGsFKMIYyI=;
        b=o4L6i31y7jzb2nZwRvW5PF3s8RczNgdag5c3puawXl4+IHsCgngcUzWwQoZwuM5uBw
         A+LoKJJc0JVekeS1LCgVAfML7D0bu3NXxGxmB0mUef6glfNImpXCfuu1MWo5qk5zNhAe
         k5arddVr9kA6f8DVS9eJUK+Ur0yomCtCVuq2Q7GsNNAtv53z1MdczKr2nXjDuerIgevL
         dGt8O9fdGxcTaBkZLKzEowZxPwvM2r02uTdfWMPuerwId2CQl+vzvgceT4fk4gUu3iWF
         kRI6bmbA3Jfcz2AZobz5QDwoqRHM3rqUvczPh0vtzDFwhREOsQwojAbx0/bpHxZUm0M3
         jshg==
X-Forwarded-Encrypted: i=1; AJvYcCUh1btXPt47m9cScHocEWSpa/PY8oSynBhCYThBD8oTcdz32hhId3JRvtdDjHdaPSkYDcMNqG67iEE=@lists.infradead.org
X-Gm-Message-State: AOJu0YzjTcNXJHaXILDnxXoiEQuiQGNxYwMO/nVdvd0iKPNWx4AtXXr2
	rh55FUFrlTvGrfOvn3CCN+dAILOZQ+zvPRqGpWNrft9oRW84lvXiAYdz1NeauLJxFcMPkKtLnpc
	u6cNMG71HJH/hmNNMVApA1bMVctfePIC4FfQ4uApL8W5nRpRObMWo4/LDpouGVvoFtSrHCxUBDN
	0F
X-Gm-Gg: ASbGncs0x3Q9LYxNbI0OqohhuJ6rZtArOxDspKvCxW0p6IONPp0PI5azr1+mOX7Iaxt
	4TbNQecdFUfbOl2SJrj4SSt4b24aHOmUG830AnBz9qK5mjevXJ2JRDDrFfOVLMfY8v1QE94wkLq
	3UZk7rBpF2mx/JAJtGUebCC+enqWmrNEUgirO9F4kR64juEO9u2HNlQ1UBC+8MVlRCSa92DOGV4
	lmmEbwKhsJDehjjnCJYiE8ppHPL7Yuy1bXXPYy69vv+GyC7Cmyrq/QT4WMkKCMkShc1czaKl6gg
	eJDXpnJ9YyfwzbZ7oRzpBKY6/i6Shg1wucl1xkWL1far/UJ4IMfVgPCvZPB8/o5m+qkM0VuVFP7
	JvS+j+ZwFhTn5vtDYBA==
X-Received: by 2002:a05:6214:dc6:b0:707:48a3:f833 with SMTP id 6a1803df08f44-709e223c2b7mr2670136d6.1.1754991864643;
        Tue, 12 Aug 2025 02:44:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFqy9dVMC9gipxsspsY3jwJKyi3zLMV0FmTDf11Oprz2Uiwnp4y7BuUhf8pqW1skK9briuFUg==
X-Received: by 2002:a05:6214:dc6:b0:707:48a3:f833 with SMTP id 6a1803df08f44-709e223c2b7mr2669976d6.1.1754991864055;
        Tue, 12 Aug 2025 02:44:24 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-615a9113e40sm19914549a12.57.2025.08.12.02.44.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Aug 2025 02:44:23 -0700 (PDT)
Message-ID: <c3d192d4-934b-4fe3-9b1a-8405cddbc668@oss.qualcomm.com>
Date: Tue, 12 Aug 2025 11:44:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qualcomm: phy-qcom-eusb2-repeater: fix override
 properties
To: Pengyu Luo <mitltlatltl@gmail.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Abel Vesa <abel.vesa@linaro.org>
Cc: Luca Weiss <luca.weiss@fairphone.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250812093957.32235-1-mitltlatltl@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250812093957.32235-1-mitltlatltl@gmail.com>
X-Authority-Analysis: v=2.4 cv=J+Wq7BnS c=1 sm=1 tr=0 ts=689b0cfa cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8
 a=v5-_rWYg7EQBkViMn-cA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: iZWCLwK6Sp8IEtowBqvgIziU9BlDpj1f
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAxNSBTYWx0ZWRfX1O0wMcLemEUL
 EHXQPnaKSrYUPCLB3rQs8ShSA1SwI08tebhOA0HEwJm3PjCYAyVBySvALd0kwX2WSVWS1+Xv9Be
 T85ubVTUNOCRgJEQIprYMiDqBILJXJN1LgsaCS5FevTMa+hXO/7lwW5E8ZUfk27JolxymEZRbiG
 mwEWkMlIsIQt6R0nafI5JDUfiy9TAO/OJmmEzZ9PPgeSY5zutoL4sCCiqI30n1rdlUtfWlsalUh
 7NgFxDtLg3Gq3sSegez0vUcAcHHIriH6VV9beO9nNeCqut3qeuB3VEAUKLMkz3AjYxTK+DCalcc
 M+G4gWEWZKLsQy6eDwbL2Rj6Bl25PFSp3LKSOxJwdEvCKGQmxSLXgFu4XR1oBfuLJn9eBuZ1ovt
 3+ZSXXIC
X-Proofpoint-GUID: iZWCLwK6Sp8IEtowBqvgIziU9BlDpj1f
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_04,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 phishscore=0 suspectscore=0 spamscore=0 clxscore=1015 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090015
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_024426_691168_4CB4B55D 
X-CRM114-Status: GOOD (  10.83  )
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

On 8/12/25 11:39 AM, Pengyu Luo wrote:
> property "qcom,tune-usb2-preem" is for EUSB2_TUNE_USB2_PREEM
> property "qcom,tune-usb2-amplitude" is for EUSB2_TUNE_IUSB2
> 
> The downstream correspondence is as follows:
> EUSB2_TUNE_USB2_PREEM: Tx pre-emphasis tuning
> EUSB2_TUNE_IUSB2: HS trasmit amplitude
> EUSB2_TUNE_SQUELCH_U: Squelch detection threshold
> EUSB2_TUNE_HSDISC: HS disconnect threshold
> EUSB2_TUNE_EUSB_SLEW: slew rate

The commit message is a bit.. dry.. but I suppose it conveys what
the problem is
> 
> Fixes: 31bc94de7602 ("phy: qualcomm: phy-qcom-eusb2-repeater: Don't zero-out registers")
> Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
