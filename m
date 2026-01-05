Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 425F0CD041B
	for <linux-phy@archiver.kernel.org>; Mon,  5 Jan 2026 22:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hfz64u0xpxbZiJfeQDlFZg0O1zBQLfumNvtzkWMRRI8=; b=gfT5kKgOxepICZ
	Yt/F++6TgFGarcI9sZgDji+qP9xiMpYcMW+IeUl8Gb44Z1fBM/ppQyzO0QnojCBaMGO1ZESuzasKc
	mjQIUnRbP7bo3j2+KoPNRNLXHXI0ZE7yW6lBfAmSqP1nyDeZ/6K6TMh6h4XbHdU5Uskg5iTasWZnk
	JMaJmx5tnxom31WHy3FjeXXj0Aa8rF+AYESVVp28vj6ErKO3mBubbSSRheVT7vejfDVHcR3GXP6Ks
	wjTjxL4Dr5j+yvs+UX2vdHbOvy022QCklqML9LXpo5CZSBi4sAZAu9nQLgM/a4nAQ/dgDaMVJocMc
	y7f8l1p3OWSedBQtsdoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcswi-0000000C9fa-1m8f;
	Mon, 05 Jan 2026 22:21:04 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcswf-0000000C9fF-2Uoo
	for linux-phy@lists.infradead.org;
	Mon, 05 Jan 2026 22:21:03 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 605JEIUZ3541656
	for <linux-phy@lists.infradead.org>; Mon, 5 Jan 2026 22:21:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=g0fZliYctjACt0ZsbM6HzuSn
	8uaiOqLFgLIVUIMdSuM=; b=bl1LYd21jSHcYiDKmzUk1K9ARbEXaGn2SggweCUi
	CKeXRXpxiQqHZqAcurclOA99hYskco6CmMlUozL2bKGgZUXYm2f4yTXyeoZtbH1L
	DY2CUQZibvJQunq7fHtP5pcMlXM6BtZC4ZSzfkkKPRGFnMuaqvQZEtqPMmCVFtPE
	qeNqX7Ys8JNlYcZoDBDkj5Hy6jXDN5vDMlzW7POPpn5VCcyI/c7bWKGDamXL9cnO
	sJtDEXfZBHwdJamF+1Z7c7fi5Z3yaMt3KYWTZkhXnI1sbsrQFszewjvZ2FgVHxa8
	1yyEgHd1vMvKYmgHWIFzr2mWij7NiMTq/yrmo69jkBpY3g==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bg57sk3b1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 05 Jan 2026 22:21:00 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ee3dfe072dso8228931cf.2
        for <linux-phy@lists.infradead.org>; Mon, 05 Jan 2026 14:21:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767651660; x=1768256460; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=g0fZliYctjACt0ZsbM6HzuSn8uaiOqLFgLIVUIMdSuM=;
        b=PquLodMs62ChSTeEXrvjHkMPI1iCEBXmGVTjclBQC1m8lZtx/N692RzA4j7Y0BVT/0
         a95barpK2dXA/bdX6XfUGhSx/znF5pct+K6z7cnII4xHpzTMZbOpigrAmQApuR9sP+D+
         O86mzmU5xWkaPHstB/uE51VsEPS2lc8W0xxhe6pzVqU1in++wCtOWjm2za6XqccIPJuF
         V21Jx/8by8tmkztELU9dQ9khDzMmNPg/V8Id6RA5kYA3jG/H/l41Pfwx/blzD+gU5W6r
         Nxo5Jp7vG0g1u6jwOy438gQuvQmHTG1LsfZh2sFUl/9YIwKwBRvpTWBFmquGoOCaqmJD
         /JxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767651660; x=1768256460;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g0fZliYctjACt0ZsbM6HzuSn8uaiOqLFgLIVUIMdSuM=;
        b=TfBBQx868zuzRfedKq6p7Tu1KLn8/1PXbSFoo+pmymsFEO10A1omTzy7ZJJYUu3pXB
         /L5MesMwF4fWoclIzUmfW2vuEmqodTyPRiCzI5yUr9H1oidYJFqIe6c7Ote0bV1wtT67
         ZMPHj1Hd3bw3XHIZrbNqLGqRCPuO73GX+tN+UtFOVWDGD06KjksimqEtIB/dGTCWA+eX
         AvCYx71KWa5KXQYx7hjZ1W4PtOlwoD+o7rqtvoCaHGpcD919h7gDMjtxuhGA24HFi0jn
         qIXMhJhdlDUG36vRKYLcgPUdNEIf66zgu0Oiu4Vp/EhjEGipwk/rOpRBjER/YIUxHNxi
         ZVTQ==
X-Forwarded-Encrypted: i=1; AJvYcCVOYy2xPptaQV4PJyrqJqXINkMdVu7wBNztMmOv8nfNj5mPyHWzjL93W851I0aQYK7DiKbpJSrC/1M=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy4OOO2HutBFf379+Kb3wskGFCNLQu8GP8LnWdlP05n+sHuj3Mg
	dywtfH0azr843K9kpL+kl6IAz65vNKr4MeN8dmi0JfORBgo+fykv/Cj4eVsgUxF4ObKsr1ucINA
	cDDxArkA06xUs3Oo7fer2SiNlhgozg/OCPlJpattzwK63HoXEVKcVyIld5jsjaJs43WdI
X-Gm-Gg: AY/fxX6R6qAUZyKXjZ9ou9NVOGcOULk5lSWwRWhsshcrUC9mbPsOJkOSWpwAcJ0b0sc
	fO+fXO2dtbNkHKUhT7MRw/+3ErkLsLDXCqDvtg/zXDhiOuqEdbjKYz6KSJ9h8FNblRZO11429a1
	gdeIu6AFHWp/xVpFwHHZSvW1pz5NlLzvXtlN+wI/MecgiDS2AMoV/PkDUzNL1YsDWhpxDC+BdDM
	HOyVHeUOUvlaivIZ7ENZqqXpWeN/GhEedBgZXoO2z4c3U2lo/KghDWMJfALM40fJ8Y9q9cKP/3j
	lfZKAPrrA4y16HTcD6hnfqXfUqSyPpA9dGcqO7HLp9KPQSm738y/a+36lil/Xekt6oKUblnmSQh
	wUebpnyN8wRiUwA7myt0z1wFHVEsC1zLXBlD2rw/F9AiJ/G/etHFVjsKp1jkdV1IVUu+NnzENhR
	dXookj0w0aIWvDKEVzjMJ4DG8=
X-Received: by 2002:ac8:57cd:0:b0:4f1:83e3:bbc7 with SMTP id d75a77b69052e-4ffa76db6eamr15736531cf.27.1767651659754;
        Mon, 05 Jan 2026 14:20:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH/lIX3t8X6gbr2QumiMF2IqSfaMQq2ruiQpqdZbynXdzRKgvS3PXF3MUXERhoJkc0UOLV0xQ==
X-Received: by 2002:ac8:57cd:0:b0:4f1:83e3:bbc7 with SMTP id d75a77b69052e-4ffa76db6eamr15736131cf.27.1767651659208;
        Mon, 05 Jan 2026 14:20:59 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b65d5dd06sm105969e87.52.2026.01.05.14.20.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 14:20:58 -0800 (PST)
Date: Tue, 6 Jan 2026 00:20:56 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, manivannan.sadhasivam@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com
Subject: Re: [PATCH V3 0/4] Add UFS support for x1e80100 SoC
Message-ID: <y7lm6zqgbhk4243diyotvox75tcmzhgbkypbkaskrtjcjbruwm@ar7kjmiyv2wr>
References: <20260105144643.669344-1-pradeep.pragallapati@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260105144643.669344-1-pradeep.pragallapati@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=UJ/Q3Sfy c=1 sm=1 tr=0 ts=695c394c cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=atQpAzJIPGnAHsar4hIA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA1MDE5NSBTYWx0ZWRfX9JU3n2NDJchf
 +/3ggC9HoSkwjdm81wor/VBFtVa4Y+14TLnsi5MTAoNHIr8niRml1K6XWOYD0oHH3f0R3Pmg4eg
 lxGGIFvTB+rvk4+LvCIp1KplVNPMgNR2ftCyaK7TVXwdQx1YSfT1ITGR2EbUr9hOaQfzMStPJRA
 /tEpuWUwujQo8cgf2sUNb6C8nzAIcQd3bUESNrGkHTqSIfp6Lr3lNJBGG7m8eWMZWinJ+2LlQkY
 YJEnwtOuuWr1CwpMnzIdIH7GO9UAU0BgTumrvyuyPO5r4ZKuh7bMUU7atnKQHGIAutdEy84uIZu
 /fFiAJIUaJ22IFzLB5ljIUGU7cER7mmFw7603ZK7sUg9jwVnaKiOQtG9m1r9/y+h6nvH4CHotaK
 H2Dq/SMH3LdpLPlz5Bl3A4xtfAb3jxnIJxCgT9ddMz7B7xASTSPrp/Lyjt1XZkUwLcyLp3Aqnp7
 lDcuK3pazrTZSmjEV+w==
X-Proofpoint-ORIG-GUID: eepSePZ6PRMsQd_IwIOtFGw2Ja8QJgGi
X-Proofpoint-GUID: eepSePZ6PRMsQd_IwIOtFGw2Ja8QJgGi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_02,2026-01-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 spamscore=0 bulkscore=0 phishscore=0
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601050195
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_142102_091969_7C43F073 
X-CRM114-Status: GOOD (  17.33  )
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

On Mon, Jan 05, 2026 at 08:16:39PM +0530, Pradeep P V K wrote:
> Add UFSPHY, UFSHC compatible binding names and UFS devicetree
> enablement changes for Qualcomm x1e80100 SoC.
> 
> Changes in V3:
> - Update all dt-bindings commit messages with concise and informative
>   statements [Krzysztof]
> - keep the QMP UFS PHY order by last compatible in numerical ascending
>   order [Krzysztof]
> - Remove qcom,x1e80100-ufshc from select: enum: list of
>   qcom,sc7180-ufshc.yaml file [Krzysztof]
> - Update subject prefix for all dt-bindings [Krzysztof]
> - Add RB-by for SoC dtsi [Konrad, Abel, Taniya]
> - Add RB-by for board dts [Konrad]
> - Link to V2:
>   https://lore.kernel.org/all/20251231101951.1026163-1-pradeep.pragallapati@oss.qualcomm.com

Where did the previous changelog go?

> 
> ---
> Pradeep P V K (4):
>   dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add QMP UFS PHY
>     compatible
>   dt-bindings: ufs: qcom,sc7180-ufshc: Add UFSHC compatible for x1e80100
>   arm64: dts: qcom: hamoa: Add UFS nodes for x1e80100 SoC
>   arm64: dts: qcom: hamoa-iot-evk: Enable UFS
> 
>  .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        |   4 +
>  .../bindings/ufs/qcom,sc7180-ufshc.yaml       |  37 +++---
>  arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts    |  18 +++
>  arch/arm64/boot/dts/qcom/hamoa.dtsi           | 123 +++++++++++++++++-
>  4 files changed, 164 insertions(+), 18 deletions(-)
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
