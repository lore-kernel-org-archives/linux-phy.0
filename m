Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBD41CAC5B5
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 21:57:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xcEuAquaJMHWrezOYOV9EkHKMj4U2Dj7VBiLORaJPX8=; b=wea+5r7TzqgE0X
	SPtRqqCJkseczVs2ljBgV5z8bIYu1DU5jSI1xvGb61jiNnvZCEnxneB6I7PLp8eyXT0WeL+iYfvXi
	jOOD+w4iXoADPeMw+KGIDzkt3FxHd+wRaBWrhkM0TK/VxiTVsWtQ7yCbkI+QVf+3MS8XoWIkbTbnC
	2jjagpJ1m6Oic/Tf6p2cGui0krvd4eEVuOZQMsA1dcgbSZmkY+aX37c757UO933OEXrS0wW/CbsNW
	azrVHrfQBOWyPe9fTO6UHPoeqryG4WdKZeHLyCwbp3rQKaxKpkq1VwiOtks9r7SlYWHLQOXyxZtM2
	4inrX/0l5CCvj7kJduWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1txy-0000000DNKl-2Wfe;
	Thu, 25 Sep 2025 21:57:30 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1txw-0000000DNIk-1TbE
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 21:57:29 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58PIQO8G008118
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 21:57:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=0PwCuPQqx8Z6h5Uvt2HeerM1
	J/nGXO3zl9oVlZVDBoc=; b=XK1uqDAPXweKnTZKlUOckWMutVJlu5JD471YAHDp
	y/fSOf6S0JmkK4x28Vq0wnoZtIin7w3eltmeEw8V79yPXj0zZ7b0UMyR7J0/xPIs
	fQjpuaoc3xwBf7QH1OIbxDaVe4bz9Sb81IKVnoUsi0dLTuzD9g45JhRt8AZaloXM
	ys3kUasTUNUcFLMX2bg64XPKLt1MJjzgVbLqX5ak555SHo5h2kjRu5YzKbiNBzKn
	HOIPcrWZB10fLBBJ72iQo1I0BHrtYLsGW/rIfjHpWwxJsJ2xt6GeJkXB3tTZHqMJ
	4qEkIZXCRRNlH7ZZQ/lLUbdAUoaKEDz24C7JoM/ISZYfVw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0vrgj4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 21:57:27 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4dbd8484abbso17987581cf.0
        for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 14:57:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758837446; x=1759442246;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0PwCuPQqx8Z6h5Uvt2HeerM1J/nGXO3zl9oVlZVDBoc=;
        b=oL4VtHek/XG/hKSrPQVqnNP6g14QOfdhz426vTfxxXGDl5BbwomfuNmChwhdkn1ZKF
         JtrP/E42A1juEd1IF76Ibf2Sn1AZOMbxiuYTbKBmq56oKFaPUEjEGjfgTtCxAA6EUY3s
         I+Rf8vAjrbBIgMRkQOypqsoC3LYOjpcCAFsQVK5j9yDqQO+TVJQNRGz+HkBBrqtPn2Nv
         LA+TK0N8LZUiDEq6gPykiYApByCtvPOFKWZZAUUYhTEbTw4QdWC/rjCf/SRiTZIa57cS
         Dc4OhQity1vAd6aCGTmM6JTDu+Uwpckkvq5mPWZnjGqUdEMt6HCILU2OqG9JrUH9gHnL
         t4GA==
X-Forwarded-Encrypted: i=1; AJvYcCXLwpyh4T8U6gqzImcg4VXMXDfFc6jHHGjbHCUDKp9eAWloJ/bIKUCeU66NdzlLOjpYuwbOhawNbN0=@lists.infradead.org
X-Gm-Message-State: AOJu0YwaHDUk7olXepbgnPf+wlV4rNhlms856PgeATEJUY+1zSG+Buy0
	k89vOuSlxxJYqTEvEZTs02NS29skM61CurHgImA7ly7dKAc/7y2rEMbHJ0rhzDO4/jPvhmyPOCa
	m01G6sEFnVPnIjedHh6inzGcLhUf6HbPzkkouy4IKoRu5QEgPl9hBJ9CLU2mlZOhni3AE
X-Gm-Gg: ASbGncsNawSZXd89ktDZdf3LFkjT2m18mdqNMlYZq4UN5P9e+6x9O42EjnngQ2M6JMN
	+lxnvkvIsofIQYTnN5cPnheeWu3onTqvSj5mXhZnKTEIFQ2spUTIid628skPoV8gg9/97YdIL+5
	35q04C0yEecUZNQQeUlwqwPQ8YC/VqFsN8tblquE998QuOxBIw0Tgfe49NI0ImWczDCiSBcWIQ+
	VE+MbuQ4HjHJI0syjxESbEHhj/2G0i9swZJanYsxT8kLIBbha1bnTmoPkzIhqag/F/Zd+lpdoF7
	pMfG7hmzr8v0Y8UMNlIEUWLWLAKB2UOKvcqUQdbMRZEvb0tZx78lf5KIAU9qtMrQGTxHghk1TJT
	7vc3Q+aO7xuaUu+9J58k7pqm/9X9KU3oz6OkaC/47uAUO4gSDiTrV
X-Received: by 2002:ac8:58cb:0:b0:4d6:222:dd8b with SMTP id d75a77b69052e-4da4d31543emr60281011cf.83.1758837446403;
        Thu, 25 Sep 2025 14:57:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFUvHFm/VIoqIQAQiQZ6FSqSB9YMAic3boTm5yCXZXNdcpV35T3IBACEQOCvNWiglROD/o5RA==
X-Received: by 2002:ac8:58cb:0:b0:4d6:222:dd8b with SMTP id d75a77b69052e-4da4d31543emr60280581cf.83.1758837445940;
        Thu, 25 Sep 2025 14:57:25 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58316a316d6sm1156263e87.98.2025.09.25.14.57.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 14:57:23 -0700 (PDT)
Date: Fri, 26 Sep 2025 00:57:20 +0300
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
Subject: Re: [PATCH v6 12/14] phy: qcom: qmp-usbc: Add QCS615 USB/DP PHY
 config and DP mode support
Message-ID: <5dtlqq7x36gb7cmiunoreoe2vftq46pusb75sbol47ceazefpf@lxrx3hhcwhju>
References: <20250925-add-displayport-support-for-qcs615-platform-v6-0-419fe5963819@oss.qualcomm.com>
 <20250925-add-displayport-support-for-qcs615-platform-v6-12-419fe5963819@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250925-add-displayport-support-for-qcs615-platform-v6-12-419fe5963819@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: B5mS9j_yfJrzkrlrX8IJVQhSwCkoTiow
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX/7b+1KT6MOrz
 rEUPtZnEWJxiOGWO2TS5DizTxGKMfQDrSVq8XrUaxPAVhZP7mmSZw+khLVYl+V+WuNK8aG2j7e3
 HCQ6UY6x7e3QWkGpB22grKK9p22Es8v/OGAastKSctQc93JkiiVzxc53QRVt4HReFC+lbpohmYa
 aORBQAaNZZ6sZA0x+gCQXR5f63HzSfMApMjILyZX0PUSAAFH99FWJETa0xhdhepX+GPz8Re0KMt
 eutO3q4MZ1VdKc44TEiDSquFkfGHojdKDy7hT5LRnZXMA0uG+crb+4y+Tx+phH3BFERK/GUdGH+
 6Qtz/fiDlJ/3Yikar7JaHmUAA8rcYuUqY0kZ5S+XKB9PKCmr9+jvoCWAmadtqKF/FeXjl43jJfa
 nN4MDOaK7bajzRsViSxAHFV7i7UmDQ==
X-Authority-Analysis: v=2.4 cv=OstCCi/t c=1 sm=1 tr=0 ts=68d5bac7 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=cNq2fIDUiLOJNmzcDXoA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: B5mS9j_yfJrzkrlrX8IJVQhSwCkoTiow
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_02,2025-09-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 suspectscore=0 lowpriorityscore=0
 priorityscore=1501 malwarescore=0 bulkscore=0 spamscore=0 phishscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509250171
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_145728_512362_E0973934 
X-CRM114-Status: GOOD (  14.71  )
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

On Thu, Sep 25, 2025 at 03:04:58PM +0800, Xiangxu Yin wrote:
> Add QCS615-specific configuration for USB/DP PHY, including DP init
> routines, voltage swing tables, and platform data. Add compatible
> "qcs615-qmp-usb3-dp-phy".
> 
> Note: SW_PORTSELECT handling for orientation flip is not implemented
> due to QCS615 fixed-orientation design and non-standard lane mapping.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 407 +++++++++++++++++++++++++++++++
>  1 file changed, 407 insertions(+)
> +
> +static const struct qmp_phy_init_tbl qmp_v2_dp_serdes_tbl_rbr[] = {
> +	QMP_PHY_INIT_CFG(QSERDES_COM_HSCLK_SEL, 0x2c),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_DEC_START_MODE0, 0x69),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START1_MODE0, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START2_MODE0, 0x80),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START3_MODE0, 0x07),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP1_MODE0, 0xbf),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP2_MODE0, 0x21),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP3_MODE0, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_V2_TX_LANE_MODE_1, 0xc6),

Hmm, I just noticed. This register belongs to a _different_ space. As
such you can't have it in the COM table.

> +};
> +

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
