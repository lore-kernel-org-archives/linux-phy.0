Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E61E8C87FDB
	for <linux-phy@archiver.kernel.org>; Mon, 11 Aug 2025 11:23:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P+M1IqZrrL0D5HrZIO444DtQ5xFmzlcMiR5RR+hbeZ0=; b=u8AdXmcQ2Va9aD
	LaDSRWia1WNoKR6An9P3VsiDa1iCcmhJUhQ6B6WKIcgE6U0s3inXyo6ewOWfH9/IFxbZjM1DQMEsp
	+PpW4+QExk0qIyBBuBKleeeoy0TotAeZOdP3+h6GruKUG7CNcTGV5rtV9hZjfX11mMg8tn+bYm32c
	bAjCMYg3LI4f2jTofL4COupA26wUaPdWL+ZIC1fKwb2J2AuYpb8qs5GTRSS8R5cuzV0pZ0EzYz4L8
	Ic6uhkeLEh0cxvh+HYuylfePiu3UlwW7jvSPXYUexDujzM3BV6kx+RqE7nDD2aIzBCDjRaPw02EwD
	hcW6blpb0DSfxVQNvcTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulQcX-00000007V4w-2RHo;
	Mon, 11 Aug 2025 11:23:17 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulQEz-00000007R8S-0hOD
	for linux-phy@lists.infradead.org;
	Mon, 11 Aug 2025 10:58:58 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57B9dLu0029350
	for <linux-phy@lists.infradead.org>; Mon, 11 Aug 2025 10:58:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=LCBNoKc54TT9NiHquTumjmp6
	Jc2gxZAQ8MEjjE3KJtg=; b=i3hOb9tbCFgU3XFUbquG8R85Ws2AOF+31mP3dKy9
	iqa1+sEKuHZbTz79Wii6UtfKZcdW9Wlf8p0YuMs6nrFjIsL5mbWnt5cOFrf4iEse
	bVvbJe52a5LZG2ZXxK6YZz+Joqfs3o7US22vZQzzLIue/ljR5YN0uWIgw0NbJwMD
	26pvtvhFtvst+Fd1xRBx5gMW0mU2EiDvX83vzcs0VtmtnzhYJIoECuYSmL1/2lJe
	BTGNm+NdDo/In5b0r9RGFhjWmuH5Dhn9RiPREPVKhwfy2gSXTWZdbUnU/p/PUKh/
	s1U6awXOH5A0hBCKFpa3MaCsxJmhiT+TYCOe1dNqZOZVmg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dygmc1u4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 11 Aug 2025 10:58:56 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b06228c36aso55820091cf.1
        for <linux-phy@lists.infradead.org>; Mon, 11 Aug 2025 03:58:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754909935; x=1755514735;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LCBNoKc54TT9NiHquTumjmp6Jc2gxZAQ8MEjjE3KJtg=;
        b=XUL45GW7COAjNkrhvwse4mePGSwyK98+QWDesKZFVxAbg0e2yTU+cenX4rQljQhbzY
         TMI+QsMHjeCGRM8xJKrODCLz3dFWOD9ydeDfJzqruRrHlvsJETctmkYe7X1yk0hu175D
         oXVj7Eny0rsqSgLH3I+oTS8J7i043hRJGRH9h4JxhvvL2lJwGSgpmfhb/PDR422Ng+dq
         dk5QDvS/6nh58wJYJdqzb5TnHit8vyZYrZGQHFdDErsh5eYEROwVBM9jaHVHlhQK4sb0
         8RqfvNX1annDtxXQSXhOzuXVcKtEczK80SVvRkLMc4IKqAVj/4FPIEHw6x8rQtvPefWw
         iEkQ==
X-Forwarded-Encrypted: i=1; AJvYcCXaKZINA5x0C/8ukpl6PgPdy3m7iFZG4yd8EeKX3kyjznG8ArUq25r9w9AE3aWe8FuPH3/0S5GdRgI=@lists.infradead.org
X-Gm-Message-State: AOJu0YytFxW+5cI6A5tQTg+0EyUN9EGWMO4EzplKAdIlZwL1HfLRt07W
	opRiV3aU0H0tfcUUnygpaRvLik/+ZsZ1dzs/mwy8H7TqefMI1digm/jPWXo7VDYrs4DRXt8GVqM
	wqWJoolqriTOFx4UiLxgDTEWRBJTnzs3l76dKaQ75curae+q6KmCHxiHp4GpziqfE9qRV
X-Gm-Gg: ASbGnctbkbZ4bh72LHZ2rgt3tuRwOxwnipWZrXvM4pRSx4AZBfq29dhp00ZboW0w+fj
	0Wa/9zJLTb8qujA6VfYy7ZeXO/fNKw47YWjZ0zJy7ySu6bCfcZ064SPxuIwq5B8op5PHKPJJDgo
	oC7lXenxOb1oEQ3nMx6n9jV1sWEXHKxyXRZfTPPCi4BXrCGXn7ovyOAHnKJwTYTLTiudQSjdyy4
	a+4X6GL+KfIx+lBZa9TK3glrJVlBtDHGUvaLqanm+ouQv+ADImU+n9G9a4RmjmMu2SvdTIBm4Sk
	RiEKhgIl5jqxJDpYngMqDXAhZj4GLVzjkIJD7FD+DnaeNNnkM2BHWOjOrcu8vkq1TX0+zlziw8n
	Iu+/9LG6cz1pWD6i9Qqq24SmrGPssYx+2WlxZ7RHOeeIOISHdlSqi
X-Received: by 2002:a05:622a:1a94:b0:4b0:bc43:dd90 with SMTP id d75a77b69052e-4b0bd6610f9mr96570051cf.48.1754909935255;
        Mon, 11 Aug 2025 03:58:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGBrlBvmKL2RueO2NS0xviGlmtRPiD5NDEbuXSKBImqyB7gwapNEVCwYcaPgiOWwUqYRHjJCQ==
X-Received: by 2002:a05:622a:1a94:b0:4b0:bc43:dd90 with SMTP id d75a77b69052e-4b0bd6610f9mr96569681cf.48.1754909934768;
        Mon, 11 Aug 2025 03:58:54 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cc9df19afsm1050425e87.168.2025.08.11.03.58.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Aug 2025 03:58:53 -0700 (PDT)
Date: Mon, 11 Aug 2025 13:58:52 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com
Subject: Re: [PATCH 2/4] phy: qcom-qmp-pcie: add dual lane PHY support for
 SM8750
Message-ID: <mjg63cvby3jtosoiswqg2kjxlubavyz5o27asthjazg2z2x6gj@3u4gywclkg3r>
References: <20250809-pakala-v1-0-abf1c416dbaa@oss.qualcomm.com>
 <20250809-pakala-v1-2-abf1c416dbaa@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250809-pakala-v1-2-abf1c416dbaa@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAzNSBTYWx0ZWRfX+Lrya4pwxevP
 fIoFEh7YPij4AHzLVLUzhRGuDqV4pfZQxrjx/Kd066IMIEh0STFKEeBm+LrCVEylwT7HKjS2tU4
 NosmXEJtGBEbt2mt5QfuDKC2+ao5dkPXmEsTK8bAH1LX/CLBrwukX3Cci/v1L3q9a+HjeomJXNg
 ECIityT64jDDytqgEi6AbTck3YcHeMEVzIXq40uQE6WCHqyE/jFsSQ1+h4bpWJOcsryWb7jNesp
 4Nod2zML6oDZVRCNfDI+cUJaMtPmR/fVUH0fhEZtBpOi2bhAxMwbv/vPCeXF43e0lSzu9xv6Xqs
 N2x0cr+0NkoFTBc/mzjfparbRK9dCORbBLMn6i5YAsZY4E2CM5hMvwMlSAhm3rKMjYQiJyEULZj
 q7J0fixf
X-Authority-Analysis: v=2.4 cv=FvMF/3rq c=1 sm=1 tr=0 ts=6899ccf0 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=m1AchfmAwCg5kGC2PD0A:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: ZiX5ir_eykye5dxu3w9j3sLHLGPPUhVD
X-Proofpoint-ORIG-GUID: ZiX5ir_eykye5dxu3w9j3sLHLGPPUhVD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-11_01,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 bulkscore=0 suspectscore=0 phishscore=0
 clxscore=1015 impostorscore=0 spamscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090035
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_035857_216526_7610A69B 
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

On Sat, Aug 09, 2025 at 03:29:17PM +0530, Krishna Chaitanya Chundru wrote:
> The PCIe Gen3 x2 PHY for SM8750 uses new phy, add the
> required registers and offsets for this phy.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 149 +++++++++++++++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-v7.h         |   2 +
>  .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v7.h    |   4 +-
>  3 files changed, 154 insertions(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
