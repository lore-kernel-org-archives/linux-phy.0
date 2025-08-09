Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB11EC87FCB
	for <linux-phy@archiver.kernel.org>; Sat,  9 Aug 2025 07:57:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BdaC7N/lHiJ4R4cdAB8EBnoYaBzPoDma/YyKwAUV2Pc=; b=dE0+drx006kmGC
	yl1fFgx6U4PVTO2PQpUMxQtfBxQldk7Fg8XZQakCDg938pC6UgpU9P62/DWDXF8XNFCnSE/x2KowK
	oD1uwlisjgQ4J4Z9wJ4fmxE2nsj6QMmN7Vou+RiVbbjmk9Bn47Q4rPPBrP/5aTN9ykQ9lFSRCsltm
	RIb24Zq4mDZPhg4pKtYKZeDohd+J4+NcmkinVMG7D30694vzS8JifOx+N00EPhF2EITPdV5XjtSn4
	YrFFCyqV7O7FBGP5If3iuismS4djsEVLLQzJUmaGA/4TqTniOgnUV+ZZbXy1aAouj0wWcaXunkbep
	+ktzzl19Tq3APoEnhTDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukeSa-00000004F24-2ZvC;
	Sat, 09 Aug 2025 07:57:48 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukeSY-00000004F1h-1Zaf
	for linux-phy@lists.infradead.org;
	Sat, 09 Aug 2025 07:57:47 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5793UDE1001249
	for <linux-phy@lists.infradead.org>; Sat, 9 Aug 2025 07:57:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=MHkzIZBShOGt9MA7UVWK7LV6
	yMeWr/62GPPAqQE79tA=; b=O8wl1XtUkJSIBTGAs/rXFxl87pMLaVNnIkGRT89w
	xJrI3wYmKWuqGHbRJHA26CqzQ2X+kmk6apjFQeQNWIkMMU5Uj3/d3bZ1WiHA6lTd
	FHOa7PvEjU+45J514LX8sw8Y/FJPFDWZeGLxlyQ39OlBfWkPiAm8wmVFZKli4sCM
	w1chfhIpK+/pt2BoMByiNpDI6YbLsm6lWdjrw370lZ0Vex6unAudKZecPZ3MVwqZ
	9TpZXPVN1MPHnKsq4jq1R3JMLiF6EiaxuqCglsqvMCp/2kJCa12Z7EZZlc1jtQpn
	NV/6NfntYpTlo3fkLIhX5QFk5s/NCan4EiJUvVv2uUcjeA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dw9sgdav-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 09 Aug 2025 07:57:45 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b0791a8e8dso80882751cf.2
        for <linux-phy@lists.infradead.org>; Sat, 09 Aug 2025 00:57:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754726264; x=1755331064;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MHkzIZBShOGt9MA7UVWK7LV6yMeWr/62GPPAqQE79tA=;
        b=hglf+wyineozxkAZg53KKKfrL3SkwBNGCW/1ii4a9U7qsNl0tosd/IrYJFE0YxzdX6
         uZ95cZbaMzSHH3KuTdtPUCrkBt6dMVFIZXuzhxXLHXyGrI2jnLQuGiAQnUOXfmgeea+l
         rbcIyjn5s8bShamZ4pHZk4c17GuTM8b++FkXPRJPTLBaG5CETbS70u7tjJPucqc5OXS3
         CeXk2FwwmMNeGeTeMTKcRG5SmOVRKiqnD8F+h09WleekOHd0kOD2v27hobjsZLntGKy7
         VmpbJfIJuPMGHR98MAwD1aTGpTRiaANZXfc3Dx1rP7GRCKJBO/fHnRvSUdGGdsiYmyiH
         qiYA==
X-Forwarded-Encrypted: i=1; AJvYcCVtWH/qTbJW80+G87Y2zUU39+md8YvyGdReAcu74iJYOElDtyIzgKsKqK29h/mnu2IxU1bWgF8bxc4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx380edOClILFJeJF8QAVOM09931bLtx2D0e1NSW67KRgT0msa9
	Cv3MsjYX+VGqIuBB1pg/su6ZiJUeCnw9vrw1CW9rQcdb3cvTCV7un8CV2dRx1g1h8FraKbunByT
	CEeGF4cZU3UyHC1jRcRX6J+3MZGdYcjU5PLlSpsP6fv8clUn3W0BStPZSXNn86xRrI0rR
X-Gm-Gg: ASbGnctpj0POGtak4dde0gWmgywPzD4BxpvbUoCjsro2nTHVG8B26sMEqeLYmFsJ6mi
	tDw83KKT2TYI6t1gKvpjPX1G6Ttl5uZbBS1wKNE9z47HSJKhdODvRI4Jwj9Jbt/3wuznKsOFqIl
	pywUSgaEuMGlpDwPMAacQZzvEQWWxmwWuJoMW0sRHIvYlveMXfjShOj3+L6lEmCExpy7zE6YaBr
	77OMjN1yoz/9xbYf6y69y/hfjROXV+gzTaXdisHDK8gYHJnWyriBC8GlzqE17yFNN6odAZtQ7fb
	Sk663o955ysSLB3bTErCdqu6f/P/0s1bpTw8RgJo9NO6VkPew1SHzJKw56ZGmuUJuWHLLCyBDBC
	qnQeYDNbmc7zbsavFmCva1qRd4e+PMiUSUHcI0fRw6C8BzV06algF
X-Received: by 2002:ac8:5a09:0:b0:4af:12b0:57aa with SMTP id d75a77b69052e-4b0aec6fcbfmr80634391cf.16.1754726264338;
        Sat, 09 Aug 2025 00:57:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHZcKxAQsU4y2qlurvBrtplQIY3fRhPoGV1bNNa+z2XGi+BVNOPWtwNB3/KnTtakgGNSGDEww==
X-Received: by 2002:ac8:5a09:0:b0:4af:12b0:57aa with SMTP id d75a77b69052e-4b0aec6fcbfmr80634201cf.16.1754726263912;
        Sat, 09 Aug 2025 00:57:43 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b88caf6dcsm3327161e87.159.2025.08.09.00.57.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Aug 2025 00:57:43 -0700 (PDT)
Date: Sat, 9 Aug 2025 10:57:41 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 4/6] phy: qcom: qmp-combo: introduce QMPPHY_MODE
Message-ID: <pcmy74pebeskhfactygabzjinpbcfhluhdx7rlbx7kds5wynf7@hdlkfpkg4va7>
References: <20250807-topic-4ln_dp_respin-v4-0-43272d6eca92@oss.qualcomm.com>
 <20250807-topic-4ln_dp_respin-v4-4-43272d6eca92@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250807-topic-4ln_dp_respin-v4-4-43272d6eca92@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=J+Wq7BnS c=1 sm=1 tr=0 ts=6896ff79 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=ruQs36HUC5Lhap_3HWYA:9
 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: RKDBqkt81vHFquMHMVMBqqadH2iVcpws
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAxNSBTYWx0ZWRfXz3ZdQTgkrP8z
 6xAeLkhtkkOFMReAWrLiANMx7TyC6Up9eaXaPE33VQKPV20s/tFZiaQOnu/+Ly9i8J6kbMKQQBy
 k8HJeI7jjNDCNDxB5sorcyT59wp5Gp13gvZZ6+lDILzSeOFi5fXb2Z7gIVT30JskUYxMVdWe4XC
 AW2pBVmQEDTnDocKBI8x4kzvmFiQYUqTe9sK3/JMj2cPo8yBTy3o19GPf21ZUxfxPtoJzoqXi1c
 2ME5A9fTADEgR5TRpkiH8EKAATgJrkGsHptYawbdDYiz+VOduzDnoVyr5nGfRWaawTmUeDZFTZM
 bD9twMH1fumvcyasJimWYwskmRvYsWMH2+37FxrbIboxeMx7T9CmwWruVIBt0b7LVH6y108DgBz
 0dXeWKVK
X-Proofpoint-GUID: RKDBqkt81vHFquMHMVMBqqadH2iVcpws
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-09_02,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 phishscore=0 suspectscore=0 spamscore=0 clxscore=1015 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090015
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250809_005746_417356_32FC2406 
X-CRM114-Status: GOOD (  14.28  )
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

On Thu, Aug 07, 2025 at 06:33:22PM +0200, Konrad Dybcio wrote:
> From: Neil Armstrong <neil.armstrong@linaro.org>
> 
> Introduce an enum for the QMP Combo PHY modes, use it in the
> QMP commmon phy init function and default to COMBO mode.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> [konrad: some renaming and rewording]
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 44 +++++++++++++++++++++++++++----
>  1 file changed, 39 insertions(+), 5 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
