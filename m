Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5119CAC5AE
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 02:55:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2g+q4BeGsosEIWwjEUfS4wWEahwrtXNp/iVOiT65J4g=; b=dGQumubCx04CCM
	wV+9+RxgIfZd+NWH1DjhC84RGdUH+80TwX5zwH/UBGg5P85++ubO2XdgvaaYtL8DPn4x8SDmxrWMB
	/WSVum/ZPYyi0jrO6Qo8wgPFT4O1rtAFx7W1UrY/OdjufC0Qhq2AfTDPMixZLn3cqAeNyFY79DJa0
	I2kcw1t6TrP1O6paewimH94+IfKogoMgdcYAbLdBlBbNTFuohsKSPpWkQ2NhNhgi1Mm/blemAKr+T
	iRNuPKN0V5BzIRQ3w/n26zVqRvTiYROumTqaoQza9cT5UQtlE0z0Z67CIQKrK87Sa/9+4aazsVBIU
	sLBvN7NmWlMWanbBVhAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1c8z-00000005MNx-1mBV;
	Thu, 25 Sep 2025 02:55:41 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1c8w-00000005MNZ-1xCs
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 02:55:39 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0XWHL025358
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 02:55:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=lbAXN6mA77BRJN0uV3xHHBfz
	VOSuZFy9BYewzxG21Rg=; b=f8AzB8MuyP8nEoEpNuzCVS+vA1YYt3oDHjnpirqc
	Zm+6RCDvbDbmCgdTRc8loA4vgKo9Rvat4uKr9MfR3JrN82i6sBgHX+cyIFZt+Cu9
	0ay654UXCApI5NfFcnSmZRCsn4W5zKeSgrD/R9na4y1Q3maZT8U7TvVcBOYO6CCg
	C42D9F5+R8sWM6vAhGHS3PkzM2lDZFyWW/XJNuZyj7eloXKa8+Axv6DTJtCHOTEX
	OwJQNhXOkEjFSNMPnLqjdKc3ZfklAKvYGK4OagWljoNiyve88/Ot5tkVOUqAYjE4
	1zHnxqcWuyRgMEUDhVH4pteqU52Psq3BvcLGKZKoihCESQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hyextud-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 02:55:37 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-85a0492b5feso169115885a.0
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 19:55:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758768936; x=1759373736;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lbAXN6mA77BRJN0uV3xHHBfzVOSuZFy9BYewzxG21Rg=;
        b=DyPudLv53bwBSC9kYxJnP44zIw9EPYCxVJjPkbszRLukE9ki0swJLjZykup+7wKuTq
         hsJDMupKLcOxOt0CjCvpH3JAwcNfYEoYEo/AcmSC6CoGtph5fdltDwkwW/B9ed1U28CB
         xLhO1YW8hthasEbfXYbNbHnl/3ddYsh/yrktqn542M1UTsikpbb5WYO+GERtZt9hMc5g
         1CXV2F4BcNM571QXFIAVOtLKBbTuDjZietdhhrwdKx5ZqzYuK0SRtmebfmVgq9oMOp1M
         HOOQwSSU2QR4eGuOvbKxPW6gQChqmSGehW9wzjacF8mv/3k54Wcx/LDs6f/B8SroKf/B
         7qOQ==
X-Forwarded-Encrypted: i=1; AJvYcCViEua9CqZ5t24aa/szveysw7p4fnT+ApOfD4XQL1lgRVdeEH1UFc6Rh4MiDKE/L303ggWfcM3OuSI=@lists.infradead.org
X-Gm-Message-State: AOJu0YxD3o48gAVNddzDzxEQt7cQRcSppPEBE8czYa4wbwenQojTMe5O
	DmBpLuLEI7MZRONGyAn6WMvfpa5TeIXG/ygcHbq+MwyOzTy0kQJZbbUyIzL0QRvKddNtmkw2V+t
	Q6skEXWL2UBmh1nNtc0WAAVhcLXafl1m3TDs+5qpdgKEyBU8FzaXt62VQhX/VNDIeZdR3
X-Gm-Gg: ASbGncuomyA+U9R3W3pXu/uU7Z5PbLBK1ijmVwAo2QgbbuPR4lvmfMC5oQLPYU0jNDg
	5siXL64Gjs42YY80KYRxAtuQyQduHBuvJajzf1Vizbk60RsjzNODr+8iqXbOSFrAWLWgirnNMAQ
	L4kTRD10bjdtL9Z8hZUjnrV4EmUlGOmaV/kHpDqGspL6HznMrj2xZqRzYJVCbyUZvejkOwsz36F
	0W0iwkN78gqGfT+r+ycYT81qL51rAenRVTct2ykLecKI41fGRsumKx49/6AzVoCivgPQXbgOjo9
	B6+XNOfclVz6ix+eLydfbCdb2bMLOKTmxzxlTXI2ngNf4kejoDCeMWHIaaIAmCojo6zx6oUuo+l
	to8G6+7p2wFuKz5CBymfncfaglDISBcu66rNwJ96oeCs/l4jB2o5+
X-Received: by 2002:a05:622a:13d3:b0:4d7:e9f2:efb8 with SMTP id d75a77b69052e-4da4cd45987mr26133081cf.58.1758768936485;
        Wed, 24 Sep 2025 19:55:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEDcOH8M6DYCRGbeJRkW/0/SS5z3YW3oZHH0vkC9OBNOaylp5NhxGGlOrhD3KELtaAzAefxGg==
X-Received: by 2002:a05:622a:13d3:b0:4d7:e9f2:efb8 with SMTP id d75a77b69052e-4da4cd45987mr26132861cf.58.1758768935931;
        Wed, 24 Sep 2025 19:55:35 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58313fc1921sm266870e87.62.2025.09.24.19.55.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 19:55:35 -0700 (PDT)
Date: Thu, 25 Sep 2025 05:55:33 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 08/10] phy: qualcomm: qmp-usb: Add support for Glymur
 USB UNI PHY
Message-ID: <xunzckmlj2gn7zxvklpwop2v32vmlvr2ri3wnykj45dufqrnzh@hvcuggj55lkf>
References: <20250925022850.4133013-1-wesley.cheng@oss.qualcomm.com>
 <20250925022850.4133013-9-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250925022850.4133013-9-wesley.cheng@oss.qualcomm.com>
X-Proofpoint-GUID: eItUgl3YfJV1G3Al_6muEOi23757GdR6
X-Authority-Analysis: v=2.4 cv=YMOfyQGx c=1 sm=1 tr=0 ts=68d4af29 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=Es_qMKvyyIjXqoqR7w4A:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwNCBTYWx0ZWRfX2QiWbhI5io2Z
 h0i6zj2FVMg1wALnJhf8JKXltYJfrydK3kFGDYeHa2Tpxa1ij6BgCCNFOwrjW8af4gk0+QDEGNK
 pIzuWOfomcYa2b6KSpuKJeDnmHjeOZ1dJmNa+uOXm7azjKKt6nP3mCo31SFxwF6kMDRv2LBkAq4
 ItLBHcRScyXwPW2VZ7srNTwxtPOpBzhu5PiF8PAVk3g8Auq8aPsLADPULbAJBNPP19eqKzpF4Ak
 /+P8wloYLoxRwbxgu3JULLEVL2v8eASywzuvhFVU/mz/WyRJVAkqdDBV+5ibRLPYbnsCA4Hsf4w
 W90BPEMgvssjs3SgltoBascuBG/aW9yDeF/pkOvEr8VxxKQfOLZSRjQVVGPFP91TYGd4aZZ3eTu
 vfZJiWKE
X-Proofpoint-ORIG-GUID: eItUgl3YfJV1G3Al_6muEOi23757GdR6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 adultscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 suspectscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200004
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_195538_517733_8F2A7D06 
X-CRM114-Status: GOOD (  15.53  )
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

On Wed, Sep 24, 2025 at 07:28:48PM -0700, Wesley Cheng wrote:
> Glymur contains a USB multiport controller which supports a QMP UNI PHY.
> These ports do not have typeC capability, so it needs to be differentiated
> in this manner.  Update the QMP PHY sequence required to bring up the UNI
> PHY for Glymur.  The UNI PHY follows mostly the same register field
> definitions as previous SoCs.
> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 163 ++++++++++++++++++++++++
>  1 file changed, 163 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
