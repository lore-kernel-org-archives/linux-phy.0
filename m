Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E196C02188
	for <linux-phy@archiver.kernel.org>; Mon, 27 Jan 2025 10:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vMvrCDt54xkK2rzsLrE+VYJyAyDDSWn8bXjEpYPJ++Y=; b=AroeTiB6cjibfN
	fS2Heq7m5hLzE+FDkBb6OYc843pD33jVIGWfO81+jhoh3zm5IDJZjzuvJu5Ys+10+0JNZyCsrQli7
	aNdD8bPo4/tH535Q28a/NNM3zYDRSLFA/FVzNJndRILouRC5mhEvvkF7qU2eJwRPXlfo+8CPUKtSh
	yWV/cmgSMdKbAOdMq7d5Y81rLtBrvyexUa9n/feqNbgyqcLue2nEA6STh0bjuO1C3rbUl9/VDL+f9
	ukKgrKKKgUE44hvCoXpbStFx57YOIZP3yPox9fXf0o0MW+7LnnKyyoHI6d+yB1zcDlTkyYVtZ9A25
	oQjDXZ+MNp4vzutC9L3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tcMEf-0000000279l-1kl7;
	Mon, 27 Jan 2025 10:20:53 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tcMEd-0000000279O-011B
	for linux-phy@lists.infradead.org;
	Mon, 27 Jan 2025 10:20:52 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50R4rd8Q022752
	for <linux-phy@lists.infradead.org>; Mon, 27 Jan 2025 10:20:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iRHY/8aTKLk5Axq/TaQ4eFvrRO/9DYyZjmqiQ/7+6XU=; b=jpMv7jNoRqDLEUbW
	JdFEZR1Q5XmRERgVr8OVhbMxQmEBVForyNHaKjSMz1+t8p4KhnvMdQ0ym5wGDA2i
	YdW4GLAlPh3d5FF0HtJ/IT/rXOH3MF+k4KLf/K0HD6yFuZzazaM/rbztt83f2MFT
	H4Myw5tS1Zcy1jlm3LW2FBpddicV6lkHabeKh6Q/oDF2mq469tuHhNXehUX1riWs
	9kjmeGVcM76NXoSv7QQMaeliBNYSM1zXBj8L+EMyhF+TnWFSvMpiEdjAAYqn2WCa
	AZ5PfAqR0SwvDBQjXRPpWp9tIgDLKoSqk04RwwhsQOYxTk4pE/xUKN/gnU9CDUBd
	LSzJ3g==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44e3h2rkvc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 27 Jan 2025 10:20:49 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-467975f1b53so12988531cf.3
        for <linux-phy@lists.infradead.org>; Mon, 27 Jan 2025 02:20:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737973248; x=1738578048;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iRHY/8aTKLk5Axq/TaQ4eFvrRO/9DYyZjmqiQ/7+6XU=;
        b=PGHks03t82cyNjqrb5K2ER/BlZfGP4mkZydjp0Zavv9qIBB6LJ8NBT/oojTsB2BYZ1
         xS09jd7j79PmSsFUgI+UcMPjNhCs02xEfJPpS3PLFbTiKpPZpcgtYDBUsauRC5ifoHV6
         YLZBq35wZitM3aJ62/SEYF/kGoy0snzlvb6DmTQVwx8o2Bbn4B/BwCzYEZzGAbK9Vg48
         o4tdrv1QykF87pjM+epJFwlOtRYMqjWKxXw0RoSKzRv2s06DiMxWv5U0y28Chq2L/6kd
         zffDlu2LatzpnI2HO1Urb5P1TPQX3XYZE1CBhVsOWmQ4J2q03KFAy7NF4j8K63V0UC/0
         kUCw==
X-Forwarded-Encrypted: i=1; AJvYcCVTAUYJD4kq4QRq1PXRA2j1GPo3s/RAoch130po1F55/0fChTwMoyAxm3YTwDw7GVXNdSqDuzOE6Sw=@lists.infradead.org
X-Gm-Message-State: AOJu0YzsEOwDHP5BW44ooAGSULp1pVVO8RbiLbBj5SiO2H3gzaDgWJ0D
	ahJP6XMlUDxvV4QaMPncHNJI9HL/OTvG9YzPoMx9qmoFXK2SAX+YDSWSaR5OwufwtUCdfcWn2XH
	rn0rgnxqyYrV8Jd+k3ntDE1LKic7HlHuz2UxLzQn5yJsDvjR4kiLGDCrI88F7I1HH
X-Gm-Gg: ASbGncs24wCLHaYuPQOAnCqKw3se7AKQ+5i+FFrEPJr7TP4BIftiTKywEVJ+qSWqbt8
	tbCy+N/Iky6V03EyeDQwgj2HiwIvaTLsry5oDjfTE0OHck9G2h+OcMf4WKzjKQgNKlHSN8ESbTu
	D6QYlS0lJePedtRkYatssx/nnYwQ9+5zOwP+8RMaROYSPm+G8MI8PSAGfeeOLYxovxNQk4RYuhH
	8/Ip1JHeSJ5jn3J1h262Sm0kcdGOiyG6W9XfyUBmAzIkwCbjBSigQTvonQHt+lmGTZvzgSANfay
	cDzL43X43+5bmUOv6+2+i4gZAKjh9kAh8nq5nVF6jPjvwFvCShPXYBy0rjU=
X-Received: by 2002:a05:620a:6884:b0:7b6:6b55:887a with SMTP id af79cd13be357-7be631f49cfmr2438125785a.6.1737973248516;
        Mon, 27 Jan 2025 02:20:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHuECCNFGoubW/Ui1yA1XWf9mVhKR81xmqRhv+HGsGJHLDgTBaX/glpXBzB7yhX5w+9mKrFPQ==
X-Received: by 2002:a05:620a:6884:b0:7b6:6b55:887a with SMTP id af79cd13be357-7be631f49cfmr2438104185a.6.1737973248048;
        Mon, 27 Jan 2025 02:20:48 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dc186b319asm5333483a12.49.2025.01.27.02.20.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jan 2025 02:20:47 -0800 (PST)
Message-ID: <f11012b5-f387-4144-a4f2-b9d629a4c53e@oss.qualcomm.com>
Date: Mon, 27 Jan 2025 11:20:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] arm64: dts: qcom: sm8750: Add UFS nodes for SM8750
 QRD and MTP boards
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
 <20250113-sm8750_ufs_master-v1-5-b3774120eb8c@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250113-sm8750_ufs_master-v1-5-b3774120eb8c@quicinc.com>
X-Proofpoint-GUID: YorcOTcZDWwXO8IqhTcZ6woSg4g6S7ZO
X-Proofpoint-ORIG-GUID: YorcOTcZDWwXO8IqhTcZ6woSg4g6S7ZO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-27_04,2025-01-27_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 clxscore=1015
 phishscore=0 lowpriorityscore=0 adultscore=0 spamscore=0 mlxscore=0
 bulkscore=0 priorityscore=1501 mlxlogscore=746 suspectscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501270082
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250127_022051_065906_E0C62004 
X-CRM114-Status: UNSURE (   9.00  )
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

On 13.01.2025 10:46 PM, Melody Olvera wrote:
> From: Nitin Rawat <quic_nitirawa@quicinc.com>
> 
> Add UFS host controller and PHY nodes for SM8750 QRD and MTP boards.
> 
> Co-developed-by: Manish Pandey <quic_mapa@quicinc.com>
> Signed-off-by: Manish Pandey <quic_mapa@quicinc.com>
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
