Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B066CF6BFB
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jan 2026 08:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CjC0ASD0rt245tw7PjSz1jnz24luKHCH5xGADHr8o8I=; b=e2FaJPiw41Z2Rc
	Q1YlyW4Imd8UHVxuBmxSrVaMfUGQOfCUDmnARxsy0I9ntre9tyr0At1++f1e/gyLmN33lf1uayt8f
	Uk9/GUh1nwDnZ19+CxyDfd2TqMeNAK88EPjXfXCSMue9RMubquVzv9Q7IYokm5oD5BBkuXvyivPLg
	PGjHCG2zaOrO5if5wS/jUsZUkTprTqs8hBevUAy+T5FzPDCrzF4WBfo8kPeXpCh1uU0bdkjZVg3yf
	qSuPdxD4An5HD6tszfyzFBU6UqdorOdYSqgnfsnKCuSw1I4df+QBGId3ilbaY71U1mSYV8Jc7aQsE
	dyj/VwliUn5/OUGIQQlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdOiQ-0000000ENg1-0B1a;
	Wed, 07 Jan 2026 08:16:26 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdOiN-0000000ENf6-1dvr
	for linux-phy@lists.infradead.org;
	Wed, 07 Jan 2026 08:16:24 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6074m1dk1642761
	for <linux-phy@lists.infradead.org>; Wed, 7 Jan 2026 08:16:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=yBB2cmx9lnK1XlQC3aSe2Jwt
	16yLObyrRqpkJZ/2ddE=; b=LR/cx1/gvwPOxL+YejIBsjQdZ5fGh8Rc8g+gWJRP
	2idfmcVoG6tvuyNsbY4O3kV7FHwd0ModGGhnGTfUUA911Dbt6AUotxcj3WMDQvIZ
	Jp5j/1NOpneX9sPFOOxWkCYDdINnQbTo7m9O5dDCuGmp6j4WbhrArhnHinmqznXd
	gUNVQ3vwk09lVhrMmv/Zan4Byt1V4Lj9UwSvIH6X5EI3bcmDq3/6hvX7NOY+piZ2
	q7uY2FiKBf9IvgzYJh2DO72xT7GzRnKEaOw1wpI0K+N9JiopDqD2bCC4Qg+y0SaW
	jofwXJgS0CN4jeeZqsPERDqcAJ2Y4f2BGmBxd9MG942fVg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhgsfgke3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 07 Jan 2026 08:16:22 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-88883a2cabbso76389346d6.0
        for <linux-phy@lists.infradead.org>; Wed, 07 Jan 2026 00:16:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767773782; x=1768378582; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yBB2cmx9lnK1XlQC3aSe2Jwt16yLObyrRqpkJZ/2ddE=;
        b=NwmUlMU08bgX5d3V/LNii/XU6tYPmpU4C2AhdKKZi1no2hv0WX8+98jg4Mi86jluuD
         exGe8Yy0YU/B6NPotrIWWVwqlMmmSsyPRZ97d4tnUpnx3x8ubWktE/6hclWLd4GvwEV3
         Rn7pLAOWDbxXBhoWGFtLwnNXjnbs7VUIurG26Mqa8uiSmDoed+ajNmXfvn7t+f/WFF8E
         +hRFgOJ7J6nnkkJXz4OkCZ2VmeFWWr1JTTWuocRy7G6EsRVAeWLFDWkXN9nkp9/C6cks
         B5HjIdpUhwDirEtamjf8HrFU64MEr0TS8ozpLprC5TM0SpIBWMrQ6u3Q62Y5YKL81fJ7
         H2wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767773782; x=1768378582;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yBB2cmx9lnK1XlQC3aSe2Jwt16yLObyrRqpkJZ/2ddE=;
        b=ePrJqjSfnBoniddM/yXzHN1ey++pHmiec1hlx34cEdYQOrQweEd+FKAX4TxK0PhiG+
         NCoZN2jPftRcbYuJOJUzoaEiNaq66DthGXK+GYNMTIebkspJ6CJHGre/gGL6yax+5gNM
         arL5FKRAMea/70CRo4M1O2NxfssDIQgzwVR6qOEMU69tvtCK3pelUMQPhclSrny+9pyV
         J2ZEC3r+/PxaPPVmA7sPIDZBbDDw7WC2nRPwZgPSk2cSehWNMTUF9v7E1MC2SPR9BnWn
         T2lRyFauwDdZ9/JZ5k5KyB3W4Q7YGKGazoVO3L70m+eOXEo0ARTie+R0M19yZW7lLSx7
         5TQw==
X-Forwarded-Encrypted: i=1; AJvYcCXCh/2yxVMZRdK2+NHomRqYa/YOk6Bx7dm27BDkaB7MdetJUdRpb4wXRnzlijnRa6nZOsDzSEIsR5s=@lists.infradead.org
X-Gm-Message-State: AOJu0YzRwGI2ZlRQsdAAbDsZdKAe9lnIxBshgrFjqql9cF3001ptVJd5
	igGvnJYuBjf5gmpWVjUEsnKpr5zCskvAf7hqnwrg5wINakPVXTcq2xPuAoypM6eB1uMVZtv44jA
	bfx6Mxv1x247c3Bkuc+RSbJonhpW3JPTbhZtrHn98WmBT7iHcnf1h+BqzAZg4Bo5qL+gP
X-Gm-Gg: AY/fxX5YaT9mDgUSET+snkBSBDTfqrJYAXw39WfpoXblTXdkLm6vGov4FkdPO4nGuf+
	08ZqCvVMoSNTGml4TwCuaEx+weW6aSpXgoEp81jKUEBVE1xdE9CiG3z2qu1PmkD7NQ8Hi2jwUCX
	/jhhpQ8FDks7rPDMNpb0za9GlpVGG1W0q9m3Aad9GmnHJDWDnx8iM+2LF1ULsSuw8yDoFFBvqqw
	3qugafPDGkf8m/ThR70/o6Aza5c7wkK7MYpTv108IL/6ZaT9UwTkcnCVXsMVtZENUkjCnRBoxTW
	OrL9EnIsR3gJ+3oBSl5JFWF81tQJw0kfkFxDwy7YO7hj+9PGZ/b+P4dpL2kYrmCht/ChohgYLKr
	hLuMK8p9axFUv5W2FEjLZHa3aVFBEpIGq2uKNdwY6p/hHTI+/CbYabhEz/QhZNxE5R6N+IGsKHw
	3b9KBg3ZgSVr/gKxtVraIlx3I=
X-Received: by 2002:a05:622a:209:b0:4f1:b9ec:f6a4 with SMTP id d75a77b69052e-4ffb48f03edmr21060581cf.33.1767773781762;
        Wed, 07 Jan 2026 00:16:21 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGdihUJiADpylFeISDLyhuutWUXSisSGVWPGAH1SHUu+jl7zZy3/SG5e0+6NwqMIu0tpq9bRw==
X-Received: by 2002:a05:622a:209:b0:4f1:b9ec:f6a4 with SMTP id d75a77b69052e-4ffb48f03edmr21060371cf.33.1767773781370;
        Wed, 07 Jan 2026 00:16:21 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b731aa442sm75691e87.95.2026.01.07.00.16.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 00:16:20 -0800 (PST)
Date: Wed, 7 Jan 2026 10:16:18 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 6/6] arm64: dts: qcom: milos-fairphone-fp6: Enable UFS
Message-ID: <plypx2dvl7hbfokvuoydzdgqhlgy5ch5j3wgsxtrgrjlce72tz@qubblpc6x2jh>
References: <20260107-milos-ufs-v1-0-6982ab20d0ac@fairphone.com>
 <20260107-milos-ufs-v1-6-6982ab20d0ac@fairphone.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260107-milos-ufs-v1-6-6982ab20d0ac@fairphone.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDA2NiBTYWx0ZWRfX+qs8oU6DnrPk
 2bzIFUgxa3kHyHZuS9OUVLnGA04YILQp2x7M9X92xuMKiV9vlgMCvMR4xVS3eQMNG0gdz4gFfX5
 Dw19EV9v9XsVwrDyicZDkUD9V/dpi7uw0aHkO/TnFhc0Z0iIf/+3AnjSu1lpX/kDvc8KCrU/SkK
 /DleqR2MakFvAdFr41sAiZA95IZxnmimAIKc4TTnAIenoIcIR0HIckn+bdGOtYcvQPa/qoy/u3C
 +mADLfeqlLnksvtcQMBlvoyIEs8SmhQAGIgwuSMcUfLTMVWM5l4pQ2ybDsjYYAc0dtdtfpoUuZz
 dG0rJMELP5ewgpCh4YrL7HUZk9OGqnCEBat3LJgkSUX2q04khDhdy4X5bmZsLoAunV5PnqBeWA0
 zR4qbm9LtUyf/3itq/l/E7B5M4XfQC0YUIlbpgDN+tNRbJY55zuaLPnAMp1EwowJO6YoI90BGH4
 BfGjeboPLQjhoEsaORQ==
X-Proofpoint-GUID: 4scX8g5jqLtWT5pspQMFwrkrWxjFz3IC
X-Proofpoint-ORIG-GUID: 4scX8g5jqLtWT5pspQMFwrkrWxjFz3IC
X-Authority-Analysis: v=2.4 cv=Abi83nXG c=1 sm=1 tr=0 ts=695e1656 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=STFXn1ACf7ZPQ-DneOQA:9 a=CjuIK1q_8ugA:10
 a=zZCYzV9kfG8A:10 a=iYH6xdkBrDN1Jqds4HTS:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_03,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 phishscore=0 impostorscore=0 adultscore=0
 malwarescore=0 clxscore=1015 lowpriorityscore=0 spamscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601070066
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_001623_547526_CD543B33 
X-CRM114-Status: GOOD (  13.25  )
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

On Wed, Jan 07, 2026 at 09:05:56AM +0100, Luca Weiss wrote:
> Configure and enable the nodes for UFS, so that we can access the
> internal storage.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
