Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4460CCA0FED
	for <linux-phy@archiver.kernel.org>; Wed, 27 Aug 2025 01:53:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ODzUxva4mn2VtY+gFlHbfxZPeWlqmk6asOFRCfnbl/w=; b=pO8vdcyiQk1BX+
	9/kfkwSmDNsgCx0IKtO38E5dTx3HOi4EYfMVl+k+wsFW5WH3DaG2tPKuySgn6rN1+BStxZpsnVVPT
	DOzCUhJ64lev6A4BwidfzMUb0t5Y6ZFjy1kyLpArvqdqOoFxGqz259B9F9/yqmsCGTJEgiEgMCfMp
	cb2mm3/nBp/qti1rNrv6DW9vm0CMvjoVTFZg2mabrGF3HWkemEhWJ4lo4/xlwjnEVHIEKodb9YPB5
	BaIcDrgbaiHH3elsdFERZTyNw0pcMg209JNCAX/xbwqFkWqEmtoXDCEhlCKQ3zk9Ad84s8lvzJN8I
	rLf6DxhIXb4p/+TxwNNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ur5Ln-0000000Daqn-3vu5;
	Wed, 27 Aug 2025 01:53:23 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ur5E0-0000000Da5i-38sT
	for linux-phy@lists.infradead.org;
	Wed, 27 Aug 2025 01:45:22 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57QNMiB5031504
	for <linux-phy@lists.infradead.org>; Wed, 27 Aug 2025 01:45:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=EVlyCX7UKqENRSV/+Uoj7vIb
	5mLKB73LY5H1x9aorkk=; b=pZ+DF7r7qRDjmqTBosQWZiu9zsBENsqiqQt2sQ/f
	BfJJM5SsYqKmZ87W25aEyzHNfaPHvAZJWmGwcMd21B2LDUUUlqiNg1xzShyxzVZA
	e4ngydvxpMGLSvzL57bqjAbHpXbEASgkvap2wVmeo2wrMZmQyvb+ePstkXGG4PuL
	6X/UZk5QT5i+NPxKUq2Go8m0O7kQQahk+bNfQeoS5ykwmbYReSRdGoM6t6v+3FnV
	qvpXihvZT6e0V6CzhXJTi61wYcE8d4IBEb+6GDfYnM4R2u8w8i3Gvz/eQBc0wiyr
	vIxmmNc8LljAm88TorEzLDZ51NdMoiu07bCNqklT3RcnjA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48se16syed-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 27 Aug 2025 01:45:19 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-70dd6d255c4so29509476d6.0
        for <linux-phy@lists.infradead.org>; Tue, 26 Aug 2025 18:45:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756259118; x=1756863918;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EVlyCX7UKqENRSV/+Uoj7vIb5mLKB73LY5H1x9aorkk=;
        b=Pfm5pwE/BC4aswVHlLj1L9v9IIEPuxI6L7gV2aGpSNLZIRwmZ7YClHndkGV6HKuC/0
         PMS0oOEIYs5ldPvqKCgrTn/exLeMREtXFC94Z///rLMfzebuurCO929kzrjDnDJjdyeb
         b1A79XXVYSVQ2haQQ4PZWM14RWNOAsNaeJ2Z7R9OEzHXGDzg+5ou315OWY/6wVsQYz61
         xsNcIw8YSaVuecXC1WnKJo3176+Qd6LlBAd715UCD0LTz462MWTFaEGAQK9hT+cyRuQs
         x8K45uLRMZ7y/tNbC1E56sin6/9CLvF4YpA93juavQyYuE1Z0yie1NBuQlr8g5TWjzQQ
         XOfA==
X-Forwarded-Encrypted: i=1; AJvYcCXWoFsDCKtMhHXnmadedJ0ojnX/D8XvI3JDAtpnwDiCxQKWKGueUvI5C/7fC7agFNuNsYqOfIB3h2s=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxk3vivTwPhAnXUUkQLfk1s9mQQPA5JF0/bCkJILW3K//rpMiOM
	e0gkBqxYJ8ZWQBk+1jPfzQ+4cq9/6TV/0E7b4NixXlrNTd3fwullORptHRKTRz6FzT4zVCMMQ7N
	TWDSNJxVpWmZF9yS8/tS8Hu7xW0kdFPU3ql+ySwnldLWZc4QlhHBxO4bg2vEnT0R8t5pO
X-Gm-Gg: ASbGncu7MPoG0KYBQx+G0CShV9EeU3I52pVf/vywEBzPX0dnx9zOnLoNUGsl8mbDrDm
	jygLe5yqxonttmkUYhv99+L6Xb7jkKUzEhBjTNncBe4lqXRsuetHDcE8rUooKAT6g6E2dMD5bKg
	wgjjVe5PhTZXkABP4bd1ccAVUjf909LqfsgMwzRxfUG4Ri07rMU3mk1ANvsxalcayLSu0VB6cdx
	feKz5OUCHS9vBwQqYAlhf0nVrRjzx7Vwob4trbYIOBam7hlzjAF+XCYCqlLvdrIzkmNKk2apbO8
	HWlRDXg6rjs82ICpPWBh6ARTNvoiNc6TuzjUWObXUIOX0r1xJwwAlfzZ8PCMw8rnuEH4ehGOeTK
	ty9ZxoJBFuoohet97WLZCLBqP5CVLE3QliZ4hnV3qfRxz/DeRL3n1
X-Received: by 2002:a05:6214:468b:b0:70d:9bd5:5652 with SMTP id 6a1803df08f44-70d9bd55f6emr220290436d6.21.1756259118075;
        Tue, 26 Aug 2025 18:45:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHWdYPt9kh8RJ2zFRkhVPn7Ohu0C4BSckH/umAugKFEf5MEL8zGfbaIQZmlbtg8WiX75govqA==
X-Received: by 2002:a05:6214:468b:b0:70d:9bd5:5652 with SMTP id 6a1803df08f44-70d9bd55f6emr220289936d6.21.1756259117532;
        Tue, 26 Aug 2025 18:45:17 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3365e2363dasm24546091fa.17.2025.08.26.18.45.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Aug 2025 18:45:15 -0700 (PDT)
Date: Wed, 27 Aug 2025 04:45:12 +0300
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
Subject: Re: [PATCH v3 4/4] phy: qcom: qmp-pcie: Add support for Glymur PCIe
 Gen5x4 PHY
Message-ID: <ohzgigqvqdgaee27fdozzpt67i5cpp53jkj2rh226kf6sgr6d4@jsgqpno52x5z>
References: <20250825-glymur_pcie5-v3-0-5c1d1730c16f@oss.qualcomm.com>
 <20250825-glymur_pcie5-v3-4-5c1d1730c16f@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250825-glymur_pcie5-v3-4-5c1d1730c16f@oss.qualcomm.com>
X-Proofpoint-GUID: NP4Vf1El-1GkLUoHf6qqXvnVmWGDa8KM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI2MDEyMCBTYWx0ZWRfX4rFdJAY+5qu9
 AVyuf/srClrxPjJdZgauUSgYZ2HCPvgfQEvSx9d4Bqv+fq0ZL1yHFrqCBDn72sw9z6c/Qq1yaEF
 ozdrn4rveJaeVZwfYiDnxCXn/9i8czZgeE2Uf4E/gDuyTIrVp9HWIrQc+qGel1C5Mo1F6kkSkGK
 Om3Tw+fohMmLx1TBXIBS4ZC3PArgu5n2WFdkkBaYsQB7VJrYsqER0QavAZ9/UbssKpvLyF6geai
 O5fvgjACsSSWA+fmn7/jcmHqsS24oo1EgorB0uJ7hFk+ZwNIQbnk5TmrDFcy/65cBF/3inrnliX
 C7pHx3nN+1GSLW9g1dujU8KrDX54F0mNrV1gXF5aS/QZ41+lpqAmZayWx5zyPTP6sm/8/OuI8qJ
 Pnrx8K/H
X-Proofpoint-ORIG-GUID: NP4Vf1El-1GkLUoHf6qqXvnVmWGDa8KM
X-Authority-Analysis: v=2.4 cv=CNYqXQrD c=1 sm=1 tr=0 ts=68ae632f cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=RFEw3ZXBErJeItyUBPQA:9
 a=CjuIK1q_8ugA:10 a=1HOtulTD9v-eNWfpl4qZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-26_02,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 priorityscore=1501 adultscore=0 spamscore=0
 phishscore=0 suspectscore=0 bulkscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508260120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250826_184520_793997_028182EC 
X-CRM114-Status: GOOD (  13.20  )
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

On Mon, Aug 25, 2025 at 11:01:50PM -0700, Wenbin Yao wrote:
> From: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
> 
> Add support for Gen5 x4 PCIe QMP PHY found on Glymur platform.
> 
> Signed-off-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
> Signed-off-by: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 32 ++++++++++++++++++++++++++++++++
>  1 file changed, 32 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
