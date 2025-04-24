Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1A5EC369D1
	for <linux-phy@archiver.kernel.org>; Thu, 24 Apr 2025 10:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JIPOToMjWdar4L51TvRBEtfdFIANQp2YWhKeJfkPp/Q=; b=hZ6NWtMKdILzM9
	kCpvdAW3y5TKydpboqzLvvWhN6jGCDWvFcIdHhghjQIAOrEihDu4gGHr41f6PYSaHylPke7ZFHGoO
	QxMRWJMLQj23l4U93UVt6vMb6rGTJZFPQLbqDsTwod2SIJWW4KAT4UCXfRx0NrrubDOM0ASvqLtY7
	RiAHU/wvL8ujs1ozEJWDUCc6OIwDMHhX5y/PJOK2nCuXMbT/pAcl+uz3JEk/29m+2+Av9rMlnKsCz
	qIZBvnWOB68fzyBGh8sSha5c3bCaXBTVC1oG6ODNgdl8MbgkkVrg6KasfzBDSFn4YaZSTwV8gc477
	vq3WGyIFP2AzZBgbAuQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7tpM-0000000DgOA-1P42;
	Thu, 24 Apr 2025 10:29:08 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7t08-0000000DWTo-0Amz
	for linux-phy@lists.infradead.org;
	Thu, 24 Apr 2025 09:36:15 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53O0GlKH019260
	for <linux-phy@lists.infradead.org>; Thu, 24 Apr 2025 09:36:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ki0WMJZKSmFmQy9e7rjeB45X
	grpCTsnp8UNMzxotgak=; b=ZoW2u4ciuCgGFbFUggKAC4FR9QHdfrqdT7adpV0H
	oQ3a7gUMOG5EvWREIOcQ+B/1LpXMwIw97yuw6lqFdE2BQPs6z+fagMsRGn1T7jjB
	6nAccwXImbAz/kgD1xdqjAlkzM++ojkAyY1el+WIt13tL0d50x4nSuxsj97/8CLV
	i3deGLaAnaHo8m0HCrvG2cjqgz12urviY+Kp1t9Te1P4CR0r7zcDefn/+QoMbEXR
	DpQQmkvBXnQXuWq1DI3LLVQHW35DFtBhHrWEXMgJks7nSO3vVuXrqOqtBaPzOYzq
	bJZ6u3+vqjOsoLJTK3zt8TS4zF6oBcsqRVhtQMF3ODcmAQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh14ysj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 24 Apr 2025 09:36:10 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c5c77aff55so189636785a.3
        for <linux-phy@lists.infradead.org>; Thu, 24 Apr 2025 02:36:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745487370; x=1746092170;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ki0WMJZKSmFmQy9e7rjeB45XgrpCTsnp8UNMzxotgak=;
        b=AMyv0U0A3hiP0NXbrAewrrZwCiqphqzRR6Afe7JgjuTVqUBNLLeplVObuF/Zz0THpr
         KW2VDI1OpkghjqhLpYQJ6aNaXMcSF7FlQba+IM2TnXwb46VF/PgaKamGgwUtF6LCA8wU
         az5sJ/vPFCJcKGAipwvkVaM6MEVQm8tHAPgUUdSW/N7X8t2KvkGyyY9fKYt8hhsE7SgD
         HnSnl3A3trRJkuKpjdsKvMbS8/joFZFi+gDbjKW9gPa3K2edLxbVdb8Zr/B41XIlensD
         e5J7Lgny1aCJKS9vIM5VzdTgzpb4AIF44n+0UroYw4fKRbpnyzF4zNnABaq8GUnuM76X
         Mx+g==
X-Forwarded-Encrypted: i=1; AJvYcCWoBCMHpgj+CU1qQiDTWgmoPU+Ypjz4Am2U7L/zaUxU01o65m8i8/e4+OALpGbipqMwvcxVBjwEWrI=@lists.infradead.org
X-Gm-Message-State: AOJu0YzxYBdv7Smez1iJQQR40MTPO6ZUEjIfEwqbxKd30Udl+mBqP3tf
	UL5uWaAJULQtsCZeRKXrYH52Uj9UUgfBd9aWArIM6eA/kIZGGNyuqUdz6vK76OR1ErDBfF0e3QF
	bi3DOT17CTgIpHvnmpJXpMBpVNsrcwpcfTycS1tplcWkB0KT/5JC5ok4WiMihoSdC
X-Gm-Gg: ASbGncupibZieS82JDeIaIUUoacKPGvNz9GVTOexbhmMclnVL9MOMmJJzNahFm+CSYd
	pQfTatKQL4KDJXMBm7PFLx28fA1H6ZHlmaE1ACOna3UDplitbcu4uF2I72nyqbEKH79FuMNgT4p
	DbMyku5vmAHBNzEMVe4IO803j0Dh8iUMFdEJ+K/HOFnabpa0qLRjfb9FNf+X0uWjj95Izt/yLMw
	R6gZY+2kyMUj5FuusmjWBzGR2YCA1uYSZnIq19yYqyGPzQGw29qOCK+bN8J9RyOJ7G3QEuN7P1J
	apc6rdw+L1ivAd4DL2AFTrEDPZKRaqUg1kq07T7rC1eYhjEzHZWMSbpXGuazz8hmcCeWRdRVaL4
	=
X-Received: by 2002:a05:620a:268c:b0:7c5:4463:29a8 with SMTP id af79cd13be357-7c956e8ee8emr286193285a.11.1745487370268;
        Thu, 24 Apr 2025 02:36:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHQ3XpknWBRjJVyY9U395kjM4TMXYtQ89RY/LCEXTfiRyw5qhDQDDxCNr+1yx1C+oNIUZPNCw==
X-Received: by 2002:a05:620a:268c:b0:7c5:4463:29a8 with SMTP id af79cd13be357-7c956e8ee8emr286188885a.11.1745487369953;
        Thu, 24 Apr 2025 02:36:09 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7ccb8387sm164282e87.244.2025.04.24.02.36.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Apr 2025 02:36:09 -0700 (PDT)
Date: Thu, 24 Apr 2025 12:36:07 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Melody Olvera <melody.olvera@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
Subject: Re: [PATCH v5 00/10] phy: qcom: Introduce USB support for SM8750
Message-ID: <kpub5pyyqb36aajcu2qchcjq7ypqvx4zywxusuvvlq7e7hr32k@ytbygrzwlfqs>
References: <20250421-sm8750_usb_master-v5-0-25c79ed01d02@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250421-sm8750_usb_master-v5-0-25c79ed01d02@oss.qualcomm.com>
X-Proofpoint-GUID: 5TMgeovTL6B8KDMt6YO9xgshD0Aew2SE
X-Authority-Analysis: v=2.4 cv=OY6YDgTY c=1 sm=1 tr=0 ts=680a060a cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=spWr5J_MtH7HAiET_ysA:9 a=CjuIK1q_8ugA:10
 a=zgiPjhLxNE0A:10 a=PEH46H7Ffwr30OY-TuGO:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: 5TMgeovTL6B8KDMt6YO9xgshD0Aew2SE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI0MDA2MyBTYWx0ZWRfX6o9DRm0pGiSl PHU5GR4gEmfbWye/Uu2W1GwzznJiNwHG85YmyaEwoNTihtNks2VW/A3De9+xcUDsfvVf3s6iu2U Hp94CbMpfCh2QGJtohH5XO20ZzZDOdnowGQoZWh0uRa240n+Nbg8YIC8vbRTxFuECFbG9g8i//w
 YE26U043qi4xAwLSew4URWAfnsI70jfg88U3hVCKxsoEfrdyHiCSM45kpe1ODVKYdpKmlo4UMU9 0ExSG8MJyWU66Mlbff7ZIdPF+azHYMY6WrGFaWxLNjm96qPZahHnZsLedzyAAYDxkFal2waS3ce bfIm6UtBXgxLwi6QcKnWe+3Mo3suINNrytkGIQiuj1DEdzIqIvqzDqAZA5OnLGprXb0ciMRswmQ
 ZGCFDW8MoxubIMYX7+Dlv/46nIWJzXUa08kYAX/leieQw+7U7KIS0iqxvg7C9yisEmNkX0z/
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-24_04,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 lowpriorityscore=0 suspectscore=0 mlxscore=0 clxscore=1015 malwarescore=0
 mlxlogscore=638 phishscore=0 priorityscore=1501 spamscore=0 adultscore=0
 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504240063
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250424_023612_197404_BFC3396A 
X-CRM114-Status: GOOD (  17.19  )
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

On Mon, Apr 21, 2025 at 03:00:07PM -0700, Melody Olvera wrote:
> Add support for the PHYs and controllers used for USB on SM8750 SoCs.
> 
> ---
> Changes in v5:
> - Removed refclk_src from the QMP PHY driver as that is no longer used.
> - The decision to move the TCSR clkref property from controller --> phy
> node was made in v4, and the refclk_src was a lingering change that was
> meant to be removed.  CXO is the parent clock for TCSR clkref, so CXO
> clk will be voted for as well.
> - Relocate the SM8750 compatible within the qcom,dwc3 bindings.  This is
> to take into account the change in clock list.
> - Link to v4: https://lore.kernel.org/r/20250409-sm8750_usb_master-v4-0-6ec621c98be6@oss.qualcomm.com
> 
> Changes in v4:
> - Made some fixups to the M31 eUSB2 driver

Which fixups?

> - Moved TCSR refclk_en to the QMP PHY DT node
> - Link to v3: https://lore.kernel.org/r/20250324-sm8750_usb_master-v3-0-13e096dc88fd@quicinc.com
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
