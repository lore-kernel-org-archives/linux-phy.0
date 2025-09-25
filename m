Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3664CAC5A5
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 02:30:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7iLzMMJhi0JHXu+5xfRhjHuz622RFE5WE7Pv9Omug0I=; b=YFXJv5MLrXEmrV
	+ArEbk6Swl4KnlDE3i4PHc/BuHTR+zKzwLnqmpdrb84r26VV7umUNV3iMkoGkbVHXaWRtiNn3KxkN
	mSFieI1l3qknUiiOdA/ssMRpvjSsceX3N6Jx7H0zmCDLDKf2Ie05/oTm4TU1//a+3ouzwNpdNJlpY
	uPMlommkuHjx8dup3JOkXHbI3/gTLWULmZTxem8E9glMvUcCbxOWTsF5YEdFCvuKAIG5Qh2vdvdjf
	A+3/sKOybh+XwYY91KZUV3f4ksAdGBpwrfiFfVfp1ipnidNpQuylwD/wFyYqH3sxn8NywNLufe3Qf
	DEvOAOBFeXZVzIv9c5hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1bkR-00000005JST-0K4z;
	Thu, 25 Sep 2025 02:30:19 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1bkO-00000005JRj-16ki
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 02:30:17 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0HiCF021499
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 02:30:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=hEXHJ+SjOGDYSQB3Fj+ilyow
	IaPOlrIE4x+LCn5HbjA=; b=aE5kPspMgFYexH79wxX5NzYAOWU/cwsECdTvxoQI
	0dg1NE4znLh1q/o4Q1y/MNbnZUj7yR8fW6vBTkVTOLTG3cosBmar6/BOK6X0PHiJ
	KMIQQv0USvLsPqEzNgsMCdGZBXJtGyuR2cHPSzHFilm4hssAU1OR6Qp5cKOIzMHL
	ZBUMSwCi/W37IvS3wzkwTd6mzfAkJhHqc/a70hnQ3hs2EA89NeZplgAzOj0FegR6
	hIoMzmTzM/ssgNtKeqedEG9yAdaCG3sSAPN12g6bx+lObVwTbexH4laB4MYJIHTY
	lkDzOBACtnfArZ+Z0Pe6r1TjNDcIPyUuEXzf0GcbXyy9ow==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49budae0h7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 02:30:15 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-84a3a7ac082so124659685a.2
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 19:30:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758767409; x=1759372209;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hEXHJ+SjOGDYSQB3Fj+ilyowIaPOlrIE4x+LCn5HbjA=;
        b=hiScRqFiaOTFs5ldTp0bN3UWCS3irvblc69+xMPlJbrlYnj8OmTZyHwq54an4jVD2M
         B7WqPvgezfLkWs0GEClZ6vvKLa5GLlMciRrc6IDnm4y6aVvKbLihuAYBFV963AqmVqU0
         zEVlEMa41PZhKBorkrMArn2CMIVCp84lYP7+kpPFaWVdgHDhAgS5ytbxNCRoSAMNfbQO
         kOzzjF5nnyRtYSEkbW6oCXcbCDwRxS6fJixo6YTY2lfnHtZ3W++6k2ddOFH+WKxzt8gr
         dwwUMSKb0HyWsCapUUbcaBBwzUm3DVfXw+OJ7qz4lqGNNRuLLg0dEUm8J+a5mRSW/sp/
         +5ng==
X-Forwarded-Encrypted: i=1; AJvYcCUEuwSjUww5V/BBFudx6adICSzaFf+0NaQTe9ylFBhLJ44YncWqqQ3BQYcgINuo9x5IBek14PpCoqU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxh6e5KNJSQ/cC1a1Q339QCj8QAT1+B2gA/rIu2FR4Zjxc/Ma81
	fL5S4N/d2/16yl1bO3CK41amhiLVb8NBbV6ojyw+H0WkbQJxqvR6Yb06gas3MIhDgmWMomiIVay
	w7g3Q9m0WWNAa5XdN6CIEsNVCePDO94SukyZm8/yEkJPzd1tKBRRyNq6eg6X1KeUk9hVL
X-Gm-Gg: ASbGncuxVhBLqLHKIKsDFwKW5Fn0O2Y0i/lPecRF4bAF+sJl//vqkPSnwh+TD2oNwuP
	mwsa+ZuL1Av/OtOM0ddLpyYuX7vSTakCzLlv5+vjsLJUBla/55KEcQeZkroZp0qYRi6Om5fabtB
	g9m4ceh0R/bNGFjpipagde1NrLwck+8XjWTA9FwDVcwHC2q18qwRTQCrWYiVsuT2lJztknhCqaD
	dVMHH0Ly7ZKzu+fUsYnQe6kYAU2mASvLiXGeOZyk6uBKWxvCc58gIziPod4Fi5TU8NrfUDTUsDe
	MBkUsSLqo8YD0mjQq2T/nql3APqL9Mlh9LrjGyvAGT0nNKA/DnMvYScww8Wzi20OCkPkGmkLbul
	6pc48c+IF97jAoSO2QiFarBKrXFy9a6NtEGN/SxYLvzadW5EtLZf4
X-Received: by 2002:ac8:5f82:0:b0:4d1:7f1f:af5f with SMTP id d75a77b69052e-4da48d78e03mr23750851cf.34.1758767409374;
        Wed, 24 Sep 2025 19:30:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEYRodSYOZIlp9dQwajaJU2RST1eRjakBYxnpjkIG7EzbAunG1wg2V/xO1WNTRFimAPmbNJEg==
X-Received: by 2002:ac8:5f82:0:b0:4d1:7f1f:af5f with SMTP id d75a77b69052e-4da48d78e03mr23750381cf.34.1758767408636;
        Wed, 24 Sep 2025 19:30:08 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58313430c1esm253515e87.7.2025.09.24.19.30.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 19:30:07 -0700 (PDT)
Date: Thu, 25 Sep 2025 05:30:04 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, Qiang Yu <qiang.yu@oss.qualcomm.com>
Subject: Re: [PATCH 5/6] phy: qcom-qmp: qserdes-com: Add some more v8
 register offsets
Message-ID: <gaazbca7xrai7nubxgyk6gbm2aznqbli57psvzquvwhdfamupd@g64zbtyy3hnt>
References: <20250924-knp-pcie-v1-0-5fb59e398b83@oss.qualcomm.com>
 <20250924-knp-pcie-v1-5-5fb59e398b83@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250924-knp-pcie-v1-5-5fb59e398b83@oss.qualcomm.com>
X-Proofpoint-GUID: OMorhh5Cf3wFl5we-EGWV5yZmj46irM7
X-Proofpoint-ORIG-GUID: OMorhh5Cf3wFl5we-EGWV5yZmj46irM7
X-Authority-Analysis: v=2.4 cv=Yaq95xRf c=1 sm=1 tr=0 ts=68d4a937 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=lBzdhH75gVJACzjABzkA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDExMyBTYWx0ZWRfX5VnYN7qpIz8m
 43cFn2MB71Ya2IuPPen/FdEBXVMY59l2kUEPkkxfOUUs3V2l33Lj2NXl54b4uSPrFcjcod6pHHY
 BJqLqwx7SS5s2jrx7X2mtZ/+TMS1fG3MN6Qe6JEBKS2r80RHK4w+lnb6IfICeKu7Wvc6Aezvg9M
 gNXo5WDQ3tVSIVgL/Tvz3xqhQXH6ha1lyoqYCFL85pTWbSd9QSnV4YD9VaRZY+Da7P9bDQJfYhl
 ceEkv+InNsGuhzqV6Hf3osqPStJujpBPD2bAbFiaNemYYU4jn9w9/XyHy4pgQgerWFpnbm7WVRy
 zmlsrN4ooZhuLiYTxC049oqrpjdP60xJfCW1hLLRJIWGSt4iGGc/JBxvlm1BwpzY0EkIKinKkmY
 N3aXNt4v
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 phishscore=0
 adultscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230113
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_193016_418949_C91896B9 
X-CRM114-Status: GOOD (  14.32  )
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

On Wed, Sep 24, 2025 at 04:33:21PM -0700, Jingyi Wang wrote:
> From: Qiang Yu <qiang.yu@oss.qualcomm.com>
> 
> Some qserdes-com register offsets for the v8 PHY were previously omitted,
> as they were not needed by earlier v8 PHY initialization sequences. Add
> these missing v8 register offsets now required to support PCIe QMP PHY on
> Kaanapali platform.
> 
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
