Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A712CA0EEB
	for <linux-phy@archiver.kernel.org>; Thu, 21 Aug 2025 13:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w9+mJuiH5MFnG+LO9ylKF/cOrXnPexC8jG5B3HsAuYM=; b=5GBXiwvYJQJqUl
	fpwH4CVI8lJrPGSIVZXnEl7pvTAH4SQn4IpP0KmesTs7QXlVJWU5HvPE0Sp7DI+nD6xNzvVuGzlf/
	mOU06KmUuaCk1j65WBGLylkzsKt40+jOdXwdytAXa95EVmY/7tvZ6ufjbytQiL4VuQXdTKNzkejyk
	uM6h1SnlpTOXCffW3w8eKEdRgo0rfE2OctBOgIPCL7+Yx15eMcXLtYsC1AS2aiBpDzORf4UKvXvtY
	IyX9FBn6sq1yVPMQhoYQf7Tnm4PBm24cnP73a0QlqJ6XC2KR5q5FZKby9eXmLFa2EaXTxhaZeMN/6
	1Osczf4ChrwbaVSdeWgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up5C4-0000000H1m3-3VEV;
	Thu, 21 Aug 2025 13:19:04 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up231-0000000GWlC-2jPE
	for linux-phy@lists.infradead.org;
	Thu, 21 Aug 2025 09:57:32 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57L9b7B4014677
	for <linux-phy@lists.infradead.org>; Thu, 21 Aug 2025 09:57:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=g7PwJmWud4LLm5PEBKc0rhlg
	wmfYyGE456fNQ+YMjxI=; b=GEKIUoI0KrJX3ctpuKhvi/fCWZUkiKZNzLnRXHmA
	RF790C7FnptHnL8LvovYOR9qsce3k5T+jFLaHV+KgJLVyh4FQpJQG3O8gB9htIMP
	EX8bHOnCEamW0p6jclZb4yg3W78A5fbTLf3zJlstXJeciAl7ahRKFxurfIxxgH0w
	F2Ql9/N7HtQSwqL8FcvTbcmXfh4G1XUYlWNI1Hsi+bVG1TdE1Eav6nrJoGAgpqME
	MbAK8asuZKKaeRtz18XTy5RR9LuggXf2OtanGCCI33iCaUOnFXXQQpr0KCTEaEpw
	d2CIXgTFqB7oCEcJ68F2aJQSBEHSNjqNCpVMUBqwF0m8bQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n528vxqf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 21 Aug 2025 09:57:30 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-70a927f570eso17454346d6.1
        for <linux-phy@lists.infradead.org>; Thu, 21 Aug 2025 02:57:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755770250; x=1756375050;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g7PwJmWud4LLm5PEBKc0rhlgwmfYyGE456fNQ+YMjxI=;
        b=fza7aFbqrXa38kJPGZFHbnA9OwHjsVgF9yrw7VzPz5a22m9n9sqHH7yq862LqDhlmH
         UGK2/yZ3AnxKi0jQQ15mYDFt9XbMlDg3hSzIXml4DDOr+WMVwvEnELWVtTbKUecqXILL
         HdfJfJWaEh/8VADeSI8pV3vURrzx30Pk8Uv072mDNTX0pQm5Dj9X4nhAiHZAkiSHgywN
         3HsJBm6FWK01d9293NKoYM5fzNISvgMIldrh7Rc3oE3H4Hmn6swu94efHrtD1szJkaip
         ro5aNX15H6ROR/YfaMssFEKsTQtblzoPA8n4Px00EcvomUci2ViyQDfbZTd0A62WKfrC
         Qhsg==
X-Forwarded-Encrypted: i=1; AJvYcCXTh8Pl0Xl8UzCeAlcyfIj7qA+w0EbVkYRTMyPYCrBvSXvvnCAjVJqggbmRAufmtdd6f7K09bfvaws=@lists.infradead.org
X-Gm-Message-State: AOJu0YyqaMd2erJykOC8OpKzV2ar2WKFYd/f0ZQMiz2WU42kgdGEtAGi
	p8hk5Wn+LlPlmYs/vO9SOaFSp5QMsGFBKxvcKGMYoeFNSWL2J/2Tp8mA3LWMEjItNpvhLCHrPt+
	T82qJXzDTfe95CQGLKjSZ6lWiOa0brQFpTxG52wIgteEooyDU6JbCFxCOXyv2XUlCnVj+
X-Gm-Gg: ASbGncu3Ugjwog80IqHG5mGtQeooxmktoVs5T0zQgqysrMqy+8EI3O2amBkrMSACk2S
	n8Wu2Zbi2mukuy/Z/r1QcqY1/jVEGv8wCpk2x5Hs8iWxTzFr6edIEt4W35cnufDKWYSYx9VGrqh
	2jZpICGXYzafxHeAxYrF+y2IIpI6dy7YXVsgCYlMl4bwkiWe+Cbs355oXJilL5+MJ7GRNFZWfcG
	m9Jtb7TgWAxcqBjMsCQEw8bTME0hREs3gnzOygaQR/dxQS4QUMMF4hota2XlfVG1PFqXeznpnCR
	VtddgUqnMDng0wblwjJqgdsFmnM2b240bDFlygALUc9v4HvwJ3yBZ+TvExghmfgBa3q2cVCRwdL
	QJeOLgx+NR8BajOESUTBu3GYTP+vO9EgNQJfL6iGkJbrC3yOqNH6E
X-Received: by 2002:a05:6214:c82:b0:707:76a8:ee9d with SMTP id 6a1803df08f44-70d8904ec58mr14210366d6.51.1755770249850;
        Thu, 21 Aug 2025 02:57:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGOEFy709p/UfP4jm6FhUpBzgWM0SGkek8iTlc5fP6qfmNzP7NFOaAd+rkmJecj03zIVotF/A==
X-Received: by 2002:a05:6214:c82:b0:707:76a8:ee9d with SMTP id 6a1803df08f44-70d8904ec58mr14210196d6.51.1755770249441;
        Thu, 21 Aug 2025 02:57:29 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3340a41d325sm30632461fa.5.2025.08.21.02.57.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 02:57:28 -0700 (PDT)
Date: Thu, 21 Aug 2025 12:57:25 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        konrad.dybcio@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
Subject: Re: [PATCH v2 3/4] phy: qcom-qmp: pcs: Add v8.50 register offsets
Message-ID: <utakatkrxgfggm2fo3rtg3w3t43vibqaomnwfsp5wi6okuxv62@sdsx74667hgz>
References: <20250821-glymur_pcie5-v2-0-cd516784ef20@oss.qualcomm.com>
 <20250821-glymur_pcie5-v2-3-cd516784ef20@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250821-glymur_pcie5-v2-3-cd516784ef20@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=fpOFpF4f c=1 sm=1 tr=0 ts=68a6ed8a cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=oUcIdNJcVQQXXIIADcgA:9
 a=CjuIK1q_8ugA:10 a=iYH6xdkBrDN1Jqds4HTS:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: FeUKBMqBpVmhEpjW21Bk5Qi__eRiyyC_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfXzYn0RPGmDR0s
 zqIUsbtXtIaS51cykycORqqw3+F3Oj7tte+7ymBrR5LUEs9uparfIEfIv/IbYLlEm9j8DwBRgpz
 RnZ9RQQh6RzDys0WO4ltciPxD7JmmK240GZxqmn9Aihb+a/xED8J6Ar4VnfCC/QcMluCoZ6Tmfb
 mzmW6pj/9oGj8NU6bC8hS0aPdM9FtvMVjrCYXaWXW+wToyXDDi9/ORGbQzPzfruOxPSOl2MeGvn
 kN2XKwCpQV+dXvnwdRqYw4V9oHSn/LFuUY4tvfCfj8A4nINC6oruYycQgwa5UjgH3bP6rFKM59V
 4NZc81KuopGsGYlwssFhAc6usRXd5it4gRX9maOG0Z/FwGymmaE7nAOEzcVb2eQiwiqJtFNC2hO
 zQ+PQZZenfZHQcb1Vg4MUPieM3Bxbw==
X-Proofpoint-ORIG-GUID: FeUKBMqBpVmhEpjW21Bk5Qi__eRiyyC_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-21_02,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 spamscore=0 clxscore=1015 adultscore=0
 suspectscore=0 bulkscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_025731_803599_81FADD24 
X-CRM114-Status: GOOD (  13.59  )
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

On Thu, Aug 21, 2025 at 02:44:30AM -0700, Wenbin Yao wrote:
> From: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
> 
> The new Glymur SoC bumps up the HW version of QMP phy to v8.50 for PCIE
> g5x4. Add the new PCS offsets in a dedicated header file.
> 
> Signed-off-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
> Signed-off-by: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-v8_50.h | 13 +++++++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp.h           |  2 ++
>  2 files changed, 15 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
