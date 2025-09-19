Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EE80CAC5A8
	for <linux-phy@archiver.kernel.org>; Fri, 19 Sep 2025 18:29:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cv5+bETPTNDjgavpPQhlNb3mp/A9gydJh6xxHMbqh9E=; b=2iU2h2JGuRLneP
	gBUUZFSxn1nW46tb8L5ThNt/A/qc9zsVniQ1EPg+3BHl3LVyLp3Dq2tuIXCuth4mkWShQJo+htH3n
	sr1jEPTQN6jH30PQ9v+Pr7tUD+/Yl9hdOUpPIsf8Ndc5PPFw0DlwQ41oDY9dbIO7WHdWul47FOOFk
	8bQVZ4rIVBH365MSJkZf8uhQj8kKd/VAJ++LU1+Ycbl51Eu4tT9G+i7wdzVXeu52G/9MENgAFcjhu
	cOM7qhKdlCepTwtTapzsjDmuTopVXT3Dor48OcUIaPCFxD+dVPDROXoME+WeOWipJsn0Ae5LxrnJ5
	1Vww+ScAMmhYNOCgtlMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzfrV-00000003lT1-3EJ0;
	Fri, 19 Sep 2025 18:29:37 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzfrT-00000003lSa-02Di
	for linux-phy@lists.infradead.org;
	Fri, 19 Sep 2025 18:29:36 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58JHUvnx011866
	for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 18:29:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=nELkMuG6G4b4hNEzE5++D+4i
	ykuQu225GTPV54pVjNk=; b=RRnz2kIRHqwrjQd99LcWnGKFoqNlJppKNVg6v/zN
	74LFRnDceaW9jKBreZkDEvDKElFeX749jroH92Eb0OinTtrVOK/OLHxnPyg52eqn
	z2yiikSeEf5Qq7G40h/HbIevhMsTjnvwsSXtlHkCl8eCOJ5myA94VAxTu8S02VAw
	tI5ZRPQOFDswW0M1tCn35ZNF0j49zKygeaWbk8y6GNlLGwAf0HzEX6z1J5ivyG81
	mi/zh+GtRBC8RgVZOexYC3lNhqsncw25aPQrOc4CZkbkTJ/DmTWG/hWKgV4UTe67
	+fgKPlWYvjtGzlVqaxWbVoDt/eFGzsZ0juSSyBzxc5da5Q==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499bmy0620-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 18:29:34 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-79390b83c48so44973316d6.1
        for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 11:29:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758306573; x=1758911373;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nELkMuG6G4b4hNEzE5++D+4iykuQu225GTPV54pVjNk=;
        b=TDg3gWQF3d7+Kl69vH2BEMQm1sDW9W1nAT4lls254rfO/Ma7lqtj0TW5KlxA7zXWlC
         kMoChnOwjECNy3Uzm4+PYGjdn0eBpPlpW+NlVllIQkBbJMxy5f6Yo/CqEffAq5dYtzAc
         naNSzCrZyISOIZ2HZE8OGZADavaFOrj5KHp7Fz5HClLzE4XqZgfgg32y0sRFz1yPJ+DK
         B/jjp/iiV9iZKh5FPrP2zeQ11R1/298nPorHFmvEN8l4YBznEvZ045rzCkqOfboFBh69
         eQiUuQX0sJwJnDe6MU7OhTLE2RBY0j0FF8k4HmR2gpTKNnABMe7K66tO2QocoBms4j4B
         WkKA==
X-Forwarded-Encrypted: i=1; AJvYcCVXwuRT7v94h8I0MHJo15DhGAWPtBFIoCSfKNefFNyBvIfeRdT8Y5dAOvwf/o1drKNe3cO18sNDqvw=@lists.infradead.org
X-Gm-Message-State: AOJu0YzQkaXLsWN8aHmm1jd56jKf85ciNeVsE1N+Cj2Yl9Iu/ww3Y/MF
	0stZEpwirZ+tlEQSaRxYG1sX98JiubKtX9L+U8AvvD8zCObiMafBR72wSEWvZqEdfgpyeCmofcQ
	VduddIodmebHimckUFrcw2k4bAFDdt3pIBTMJsaYu6XpOUJIjvJ0gLbOP7gT87KpiiknR
X-Gm-Gg: ASbGncsY1BXpuBPEBh8Wl/0uE9Sx/aQmgCNxwohsIECLM+FBwNZr7qkmLk58hJU5uv9
	31aH/+9Hs5Ifx2OFKidguDPuWF1KsaS3MeG9DCY65gmnfpwxdYlKzodIkqOdUTXK/Y168/jS3gc
	DlM/Cnj4uapC836qAodY4AtTD99yehh2Cr2TL8Udye18+EfvtYxG45QmpuKEJuHWyKRRH516WIG
	+RL/S97iGVgxfbnQYUayXRYISIPpkCv1P97yhObEquV+u2f9LYeWlCL7UXUXpeF9OziRgjgfiYW
	kQMB4BhP2f1O46BLi1FbTx0AaexUjPsc7epCp/rBN9X0vJtnW2trTQGDf9aeE5r9fzPP6cuPsu+
	EowAcp3YfmHUXfqpzN7gRPHmMDT6KGlLasJS5xTp375XXAwpy50JT
X-Received: by 2002:a05:6214:212d:b0:786:8f81:43e with SMTP id 6a1803df08f44-7991a92b751mr45979726d6.33.1758306573167;
        Fri, 19 Sep 2025 11:29:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG1heRt8eGc/n23vl3sA3KqPDKFH72DXCf2ZbAaB5smb4GgH0KGIrCssMBhJrzkGAMEzwdWYw==
X-Received: by 2002:a05:6214:212d:b0:786:8f81:43e with SMTP id 6a1803df08f44-7991a92b751mr45979186d6.33.1758306572586;
        Fri, 19 Sep 2025 11:29:32 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-579ae3d9c88sm958682e87.140.2025.09.19.11.29.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 11:29:31 -0700 (PDT)
Date: Fri, 19 Sep 2025 21:29:30 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v5 08/14] phy: qcom: qmp-usbc: Add TCSR parsing and PHY
 mode setting
Message-ID: <j3e7f6fqeilaz4nek2hnh7obsvjwret42dkmwervcg3c74o7ai@pz244lhrwuou>
References: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
 <20250919-add-displayport-support-for-qcs615-platform-v5-8-eae6681f4002@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250919-add-displayport-support-for-qcs615-platform-v5-8-eae6681f4002@oss.qualcomm.com>
X-Proofpoint-GUID: Uw8E7Y_piRblvhZA2Y3TyUyBmY0J3yFI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE5MDE2NCBTYWx0ZWRfX36KRbRn/QAv2
 xXWCGNMnvr/i6S4F1Rm1iXTt2Arl9Fg0ySJlgs/0RS0wcsyXgA2QE24OVtP4y31vwX6WVuM7yRs
 GNx1JFCBvg2bgjF0+FBG+5d/wX3vTnhDWBlkqZpJ7HSRnwX1j40W1a94oxihtdKx3h7glBOVFOq
 NRuAo6qmeCz6uxkQhNy/D2TEto23aHLAuTw6Y7YnRzZCf9vXHWpxtlYGpGrJD9phDWiytpdnEI6
 UqzpkQIm3K+PW5DNx84DeHqBRdIjPhdikpDx91TLIX4bp1ItYhfheBD91AnerWr4MFdaK5dv18Y
 tpfld1K2ZYVVJRIz5gISOIPnpPcH5mrJPFBHkXwDHhpAn2a3WAAtGAT8x32Zn/FgU7otAy+mEwE
 b0mk1sau
X-Proofpoint-ORIG-GUID: Uw8E7Y_piRblvhZA2Y3TyUyBmY0J3yFI
X-Authority-Analysis: v=2.4 cv=ftncZE4f c=1 sm=1 tr=0 ts=68cda10e cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=fgmTnHYI-UD6AacMZvIA:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-19_02,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 bulkscore=0 priorityscore=1501 malwarescore=0 impostorscore=0
 phishscore=0 spamscore=0 clxscore=1015 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509190164
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_112935_163299_8436DDE3 
X-CRM114-Status: GOOD (  13.18  )
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

On Fri, Sep 19, 2025 at 10:24:25PM +0800, Xiangxu Yin wrote:
> Extend TCSR parsing to read optional dp_phy_mode_reg and add
> qmp_usbc_set_phy_mode() to switch between USB and DP modes when
> supported.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 25 +++++++++++++++++++------
>  1 file changed, 19 insertions(+), 6 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
