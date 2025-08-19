Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4B2ACA0EF7
	for <linux-phy@archiver.kernel.org>; Tue, 19 Aug 2025 20:42:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dq/wqSJHV7Hbehn+YSJAO7ePu++psGNSw+lLpS6TzjE=; b=oR5En2AhftSc8e
	OpjEYf4FPm33bmKMJlx6tdxhLmfDmhZJwAg1GZ80Lwzifxqrx8ZqYSSvu1sLrqnKIOLe0uMlpyHon
	Czo/K7a81HTGzg34fJwbDOaxraeBVYUaujDhpP0UcJty9VK/dTrGRNbI+YUwNFL4IKgY4h9i/etio
	vVoaasvGwfwqA3JKt0HVPzUXmM7M+370LkPnh7RCte/lRLw0+vsR2OpbHd7Tq4hz4Q3d1FZsvKcX4
	VV5J+lC99SKnWypeZObyJq/BM0jo3wSzsHjMT5iA3Cu8ku2O+NRDlPsPL8QRbIMJPsImx7VmdGs0v
	A3G8Ch5HCgHDG/JZWcAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoTAS-0000000BYua-220u;
	Tue, 19 Aug 2025 20:42:52 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoRGm-0000000BKDJ-2TLG
	for linux-phy@lists.infradead.org;
	Tue, 19 Aug 2025 18:41:18 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57JHUgYf001317
	for <linux-phy@lists.infradead.org>; Tue, 19 Aug 2025 18:41:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=fsKi6N3rGd39Et6hXl58o+48
	D1G9aAWyzqry7YPsv9k=; b=PQ2qppeVwsbl4TdPvLEdU55I/z4A61ULSXt2q/PW
	nMogvJgSPECMrhgsSWOkwDXVZULXvHvadbbBUoaPEmgXI7mnPloWACe9lcKu/xHP
	QaNEgGWLNSPDJ3u4JcxhmSNDQOYFLEkedMlAASlmxAgafwGle+mHE+zs6P2Qtqsd
	4/zul9f8GKx5euWwQyH6yVyyODYpwHNM8eD0sAJrneudCAOBnqJJP0LJqRqjUHs/
	N7DPNfk8gG/e5R25I3mv3d2K3oucbiT5b1LTB6d9mjwvI9Lyo1BjVIn2MFttHg9G
	bIgcK72Xs+EQq3tlwoUMPKUk518WpaSx1shbLzKsEiri2g==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48jh079kn5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 19 Aug 2025 18:41:15 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-70a92820fd0so55444316d6.1
        for <linux-phy@lists.infradead.org>; Tue, 19 Aug 2025 11:41:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755628875; x=1756233675;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fsKi6N3rGd39Et6hXl58o+48D1G9aAWyzqry7YPsv9k=;
        b=SSAea+J5N7GlcAyQoblNWYIfWODKHpX/rHUk+gF49+EJnS2tGes4hhLRc5c0wJUn6F
         XjbXC6/oTub66ut2AK9MNLmjJENFAsKS+iVDjhw18F6iFkWarOTd6HvQdottU3VSVQ0J
         VKcOvKDn8l6mwwm7xfR3z1ZO0ypPHJesobk2OCsCx7G9elSITrlqiP/6TSCxk1Jot++S
         q2QUMTOIMKMBWBI6y2yNJi7YUA/ypG6t3ZKs9rjvEZbgMawy8OV+Goh1Y6+6CPvlTL59
         FD2g8vY7m+qaXy1F/ZBAfDqXGT1PGLrPfdPL3fLXwdPnvOB1Ej0sMmAKExGHF/V9P0rs
         NC3A==
X-Forwarded-Encrypted: i=1; AJvYcCU3s+w5WjUx8sgHo28oA2JLWZsvwRtCk6zqGg5qSjuJ0T7VovxlSiuH0eyKSdubJUB641x9MkIQNRQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YzkYqYCOYSYsWY5ARAio0ycipThcBJpiGUfQ78mALq3qrqbQUUl
	CR2h01BTeusu8n7EHmsFqk+KVfpRkmWUduEMkXg7d1LVmVFPzpOMs8Wla1VaPLPYBJ/GvVXy79Q
	LVHP1rnPK5cTvr705zS+PDZPxgyiDF6lptHXuJ8uZ8gsQ31+Ns8FeiPjIExc8bKgKM5RY
X-Gm-Gg: ASbGncspHTnrqJELm4492nI925xFvfTbJfaEsUObR4AUuIjSPcpGaBeEvwHzmY2tyMI
	EbAjbPJ9ASPyyQwUf6322Vy8553RUn7ZpKkeuKGrOQ519l7nYdYwwqhXmh3jmRQc4h6+u+44t3Z
	pGzpIB/ii0KPjbbZh0qLw0DzJgV3Fs2WaxydFynozfwDEMTNMTCQGBk1n5ZOmgfHTlIZPA6Jbdw
	DFWs5KHFDpIJAVGsQo7+nU0xqLZ2t4+HikIzPuEEtHVM3Aps4+KLXjl6Fj8cYFipT5sntfII22n
	MLQLMdbwc7WXIKhHMVc/lm5Yp1vyHOeXurDN4DgafF9ZQI54Hve7ziei+ak05OQHVu13e0ALksw
	bMbLdeBwQb55qDqlyp16Rjead7UTFDayHjYketuZvLQTxBmH/1DdN
X-Received: by 2002:a05:6214:519a:b0:70d:6df3:9a8a with SMTP id 6a1803df08f44-70d771df744mr306836d6.58.1755628874621;
        Tue, 19 Aug 2025 11:41:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF6i+ltbxHJqeyZJnz7Lrtjpq6qWxmofRvnlEwSWnAd3j1242x3FAk0HauMhjYXw0IZKvpbfQ==
X-Received: by 2002:a05:6214:519a:b0:70d:6df3:9a8a with SMTP id 6a1803df08f44-70d771df744mr306336d6.58.1755628873968;
        Tue, 19 Aug 2025 11:41:13 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef4425c0sm2189059e87.153.2025.08.19.11.41.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 11:41:13 -0700 (PDT)
Date: Tue, 19 Aug 2025 21:41:11 +0300
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
Subject: Re: [PATCH 3/4] phy: qcom-qmp: pcs: Add v8.50 register offsets
Message-ID: <kssxh6n7ml7zizll7ifo3ihcwtsa5lnixgwtpbmqh5tt4tiqsq@pex6pl7kcklf>
References: <20250819-glymur_pcie5-v1-0-2ea09f83cbb0@oss.qualcomm.com>
 <20250819-glymur_pcie5-v1-3-2ea09f83cbb0@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250819-glymur_pcie5-v1-3-2ea09f83cbb0@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: CBiBqxVfOw7QzWsP4Sl1Ci5c-73354ga
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDAyMCBTYWx0ZWRfXyujN18Qg+6uB
 fW4yC7sJdf5uvAOYN87C3xs/2qxQddEL6AlE8VKSsqIdlnD7dhUfqxwVAc2weWdo11pspSTfWWY
 YzxfQftAzZKznaNiFfjVxBq2xwT3BVFJxmj3RCUq5hO39vIG232H5ZQC6MtitTf9bOYWebk0GAv
 rjLNjJW+nhhT60x2WAlO5MeIv+N2pNrPx/Qwcv3fHs+djpb/UjNqcdRuCFMzOc/Mz7mxoTUQjjB
 qIsqkRWkYZp4NYY7vr5MHx9yDnCfl4R8NkOwpzjnzuis1lRONU1zD4oQmyVpWuMtKM7cJFvC7UA
 6+AjeRn6MKZ2g3TQQbq+BN3alnk34Cq+L7Ffvu+ua1HXRxaLgAr3PWVmhxTQDoLgBcnf7Ea2/GU
 fVlrUXBF
X-Authority-Analysis: v=2.4 cv=a+Mw9VSF c=1 sm=1 tr=0 ts=68a4c54b cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=ijTbXYptY3SG8TVhS7AA:9
 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: CBiBqxVfOw7QzWsP4Sl1Ci5c-73354ga
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_02,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 suspectscore=0 impostorscore=0 phishscore=0
 adultscore=0 priorityscore=1501 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508160020
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250819_114116_744372_D57C0F44 
X-CRM114-Status: GOOD (  13.94  )
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

On Tue, Aug 19, 2025 at 02:52:07AM -0700, Wenbin Yao wrote:
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
