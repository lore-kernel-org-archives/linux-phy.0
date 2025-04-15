Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73210C369AB
	for <linux-phy@archiver.kernel.org>; Tue, 15 Apr 2025 08:18:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FWwT7Su5M06tHDaIRkJS+psS7s+BV68uM6wADLqLdbk=; b=4ORl8/LtUOZKnx
	zoMC8Ra2ry3PCIgBLU6a9y2bdES5IMxNGKeOs83INg4LksJMPz17aLlcz4ZoNMaEWcLrWv8/FZgTt
	GUdceEU2divnhm+GO4jeA/fsXg7pMBin6uuW/aSsqM5Xspm05TULRU+OG0tfNhGBs1M1pnsaJYq5S
	eU6VZ9GHInG2DyOR5z5jzYMqJsZdbFqg6RqM9Ot7+9++DH99zN44AkHBPLCjmJYzXOb8typYM3PO+
	GNRQhqBWj2aTp/G9R/9gHz16plJqKSh3HOOKUNMIJYFOjVks/l4MrXug2U2LHCIbDAyxzwC1Vzd7U
	ocfQ6qVsNxgBSpq2KcXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4bUV-00000004xYr-3myH;
	Tue, 15 Apr 2025 08:17:59 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4bKs-00000004vt7-09Ql
	for linux-phy@lists.infradead.org;
	Tue, 15 Apr 2025 08:08:03 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53F16OsZ000858
	for <linux-phy@lists.infradead.org>; Tue, 15 Apr 2025 08:08:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=sfo0CAie457ANf0kjWKsPJLb
	W7vU/MFpplDe4Ai78WQ=; b=BBNP9PpfdhajR2945x3HlPCWnTuhBTegq2vbd7R+
	9EdR0voLPMPsh0+5bfEYHQyUAKrab+o8TEzLe3OCQyK2HwCbBRClz6FudolPF0uB
	buGgss9a83w3QqAh00ABZTcyb2d+a51058OAmKWHwtI1+H8VJeWJhDc5O4noa9t8
	plicwiLrLrwi0Iw5lCsC7lXo72Wu5gg+yTu64OCBQv2AizpSQ7XmFUT+43DSjehA
	3v1vfT6EC0cMe8NWgdBCzBvIy5/61VDCOUkuGo2YTKtW5e0m95dzmwzI+kgM7HCL
	/GrHOjNnHxnl2zYCZui8HH7issfMNVlLf87+FSiRzYMG8A==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yfs177fy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 15 Apr 2025 08:07:58 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6eada773c0eso166349546d6.3
        for <linux-phy@lists.infradead.org>; Tue, 15 Apr 2025 01:07:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744704471; x=1745309271;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sfo0CAie457ANf0kjWKsPJLbW7vU/MFpplDe4Ai78WQ=;
        b=SCRx02iBfwfmeMiT/j/mdBCTa0z1DTPTSTn1LrP0N5Eni7CmLdG0UPfEsdWsCXud15
         rnocvEfGtzyidJX5AfRlJ/p2QHmLcmdVeRX2xyiPupfToo+rofGbeipGZoBJqaOR4a6Q
         A29lTDvbKpVI9X2U5ADKeViZ7AELnJsEzwliXrFhiEG+jZMwmnlec+6mG5CQIFiKsY6+
         Xob5eWGP+wULm3AgeXGATjlSnOLYSLMRayeIbNUfAGfk49BUKiCWQlenCe64EzXBA7Je
         GMZeAkhOHC3vQfstOdLM2SHzoRLk3lXqf0bMMLvGkAX1Uky0Vi910M4snkqUi5WVge9A
         9ruQ==
X-Forwarded-Encrypted: i=1; AJvYcCVKTppUp9veAOKHKH9XzOqleyfBcGQ6iEp6NlRkUGJf1uW0Nmw/rXT9UxKmeY4LAZJdnOsyLsQgKUw=@lists.infradead.org
X-Gm-Message-State: AOJu0YwIVvxXIdzRptA9YRFQlRAFFeIifZwPySGLdaQtmbbZxIhCsppt
	TVDE91kuXCo7RJ9Y2Lbos49KA3Cnc50S4vcR18qEWZzlqwWKgiwaQyfAhwcdKXrsyK+kQwNMvm/
	22eBE88QaWpBHCwZMO/h75cG0EpqQVCqHBXlmSly7eelZPBPcbVHwnIb25lPHNKay
X-Gm-Gg: ASbGncsNS88qaxeaydGqyWe7FSL3NELjRw7rAmBJPVicXGBzPdkeXr8U6jHf0TVhiQ4
	j4ZtKpBB8i9pyFI9F9ue1rNHwSTKkwKjI8z7SGdDwlzrJgrXHKbrIOLONDWgLL+YHbbXALbW8o5
	O/BnZf7jtZfNrtM1G/iKPBqd4fJF/95Z7A5aDRA90MwionTSwN7+TP7zrJrGYbrLXmhUuX7GxhU
	yT6GlV/H5WKCs1Y9gFeRT3towXUR83u3a3Sz8QqCOIYLeeWdyQ4wj/upYXTbvN1jw2bhDkEg7oT
	L7rQJ3OHyj2IM7n67+xty0mJAJxyzTG4yYv5DjX7ybkV43Rbr188u+/xj+eSzu6E2uhwlHsEslA
	=
X-Received: by 2002:a05:620a:4627:b0:7c5:6df2:b7a5 with SMTP id af79cd13be357-7c7af0e3291mr2024047585a.29.1744704470926;
        Tue, 15 Apr 2025 01:07:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG9hUvwu6zZUyY6fvtVdyJ4E4LxMjO1kvcyqX+7MW3VKl++jBJZlmvKb0i86KlUbaBirAtYaQ==
X-Received: by 2002:a05:620a:4627:b0:7c5:6df2:b7a5 with SMTP id af79cd13be357-7c7af0e3291mr2024045785a.29.1744704470658;
        Tue, 15 Apr 2025 01:07:50 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d3d238bafsm1329060e87.65.2025.04.15.01.07.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Apr 2025 01:07:49 -0700 (PDT)
Date: Tue, 15 Apr 2025 11:07:48 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Varadarajan Narayanan <quic_varada@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/2] phy: qcom-qusb2: reuse the IPQ6018 settings for
 IPQ5424
Message-ID: <jli32pwz53xmyymhvud6nsdc4b7gp4mhdpsg63yubnbk2fpv5k@t2jl4btfuq3o>
References: <20250415-revert_hs_phy_settings-v3-0-3a8f86211b59@oss.qualcomm.com>
 <20250415-revert_hs_phy_settings-v3-2-3a8f86211b59@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250415-revert_hs_phy_settings-v3-2-3a8f86211b59@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=P9I6hjAu c=1 sm=1 tr=0 ts=67fe13de cx=c_pps a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=SwJ4zpY-I9peookiyZkA:9 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: d4ivUhG3ad8KT2GJmtHeXatNM7Vw4IDx
X-Proofpoint-ORIG-GUID: d4ivUhG3ad8KT2GJmtHeXatNM7Vw4IDx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-15_03,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 impostorscore=0 phishscore=0 suspectscore=0
 mlxscore=0 spamscore=0 malwarescore=0 adultscore=0 priorityscore=1501
 mlxlogscore=850 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504150055
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250415_010802_193663_34708BE0 
X-CRM114-Status: GOOD (  14.97  )
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

On Tue, Apr 15, 2025 at 09:52:51AM +0530, Kathiravan Thirumoorthy wrote:
> With the settings used in the commit 9c56a1de296e ("phy: qcom-qusb2: add
> QUSB2 support for IPQ5424"), compliance test cases especially
> eye-diagram (Host High-speed Signal Quality) tests are failing.
> 
> Reuse the IPQ6018 settings for IPQ5424 as mentioned in the Hardware
> Design Document which helps to meet all the complaince requirement test
> cases.
> 
> Fixes: 9c56a1de296e ("phy: qcom-qusb2: add QUSB2 support for IPQ5424")
> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qusb2.c | 3 +++
>  1 file changed, 3 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
