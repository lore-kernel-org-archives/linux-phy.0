Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C26ECA0EE3
	for <linux-phy@archiver.kernel.org>; Thu, 14 Aug 2025 07:10:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xObyIZUvfbFdVejdnT/lq2pSjggCtUnHPLVUePc1L44=; b=GRjvYQqH5chZ+6
	GSvL28m/nm00m6/DuROKtWljVjuml5kcUhooGcKrvKXT77AU/c/01kS+o/J42ei4Xgr355SEy8VK0
	N6SvTlSMyVloMnnS4HXKXmwCJVQ5i7/vv6cIFetP9CaJ0aWRlmhbYTG/Jzn/tvHsC3kl3tMYCHqPV
	9EoYkXgqq6B1D/LX7BuWs6a1PCoKc5JNsGeLCbdp61Y5tBszW5zTaCh5DUF8hWfTepSv9VVYD7b5T
	gjw/eNLV4DEODbvc/o7vQyRpATe+Wz7IVnO7xDner7G/nimxkauKCzRbiHZlnqoAr8PWEKeidqsNt
	uyq1Uh4Gsb1sRKX8Y3BQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umS6j-0000000G2hu-3wJ7;
	Thu, 14 Aug 2025 07:10:41 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umRuA-0000000Fzn5-3wkm
	for linux-phy@lists.infradead.org;
	Thu, 14 Aug 2025 06:57:44 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57DMjRkl002879
	for <linux-phy@lists.infradead.org>; Thu, 14 Aug 2025 06:57:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=WH6pheIOBCLhktt4o4IaE6vb
	Qet790mOAdYrq4OwLrA=; b=JFwL5LfJqGhhhv/hky0HR6Ild24Yz2XcjSC/F2Pd
	l/y9dNif1VXOMtJ6jtXx5rUwADOwQ6jsCgYGzoWmVQHYhK+2UCzNA6W5P5tBlEAq
	S03NXM1SShFXLTgr8m3YUKGVlQnUO/tWglYkqgM7Vd/XH8GaZA0AjrlNF7PDUHl2
	GoPb3FmLK5tvFXydN1otaGC4OtOiLUpZ/U6k9ZkVXoXVlQefKx5XnVC92htw8Rr5
	mIYK6XyLNzoV+/SS6UxmZjkBbbkYLuGbV/SPTqU61bwXztnJGN7punGrWrsb8RdC
	dcgvtdDhv1wd92kvz8v7i0rpE3xpo7pS7+jJIwWgitR7+A==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dxdv6p96-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 14 Aug 2025 06:57:41 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-70a9f57f950so14597296d6.3
        for <linux-phy@lists.infradead.org>; Wed, 13 Aug 2025 23:57:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755154661; x=1755759461;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WH6pheIOBCLhktt4o4IaE6vbQet790mOAdYrq4OwLrA=;
        b=pNYtHTd1Mi1YnbLhHFdIDiwUy1fPZ5XHXBSYgfCky4BWeqcl2b4e+abuTaMqRm92A3
         I094GZdiqHcR/EiZOjMPyhiJja99Alvtz8Ln1da0OZRozytdsGb1h09wa9E4iGhT5dXe
         TUzfk64z4eGgombdZOrdk6m8/72Ui/G0Iq51mcxFFWmjvHYpzC7AfGrlYGOUGrcz4/sk
         Hivb4qNjQDEaPtv/S1a2EL64cUNnGdgPUEtY0omXl+rveSXJi3A8kA1/AQviYOL/RBuB
         3rFpUFhghJ6IyrayRlJwQWgfpinjw0RYctzHY3rRs4raiGfU4fQ7IdytZsl+l7eWBaok
         1gpA==
X-Forwarded-Encrypted: i=1; AJvYcCVMKELC549dVdcuug85j15JylaW/8yG6eyAZKNds0tZTHLJQyaplqfymnaonfC8dRDGB3bUAy73jog=@lists.infradead.org
X-Gm-Message-State: AOJu0YwNfuq93DAbDijmQXxLppR3KO0hKsI/S1K4mpgF9dNXyn5FeNHE
	qxbFppud4Dk9pitkwaagVtSxRYQHu/boonnCz9DqeUtiT2SRKG4KW9mAjK94swf2a+1VoUHsvyb
	A2T5rSUCyurx3/8XP7JxDdMIJQSDjLf1Lpv6nPvpP4HSHRRiOka5vbA3riHOrXG/lTWf3
X-Gm-Gg: ASbGncu/uo3J1xGuE+Jy89ZFHzosh+60TDHF476hVNY4Hrix+V7XoqFW5UxYhNWmZn/
	Qyvs0TjP5q+I2cSnANVWOoqoVj2aflpNu5dTqe5T+7JMCw5qEc0rpJjHK/uOCCl0HVPhI4za0hw
	l2Zcxwibj9vqLYO6ISDiAh8zbP6tJJ+2D3MXcxi8SU8iHuBzfpMnzPf94d1qoTe/5agVo1MHnLh
	B2yYQ+YdUgq6Ih1w8d5OPb26eZJzyMerGzV3mnTDRGLPQQRCIDjPbZCSw9zGVWmqd/ttauVYpz6
	2OBRjwC9gNR1aXT25BNVGuPqJKbsmzsR0AiqZMB+8O9b4Ig3F2L/Lmdi0eUW2el1DoMr/D6zA7h
	hMs7lPSpfLMhamrYp4rwBg3AQTDUdl9JKbUjXGA3GlT49Neb5JYJz
X-Received: by 2002:ad4:5fc5:0:b0:707:39f7:c607 with SMTP id 6a1803df08f44-70af5b4a03fmr31187016d6.7.1755154661106;
        Wed, 13 Aug 2025 23:57:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGBZQ5FEsnMbOmX8KkrKa9+kBE6Os+GRoekHbqN1j+i/35W5BLwx3DVldiMtvDJKOME7rzkJw==
X-Received: by 2002:ad4:5fc5:0:b0:707:39f7:c607 with SMTP id 6a1803df08f44-70af5b4a03fmr31186696d6.7.1755154660637;
        Wed, 13 Aug 2025 23:57:40 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cc8d64512sm2420634e87.11.2025.08.13.23.57.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 23:57:39 -0700 (PDT)
Date: Thu, 14 Aug 2025 09:57:38 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Harrison Vanderbyl <harrison.vanderbyl@gmail.com>
Cc: marcus@nazgul.ch, kirill@korins.ky, vkoul@kernel.org, kishon@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        mani@kernel.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
        bvanassche@acm.org, andersson@kernel.org, agross@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org
Subject: Re: [PATCH 2/3] ufs: ufs-qcom: describe x1e80100 quirks
Message-ID: <lj7qsbtk5xlmji6eknfv4ffrqypcsfkq5m7icrz4mvplncflpi@5j2opxwb5lft>
References: <20250814005904.39173-1-harrison.vanderbyl@gmail.com>
 <20250814005904.39173-3-harrison.vanderbyl@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250814005904.39173-3-harrison.vanderbyl@gmail.com>
X-Authority-Analysis: v=2.4 cv=IuYecK/g c=1 sm=1 tr=0 ts=689d88e6 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=pGLkceISAAAA:8 a=D3Jz6Z15PsX1N0F7-5EA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: 0TMRTYhNlVMTEQWFKDMDYPh-TxJLtRVN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAyNSBTYWx0ZWRfX0HYdLYuu19z2
 wV7wclDR4wdL73ZMkmrC9Hj2meVB3X4DRrtzwsvgeB5PsVqwAuHcLLeBkbzCy6eVTZze5Yak2ki
 FKsQ//1ifzw4n9qr9R4N9NN5zqJqSJ9Tf0JeOPF1bcEcqMB9sdcLSKRObUpuLjbOPkoGR9JizFF
 3crUEj3k59F9QPXC+lWvkyrRpnhCvGa6JBfQ81UPUDoTw836ZxN4+V9is8zIZ/YVcxP6pZPdydc
 NKNAYqwKlf0sFZlYBqXI1cURfZLSH0zmj20P4GwWYSp1EbNOG9cXtFz+6IjTLq33G3ymFZSk0b6
 epafink+0QFXgpgNKPqj+Z9X3MRaF+1ygko6ykxKE7t8tdpCLCMxmKBQZ7HzoT7aYCxCywYpWqI
 OlINLaZG
X-Proofpoint-GUID: 0TMRTYhNlVMTEQWFKDMDYPh-TxJLtRVN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-13_02,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 spamscore=0 priorityscore=1501 adultscore=0
 clxscore=1015 phishscore=0 suspectscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090025
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250813_235743_097530_A14A3CB1 
X-CRM114-Status: GOOD (  11.75  )
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

On Thu, Aug 14, 2025 at 10:59:03AM +1000, Harrison Vanderbyl wrote:
> Describe describe driver quirks for x1e80100 ufs device
> Signed-off-by: Harrison Vanderbyl <harrison.vanderbyl@gmail.com>

Again, missing empty line

> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 3 +++
>  drivers/ufs/host/ufs-qcom.c             | 1 +
>  2 files changed, 4 insertions(+)

And this also needs to be split into two patches.


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
